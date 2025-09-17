USE ecommerce_dashboard;

-- Insert customers
INSERT INTO Customers (customer_name, email, city) VALUES
('Arjun', 'arjun@example.com', 'Chennai'),
('Meera', 'meera@example.com', 'Bangalore'),
('Ravi', 'ravi@example.com', 'Delhi'),
('Sneha', 'sneha@example.com', 'Hyderabad');

-- Insert products
INSERT INTO Products (product_name, category, price) VALUES
('Laptop', 'Electronics', 60000.00),
('Headphones', 'Electronics', 2000.00),
('Shoes', 'Fashion', 2500.00),
('T-shirt', 'Fashion', 800.00),
('Book', 'Education', 500.00);

-- Insert orders
INSERT INTO Orders (customer_id, order_date) VALUES
(1, '2025-02-01'),
(2, '2025-02-05'),
(3, '2025-02-07'),
(1, '2025-02-10'),
(4, '2025-02-12');

-- Insert order details
INSERT INTO OrderDetails (order_id, product_id, quantity) VALUES
(1, 1, 1), -- Laptop
(1, 2, 2), -- Headphones
(2, 3, 1), -- Shoes
(3, 5, 3), -- Books
(4, 4, 2), -- T-shirts
(5, 2, 1), -- Headphones
(5, 1, 1); -- Laptop
