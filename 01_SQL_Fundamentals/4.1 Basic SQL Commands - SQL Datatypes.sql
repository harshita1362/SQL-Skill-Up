-- 1. Numeric Data Types
CREATE TABLE product_sales (
    product_id INT PRIMARY KEY,
    quantity SMALLINT,
    unit_price DECIMAL(10,2),
    total_amount DECIMAL(10,2)
);

-- Approximate Numeric Datatype
CREATE TABLE measurements (
    sensor_id INT,
    temperature FLOAT,
    humidity REAL
); 

-- 2. Character and String Data Types
CREATE TABLE employee_info (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name CHAR(30),
    bio NVARCHAR(MAX)
);

-- Unicode Character String Data Types
CREATE TABLE international_users (
    user_id INT PRIMARY KEY,
    full_name NVARCHAR(100),
    country NCHAR(50)
); 

-- 3. Date and Time Data Type
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    order_time TIME,
    shipped DATETIME
);

-- 4. Binary Data Types in SQL
CREATE TABLE product_images (
    image_id INT PRIMARY KEY,
    image_name VARCHAR(100),
    image_data VARBINARY(MAX)
);

-- 5. Boolean Data Type in SQL
CREATE TABLE user_status (
    user_id INT PRIMARY KEY,
    is_active INTEGER,
    is_verified INTEGER
);

-- 6. Special Data Types
-- XML Data Type:
CREATE TABLE xml_records (
    record_id INT PRIMARY KEY,
    config_data XML
);

-- Spatial Data Type (Geometry):
CREATE TABLE locations (
    location_id INT PRIMARY KEY,
    area GEOMETRY
);
