USE fitness_app;

-- Insert users
INSERT INTO Users (username, age, gender) VALUES
('Arjun', 25, 'Male'),
('Meera', 28, 'Female'),
('Ravi', 30, 'Male'),
('Sneha', 26, 'Female');

-- Insert workouts
INSERT INTO Workouts (user_id, workout_type, duration_minutes, calories_burned, workout_date) VALUES
(1, 'Running', 30, 300, '2025-01-05'),
(1, 'Cycling', 45, 400, '2025-01-06'),
(2, 'Yoga', 60, 200, '2025-01-07'),
(3, 'Weightlifting', 50, 350, '2025-01-08'),
(4, 'Running', 25, 250, '2025-01-08'),
(2, 'Running', 40, 320, '2025-01-09');

-- Insert calories
INSERT INTO Calories (user_id, food_item, calories_intake, intake_date) VALUES
(1, 'Breakfast - Idli', 350, '2025-01-05'),
(1, 'Lunch - Rice & Curry', 600, '2025-01-05'),
(2, 'Dinner - Salad', 200, '2025-01-07'),
(3, 'Lunch - Biryani', 800, '2025-01-08'),
(4, 'Breakfast - Dosa', 400, '2025-01-08');
