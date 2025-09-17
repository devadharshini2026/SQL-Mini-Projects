USE customer_age_analysis;

-- Insert customers
INSERT INTO Customers (customer_name, age, city) VALUES
('Arjun', 22, 'Chennai'),
('Meera', 29, 'Bangalore'),
('Ravi', 35, 'Hyderabad'),
('Divya', 41, 'Delhi'),
('Kiran', 55, 'Mumbai'),
('Sneha', 63, 'Pune');

-- Insert purchases
INSERT INTO Purchases (customer_id, amount, purchase_date) VALUES
(1, 1200.50, '2025-02-01'),
(2, 850.00, '2025-02-05'),
(3, 3000.00, '2025-02-10'),
(4, 1500.75, '2025-02-15'),
(5, 2200.00, '2025-02-18'),
(6, 900.00, '2025-02-20'),
(2, 450.00, '2025-02-22'),
(3, 750.00, '2025-02-25');
