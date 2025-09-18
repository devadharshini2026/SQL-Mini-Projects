CREATE DATABASE IF NOT EXISTS bug_tracking;
USE bug_tracking;

-- Projects table
CREATE TABLE Projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    start_date DATE
);

-- Users table (developers, testers, etc.)
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    role ENUM('Developer','Tester','Manager') NOT NULL
);

-- Bugs table
CREATE TABLE Bugs (
    bug_id INT AUTO_INCREMENT PRIMARY KEY,
    project_id INT,
    reported_by INT,
    assigned_to INT,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    severity ENUM('Low','Medium','High','Critical') NOT NULL,
    status ENUM('Open','In Progress','Resolved','Closed') NOT NULL DEFAULT 'Open',
    created_date DATE NOT NULL,
    resolved_date DATE,
    FOREIGN KEY (project_id) REFERENCES Projects(project_id),
    FOREIGN KEY (reported_by) REFERENCES Users(user_id),
    FOREIGN KEY (assigned_to) REFERENCES Users(user_id)
);

-- Comments table
CREATE TABLE Comments (
    comment_id INT AUTO_INCREMENT PRIMARY KEY,
    bug_id INT,
    user_id INT,
    comment_text TEXT NOT NULL,
    comment_date DATE NOT NULL,
    FOREIGN KEY (bug_id) REFERENCES Bugs(bug_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
