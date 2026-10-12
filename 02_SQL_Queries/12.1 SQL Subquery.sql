-- Example
SELECT * FROM Students
WHERE Score >  ( SELECT AVG(Score) FROM Students );

-- SQL Clauses for Subqueries
-- Types of Subqueries
-- Single-Row Subquery
SELECT * FROM Employees
WHERE Salary = (SELECT MAX(Salary) FROM Employees);

-- Multi-Row Subquery
SELECT * FROM Employees
WHERE DepartmentID IN (SELECT DepartmentID FROM Departments WHERE Location = 'New York');

-- Correlated Subquery
SELECT e.Name, e.Salary
FROM Employees e
WHERE e.Salary > (SELECT AVG(Salary) 
                  FROM Employees 
                  WHERE DepartmentID = e.DepartmentID);

-- Examples of Using SQL Subqueries

-- Example 1: Fetching Data Using Subquery in WHERE Clause
SELECT NAME, LOCATION, PHONE_NUMBER 
FROM Student_Info 
WHERE ROLL_NO IN (
    SELECT ROLL_NO 
    FROM Student_Section 
    WHERE SECTION = 'A'
);

-- Example 2: Using Subquery with DELETE
DELETE FROM Student_Info
WHERE ROLL_NO IN (
    SELECT ROLL_NO FROM (
        SELECT ROLL_NO FROM Student_Info WHERE ROLL_NO <= 101 OR ROLL_NO = 201
    ) AS temp
);

-- Example 3: Using Subquery with UPDATE
UPDATE Student_Info
SET NAME = 'Geeks'
WHERE LOCATION IN (
    SELECT LOCATION 
    FROM Student_Info 
    WHERE LOCATION IN ('London', 'Berlin')
);

-- Example 4: Simple Subquery in the FROM Clause
SELECT NAME, PHONE_NUMBER
FROM (
    SELECT NAME, PHONE_NUMBER, LOCATION 
    FROM Student_Info 
    WHERE LOCATION LIKE 'T%'
) AS subquery_table;

-- Example 5: Subquery with JOIN
SELECT s.NAME, s.LOCATION, ns.SECTION
FROM Student_Info s
INNER JOIN (
    SELECT ROLL_NO, SECTION 
    FROM Student_Section 
    WHERE SECTION = 'A'
) ns
ON s.ROLL_NO = ns.ROLL_NO;
