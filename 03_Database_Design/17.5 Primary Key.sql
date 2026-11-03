-- Creating a Table:
CREATE TABLE table_name (
column_name data_type PRIMARY KEY
);

-- For an Existing Table:
ALTER TABLE table_name
ADD CONSTRAINT constraint_name PRIMARY KEY (column_name);

-- For Deleting a Primary Key:
ALTER TABLE table_name
DROP CONSTRAINT constraint_name;

-- Example of Primary Key
CREATE TABLE EMPLOYEE (
EMP_ID INT PRIMARY KEY,
Name VARCHAR(50),
Salary INT,
Department VARCHAR(50)
);
