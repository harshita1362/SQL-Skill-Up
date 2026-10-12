

-- 1. Addition (+)
-- Example 1: Addition with constant
SELECT employee_id, employee_name, salary, 
       salary + 100 AS "salary + 100"
FROM addition;

-- Example 2: Addition of two columns
SELECT employee_id, employee_name, salary, 
       salary + employee_id AS "salary + employee_id"
FROM addition;

-- 2. Subtraction (-)
-- Example 1: Subtracting a constant
SELECT employee_id, employee_name, salary, 
       salary - 100 AS "salary - 100"
FROM subtraction;

-- Example 2: Subtracting one column from another
SELECT employee_id, employee_name, salary, 
       salary - employee_id AS "salary - employee_id"
FROM subtraction;

-- 3. Multiplication (*)
-- Example 1: Multiplying with a constant
SELECT employee_id, employee_name, salary, 
       salary * 100 AS "salary * 100"
FROM addition;

-- Example 2: Multiplying two columns
SELECT employee_id, employee_name, salary, 
       salary * employee_id AS "salary * employee_id"
FROM addition;

-- 5. Division (/)
SELECT employee_id, employee_name, salary, 
       salary / 100 AS "salary / 100"
FROM addition;

-- 6. Modulus (%)
-- Example 1: Modulus with constant
SELECT employee_id, employee_name, salary, 
       salary % 25000 AS "salary % 25000"
FROM addition;

-- Example 2: Modulus between columns
SELECT employee_id, employee_name, salary, 
       salary % employee_id AS "salary % employee_id"
FROM addition;

-- 7. Arithmetic Operations with NULL
SELECT employee_id, employee_name, salary, type, 
       type + 100 AS "type + 100"
FROM addition;
