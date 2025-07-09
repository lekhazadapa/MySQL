-- Unions: Allows us to combine rows together. Union needs two sperate select statements for the two different tables
-- Union defalut has distinct function which prints only the unique values from the both the tables, not the duplicates.
select first_name, last_name
from employee_demographics
union distinct
select first_name, last_name
from employee_salary;

-- Union all prints all the values from both tables even they are duplicate
select first_name, last_name
from employee_demographics
union all
select first_name, last_name
from employee_salary;

-- If we want to seperate the persons on age factor as old
-- No we also want to find out the persons who are the highly paid
-- We also want to use the gender
-- At last we used order by function to order them by the labels
select first_name, last_name, 'old man' as label
from employee_demographics
where age >40 and gender = 'male'
union
select first_name, last_name, 'old lady' as label
from employee_demographics
where age >40 and gender = 'female'
union
select first_name, last_name, 'highly paid employee' as label
from employee_salary
where salary >70000
order by first_name, last_name;