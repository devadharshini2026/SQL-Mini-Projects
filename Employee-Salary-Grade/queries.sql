USE employee_salary_grade;

-- 1. Find the grade of each employee
SELECT e.emp_name, e.salary, g.grade
FROM Employees e
JOIN SalaryGrades g
ON e.salary BETWEEN g.min_salary AND g.max_salary;

-- 2. List employees per grade
SELECT g.grade, GROUP_CONCAT(e.emp_name SEPARATOR ', ') AS employees
FROM SalaryGrades g
LEFT JOIN Employees e
ON e.salary BETWEEN g.min_salary AND g.max_salary
GROUP BY g.grade;

-- 3. Show average salary by grade
SELECT g.grade, AVG(e.salary) AS avg_salary
FROM SalaryGrades g
JOIN Employees e
ON e.salary BETWEEN g.min_salary AND g.max_salary
GROUP BY g.grade;

-- 4. Find highest-paid employee in each grade
SELECT g.grade, e.emp_name, e.salary
FROM SalaryGrades g
JOIN Employees e
ON e.salary BETWEEN g.min_salary AND g.max_salary
WHERE e.salary = (
    SELECT MAX(salary) 
    FROM Employees 
    WHERE salary BETWEEN g.min_salary AND g.max_salary
);
