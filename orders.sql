-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.

CREATE TABLE orders(
order_id SERIAL PRIMARY KEY,
person_id VARCHAR(30),
product_name VARCHAR(30),
product_price NUMERIC(30),
quantity NUMERIC(30));



-- Add 5 orders to the orders table.

INSERT INTO orders
(person_id, product_name, product_price, quantity)

VALUES
('Zachary', 'Hot Dog', 2.99, 3),
('Ariana', 'Hot Dog', 2.99, 2),
('Phillip', 'Hamburger', 3.99, 1),
('Sarah', 'Hamburger', 3.99, 1),
('Gary', 'Crap Dog', 20.00, 1);


-- a -- Make orders for at least two different people.



-- b --person_id should be different for different people.



-- Select all the records from the orders table.

SELECT * FROM orders


-- Calculate the total number of products ordered.

SELECT sum(quantity) FROM orders;


-- Calculate the total order price.

SELECT sum(product_price * quantity) FROM orders;


-- Calculate the total order price by a single person_id.

SELECT sum(product_price * quantity) FROM orders
WHERE person_id = 'Zachary';
