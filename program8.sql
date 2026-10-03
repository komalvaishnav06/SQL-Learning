-- drop column
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
ALTER TABLE schools ADD COLUMN is_active BOOLEAN DEFAULT TRUE;
-- @block
ALTER TABLE schools DROP COLUMN is_active;

-- @block
