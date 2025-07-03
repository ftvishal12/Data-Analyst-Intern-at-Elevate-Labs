-- Creating Database and using it --
create database task4da;
use task4da;

-- Creating Table --
CREATE TABLE Ecommerce (
    Product_ID varchar(50) PRIMARY KEY,
    Product_Name VARCHAR(50) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Price DECIMAL(4, 3),
    Units_Sold int,
	Revenue DECIMAL(8, 3),
    Rating DECIMAL(3, 2),
    Return_Rate DECIMAL(3, 2),
    Seller_Name VARCHAR(50) NOT NULL
);

-- Select all Product_ID, Product_Name, Price, Units_Sold ordered by Category --
SELECT Product_ID, Product_Name, Price, Units_Sold
FROM Ecommerce
WHERE Category = 'Electronics'
ORDER BY Category ASC;

-- Count number of orders per customer --
SELECT Product_ID, COUNT(Units_Sold) AS total_units
FROM Ecommerce
GROUP BY Product_ID
ORDER BY total_units DESC;


-- Inner join orders with customers to get customer details for each order
SELECT o.order_id, c.customer_id, c.first_name, c.last_name, o.order_date
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;

-- Left join to get all customers and their orders (if any)
SELECT c.customer_id, c.first_name, o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- Right join example (less common) to get all orders and customer info, even if customer missing
SELECT o.order_id, c.customer_id, c.first_name
FROM orders o
RIGHT JOIN customers c ON o.customer_id = c.customer_id;


-- Find customers with orders more than average order count
SELECT customer_id, first_name, last_name
FROM customers
WHERE customer_id IN (
  SELECT customer_id
  FROM orders
  GROUP BY customer_id
  HAVING COUNT(order_id) > (
    SELECT AVG(order_count) FROM (
      SELECT COUNT(order_id) AS order_count
      FROM orders
      GROUP BY customer_id
    ) AS sub
  )
);


-- Total sales per product
SELECT product_id, SUM(quantity * unit_price) AS total_sales
FROM order_details
GROUP BY product_id;

-- Average order value per customer
SELECT customer_id, AVG(total_amount) AS avg_order_value
FROM orders
GROUP BY customer_id;


-- View for customer total sales
CREATE VIEW customer_sales AS
SELECT o.customer_id, SUM(od.quantity * od.unit_price) AS total_spent
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
GROUP BY o.customer_id;

-- Query the view
SELECT * FROM customer_sales WHERE total_spent > 1000;


-- Create an index on the customer_id column in orders table to speed up joins
CREATE INDEX idx_customer_id ON orders(customer_id);

-- Create a composite index for frequent filter columns
CREATE INDEX idx_order_date_status ON orders(order_date, status);
