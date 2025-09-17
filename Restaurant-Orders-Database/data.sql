USE restaurant_orders;

-- Insert customers
INSERT INTO Customers (customer_name, phone, city) VALUES
('Arjun', '9876543210', 'Chennai'),
('Meera', '8765432109', 'Bangalore'),
('Ravi', '7654321098', 'Delhi'),
('Sneha', '6543210987', 'Hyderabad');

-- Insert menu items
INSERT INTO MenuItems (item_name, category, price) VALUES
('Burger', 'Fast Food', 120.00),
('Pizza', 'Fast Food', 250.00),
('Pasta', 'Italian', 200.00),
('Biryani', 'Indian', 180.00),
('Coffee', 'Beverage', 60.00);

-- Insert orders
INSERT INTO Orders (customer_id, order_date) VALUES
(1, '2025-09-01'),
(2, '2025-09-03'),
(3, '2025-09-05'),
(1, '2025-09-07'),
(4, '2025-09-08');

-- Insert order items
INSERT INTO OrderItems (order_id, item_id, quantity) VALUES
(1, 1, 2), -- Burgers
(1, 5, 2), -- Coffee
(2, 2, 1), -- Pizza
(2, 3, 1), -- Pasta
(3, 4, 2), -- Biryani
(4, 2, 1), -- Pizza
(4, 5, 1), -- Coffee
(5, 1, 1), -- Burger
(5, 4, 1); -- Biryani
