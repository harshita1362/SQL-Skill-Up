-- SQL Correlated Subqueries

-- 1. Fetching Data Based on Row-Specific Conditions
SELECT last_name, salary, department_id
FROM employees AS outer
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = outer.department_id
);

-- 2. Using Correlated Subqueries with UPDATE
UPDATE employees
SET salary = ROUND(
    (SELECT AVG(salary)
     FROM employees
     WHERE department_id = employees.department_id), 2
)
WHERE department_id = 101;

-- 3. Using Correlated Subqueries with DELETE
DELETE FROM employees
WHERE employee_id IN (
    SELECT employee_id
    FROM employees
    WHERE department_id = 101
);

-- 4. Using EXISTS with Correlated Subqueries
SELECT e.employee_id, e.last_name, e.job_id, e.department_id
FROM employees e
WHERE EXISTS (
    SELECT 1
    FROM employees sub
    WHERE sub.manager_id = e.employee_id
);

-- 5. Using NOT EXISTS with Correlated Subqueries
SELECT d.department_id, d.department_name
FROM departments d
WHERE NOT EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.department_id
);

