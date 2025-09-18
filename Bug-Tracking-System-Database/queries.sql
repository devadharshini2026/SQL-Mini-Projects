USE bug_tracking;

-- 1. Find open bugs by project
SELECT p.project_name, COUNT(b.bug_id) AS open_bugs
FROM Projects p
JOIN Bugs b ON p.project_id = b.project_id
WHERE b.status IN ('Open','In Progress')
GROUP BY p.project_name;

-- 2. Find bugs assigned to each developer
SELECT u.username, COUNT(b.bug_id) AS total_assigned
FROM Users u
JOIN Bugs b ON u.user_id = b.assigned_to
WHERE u.role = 'Developer'
GROUP BY u.username;

-- 3. Find most reported bug severity
SELECT severity, COUNT(*) AS total_bugs
FROM Bugs
GROUP BY severity
ORDER BY total_bugs DESC;

-- 4. Find average resolution time of resolved bugs
SELECT AVG(DATEDIFF(resolved_date, created_date)) AS avg_resolution_days
FROM Bugs
WHERE resolved_date IS NOT NULL;

-- 5. Find developers with most resolved bugs
SELECT u.username, COUNT(b.bug_id) AS resolved_count
FROM Users u
JOIN Bugs b ON u.user_id = b.assigned_to
WHERE b.status = 'Resolved' OR b.status = 'Closed'
GROUP BY u.username
ORDER BY resolved_count DESC;
