-- Case Statements: Helps to add logical statements (when, else, then) in the select statement

-- Simple case statement
select first_name, last_name, age,
case
	when age<=30 then 'Young'
end
from employee_demographics;

-- Multiple When Statements
select first_name, last_name, age,
case
	when age<=30 then 'Young'
    when age between 31 and 50 then 'Old'
    when age>=50 then 'Senior Employee'
end as age_bracket
from employee_demographics;
 
-- Pay Increase and Bonus Rules:
-- Salary <50000 = 5% Raise, 
-- Salary >50000 = 7% Raise,
-- Finance Department = 10% Bonus
select first_name, last_name, salary,
case
	when salary < 50000 then salary + (salary * 0.05)
	when salary > 50000 then salary + (salary * 0.07)
end as New_Salary,
case
	when dept_id = 6 then salary + (salary * 0.10)
end as New_Salary
from employee_salary;