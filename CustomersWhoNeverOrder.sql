select customers.name as 'Customers'
from customers
where customers.id not in
(
    select customerid from orders
);





//////////// AS JOIN



SELECT Name AS 'Customers'
FROM Customers c
LEFT JOIN Orders o
ON c.Id = o.CustomerId
WHERE o.CustomerId IS NULL
