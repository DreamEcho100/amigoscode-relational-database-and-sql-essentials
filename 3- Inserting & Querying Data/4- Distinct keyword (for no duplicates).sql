-- Distinct keyword (for no duplicates) 

-- Clause to remove duplicate rows from a result set returned by a query

SELECT country_of_birth FROM person ORDER BY country_of_birth;

SELECT DISTINCT country_of_birth FROM person ORDER BY country_of_birth;

SELECT DISTINCT country_of_birth FROM person ORDER BY country_of_birth DESC;
