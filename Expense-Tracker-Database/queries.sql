USE expense_tracker;

-- 1. Show all expenses with user and category details
SELECT e.expense_id, u.username, c.category_name, e.amount, e.expense_date
FROM Expenses e
JOIN Users u ON e.user_id = u.user_id
JOIN Categories c ON e.category_id = c.category_id
ORDER BY e.expense_date DESC;

-- 2. Total expenses per user
SELECT u.username, SUM(e.amount) AS total_spent
FROM Users u
JOIN Expenses e ON u.user_id = e.user_id
GROUP BY u.username
ORDER BY total_spent DESC;

-- 3. Total expenses per category
SELECT c.category_name, SUM(e.amount) AS total_spent
FROM Categories c
JOIN Expenses e ON c.category_id = e.category_id
GROUP BY c.category_name
ORDER BY total_spent DESC;

-- 4. Monthly expenses for each user
SELECT u.username, MONTH(e.expense_date) AS month, YEAR(e.expense_date) AS year, SUM(e.amount) AS total_spent
FROM Users u
JOIN Expenses e ON u.user_id = e.user_id
GROUP BY u.username, YEAR(e.expense_date), MONTH(e.expense_date)
ORDER BY year DESC, month DESC;

-- 5. Find users who spent more than 5000 in total
SELECT u.username, SUM(e.amount) AS total_spent
FROM Users u
JOIN Expenses e ON u.user_id = e.user_id
GROUP BY u.username
HAVING SUM(e.amount) > 5000;

-- 6. Top 3 biggest single expenses
SELECT u.username, c.category_name, e.amount, e.expense_date
FROM Expenses e
JOIN Users u ON u.user_id = e.user_id
JOIN Categories c ON e.category_id = c.category_id
ORDER BY e.amount DESC
LIMIT 3;

-- 7. Average spending per category
SELECT c.category_name, AVG(e.amount) AS avg_spent
FROM Categories c
JOIN Expenses e ON c.category_id = e.category_id
GROUP BY c.category_name;

-- 8. Highest spending category per user (FIXED VERSION)
SELECT u.username, c.category_name, SUM(e.amount) AS spent
FROM Users u
JOIN Expenses e ON u.user_id = e.user_id
JOIN Categories c ON e.category_id = c.category_id
GROUP BY u.username, c.category_name
HAVING SUM(e.amount) = (
    SELECT MAX(total_spent)
    FROM (
        SELECT e2.user_id, e2.category_id, SUM(e2.amount) AS total_spent
        FROM Expenses e2
        GROUP BY e2.user_id, e2.category_id
    ) sub
    WHERE sub.user_id = u.user_id
);
