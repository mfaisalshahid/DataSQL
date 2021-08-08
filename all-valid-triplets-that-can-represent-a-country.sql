SELECT sa.student_name AS member_a
    , sb.student_name AS member_b
    , sc.student_name AS member_c
FROM schoola sa CROSS JOIN schoolb sb 
    CROSS JOIN schoolc sc
        WHERE sa.student_name != sb.student_name 
            AND sa.student_name != sc.student_name
            AND sb.student_name != sc.student_name
            AND sa.student_id != sc.student_id
            AND sb.student_id != sc.student_id
            AND sa.student_id != sb.student_id
////////////

SELECT a.student_name AS member_A, b.student_name AS member_B, c.student_name AS member_C
FROM SchoolA a, SchoolB b, SchoolC c
WHERE (a.student_name<>b.student_name AND a.student_name<>c.student_name AND b.student_name<>c.student_name)
AND (a.student_id<>b.student_id AND a.student_id<>c.student_id AND b.student_id<>c.student_id)
////////////

o-Cartesian Product-o

select a.student_name as member_A, b.student_name as member_B, c.student_name as member_C
FROM SchoolA as a, SchoolB as b, SchoolC as c
WHERE a.student_id != b.student_id AND a.student_id != c.student_id AND b.student_id != c.student_id
AND a.student_name != b.student_name AND a.student_name != c.student_name AND b.student_name != c.student_name
