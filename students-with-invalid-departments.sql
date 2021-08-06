SELECT id, name FROM Students
WHERE department_id not in (SELECT id from Departments)

/////

SELECT s.id, s.name
FROM Departments d
RIGHT JOIN Students s
ON d.id = s.department_id
WHERE d.id IS NULL

Solution 2:

SELECT id, name
FROM Students 
WHERE department_id NOT IN (SELECT id FROM Departments)


//////

sub-query + in
# Write your MySQL query statement below
SELECT id, name
FROM Students
WHERE department_id NOT IN (
    SELECT id 
    FROM Departments
)
sub-query + left join
# Write your MySQL query statement below
SELECT id, sname AS name
FROM (
    SELECT s.id, s.name AS sname, d.name AS dname
FROM Students s
LEFT JOIN Departments d
ON s.department_id = d.id
) AS ljt
WHERE dname IS NULL
EXISTS
# Write your MySQL query statement below
SELECT id, name
FROM Students s
WHERE NOT EXISTS (
    SELECT id
    FROM Departments 
    WHERE id = s.department_id
)
