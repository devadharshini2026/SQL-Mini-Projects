USE fitness_app;

-- 1. Find total workout time per user
SELECT u.username, SUM(w.duration_minutes) AS total_minutes
FROM Users u
JOIN Workouts w ON u.user_id = w.user_id
GROUP BY u.username
ORDER BY total_minutes DESC;

-- 2. Find most popular workout type
SELECT workout_type, COUNT(*) AS total_sessions
FROM Workouts
GROUP BY workout_type
ORDER BY total_sessions DESC;

-- 3. Find average calories burned per user
SELECT u.username, AVG(w.calories_burned) AS avg_calories_burned
FROM Users u
JOIN Workouts w ON u.user_id = w.user_id
GROUP BY u.username;

-- 4. Find daily calorie balance (intake - burned)
SELECT u.username, w.workout_date,
       COALESCE(SUM(c.calories_intake),0) - COALESCE(SUM(w.calories_burned),0) AS calorie_balance
FROM Users u
LEFT JOIN Workouts w ON u.user_id = w.user_id
LEFT JOIN Calories c ON u.user_id = c.user_id AND DATE(c.intake_date) = DATE(w.workout_date)
GROUP BY u.username, w.workout_date;

-- 5. Show top 3 most active users (by total workouts)
SELECT u.username, COUNT(w.workout_id) AS total_workouts
FROM Users u
JOIN Workouts w ON u.user_id = w.user_id
GROUP BY u.username
ORDER BY total_workouts DESC
LIMIT 3;
