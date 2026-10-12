-- Arithmetic Operators
SELECT
    10 + 20 AS addition,
    20 - 10 AS subtraction,
    10 * 20 AS multiplication,
    20 / 10 AS division,
    10 % 3 AS modulus;

-- Comparison Operators
SELECT
    name,
    salary
FROM employees
WHERE salary > 50000;

-- Logical Operators
SELECT
    name,
    salary
FROM employees
WHERE salary > 50000
  AND salary < 70000;

SELECT
    name,
    salary
FROM employees
WHERE salary = 40000
   OR salary = 70000;

-- Special Operators
-- BETWEEN
SELECT
    name,
    salary
FROM employees
WHERE salary BETWEEN 40000 AND 60000;

-- IN
SELECT
    name,
    salary
FROM employees
WHERE salary IN (40000, 70000);

-- LIKE
SELECT
    name
FROM employees
WHERE name LIKE 'A%';

-- EXISTS
SELECT *
FROM employees e
WHERE EXISTS (
    SELECT 1
    FROM employees
    WHERE salary > 50000
);

-- IS NULL
SELECT
    name
FROM employees
WHERE manager_id IS NULL;

-- IS NOT NULL
SELECT
    name
FROM employees
WHERE manager_id IS NOT NULL;

-- Bitwise Operators
SELECT
    12 & 10 AS bitwise_and,
    12 | 10 AS bitwise_or,
    12 ^ 10 AS bitwise_xor,
    ~12 AS bitwise_not,
    12 << 2 AS left_shift,
    12 >> 2 AS right_shift;

SELECT
    employee_id,
    name,
    permissions
FROM employees
WHERE permissions & 1 = 1;

-- Compound Operators
UPDATE employees
SET salary += 5000;

