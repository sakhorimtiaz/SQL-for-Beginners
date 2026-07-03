
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
