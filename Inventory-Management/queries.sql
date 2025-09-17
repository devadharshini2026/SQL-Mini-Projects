USE inventory_management;

-- 1. List all products with their suppliers
SELECT p.product_name, p.price, s.supplier_name
FROM Products p
JOIN Suppliers s ON p.supplier_id = s.supplier_id
ORDER BY s.supplier_name;

-- 2. Find low-stock products (less than 30 units)
SELECT p.product_name, i.quantity
FROM Inventory i
JOIN Products p ON i.product_id = p.product_id
WHERE i.quantity < 30;

-- 3. Show suppliers with no products
SELECT s.supplier_name
FROM Suppliers s
LEFT JOIN Products p ON s.supplier_id = p.supplier_id
WHERE p.product_id IS NULL;

-- 4. Count total stock per supplier
SELECT s.supplier_name, SUM(i.quantity) AS total_stock
FROM Suppliers s
JOIN Products p ON s.supplier_id = p.supplier_id
JOIN Inventory i ON p.product_id = i.product_id
GROUP BY s.supplier_name;
