
Select *,
CASE
	WHEN grossincome=15 then
	'Saturated'
	WHEN grossincome>15 then
	'Great job'
	ELSE 'Loss'
	end
	
FROM supermarket_sales WHERE salesmonth=3
and rating<=5
and productline in ('Home and lifestyle','Food and beverages');

SELECT row_id||country_code||to_char(hazard_date,'ddmmyyyy')||upper(left(landslide_size,1)) as book_id
from landslide_records
where trigger_cause='Tropical cyclone';

select sum(total_amt), cat
from retail_transaction T
INNER JOIN retail_customer C ON T.customer_id=C.customer_id
INNER JOIN retail_products P ON T.cat_code=P.cat_code
group by cat order by sum(total_amt) desc
