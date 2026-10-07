-- 5. Conditional Functions
SELECT * FROM container;

-- IF()
--@block
SELECT name,gender,
IF(gender = 'female','yes','no') AS is_female FROM container