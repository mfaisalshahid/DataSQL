select
distinct c.user_id
from confirmations c
join confirmations d
on c.user_id=d.user_id and c.time_stamp>d.time_stamp and 
timestampdiff(second, d.time_stamp,c.time_stamp)<=86400

////

SELECT DISTINCT b.user_id FROM Confirmations a, Confirmations b
WHERE a.user_id = b.user_id
AND (b.time_stamp BETWEEN a.time_stamp AND ADDDATE(a.time_stamp, INTERVAL 24 HOUR)) 
AND a.time_stamp != b.time_stamp
