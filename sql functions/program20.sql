-- 3. Date Functions
SELECT * FROM container;
--  NOW()
--  Current date and time:
--@block
SELECT NOW();
-- YEAR(),MONTH(),Extract parts of DAY()
-- date_of_birth :
--@block
ALTER TABLE container ADD COLUMN date_of_birth DATE;

--@block
UPDATE container
SET date_of_birth = CASE
    WHEN email = 'rahul@gmail.com' THEN '2002-05-15'
    WHEN email = 'priya@gmail.com' THEN '2003-08-21'
    WHEN email = 'amit@gmail.com' THEN '2001-03-10'
    WHEN email = 'neha@gmail.com' THEN '2002-11-25'
    WHEN email = 'rohit@gmail.com' THEN '2000-07-12'
    WHEN email = 'anjali@gmail.com' THEN '2003-01-18'
    WHEN email = 'vikas@gmail.com' THEN '2001-09-05'
    WHEN email = 'sneha@gmail.com' THEN '2002-12-30'
    WHEN email = 'arjun@gmail.com' THEN '2000-04-22'
    WHEN email = 'pooja@gmail.com' THEN '2003-06-14'
END
WHERE email IN (
    'rahul@gmail.com', 'priya@gmail.com',
    'amit@gmail.com', 'neha@gmail.com',
    'rohit@gmail.com', 'anjali@gmail.com',
    'vikas@gmail.com', 'sneha@gmail.com',
    'arjun@gmail.com', 'pooja@gmail.com'
);

--@block
SELECT name,YEAR(date_of_birth) AS birth_year FROM container;

-- DATEDIFF()
-- Find number of days between today and birthdate:
--@block
SELECT name,DATEDIFF(CURDATE(),date_of_birth) AS days_lived FROM container;

-- TIMESTAMPDIFF()
-- Calculate age in years:
--@block
SELECT name, TIMESTAMPDIFF(YEAR,date_of_birth,CURDATE()) AS age FROM container;