/*
Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными
Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300.
*/

CREATE DATABASE IF NOT EXISTS lesson_home2; 
USE lesson_home2; 
DROP TABLE IF EXISTS sales; 

CREATE TABLE IF NOT EXISTS sales 
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	order_data DATE,
	count_product INT
);

INSERT INTO sales (order_data, count_product)
VALUE 
	('2022-01-01', 450),
	('2022-01-06', 50),
	('2022-02-04', 90),
	('2022-03-12', 200),
	('2022-03-01', 250),
	('2022-01-20', 230);
    
SELECT id,
CASE
	WHEN count_product > 300
		THEN 'Большой заказ'
	WHEN count_product < 100
		THEN 'Маленький заказ'
	ELSE 'Средний заказ'
END AS result
FROM sales;


/*
Создайте таблицу “orders”, заполните ее значениями. Покажите “полный” статус заказа, используя оператор CASE
*/

USE lesson_home2; 
DROP TABLE IF EXISTS orders; 

CREATE TABLE IF NOT EXISTS orders 
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id VARCHAR(20),
	amount FLOAT,
	order_status VARCHAR(10)
);

INSERT INTO orders (employee_id, amount, order_status)
VALUE 
	('e03', 15.00, 'OPEN'),
	('e01', 25.50, 'OPEN'),
	('e03', 100.70, 'CLOSED'),
	('e05', 22.18, 'OPEN'),
	('e04', 15.00, 'CANCELLED');
	
SELECT id, employee_id, amount, order_status,
CASE
	WHEN order_status = 'OPEN'
		THEN 'order is in open state'
	WHEN order_status = 'CLOSED'
		THEN 'order is closed'
	WHEN order_status = 'CANCELLED'
		THEN 'order is cancelled'
END AS full_order_status
FROM orders;