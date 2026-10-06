-- updating data
USE library;

-- @block
SELECT * FROM books;

-- @block 
UPDATE books SET name = 'priya sharma',email = 'priyashrma@gmail.com' WHERE id=2;

-- DELETE FROM books where id=3; 