-- Create a Sample Table

CREATE DATABASE GeeksForGeeks;
USE GeeksForGeeks;

CREATE TABLE MATHS(
ROLL_NUMBER INT,
S_NAME VARCHAR(10),
MARKS INT);

INSERT INTO MATHS (id, name, marks) VALUES
(1, 'ABHI', 70),
(2, 'RAVI', 80),
(3, 'ARJUN', 90),
(4, 'SAM', 100),
(5, 'MOHAN', 50),
(6, 'ROHAN', 10),
(7, 'ROCKY', 20),
(8, 'AYUSH', 40),
(9, 'NEHA', 30),
(10, 'KRITI', 60);

SELECT * FROM MATHS;

-- SQL Comparison Operator Examples

-- 1. Equal to (=) Operator: 
SELECT * FROM MATHS WHERE MARKS=50;

-- 2. Greater than (>) Operator:
SELECT * FROM MATHS WHERE MARKS>60;

-- 3. Less than (<) Operator:
SELECT * FROM MATHS WHERE MARKS<40;

-- 4. Greater than or equal to (>=) Operator:
SELECT * FROM MATHS WHERE MARKS>=80;

-- 5. Less than or equal to (<=) Operator:
SELECT * FROM MATHS WHERE MARKS<=30;

-- 6. Not equal to (<>) Operator: 
SELECT * FROM MATHS WHERE MARKS<>70;
