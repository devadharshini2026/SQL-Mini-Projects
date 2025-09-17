USE event_management;

-- Insert events
INSERT INTO Events (event_name, event_date, location) VALUES
('Tech Conference', '2025-03-10', 'Chennai'),
('Startup Meetup', '2025-03-15', 'Bangalore'),
('AI Workshop', '2025-03-20', 'Hyderabad'),
('Hackathon', '2025-03-25', 'Delhi');

-- Insert participants
INSERT INTO Participants (participant_name, email) VALUES
('Rohan', 'rohan@example.com'),
('Ananya', 'ananya@example.com'),
('Kiran', 'kiran@example.com'),
('Divya', 'divya@example.com'),
('Manish', 'manish@example.com');

-- Insert registrations
INSERT INTO Registrations (event_id, participant_id, registration_date) VALUES
(1, 1, '2025-02-20'),
(1, 2, '2025-02-21'),
(2, 3, '2025-02-22'),
(3, 1, '2025-02-25'),
(3, 4, '2025-02-26'),
(4, 5, '2025-02-28'),
(2, 2, '2025-02-27');
