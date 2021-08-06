SELECT student.student_id,student.student_name,subject.subject_name,COUNT(exam.subject_name) as attended_exams
FROM Students as student
JOIN Subjects as subject
LEFT JOIN Examinations as exam
ON student.student_id=exam.student_id AND subject.subject_name=exam.subject_name
GROUP BY student.student_id,subject.subject_name
ORDER BY student_id,subject_name;

///
\
JOIN (302ms, 99.60%):

SELECT 
    student_id, 
    student_name, 
    subject_name, 
    IFNULL(attended_exams, 0) AS attended_exams
FROM 
    Students 
    CROSS JOIN Subjects
    LEFT JOIN (SELECT student_id, subject_name, COUNT(*) AS attended_exams 
               FROM Examinations 
               GROUP BY student_id, subject_name) a USING (student_id, subject_name)
ORDER BY student_id, subject_name;
////


Alternatively (1351ms, 14.91%):

SELECT 
    student_id, 
    student_name, 
    subject_name, 
    COUNT(a.subject_name) AS attended_exams
FROM 
    Students 
    CROSS JOIN Subjects
    LEFT JOIN Examinations a USING (student_id, subject_name)
GROUP BY student_id, subject_name
ORDER BY student_id, subject_name;
