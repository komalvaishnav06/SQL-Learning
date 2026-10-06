CREATE DATABASE IF NOT EXISTS library;
-- @block
USE library;

-- @block
CREATE TABLE books(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    gender ENUM('male','female','other'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- @block
SELECT * FROM books;

-- @block
INSERT INTO books (name,email,gender,date_of_birth) VALUES
    ('Aarav Sharma', 'aarav@gmail.com', 'male', '2003-05-12'),
('Priya Verma', 'priya@gmail.com', 'female', '2002-08-21'),
('Rohan Gupta', 'rohan@gmail.com', 'male', '2004-01-15'),
('Ananya Singh', 'ananya@gmail.com', 'female', '2003-11-03'),
('Kabir Mehta', 'kabir@gmail.com', 'male', '2002-06-27'),
('Neha Joshi', 'neha@gmail.com', 'female', '2004-03-19'),
('Aditya Kumar', 'aditya@gmail.com', 'male', '2003-09-10'),
('Sneha Patel', 'sneha@gmail.com', 'female', '2002-12-05'),
('Vivek Jain', 'vivek@gmail.com', 'male', '2003-07-18'),
('Isha Malhotra', 'isha@gmail.com', 'female', '2004-02-14');

-- @block
SELECT * FROM books WHERE gender='female';