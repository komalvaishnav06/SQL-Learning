-- 4. DEFAULT Constraint
-- Sets a default value for a column if none is provided during insert
SELECT * FROM container;
--@block
ALTER TABLE container ADD COLUMN is_active BOOLEAN;

--@block
ALTER TABLE container
ALTER COLUMN is_active SET DEFAULT TRUE;

