-- 1. List all books
SELECT * FROM Books;

-- 2. List books by a specific author
SELECT * FROM Books
WHERE Author = 'George Orwell';

-- 3. List books by genre
SELECT * FROM Books
WHERE Genre = 'Programming';

-- 4. Sort books by rating
SELECT * FROM Books
ORDER BY Rating DESC;

-- 5. Filter by genre and sort by year
SELECT * FROM Books
WHERE Genre = 'Fiction'
ORDER BY YearPublished DESC;
