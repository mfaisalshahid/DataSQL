SELECT project_id
FROM project
GROUP BY project_id
HAVING COUNT(employee_id) =
(
    SELECT count(employee_id)
    FROM project
    GROUP BY project_id
    ORDER BY count(employee_id) desc
    LIMIT 1
)

////
select project_id
from project 
group by project_id
having count(employee_id) = 
     (select max(cnt) 
      from (select project_id, count(distinct employee_id) as cnt
            from project
            group by project_id) as t1)
;
