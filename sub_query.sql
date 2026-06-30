/*
SELECT MAX(id) FROM employee;
SELECT * FROM employee WHERE id=97
*/

--SELECT * FROM employee WHERE id= (SELECT MAX(id) FROM employee);
--SELECT first_name, last_name, (SELECT AVG(salary) from employee) as avg_salary FROM employee;
--SELECT customer_id FROM retail_customer WHERE city_code=8 AND gender='M';
SELECT customer_id,total_amt,store_type 
FROM retail_transaction 
WHERE customer_id 
IN (SELECT customer_id FROM retail_customer WHERE city_code=8 AND gender='M');
SELECT 
    t.customer_id,
    t.total_amt,
    t.store_type 
FROM 
    retail_transaction t
INNER JOIN (
    SELECT customer_id 
    FROM retail_customer 
    WHERE city_code = 8 AND gender = 'M'
) c ON t.customer_id = c.customer_id;

SELECT first_name, last_name, (SELECT AVG(salary) from employee) as avg_salary FROM employee;

SELECT 
    e1.first_name, -- Explicitly clear
    e1.last_name,  -- Explicitly clear
    (SELECT AVG(e2.salary) FROM employee e2 WHERE e2.department = e1.department) AS avg_salary
FROM employee e1 
ORDER BY e1.department;
