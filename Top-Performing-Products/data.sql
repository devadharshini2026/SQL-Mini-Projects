USE top_products;

-- Insert products
INSERT INTO Products (product_name, price) VALUES
('Smartphone', 25000.00),
('Laptop', 60000.00),
('Headphones', 2000.00),
('Tablet', 15000.00),
('Smartwatch', 8000.00);

-- Insert sales
INSERT INTO Sales (product_id, quantity, sale_date) VALUES
(1, 10, '2025-01-05'),
(2, 5, '2025-01-10'),
(3, 20, '2025-01-12'),
(1, 7, '2025-02-01'),
(5, 15, '2025-02-05'),
(4, 4, '2025-02-08'),
(2, 3, '2025-03-01'),
(3, 10, '2025-03-03'),
(5, 12, '2025-03-10');
