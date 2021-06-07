-- You can use the common date and time operator to the NOW() function. For example, to get 1 hour from now:

SELECT (NOW() + interval '1 hour') AS an_hour_later;

-- To get this time tomorrow, you add 1 day to the current time:

SELECT (NOW() + interval '1 day') AS this_time_tomorrow;

-- To get 2 hours 30 minutes ago, you use the minus (-) operator as follows:

SELECT now() - interval '2 hours 30 minutes' AS two_hour_30_min_go;

SELECT NOW() - INTERVAL '1 YEAR';

SELECT NOW() - INTERVAL '10 YEARS';

SELECT NOW() - INTERVAL '10 MONTHS';

SELECT NOW() - INTERVAL '10 DAYS';

SELECT NOW() + INTERVAL '10 DAYS';

SELECT NOW()::DATE + INTERVAL '10 MONTHS';

SELECT (NOW()::DATE + INTERVAL '10 MONTHS')::DATE;