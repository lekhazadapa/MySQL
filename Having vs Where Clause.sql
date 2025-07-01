-- Having vs Where:
-- Having: After using group by we can filter based on the aggregate functions
select gender, avg(age)
from employee_demographics group by gender having avg(age)>40;
-- We cannot see the female becasue it is less than 40

-- Now we will see the office managers example where there are two of them and apply this
select occupation, avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation 
having avg(salary)> 75000;
