-- GroupBy: 
-- It group together the rows that have same values in the specifies column or columns that we are actually grouping on
-- Once we group those rows together we can run aggregate function on those rows

select*
from employee_demographics; 

select gender
from employee_demographics group by gender;

-- It doent work, because they are non aggregative columns. Which means if we are not using any aggregative functions (average, e.t.c) the both columns in select and group by must match
select first_name
from employee_demographics group by gender;

-- Performing aggregate function and then grouping them. We are performing the aggregate function average on a column gender and then grouping them into gender column.
select gender, avg(age)
from employee_demographics group by gender;

-- Selecting everything from the employee salary table
select *
from employee_salary;
-- You will notice there are two office managers
-- Now lets select and group by only occupation
select occupation
from employee_salary group by occupation;
-- Now you will notice only one because the unique values are grouped together
-- Now lets add salary and see
select occupation, salary
from employee_salary group by occupation, salary;
-- Now you will notice two office managers again, because the two salaries for two office managers are different


-- Aggregate Functions (Average, Maximum, Minimum, Count) with group by
select gender, avg(age)
from employee_demographics group by gender;
-- We can also perform multiple aggregate functions at once
select gender, avg(age), max(age), min(age), count(age)
from employee_demographics group by gender;



-- Order By: To sort the results set in either ascending or decending order
select*
from employee_demographics order by first_name;
-- Here you will see they are now arranged in ascending order which is small to large (A-Z)
-- This is because the function has ascending order by defalut
select*
from employee_demographics order by first_name desc;
-- By adding desc it will do it in descending order which is highest to lowest (Z-A)
-- This applies for characters and integers
select*
from employee_demographics order by gender, age;
-- We can also do it for multiple columns
select*
from employee_demographics order by gender, age desc;
-- We can also change into descending order by adding desc to the specific column
select*
from employee_demographics order by age, gender;
-- If we have unique values for age (34, 34, 34, 34) then it will order by the next column, gender. If it doesn't it will take the first order by column only
-- order by selcting the column position (generally not preferrable)
select*
from employee_demographics order by 5, 4;










