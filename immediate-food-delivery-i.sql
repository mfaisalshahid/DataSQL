select round(100 * sum(order_date = customer_pref_delivery_date) / count(*), 2) as immediate_percentage from Delivery;

///

SELECT ROUND(100*AVG(order_date = customer_pref_delivery_date), 2) AS immediate_percentage
FROM Delivery;

///
select 
    round(
	(select count(*) from delivery where order_date = customer_pref_delivery_date)
	/ 
	(select count(*) from delivery) * 100
	, 2
	) 
	as 
	immediate_percentage;
