-- Show all marks
SELECT s.Name, sub.SubjectName, m.MarksObtained
FROM Marks m
JOIN Students s ON m.StudentID = s.StudentID
JOIN Subjects sub ON m.SubjectID = sub.SubjectID;
-- Average marks per student
SELECT s.Name, AVG(m.MarksObtained) AS AverageMarks
FROM Marks m
JOIN Students s ON m.StudentID = s.StudentID
GROUP BY s.Name;
-- Topper in each subject
SELECT sub.SubjectName, s.Name, m.MarksObtained
FROM Marks m
JOIN Students s ON m.StudentID = s.StudentID
JOIN Subjects sub ON m.SubjectID = sub.SubjectID
WHERE (sub.SubjectID, m.MarksObtained) IN (
    SELECT SubjectID, MAX(MarksObtained)
    FROM Marks
    GROUP BY SubjectID
);
-- Overall topper
SELECT s.Name, SUM(m.MarksObtained) AS TotalMarks
FROM Marks m
JOIN Students s ON m.StudentID = s.StudentID
GROUP BY s.Name
ORDER BY TotalMarks DESC
LIMIT 1;

