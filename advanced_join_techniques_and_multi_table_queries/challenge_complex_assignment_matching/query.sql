-- Write your code here
Select a.assignment_id,
    e.name as employee_name,
    p.project_name,
    d.department_name
FROM assignments a
INNER JOIN employees e
ON e.employee_id = a.employee_id
Inner JOIN projects p 
ON p.project_id = a.project_id
INNER JOIN departments d 
ON d.department_id = p.department_id