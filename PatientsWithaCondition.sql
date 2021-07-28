SELECT * FROM PATIENTS WHERE
CONDITIONS LIKE '% DIAB1%' OR
CONDITIONS LIKE 'DIAB1%';

# //////////////////////

select patient_id,
       patient_name,
       conditions
from   patients
where  regexp_like(conditions, ' +DIAB1|^DIAB1')

# //////////////////////

SELECT * FROM Patients
WHERE conditions REGEXP '^DIAB1| DIAB1';
