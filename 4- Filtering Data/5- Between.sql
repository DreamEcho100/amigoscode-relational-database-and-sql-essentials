-- Between

--  PostgreSQL BETWEEN operator to match a value against a range of values.

-- value BETWEEN low AND high;

-- You can rewrite the BETWEEN operator by using the greater than or equal ( >=) or less than or equal ( <=) operators like this:

-- value >= low AND value <= high

-- If you want to check if a value is out of a range, you combine the NOT operator with the BETWEEN operator as follows:

-- value NOT BETWEEN low AND high;

-- The following expression is equivalent to the expression that uses the NOT and BETWEEN operators:

-- value < low OR value > high

-- You often use the BETWEEN operator in the WHERE clause of a SELECT, INSERT, UPDATE or DELETE statement.

SELECT * FROM person WHERE date_of_birth >= '2000-01-01' AND date_of_birth <= '2015-01-01' ORDER BY date_of_birth;

SELECT * FROM person WHERE date_of_birth BETWEEN '2000-01-01' AND '2015-01-01' ORDER BY date_of_birth;

SELECT * FROM person WHERE date_of_birth NOT BETWEEN '2000-01-01' AND '2015-01-01' ORDER BY date_of_birth;
