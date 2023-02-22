-- ALTER TABLE employers
-- ALTER COLUMN yearly_revenue SET DATA TYPE FLOAT; -- PosgreSQl 

ALTER TABLE employers
MODIFY COLUMN yearly_revenue FLOAT; -- MySQl 

-- ALTER TABLE users
-- ALTER COLUMN full_name SET DATA TYPE VARCHAR(300); -- PosgreSQl 

ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(300); -- MySQl 