USE employee_bonus;

-- Insert departments
INSERT INTO Departments (dept_name) VALUES
('HR'), ('IT'), ('Finance'), ('Marketing');

-- Insert employees
INSERT INTO Employees (emp_name, salary, dept_id) VALUES
('Arjun', 45000, 1),
('Priya', 60000, 2),
('Karthik', 75000, 2),
('Meera', 50000, 3),
('Ravi', 85000, 3),
('Divya', 40000, 4),
('Suresh', 30000, 1);
