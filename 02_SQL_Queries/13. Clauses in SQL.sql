-- SQL Clauses

-- 1) Using the WHERE Clause
SELECT * FROM Students
WHERE stu_fees < 3500; 

-- 2) Using the GROUP BY Clause
SELECT stu_class, SUM(stu_fees) AS total_fees
FROM Students
GROUP BY stu_class;

-- 3) Using the ORDER BY Clause
SELECT * FROM Students
ORDER BY stu_fees ASC;

-- 4) Using the HAVING Clause
SELECT stu_subject, COUNT(*) AS num_students
FROM Students
GROUP BY stu_subject
HAVING COUNT(*) > 1;

-- 5) Using the LIMIT Clause
SELECT stu_name, stu_fees
FROM Students
ORDER BY stu_fees DESC
LIMIT 3;

-- 6) Using the FROM Clause
SELECT stu_name, stu_class, stu_age 
FROM Students_Table;

-- 7) Using the LIKE Operator
SELECT stu_name, stu_subject FROM 
Students_Table WHERE stu_name LIKE '%Patil';

-- 8) Using the AND Operator
SELECT stu_name, stu_class, stu_age FROM 
Students_Table WHERE stu_class = 9 AND stu_age = 16;

-- SQL ORDER BY

-- 1) Sort by a Single Column
SELECT *
FROM products
ORDER BY price DESC;

-- 2) Sort by Multiple Columns
SELECT *
FROM products
ORDER BY category ASC, price DESC;

-- 3) Sorting by Column Number
SELECT product_id, product_name, category, price
FROM products
ORDER BY 1;

-- SQL GROUP BY
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- 1) Query
SELECT subject, COUNT(*) AS student_count
FROM students
GROUP BY subject;

-- 2) Group By Multiple Columns
SELECT subject, year, COUNT(*) AS student_count
FROM students
GROUP BY subject, year;

-- HAVING Clause with GROUP BY
-- 3) Filter by Total Salary
SELECT age, SUM(salary) AS total_salary
FROM employees
GROUP BY age
HAVING SUM(salary) > 50000;

-- 4) Filter by Average Salary
SELECT age, AVG(salary) AS average_salary
FROM employees
GROUP BY age
HAVING AVG(salary) > 60000;

-- SQL LIMIT Clause

-- 1) Basic LIMIT Usage 
SELECT * 
FROM employees
LIMIT 2;

-- 2) LIMIT with ORDER BY Clause
SELECT * FROM student
ORDER BY age DESC
LIMIT 3;

-- 3) SQL LIMIT with OFFSET
SELECT * 
FROM student 
ORDER BY age 
LIMIT 2 OFFSET 2;

-- 4) Using LIMIT to Get the nth Highest or Lowest Value
SELECT age FROM student  
ORDER BY DESC age 
LIMIT 2, 1;  

-- 5) Using LIMIT with WHERE Clause
SELECT age
FROM student
WHERE id<4
ORDER BY age
LIMIT 2, 1;
