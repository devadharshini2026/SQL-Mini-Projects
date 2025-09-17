CREATE DATABASE IF NOT EXISTS elearning;
USE elearning;

-- Users table
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    city VARCHAR(100)
);

-- Courses table
CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    duration_weeks INT
);

-- Enrollments table
CREATE TABLE Enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    course_id INT,
    enrollment_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Progress table
CREATE TABLE Progress (
    progress_id INT AUTO_INCREMENT PRIMARY KEY,
    enrollment_id INT,
    completion_percentage DECIMAL(5,2),
    last_accessed DATE,
    FOREIGN KEY (enrollment_id) REFERENCES Enrollments(enrollment_id)
);
