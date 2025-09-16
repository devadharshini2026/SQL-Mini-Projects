CREATE DATABASE EmployeeDB;
USE EmployeeDB;

-- Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

-- Jobs table
CREATE TABLE Jobs (
    JobID INT PRIMARY KEY,
    JobTitle VARCHAR(100),
    MinSalary DECIMAL(10,2),
    MaxSalary DECIMAL(10,2)
);

-- Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    DepartmentID INT,
    JobID INT,
    Salary DECIMAL(10,2),
    HireDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    FOREIGN KEY (JobID) REFERENCES Jobs(JobID)
);
