(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtDateTimeRaw;


IMPORT Ctypes AS C;


<* EXTERNAL New_QDate0 *>
PROCEDURE New_QDate0 (): QDate;

<* EXTERNAL New_QDate1 *>
PROCEDURE New_QDate1 (y, m, d: C.int; ): QDate;

<* EXTERNAL QDate_isNull *>
PROCEDURE QDate_isNull (self: QDate; ): BOOLEAN;

<* EXTERNAL QDate_QDate_IsValid *>
PROCEDURE QDate_QDate_IsValid (self: QDate; ): BOOLEAN;

<* EXTERNAL QDate_year *>
PROCEDURE QDate_year (self: QDate; ): C.int;

<* EXTERNAL QDate_month *>
PROCEDURE QDate_month (self: QDate; ): C.int;

<* EXTERNAL QDate_day *>
PROCEDURE QDate_day (self: QDate; ): C.int;

<* EXTERNAL QDate_dayOfWeek *>
PROCEDURE QDate_dayOfWeek (self: QDate; ): C.int;

<* EXTERNAL QDate_dayOfYear *>
PROCEDURE QDate_dayOfYear (self: QDate; ): C.int;

<* EXTERNAL QDate_daysInMonth *>
PROCEDURE QDate_daysInMonth (self: QDate; ): C.int;

<* EXTERNAL QDate_daysInYear *>
PROCEDURE QDate_daysInYear (self: QDate; ): C.int;

<* EXTERNAL QDate_weekNumber *>
PROCEDURE QDate_weekNumber (self: QDate; yearNum: C.int; ): C.int;

<* EXTERNAL QDate_weekNumber1 *>
PROCEDURE QDate_weekNumber1 (self: QDate; ): C.int;

<* EXTERNAL ShortMonthName *>
PROCEDURE ShortMonthName (month: C.int; ): ADDRESS;

<* EXTERNAL ShortMonthName1 *>
PROCEDURE ShortMonthName1 (month, type: C.int; ): ADDRESS;

<* EXTERNAL ShortDayName *>
PROCEDURE ShortDayName (weekday: C.int; ): ADDRESS;

<* EXTERNAL ShortDayName1 *>
PROCEDURE ShortDayName1 (weekday, type: C.int; ): ADDRESS;

<* EXTERNAL LongMonthName *>
PROCEDURE LongMonthName (month: C.int; ): ADDRESS;

<* EXTERNAL LongMonthName1 *>
PROCEDURE LongMonthName1 (month, type: C.int; ): ADDRESS;

<* EXTERNAL LongDayName *>
PROCEDURE LongDayName (weekday: C.int; ): ADDRESS;

<* EXTERNAL LongDayName1 *>
PROCEDURE LongDayName1 (weekday, type: C.int; ): ADDRESS;

<* EXTERNAL QDate_toString *>
PROCEDURE QDate_toString (self: QDate; f: C.int; ): ADDRESS;

<* EXTERNAL QDate_toString1 *>
PROCEDURE QDate_toString1 (self: QDate; ): ADDRESS;

<* EXTERNAL QDate_toString2 *>
PROCEDURE QDate_toString2 (self: QDate; format: ADDRESS; ): ADDRESS;

<* EXTERNAL QDate_setYMD *>
PROCEDURE QDate_setYMD (self: QDate; y, m, d: C.int; ): BOOLEAN;

<* EXTERNAL QDate_setDate *>
PROCEDURE QDate_setDate (self: QDate; year, month, day: C.int; ): BOOLEAN;

<* EXTERNAL QDate_getDate *>
PROCEDURE QDate_getDate (self: QDate; year, month, day: C.int; );

<* EXTERNAL QDate_addDays *>
PROCEDURE QDate_addDays (self: QDate; days: C.int; ): ADDRESS;

<* EXTERNAL QDate_addMonths *>
PROCEDURE QDate_addMonths (self: QDate; months: C.int; ): ADDRESS;

<* EXTERNAL QDate_addYears *>
PROCEDURE QDate_addYears (self: QDate; years: C.int; ): ADDRESS;

<* EXTERNAL QDate_daysTo *>
PROCEDURE QDate_daysTo (self: QDate; arg2: ADDRESS; ): C.int;

<* EXTERNAL QDate_Equals *>
PROCEDURE QDate_Equals (self: QDate; other: ADDRESS; ): BOOLEAN;

<* EXTERNAL QDate_NotEquals *>
PROCEDURE QDate_NotEquals (self: QDate; other: ADDRESS; ): BOOLEAN;

<* EXTERNAL QDate_LessThan *>
PROCEDURE QDate_LessThan (self: QDate; other: ADDRESS; ): BOOLEAN;

<* EXTERNAL QDate_LessThanEquals *>
PROCEDURE QDate_LessThanEquals (self: QDate; other: ADDRESS; ): BOOLEAN;

<* EXTERNAL QDate_GreaterThan *>
PROCEDURE QDate_GreaterThan (self: QDate; other: ADDRESS; ): BOOLEAN;

<* EXTERNAL QDate_GreaterThanEquals *>
PROCEDURE QDate_GreaterThanEquals (self: QDate; other: ADDRESS; ): BOOLEAN;

<* EXTERNAL CurrentDate *>
PROCEDURE CurrentDate (): ADDRESS;

<* EXTERNAL QDate_FromString *>
PROCEDURE QDate_FromString (s: ADDRESS; f: C.int; ): ADDRESS;

<* EXTERNAL QDate_FromString1 *>
PROCEDURE QDate_FromString1 (s: ADDRESS; ): ADDRESS;

<* EXTERNAL QDate_FromString2 *>
PROCEDURE QDate_FromString2 (s, format: ADDRESS; ): ADDRESS;

<* EXTERNAL QDate_IsValid1 *>
PROCEDURE QDate_IsValid1 (y, m, d: C.int; ): BOOLEAN;

<* EXTERNAL IsLeapYear *>
PROCEDURE IsLeapYear (year: C.int; ): BOOLEAN;

<* EXTERNAL FromJulianDay *>
PROCEDURE FromJulianDay (jd: C.int; ): ADDRESS;

<* EXTERNAL QDate_toJulianDay *>
PROCEDURE QDate_toJulianDay (self: QDate; ): C.int;

<* EXTERNAL Delete_QDate *>
PROCEDURE Delete_QDate (self: QDate; );

TYPE QDate <: ADDRESS;

<* EXTERNAL New_QTime0 *>
PROCEDURE New_QTime0 (): QTime;

<* EXTERNAL New_QTime1 *>
PROCEDURE New_QTime1 (h, m, s, ms: C.int; ): QTime;

<* EXTERNAL New_QTime2 *>
PROCEDURE New_QTime2 (h, m, s: C.int; ): QTime;

<* EXTERNAL New_QTime3 *>
PROCEDURE New_QTime3 (h, m: C.int; ): QTime;

<* EXTERNAL QTime_isNull *>
PROCEDURE QTime_isNull (self: QTime; ): BOOLEAN;

<* EXTERNAL QTime_isValid *>
PROCEDURE QTime_isValid (self: QTime; ): BOOLEAN;

<* EXTERNAL QTime_hour *>
PROCEDURE QTime_hour (self: QTime; ): C.int;

<* EXTERNAL QTime_minute *>
PROCEDURE QTime_minute (self: QTime; ): C.int;

<* EXTERNAL QTime_second *>
PROCEDURE QTime_second (self: QTime; ): C.int;

<* EXTERNAL QTime_msec *>
PROCEDURE QTime_msec (self: QTime; ): C.int;

<* EXTERNAL QTime_toString *>
PROCEDURE QTime_toString (self: QTime; f: C.int; ): ADDRESS;

<* EXTERNAL QTime_toString1 *>
PROCEDURE QTime_toString1 (self: QTime; ): ADDRESS;

<* EXTERNAL QTime_toString2 *>
PROCEDURE QTime_toString2 (self: QTime; format: ADDRESS; ): ADDRESS;

<* EXTERNAL QTime_setHMS *>
PROCEDURE QTime_setHMS (self: QTime; h, m, s, ms: C.int; ): BOOLEAN;

<* EXTERNAL QTime_setHMS1 *>
PROCEDURE QTime_setHMS1 (self: QTime; h, m, s: C.int; ): BOOLEAN;

<* EXTERNAL QTime_addSecs *>
PROCEDURE QTime_addSecs (self: QTime; secs: C.int; ): ADDRESS;

<* EXTERNAL QTime_secsTo *>
PROCEDURE QTime_secsTo (self: QTime; arg2: ADDRESS; ): C.int;

<* EXTERNAL QTime_addMSecs *>
PROCEDURE QTime_addMSecs (self: QTime; ms: C.int; ): ADDRESS;

<* EXTERNAL QTime_msecsTo *>
PROCEDURE QTime_msecsTo (self: QTime; arg2: ADDRESS; ): C.int;

<* EXTERNAL QTime_Equals *>
PROCEDURE QTime_Equals (self: QTime; other: ADDRESS; ): BOOLEAN;

<* EXTERNAL QTime_NotEquals *>
PROCEDURE QTime_NotEquals (self: QTime; other: ADDRESS; ): BOOLEAN;

<* EXTERNAL QTime_LessThan *>
PROCEDURE QTime_LessThan (self: QTime; other: ADDRESS; ): BOOLEAN;

<* EXTERNAL QTime_LessThanEquals *>
PROCEDURE QTime_LessThanEquals (self: QTime; other: ADDRESS; ): BOOLEAN;

<* EXTERNAL QTime_GreaterThan *>
PROCEDURE QTime_GreaterThan (self: QTime; other: ADDRESS; ): BOOLEAN;

<* EXTERNAL QTime_GreaterThanEquals *>
PROCEDURE QTime_GreaterThanEquals (self: QTime; other: ADDRESS; ): BOOLEAN;

<* EXTERNAL CurrentTime *>
PROCEDURE CurrentTime (): ADDRESS;

<* EXTERNAL QTime_FromString *>
PROCEDURE QTime_FromString (s: ADDRESS; f: C.int; ): ADDRESS;

<* EXTERNAL QTime_FromString1 *>
PROCEDURE QTime_FromString1 (s: ADDRESS; ): ADDRESS;

<* EXTERNAL QTime_FromString2 *>
PROCEDURE QTime_FromString2 (s, format: ADDRESS; ): ADDRESS;

<* EXTERNAL IsValid1 *>
PROCEDURE IsValid1 (h, m, s, ms: C.int; ): BOOLEAN;

<* EXTERNAL IsValid2 *>
PROCEDURE IsValid2 (h, m, s: C.int; ): BOOLEAN;

<* EXTERNAL QTime_start *>
PROCEDURE QTime_start (self: QTime; );

<* EXTERNAL QTime_restart *>
PROCEDURE QTime_restart (self: QTime; ): C.int;

<* EXTERNAL QTime_elapsed *>
PROCEDURE QTime_elapsed (self: QTime; ): C.int;

<* EXTERNAL Delete_QTime *>
PROCEDURE Delete_QTime (self: QTime; );

TYPE QTime <: ADDRESS;

<* EXTERNAL New_QDateTime0 *>
PROCEDURE New_QDateTime0 (): QDateTime;

<* EXTERNAL New_QDateTime1 *>
PROCEDURE New_QDateTime1 (arg1: ADDRESS; ): QDateTime;

<* EXTERNAL New_QDateTime2 *>
PROCEDURE New_QDateTime2 (arg1, arg2: ADDRESS; spec: C.int; ): QDateTime;

<* EXTERNAL New_QDateTime3 *>
PROCEDURE New_QDateTime3 (arg1, arg2: ADDRESS; ): QDateTime;

<* EXTERNAL New_QDateTime4 *>
PROCEDURE New_QDateTime4 (other: ADDRESS; ): QDateTime;

<* EXTERNAL Delete_QDateTime *>
PROCEDURE Delete_QDateTime (self: QDateTime; );

<* EXTERNAL QDateTime_Assign *>
PROCEDURE QDateTime_Assign (self: QDateTime; other: ADDRESS; ): ADDRESS;

<* EXTERNAL QDateTime_isNull *>
PROCEDURE QDateTime_isNull (self: QDateTime; ): BOOLEAN;

<* EXTERNAL QDateTime_isValid *>
PROCEDURE QDateTime_isValid (self: QDateTime; ): BOOLEAN;

<* EXTERNAL QDateTime_date *>
PROCEDURE QDateTime_date (self: QDateTime; ): ADDRESS;

<* EXTERNAL QDateTime_time *>
PROCEDURE QDateTime_time (self: QDateTime; ): ADDRESS;

<* EXTERNAL QDateTime_timeSpec *>
PROCEDURE QDateTime_timeSpec (self: QDateTime; ): C.int;

<* EXTERNAL QDateTime_toMSecsSinceEpoch *>
PROCEDURE QDateTime_toMSecsSinceEpoch (self: QDateTime; ): C.unsigned_long;

<* EXTERNAL QDateTime_toTime_t *>
PROCEDURE QDateTime_toTime_t (self: QDateTime; ): C.unsigned_int;

<* EXTERNAL QDateTime_setDate *>
PROCEDURE QDateTime_setDate (self: QDateTime; date: ADDRESS; );

<* EXTERNAL QDateTime_setTime *>
PROCEDURE QDateTime_setTime (self: QDateTime; time: ADDRESS; );

<* EXTERNAL QDateTime_setTimeSpec *>
PROCEDURE QDateTime_setTimeSpec (self: QDateTime; spec: C.int; );

<* EXTERNAL QDateTime_setMSecsSinceEpoch *>
PROCEDURE QDateTime_setMSecsSinceEpoch
  (self: QDateTime; msecs: C.unsigned_long; );

<* EXTERNAL QDateTime_setTime_t *>
PROCEDURE QDateTime_setTime_t
  (self: QDateTime; secsSince1Jan1970UTC: C.unsigned_int; );

<* EXTERNAL QDateTime_toString *>
PROCEDURE QDateTime_toString (self: QDateTime; f: C.int; ): ADDRESS;

<* EXTERNAL QDateTime_toString1 *>
PROCEDURE QDateTime_toString1 (self: QDateTime; ): ADDRESS;

<* EXTERNAL QDateTime_toString2 *>
PROCEDURE QDateTime_toString2 (self: QDateTime; format: ADDRESS; ):
  ADDRESS;

<* EXTERNAL QDateTime_addDays *>
PROCEDURE QDateTime_addDays (self: QDateTime; days: C.int; ): ADDRESS;

<* EXTERNAL QDateTime_addMonths *>
PROCEDURE QDateTime_addMonths (self: QDateTime; months: C.int; ): ADDRESS;

<* EXTERNAL QDateTime_addYears *>
PROCEDURE QDateTime_addYears (self: QDateTime; years: C.int; ): ADDRESS;

<* EXTERNAL QDateTime_addSecs *>
PROCEDURE QDateTime_addSecs (self: QDateTime; secs: C.int; ): ADDRESS;

<* EXTERNAL QDateTime_addMSecs *>
PROCEDURE QDateTime_addMSecs (self: QDateTime; msecs: C.unsigned_long; ):
  ADDRESS;

<* EXTERNAL QDateTime_toTimeSpec *>
PROCEDURE QDateTime_toTimeSpec (self: QDateTime; spec: C.int; ): ADDRESS;

<* EXTERNAL QDateTime_toLocalTime *>
PROCEDURE QDateTime_toLocalTime (self: QDateTime; ): ADDRESS;

<* EXTERNAL QDateTime_toUTC *>
PROCEDURE QDateTime_toUTC (self: QDateTime; ): ADDRESS;

<* EXTERNAL QDateTime_daysTo *>
PROCEDURE QDateTime_daysTo (self: QDateTime; arg2: ADDRESS; ): C.int;

<* EXTERNAL QDateTime_secsTo *>
PROCEDURE QDateTime_secsTo (self: QDateTime; arg2: ADDRESS; ): C.int;

<* EXTERNAL QDateTime_msecsTo *>
PROCEDURE QDateTime_msecsTo (self: QDateTime; arg2: ADDRESS; ):
  C.unsigned_long;

<* EXTERNAL QDateTime_Equals *>
PROCEDURE QDateTime_Equals (self: QDateTime; other: ADDRESS; ): BOOLEAN;

<* EXTERNAL QDateTime_NotEquals *>
PROCEDURE QDateTime_NotEquals (self: QDateTime; other: ADDRESS; ): BOOLEAN;

<* EXTERNAL QDateTime_LessThan *>
PROCEDURE QDateTime_LessThan (self: QDateTime; other: ADDRESS; ): BOOLEAN;

<* EXTERNAL QDateTime_LessThanEquals *>
PROCEDURE QDateTime_LessThanEquals (self: QDateTime; other: ADDRESS; ):
  BOOLEAN;

<* EXTERNAL QDateTime_GreaterThan *>
PROCEDURE QDateTime_GreaterThan (self: QDateTime; other: ADDRESS; ):
  BOOLEAN;

<* EXTERNAL QDateTime_GreaterThanEquals *>
PROCEDURE QDateTime_GreaterThanEquals (self: QDateTime; other: ADDRESS; ):
  BOOLEAN;

<* EXTERNAL QDateTime_setUtcOffset *>
PROCEDURE QDateTime_setUtcOffset (self: QDateTime; seconds: C.int; );

<* EXTERNAL QDateTime_utcOffset *>
PROCEDURE QDateTime_utcOffset (self: QDateTime; ): C.int;

<* EXTERNAL CurrentDateTime *>
PROCEDURE CurrentDateTime (): ADDRESS;

<* EXTERNAL CurrentDateTimeUtc *>
PROCEDURE CurrentDateTimeUtc (): ADDRESS;

<* EXTERNAL FromString *>
PROCEDURE FromString (s: ADDRESS; f: C.int; ): ADDRESS;

<* EXTERNAL FromString1 *>
PROCEDURE FromString1 (s: ADDRESS; ): ADDRESS;

<* EXTERNAL FromString2 *>
PROCEDURE FromString2 (s, format: ADDRESS; ): ADDRESS;

<* EXTERNAL FromTime_t *>
PROCEDURE FromTime_t (secsSince1Jan1970UTC: C.unsigned_int; ): ADDRESS;

<* EXTERNAL FromMSecsSinceEpoch *>
PROCEDURE FromMSecsSinceEpoch (msecs: C.unsigned_long; ): ADDRESS;

<* EXTERNAL CurrentMSecsSinceEpoch *>
PROCEDURE CurrentMSecsSinceEpoch (): C.unsigned_long;

TYPE QDateTime <: ADDRESS;

END QtDateTimeRaw.
