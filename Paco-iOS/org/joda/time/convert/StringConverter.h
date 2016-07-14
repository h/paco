//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: joda-time/src/main/java/org/joda/time/convert/StringConverter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgJodaTimeConvertStringConverter_INCLUDE_ALL")
#ifdef OrgJodaTimeConvertStringConverter_RESTRICT
#define OrgJodaTimeConvertStringConverter_INCLUDE_ALL 0
#else
#define OrgJodaTimeConvertStringConverter_INCLUDE_ALL 1
#endif
#undef OrgJodaTimeConvertStringConverter_RESTRICT

#if !defined (OrgJodaTimeConvertStringConverter_) && (OrgJodaTimeConvertStringConverter_INCLUDE_ALL || defined(OrgJodaTimeConvertStringConverter_INCLUDE))
#define OrgJodaTimeConvertStringConverter_

#define OrgJodaTimeConvertAbstractConverter_RESTRICT 1
#define OrgJodaTimeConvertAbstractConverter_INCLUDE 1
#include "org/joda/time/convert/AbstractConverter.h"

#define OrgJodaTimeConvertInstantConverter_RESTRICT 1
#define OrgJodaTimeConvertInstantConverter_INCLUDE 1
#include "org/joda/time/convert/InstantConverter.h"

#define OrgJodaTimeConvertPartialConverter_RESTRICT 1
#define OrgJodaTimeConvertPartialConverter_INCLUDE 1
#include "org/joda/time/convert/PartialConverter.h"

#define OrgJodaTimeConvertDurationConverter_RESTRICT 1
#define OrgJodaTimeConvertDurationConverter_INCLUDE 1
#include "org/joda/time/convert/DurationConverter.h"

#define OrgJodaTimeConvertPeriodConverter_RESTRICT 1
#define OrgJodaTimeConvertPeriodConverter_INCLUDE 1
#include "org/joda/time/convert/PeriodConverter.h"

#define OrgJodaTimeConvertIntervalConverter_RESTRICT 1
#define OrgJodaTimeConvertIntervalConverter_INCLUDE 1
#include "org/joda/time/convert/IntervalConverter.h"

@class IOSClass;
@class IOSIntArray;
@class OrgJodaTimeChronology;
@class OrgJodaTimeFormatDateTimeFormatter;
@protocol OrgJodaTimeReadWritableInterval;
@protocol OrgJodaTimeReadWritablePeriod;
@protocol OrgJodaTimeReadablePartial;

@interface OrgJodaTimeConvertStringConverter : OrgJodaTimeConvertAbstractConverter < OrgJodaTimeConvertInstantConverter, OrgJodaTimeConvertPartialConverter, OrgJodaTimeConvertDurationConverter, OrgJodaTimeConvertPeriodConverter, OrgJodaTimeConvertIntervalConverter >

#pragma mark Public

- (jlong)getDurationMillisWithId:(id)object;

- (jlong)getInstantMillisWithId:(id)object
      withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

- (IOSIntArray *)getPartialValuesWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)fieldSource
                                                         withId:(id)object
                                      withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
                         withOrgJodaTimeFormatDateTimeFormatter:(OrgJodaTimeFormatDateTimeFormatter *)parser;

- (IOSClass *)getSupportedType;

- (void)setIntoWithOrgJodaTimeReadWritableInterval:(id<OrgJodaTimeReadWritableInterval>)writableInterval
                                            withId:(id)object
                         withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

- (void)setIntoWithOrgJodaTimeReadWritablePeriod:(id<OrgJodaTimeReadWritablePeriod>)period
                                          withId:(id)object
                       withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeConvertStringConverter)

inline OrgJodaTimeConvertStringConverter *OrgJodaTimeConvertStringConverter_get_INSTANCE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeConvertStringConverter *OrgJodaTimeConvertStringConverter_INSTANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeConvertStringConverter, INSTANCE, OrgJodaTimeConvertStringConverter *)

FOUNDATION_EXPORT void OrgJodaTimeConvertStringConverter_init(OrgJodaTimeConvertStringConverter *self);

FOUNDATION_EXPORT OrgJodaTimeConvertStringConverter *new_OrgJodaTimeConvertStringConverter_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeConvertStringConverter *create_OrgJodaTimeConvertStringConverter_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeConvertStringConverter)

#endif

#pragma pop_macro("OrgJodaTimeConvertStringConverter_INCLUDE_ALL")