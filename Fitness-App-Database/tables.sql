CREATE DATABASE IF NOT EXISTS fitness_app;
USE fitness_app;

-- Users table
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    age INT,
    gender VARCHAR(10)
);

-- Workouts table
CREATE TABLE Workouts (
    workout_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    workout_type VARCHAR(50),
    duration_minutes INT,
    calories_burned INT,
    workout_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Calories table
CREATE TABLE Calories (
    calorie_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    food_item VARCHAR(50),
    calories_intake INT,
    intake_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
