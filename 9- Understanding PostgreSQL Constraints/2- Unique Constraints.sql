-- PostgreSQL UNIQUE constraint to make sure that values stored in a column or a group of columns are unique across rows in a table

-- When a UNIQUE constraint is in place, every time you insert a new row, it checks if the value is already in the table. It rejects the change and issues an error if the value already exists.

-- The same process is carried out for updating existing data.

-- Creating a UNIQUE constraint on multiple columns
-- PostgreSQL allows you to create a UNIQUE constraint to a group of columns using the following syntax:

CREATE TABLE table (
  c1 data_type,
  c2 data_type,
  c3 data_type,
  UNIQUE (c2, c3)
);

-- More in:
-- https://www.postgresqltutorial.com/postgresql-unique-constraint/