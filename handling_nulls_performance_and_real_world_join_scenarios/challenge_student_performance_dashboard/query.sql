/*-- Write your code here
SELECT s.name as student_name,
    c.class_name, 
    t.name as teacher_name, 
    ROUND(avg(g.score), 2) as avg_grade
FROM teachers t
LEFT JOIN classes c 
ON t.teacher_id = c.teacher_id
LEFT JOIN students s
ON c.class_id = s.class_id
LEFT JOIN grades g
ON s.student_id = g.student_id
GROUP BY s.student_id,s.name, t.name, c.class_name;*/


SELECT
    s.name           AS student_name,
    c.class_name     AS class_name,
    t.name           AS teacher_name,
    ROUND(AVG(g.score), 2) AS average_grade
FROM
    students s
    LEFT JOIN classes  c ON s.class_id   = c.class_id
    LEFT JOIN teachers t ON c.teacher_id = t.teacher_id
    LEFT JOIN grades   g ON s.student_id = g.student_id
GROUP BY
    s.student_id,
    s.name,
    c.class_name,
    t.name;
