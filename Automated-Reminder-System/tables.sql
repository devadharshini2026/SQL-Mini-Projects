CREATE DATABASE IF NOT EXISTS automated_reminder_system;
USE automated_reminder_system;

-- Users table
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

-- Reminders table
CREATE TABLE Reminders (
    reminder_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    reminder_text VARCHAR(255) NOT NULL,
    due_date DATE NOT NULL,
    status ENUM('Pending', 'Completed') DEFAULT 'Pending',
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
