# 📘 Student Marks Report – SQL Mini Project

## 📖 Project Overview  
This project is a simple **SQL mini-project** that manages students, subjects, and marks. It demonstrates the use of:  
- **Database creation**  
- **Table relationships (foreign keys)**  
- **Insert statements**  
- **Aggregate functions (AVG, SUM, MAX)**  
- **Joins and subqueries**  

The project is useful for learning **SQL fundamentals** and practicing database queries.

---

## 🗂️ Project Structure
```
Student-Marks-Report/
├── create_tables.sql   # Creates Students, Subjects, and Marks tables
├── insert_data.sql     # Inserts sample records into the tables
├── queries.sql         # Contains sample queries (reports)
└── README.md           # Documentation for the project
```

---

## 🛠️ Setup Instructions  

### 1. Create Database & Tables
Run:
```sql
SOURCE create_tables.sql;
```

### 2. Insert Sample Data
Run:
```sql
SOURCE insert_data.sql;
```

### 3. Run Queries
Execute:
```sql
SOURCE queries.sql;
```

Or copy queries individually into **MySQL Workbench**.

---

## 📊 Example Queries  

### 🔹 Show all marks with student and subject
```sql
SELECT s.Name, sub.SubjectName, m.MarksObtained
FROM Marks m
JOIN Students s ON m.StudentID = s.StudentID
JOIN Subjects sub ON m.SubjectID = sub.SubjectID;
```

### 🔹 Average marks per student
```sql
SELECT s.Name, AVG(m.MarksObtained) AS AverageMarks
FROM Marks m
JOIN Students s ON m.StudentID = s.StudentID
GROUP BY s.Name;
```

### 🔹 Topper in each subject
```sql
SELECT sub.SubjectName, s.Name, m.MarksObtained
FROM Marks m
JOIN Students s ON m.StudentID = s.StudentID
JOIN Subjects sub ON m.SubjectID = sub.SubjectID
WHERE (sub.SubjectID, m.MarksObtained) IN (
    SELECT SubjectID, MAX(MarksObtained)
    FROM Marks
    GROUP BY SubjectID
);
```

### 🔹 Overall topper
```sql
SELECT s.Name, SUM(m.MarksObtained) AS TotalMarks
FROM Marks m
JOIN Students s ON m.StudentID = s.StudentID
GROUP BY s.Name
ORDER BY TotalMarks DESC
LIMIT 1;
```

---

## ✅ Concepts Covered
- Database design & schema creation  
- Foreign key relationships  
- Inserting data  
- SQL Joins (INNER JOIN)  
- Aggregate functions: `AVG()`, `SUM()`, `MAX()`  
- Subqueries  

---

## 🚀 Next Steps  
- Add more students and subjects  
- Add a **Grade system** (A/B/C/D) using `CASE WHEN`  
- Create a **view** for easy reporting  
