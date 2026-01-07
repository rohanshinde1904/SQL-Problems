/*
Calculates the difference between the highest salaries in the marketing and engineering departments. Output just the absolute difference in salaries.
db_employee
db_dept
https://platform.stratascratch.com/coding/10308-salaries-differences?code_type=3
*/


with marketing_sal as(
    select max(salary) as marketing_salary from db_employee e join db_dept d on e.department_id = d.id where d.department = 'marketing'
),

engineering_sal as(
    select max(salary) as engineering_sal from db_employee e join db_dept d on e.department_id = d.id 
    where d.department = 'engineering'
)


select abs( marketing_salary - engineering_sal ) from marketing_sal, engineering_sal
