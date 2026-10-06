-- check constraints
USE library;
-- @block
SELECT * FROM books;
-- @block
ALTER TABLE books ADD CONSTRAINT chk_dob CHECK (date_of_birth>='1920-05-15');