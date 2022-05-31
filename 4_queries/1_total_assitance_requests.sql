SELECT count(*)
FROM assistance_requests 
WHERE teacher_id = (
  SELECT id 
  FROM teachers 
  WHERE name = 'Waylon Boehm'
);