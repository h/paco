// Copyright 2012 Google Inc. All Rights Reserved.

package com.google.sampling.experiential.server;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.EntityNotFoundException;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.CompositeFilterOperator;
import com.google.common.collect.Lists;
import com.google.paco.shared.model.Event;
import com.google.paco.shared.model.Experiment;
import com.google.paco.shared.model.SignalSchedule;

import java.util.List;

/**
 * @author corycornelius@google.com (Cory Cornelius)
 */
public class PacoDAO {
  private static PacoDAO instance;

  public static synchronized PacoDAO getInstance() {
    if (instance == null) {
      instance = new PacoDAO();
    }
    return instance;
  }

  private DatastoreService ds;

  public PacoDAO() {
    ds = DatastoreServiceFactory.getDatastoreService();
  }

  /*
   * Experiments
   */
  public Long createExperiment(Experiment experiment) {
    Entity entity = PacoConverter.toEntity(experiment);
    Key key;

    try {
      key = ds.put(entity);
    } catch (Exception ex) {
      ex.printStackTrace();
      return null;
    }

    return key.getId();
  }

  public Experiment getExperiment(long id) {
    Key key = KeyFactory.createKey("experiment", id);
    Entity entity;

    try {
      entity = ds.get(key);
    } catch (Exception ex) {
      // ex.printStackTrace();
      return null;
    }

    Experiment experiment = PacoConverter.entityTo(entity);

    return (experiment.isDeleted() ? null : experiment);
  }

  public boolean updateExperiment(Experiment oldExperiment, Experiment newExperiment) {
    Entity newEntity = PacoConverter.toEntity(newExperiment);

    // FIXME: Version these entities
    // Entity oldEntity = DAOHelper.toEntity(oldExperiment);
    // List<Entity> entities = Lists.newArrayList(newEntity, oldEntity);

    try {
      // ds.put(entities);
      ds.put(newEntity);
    } catch (Exception ex) {
      ex.printStackTrace();
      return false;
    }

    return true;
  }

  public boolean deleteExperiment(Experiment experiment) {
    experiment.setDeleted(true);

    Entity entity = PacoConverter.toEntity(experiment);

    try {
      ds.put(entity);
    } catch (Exception ex) {
      ex.printStackTrace();
      return false;
    }

    return true;
  }

  public boolean joinExperiment(Experiment experiment, SignalSchedule signalSchedule) {
    Entity experimentEntity = PacoConverter.toEntity(experiment);
    List<Entity> entities = Lists.newArrayList(experimentEntity);

    if (signalSchedule != null) {
      entities.add(PacoConverter.toEntity(signalSchedule));
    }

    try {
      ds.put(entities);
    } catch (Exception ex) {
      ex.printStackTrace();
      return false;
    }

    return true;
  }

  public SignalSchedule getSignalSchedule(String user, Experiment experiment) {
    Query q = new Query("schedule");

    q.setFilter(CompositeFilterOperator.and(
        FilterOperator.EQUAL.of("experiment", experiment.getId()),
        FilterOperator.EQUAL.of("subject", user)));

    List<SignalSchedule> signalSchedules =
        PacoConverter.preparedQueryTo(ds.prepare(q), SignalSchedule.class);

    if (signalSchedules.size() > 1) {
      throw new IllegalStateException("Multiple signal schedules for " + user + " "
          + experiment.getId());
    }

    if (signalSchedules.size() == 0) {
      return null;
    }

    return signalSchedules.get(0);
  }

  public boolean leaveExperiment(Experiment experiment) {
    Entity entity = PacoConverter.toEntity(experiment);

    try {
      ds.put(entity);
    } catch (Exception ex) {
      ex.printStackTrace();
      return false;
    }

    return true;
  }

  public List<Experiment> getViewedExperiments(String user) {
    Query q = new Query("experiment");

    // deleted == false && published == true && (viewers == null || viewers == user)
    q.setFilter(CompositeFilterOperator.and(
        FilterOperator.EQUAL.of("deleted", false),
        FilterOperator.EQUAL.of("published", true),
        CompositeFilterOperator.or(FilterOperator.EQUAL.of("viewers", null),
            FilterOperator.EQUAL.of("viewers", user))));

    return PacoConverter.preparedQueryTo(ds.prepare(q), Experiment.class);
  }

  public List<Experiment> getSubjectedExperiments(String user) {
    Query q = new Query("experiment");

    // deleted == false && published == true && subjects == user
    q.setFilter(CompositeFilterOperator.and(FilterOperator.EQUAL.of("deleted", false),
        FilterOperator.EQUAL.of("published", true), FilterOperator.EQUAL.of("subjects", user)));

    return PacoConverter.preparedQueryTo(ds.prepare(q), Experiment.class);
  }

  public List<Experiment> getObservedExperiments(String user) {
    Query q = new Query("experiment");

    // deleted == false && observers == user
    q.setFilter(CompositeFilterOperator.and(FilterOperator.EQUAL.of("deleted", false),
        FilterOperator.EQUAL.of("observers", user)));

    return PacoConverter.preparedQueryTo(ds.prepare(q), Experiment.class);
  }



  /*
   * Events
   */
  public Long createEvent(Event event) {
    if (event == null || event.hasId() == true) {
      throw new UnsupportedOperationException();
    }

    Entity entity = PacoConverter.toEntity(event);
    Key key = ds.put(entity);

    return key.getId();
  }

  public Event getEvent(long id) {
    if (id <= 0) {
      throw new UnsupportedOperationException();
    }

    try {
      return PacoConverter.entityTo(ds.get(KeyFactory.createKey("event", id)));
    } catch (EntityNotFoundException e) {
      return null;
    }
  }

  public List<Event> getEvents(Experiment experiment) {
    if (experiment == null || experiment.hasId() == false) {
      throw new UnsupportedOperationException();
    }

    Query q = new Query("event");

    // experimentId == experiment.id
    q.setFilter(FilterOperator.EQUAL.of("experimentId", experiment.getId()));

    return PacoConverter.preparedQueryTo(ds.prepare(q), Event.class);
  }

  public List<Event> getEvents(Experiment experiment, String user) {
    if (experiment == null || experiment.hasId() == false || user == null) {
      throw new UnsupportedOperationException();
    }

    Query q = new Query("event");

    // experimentId == experiment.id && subject == user
    q.setFilter(CompositeFilterOperator.and(
        FilterOperator.EQUAL.of("experimentId", experiment.getId()),
        FilterOperator.EQUAL.of("subject", user)));

    return PacoConverter.preparedQueryTo(ds.prepare(q), Event.class);
  }
}