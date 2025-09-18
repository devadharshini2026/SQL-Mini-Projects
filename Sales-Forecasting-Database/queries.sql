USE sales_forecasting;

-- 1. Show total sales per month
SELECT DATE_FORMAT(sale_date, '%Y-%m') AS month,
       SUM(p.price * s.quantity) AS total_sales
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY month
ORDER BY month;

-- 2. Find top selling products
SELECT p.product_name, SUM(s.quantity) AS total_sold
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- 3. Find top customers by spending
SELECT c.customer_name, SUM(p.price * s.quantity) AS total_spent
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
JOIN Customers c ON s.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

-- 4. Show sales growth rate month-over-month
SELECT month,
       total_sales,
       LAG(total_sales, 1) OVER (ORDER BY month) AS prev_month_sales,
       ROUND(((total_sales - LAG(total_sales, 1) OVER (ORDER BY month)) / 
       LAG(total_sales, 1) OVER (ORDER BY month)) * 100, 2) AS growth_rate
FROM (
    SELECT DATE_FORMAT(sale_date, '%Y-%m') AS month,
           SUM(p.price * s.quantity) AS total_sales
    FROM Sales s
    JOIN Products p ON s.product_id = p.product_id
    GROUP BY month
) AS monthly_sales;

-- 5. Prepare sales data for forecasting (time series)
SELECT DATE_FORMAT(sale_date, '%Y-%m-%d') AS sale_day,
       SUM(p.price * s.quantity) AS daily_sales
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY sale_day
ORDER BY sale_day;
