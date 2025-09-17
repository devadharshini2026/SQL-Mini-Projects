USE task_tracker;

-- Insert users
INSERT INTO Users (user_name, email) VALUES
('Amit', 'amit@example.com'),
('Sneha', 'sneha@example.com'),
('Karthik', 'karthik@example.com'),
('Divya', 'divya@example.com');

-- Insert tasks
INSERT INTO Tasks (task_title, description, assigned_to, due_date, status) VALUES
('Database Design', 'Create schema for HR project', 1, '2025-02-20', 'Completed'),
('API Development', 'Build REST API for login module', 2, '2025-02-25', 'Pending'),
('UI Prototype', 'Design homepage wireframe', 3, '2025-02-18', 'Completed'),
('Testing', 'Perform unit testing', 4, '2025-02-28', 'Pending'),
('Documentation', 'Prepare project report', 1, '2025-03-05', 'Pending');
