--Create the products table if it doesn't exist
CREATE TABLE IF NOT EXISTS PRODUCTS (
PRODUCT_ID TEXT PRIMARY KEY,
PRODUCT_NAME TEXT,
SUPPLIER_ID TEXT,
CATEGORY_ID TEXT,
UNIT TEXT,
PRICE REAL   
);
--Insert sample data ino the PRODUCTS table
INSERT INTO PRODUCTS (PRODUCT_ID, PRODUCT_NAME, SUPPLIER_ID, CATEGORY_ID, UNIT, PRICE) VALUES
('1', 'ROYCO', '1', '1', '10 BOXES*BAGS', 18),
('2', 'CHANG', '1', '1', '24-12 OZ BOTTLES', 19),
('3', 'SYRUP', '1', '2', '12-550 ML BOTTLES', 18),
('4', 'SEASONING', '1', '2', '48-6 OZ JARS', 18),
('5', 'ANTON MIX', '1', '2', '36 BOXES', 18);
--Query to count the number of products
SELECT COUNT(PRODUCT_ID) AS Product_Count
FROM PRODUCTS;
--Query to find the average price of products
SELECT AVG(PRICE) AS Average_Price
FROM PRODUCTS;
--Query to find the total price of products
SELECT SUM(PRICE) AS Total_Price
FROM PRODUCTS;