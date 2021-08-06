SELECT a.product_id,ROUND(SUM(b.units*a.price)/SUM(b.units),2) as average_price
FROM Prices as a
JOIN UnitsSold as b
ON a.product_id=b.product_id AND (b.purchase_date BETWEEN a.start_date AND a.end_date)
GROUP BY product_id;


////

select 
u.product_id, 
round(sum(u.units * p.price) / sum(u.units), 2) as average_price from 
prices p 
join unitssold u 
on p.product_id = u.product_id 
and u.purchase_date between p.start_date and p.end_date
group by 
u.product_id
