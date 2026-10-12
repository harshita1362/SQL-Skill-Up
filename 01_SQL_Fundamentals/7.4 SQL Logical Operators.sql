-- SQL - Logical Operators

-- AND Operator
SELECT * 
FROM employee 
WHERE emp_city = 'London' AND emp_country = 'UK';

-- IN Operator
SELECT * 
FROM employee 
WHERE emp_city IN ('London', 'Rome');

-- NOT Operator
SELECT * 
FROM employee 
WHERE emp_city NOT LIKE 'S%';

-- OR Operator
SELECT * 
FROM employee 
WHERE emp_country = 'UK' OR emp_country = 'USA'

-- LIKE Operator
SELECT * 
FROM employee 
WHERE emp_city LIKE 'M%';

-- BETWEEN Operator
SELECT * 
FROM employee 
WHERE emp_id BETWEEN 102 AND 105;

-- ALL Operator
SELECT *
FROM employee
WHERE emp_id = ALL (
    SELECT emp_id
    FROM employee
    WHERE emp_city = 'London'
);

-- ANY Operator
SELECT * 
FROM employee 
WHERE emp_id = ANY (
    SELECT emp_id 
    FROM employee 
    WHERE emp_city = 'Rome'
);

-- EXISTS Operator
SELECT emp_name 
FROM employee 
WHERE EXISTS (
    SELECT emp_id 
    FROM employee 
    WHERE emp_city = 'London'
);

-- SOME Operator
SELECT * 
FROM employee 
WHERE emp_id < SOME (
    SELECT emp_id 
    FROM employee 
    WHERE emp_city = 'London'
);
