-- SELECT customer_name, product_name
-- FROM (SELECT * FROM sales
-- WHERE volume > 1000) AS base_result;
/* и вы должны назначить псевдоним с ключевым словом AS, 
например, bese_result или что-то в этом роде. */

-- or

-- CREATE VIEW base_result AS SELECT * FROM sales
-- WHERE volume > 1000; 

-- SELECT customer_name, product_name
-- FROM base_result;
