USE customer_age_analysis;

-- 1. Find average age of customers
SELECT AVG(age) AS average_age FROM Customers;

-- 2. Group customers into age ranges
SELECT 
    CASE 
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 50 THEN '36-50'
        ELSE '51+' 
    END AS age_group,
    COUNT(*) AS total_customers
FROM Customers
GROUP BY age_group;

-- 3. Show total purchases by age group
SELECT 
    CASE 
        WHEN c.age BETWEEN 18 AND 25 THEN '18-25'
        WHEN c.age BETWEEN 26 AND 35 THEN '26-35'
        WHEN c.age BETWEEN 36 AND 50 THEN '36-50'
        ELSE '51+' 
    END AS age_group,
    SUM(p.amount) AS total_spent
FROM Customers c
JOIN Purchases p ON c.customer_id = p.customer_id
GROUP BY age_group;

-- 4. List youngest and oldest customers
SELECT customer_name, age 
FROM Customers
WHERE age = (SELECT MIN(age) FROM Customers)
   OR age = (SELECT MAX(age) FROM Customers);
