-- LIKE/ILIKE

-- PostgreSQL LIKE and ILIKE operators to query data using pattern matchings

-- value LIKE pattern

-- value NOT LIKE pattern

-- The pattern _her% matches any string that:

-- Begin with any single character (_)

-- And is followed by the literal string her.

-- And is ended with any number of characters.

SELECT * FROM person WHERE email LIKE '%.com';

SELECT * FROM person WHERE NOT email LIKE '%.com';

SELECT * FROM person WHERE email LIKE '%google.com';

SELECT * FROM person WHERE email LIKE '%google.%';

SELECT * FROM person WHERE email LIKE '______@%'; -- must have 6 charcters followed by @ then anything else

SELECT * FROM person WHERE email LIKE '______s@%';

SELECT * FROM person WHERE country_of_birth LIKE 'p%';

SELECT * FROM person WHERE country_of_birth LIKE 'P%';

SELECT * FROM person WHERE country_of_birth ILIKE 'p%'; -- case not sensitive
