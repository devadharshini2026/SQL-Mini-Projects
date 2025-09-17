USE product_inventory;

-- Insert categories
INSERT INTO Categories (category_name) VALUES
('Electronics'), ('Groceries'), ('Furniture');

-- Insert suppliers
INSERT INTO Suppliers (supplier_name, contact, city) VALUES
('Tech Supplies Inc.', '9876543210', 'Bangalore'),
('FreshFoods Ltd.', '9123456789', 'Chennai'),
('HomeComforts', '9988776655', 'Hyderabad');

-- Insert products
INSERT INTO Products (product_name, price, category_id, supplier_id) VALUES
('Smartphone', 25000.00, 1, 1),
('Laptop', 55000.00, 1, 1),
('Rice Bag 10kg', 800.00, 2, 2),
('Dining Table', 12000.00, 3, 3),
('Office Chair', 4500.00, 3, 3);

-- Insert stock
INSERT INTO Stock (product_id, quantity) VALUES
(1, 50), (2, 30), (3, 100), (4, 15), (5, 40);
