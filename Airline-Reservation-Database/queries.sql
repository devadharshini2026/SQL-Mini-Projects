USE airline_reservation;

-- 1. Find all passengers on a given flight
SELECT f.flight_number, p.passenger_name, r.seat_number
FROM Reservations r
JOIN Flights f ON r.flight_id = f.flight_id
JOIN Passengers p ON r.passenger_id = p.passenger_id
WHERE f.flight_number = 'AI101';

-- 2. Show all flights between two cities
SELECT flight_number, departure_time, arrival_time
FROM Flights
WHERE origin = 'Mumbai' AND destination = 'Chennai';

-- 3. Find the most booked flights
SELECT f.flight_number, COUNT(r.reservation_id) AS total_bookings
FROM Reservations r
JOIN Flights f ON r.flight_id = f.flight_id
GROUP BY f.flight_number
ORDER BY total_bookings DESC;

-- 4. Show passengers who booked more than one flight
SELECT p.passenger_name, COUNT(r.reservation_id) AS bookings
FROM Passengers p
JOIN Reservations r ON p.passenger_id = r.passenger_id
GROUP BY p.passenger_name
HAVING bookings > 1;

-- 5. Show all reservations for a passenger
SELECT p.passenger_name, f.flight_number, f.origin, f.destination, r.seat_number
FROM Reservations r
JOIN Passengers p ON r.passenger_id = p.passenger_id
JOIN Flights f ON r.flight_id = f.flight_id
WHERE p.passenger_name = 'Arjun Mehta';
