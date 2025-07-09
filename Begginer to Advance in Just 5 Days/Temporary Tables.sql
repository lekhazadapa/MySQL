-- Temporary Tables: Tables that are only visible to the only session that we are created in
-- Use case: Storing intermediate results for complex queries like a CTE but also using it to manupulate data before we insert it into a more permanent table

-- First Way:
-- Creating the Columns
create temporary table temp_table
(
first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);

select *
from temp_table;

-- Inserting Data
insert into temp_table
values
('Lekhaz', 'Adapa', 'Mission Impossible III'
);

select *
from temp_table;


-- Second Way:
select*
from employee_salary;

create temporary table salary_above_50K
select*
from employee_salary
where salary >= 50000;

select*
from salary_above_50K;








