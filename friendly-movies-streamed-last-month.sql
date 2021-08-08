SELECT DISTINCT c.title
FROM Content c
JOIN TVProgram p
    ON c.content_id = p.content_id
WHERE c.Kids_content = 'Y'
    AND c.content_type = 'Movies'
    AND MONTH(p.program_date) = 6
    AND YEAR(p.program_date) = 2020;
    
    
    
/////////

SELECT DISTINCT
	title
FROM
	Content
	INNER JOIN TVProgram ON Content.content_id = TVProgram.content_id
		AND LEFT(program_date, 7) = "2020-06"
		AND Kids_content = 'Y'
		AND content_type = 'Movies'
