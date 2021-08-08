select seller_name
from seller s
left join (select seller_id, customer_id
          from orders
          where year(sale_date)=2020) o
using(seller_id)
where o.customer_id is null
order by 1

/////////////////////////

select seller_name
from seller
where seller_id not in (
    select seller_id
    from orders
    where date_format(sale_date, '%Y') = '2020'
)
order by 1


or left(sale_date,4)='2020'
or substr(sale_date, 1, 4) = '2020'
