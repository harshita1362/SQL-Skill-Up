-- Syntax:
RANK() OVER (PARTITION BY column1, column2, ... ORDER BY 
sort_column1, sort_column2, ...)
  
-- Query:SELECT  Name, Score,
RANK() OVER (ORDER BY Score DESC) AS Rank
FROM Students;

-- Syntax
DENSE_RANK() OVER (PARTITION BY column1, column2, ... ORDER BY 
sort_column1, sort_column2, ...)

-- Query
SELECT Name, Score,
DENSE_RANK() OVER (ORDER BY Score DESC) AS Dense_Rank
FROM Students;

-- Using the ROW_NUMBER() window function.
-- Step 1: Create the database
CREATE DATABASE Geeksforgeeks
  
-- Use the GFG Database.
USE GeeksforGeeks
  
-- Step 3: Create a table
CREATE TABLE studentsSectionWise(
studentId INT,
studentName VARCHAR(100),
sectionName VARCHAR(50),
studentMarks INT 
);

-- Step 4: Insert the rows into the table :
INSERT INTO studentsSectionWise
VALUES (1, 'Geek1','A',461),
(1, 'Geek2','B',401),
(1, 'Geek3','C',340),
(2, 'Geek4','A',446),
(2, 'Geek5','B',361),
(2, 'Geek6','C',495),
(3, 'Geek7','A',436),
(3, 'Geek8','B',367),
(3, 'Geek9','C',498),
(4, 'Geek10','A',206),
(4, 'Geek11','B',365),
(4, 'Geek12','C',485),
(5, 'Geek13','A',446),
(5, 'Geek14','B',368),
 (5, 'Geek15','C',295),
 (6, 'Geek16','C',495);

-- Step 5: Check the table
SELECT * FROM studentsSectionWise
  
-- Syntax:
ROW_NUMBER ( )   

 OVER ( [ PARTITION BY col_1,col_2... ] ORDER BY col_3,col_4.. ASC or DESC) AS column_name

-- Using ORDER_BY Clause with ROW_NUMBER() Function
SELECT * , ROW_NUMBER() OVER ( ORDER BY studentMarks DESC) AS rankNumber
FROM studentsSectionWise

-- Using PARTITION_BY with ROW_NUMBER() Function
SELECT * , ROW_NUMBER() OVER (PARTITION BY sectionName ORDER BY studentMarks DESC) AS rankNumber
FROM studentsSectionWise;

-- Understanding ROW_NUMBER() Without PARTITION BY
SELECT * , ROW_NUMBER() OVER (ORDER BY studentMarks DESC) AS rankNumber
FROM studentsSectionWise

-- Using ROW_NUMBER() to Get the Subset of Rows
WITH topTwoRankers AS  
(  
  SELECT * , ROW_NUMBER() OVER (PARTITION BY sectionName ORDER BY studentMarks DESC) AS rankNumber
  FROM studentsSectionWise   
)   
SELECT * 
FROM topTwoRankers  
WHERE rankNumber <=2;  

-- Creating Database:
CREATE DATABASE geeks

-- To use this database:
USE geeks;

-- This is our table in the geek's database:
CREATE TABLE department (
  id      INTEGER PRIMARY KEY,
  salary  INTEGER NOT NULL,
  name    TEXT NOT NULL,
  dept_id TEXT NOT NULL
);

-- Add value into the table:
INSERT INTO department 
VALUES (1, 34000, 'ANURAG', 'UI DEVELOPERS');

INSERT INTO department 
VALUES (2, 33000, 'harsh', 'BACKEND DEVELOPERS');

INSERT INTO department 
VALUES (3, 36000, 'SUMIT', 'BACKEND DEVELOPERS');

INSERT INTO department 
VALUES (4, 36000, 'RUHI', 'UI DEVELOPERS');

INSERT INTO department 
VALUES (5, 37000, 'KAE', 'UI DEVELOPERS');

-- This is our data inside the table:
SELECT * FROM department;

-- Example 1: Query to Calculate Running Total in SQL Server
SELECT * ,(
SELECT SUM(T2.[SALARY])  
 FROM [department] AS T2
       WHERE T2.[ID] <= T1.[ID]
) AS [Running Total]
FROM [department] AS T1

-- Example 2: We'll use the SUM Function and OVER to find the Running Total.
SELECT *
    ,SUM([SALARY]) OVER (
           ORDER BY  [ID]
  ) AS [Running Total]
FROM department

-- Example 3: We will use PARTITION BY with OVER to find the Running Total.
SELECT *
   ,SUM([SALARY]) OVER  (
PARTITION BY DEPT_ID  ORDER BY Id
) AS [Running Total]
FROM department
