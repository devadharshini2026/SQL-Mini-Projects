USE employee_bonus;

-- 1. Calculate 10% bonus for each employee
SELECT emp_name, salary, salary * 0.10 AS bonus
FROM Employees;

-- 2. Find highest salary and bonus in each department
SELECT d.dept_name, MAX(e.salary) AS max_salary, MAX(e.salary * 0.10) AS max_bonus
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- 3. Show total salary + bonus expense per department
SELECT d.dept_name, SUM(e.salary + (e.salary * 0.10)) AS total_expense
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- 4. List employees earning more than 50,000 including bonus
SELECT emp_name, (salary + salary * 0.10) AS total_income
FROM Employees
WHERE (salary + salary * 0.10) > 50000;
