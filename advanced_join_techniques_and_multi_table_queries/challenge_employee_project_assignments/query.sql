SELECT e.name, p.project_name, d.department_name
FROM employees e
INNER JOIN assignments a
    ON a.employee_id = e.employee_id
INNER JOIN projects p 
ON p.project_id = a.project_id
INNER JOIN departments d 
ON p.department_id = d.department_id
