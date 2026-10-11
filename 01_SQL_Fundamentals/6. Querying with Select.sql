-- SQL SELECT Query
-- Example 1: Select Specific Columns
SELECT first_name, last_name 
FROM customers;

-- Example 2: Select All Columns
SELECT * FROM customers;

-- Example 3: SELECT Statement with WHERE Clause
SELECT first_name
FROM customers
WHERE age = 21;

-- Example 4: SELECT with GROUP BY Clause
SELECT country, COUNT(*) AS customer_count
FROM customers
GROUP BY country;

-- Example 5: SELECT with DISTINCT Clause
SELECT DISTINCT country
FROM customers;

-- Example 6: SELECT Statement with HAVING Clause
SELECT country, COUNT(*) AS customer_count
FROM customers
GROUP BY country
HAVING COUNT(*) >= 2;

-- Example 7: SELECT Statement with ORDER BY clause
SELECT *
FROM customers
ORDER BY age DESC;

-- Example 8: SELECT Statement with LIMIT clause
SELECT * FROM customers
LIMIT 3;

-- SQL Distinct Clause
-- Example 1: Fetch Unique names from the name Field
SELECT DISTINCT name 
FROM students; 

-- Example 2: Fetching Unique Combinations of Multiple Columns
SELECT DISTINCT name, age 
FROM students;

-- Example 3: Using DISTINCT with the ORDER BY Clause
SELECT DISTINCT age 
FROM students 
ORDER BY age;  

-- Example 4: Using DISTINCT with Aggregate Functions (e.g., COUNT())
SELECT COUNT(DISTINCT roll_no)  
FROM Students ;

-- Example 5: DISTINCT with NULL Values
INSERT INTO students (roll_no, name, address, phone, age)
VALUES (13, 'John Doe', '123 Unknown Street', '9876543216', NULL),
(14, 'James Brown', '129 Unknown Street', '9876554317', NULL);

SELECT DISTINCT age 
FROM students;

-- SQL - WHERE 
-- Example 1: Where Clause with Logical Operators
SELECT * FROM employees WHERE age=24;

-- Example 2: WHERE with Comparison Operators
SELECT emp_id, name, country 
FROM employees 
WHERE age > 21;

-- Example 3: Where Clause with BETWEEN Operator
SELECT * FROM employees
WHERE age BETWEEN 22 AND 24;

-- Example 4: Where Clause with LIKE Operator
SELECT * 
FROM employees 
WHERE name LIKE 'L%';

-- Example 5: Where Clause with IN Operator
SELECT name FROM employees
WHERE age IN (21,23);

-- Aliases in SQL
-- Types of aliases
-- Column Aliases
SELECT customer_id AS id
FROM customer;

-- Table Aliases
SELECT DISTINCT c1.customer_name, c1.country
FROM customer AS c1
JOIN customer AS c2
ON c1.age = c2.age
AND c1.country = c2.country
AND c1.customer_id <> c2.customer_id;

-- Combining Column & Table Aliases
SELECT c.customer_name AS name,
       c.country AS location
FROM customer AS c
WHERE c.age >= 21;
