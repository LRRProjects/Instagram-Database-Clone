CREATE TABLE customers(
    customer_id int NOT NULL auto_increment,
    customer_fname VARCHAR(100),
    customer_lname VARCHAR(100),
    customer_email VARCHAR(100),
    PRIMARY KEY(customer_id)
);

CREATE TABLE orders(
    order_id int NOT NULL auto_increment,
    order_date DATE,
    order_amount DECIMAL(8,2),
    customer_id INT,
    PRIMARY KEY(order_id),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers(customer_fname,customer_lname,customer_email)
VALUES('Boy','George','george@gmail.com'),
('George','Michael','gm@gmail.com'),
('David','Bowie','david@gmail.com'),
('Blue','Steel','blue@gmail.com'),
('Bette','Davis','bette@aol.com');

INSERT INTO orders(order_date,order_amount,customer_id)
VALUES('2016/02/0',99.99,1),
('2017/11/11',35.50,1),
('2014/12/12',800.67,2),
('2015/01/03',12.50,2),
('1999/04/11',450.25,5);

UPDATE orders SET order_date='2016/02/10'
WHERE order_date='2016/02/0';

SELECT * FROM customers;
SELECT * FROM orders;

INSERT INTO orders(order_date,order_amount,customer_id)
VALUES('2016/02/10',33.67,98)

SELECT * FROM orders;
SELECT * from customers
where customer_lname='George'; 

SELECT * FROM orders
WHERE customer_id=1;

SELECT * FROM orders 
WHERE customer_id = (
    SELECT customer_id FROM customers
    WHERE customer_lname = 'George'
);

SELECT * FROM customers,orders;
SELECT * from customers, orders
WHERE customers.customer_id = orders.customer_id;

SELECT customer_fname,customer_lname,order_date, order_amount from customers, orders
WHERE customers.customer_id = orders.customer_id;

SELECT * FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id;

SELECT customer_fname,customer_lname,order_date,SUM(order_amount) as total_Spent FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY orders.customer_id;

SELECT * FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id

SELECT customer_fname,customer_lname,ifNULL(SUM(order_amount),0) AS 'Total_Spent'
from customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id
Order by 'Total_Spent'

SELECT * FROM customers
RIGHT JOIN orders
ON customers.customer_id = orders.customer_id

