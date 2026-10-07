-- UNIQUE Constraint
CREATE TABLE employees (
    emp_id INT,
    email VARCHAR(100) UNIQUE
);

INSERT INTO employees (emp_id, email)
VALUES
    (1, 'alex@example.com'),
    (2, NULL),
    (3, NULL);

-- UNIQUE constraint blocks inserting a duplicate, so the query fails.
INSERT INTO employees (emp_id, email)
VALUES (4, 'alex@example.com');

-- 1) Creating a Table with UNIQUE Constraints
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    country VARCHAR(50)
);

-- Insert data into customers table
INSERT INTO customers (customer_id, name, email, country)
VALUES
    (1, 'John Doe', 'john.doe@example.com', 'USA'),
    (2, 'Jane Smith', 'jane.smith@example.com', 'Canada');

-- This will fail because the email already exists
INSERT INTO customers (customer_id, name, email, country)
VALUES
    (3, 'Alice Johnson', 'john.doe@example.com', 'UK');

-- 2) Using UNIQUE with Multiple Columns
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    UNIQUE (customer_id, product_id)
);

--Insert data into orders table
INSERT INTO orders (order_id, customer_id, product_id, order_date)
(1, 101, 501, '2024-01-10'),
(2, 102, 501, '2024-01-12');

-- This will fail because the CustomerID-ProductID pair already exists
INSERT INTO orders (order_id, customer_id, product_id, order_date)
VALUES
    (3, 101, 501, '2024-01-15');
