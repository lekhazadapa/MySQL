-- Joins: It allows to join two tables or more if they have common column. That doesnt mean that the column names must be same but the data within it are similar that we can use
-- Types: 1) Inner Joins 2) Outer Joins 3) Self Joins

select*
from employee_demographics;

select*
from employee_salary;

-- Inner Joins: Returns rows that are the same in both columns in both tables
-- If there is any missing row in the main table (in from statement) it will not bring that row into the final output
-- We dont have employee_id 2 in employee_demographics table but we have it in employee_salary table. But in the final output the employee_id 2 is missing.
select*
from employee_demographics
inner join employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id;
-- We can use the asalign function if the 'on' function is too long
select*
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id;
-- If we have same column names in two tables, we have to specify which table we are choosing it from.
select dem.employee_id, age, occupation
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id;


-- Outer Joins: There are two types of joins. 1) Left Outer Join 2) Right Outer Join
-- Left Outer Join: It will take everything from the left table even if there is no match in the join and only return the matches from the right table
-- Right Outer Join: It will take everything from the right table even if there is no match in the join and only return the matches from the left table
-- Left table is table in from statement
-- Right table is table in join statment

-- Left Outer Join:
select*
from employee_demographics as dem
left join employee_salary as sal
	on dem.employee_id = sal.employee_id;

-- Right Join
select*
from employee_demographics as dem
right join employee_salary as sal
	on dem.employee_id = sal.employee_id;

-- Self Join: It is a join where we tie the table to itself
-- Simple task: If we want to assign to secret agent to the employees for a task for each of them
-- +1 indicates employee 1 is assigned to employee 2 and so on.
select*
from employee_salary as emp1
join employee_salary as emp2
	on emp1.employee_id +1 = emp2.employee_id;

-- Assign spefici columns only
select emp1.employee_id as emp_santa,
emp1.first_name as emp_first,
emp1.last_name as emp_last,
emp2.employee_id as emp_name,
emp2.first_name as emp_first_name,
emp2.last_name as emp_last_name
from employee_salary as emp1
join employee_salary as emp2
	on emp1.employee_id +1 = emp2.employee_id;

-- Joining multiple tables: 
select *
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id;

select*
from parks_departments;
-- We have dept_id in the employee_salary and parks_department tables, we will join them both and also the demographics table too.
select *
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
inner join parks_departments as pd
	on sal.dept_id = pd.department_id;
-- We can join multiple tables even there is no same columns but employee_demographics can tie to employee_salary and employee_salary can tie to parks_department





