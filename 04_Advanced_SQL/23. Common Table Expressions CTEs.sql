-- Calculate Average salary by department
WITH avg_salary_by_dept AS (
    SELECT department, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
)
SELECT *
FROM avg_salary_by_dept;

-- Syntax
WITH cte_name AS (
    SELECT query
)
SELECT *
FROM cte_name;

-- Recursive Common Table Expression 
-- Example: Hierarchical Employee Data

-- Step 1: Select Top-Level Employees
SELECT employee_id,
       first_name,
       last_name,
       manager_id,
       1 AS emp_level
FROM employees
WHERE manager_id IS NULL;

-- Step 2: Find Employees Reporting to Them
UNION ALL
SELECT e.employee_id,
       e.first_name,
       e.last_name,
       e.manager_id,
       r.emp_level + 1
FROM employees e
INNER JOIN cte_reports r
    ON e.manager_id = r.employee_id;

-- Step 3: Display the Hierarchy
SELECT first_name || ' ' || last_name AS full_name,
       emp_level,
       (
           SELECT first_name || ' ' || last_name
           FROM employees
           WHERE employee_id = cte_reports.manager_id
       ) AS manager
FROM cte_reports
ORDER BY emp_level, manager_id;

-- Complete Query
WITH RECURSIVE cte_reports(
    employee_id,
    first_name,
    last_name,
    manager_id,
    emp_level
) AS (
    SELECT employee_id,
           first_name,
           last_name,
           manager_id,
           1
    FROM employees
    WHERE manager_id IS NULL

    UNION ALL

    SELECT e.employee_id,
           e.first_name,
           e.last_name,
           e.manager_id,
           r.emp_level + 1
    FROM employees e
    INNER JOIN cte_reports r
        ON e.manager_id = r.employee_id
)
SELECT first_name || ' ' || last_name AS full_name,
       emp_level,
       (
           SELECT first_name || ' ' || last_name
           FROM employees
           WHERE employee_id = cte_reports.manager_id
       ) AS manager
FROM cte_reports
ORDER BY emp_level, manager_id;

-- Recursive CTE Syntax: 
WITH RECURSIVE 
cte_name [(col1, col2, ...)]
AS ( subquery )
Select col1, col2, .. from cte_name;

-- Example 1: Find Hierarchical Relationship of All Levels
WITH RecursiveOrganizationCTE AS
(
    SELECT EmployeeID, FirstName, LastName, Department,ManagerID
    FROM Organization
    WHERE ManagerID IS NULL
    UNION ALL
   
    SELECT e.EmployeeID, e.FirstName, e.LastName, e.department,e.ManagerID
    FROM Organization e
    JOIN RecursiveOrganizationCTE r ON e.ManagerID = r.EmployeeID
)
--Show the records stored inside  the CTE we created above
SELECT *
FROM RecursiveOrganizationCTE;

-- Example 2: Simple Recursive CTE to Find Out Days in a Week
WITH DaysofWeek(x, WeekDays) 
AS (
    SELECT 0, DATENAME(DW, 0)
    
    UNION ALL
    SELECT   x + 1, DATENAME(DW, x + 1)
    FROM  DaysofWeek  WHERE x < 6
)
SELECT WeekDays FROM DaysofWeek;

-- Example 3: Simple Recursive CTE to Find Out All the Months in a Year
WITH RecursiveMonths AS (
    SELECT
        1 AS MonthNumber,
        DATENAME(MONTH, CAST('2024-01-01' AS DATE)) AS MonthName

    UNION ALL

    SELECT
        MonthNumber + 1,
        DATENAME(MONTH, DATEADD(MONTH, MonthNumber, '2024-01-01'))
    FROM RecursiveMonths
    WHERE MonthNumber < 12
)
SELECT * FROM RecursiveMonths;

-- Example 4: Find Relationship Between Data Present in the Different Tables Through Recursive CTE.
WITH Destinations AS (
    SELECT
        CR.RouteID,
        CR.SourceCityID,
        CR.DestinationCityID,
        CAST(CS.CityName + ' -> ' + CD.CityName AS VARCHAR(MAX)) AS Route,
        CR.Distance
    FROM CityRoutes CR
    INNER JOIN CityData CS ON CR.SourceCityID = CS.CityID
    INNER JOIN CityData CD ON CR.DestinationCityID = CD.CityID

    UNION ALL

    SELECT
        CR.RouteID,
        R.SourceCityID,
        CR.DestinationCityID,
        CAST(R.Route + ' -> ' + CD.CityName AS VARCHAR(MAX)),
        R.Distance + CR.Distance
    FROM Destinations R
    INNER JOIN CityRoutes CR ON R.DestinationCityID = CR.SourceCityID
    INNER JOIN CityData CD ON CR.DestinationCityID = CD.CityID
    WHERE CHARINDEX('-> ' + CD.CityName, R.Route) = 0
)
SELECT Route, Distance
FROM Destinations
WHERE Route LIKE '%Bangalore%'
OPTION (MAXRECURSION 0);
