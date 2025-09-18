USE social_media_analytics;

-- 1. Find the most active users (by posts)
SELECT u.username, COUNT(p.post_id) AS total_posts
FROM Users u
LEFT JOIN Posts p ON u.user_id = p.user_id
GROUP BY u.username
ORDER BY total_posts DESC;

-- 2. Find top posts by likes
SELECT p.post_id, u.username, COUNT(l.like_id) AS total_likes
FROM Posts p
JOIN Users u ON p.user_id = u.user_id
LEFT JOIN Likes l ON p.post_id = l.post_id
GROUP BY p.post_id, u.username
ORDER BY total_likes DESC;

-- 3. Find top posts by comments
SELECT p.post_id, u.username, COUNT(c.comment_id) AS total_comments
FROM Posts p
JOIN Users u ON p.user_id = u.user_id
LEFT JOIN Comments c ON p.post_id = c.post_id
GROUP BY p.post_id, u.username
ORDER BY total_comments DESC;

-- 4. Show engagement rate of users (likes + comments per post)
SELECT u.username,
       COUNT(DISTINCT p.post_id) AS total_posts,
       COUNT(DISTINCT l.like_id) AS total_likes,
       COUNT(DISTINCT c.comment_id) AS total_comments,
       ROUND((COUNT(DISTINCT l.like_id) + COUNT(DISTINCT c.comment_id)) /
             NULLIF(COUNT(DISTINCT p.post_id),0),2) AS engagement_rate
FROM Users u
LEFT JOIN Posts p ON u.user_id = p.user_id
LEFT JOIN Likes l ON p.post_id = l.post_id
LEFT JOIN Comments c ON p.post_id = c.post_id
GROUP BY u.username;

-- 5. Find trending posts in February 2025 (most likes + comments)
SELECT p.post_id, u.username,
       COUNT(DISTINCT l.like_id) + COUNT(DISTINCT c.comment_id) AS engagement_score
FROM Posts p
JOIN Users u ON p.user_id = u.user_id
LEFT JOIN Likes l ON p.post_id = l.post_id AND MONTH(l.like_date) = 2 AND YEAR(l.like_date) = 2025
LEFT JOIN Comments c ON p.post_id = c.post_id AND MONTH(c.comment_date) = 2 AND YEAR(c.comment_date) = 2025
WHERE MONTH(p.post_date) = 2 AND YEAR(p.post_date) = 2025
GROUP BY p.post_id, u.username
ORDER BY engagement_score DESC;
