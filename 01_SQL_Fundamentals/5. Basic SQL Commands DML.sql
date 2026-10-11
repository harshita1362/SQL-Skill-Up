-- Inserting Data into All Columns
INSERT INTO student
VALUES (5, 'Isabella', 'Rome', 'xxxxxxxxxx', 19);

-- Inserting Data into Specific Columns
INSERT INTO student(roll_no, name,age) 
VALUES (6, 'Hiroshi', 19);

-- Inserting Multiple Rows at Once
INSERT INTO student (roll_no, name, address, phone, age)
VALUES
(7, 'Mateo Garcia', 'Madrid', 'xxxxxxxxxx', 15),
(8, 'Hana Suzuki', 'Osaka', 'xxxxxxxxxx', 18),
(9, 'Oliver Jensen', 'Copenhagen', 'xxxxxxxxxx', 17),
(10, 'Amelia Brown', 'London', 'xxxxxxxxxx', 17);

-- Inserting Data from One Table into Another Table
-- Method 1: Insert All Columns from Another Table
INSERT INTO student
SELECT * FROM old_student;

-- Method 2: Insert Specific Columns from Another Table
INSERT INTO student (name, age)
SELECT name, age
FROM old_student;

-- Method 3: Insert Specific Rows Based on Condition
INSERT INTO student
SELECT * FROM old_student
WHERE age > 20;

-- SQL UPDATE Statement
-- Example 1: Update Single Column
UPDATE customer
SET  age = 25
WHERE  customer_name = 'Isabella';

-- Example 2: Updating Multiple Columns
UPDATE customer 
SET  customer_name = 'John', 
         country = 'Spain' 
WHERE customer_id = 1;

-- Example 3: Omitting WHERE Clause in UPDATE Statement
UPDATE customer
SET  customer_name = 'Mike';

-- DELETE Statement
-- Example 1: Deleting Single Record
DELETE FROM employees 
WHERE name = 'Ethan';

-- Example 2: Deleting Multiple Records
DELETE FROM employees 
WHERE department = 'Development'; 

-- Example 3: Delete All Records from a Table
DELETE FROM employees;

-- Rolling Back DELETE Operations
BEGIN TRANSACTION;
DELETE FROM employees
WHERE department = 'Development';
ROLLBACK;
