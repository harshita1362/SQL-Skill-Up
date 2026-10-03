-- Self Join

-- Query 
SELECT e.employee_name AS employee, m.employee_name AS manager
FROM GFGemployees AS e 
JOIN GFGemployees AS m ON e.manager_id = m.employee_id;

-- Cross Join

-- Query 
SELECT * 
FROM customer
CROSS JOIN orders;

-- Multiple Joins 

-- Steps to Implement Multiple Joins in SQL

-- Step 1: Set up the Database and Tables
CREATE DATABASE geeks;
USE geeks;
CREATE TABLE students(id INT, name VARCHAR(50), branch VARCHAR(50));
CREATE TABLE marks(id INT, marks INT);
CREATE TABLE attendance(id INT, attendance INT);

-- Step 2: Insert Data into Tables
-- students
INSERT INTO students VALUES
(1,'Liam','CSE'),
(2,'Emma','ECE'),
(3,'Noah','ECE'),
(4,'Olivia','CSE');

-- marks
INSERT INTO marks VALUES
(1,95),
(2,85),
(3,80),
(4,65);

-- attendance
INSERT INTO attendance VALUES
(1,75),
(2,65),
(3,80),
(4,87);

-- Step 3: View Data from tables
SELECT * FROM students;

SELECT * FROM marks;

SELECT  * FROM attendance;

-- Step 4: Using Multiple Joins in SQL
SELECT s.id, s.name, m.marks, a.attendance
FROM students AS s
INNER JOIN marks AS m ON s.id = m.id
INNER JOIN attendance AS a ON s.id = a.id
WHERE a.attendance >= 75;

-- Using Joins Across Multiple Tables

-- 1. Multiple INNER JOINS
SELECT s.id, s.name, m.marks, a.attendance
FROM students AS s
INNER JOIN marks AS m ON s.id = m.id
INNER JOIN attendance AS a ON s.id = a.id
WHERE a.attendance >= 80;

-- 2. LEFT JOIN ( LEFT OUTER JOIN) with Multiple Tables
SELECT s.id, s.name, m.marks, a.attendance
FROM students AS s
LEFT JOIN marks AS m ON s.id = m.id AND m.marks > 70
LEFT JOIN attendance AS a ON s.id = a.id;

-- 3. RIGHT JOIN (RIGHT OUTER JOIN) with Multiples Tables
SELECT s.id, s.name, m.marks, a.attendance
FROM students AS s
RIGHT JOIN marks AS m ON s.id = m.id AND s.branch='CSE'
RIGHT JOIN attendance AS a ON s.id = a.id;

-- 4. FULL OUTER JOIN with Multiple Tables
SELECT s.id, s.name, m.marks, a.attendance
FROM students AS s
FULL OUTER JOIN marks AS m ON s.id = m.id AND m.marks > 80
FULL OUTER JOIN attendance AS a ON s.id = a.id AND a.attendance >= 80;
