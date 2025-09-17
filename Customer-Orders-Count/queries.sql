USE customer_orders;

-- 1. Count orders placed by each customer
SELECT c.customer_name, COUNT(o.order_id) AS total_orders
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

-- 2. Find customers with more than 3 orders
SELECT c.customer_name, COUNT(o.order_id) AS total_orders
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING total_orders > 3;

-- 3. Show the month with the highest orders
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, COUNT(order_id) AS order_count
FROM Orders
GROUP BY month
ORDER BY order_count DESC
LIMIT 1;

-- 4. List customers who haven’t placed any orders
SELECT c.customer_name
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
