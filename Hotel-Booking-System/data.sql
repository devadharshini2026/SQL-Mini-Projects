USE hotel_booking;

-- Insert hotels
INSERT INTO Hotels (hotel_name, city, rating) VALUES
('Taj Palace', 'Delhi', 5),
('ITC Grand', 'Bangalore', 4),
('Hyatt Regency', 'Chennai', 5);

-- Insert rooms
INSERT INTO Rooms (hotel_id, room_number, room_type, price, is_available) VALUES
(1, '101', 'Deluxe', 5000.00, TRUE),
(1, '102', 'Suite', 8000.00, TRUE),
(2, '201', 'Standard', 3000.00, TRUE),
(2, '202', 'Deluxe', 4500.00, TRUE),
(3, '301', 'Suite', 9000.00, TRUE);

-- Insert customers
INSERT INTO Customers (customer_name, phone, email) VALUES
('Arjun Mehta', '9876543210', 'arjun@example.com'),
('Meera Singh', '8765432109', 'meera@example.com'),
('Ravi Kumar', '7654321098', 'ravi@example.com');

-- Insert bookings
INSERT INTO Bookings (customer_id, room_id, check_in, check_out, total_amount) VALUES
(1, 1, '2025-09-10', '2025-09-12', 10000.00),
(2, 2, '2025-09-11', '2025-09-13', 16000.00),
(3, 3, '2025-09-12', '2025-09-14', 6000.00);
