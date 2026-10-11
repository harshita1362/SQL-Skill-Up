-- Step 1: Creating Database
CREATE DATABASE GFG;

-- Step 2: Using Database
USE GFG;

-- Step 3: Create a table
CREATE TABLE gfgTutorial(
id integer,
Name varchar(20)
);

-- Step 4: Describe the table
sp_help 'dbo.gfgTutorial';

-- Step 5: Insert some data into the table
INSERT INTO [dbo].[gfgTutorial]
           ([id]
           ,[Name])
     VALUES
           (1, 'Devesh')
GO

INSERT INTO [dbo].[gfgTutorial]
           ([id]
           ,[Name])
     VALUES
           (2, 'Geeks')
GO

INSERT INTO [dbo].[gfgTutorial]
           ([id]
           ,[Name])
     VALUES
           (3, 'For')
GO

INSERT INTO [dbo].[gfgTutorial]
           ([id]
           ,[Name])
     VALUES
           (4, 'Geeks')
GO

INSERT INTO [dbo].[gfgTutorial]E
           ([id]
           ,[Name])
     VALUES
           (5, 'GFG')
GO

-- Step 6: Create a Stored procedure for Select all the rows from a table
CREATE PROCEDURE select_all_data
AS
BEGIN
    SELECT * FROM gfgTutorial;
END;
GO

-- Execute Stored procedure select_all_data
EXEC select_all_data;

-- Step 1: Create a parameterized stored procedure to insert data in the table
CREATE PROCEDURE insertData
    @id INT,
    @Name VARCHAR(30)
AS
BEGIN
    INSERT INTO gfgTutorial (id, Name)
    VALUES (@id, @Name);
END;
GO

-- Step 2: Execute stored procedure
EXEC insertData @id = 6, @Name = 'Inserted Name';

-- Verify the Insertion:
SELECT * FROM gfgTutorial;

-- Create Stored Procedure without Parameter:
create procedure sp_get_empno
as  
begin  
select * from emp where ename='WARD'  
end
exec sp_get_empno

-- Create a Stored Procedure with Output Parameter :
-- Creating the stored procedure with an OUTPUT parameter
CREATE PROCEDURE sp_get_empid
    @empId INT OUTPUT
AS
BEGIN
    SELECT @empId = id 
    FROM emp 
    WHERE ename = 'Sam';
END;
GO

-- Declaring a variable to hold the output value
DECLARE @empId INT;

-- Executing the stored procedure
EXEC sp_get_empid @empId OUTPUT;

-- Displaying the result
PRINT @empId;

-- Create a Stored Procedure with Input Parameter :
USE Db1
GO
CREATE PROCEDURE dbo.GetEmployeeID(@Email varchar(30))
AS
SELECT *  FROM employeeDetails WHERE email= @Email
GO

-- Create a Stored Procedure with both input and Output Parameter :
-- Creating a stored procedure with input and output parameters
CREATE PROCEDURE sp_get_empname
    @name VARCHAR(10) OUTPUT, 
    @id INT
AS
BEGIN
    SELECT @name = ename 
    FROM emp 
    WHERE empno = @id;
END;
GO

-- Declaring a variable to receive the output value
DECLARE @emp_name VARCHAR(10);

-- Executing the procedure
EXEC sp_get_empname @emp_name OUTPUT, 7521;

-- Printing the output value
PRINT @emp_name;
