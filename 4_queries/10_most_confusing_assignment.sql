SELECT assignments.id, name, day, chapter, count(name) as total_requests
FROM assistance_requests
JOIN assignments ON assistance_requests.assignment_id = assignments.id
GROUP BY assignments.id, name, day, chapter
ORDER BY total_requests DESC;