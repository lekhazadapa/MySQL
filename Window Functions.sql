-- Window Functions: Allows us to look at a partition or a group but they each keep their unique rows in the output.
select gender, avg (salary) as avg_salary
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
group by gender;

-- Simple Window Function of averaging salary for the entire column
select gender, avg (salary) over()
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id;

-- Using partion by which is similiar to grouping
select gender, avg (salary) over(partition by gender)
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id;

-- The main use of this is we can add additional details or columns to the output and it doesn't affect the average salary column
select dem.first_name, dem.last_name, gender, avg (salary) over(partition by gender)
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id;

-- Rolling total: Starts at a specific value and adds on the subsequent rows based on out partition. In other words cummilative
select dem.first_name, dem.last_name, gender,salary, sum(salary) over(partition by gender order by dem.employee_id) as Rolling_Total
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id;

-- Row Number: Doesnt have duplicate rows while ranking
select dem.employee_id, dem.first_name, dem.last_name, gender,salary,
row_number() over()
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id;

-- Row numbers for the employees on basis of salaries (top to bottom)
select dem.employee_id, dem.first_name, dem.last_name, gender,salary,
row_number() over(partition by gender order by salary desc)
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id;

-- Rank: Has duplicate rows if they are similar. The next number in rank it will be the position number after the duplicate row
select dem.employee_id, dem.first_name, dem.last_name, gender,salary,
rank() over(partition by gender order by salary desc)
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id;

-- Dense Rank: Similar to Rank but it doesn't rank the poisiton but the next number numerically after the duplicate row
select dem.employee_id, dem.first_name, dem.last_name, gender,salary,
dense_rank() over(partition by gender order by salary desc) as rank_num
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id;

-- All together
select dem.employee_id, dem.first_name, dem.last_name, gender,salary,
row_number() over(partition by gender order by salary desc) as row_num,
rank() over(partition by gender order by salary desc) as rank_num,
dense_rank() over(partition by gender order by salary desc) as dens_rank_num
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id;
