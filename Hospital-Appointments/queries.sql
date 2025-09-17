USE hospital_appointments;

-- 1. List appointments for each doctor
SELECT d.doctor_name, p.patient_name, a.appointment_date, a.status
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
ORDER BY d.doctor_name, a.appointment_date;

-- 2. Find patients with multiple appointments
SELECT p.patient_name, COUNT(a.appointment_id) AS appointment_count
FROM Patients p
JOIN Appointments a ON p.patient_id = a.patient_id
GROUP BY p.patient_name
HAVING appointment_count > 1;

-- 3. Show doctors with no appointments
SELECT d.doctor_name
FROM Doctors d
LEFT JOIN Appointments a ON d.doctor_id = a.doctor_id
WHERE a.appointment_id IS NULL;

-- 4. Count appointments per doctor
SELECT d.doctor_name, COUNT(a.appointment_id) AS total_appointments
FROM Doctors d
LEFT JOIN Appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_name;
