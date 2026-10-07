-- 4. Mathematical Functions
SELECT * FROM container;
-- ROUND() 
--@block
SELECT salary,
ROUND(salary) AS rounded FROM container;

-- FLOOR() 
--@block
SELECT salary,FLOOR(salary) AS floored FROM container; 

-- CEIL()
--@block
SELECT salary,CEIL(salary) AS ceiled FROM container;

-- MOD()
-- Find even or odd user IDs:
--@block
SELECT id,MOD(id,2) AS remainder FROM container;