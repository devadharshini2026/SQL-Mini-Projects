USE library_management;

-- Insert books
INSERT INTO Books (title, author, category, available) VALUES
('The Alchemist', 'Paulo Coelho', 'Fiction', TRUE),
('Introduction to Algorithms', 'Cormen', 'Education', TRUE),
('The Power of Habit', 'Charles Duhigg', 'Self-help', TRUE),
('Clean Code', 'Robert C. Martin', 'Programming', TRUE),
('Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', 'Fantasy', TRUE);

-- Insert members
INSERT INTO Members (member_name, email, join_date) VALUES
('Arjun', 'arjun@example.com', '2025-01-01'),
('Meera', 'meera@example.com', '2025-02-01'),
('Ravi', 'ravi@example.com', '2025-03-01'),
('Sneha', 'sneha@example.com', '2025-04-01');

-- Insert borrow records
INSERT INTO BorrowRecords (book_id, member_id, borrow_date, return_date) VALUES
(1, 1, '2025-09-01', '2025-09-10'),
(2, 2, '2025-09-05', NULL),
(3, 3, '2025-09-07', '2025-09-15'),
(4, 1, '2025-09-12', NULL);
