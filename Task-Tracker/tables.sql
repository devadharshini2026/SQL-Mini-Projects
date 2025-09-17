CREATE DATABASE IF NOT EXISTS task_tracker;
USE task_tracker;

-- Users table
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

-- Tasks table
CREATE TABLE Tasks (
    task_id INT AUTO_INCREMENT PRIMARY KEY,
    task_title VARCHAR(150) NOT NULL,
    description TEXT,
    assigned_to INT,
    due_date DATE,
    status VARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (assigned_to) REFERENCES Users(user_id)
);
