USE expense_tracker;

-- Insert users
INSERT INTO Users (username, city) VALUES
('Arjun', 'Delhi'),
('Meera', 'Chennai'),
('Ravi', 'Bangalore'),
('Sneha', 'Hyderabad');

-- Insert categories
INSERT INTO Categories (category_name) VALUES
('Food'),
('Travel'),
('Shopping'),
('Entertainment'),
('Bills');

-- Insert expenses
INSERT INTO Expenses (user_id, category_id, amount, expense_date) VALUES
(1, 1, 500, '2025-01-05'),
(1, 2, 1200, '2025-01-06'),
(2, 3, 2500, '2025-01-07'),
(3, 4, 800, '2025-01-08'),
(4, 5, 1500, '2025-01-09'),
(2, 1, 700, '2025-01-10'),
(3, 2, 2000, '2025-01-15'),
(1, 3, 1000, '2025-02-01'),
(4, 4, 1200, '2025-02-02'),
(2, 5, 1800, '2025-02-03');
