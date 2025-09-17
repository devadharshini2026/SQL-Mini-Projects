USE online_store;

-- 1. List total purchase value for each customer
SELECT c.customer_name, SUM(p.price * oi.quantity) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

-- 2. Find top 3 best-selling products
SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM Products p
JOIN OrderItems oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 3;

-- 3. Show all orders placed in the last 30 days
SELECT o.order_id, c.customer_name, o.order_date
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE o.order_date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);

-- 4. Find customers who never ordered
SELECT c.customer_name
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- 5. Show current stock after all sales
SELECT p.product_name, p.stock - IFNULL(SUM(oi.quantity), 0) AS remaining_stock
FROM Products p
LEFT JOIN OrderItems oi ON p.product_id = oi.product_id
GROUP BY p.product_name;
