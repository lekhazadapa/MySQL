-- Limit and Aliasign
-- Limit: Specfies how many rows we need in the output

select*
from employee_demographics
limit 3;

-- Using order by on limit
select*
from employee_demographics
order by age desc
limit 3;

-- Starting at a position and limiting
select*
from employee_demographics
order by age desc
limit 2, 1; #Startaing at position 2 and the next 1st element


-- Aliasign: A way to change the name of the column
select gender, avg (age) as a
from employee_demographics
group by gender
having a> 40;
-- Here we assigned 'a' into the arrgigate function 'avg (age)' by using as function and also the name of the column will be changed too