-- 3. CHECK Constraint
-- Ensures that values in a column satisfy a specific condition.
SELECT * FROM container;

--@block
UPDATE container
SET salary = 41000
WHERE salary <= 40000;
--@block
ALTER TABLE container ADD CONSTRAINT chk_salary CHECK(salary > 40000);