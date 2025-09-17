USE automated_reminder_system;

-- 1. Show all reminders due today
SELECT u.user_name, r.reminder_text, r.due_date
FROM Reminders r
JOIN Users u ON r.user_id = u.user_id
WHERE r.due_date = CURDATE();

-- 2. Show overdue reminders
SELECT u.user_name, r.reminder_text, r.due_date
FROM Reminders r
JOIN Users u ON r.user_id = u.user_id
WHERE r.due_date < CURDATE() AND r.status = 'Pending';

-- 3. Show upcoming reminders in the next 7 days
SELECT u.user_name, r.reminder_text, r.due_date
FROM Reminders r
JOIN Users u ON r.user_id = u.user_id
WHERE r.due_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY);

-- 4. Find users with no reminders
SELECT u.user_name
FROM Users u
LEFT JOIN Reminders r ON u.user_id = r.user_id
WHERE r.reminder_id IS NULL;

-- 5. Count completed vs pending reminders per user
SELECT u.user_name,
       SUM(r.status = 'Pending') AS pending_count,
       SUM(r.status = 'Completed') AS completed_count
FROM Users u
LEFT JOIN Reminders r ON u.user_id = r.user_id
GROUP BY u.user_name;
