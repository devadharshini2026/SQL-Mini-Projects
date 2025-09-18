USE online_quiz;

-- Insert students
INSERT INTO Students (name, email) VALUES
('Arjun', 'arjun@example.com'),
('Meera', 'meera@example.com'),
('Ravi', 'ravi@example.com');

-- Insert quizzes
INSERT INTO Quizzes (title, quiz_date) VALUES
('SQL Basics Quiz', '2025-01-15'),
('Advanced SQL Quiz', '2025-02-10');

-- Insert questions
INSERT INTO Questions (quiz_id, question_text) VALUES
(1, 'Which SQL command is used to retrieve data?'),
(1, 'Which clause is used to filter rows?'),
(2, 'What does JOIN do in SQL?'),
(2, 'Which function gives the total number of rows?');

-- Insert options
INSERT INTO Options (question_id, option_text, is_correct) VALUES
(1, 'INSERT', FALSE),
(1, 'SELECT', TRUE),
(1, 'UPDATE', FALSE),
(1, 'DELETE', FALSE),

(2, 'WHERE', TRUE),
(2, 'ORDER BY', FALSE),
(2, 'GROUP BY', FALSE),
(2, 'HAVING', FALSE),

(3, 'Combines rows from multiple tables', TRUE),
(3, 'Deletes rows', FALSE),
(3, 'Sorts data', FALSE),
(3, 'Updates data', FALSE),

(4, 'SUM()', FALSE),
(4, 'COUNT()', TRUE),
(4, 'AVG()', FALSE),
(4, 'MAX()', FALSE);

-- Insert student answers
INSERT INTO Student_Answers (student_id, question_id, option_id) VALUES
(1, 1, 2), -- Arjun correct
(1, 2, 1), -- Arjun wrong
(1, 3, 9), -- Arjun correct
(1, 4, 14), -- Arjun correct

(2, 1, 2), -- Meera correct
(2, 2, 5), -- Meera correct
(2, 3, 10), -- Meera wrong
(2, 4, 14), -- Meera correct

(3, 1, 1), -- Ravi wrong
(3, 2, 5), -- Ravi correct
(3, 3, 9), -- Ravi correct
(3, 4, 13); -- Ravi wrong
