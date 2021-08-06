select player_id, device_id 
from activity 
where (player_id, event_date) in (
                                select player_id, min(event_date)
                                from activity 
                                group by player_id
                                 ) 
                                 
//////
select player_id, device_id
FROM (
    select player_id, device_id, rank() over(partition by player_id order by event_date asc) as rank
    from activity
) tmp
where tmp.rank = 1
