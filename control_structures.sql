DECLARE
	sales double precision:=0.00;
	KPI double precision:=322966.749;
BEGIN
	select sum(total) into sales from supermarket_sales;
	IF sales < KPI THEN
	raise notice 'Sales are below KPT: %', sales;
	ELSIF sales = KPI THEN
	raise notice 'Sales reached the exact KPT: %', sales;
	ELSE 
	raise notice 'Sales exceeds KPT: %', sales;
	END IF;
END $$
