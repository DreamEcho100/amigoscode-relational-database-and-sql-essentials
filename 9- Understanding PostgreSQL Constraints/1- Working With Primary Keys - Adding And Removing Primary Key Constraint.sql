-- You define primary keys through primary key constraints.
-- Technically, a primary key constraint is the combination of a not-null constraint and a UNIQUE constraint.
-- Define primary key when changing the existing table structure

-- It is rare to define a primary key for existing table. In case you have to do it, you can use the ALTER TABLE statement to add a primary key constraint.
-- ALTER TABLE table_name ADD PRIMARY KEY (column_1, column_2);

-- Now, if we want to add a primary key named id into the table_name table and the id field is auto-incremented by one, we use the following statement:
-- ALTER TABLE table_name ADD COLUMN ID SERIAL PRIMARY KEY;

-- To remove an existing primary key constraint, you also use the ALTER TABLE statement with the following syntax:
-- ALTER TABLE table_name DROP CONSTRAINT primary_key_constraint;
