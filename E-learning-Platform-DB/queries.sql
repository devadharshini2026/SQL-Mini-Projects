USE elearning;

-- 1. Show all courses a student is enrolled in
SELECT u.user_name, c.course_name, e.enrollment_date
FROM Enrollments e
JOIN Users u ON e.user_id = u.user_id
JOIN Courses c ON e.course_id = c.course_id
WHERE u.user_name = 'Arjun Mehta';

-- 2. Find top enrolled courses
SELECT c.course_name, COUNT(e.enrollment_id) AS total_enrollments
FROM Enrollments e
JOIN Courses c ON e.course_id = c.course_id
GROUP BY c.course_name
ORDER BY total_enrollments DESC;

-- 3. Show progress of each student in their courses
SELECT u.user_name, c.course_name, p.completion_percentage
FROM Progress p
JOIN Enrollments e ON p.enrollment_id = e.enrollment_id
JOIN Users u ON e.user_id = u.user_id
JOIN Courses c ON e.course_id = c.course_id;

-- 4. Find students who completed all their enrolled courses
SELECT u.user_name
FROM Users u
JOIN Enrollments e ON u.user_id = e.user_id
JOIN Progress p ON e.enrollment_id = p.enrollment_id
GROUP BY u.user_name
HAVING MIN(p.completion_percentage) = 100;

-- 5. Show students who haven’t accessed courses recently (last 7 days)
SELECT u.user_name, c.course_name, p.last_accessed
FROM Progress p
JOIN Enrollments e ON p.enrollment_id = e.enrollment_id
JOIN Users u ON e.user_id = u.user_id
JOIN Courses c ON e.course_id = c.course_id
WHERE p.last_accessed < CURDATE() - INTERVAL 7 DAY;
