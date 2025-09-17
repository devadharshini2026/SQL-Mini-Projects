CREATE DATABASE IF NOT EXISTS event_management;
USE event_management;

-- Events table
CREATE TABLE Events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(100) NOT NULL,
    event_date DATE NOT NULL,
    location VARCHAR(100)
);

-- Participants table
CREATE TABLE Participants (
    participant_id INT AUTO_INCREMENT PRIMARY KEY,
    participant_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

-- Registrations table (many-to-many)
CREATE TABLE Registrations (
    registration_id INT AUTO_INCREMENT PRIMARY KEY,
    event_id INT,
    participant_id INT,
    registration_date DATE NOT NULL,
    FOREIGN KEY (event_id) REFERENCES Events(event_id),
    FOREIGN KEY (participant_id) REFERENCES Participants(participant_id)
);
