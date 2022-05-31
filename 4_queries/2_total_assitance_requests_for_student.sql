SELECT count(*) 
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
WHERE students.name = 'Elliot Dickinson';