SQL Basics: Filtering, Sorting & Aggregation
Database: MySQL

1. Retrieve all customers
SELECT * FROM customers;

2. Find customers from a specific city
SELECT *
FROM customers
WHERE city = 'Bangalore';

3. Sort customers by age (ascending)
SELECT *
FROM customers
ORDER BY age ASC;

4. Find total spending per customer
SELECT
    customer_id,
    SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id;

5. Find customers who spent more than 50000
SELECT
    customer_id,
    SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(amount) > 50000;

6. Find customers who placed more than 5 orders
SELECT
    customer_id,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 5;

7. Find average order value per category
SELECT
    category,
    AVG(amount) AS average_order_value
FROM orders
GROUP BY category;

8. Retrieve orders placed in the last 30 days
SELECT *
FROM orders
WHERE order_date >= CURDATE() - INTERVAL 30 DAY;

9. Find the highest spending customer
SELECT
    customer_id,
    SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 1;

10. Find top 5 customers by total spend
SELECT
    customer_id,
    SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

