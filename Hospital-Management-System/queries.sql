USE hospital_management;

-- 1. List all appointments for a doctor
SELECT d.doctor_name, p.patient_name, a.appointment_date
FROM Appointments a
JOIN Doctors d ON a.doctor_id = d.doctor_id
JOIN Patients p ON a.patient_id = p.patient_id
WHERE d.doctor_name = 'Dr. Arjun';

-- 2. Show patient history with treatments
SELECT p.patient_name, t.treatment_description, t.treatment_date
FROM Treatments t
JOIN Patients p ON t.patient_id = p.patient_id
ORDER BY t.treatment_date;

-- 3. Count total patients per doctor
SELECT d.doctor_name, COUNT(DISTINCT a.patient_id) AS total_patients
FROM Doctors d
LEFT JOIN Appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_name;

-- 4. Show doctors with no appointments
SELECT d.doctor_name
FROM Doctors d
LEFT JOIN Appointments a ON d.doctor_id = a.doctor_id
WHERE a.appointment_id IS NULL;

-- 5. Find upcoming appointments within next 7 days
SELECT p.patient_name, d.doctor_name, a.appointment_date
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
WHERE a.appointment_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY);
