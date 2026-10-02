-- Inner Join 

-- professor Table
CREATE TABLE professor (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary INT );

INSERT INTO professor (ID, Name, Salary) VALUES
(1, Rohan Kumar, 57000),
(2, Hiroshi Tanaka, 45000),
(3, Maria Fernandez, 60000),
(4, Ahmed Hassan, 50000),
(5, Elena Petrova, 55000);

SELECT * FROM professor;

-- teacher Table
CREATE TABLE teacher (
    course_id INT,
    prof_id INT,
    course_name VARCHAR(50) );

INSERT INTO teacher (course_id, prof_id, course_name) VALUES
(1, 1, 'English'),
(1, 3, 'Physics'),
(2, 4, 'Chemistry'),
(2, 5, 'Mathematics');

SELECT * FROM teacher;

-- QUERY
SELECT teacher.course_id, teacher.prof_id, professor.Name, professor.Salary
FROM professor 
INNER JOIN teacher ON professor.ID = teacher.prof_id;

-- Right Join
-- QUERY
SELECT 
    e.emp_no, 
    e.emp_name, 
    d.d_name, 
    d.location
FROM employee e
RIGHT JOIN dept d
ON e.dept_no = d.dept_no;

-- Left Join 
-- QUERY (Performing a LEFT JOIN) 
SELECT e.emp_id,
       e.name,
       department.department_name,
       d.department_head,
       d.location
FROM employee AS e
LEFT JOIN department AS d
    ON e.department_id = d.department_id;

-- QUERY (SQL LEFT JOIN with WHERE Clause)
SELECT e.emp_id,
       e.name,
       d.department_name,
       d.department_head,
       d.location
FROM employee AS e
LEFT JOIN department AS d
    ON e.department_id = d.department_id
WHERE d.location = 'London';

-- QUERY (SQL LEFT JOIN as Aliases)
SELECT e.emp_id,
       e.name,
       d.department_name,
       d.department_head,
       d.location
FROM employee AS e
LEFT JOIN department AS d
    ON e.department_id = d.department_id
WHERE d.location = 'London';

-- Full Join

-- QUERY (FULL JOIN on Multiple Tables)
SELECT 
    b.BOOK_ID, 
    b.BOOK_NAME, 
    a.AUTHOR_NAME, 
    p.PUBLISHER_NAME 
FROM Books b
FULL JOIN Authors a 
    ON b.AUTHOR_ID = a.AUTHOR_ID
FULL JOIN Publishers p 
    ON b.PUBLISHER_ID = p.PUBLISHER_ID;

-- QUERY (FULL JOIN with WHERE Clause)
SELECT
    b.BOOK_ID,
    b.BOOK_NAME, 
    a.AUTHOR_NAME, 
    p.PUBLISHER_NAME
FROM Books b
FULL JOIN Authors a ON b.BOOK_ID = a.AUTHOR_ID
FULL JOIN Publishers p ON b.BOOK_ID = p.PUBLISHER_ID
WHERE b.BOOK_NAME LIKE '%Sharma%';
