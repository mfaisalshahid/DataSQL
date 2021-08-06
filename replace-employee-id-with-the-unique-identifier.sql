SELECT eu.unique_id,
        e.name
FROM Employees as e
LEFT JOIN EmployeeUNI as eu
ON e.id = eu.id;

/////

SELECT unique_id, name
FROM Employees
LEFT JOIN  EmployeeUNI
USING (id)

///
select eu.unique_id, e.name
from employeeuni eu
right join employees e on eu.id= e.id;
