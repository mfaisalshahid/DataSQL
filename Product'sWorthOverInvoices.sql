select
p.name name,
sum(coalesce(i.rest,0)) rest,
sum(coalesce(i.paid,0)) paid,
sum(coalesce(i.canceled,0)) canceled,
sum(coalesce(i.refunded,0)) refunded
from product p
left join invoice i
on p.product_id = i.product_id
group by p.name
order by p.name
