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
