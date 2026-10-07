-- MySQL Constraints
-- Constraints in MySQL are rules applied to table columns to ensure the accuracy, 
-- validity, and integrity of the data.
CREATE DATABASE IF NOT EXISTS constraints;
-- @block
USE constraints;
-- @block
CREATE TABLE container(
    id INTEGER AUTO_INCREMENT PRIMARY KEY ,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    gender ENUM('male','female','other'),
    salary INT NOT NULL 
);

-- @block
SELECT * FROM container;
-- @block
INSERT INTO container(name,email,gender,salary)VALUES
    ('Rahul Sharma', 'rahul@gmail.com', 'male', 35000),
    ('Priya Verma', 'priya@gmail.com', 'female', 42000),
    ('Amit Singh', 'amit@gmail.com', 'male', 50000),
    ('Neha Gupta', 'neha@gmail.com', 'female', 38000),
    ('Rohit Kumar', 'rohit@gmail.com', 'male', 45000),
    ('Anjali Mehta', 'anjali@gmail.com', 'female', 55000),
    ('Vikas Yadav', 'vikas@gmail.com', 'male', 32000),
    ('Sneha Joshi', 'sneha@gmail.com', 'female', 48000),
    ('Arjun Patel', 'arjun@gmail.com', 'male', 60000),
    ('Pooja Sharma', 'pooja@gmail.com', 'female', 40000);

-- 1. 
-- UNIQUE Constraint
-- Ensures that all values in a column are different
--@block
ALTER TABLE container ADD CONSTRAINT unique_email UNIQUE (email);