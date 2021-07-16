SELECT name AS warehouse_name,
       SUM(units * Width * Length * Height) AS volume
FROM Warehouse W
LEFT JOIN Products P 
ON W.product_id = P.product_id
GROUP BY name
