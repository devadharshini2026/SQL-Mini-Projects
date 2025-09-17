USE event_management;

-- 1. List participants registered for each event
SELECT e.event_name, p.participant_name, r.registration_date
FROM Registrations r
JOIN Events e ON r.event_id = e.event_id
JOIN Participants p ON r.participant_id = p.participant_id
ORDER BY e.event_name, p.participant_name;

-- 2. Count participants per event
SELECT e.event_name, COUNT(r.participant_id) AS total_participants
FROM Events e
LEFT JOIN Registrations r ON e.event_id = r.event_id
GROUP BY e.event_name;

-- 3. Find participants registered in multiple events
SELECT p.participant_name, COUNT(r.event_id) AS event_count
FROM Participants p
JOIN Registrations r ON p.participant_id = r.participant_id
GROUP BY p.participant_name
HAVING event_count > 1;

-- 4. Show events with no registrations
SELECT e.event_name
FROM Events e
LEFT JOIN Registrations r ON e.event_id = r.event_id
WHERE r.registration_id IS NULL;
