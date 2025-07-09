-- Stored Procedures: Way to save our SQL code that we can run over and over again. When we save it we can call that store procedure and its gonna execute all the code that we wrote within the store procedure.

select*
from employee_salary
where salary >= 50000;

-- Simmple store procedure:
create procedure large_salaries()
select*
from employee_salary
where salary >= 50000;

call large_salaries();

-- Multiple Queries in single store procedure
delimiter $$
create procedure large_salaries2()
begin
	select*
	from employee_salary
	where salary >= 50000;
	select*
	from employee_salary
	where salary >= 10000;
end $$
delimiter ;

call large_salaries2();


-- Parameters: Parameters are variables that are passed into the stored procedures as an input.

delimiter $$
create procedure large_salaries5(id int)
begin
	select salary
	from employee_salary
    where employee_id = id
    ;
end $$
delimiter ;

call large_salaries5(1); 