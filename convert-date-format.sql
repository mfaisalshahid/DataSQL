SELECT DATE_FORMAT(day, "%W, %M %e, %Y") AS day
FROM Days
////

MySQL

SELECT date_format(day,'%W, %M %e, %Y') AS day FROM Days
MsSQL

SELECT format(day,'D') AS day FROM Days
ORACLE

SELECT TO_CHAR(Day,'fmDay, fmMonth fmdd, YYYY') AS day FROM Days
