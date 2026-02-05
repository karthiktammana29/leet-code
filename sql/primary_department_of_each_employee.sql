--Employees can belong to multiple departments. When the employee joins other departments, they need to decide which department is their primary department. Note that when an employee belongs to only one department, their primary column is 'N'.Write a solution to report all the employees with their primary department. For employees who belong to one department, report their only department.
-- When same dataset has to be filtered with 2 different filter criteria, union would be the best option here

SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'

UNION

SELECT employee_id, department_id
FROM Employee
where employee_id IN
(
    select employee_id from employee
    group by employee_id
    having count(employee_id) = 1
)