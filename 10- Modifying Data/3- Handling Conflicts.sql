-- PostgreSQL Upsert Using INSERT ON CONFLICT statement

-- PostgreSQL upsert feature to insert or update data if the row that is being inserted already exists in the table.

-- In relational databases, the term upsert is referred to as merge. The idea is that when you insert a new row into the table, PostgreSQL will update the row if it already exists, otherwise, it will insert the new row. That is why we call the action is upsert (the combination of update or insert).

-- To use the upsert feature in PostgreSQL, you use the INSERT ON CONFLICT statement as follows:

-- INSERT INTO table_name(column_list) 
-- VALUES(value_list)
-- ON CONFLICT target action;
-- Code language: SQL (Structured Query Language) (sql)
-- PostgreSQL added the ON CONFLICT target action clause to the INSERT statement to support the upsert feature.

-- In this statement, the target can be one of the following:

--  (column_name) – a column name.
--  ON CONSTRAINT constraint_name – where the constraint name could be the name of the UNIQUE constraint.
--  WHERE predicate – a WHERE clause with a predicate.
-- The action can be one of the following:

--  DO NOTHING – means do nothing if the row already exists in the table.
--  DO UPDATE SET column_1 = value_1, .. WHERE condition – update some fields in the table.

-- The following statement creates a new table called customers to demonstrate the PostgreSQL upsert feature.

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
	customer_id serial PRIMARY KEY,
	name VARCHAR UNIQUE,
	email VARCHAR NOT NULL,
	active bool NOT NULL DEFAULT TRUE
);

-- The customers table consists of four columns: customer_id, name, email, and active. The name column has a unique constraint to guarantee the uniqueness of customer names.

-- The following INSERT statement inserts some rows into the customers table.

INSERT INTO 
    customers (name, email)
VALUES 
    ('IBM', 'contact@ibm.com'),
    ('Microsoft', 'contact@microsoft.com'),
    ('Intel', 'contact@intel.com');

-- Suppose Microsoft changes the contact email from contact@microsoft.com to hotline@microft.com, we can update it using the UPDATE statement. However, to demonstrate the upsert feature, we use the following INSERT ON CONFLICT statement:

INSERT INTO customers (NAME, email)
VALUES('Microsoft','hotline@microsoft.com') 
ON CONFLICT ON CONSTRAINT customers_name_key 
DO NOTHING;

-- The statement specified that if the customer name exists in the  customers table, just ignore it (do nothing).

-- The following statement is equivalent to the above statement but it uses the name column instead of the unique constraint name as the target of the INSERT statement.

INSERT INTO customers (name, email)
VALUES('Microsoft','hotline@microsoft.com') 
ON CONFLICT (name) 
DO NOTHING;

-- Suppose, you want to concatenate the new email with the old email when inserting a customer that already exists, in this case, you use the UPDATE clause as the action of the INSERT statement as follows:

INSERT INTO customers (name, email)
VALUES('Microsoft','hotline@microsoft.com') 
ON CONFLICT (name) 
DO 
   UPDATE SET email = EXCLUDED.email || ';' || customers.email;

-- More in:
-- https://www.postgresqltutorial.com/postgresql-upsert/
