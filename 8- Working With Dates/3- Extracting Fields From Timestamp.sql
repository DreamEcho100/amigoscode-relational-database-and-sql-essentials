-- The PostgreSQL EXTRACT() function retrieves a field such as a year, month, and day from a date/time value.

-- EXTRACT(field FROM source)

-- 1) field

-- The field argument specifies which field to extract from the date/time value.

-- The following table illustrates the valid field values:

-- Field                       Value	TIMESTAMP	                                                                 Interval
-- CENTURY                     The century	                                                                     The number of centuries
-- DAY                         he day of the month (1-31)	                                                     The number of days
-- DECADE                      The decade that is the year divided by 10	                                       Sames as TIMESTAMP
-- DOW                         he day of week Sunday (0) to Saturday (6)	                                       N/A
-- DOY                         he day of year that ranges from 1 to 366	                                       N/A
-- EPOCH                       The number of seconds since 1970-01-01 00:00:00 UTC	                             The total number of seconds in the interval
-- HOUR                        The hour (0-23)	                                                                 The number of hours
-- ISODOW                      Day of week based on ISO 8601 Monday (1) to Sunday (7)                           N/A
-- ISOYEAR                     ISO 8601 week number of year	                                                   N/A
-- MICROSECONDS                The seconds field, including fractional parts, multiplied by 1000000             Sames as TIMESTAMP
-- MILLENNIUM                  The millennium                                                                   The number of millennium
-- MILLISECONDS                The seconds field, including fractional parts, multiplied by 1000	               Sames as TIMESTAMP
-- MINUTE                      The minute (0-59)	                                                               The number of minutes
-- MONTH                       Month, 1-12	                                                                     The number of months, modulo (0-11)
-- QUARTER                     Quarter of the year	                                                             The number of quarters
-- SECOND                      The second                                                                       The number of seconds
-- TIMEZONE                    The timezone offset from UTC, measured in seconds                                N/A
-- TIMEZONE_HOUR               The hour component of the time zone offset                                       N/A
-- TIMEZONE_MINUTE             The minute component of the time zone offset                                     N/A
-- WEEK                        The number of the ISO 8601 week-numbering week of the year                       N/A
-- YEAR                        The year                                                                         Sames as TIMESTAMP

-- 2) source

-- The source is a value of type TIMESTAMP or INTERVAL. If you pass a DATE value, the function will cast it to a TIMESTAMP value.

-- Return value

-- The EXTRACT() function returns a double precision value.

SELECT EXTRACT(CENTURY FROM NOW());

SELECT EXTRACT(YEAR FROM NOW());

SELECT EXTRACT(MONTH FROM NOW());

SELECT EXTRACT(DAY FROM NOW());

SELECT EXTRACT(DOW FROM NOW());

SELECT EXTRACT(HOUR FROM NOW());

SELECT EXTRACT(MINUTE FROM NOW());

SELECT EXTRACT(SECOND FROM NOW());
