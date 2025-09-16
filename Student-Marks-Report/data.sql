-- Insert Students
INSERT INTO Students (StudentID, Name, Class) VALUES
(1, 'Alice', '10A'),
(2, 'Bob', '10A'),
(3, 'Charlie', '10B');

-- Insert Subjects
INSERT INTO Subjects (SubjectID, SubjectName) VALUES
(1, 'Math'),
(2, 'Science'),
(3, 'English');

-- Insert Marks
INSERT INTO Marks (StudentID, SubjectID, MarksObtained) VALUES
(1, 1, 85), (1, 2, 90), (1, 3, 78),
(2, 1, 70), (2, 2, 65), (2, 3, 80),
(3, 1, 95), (3, 2, 88), (3, 3, 92);
