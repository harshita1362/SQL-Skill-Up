-- DEFAULT Constraint
CREATE TABLE geeks (
    id INT NOT NULL,
    name VARCHAR(255),
    age INT,
    location VARCHAR(255) DEFAULT 'London'
);

INSERT INTO geeks (id, name, age, location)
VALUES
    (4, 'Emma', 23, 'New York'),
    (5, 'Sophia', 27, DEFAULT),
    (6, 'Olivia', 25, 'Toronto'),
    (7, 'Ava', 26, DEFAULT);

-- Dropping the DEFAULT Constraint 
ALTER TABLE geeks
ALTER COLUMN location
DROP DEFAULT;

--Let us add 2 new rows in the geeks table 
INSERT INTO geeks VALUES (8, 'John', 24, 'New York');
INSERT INTO geeks VALUES (9, 'Jane', 26,NULL);

SELECT * FROM geeks;
