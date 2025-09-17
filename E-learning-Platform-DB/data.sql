USE elearning;

-- Insert users
INSERT INTO Users (user_name, email, city) VALUES
('Arjun Mehta', 'arjun@example.com', 'Delhi'),
('Meera Singh', 'meera@example.com', 'Chennai'),
('Ravi Kumar', 'ravi@example.com', 'Bangalore'),
('Sneha Iyer', 'sneha@example.com', 'Hyderabad');

-- Insert courses
INSERT INTO Courses (course_name, category, duration_weeks) VALUES
('SQL Basics', 'Database', 4),
('Python Programming', 'Programming', 6),
('Machine Learning', 'AI', 8),
('Data Structures', 'CS Fundamentals', 5);

-- Insert enrollments
INSERT INTO Enrollments (user_id, course_id, enrollment_date) VALUES
(1, 1, '2025-09-01'),
(1, 2, '2025-09-03'),
(2, 2, '2025-09-04'),
(3, 3, '2025-09-05'),
(4, 1, '2025-09-06'),
(4, 4, '2025-09-07');

-- Insert progress
INSERT INTO Progress (enrollment_id, completion_percentage, last_accessed) VALUES
(1, 100.00, '2025-09-10'),
(2, 60.00, '2025-09-12'),
(3, 40.00, '2025-09-11'),
(4, 20.00, '2025-09-13'),
(5, 80.00, '2025-09-14'),
(6, 50.00, '2025-09-15');
