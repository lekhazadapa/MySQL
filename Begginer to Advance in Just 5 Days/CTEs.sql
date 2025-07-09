-- CTEs: Common Table Expression, which allows us to define a subquerey block that we can reference within the main querey

with CTE_Example as
(
select gender, avg(salary) avg_sal, max(salary) max_sal, min(salary) min_sal, count(salary) count_sal
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender
)
select avg(avg_sal)
from CTE_Example
;

-- Multiple CTEs:
with CTE_Example as
(
select employee_id, gender, birth_date
from employee_demographics
where birth_date > '1985-01-01'
),
CTE_Example2 as
(
select employee_id, salary
from employee_salary
where salary > 50000
)
select *
from CTE_Example
join CTE_Example2
	on CTE_Example.employee_id = CTE_Example2.employee_id
;

-- Column Names:
with CTE_Example (Gender, Avg_Sal, Max_Sal, Min_Sal, Count_Sal) as
(
select gender, avg(salary), max(salary), min(salary), count(salary)
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender
)
select *
from CTE_Example
;