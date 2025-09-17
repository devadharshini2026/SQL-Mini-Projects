USE customer_orders;

-- Insert customers
INSERT INTO Customers (customer_name, city, phone) VALUES
('Arjun', 'Chennai', '9876543210'),
('Priya', 'Bangalore', '9123456789'),
('Karthik', 'Hyderabad', '9988776655'),
('Meera', 'Pune', '9090909090'),
('Ravi', 'Delhi', '9012345678');

-- Insert orders
INSERT INTO Orders (customer_id, order_date, amount) VALUES
(1, '2025-01-10', 5000.00),
(1, '2025-01-15', 2500.00),
(2, '2025-02-05', 12000.00),
(2, '2025-02-20', 8000.00),
(3, '2025-03-02', 3000.00),
(1, '2025-03-05', 10000.00),
(4, '2025-03-12', 7000.00);
