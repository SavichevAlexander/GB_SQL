-- DROP DATABASE IF EXISTS 1st_homework_task;
CREATE DATABASE 1st_homework_task;
USE 1st_homework_task;

INSERT INTO mobile_phones (product_name, manufacturer, product_count, price)
VALUES
('iPhone X', 'Apple', 3, 76000),
('iPhone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 41000),
('P20 Pro', 'Huawei', 5, 36000);

SELECT product_name, manufacturer, product_count, price 
FROM mobile_phones;
SELECT product_name, manufacturer, price 
FROM mobile_phones 
WHERE product_count > 2;
SELECT product_name, manufacturer, product_count, price 
FROM mobile_phones 
WHERE manufacturer = 'Samsung';
