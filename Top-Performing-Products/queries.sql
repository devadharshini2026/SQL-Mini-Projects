USE top_products;

-- 1. Find total sales for each product
SELECT p.product_name, SUM(s.quantity * p.price) AS total_sales
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_name;

-- 2. List top 3 performing products by revenue
SELECT p.product_name, SUM(s.quantity * p.price) AS total_sales
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC
LIMIT 3;

-- 3. Identify products with zero sales
SELECT p.product_name
FROM Products p
LEFT JOIN Sales s ON p.product_id = s.product_id
WHERE s.sale_id IS NULL;

-- 4. Show product-wise monthly sales
SELECT p.product_name, DATE_FORMAT(s.sale_date, '%Y-%m') AS month,
       SUM(s.quantity * p.price) AS monthly_sales
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_name, month
ORDER BY month, monthly_sales DESC;
