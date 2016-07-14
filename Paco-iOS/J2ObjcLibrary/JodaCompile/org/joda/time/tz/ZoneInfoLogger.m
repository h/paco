//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: joda-time/src/main/java/org/joda/time/tz/ZoneInfoLogger.java
//

#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "java/lang/ThreadLocal.h"
#include "org/joda/time/tz/ZoneInfoLogger.h"

@interface OrgJodaTimeTzZoneInfoLogger_$1 : JavaLangThreadLocal

- (JavaLangBoolean *)initialValue OBJC_METHOD_FAMILY_NONE;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeTzZoneInfoLogger_$1)

__attribute__((unused)) static void OrgJodaTimeTzZoneInfoLogger_$1_init(OrgJodaTimeTzZoneInfoLogger_$1 *self);

__attribute__((unused)) static OrgJodaTimeTzZoneInfoLogger_$1 *new_OrgJodaTimeTzZoneInfoLogger_$1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgJodaTimeTzZoneInfoLogger_$1 *create_OrgJodaTimeTzZoneInfoLogger_$1_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeTzZoneInfoLogger_$1)

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeTzZoneInfoLogger)

JavaLangThreadLocal *OrgJodaTimeTzZoneInfoLogger_cVerbose;

@implementation OrgJodaTimeTzZoneInfoLogger

+ (jboolean)verbose {
  return OrgJodaTimeTzZoneInfoLogger_verbose();
}

+ (void)setWithBoolean:(jboolean)verbose {
  OrgJodaTimeTzZoneInfoLogger_setWithBoolean_(verbose);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeTzZoneInfoLogger_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [OrgJodaTimeTzZoneInfoLogger class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeTzZoneInfoLogger_cVerbose, new_OrgJodaTimeTzZoneInfoLogger_$1_init());
    J2OBJC_SET_INITIALIZED(OrgJodaTimeTzZoneInfoLogger)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "verbose", NULL, "Z", 0x9, NULL, NULL },
    { "setWithBoolean:", "set", "V", 0x9, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "cVerbose", "cVerbose", 0x8, "Ljava.lang.ThreadLocal;", &OrgJodaTimeTzZoneInfoLogger_cVerbose, "Ljava/lang/ThreadLocal<Ljava/lang/Boolean;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgJodaTimeTzZoneInfoLogger = { 2, "ZoneInfoLogger", "org.joda.time.tz", NULL, 0x1, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeTzZoneInfoLogger;
}

@end

jboolean OrgJodaTimeTzZoneInfoLogger_verbose() {
  OrgJodaTimeTzZoneInfoLogger_initialize();
  return [((JavaLangBoolean *) nil_chk([((JavaLangThreadLocal *) nil_chk(OrgJodaTimeTzZoneInfoLogger_cVerbose)) get])) booleanValue];
}

void OrgJodaTimeTzZoneInfoLogger_setWithBoolean_(jboolean verbose) {
  OrgJodaTimeTzZoneInfoLogger_initialize();
  [((JavaLangThreadLocal *) nil_chk(OrgJodaTimeTzZoneInfoLogger_cVerbose)) setWithId:JavaLangBoolean_valueOfWithBoolean_(verbose)];
}

void OrgJodaTimeTzZoneInfoLogger_init(OrgJodaTimeTzZoneInfoLogger *self) {
  NSObject_init(self);
}

OrgJodaTimeTzZoneInfoLogger *new_OrgJodaTimeTzZoneInfoLogger_init() {
  OrgJodaTimeTzZoneInfoLogger *self = [OrgJodaTimeTzZoneInfoLogger alloc];
  OrgJodaTimeTzZoneInfoLogger_init(self);
  return self;
}

OrgJodaTimeTzZoneInfoLogger *create_OrgJodaTimeTzZoneInfoLogger_init() {
  OrgJodaTimeTzZoneInfoLogger *self = [[OrgJodaTimeTzZoneInfoLogger alloc] autorelease];
  OrgJodaTimeTzZoneInfoLogger_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeTzZoneInfoLogger)

@implementation OrgJodaTimeTzZoneInfoLogger_$1

- (JavaLangBoolean *)initialValue {
  return JreLoadStatic(JavaLangBoolean, FALSE);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeTzZoneInfoLogger_$1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initialValue", NULL, "Ljava.lang.Boolean;", 0x4, NULL, "()Ljava/lang/Boolean;" },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"Ljava.lang.Boolean;"};
  static const J2ObjcClassInfo _OrgJodaTimeTzZoneInfoLogger_$1 = { 2, "", "org.joda.time.tz", "ZoneInfoLogger", 0x8008, 2, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/ThreadLocal<Ljava/lang/Boolean;>;" };
  return &_OrgJodaTimeTzZoneInfoLogger_$1;
}

@end

void OrgJodaTimeTzZoneInfoLogger_$1_init(OrgJodaTimeTzZoneInfoLogger_$1 *self) {
  JavaLangThreadLocal_init(self);
}

OrgJodaTimeTzZoneInfoLogger_$1 *new_OrgJodaTimeTzZoneInfoLogger_$1_init() {
  OrgJodaTimeTzZoneInfoLogger_$1 *self = [OrgJodaTimeTzZoneInfoLogger_$1 alloc];
  OrgJodaTimeTzZoneInfoLogger_$1_init(self);
  return self;
}

OrgJodaTimeTzZoneInfoLogger_$1 *create_OrgJodaTimeTzZoneInfoLogger_$1_init() {
  OrgJodaTimeTzZoneInfoLogger_$1 *self = [[OrgJodaTimeTzZoneInfoLogger_$1 alloc] autorelease];
  OrgJodaTimeTzZoneInfoLogger_$1_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeTzZoneInfoLogger_$1)