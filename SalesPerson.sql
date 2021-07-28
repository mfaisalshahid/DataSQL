SELECT
    s.name
FROM
    salesperson s
WHERE
    s.sales_id NOT IN (SELECT
            o.sales_id
        FROM
            orders o
                LEFT JOIN
            company c ON o.com_id = c.com_id
        WHERE
            c.name = 'RED')
;

# ///////////////////
select name
from salesperson
where sales_id not in (
	select o.sales_id
	from orders o
	join company c on o.com_id = c.com_id
	where c.name = 'red'
)
