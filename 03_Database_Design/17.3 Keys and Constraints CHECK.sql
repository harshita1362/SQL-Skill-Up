-- SQL CHECK Constraint

CREATE TABLE staff (
    staff_id INT PRIMARY KEY,
    full_name VARCHAR(50),
    salary DECIMAL(10, 2) CHECK (salary > 0 AND salary <= 50000)
);

-- These inserts will succeed
INSERT INTO staff (staff_id, full_name, salary)
VALUES
    (1, 'Taylor Reed', 45000),
    (2, 'John Doe', 42000);

-- The values break the condition, the entire INSERT operation is rejected.
INSERT INTO staff (staff_id, full_name, salary) VALUES 
(3, 'Jordan Miles', -3000),
(4, 'Evan Clarke', 62000);

-- 1) Applying CHECK on a Single Column
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT CHECK (age >= 18 AND age <= 120)
);

-- Valid insert
INSERT INTO customers (customer_id, name, age)
VALUES (1, 'John Doe', 25);

-- Invalid insert
INSERT INTO customers (customer_id, name, age)
VALUES (2, 'Jane Smith', 15);  -- This will fail due to the CHECK constraint

-- 2) CHECK Constraint with Multiple Columns
CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary DECIMAL(10, 2),
    CHECK (age >= 18 AND salary > 0)
);

-- Valid insert
INSERT INTO employee (employee_id, name, age, salary) VALUES 
 (1, 'Alice Johnson', 30, 50000),
 (2, 'Bob Lee', 27, 47000);

-- Invalid insert (age < 18)
INSERT INTO employee (employee_id, name, age, salary)
VALUES (3, 'Bob Lee', 16, 45000);  -- This will fail due to the CHECK constraint

-- 3) Adding a CHECK Constraint with ALTER TABLE
ALTER TABLE employee
ADD CONSTRAINT chk_salary CHECK (salary >= 30000);
