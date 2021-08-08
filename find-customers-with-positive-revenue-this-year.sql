I see solutions with and without groupby. Seeing the example it is intuitive to think of using groupby and i used the same but many solutions are not using groupby so it made me think,and lead to this post to help others like me. group by is not required as it is given in question customer_id and year is a primary key so there won't be multiple revenues of same customer for the year 2021 as it would lead to PRIMARY KEY constraint violation.

Select customer_id from Customers where year = 2021 and revenue > 0;

So the above sql statement works like charm.


/////

select customer_id
from Customers
where year = 2021 and revenue > 0
