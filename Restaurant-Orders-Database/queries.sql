USE restaurant_orders;

-- 1. Find most popular menu items
SELECT m.item_name, SUM(oi.quantity) AS total_sold
FROM OrderItems oi
JOIN MenuItems m ON oi.item_id = m.item_id
GROUP BY m.item_name
ORDER BY total_sold DESC;

-- 2. Show total amount spent by each customer
SELECT c.customer_name, SUM(m.price * oi.quantity) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN MenuItems m ON oi.item_id = m.item_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

-- 3. Find top 3 highest value orders
SELECT o.order_id, c.customer_name, SUM(m.price * oi.quantity) AS order_value
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN MenuItems m ON oi.item_id = m.item_id
GROUP BY o.order_id, c.customer_name
ORDER BY order_value DESC
LIMIT 3;

-- 4. Show customers who never ordered
SELECT c.customer_name
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- 5. Show total revenue per day
SELECT o.order_date, SUM(m.price * oi.quantity) AS daily_revenue
FROM Orders o
JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN MenuItems m ON oi.item_id = m.item_id
GROUP BY o.order_date
ORDER BY o.order_date;
