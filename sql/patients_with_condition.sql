--Write a solution to find the patient_id, patient_name, and conditions of the patients who have Type I Diabetes. Type I Diabetes always starts with DIAB1 prefix.
--Need to check for multiple conditions, using regex is better


select patient_id, patient_name, conditions
from patients
where conditions ~ '(^| )DIAB1'