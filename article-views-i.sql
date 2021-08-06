If with distinct keyword,
SELECT DISTINCT author_id AS id FROM Views 
where author_id = viewer_id 
ORDER BY id
If order by first, we need another Select and alias
SELECT id from (SELECT author_id AS id FROM Views 
where author_id = viewer_id 
ORDER BY id)a
GROUP BY id
If just with group by (automatically sorted by id)
SELECT author_id AS id FROM Views 
where author_id = viewer_id 
GROUP BY id
