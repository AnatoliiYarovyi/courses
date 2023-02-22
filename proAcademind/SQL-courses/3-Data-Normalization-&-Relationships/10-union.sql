-- SELECT * FROM users
-- WHERE id < 3
-- UNION
-- SELECT * FROM users
-- WHERE id > 5;

SELECT * FROM users
UNION
SELECT * FROM addresses;