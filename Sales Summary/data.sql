USE sales_summary;

-- Insert customers
INSERT INTO Customers (customer_name, city, phone) VALUES
('Arjun', 'Chennai', '9876543210'),
('Priya', 'Bangalore', '9123456789'),
('Karthik', 'Hyderabad', '9988776655'),
('Meera', 'Pune', '9090909090');

-- Insert products
INSERT INTO Products (product_name, price) VALUES
('Smartphone', 25000.00),
('Laptop', 60000.00),
('Headphones', 2000.00),
('Tablet', 15000.00);

-- Insert sales
INSERT INTO Sales (customer_id, product_id, quantity, sale_date) VALUES
(1, 1, 2, '2025-01-15'),
(2, 2, 1, '2025-01-20'),
(3, 3, 5, '2025-02-10'),
(1, 4, 1, '2025-02-18'),
(4, 1, 1, '2025-03-05'),
(2, 3, 2, '2025-03-12');
