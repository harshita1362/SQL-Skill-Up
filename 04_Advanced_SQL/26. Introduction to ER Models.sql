
-- Recursive Relationships

CREATE TABLE employee (
id INT PRIMARY KEY,
name VARCHAR(50),
manager_id INT,
FOREIGN KEY (manager_id) REFERENCES employee(id)
);
