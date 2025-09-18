USE online_quiz;

-- 1. Find scores of each student in SQL Basics Quiz
SELECT s.name, COUNT(sa.answer_id) AS score
FROM Students s
JOIN Student_Answers sa ON s.student_id = sa.student_id
JOIN Options o ON sa.option_id = o.option_id
JOIN Questions q ON sa.question_id = q.question_id
WHERE q.quiz_id = 1 AND o.is_correct = TRUE
GROUP BY s.name;

-- 2. Find top scorer in Advanced SQL Quiz
SELECT s.name, COUNT(sa.answer_id) AS score
FROM Students s
JOIN Student_Answers sa ON s.student_id = sa.student_id
JOIN Options o ON sa.option_id = o.option_id
JOIN Questions q ON sa.question_id = q.question_id
WHERE q.quiz_id = 2 AND o.is_correct = TRUE
GROUP BY s.name
ORDER BY score DESC
LIMIT 1;

-- 3. Find students who attempted all quizzes
SELECT s.name
FROM Students s
JOIN Student_Answers sa ON s.student_id = sa.student_id
JOIN Questions q ON sa.question_id = q.question_id
GROUP BY s.student_id, s.name
HAVING COUNT(DISTINCT q.quiz_id) = (SELECT COUNT(*) FROM Quizzes);

-- 4. Find most difficult question (least correct answers)
SELECT q.question_text, COUNT(sa.answer_id) AS correct_count
FROM Questions q
JOIN Options o ON q.question_id = o.question_id
LEFT JOIN Student_Answers sa ON o.option_id = sa.option_id AND o.is_correct = TRUE
GROUP BY q.question_id, q.question_text
ORDER BY correct_count ASC
LIMIT 1;

-- 5. Find average score per quiz
SELECT q.title, AVG(student_score) AS avg_score
FROM (
    SELECT q.quiz_id, sa.student_id, COUNT(*) AS student_score
    FROM Student_Answers sa
    JOIN Options o ON sa.option_id = o.option_id
    JOIN Questions q ON sa.question_id = q.question_id
    WHERE o.is_correct = TRUE
    GROUP BY q.quiz_id, sa.student_id
) AS scores
JOIN Quizzes q ON scores.quiz_id = q.quiz_id
GROUP BY q.quiz_id, q.title;
