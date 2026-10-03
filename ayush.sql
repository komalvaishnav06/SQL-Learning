-- @block
CREATE DATABASE IF NOT EXISTS owl;
-- @block
USE owl;

-- @block
CREATE TABLE student (
    student_id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    std_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);

-- @block
SELECT * FROM student;

-- -- @block
-- INSERT INTO student (std_name, email) 
-- VALUES ('Ayush Suthar', 'ayush@example.com');