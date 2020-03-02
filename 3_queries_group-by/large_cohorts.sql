SELECT cohorts.name AS name, count(students.*) AS student_count 
FROM cohorts 
JOIN students ON students.cohort_id = cohorts.id 
GROUP BY cohorts.name 
HAVING count(students.*) >=18 
ORDER BY count(students.*);