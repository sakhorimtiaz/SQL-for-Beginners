SELECT 
    transaction_id,
    store_type,
    total_amt,
    -- Window Function starts here:
    SUM(total_amt) OVER(PARTITION BY store_type) AS store_total
FROM retail_transaction;

SELECT 
    transaction_id,
    customer_id,
    total_amt,
    ROW_NUMBER() OVER(ORDER BY total_amt DESC) AS row_num,
    RANK() OVER(ORDER BY total_amt DESC) AS standard_rank,
    DENSE_RANK() OVER(ORDER BY total_amt DESC) AS dense_rk
FROM retail_transaction;

SELECT 
    transaction_id,
    customer_id,
    total_amt,
    NTILE(3) OVER(ORDER BY total_amt DESC) AS spend_tier
FROM retail_transaction;window_function
