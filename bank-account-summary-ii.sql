select
    a.name,
    sum(b.amount) balance
from
    Users a
join
    Transactions b
on
    a.account = b.account
group by
    a.account
having
    balance > 10000;


/////////////


with tmp as(
select t.account, u.name, sum(amount) as balance
from Transactions t
left join Users u on t.account = u.account
group by account )

select name, balance
from tmp
where balance > 10000

///////


select name, sum(amount) balance
from users
left join transactions
using(account)
group by account
having balance > 10000
