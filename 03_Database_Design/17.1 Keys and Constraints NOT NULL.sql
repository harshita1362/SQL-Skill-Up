-- SQL NOT NULL Constraint
CREATE TABLE student (
    student_id INT NOT NULL,
    full_name VARCHAR(50),
    city VARCHAR(50)
);

--Insert data into student table

INSERT INTO student (student_id, full_name, city) VALUES
(101, 'Bob', 'London'),
(102, 'Lucas', 'London');

-- Insert Failed
INSERT INTO student (student_id, full_name, city) VALUES
(NULL, 'John', 'London');

-- Applying NOT NULL in Table Creation
CREATE TABLE emp (
    emp_id INT NOT NULL PRIMARY KEY,
    name VARCHAR(50),
    country VARCHAR(50),
    age INT,
    salary INT
);

INSERT INTO emp (emp_id, name, country, age, salary)
VALUES
(1, 'John', 'USA', 28, 35000),
(2, 'Emma', 'Canada', 32, 55000),
(3, 'Lucas', 'Germany', 26, 42000);

-- Attempt to insert a row with NULL in NOT NULL column (this will throw an error)
-- ERROR: Column 'emp_id' cannot be NULL

INSERT INTO emp (emp_id, name, country, cge, salary) VALUES
(NULL, 'Oliver', 'France', 30, 50000);

-- Adding NOT NULL to an Existing Table
ALTER TABLE student
MODIFY COLUMN stud_id SET NOT NULL;
