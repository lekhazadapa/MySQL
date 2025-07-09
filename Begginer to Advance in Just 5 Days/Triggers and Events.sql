-- Triggers and Events: Trigger is a block of code that executed automatically when an event takes place in a specific table
select*
from employee_demographics;

select*
from employee_salary;

-- Trigger Example: If someone is put into salary table we want it to automatically update with the employee id, first name and last name into demographics table
delimiter $$
create trigger employee_insert
	after insert on employee_salary
    for each row
begin
	insert into employee_demographics (employee_id, first_name, last_name)
    values (new.employee_id, new.first_name, new.last_name);
end $$
delimiter ;

insert into employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
values (13, 'John', 'Cruyff', 'CEO', 1000000, null);

-- Events: An event takes place when its scheduled
-- Event Example: Let's say if the xyz company comes up with a new legislation. They need to save some money, esspecially in the parks and recs department. So, they want to retire people who are over age 60 immediately and give them life time pay.
select* 
from employee_demographics;

delimiter $$
create event delete_retirees
on schedule every 30 second
do
begin
delete 
from employee_demographics
where age >=60;
end $$
delimiter ;

-- If that did not work
show variables like 'event';













