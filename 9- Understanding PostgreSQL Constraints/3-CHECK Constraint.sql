-- PostgreSQL CHECK constraints and how to use them to constrain values in columns of a table based on a boolean expression.

-- A CHECK constraint is a kind of constraint that allows you to specify if values in a column must meet a specific requirement.

-- The CHECK constraint uses a Boolean expression to evaluate the values before they are inserted or updated to the column.

-- If the values pass the check, PostgreSQL will insert or update these values to the column. Otherwise, PostgreSQL will reject the changes and issue a constraint violation error.

-- Define PostgreSQL CHECK constraint for new tables
-- Typically, you use the CHECK constraint at the time of creating the table using the CREATE TABLE statement.

-- By default, PostgreSQL gives the CHECK constraint a name using the following pattern:

-- {table}_{column}_check

-- However, if you want to assign aCHECK constraint a specific name, you can specify it after the CONSTRAINT expression as follows:

-- column_name data_type CONSTRAINT constraint_name CHECK(...)
