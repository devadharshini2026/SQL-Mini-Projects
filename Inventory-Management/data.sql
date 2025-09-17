USE inventory_management;

-- Insert suppliers
INSERT INTO Suppliers (supplier_name, contact_number) VALUES
('Fresh Foods Ltd', '9876543210'),
('Tech Supplies Inc', '9123456780'),
('Daily Essentials', '9988776655');

-- Insert products
INSERT INTO Products (product_name, price, supplier_id) VALUES
('Rice Bag 25kg', 1200.00, 1),
('Wheat Flour 10kg', 500.00, 1),
('Laptop', 60000.00, 2),
('Keyboard', 1500.00, 2),
('Soap Pack', 200.00, 3),
('Shampoo Bottle', 300.00, 3);

-- Insert inventory
INSERT INTO Inventory (product_id, quantity, last_restock_date) VALUES
(1, 50, '2025-02-01'),
(2, 80, '2025-02-05'),
(3, 20, '2025-02-07'),
(4, 100, '2025-02-10'),
(5, 200, '2025-02-12'),
(6, 150, '2025-02-14');
