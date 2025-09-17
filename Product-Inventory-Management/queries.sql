USE product_inventory;

-- 1. List all products with their category and supplier
SELECT p.product_name, p.price, c.category_name, s.supplier_name
FROM Products p
JOIN Categories c ON p.category_id = c.category_id
JOIN Suppliers s ON p.supplier_id = s.supplier_id;

-- 2. Find products with stock less than 20
SELECT p.product_name, st.quantity
FROM Products p
JOIN Stock st ON p.product_id = st.product_id
WHERE st.quantity < 20;

-- 3. Count products supplied by each supplier
SELECT s.supplier_name, COUNT(p.product_id) AS product_count
FROM Suppliers s
JOIN Products p ON s.supplier_id = p.supplier_id
GROUP BY s.supplier_name;

-- 4. Get the most expensive product in each category
SELECT c.category_name, p.product_name, p.price
FROM Products p
JOIN Categories c ON p.category_id = c.category_id
WHERE p.price = (
    SELECT MAX(price) 
    FROM Products 
    WHERE category_id = c.category_id
);
