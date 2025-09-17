USE hospital_management;

-- Insert doctors
INSERT INTO Doctors (doctor_name, specialization, email) VALUES
('Dr. Arjun', 'Cardiology', 'arjun@hospital.com'),
('Dr. Meera', 'Orthopedics', 'meera@hospital.com'),
('Dr. Ravi', 'Neurology', 'ravi@hospital.com'),
('Dr. Sneha', 'Pediatrics', 'sneha@hospital.com');

-- Insert patients
INSERT INTO Patients (patient_name, age, gender, phone) VALUES
('Rahul', 30, 'Male', '9876543210'),
('Priya', 25, 'Female', '8765432109'),
('Karan', 40, 'Male', '7654321098'),
('Ananya', 35, 'Female', '6543210987');

-- Insert appointments
INSERT INTO Appointments (patient_id, doctor_id, appointment_date) VALUES
(1, 1, '2025-09-10'),
(2, 2, '2025-09-12'),
(3, 1, '2025-09-14'),
(4, 3, '2025-09-15'),
(2, 4, '2025-09-16');

-- Insert treatments
INSERT INTO Treatments (patient_id, treatment_description, treatment_date) VALUES
(1, 'Heart check-up and ECG', '2025-09-10'),
(2, 'Fracture treatment', '2025-09-12'),
(3, 'Neurological tests', '2025-09-14'),
(4, 'General pediatrics consultation', '2025-09-15');
