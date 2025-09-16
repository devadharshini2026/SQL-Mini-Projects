USE sales_summary;

-- 1. Total sales per product
SELECT p.product_name, SUM(s.quantity * p.price) AS total_sales
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_name;

-- 2. Top 3 customers by purchase amount
SELECT c.customer_name, SUM(s.quantity * p.price) AS total_spent
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
JOIN Products p ON s.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 3;

-- 3. Monthly sales summary
SELECT DATE_FORMAT(s.sale_date, '%Y-%m') AS month, 
       SUM(s.quantity * p.price) AS total_sales
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY month
ORDER BY month;

-- 4. Most sold product
SELECT p.product_name, SUM(s.quantity) AS total_quantity
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC
LIMIT 1;
