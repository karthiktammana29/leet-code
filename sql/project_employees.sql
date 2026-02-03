--Write an SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits.

select p.project_id, ROUND(AVG(e.experience_years),2) as average_years
from
employee e
left join project p
on e.employee_id = p.employee_id
where project_id is not null
group by project_id