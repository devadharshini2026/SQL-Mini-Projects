USE bug_tracking;

-- Insert projects
INSERT INTO Projects (project_name, start_date) VALUES
('E-Commerce Website', '2025-01-01'),
('Banking App', '2025-02-01');

-- Insert users
INSERT INTO Users (username, role) VALUES
('Arjun', 'Developer'),
('Meera', 'Tester'),
('Ravi', 'Developer'),
('Sneha', 'Manager');

-- Insert bugs
INSERT INTO Bugs (project_id, reported_by, assigned_to, title, description, severity, status, created_date, resolved_date) VALUES
(1, 2, 1, 'Login button not working', 'Clicking login does nothing', 'High', 'Resolved', '2025-01-05', '2025-01-07'),
(1, 2, 3, 'Cart not updating', 'Items remain after removal', 'Critical', 'In Progress', '2025-01-10', NULL),
(2, 2, 1, 'Transaction timeout', 'Timeout during fund transfer', 'Critical', 'Open', '2025-02-05', NULL),
(2, 2, 3, 'UI misalignment', 'Buttons overlap on small screens', 'Low', 'Closed', '2025-02-06', '2025-02-07');

-- Insert comments
INSERT INTO Comments (bug_id, user_id, comment_text, comment_date) VALUES
(1, 1, 'Issue reproduced and fixed', '2025-01-06'),
(2, 3, 'Working on it now', '2025-01-11'),
(3, 1, 'Need more logs to investigate', '2025-02-06'),
(4, 2, 'Verified and closed', '2025-02-07');
