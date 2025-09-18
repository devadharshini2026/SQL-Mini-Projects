USE sales_forecasting;

-- Insert products
INSERT INTO Products (product_name, category, price) VALUES
('Laptop', 'Electronics', 50000.00),
('Mobile', 'Electronics', 20000.00),
('Headphones', 'Accessories', 2000.00),
('Shoes', 'Fashion', 3000.00),
('Watch', 'Fashion', 4000.00);

-- Insert customers
INSERT INTO Customers (customer_name, city) VALUES
('Arjun', 'Delhi'),
('Meera', 'Chennai'),
('Ravi', 'Bangalore'),
('Sneha', 'Hyderabad');

-- Insert sales
INSERT INTO Sales (product_id, customer_id, quantity, sale_date) VALUES
(1, 1, 1, '2025-01-15'),
(2, 2, 2, '2025-02-10'),
(3, 3, 3, '2025-02-18'),
(4, 1, 1, '2025-03-05'),
(5, 4, 2, '2025-03-20'),
(1, 2, 1, '2025-04-12'),
(2, 3, 1, '2025-04-15'),
(3, 4, 4, '2025-05-01'),
(4, 1, 2, '2025-05-18'),
(5, 2, 1, '2025-06-10');
