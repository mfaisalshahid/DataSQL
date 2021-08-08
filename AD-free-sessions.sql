SELECT session_id
FROM playback pb LEFT JOIN ads ad
ON pb.customer_id = ad.customer_id
AND ad.timestamp BETWEEN start_time and end_time
WHERE ad.customer_id IS NULL

////


select session_id
from playback
where session_id not in 

    # This is every session that has shown an ad to a customer. 
	# Timestamp needs to be between the start and end time. And the ad has to be shown to the correct viewer.
     (select session_id
    from playback a join ads b
    on timestamp between start_time and end_time
    and a.customer_id = b.customer_id)
