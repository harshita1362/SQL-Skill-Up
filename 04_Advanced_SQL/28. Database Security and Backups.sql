-- Syntax:
GRANT privileges_names ON object TO user;

-- Granting Privileges to Users
-- 1. Granting SELECT Privilege to a User
GRANT SELECT ON Users TO 'Amit'@'localhost;'
  
-- 2. Granting Multiple Privileges
GRANT SELECT, INSERT, DELETE, UPDATE ON Users TO 'Amit'@'localhost';

-- 3. Granting All Privileges
GRANT ALL ON Users TO 'Amit'@'localhost';

-- 4. Granting Privileges to All Users
GRANT SELECT  ON Users TO '*'@'localhost';

-- 5. Granting Privileges on Functions/Procedures
GRANT EXECUTE ON FUNCTION function_name TO 'Amit'@'localhost';

-- Example for granting EXECUTE privilege on a function named "CalculateSalary":
GRANT EXECUTE ON FUNCTION CalculateSalary TO 'Amit'@'localhost';

-- Granting Execute Privilege: Execute privilege gives the ability to execute a function or procedure.Syntax:
GRANT EXECUTE ON [ PROCEDURE | FUNCTION ] object TO user; 

-- Different Ways of Granting EXECUTE Privileges
-- 1. Granting EXECUTE privileges on a function in MySQL
GRANT EXECUTE ON FUNCTION Calculatesalary TO 'Amit'@'localhost';

-- 2. Granting EXECUTE privileges to all Users on a function in MySQL
GRANT EXECUTE ON FUNCTION Calculatesalary TO '*'@'localhost'; 

-- 3. Granting EXECUTE privilege to a Users on a procedure in MySQL
GRANT EXECUTE ON PROCEDURE DBMSProcedure TO 'Amit'@'localhost';

-- 4. Granting EXECUTE privileges to all Users on a procedure in MySQL
GRANT EXECUTE ON PROCEDURE DBMSProcedure TO '*'@'localhost'; 

-- 5. Checking the Privileges Granted to a User
SHOW GRANTS FOR  'Amit'@'localhost'; 

-- Revoking Privileges from Users
REVOKE privileges ON object FROM user;

-- Various Ways of Revoking Privileges From a User
-- 1.  Revoking SELECT Privilege
REVOKE SELECT ON  Users FROM 'Amit'@'localhost'; 

-- 2. Revoking Multiple Privileges
REVOKE SELECT, INSERT, DELETE, UPDATE ON Users FROM 'Amit'@'localhost'; 

-- 3. Revoking All Privileges
REVOKE ALL ON Users FROM 'Amit'@'localhost'; 

-- Revoking Privileges on Functions/Procedures
-- Syntax:
REVOKE EXECUTE ON [ PROCEDURE | FUNCTION ] object FROM User; 

-- 1. Revoking EXECUTE Privileges on a Function in MySQL
REVOKE EXECUTE ON FUNCTION Calculatesalary FROM 'Amit'@'localhost'; 

-- 2. Revoking EXECUTE Privileges to All Users on a Function in MySQL
REVOKE EXECUTE ON FUNCTION Calculatesalary FROM '*'@'localhost'; 

-- 3. Revoking EXECUTE Privilege to a Users on a Procedure in MySQL
REVOKE EXECUTE ON PROCEDURE DBMSProcedure FROM 'Amit'@'localhost'; 

-- 4. Revoking EXECUTE Privileges to all Users on a Procedure in MySQL
REVOKE EXECUTE ON PROCEDURE DBMSProcedure FROM '*'@'localhost'; 
