-- HAVING

-- The HAVING clause specifies a search condition for a group or an aggregate. The HAVING clause is often used with the GROUP BY clause to filter groups or aggregates based on a specified condition.

-- SELECT column1, aggregate_function (column2) FROM table_name GROUP BY column1 HAVING condition;

-- HAVING vs. WHERE

-- The WHERE clause allows you to filter rows based on a specified condition. However, the HAVING clause allows you to filter groups of rows according to a specified condition.

-- In other words, the WHERE clause is applied to rows while the HAVING clause is applied to groups of rows.

SELECT email, COUNT(*) FROM person GROUP BY email HAVING COUNT(*) > 1;

SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth HAVING COUNT(*) > 5 ORDER BY country_of_birth;

SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth HAVING COUNT(*) > 5 ORDER BY count;

SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth HAVING COUNT(*) >= 50 ORDER BY country_of_birth;

SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth HAVING COUNT(*) < 5 ORDER BY country_of_birth;

SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth HAVING COUNT(*) <= 15 ORDER BY country_of_birth;

SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth HAVING COUNT(*) < 10 OR COUNT(*) > 90 ORDER BY country_of_birth;

SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth HAVING COUNT(*) < 10 OR COUNT(*) > 90 ORDER BY count;

SELECT country_of_birth, DATE(date_of_birth) AS date_of_birth FROM person GROUP BY country_of_birth, date_of_birth HAVING DATE(date_of_birth) >= DATE('2000-01-01') ORDER BY date_of_birth;

SELECT country_of_birth, COUNT(country_of_birth) FROM person GROUP BY country_of_birth HAVING COUNT(country_of_birth) < 10 OR COUNT(country_of_birth) > 90 ORDER BY count; -- NULL at first???
