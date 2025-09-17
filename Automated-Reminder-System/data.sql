USE automated_reminder_system;

-- Insert users
INSERT INTO Users (user_name, email) VALUES
('Arjun', 'arjun@example.com'),
('Meera', 'meera@example.com'),
('Ravi', 'ravi@example.com'),
('Sneha', 'sneha@example.com');

-- Insert reminders
INSERT INTO Reminders (user_id, reminder_text, due_date, status) VALUES
(1, 'Submit project report', '2025-09-16', 'Pending'),
(2, 'Pay electricity bill', '2025-09-14', 'Completed'),
(3, 'Doctor appointment', '2025-09-20', 'Pending'),
(1, 'Team meeting', '2025-09-18', 'Pending'),
(4, 'Birthday party', '2025-09-22', 'Pending');
