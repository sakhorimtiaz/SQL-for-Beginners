SELECT * FROM zoo_1
UNION
SELECT * FROM zoo_2
ORDER BY id;

SELECT * FROM zoo_1
UNION ALL
SELECT * FROM zoo_2
ORDER BY id;

SELECT * FROM zoo_1
INTERSECT
SELECT * FROM zoo_2
ORDER BY id;

SELECT * FROM zoo_1
EXCEPT
SELECT * FROM zoo_2
ORDER BY id;

CREATE VIEW city_eight_male_transactions AS
SELECT 
    t.transaction_id,
    t.customer_id,
    t.total_amt,
    t.store_type,
    c.city_code
FROM retail_transaction t
INNER JOIN retail_customer c ON t.customer_id = c.customer_id
WHERE c.city_code = 8 AND c.gender = 'M';
