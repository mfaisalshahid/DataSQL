select left(order_date, 7) month, count(distinct order_id) order_count, count(distinct customer_id) customer_count
from orders
where invoice > 20
group by 1;



//////


select 
 SUBSTRING(order_date, 1, 7) as month,
 count(distinct order_id) as order_count,
 count(distinct customer_id) as customer_count
from
Orders
where invoice > 20
group by
SUBSTRING(order_date, 1, 7)


////

SELECT  DATE_FORMAT(order_date,'%Y-%m') as month,
        COUNT(invoice) AS order_count,
        COUNT(DISTINCT customer_id) AS customer_count
FROM 
    Orders
WHERE 
    invoice > 20
GROUP BY YEAR(order_date), MONTH(order_date)
