-- Create a database named test_db
CREATE DATABASE test_db;

-- Use the test_db database
USE test_db;

-- Create a table named greetings
CREATE TABLE greetings (
    id INT PRIMARY KEY,
    message VARCHAR(255)
);

-- Insert the message 'Hello, World!' into the greetings table
INSERT INTO greetings (id,message)
VALUES (1,'Hello, World!');

-- Retrieve the message from the greetings table
SELECT message FROM greetings;
