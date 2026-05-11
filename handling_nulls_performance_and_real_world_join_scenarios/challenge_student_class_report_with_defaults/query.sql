-- Write your code here
SELECT s.name, COALESCE(c.class_name, 'Unassigned') as class_name
FROM students s
LEFT JOIN classes c
ON s.class_id = c.class_id
