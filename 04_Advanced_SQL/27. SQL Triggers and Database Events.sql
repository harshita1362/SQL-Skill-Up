-- Create Main Table
CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    updated_at TIMESTAMP
);

-- Create Trigger
CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    updated_at TIMESTAMP
);

-- Insert Sample Data
INSERT INTO users (id, name, email) VALUES (1, 'Amit', 'amit@example.com');

-- Update a Record
UPDATE users SET email = 'amit_new@example.com' WHERE id = 1;

-- Syntax:
create trigger [trigger_name] 
[before | after]  
{insert | update | delete}  
on [table_name]  
FOR EACH ROW
BEGIN
END;

-- DDL Triggers
CREATE TRIGGER prevent_table_creation
ON DATABASE
FOR CREATE_TABLE, ALTER_TABLE, DROP_TABLE
AS 
BEGIN
   PRINT 'you can not create, drop and alter table in this database';
   ROLLBACK;
END;

-- DML Triggers
CREATE TRIGGER prevent_update
ON students
FOR UPDATE, INSERT, DELETE
AS
BEGIN
    RAISERROR ('You can not insert, update and delete rows in this table.', 16, 1);
END;

-- Logon Triggers
CREATE TRIGGER track_logon
ON LOGON
AS
BEGIN
   PRINT 'A new user has logged in.';
END;

-- SQL Triggers

-- Automatically Updating Related Tables (DML Trigger Example)
CREATE TRIGGER update_student_score
AFTER UPDATE ON student_grades
FOR EACH ROW
BEGIN
   UPDATE total_scores
   SET score = score + :new.grade
   WHERE student_id = :new.student_id;
END;

-- Data Validation (Before Insert Trigger Example)
CREATE TRIGGER validate_grade
BEFORE INSERT ON student_grades
FOR EACH ROW
BEGIN
   IF :new.grade < 0 OR :new.grade > 100 THEN
      RAISE_APPLICATION_ERROR(-20001, 'Invalid grade value.');
   END IF;
END;

-- Viewing and Managing Triggers in SQL
SELECT name, is_instead_of_trigger
FROM sys.triggers
WHERE type = 'TR';

-- Using BEFORE Trigger for Calculations

mysql>>desc Student;

CREATE TRIGGER stud_marks
AFTER INSERT ON Student
FOR EACH ROW
BEGIN
    UPDATE Student
    SET 
        total = NEW.subj1 + NEW.subj2 + NEW.subj3,
        per = (NEW.subj1 + NEW.subj2 + NEW.subj3) * 60.0 / 100
    WHERE tid = NEW.tid;
END;

-- Entities Structure in SQL Format
CREATE TABLE EVENT(
EVENT_ID INT PRIMARY KEY,
EVENT_NAME VARCHAR(255),
EVENT_DATE DATETIME
);
CREATE TABLE ATTENDEE(
ATTENDEE_ID INT PRIMARY KEY, 
NAME VARCHAR(255),
NUMBER INT,
EVENT_ID INT FOREIGN KEY REFERENCES EVENT(EVENT_ID)
);
CREATE TABLE VENUE(
VENUE_ID INT PRIMARY KEY,
VENUE_NAME VARCHAR(255),
CAPACITY INT
);
CREATE TABLE VENDOR(
VENDOR_ID INT PRIMARY KEY,
NAME VARCHAR(255),
AVAILABILITY JSON
);
CREATE TABLE TASK(
TASK_ID INT PRIMARY KEY,
NAME VARCHAR(255),
EVENT_ID INT FOREIGN KEY REFERENCES EVENT(EVENT_ID)
);
CREATE TABLE SCHEDULE(
SCHEDULE_ID INT PRIMARY KEY,
EVENT_ID INT FOREIGN KEY REFERENCES EVENT(EVENT_ID),
START_DATE DATETIME,
END_TIME DATETIME
);
CREATE TABLE BUDGET(
BUDGET_ID INT,
EVENT_ID INT FOREIGN KEY REFERENCES EVENT(EVENT_ID),
TOTAL_BUDGET DECIMAL(10,2)
);
