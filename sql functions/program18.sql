-- SQL Functions (MySQL)
-- SQL functions help you analyze, transform, or summarize data in your tables.

--@block
SELECT * FROM container;

-- 1. Aggregate Functions
-- These return a single value from a set of rows.
-- COUNT()
-- Count total number of users:
--@block
SELECT COUNT(*) FROM container;
--@block
SELECT COUNT(*) FROM container WHERE gender = 'female';

-- MIN() and MAX()
-- Get the minimum and maximum salary:
--@block
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary from container;

-- SUM()
-- Calculate total salary payout:
--@block
SELECT SUM(salary) AS total_payroll FROM container;

-- AVG()
-- Find average salary:
--@block
SELECT AVG(salary) AS avg_salary FROM container;

-- Grouping with GROUP BY
-- Average salary by gender:
--@block
SELECT gender, AVG(salary) AS avg_salary FROM container GROUP BY gender;