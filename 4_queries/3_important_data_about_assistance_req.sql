SELECT teachers.name teacher, students.name student, assignments.name assignment, (completed_at - started_at) AS duration
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id  = assistance_requests.student_id
JOIN assignments ON assignments.id = assistance_requests.id
ORDER BY duration
