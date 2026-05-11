-- Write your code here
SELECT 
    o.order_id, o.order_date, o.amount, c.name AS customer_name
    FROM customers c 
RIGHT JOIN orders o 
ON c.customer_id = o.customer_id
ORDER BY
    CASE
        WHEN c.customer_id IS NULL 
             OR o.order_id IS NULL THEN 0
        ELSE 1
    END,
o.order_date