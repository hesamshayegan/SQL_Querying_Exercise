-- Comments in SQL Start with dash-dash --

-- Add a product to the table with the name of "chair", 
--  price of 44.00, and can_be_returned of false.
INSERT INTO products (name, price,can_be_returned) 
VALUES ('chair', 44.00,false);

-- Add a product to the table with the name of "stool", 
--  price of 29.99, and can_be_returned of true.
INSERT INTO products (name, price,can_be_returned) 
VALUES ('stool', 25.99,true);

-- Add a product to the table with the name of "table", 
--  price of 124.00, and can_be_returned of false.
INSERT INTO products (name, price,can_be_returned) 
VALUES ('table', 124.00,false);

-- Display all of the rows and columns in the table
SELECT * 
FROM products;

-- Display all of the names of the products
SELECT name 
FROM products;

-- Add a product to the table with the name of "couch", 
--  price of 500 and can_be_returned of true.
INSERT INTO products (name, price,can_be_returned) 
VALUES ('couch', 500, true);

-- Display only the products that can_be_returned
SELECT * 
FROM products 
WHERE can_be_returned = true;

-- Display only the products that have a price less than 44.00.
SELECT * 
FROM products 
WHERE price < 44.00;

-- - Display only the products that have a price less than 99.99 and higher than 22.50
SELECT * 
FROM products 
WHERE price > 22.50 AND price < 99.99;

-- SELECT * FROM products WHERE price BETWEEN 22.50 AND 99.99

-- UPDATE price with a $20 discount
UPDATE products SET price = price - 20;

-- DELETE products with a price less than $25
DELETE FROM products WHERE price < 25;

-- UPDATE the table increasing the price of $20
UPDATE products SET price = price + 20

-- everything is returnable
UPDATE products SET can_be_returned = true WHERE can_be_returned = false;

-- Reorder the table
SELECT * FROM products ORDER BY id;
