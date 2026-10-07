-- UNION
SELECT employee_id, nameFROM emp_1UNIONSELECT employee_id, nameFROM emp_2;

-- UNION ALL
SELECT employee_id, nameFROM emp_1UNION ALLSELECT employee_id, nameFROM emp_2;

-- INTERSECT Clause
SELECT ID, Name, Bonus 
FROM
table1 
LEFT JOIN
table2
ON table1.ID = table2.Employee_ID

INTERSECT

SELECT ID, Name, Bonus 
FROM
table1 
RIGHT JOIN
table2
ON table1.ID = table2.Employee_ID;

-- EXCEPT Clause
SELECT ID, Name, Bonus 
FROM
table1 
LEFT JOIN
table2
ON table1.ID = table2.Employee_ID

EXCEPT

SELECT ID, Name, Bonus 
FROM
table1 
RIGHT JOIN
table2
ON table1.ID = table2.Employee_ID;

-- MINUS OPERATOR
SELECT NAME, AGE, GRADE
FROM Table1
MINUS
SELECT NAME, AGE, GRADE
FROM Table2;

