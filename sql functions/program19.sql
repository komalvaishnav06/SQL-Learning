-- 2. String Functions
--@block
SELECT * FROM container;

-- LENGTH()
-- Length of user names:
--@block
SELECT name,LENGTH(name) AS name_length FROM container;

-- LOWER() and UPPER()
-- Convert names to lowercase or uppercase:
--@block
SELECT name, LOWER(name) AS lower_case FROM container;
--@block
SELECT name, UPPER(name) AS upper_case FROM container;

-- CONCAT()
-- Combine name and email:
--@block
SELECT CONCAT(name,'<',email,'>') AS user_contact FROM container;
