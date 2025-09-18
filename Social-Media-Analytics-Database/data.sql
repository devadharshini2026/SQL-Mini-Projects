USE social_media_analytics;

-- Insert users
INSERT INTO Users (username, city) VALUES
('Arjun', 'Delhi'),
('Meera', 'Chennai'),
('Ravi', 'Bangalore'),
('Sneha', 'Hyderabad');

-- Insert posts
INSERT INTO Posts (user_id, content, post_date) VALUES
(1, 'Excited about my new project!', '2025-01-05'),
(2, 'Just visited Marina Beach!', '2025-01-10'),
(3, 'Started learning SQL today!', '2025-02-01'),
(4, 'Exploring Hyderabad food places!', '2025-02-15');

-- Insert likes
INSERT INTO Likes (post_id, user_id, like_date) VALUES
(1, 2, '2025-01-06'),
(1, 3, '2025-01-06'),
(2, 1, '2025-01-11'),
(2, 3, '2025-01-12'),
(3, 4, '2025-02-02'),
(4, 1, '2025-02-16'),
(4, 2, '2025-02-16');

-- Insert comments
INSERT INTO Comments (post_id, user_id, comment_text, comment_date) VALUES
(1, 2, 'Congrats! Keep it up!', '2025-01-06'),
(1, 3, 'That sounds awesome!', '2025-01-07'),
(2, 1, 'Marina is beautiful!', '2025-01-11'),
(3, 4, 'Good luck with SQL!', '2025-02-02'),
(4, 1, 'Foodie goals!', '2025-02-16');
