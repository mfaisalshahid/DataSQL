SELECT query_name 
,  ROUND(AVG(rating*100 / position), 0)/100 AS quality
,  ROUND(AVG(case 
             when rating < 3 then 1 
             else 0 end
            )*100, 2) as poor_query_percentage
FROM Queries
GROUP BY query_nam



SELECT query_name,  
       ROUND(AVG(rating / position), 2) AS quality,  
       ROUND(AVG(rating < 3) * 100, 2) AS poor_query_percentage
FROM Queries
GROUP BY query_name
