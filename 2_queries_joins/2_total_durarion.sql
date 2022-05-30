SELECT SUM(duration) AS total_duration
FROM assignment_submissions
JOIN students ON assignment_submissions.student_id = students.id
WHERE cohort_id = (
    SELECT DISTINCT cohort_id
    FROM cohorts
    JOIN students ON cohorts.id = students.cohort_id
    WHERE cohorts.name = 'FEB12'
);