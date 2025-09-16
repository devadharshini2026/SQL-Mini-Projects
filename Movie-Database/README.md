# 🎬 Movie Database – SQL Mini Project

## 📖 Project Overview  
This project is a simple **SQL mini-project** that manages a movie database with **movies, directors, genres, and ratings**. It demonstrates the use of:  
- **Database creation**  
- **Relationships (foreign keys)**  
- **Insert statements**  
- **Joins and filters**  
- **Aggregate queries (average rating, count, etc.)**  

---

## 🗂️ Project Structure
```
Movie-Database/
├── create_tables.sql   # Creates Movies, Directors, Genres, Ratings tables
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
CREATE DATABASE MovieDB;
USE MovieDB;

-- Directors table
CREATE TABLE Directors (
    DirectorID INT PRIMARY KEY,
    Name VARCHAR(100),
    Country VARCHAR(50)
);

-- Genres table
CREATE TABLE Genres (
    GenreID INT PRIMARY KEY,
    GenreName VARCHAR(50)
);

-- Movies table
CREATE TABLE Movies (
    MovieID INT PRIMARY KEY,
    Title VARCHAR(100),
    DirectorID INT,
    GenreID INT,
    ReleaseYear INT,
    FOREIGN KEY (DirectorID) REFERENCES Directors(DirectorID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);

-- Ratings table
CREATE TABLE Ratings (
    RatingID INT PRIMARY KEY,
    MovieID INT,
    UserName VARCHAR(50),
    Rating DECIMAL(2,1),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);
```

---

### 🔹 `insert_data.sql`
```sql
-- Insert Directors
INSERT INTO Directors VALUES (1, 'Christopher Nolan', 'UK');
INSERT INTO Directors VALUES (2, 'Steven Spielberg', 'USA');
INSERT INTO Directors VALUES (3, 'S.S. Rajamouli', 'India');

-- Insert Genres
INSERT INTO Genres VALUES (1, 'Sci-Fi');
INSERT INTO Genres VALUES (2, 'Action');
INSERT INTO Genres VALUES (3, 'Drama');

-- Insert Movies
INSERT INTO Movies VALUES (1, 'Inception', 1, 1, 2010);
INSERT INTO Movies VALUES (2, 'Jurassic Park', 2, 2, 1993);
INSERT INTO Movies VALUES (3, 'RRR', 3, 2, 2022);
INSERT INTO Movies VALUES (4, 'Interstellar', 1, 1, 2014);

-- Insert Ratings
INSERT INTO Ratings VALUES (1, 1, 'Alice', 4.8);
INSERT INTO Ratings VALUES (2, 1, 'Bob', 4.7);
INSERT INTO Ratings VALUES (3, 2, 'Charlie', 4.6);
INSERT INTO Ratings VALUES (4, 3, 'David', 4.9);
INSERT INTO Ratings VALUES (5, 4, 'Eve', 4.9);
```

---

### 🔹 `queries.sql`
```sql
-- Show all movies with director and genre
SELECT m.Title, d.Name AS Director, g.GenreName, m.ReleaseYear
FROM Movies m
JOIN Directors d ON m.DirectorID = d.DirectorID
JOIN Genres g ON m.GenreID = g.GenreID;

-- Movies by a specific director
SELECT Title, ReleaseYear
FROM Movies m
JOIN Directors d ON m.DirectorID = d.DirectorID
WHERE d.Name = 'Christopher Nolan';

-- Average rating of each movie
SELECT m.Title, AVG(r.Rating) AS AvgRating
FROM Movies m
JOIN Ratings r ON m.MovieID = r.MovieID
GROUP BY m.Title
ORDER BY AvgRating DESC;

-- Count of movies per genre
SELECT g.GenreName, COUNT(*) AS MovieCount
FROM Movies m
JOIN Genres g ON m.GenreID = g.GenreID
GROUP BY g.GenreName;
```

---

## ✅ Concepts Covered
- Database design & schema creation  
- Relationships & foreign keys  
- Insert statements  
- SQL Joins  
- Aggregates (`AVG`, `COUNT`, `GROUP BY`)  
- Filtering with `WHERE`  

---

## 🚀 Next Steps
- Add **Actors** table (many-to-many with Movies)  
- Add **BoxOffice table** (earnings per movie)  
- Create a **view for Top 5 highest-rated movies**  
