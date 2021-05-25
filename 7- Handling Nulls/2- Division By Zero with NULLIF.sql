-- NULLIF

-- PostgreSQL NULLIF function to handle null values or to prevent division-by-zero error

-- NULLIF(argument_1,argument_2);

SELECT 10 / 0; -- ERROR:  division by zero

SELECT NULLIF('',  null);
--  nullif 
-- --------

-- (1 row)

SELECT NULLIF(10,  0);
--  nullif 
-- --------
    --  10
-- (1 row)

SELECT NULLIF(10,  10);
--  nullif 
-- --------
       
-- (1 row)

SELECT 10 / NULLIF(0,  0);
--  ?column? 
-- ----------
         
-- (1 row)

SELECT COALESCE(10 / NULLIF(0,  0), 0);
--  coalesce 
-- ----------
        -- 0
-- (1 row)