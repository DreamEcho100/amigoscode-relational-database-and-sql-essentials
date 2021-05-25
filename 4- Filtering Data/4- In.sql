-- 

-- PostgreSQL IN operator in the WHERE clause to check if a value matches any value in a list.

-- value IN (value1,value2,...)

SELECT * FROM person WHERE country_of_birth = 'China' OR  country_of_birth = 'France' OR  country_of_birth = 'Brazil' ORDER BY country_of_birth;

SELECT * FROM person WHERE country_of_birth IN ('China', 'France', 'Brazil') ORDER BY country_of_birth;

SELECT * FROM person WHERE country_of_birth NOT IN ('China', 'France', 'Brazil') ORDER BY country_of_birth;

SELECT * FROM person WHERE country_of_birth IN ('China', 'France', 'Brazil') ORDER BY country_of_birth OFFSET 5 LIMIT 15;
