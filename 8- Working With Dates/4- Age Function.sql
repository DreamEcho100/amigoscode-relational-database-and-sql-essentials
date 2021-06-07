-- The AGE() function accepts two TIMESTAMP values. It subtracts the second argument from the first one and returns an interval as a result.

SELECT current_date, AGE(timestamp '2000-01-01');

SELECT first_name, last_name, gender, country_of_birth, date_of_birth, AGE(NOW(), date_of_birth) AS age FROM person;
