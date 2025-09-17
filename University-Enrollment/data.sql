USE university_enrollment;

-- Insert students
INSERT INTO Students (student_name, major) VALUES
('Arjun', 'Computer Science'),
('Priya', 'Electrical Engineering'),
('Karthik', 'Mechanical Engineering'),
('Meera', 'Civil Engineering'),
('Ravi', 'Information Technology');

-- Insert courses
INSERT INTO Courses (course_name, credits) VALUES
('Database Systems', 4),
('Operating Systems', 3),
('Data Structures', 4),
('Computer Networks', 3),
('Software Engineering', 3);

-- Insert enrollments
INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES
(1, 1, '2025-01-10'),
(1, 3, '2025-01-12'),
(2, 2, '2025-01-15'),
(2, 5, '2025-01-18'),
(3, 3, '2025-02-01'),
(4, 4, '2025-02-05'),
(5, 1, '2025-02-10'),
(5, 2, '2025-02-12'),
(5, 3, '2025-02-15');
