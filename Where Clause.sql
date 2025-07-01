-- Where Clause
-- Comparioson Operators (=, !=, >, >=, <, <=)

select *
from employee_salary where first_name= 'Ron';

select *
from employee_demographics where gender= 'Female';

select *
from employee_demographics where gender!= 'Female';

select *
from employee_demographics where birth_date> '1985-01-01';

select *
from employee_salary where salary> 50000;

select *
from employee_salary where salary>= 50000;

select *
from employee_salary where salary< 50000;

select *
from employee_salary where salary<= 50000;



-- Logical Operators (AND, OR, NOT)
-- logical operators allows us to have different logics or logicals

select *
from employee_demographics where birth_date> '1985-01-01' and gender = 'male';

-- OR operator: any one of the statement must be true, not everything
select *
from employee_demographics where birth_date> '1985-01-01' or gender = 'male';

select *
from employee_demographics where birth_date> '1985-01-01' or not gender = 'male';


-- We can acutally apply PEMDAS to logical functions too
select *
from employee_demographics where first_name= 'Leslie' and age=44;

-- the first output will be the condition in the parathesis and next the condition which is outside of paranthesis, so we get two outputs
select *
from employee_demographics where (first_name= 'Leslie' and age=44) or age> 55;


-- LIKE Statement: 
-- We can look for specific patterns, but not the exact macth
-- We can add two special characters (%, _)
-- %: Anything
-- _: Specific value (no. of characters)

-- When searching for exact match
select *
from employee_demographics where first_name= 'Jerry';

select *
from employee_demographics where first_name= 'Jerry';

select *
from employee_demographics where first_name like 'Jer%';

select *
from employee_demographics where first_name like '%er%';

select *
from employee_demographics where first_name like 'a%';

select *
from employee_demographics where first_name like 'a___';

select *
from employee_demographics where first_name like 'a___%';

select *
from employee_demographics where birth_date like '1989%';











