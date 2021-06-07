-- UPDATE statement to update existing data in a table.

-- The PostgreSQL UPDATE statement allows you to modify data in a table. The following illustrates the syntax of the UPDATE statement:

-- UPDATE table_name
-- SET column1 = value1,
--     column2 = value2,
--     ...
-- WHERE condition;
-- Code language: SQL (Structured Query Language) (sql)
-- In this syntax:

-- First, specify the name of the table that you want to update data after the UPDATE keyword.
-- Second, specify columns and their new values after SET keyword. The columns that do not appear in the SET clause retain their original values.
-- Third, determine which rows to update in the condition of the WHERE clause.
-- The WHERE clause is optional. If you omit the WHERE clause, the UPDATE statement will update all rows in the table.

-- When the UPDATE statement is executed successfully, it returns the following command tag:

-- UPDATE count
-- The count is the number of rows updated including rows whose values did not change.

-- Returning updated rows
-- The UPDATE statement has an optional RETURNING clause that returns the updated rows:

-- UPDATE table_name
-- SET column1 = value1,
--     column2 = value2,
--     ...
-- WHERE condition
-- RETURNING * | output_expression AS output_name;
