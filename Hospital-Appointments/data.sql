USE hospital_appointments;

-- Insert patients
INSERT INTO Patients (patient_name, age, gender) VALUES
('Aarav', 25, 'Male'),
('Diya', 32, 'Female'),
('Rahul', 40, 'Male'),
('Sneha', 29, 'Female'),
('Vikram', 50, 'Male');

-- Insert doctors
INSERT INTO Doctors (doctor_name, specialization) VALUES
('Dr. Sharma', 'Cardiologist'),
('Dr. Nair', 'Dermatologist'),
('Dr. Kumar', 'Orthopedic'),
('Dr. Mehta', 'Neurologist');

-- Insert appointments
INSERT INTO Appointments (patient_id, doctor_id, appointment_date, status) VALUES
(1, 1, '2025-02-01', 'Completed'),
(2, 2, '2025-02-03', 'Scheduled'),
(3, 1, '2025-02-05', 'Scheduled'),
(4, 3, '2025-02-07', 'Completed'),
(5, 4, '2025-02-10', 'Scheduled'),
(1, 2, '2025-02-12', 'Scheduled');
