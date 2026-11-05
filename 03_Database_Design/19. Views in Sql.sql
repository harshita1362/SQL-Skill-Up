-- Query:
CREATE VIEW StudentView AS
SELECT NAME, ADDRESS
FROM StudentDetails;
SELECT * FROM StudentView;

-- Syntax:
CREATE VIEW view_name AS
SELECT column1, column2.....
FROM table_name
WHERE condition;

-- Example 1: Creating a Simple View from a Single Table
CREATE VIEW DetailsView AS
SELECT NAME, ADDRESS
FROM StudentDetails
WHERE S_ID < 5;

-- Example 2: Creating a View From Multiple Tables
CREATE VIEW MarksView AS
SELECT StudentDetails.NAME, StudentDetails.ADDRESS, StudentMarks.MARKS
FROM StudentDetails, StudentMarks
WHERE StudentDetails.NAME = StudentMarks.NAME;

-- Managing Views
-- 1. Listing all Views in a DatabaseUSE "database_name";
SHOW FULL TABLES WHERE table_type LIKE "%VIEW";
-- Using information_schema
SELECT table_name
FROM information_schema.views
WHERE table_schema = 'database_name';
OR
SELECT table_schema, table_name, view_definition
FROM information_schema.views
WHERE table_schema = 'database_name'; 

-- 2. Deleting a View
DROP VIEW view_name;

-- 3. Updating a View Definition
UPDATE view_name
SET column1 = value1, column2 = value2...., columnN = valueN
WHERE [condition];

CREATE OR REPLACE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;

-- Advanced Techniques with Views
-- 1. Updating Data Through Views
UPDATE MarkView
SET ADDRESS = 'Perth'
WHERE NAME = 'Liam';

-- 2. Inserting Data into Views
INSERT INTO MarkView(NAME, ADDRESS)
VALUES("John","German");

-- 3. Deleting a row from a View
DELETE FROM MarkView
WHERE NAME="John";

-- 4. WITH CHECK OPTION Clause
CREATE VIEW SampleView AS
SELECT S_ID, NAME
FROM  StudentDetails
WHERE NAME IS NOT NULL
WITH CHECK OPTION;

-- UPDATE VIEW in SQL
-- Syntax:
UPDATE view_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

-- To modify the structure of a view:
CREATE OR REPLACE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;

-- Examples of Updating a View
-- 1. Updating View Using IN Operator
UPDATE view1  
SET Marks=50 
where Roll_no in (3,5);

--2. Updating View Using Arithmetic Operation
UPDATE view1 SET Marks = Marks*0.95;

-- 3. Updating View Using Aggregate Function
CREATE OR REPLACE VIEW view1 AS
SELECT Subject, SUM(Marks) AS TotalMarks
FROM Student
GROUP BY Subject

-- 4. Updating View Using Subqueries
CREATE OR REPLACE VIEW view1 AS
SELECT Name,
       (SELECT SUM(Marks) FROM Student s WHERE s.Subject = Student.Subject) AS TotalMarks
FROM Student;
