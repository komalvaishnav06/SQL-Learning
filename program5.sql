-- writing and saving are sql script
CREATE DATABASE IF NOT EXISTS program1;
-- @block
USE program1;

-- @block
CREATE TABLE users(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('male','female','other'),
    date_of_birht DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);

-- @block
SELECT * FROM users;

-- @block
RENAME TABLE users to programmers;
-- @block
SELECT * FROM programmers;