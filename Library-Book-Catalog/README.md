# 📚 Library Book Catalog – SQL Mini Project

## 📖 Project Overview  
This project is a simple **SQL mini-project** that manages a library catalog with **books, authors, and categories**. It demonstrates the use of:  
- **Database creation**  
- **Relationships (foreign keys)**  
- **Insert statements**  
- **Joins and filters**  
- **Aggregate queries (sorting, top-rated books, etc.)**

---

## 🗂️ Project Structure
```
Library-Book-Catalog/
├── create_tables.sql   # Creates Authors, Categories, and Books tables
├── insert_data.sql     # Inserts sample records into the tables
├── queries.sql         # Contains example queries (reports)
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

## 🏗️ SQL Files  

### 🔹 `create_tables.sql`
```sql
CREATE DATABASE LibraryDB;
USE LibraryDB;

-- Authors table
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    Name VARCHAR(100),
    Country VARCHAR(50)
);

-- Categories table
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50)
);

-- Books table
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    AuthorID INT,
    CategoryID INT,
    PublishedYear INT,
    Rating DECIMAL(2,1),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);
```

---

### 🔹 `insert_data.sql`
```sql
-- Insert Authors
INSERT INTO Authors VALUES (1, 'J.K. Rowling', 'UK');
INSERT INTO Authors VALUES (2, 'George R.R. Martin', 'USA');
INSERT INTO Authors VALUES (3, 'Agatha Christie', 'UK');

-- Insert Categories
INSERT INTO Categories VALUES (1, 'Fantasy');
INSERT INTO Categories VALUES (2, 'Mystery');
INSERT INTO Categories VALUES (3, 'Adventure');

-- Insert Books
INSERT INTO Books VALUES (1, 'Harry Potter', 1, 1, 1997, 4.8);
INSERT INTO Books VALUES (2, 'A Game of Thrones', 2, 1, 1996, 4.7);
INSERT INTO Books VALUES (3, 'Murder on the Orient Express', 3, 2, 1934, 4.6);
INSERT INTO Books VALUES (4, 'The Hobbit', 3, 3, 1937, 4.9);
```

---

### 🔹 `queries.sql`
```sql
-- Show all books with author and category
SELECT b.Title, a.Name AS Author, c.CategoryName, b.PublishedYear, b.Rating
FROM Books b
JOIN Authors a ON b.AuthorID = a.AuthorID
JOIN Categories c ON b.CategoryID = c.CategoryID;

-- Books by a specific author
SELECT b.Title, b.PublishedYear, b.Rating
FROM Books b
JOIN Authors a ON b.AuthorID = a.AuthorID
WHERE a.Name = 'J.K. Rowling';

-- Top-rated books
SELECT Title, Rating
FROM Books
ORDER BY Rating DESC;

-- Count of books per category
SELECT c.CategoryName, COUNT(*) AS BookCount
FROM Books b
JOIN Categories c ON b.CategoryID = c.CategoryID
GROUP BY c.CategoryName;
```

---

## ✅ Concepts Covered
- Database design & schema creation  
- Foreign key relationships  
- Inserting data  
- SQL Joins (INNER JOIN)  
- Aggregate functions: `COUNT()`, `ORDER BY`  
- Filtering with `WHERE`  

---

## 🚀 Next Steps  
- Add a **Borrowers table** to track who borrows which book  
- Add a **Due date system**  
- Create a **view** for top 5 most popular books  

