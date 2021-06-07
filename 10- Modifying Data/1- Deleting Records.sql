-- PostgreSQL DELETE statement to delete data from a table.

-- The PostgreSQL DELETE statement allows you to delete one or more rows from a table.

-- The following shows basic syntax of the DELETE statement:

-- DELETE FROM table_name
-- WHERE condition;
-- Code language: SQL (Structured Query Language) (sql)
-- In this syntax:

-- First, specify the name of the table from which you want to delete data after the DELETE FROM keywords.
-- Second, use a condition in the WHERE clause to specify which rows from the table to delete.
-- The WHERE clause is optional. If you omit the WHERE clause, the DELETE statement will delete all rows in the table.

-- The DELETE statement returns the number of rows deleted. It returns zero if the DELETE statement did not delete any row.

-- To return the deleted row(s) to the client, you use the RETURNING clause as follows:

-- DELETE FROM table_name
-- WHERE condition
-- RETURNING (select_list | *)
-- Code language: SQL (Structured Query Language) (sql)
-- The asterisk (*) allows you to return all columns of the deleted row from the table_name.

-- To return specific columns, you specify them after the RETURNING keyword.

-- Note that the DELETE statement only removes data from a table. It doesn’t modify the structure of the table. If you want to change the structure of a table such as removing a column, you should use the ALTER TABLE statement.


