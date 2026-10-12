-- SQL HAVING Clause
SELECT department, COUNT(emp_id) AS employee_Count
FROM employee
GROUP BY department
HAVING COUNT(emp_id) > 1;

-- Examples of HAVING Clause
-- Example 1: Filter Total salary
SELECT SUM(salary) AS total_salary
FROM employee
GROUP BY (SELECT 1)
HAVING SUM(salary) >= 250000;

-- Example 2: Filter Average salary
SELECT department, AVG(salary) AS average_salary
FROM employee
GROUP BY department
HAVING AVG(salary) > 55000;

-- Example 3: Filter Maximum salary
SELECT MAX(salary) AS max_salary
FROM employee
HAVING MAX(salary) > 70000;

-- Example 4: Filter Minimum Experience
SELECT MIN(experience) AS min_experience
FROM employee
HAVING MIN(experience) < 3;

-- Example 5: Multiple Conditions
SELECT SUM(salary) AS total_salary, AVG(salary) AS average_salary
FROM employee
HAVING SUM(salary) >= 250000 AND AVG(salary) > 55000;

-- How to Use HAVING With Aggregate Functions in SQL?
-- Example 1: Using SUM() with HAVING Clause
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(45),
    product_cost FLOAT
);

INSERT INTO products VALUES 
(1001, 'Colgate Toothpaste', 2.25),
(1002, 'T-Shirt', 5),
(1003, 'Jeans', 6.5),
(1004, 'Shorts', 4.5),
(1005, 'Sneakers', 8.99),
(1006, 'Mouthwash', 3.35),
(1007, 'Denim Jeans', 8.99),
(1008, 'Synsodyne Toothpaste', 3.35);

-- Find Products with Total Cost Greater Than 3.5
SELECT product_name, product_cost  
FROM products  
GROUP BY product_name, product_cost  
HAVING SUM(product_cost) > 3.5  
ORDER BY product_cost;Example 2: 

-- Using MAX() and MIN() with HAVING Clause
SELECT product_name 
FROM products 
GROUP BY product_name 
HAVING MAX(product_cost) > 7;

-- Find Products with a Minimum Price Less Than 3
SELECT product_name 
FROM products 
GROUP BY product_name 
HAVING MIN(product_cost) < 3;

-- Example 3: Using AVG() with HAVING Clause
SELECT product_name
FROM products
GROUP BY product_name
HAVING AVG(product_cost) > (SELECT AVG(product_cost) FROM products);

-- Example 4: Using COUNT() with HAVING Clause
CREATE TABLE login(signin_id int PRIMARY KEY ,customer_id int, date_login date);

INSERT INTO login values
(1, 121, '2021-10-21'), (2, 135, '2021-05-25'),  
(3, 314, '2021-03-13'), (4, 245, '2021-07-19'),  
(5, 672, '2021-09-23'), (6, 135, '2021-06-12'),  
(7,120,'2021-06-14'), (8, 121, '2021-04-24'),  
(9,135, '2021-06-15'), (10, 984, '2021-01-30');

SELECT * FROM login;

-- Display customer IDs that occurred at least 2 times
SELECT customer_id  
FROM login
 GROUP BY customer_id 
HAVING COUNT(customer_id) >=2 ;
