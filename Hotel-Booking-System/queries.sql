USE hotel_booking;

-- 1. Find all available rooms in a given hotel
SELECT h.hotel_name, r.room_number, r.room_type, r.price
FROM Rooms r
JOIN Hotels h ON r.hotel_id = h.hotel_id
WHERE h.hotel_name = 'Taj Palace' AND r.is_available = TRUE;

-- 2. Show total revenue per hotel
SELECT h.hotel_name, SUM(b.total_amount) AS total_revenue
FROM Bookings b
JOIN Rooms r ON b.room_id = r.room_id
JOIN Hotels h ON r.hotel_id = h.hotel_id
GROUP BY h.hotel_name
ORDER BY total_revenue DESC;

-- 3. Find customers with multiple bookings
SELECT c.customer_name, COUNT(b.booking_id) AS total_bookings
FROM Customers c
JOIN Bookings b ON c.customer_id = b.customer_id
GROUP BY c.customer_name
HAVING total_bookings > 1;

-- 4. Show occupancy rate per hotel
SELECT h.hotel_name,
       COUNT(b.booking_id) / COUNT(r.room_id) * 100 AS occupancy_rate
FROM Hotels h
JOIN Rooms r ON h.hotel_id = r.hotel_id
LEFT JOIN Bookings b ON r.room_id = b.room_id
GROUP BY h.hotel_name;

-- 5. Show all bookings with customer and room details
SELECT b.booking_id, c.customer_name, h.hotel_name, r.room_type, b.check_in, b.check_out, b.total_amount
FROM Bookings b
JOIN Customers c ON b.customer_id = c.customer_id
JOIN Rooms r ON b.room_id = r.room_id
JOIN Hotels h ON r.hotel_id = h.hotel_id;
