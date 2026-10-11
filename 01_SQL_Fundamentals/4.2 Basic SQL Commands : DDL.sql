-- CREATE TABLE
CREATE TABLE customer(
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    country VARCHAR(50),
    age INT CHECK (age >= 0 AND age <= 99),
    phone INT(10)
);

-- Inserting Data into the Table
INSERT INTO customer (customer_id, first_name, last_name, country, age, phone)
VALUES
(1, 'Luca', 'Bianchi', 'Italy', 23, 'xxxxxxxxxx'),
(2, 'Aiko', 'Tanaka', 'Japan', 21, 'xxxxxxxxxx'),
(3, 'Carlos', 'Gomez', 'Spain', 24, 'xxxxxxxxxx'),
(4, 'Sofia', 'Müller', 'Germany', 22, 'xxxxxxxxxx'),
(5, 'Ethan', 'Johnson', 'USA', 25, 'xxxxxxxxxx');

-- Create Table from Existing Table
CREATE TABLE customer_subset AS
SELECT customer_id, first_name
FROM customer;

-- SQL ALTER TABLE
-- Use Cases for SQL ALTER TABLE
-- ADD
ALTER TABLE staff
ADD email VARCHAR(100);

-- ALTER COLUMN
ALTER TABLE staff
ALTER COLUMN address VARCHAR(100);

-- DROP
ALTER TABLE staff
DROP COLUMN grade;

-- RENAME COLUMN
ALTER TABLE staff
RENAME COLUMN name TO employee_name;

-- RENAME TO
ALTER TABLE staff
RENAME TO employees;

-- DROP Command
-- DROP Table
DROP TABLE table_name;

-- DROP database
DROP DATABASE database_name;

-- TRUNCATE Command
TRUNCATE TABLE  table_name;
