-- SELECT * FROM sales;  -- Get oll data

SELECT date_created,
  customer_name,
  product_name,
  volume 
FROM sales;

-- SELECT date_created,
--   customer_name,
--   product_name,
--   volume AS total_sales -- мы можем в отображаемой таблице переименовать столбец 
-- FROM sales;

-- SELECT date_created,
--   customer_name,
--   product_name,
--   volume / 1000
-- FROM sales;