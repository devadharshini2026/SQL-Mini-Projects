USE airline_reservation;

-- Insert flights
INSERT INTO Flights (flight_number, origin, destination, departure_time, arrival_time) VALUES
('AI101', 'Delhi', 'Mumbai', '2025-09-20 09:00:00', '2025-09-20 11:00:00'),
('AI202', 'Mumbai', 'Chennai', '2025-09-21 14:00:00', '2025-09-21 16:30:00'),
('AI303', 'Chennai', 'Bangalore', '2025-09-22 08:00:00', '2025-09-22 09:15:00'),
('AI404', 'Bangalore', 'Hyderabad', '2025-09-23 18:00:00', '2025-09-23 19:30:00');

-- Insert passengers
INSERT INTO Passengers (passenger_name, passport_number, nationality) VALUES
('Arjun Mehta', 'P12345', 'Indian'),
('Meera Singh', 'P23456', 'Indian'),
('Ravi Kumar', 'P34567', 'Indian'),
('Sneha Iyer', 'P45678', 'Indian');

-- Insert reservations
INSERT INTO Reservations (passenger_id, flight_id, booking_date, seat_number) VALUES
(1, 1, '2025-09-15', '12A'),
(2, 1, '2025-09-15', '12B'),
(3, 2, '2025-09-16', '14C'),
(1, 3, '2025-09-17', '10D'),
(4, 4, '2025-09-18', '16F');
