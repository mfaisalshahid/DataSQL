SELECT employee_id, department_id 
FROM Employee
WHERE primary_flag = 'Y'
UNION
SELECT employee_id, department_id 
FROM Employee 
GROUP BY employee_id
HAVING COUNT(employee_id) = 1


////////


SELECT EMPLOYEE_ID,DEPARTMENT_ID
FROM
(
SELECT *,COUNT(EMPLOYEE_ID) OVER(PARTITION BY EMPLOYEE_ID) C
FROM EMPLOYEE
)T
WHERE C=1 OR PRIMARY_FLAG='Y'
