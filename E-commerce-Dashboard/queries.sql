USE ecommerce_dashboard;

-- 1. Show total sales per customer
SELECT c.customer_name, SUM(p.price * od.quantity) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

-- 2. Find best-selling products
SELECT p.product_name, SUM(od.quantity) AS total_sold
FROM Products p
JOIN OrderDetails od ON p.product_id = od.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- 3. Show total revenue per month
SELECT DATE_FORMAT(o.order_date, '%Y-%m') AS month, SUM(p.price * od.quantity) AS revenue
FROM Orders o
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY month
ORDER BY month;

-- 4. Find customers with no orders
SELECT c.customer_name
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
