CREATE DATABASE IF NOT EXISTS online_quiz;
USE online_quiz;

-- Students table
CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE
);

-- Quizzes table
CREATE TABLE Quizzes (
    quiz_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    quiz_date DATE NOT NULL
);

-- Questions table
CREATE TABLE Questions (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    quiz_id INT,
    question_text TEXT NOT NULL,
    FOREIGN KEY (quiz_id) REFERENCES Quizzes(quiz_id)
);

-- Options table
CREATE TABLE Options (
    option_id INT AUTO_INCREMENT PRIMARY KEY,
    question_id INT,
    option_text VARCHAR(200) NOT NULL,
    is_correct BOOLEAN NOT NULL,
    FOREIGN KEY (question_id) REFERENCES Questions(question_id)
);

-- Student Answers table
CREATE TABLE Student_Answers (
    answer_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    question_id INT,
    option_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (question_id) REFERENCES Questions(question_id),
    FOREIGN KEY (option_id) REFERENCES Options(option_id)
);
