-- Implicit Data-Type Conversion
-- Query 1: Using a Numeric Value
SELECT employee_id, first_name, salary
FROM employees
WHERE salary > 15000;

-- Query 2: Using a String Value
SELECT employee_id,first_name,salary
FROM employees
WHERE salary > '15000';

-- Explicit Data Type Conversion (TO_CHAR(),TO_NUMBER(),TO_DATE())
-- TO_CHAR Function
SELECT employee_id, TO_CHAR(hire_date, 'MM/YY') Month_Hired
FROM employees
WHERE last_name = 'Higgins';

-- Other Formats
SELECT last_name,
TO_CHAR(hire_date, 'fmDD Month YYYY')
AS HIREDATE
FROM employees;

-- Using the TO_CHAR Function with Numbers
TO_CHAR(number, 'format_model')

SELECT TO_CHAR(salary, '$99,999.00') SALARY
FROM employees
WHERE last_name = 'Clark';

-- TO_NUMBER
TO_NUMBER(char, 'format_model')

-- TO_DATE
TO_DATE(char, 'format_model')

SELECT last_name, hire_date
FROM employees
WHERE hire_date = TO_DATE('June 20, 2004', 'fxMonth DD, YYYY');
