-- SQL COUNT() Function
SELECT COUNT(Name)
FROM GeeksTab;

-- SQL AVG() Function
SELECT AVG(Salary)
FROM GeeksTab; 

-- SQL SUM() Function
SELECT SUM(Salary)
FROM GeeksTab; 

-- SQL MIN() Function
SELECT MIN(Salary) AS Min_Salary
FROM GeeksTab;

-- SQL MAX() Functions 
SELECT MAX(Salary) AS Max_Salary
FROM GeeksTab;

-- Using MIN() and MAX() with HAVING Clause
SELECT Name, MAX(Salary) AS max_salary
FROM GeeksTab
GROUP BY Name
HAVING MIN(Salary) > 5000;
