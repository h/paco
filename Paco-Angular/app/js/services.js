pacoApp.service('config', function() {

  this.scheduleTypes = [
    'Daily',
    'Weekdays',
    'Weekly',
    'Monthly',
    'Random sampling (ESM)',
    'Self Report'
  ];

  this.actionTypes = [
    'Create notification to participate',
    'Create notification message',
    'Log data',
    'Execute script'
  ];

  this.cueTypes = [
    'Phone call ended',
    'User present',
    'Paco action',
    'App used',
    'Phone call started'
  ];

  this.esmPeriods = {
    1: 'day',
    7: 'week',
    30: 'month'
  };

  this.weeksOfMonth = [
    'First',
    'Second',
    'Third',
    'Fourth',
    'Fifth'
  ];

  this.responseTypes = [
    'likert',
    'likert_smileys',
    'open text',
    'list',
    'photo',
    'location'
  ];

  this.feedbackTypes = [
    'Static Message Feedback',
    'Retrospective Feedback (QS default)',
    'Responsive Feedback (adaptive)',
    'Custom Code Feedback',
    'Disable Feedback Message'
  ];
});


pacoApp.service('template', function() {

  this.group = {
    actionTriggers: [],
    name: 'New Group',
    inputs: [],
    feedbackType: 0,
    feedback: {
      text: 'Thanks for Participating!',
    }
  };

  this.experiment = {
    admins: [],
    creator: '',
    contactEmail: '',
    published: false,
    publishedUsers: [],
    groups: [this.group],
  }

  this.action = {
    'type': 'pacoNotificationAction'
  };

  this.schedule = {
    scheduleType: ''
  };

  this.scheduleTrigger = {
    type: 'scheduleTrigger',
    actions: [this.action],
    schedules: [this.schedule]
  };

  this.eventTrigger = {
    type: 'interruptTrigger',
    actions: [this.action],
    cues: [{}]
  };

  this.signalTime = {
    'fixedTimeMillisFromMidnight': 0
  };
});
