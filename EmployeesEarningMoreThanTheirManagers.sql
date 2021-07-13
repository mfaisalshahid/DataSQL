SELECT name AS Employee
FROM Employee AS a JOIN Employee AS b ON a.managerID = b.ID
AND a.Salary > b.Salary
 

////////////////////////////////////////



SELECT a.name AS 'Employee'
FROM Employee AS a,
     Employee AS b
WHERE a.managerID = b.ID
AND a.Salary > b.Salary
