-- PostgreSQL COALESCE function that returns the first non-null argument. 

-- To apply this function in SELECT statement to handle null values effectively.

SELECT COALESCE(1);

SELECT COALESCE(1) AS "number";

SELECT COALESCE(null, 1) AS "number";

SELECT COALESCE(null, null, 1) AS "number";

SELECT COALESCE(null, 10, 1) AS "number";

SELECT COALESCE(email, 'Email is not provided!') from person;
