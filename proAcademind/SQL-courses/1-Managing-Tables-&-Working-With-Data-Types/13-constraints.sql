-- CREATE TABLE users (
--   full_name VARCHAR(300) NOT NULL,
-- -- ...
-- );

ALTER TABLE users
-- ALTER COLUMN full_name SET NOT NULL, --PostgreSQL
-- ALTER COLUMN current_status SET NOT NULL; --PostgreSQL
MODIFY COLUMN full_name VARCHAR(300) NOT NULL, -- MySQL
MODIFY COLUMN current_status ENUM('employed', 'self-employed', 'unemployed') NOT NULL; -- MySQL