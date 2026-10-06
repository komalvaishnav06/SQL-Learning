USE library;
-- @block
SELECT * FROM books;

-- ALTER TABLE books ADD CONSTRAINT unique_email UNIQUE (email);
-- @block
ALTER TABLE books MODIFY COLUMN name VARCHAR(100) NULL;