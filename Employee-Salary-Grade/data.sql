USE employee_salary_grade;

-- Insert departments
INSERT INTO Departments (dept_name) VALUES
('HR'),
('Finance'),
('Engineering'),
('Sales');

-- Insert employees
INSERT INTO Employees (emp_name, dept_id, salary) VALUES
('Arjun', 1, 30000),
('Meera', 2, 45000),
('Ravi', 3, 60000),
('Sneha', 4, 50000),
('Kiran', 3, 75000),
('Divya', 2, 40000);

-- Insert salary grades
INSERT INTO SalaryGrades (grade, min_salary, max_salary) VALUES
('A', 20000, 39999),
('B', 40000, 59999),
('C', 60000, 79999),
('D', 80000, 100000);
