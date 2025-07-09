-- Subqueries: A query with in a query
select*
from employee_demographics
where employee_id in (select employee_id
						from employee_salary
                        where dept_id = 1)
;
                        
                        
-- Average the whole column
SELECT 
  first_name, 
  last_name, 
  salary,
  (SELECT AVG(salary) FROM employee_salary) AS avg_salary
FROM employee_salary;

-- Seubquery in From statement
select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender;

select  avg(max_age)
from
(select gender, avg(age) as avg_age, max(age) as max_age, min(age) as min_age, count(age) as count_age
from employee_demographics
group by gender) as agg_table
;