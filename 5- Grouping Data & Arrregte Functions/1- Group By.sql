-- GROUP BY

-- Divide rows into groups by using the PostgreSQL GROUP BY clause

-- SELECT  column_1, column_2, ..., aggregate_function(column_3) FROM table_name GROUP BY  column_1, column_2, ...;

-- First, select the columns that you want to group e.g., column1 and column2, and column that you want to apply an aggregate function (column3).

-- Second, list the columns that you want to group in the GROUP BY clause.

SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth ORDER BY country_of_birth;

SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth ORDER BY count;

SELECT country_of_birth, DATE(date_of_birth) AS date_of_birth FROM person GROUP BY country_of_birth, date_of_birth ORDER BY date_of_birth;
