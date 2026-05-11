

SELECT
  e.name AS employee_name,
  m.name AS manager_name
FROM employees AS e
LEFT JOIN employees AS m
  ON e.manager_id = m.employee_id;