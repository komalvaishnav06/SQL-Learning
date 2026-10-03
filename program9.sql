-- modify a column
USE program1;
-- @block
CREATE Table schools (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    contact INTEGER UNIQUE
);

-- @block
SELECT * FROM schools;

-- @block
ALTER TABLE schools MODIFY COLUMN name VARCHAR(300);

-- ALTER Table schools MODIFY COLUMN contact AFTER id;