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
