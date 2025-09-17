CREATE DATABASE IF NOT EXISTS employee_salary_grade;
USE employee_salary_grade;

-- Departments table
CREATE TABLE Departments (
    dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

-- Employees table
CREATE TABLE Employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    dept_id INT,
    salary DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

-- Salary Grades table
CREATE TABLE SalaryGrades (
    grade_id INT AUTO_INCREMENT PRIMARY KEY,
    grade CHAR(1) NOT NULL,
    min_salary DECIMAL(10,2),
    max_salary DECIMAL(10,2)
);
