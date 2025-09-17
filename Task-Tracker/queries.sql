USE task_tracker;

-- 1. List tasks assigned to each user
SELECT u.user_name, t.task_title, t.due_date, t.status
FROM Tasks t
JOIN Users u ON t.assigned_to = u.user_id
ORDER BY u.user_name, t.due_date;

-- 2. Find overdue tasks (past due date and not completed)
SELECT task_title, due_date
FROM Tasks
WHERE due_date < CURDATE() AND status <> 'Completed';

-- 3. Show completed vs pending tasks
SELECT status, COUNT(*) AS task_count
FROM Tasks
GROUP BY status;

-- 4. Count tasks per user
SELECT u.user_name, COUNT(t.task_id) AS total_tasks
FROM Users u
LEFT JOIN Tasks t ON u.user_id = t.assigned_to
GROUP BY u.user_name;
