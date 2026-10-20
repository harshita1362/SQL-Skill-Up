-- SQL CREATE INDEX Statement
CREATE INDEX idx_employees_department
ON employees(department);
SELECT emp_name, salary
FROM employees
WHERE department = 'IT';

-- Syntax
CREATE INDEX index_name
ON table_name  (column1, column2.....);

-- Creating a Unique Index:
CREATE UNIQUE INDEX index_name
ON table_name (column1, column2.....);

-- Step 1: Create an Index
CREATE INDEX idx ON
 students(name);

--Creating a Unique Index
CREATE UNIQUE INDEX idx_student_id ON
 students(student_id);

-- Step 2: Retrieve Data Using the Index
SELECT * FROM students USE INDEX(idx);

-- Step 3: Verifying the Index Creation
SHOW INDEXES FROM students;

-- Example of Non-Clustered Index
CREATE NONCLUSTERED INDEX nix_fte_name
ON student (name ASC);

-- 1. SELECT fields instead of using SELECT *
SELECT * FROM geeks_table;

SELECT first_name, last_name, 
address, city, state, zip FROM geeks_table;

-- 2. Avoid SELECT DISTINCT
SELECT DISTINCT first_name, last_name, state
FROM geeks_table;

SELECT first_name, last_name, state
FROM geeks_table;

-- 3. Use INNER JOIN Instead of WHERE for Joins
FROM gfg1, gfg2
WHERE gfg1.customer_id = gfg2.customer_id

FROM gfg1 INNER JOIN gfg2
ON gfg1.customer_id = gfg2.customer_id

-- 4. Use WHERE Instead of HAVING
SELECT customer_id, SUM(sales) AS total_sales
FROM sales
GROUP BY customer_id
HAVING sale_date BETWEEN '2019-01-01' AND '2019-12-31';

SELECT customer_id, SUM(sales) AS total_sales
FROM sales
WHERE sale_date BETWEEN '2019-01-01' AND '2019-12-31'
GROUP BY customer_id;

-- 5. Run Queries During Off-Peak Hours
