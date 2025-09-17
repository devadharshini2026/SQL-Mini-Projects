USE library_management;

-- 1. List all borrowed books with member names
SELECT b.title, m.member_name, br.borrow_date, br.return_date
FROM BorrowRecords br
JOIN Books b ON br.book_id = b.book_id
JOIN Members m ON br.member_id = m.member_id;

-- 2. Find overdue books (borrowed more than 14 days ago and not returned)
SELECT b.title, m.member_name, br.borrow_date
FROM BorrowRecords br
JOIN Books b ON br.book_id = b.book_id
JOIN Members m ON br.member_id = m.member_id
WHERE br.return_date IS NULL
  AND br.borrow_date < DATE_SUB(CURDATE(), INTERVAL 14 DAY);

-- 3. Count total books borrowed by each member
SELECT m.member_name, COUNT(br.borrow_id) AS total_borrowed
FROM Members m
LEFT JOIN BorrowRecords br ON m.member_id = br.member_id
GROUP BY m.member_name;

-- 4. Show available vs borrowed books
SELECT 
    SUM(CASE WHEN b.available = TRUE THEN 1 ELSE 0 END) AS available_books,
    SUM(CASE WHEN b.available = FALSE THEN 1 ELSE 0 END) AS borrowed_books
FROM Books b;

-- 5. Find members who have never borrowed a book
SELECT m.member_name
FROM Members m
LEFT JOIN BorrowRecords br ON m.member_id = br.member_id
WHERE br.borrow_id IS NULL;
