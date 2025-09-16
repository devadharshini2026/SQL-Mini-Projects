-- Show all employees with department and job title
SELECT e.Name, d.DepartmentName, j.JobTitle, e.Salary, e.HireDate
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
JOIN Jobs j ON e.JobID = j.JobID;

-- Employees in the IT department
SELECT e.Name, j.JobTitle, e.Salary
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
JOIN Jobs j ON e.JobID = j.JobID
WHERE d.DepartmentName = 'IT';

-- Highest paid employee
SELECT Name, Salary
FROM Employees
ORDER BY Salary DESC
LIMIT 1;

-- Count of employees per department
SELECT d.DepartmentName, COUNT(*) AS EmployeeCount
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName;
