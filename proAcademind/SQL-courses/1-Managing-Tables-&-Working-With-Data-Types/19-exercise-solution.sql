-- Task 1: Create Database

CREATE DATABASE online_shop;  

-- Task 2+3: Create and configure table

CREATE TABLE products (
  name VARCHAR(200),
  price NUMERIC(10,2),
  description TEXT,
  amount_in_stock SMALLINT,
  image_path VARCHAR(500) 
); 

-- Task 4: Inserting dummy data

INSERT INTO products (name, price, description, amount_in_stock, image_path)
VALUES ('A Book', 12.99, 'This is a book - and this text ...!)', 39, 'uploads/img/product/a-book.jpg');

-- Task 5: Add constraints

ALTER TABLE products
-- MySQl syntax
MODIFY COLUMN name VARCHAR(200) NOT NULL,
MODIFY COLUMN price NUMERIC(10,2) NOT NULL CHECK (price > 0),
MODIFY COLUMN description TEXT NOT NULL,
MODIFY COLUMN amount_in_stock SMALLINT CHECK (amount_in_stock >= 0),
MODIFY COLUMN image_path VARCHAR(500) DEFAULT 'img/default.img';
-- -- Postgres syntax
-- ALTER COLUMN name SET NOT NULL,
-- ALTER COLUMN price SET NOT NULL,
-- ALTER COLUMN  description SET NOT NULL,
-- ALTER COLUMN image_path SET DEFAULT 'img/default.img',
-- ADD CONSTRAINT price_positive CHECK (price > 0),
-- ADD CONSTRAINT amount_in_stock_positive CHECK (amount_in_stock >= 0);

-- Task 6: Add id column

ALTER TABLE products
ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT; -- MySQl syntax
-- ADD COLUMN id SERIAL PRIMARY KEY; -- Postgres syntax
