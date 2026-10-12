
-- CONCAT()
SELECT CONCAT('John', ' ', 'Doe') AS FullName;

-- CHAR_LENGTH() / CHARACTER_LENGTH()
SELECT CHAR_LENGTH('Hello') AS StringLength;

-- UPPER() and LOWER()
SELECT UPPER('hello') AS UpperCase;
SELECT LOWER('HELLO') AS LowerCase;

-- REPLACE()
SELECT REPLACE('Hello World', 'World', 'SQL') AS UpdatedString;

-- SUBSTRING() / SUBSTR()
SELECT SUBSTRING('Hello World', 1, 5) AS SubStringExample;

-- LEFT() and RIGHT()
SELECT LEFT('Hello World', 5) AS LeftString;
SELECT RIGHT('Hello World', 5) AS RightString;INSTR()

-- INSTR()
SELECT INSTR('Hello World', 'World') AS SubstringPosition;

-- TRIM()
SELECT TRIM(' ' FROM '  Hello World  ') AS TrimmedString;

-- REVERSE()
SELECT REVERSE('Hello') AS ReversedString;

-- RTRIM()
SELECT RTRIM('geeks   ');

-- SPACE()
SELECT SPACE(7);

-- Advanced String Functions
-- ASCII()
SELECT ASCII('t');

-- CONCAT_WS()
SELECT CONCAT_WS('_', 'geeks', 'for', 'geeks');

-- FORMAT()
SELECT FORMAT(0.981 * 100, 'N2') + '%' AS PercentageOutput;

-- LOCATE()
SELECT LOCATE('for', 'geeksforgeeks', 1);

-- LPAD()
SELECT LPAD('geeks', 8, '0');

-- POSITION()
SELECT POSITION('e' IN 'geeksforgeeks');

-- REPEAT()
SELECT REPEAT('geeks', 2);

-- RPAD()
SELECT RPAD('geeks', 8, '0');

-- STRCMP()
SELECT STRCMP('google.com', 'geeksforgeeks.com');
