-- SELECT *
-- FROM users
-- INNER JOIN addresses ON users.address_id = addresses.id;

-- --->

-- SELECT *
-- FROM users AS u
-- INNER JOIN addresses AS a ON u.address_id = a.id;

-- --->

-- SELECT u.id, first_name, last_name, street, house_number, city_id
-- FROM users AS u
-- INNER JOIN addresses AS a ON u.address_id = a.id;

-- --->

SELECT u.id, first_name, last_name, street, house_number, c.name AS city_name
FROM users AS u
INNER JOIN addresses AS a ON u.address_id = a.id
INNER JOIN cities AS c ON a.city_id = c.id;