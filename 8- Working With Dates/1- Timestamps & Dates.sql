-- NOW() function

-- The NOW() function returns the current date and time. The return type of the NOW() function is the timestamp with time zone. See the following example

-- Note that the NOW() function returns current date and time based on the database server’s time zone setting.



SELECT NOW();

-- SELECT NOW() [without time zone];

SELECT NOW()::DATE;

-- If you want get the current date and time without timezone, you can cast it explicitly as follows:

SELECT NOW()::timestamp;

-- Besides the NOW() function, you can use the CURRENT_TIME or CURRENT_TIMESTAMP to get the current date and time with timezone:

SELECT CURRENT_TIME, CURRENT_TIMESTAMP;

-- PostgreSQL NOW() function as default values 

-- You can use the NOW() function as the default value for a column of a table.
