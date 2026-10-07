-- 2.NOT NULL Constraint
-- Ensures that a column cannot contain NULL values.
USE constraints;
--@block
SELECT * FROM container;

--@block
INSERT INTO container(name,email,gender,salary) VALUES
(NULL,'komal12@gmail.com','female',45000);
--@block
ALTER TABLE container MODIFY COLUMN name VARCHAR(100) NULL;