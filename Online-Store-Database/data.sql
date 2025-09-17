USE online_store;

-- Insert customers
INSERT INTO Customers (customer_name, email, city) VALUES
('Arjun', 'arjun@example.com', 'Chennai'),
('Meera', 'meera@example.com', 'Bangalore'),
('Ravi', 'ravi@example.com', 'Delhi'),
('Sneha', 'sneha@example.com', 'Hyderabad');

-- Insert products
INSERT INTO Products (product_name, price, stock) VALUES
('Laptop', 60000.00, 10),
('Headphones', 2000.00, 50),
('Shoes', 2500.00, 30),
('Book', 500.00, 100),
('T-shirt', 800.00, 40);

-- Insert orders
INSERT INTO Orders (customer_id, order_date) VALUES
(1, '2025-09-01'),
(2, '2025-09-05'),
(3, '2025-09-07'),
(1, '2025-09-10'),
(4, '2025-09-12');

-- Insert order items
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES
(1, 1, 1), -- Laptop
(1, 2, 2), -- Headphones
(2, 3, 1), -- Shoes
(3, 4, 3), -- Books
(4, 5, 2), -- T-shirts
(5, 2, 1), -- Headphones
(5, 1, 1); -- Laptop
