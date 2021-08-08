SELECT user_id, concat(upper(substring(name,1,1)),lower(substring(name,2,length(name)-1))) as name FROM Users
order by user_id

///////

select user_id
         , concat(upper(substring(name, 1,1)), lower(substring(name,2))) as name
from users
order by 1

///////

select
user_id,
concat(Upper(left(name,1)),right(name,(length(name)-1))) as name
from
(
select
user_id
,lower(name) as name
from Users) a
order by user_id
