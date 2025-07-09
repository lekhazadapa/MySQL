-- String Functions: Built-in functions that will help us use strings and work with strings differferently

-- Length: It's gonna give us how long the string is
select length ('keyboard');

-- Seeing the length of each name in the table
select first_name, length(first_name)
from employee_demographics;

-- Upper & Lower: Changing the text into uppercase and lowercase
select upper ('keyboard');
select lower ('KeYbOaRD');

-- Chnaging upper and lower case for each name in the table
select first_name, upper(first_name)
from employee_demographics;

select first_name, lower(first_name)
from employee_demographics;

-- Trim: Takes out the white spaces on the front or the end
-- Types: Trim, Left Trim, Right Trim
select (' keyborad  ');

select rtrim(' keyborad     ');
select ltrim('       keyborad  ');

-- Sub Strings: Selecting the number of characters, either from left or right
SELECT 
  first_name, 
  LEFT(first_name, 4),
  RIGHT(first_name, 4),
  SUBSTRING(first_name, 3, 2),
  birth_date,
  SUBSTRING(birth_date, 6, 2) as birth_month
FROM employee_demographics;

-- Replace: It replaces the sepicific character with a different character that we want
select first_name, replace(first_name, 'a', 'z')
from employee_demographics;

-- It works same with the names and other things in the table
select first_name, replace(first_name, 'Tom', 'Tom Cruise')
from employee_demographics;

-- Locate: It locates the specific characters
select first_name, locate('An',first_name)
from employee_demographics;

-- Concatination: Merging the number of columns
select first_name, last_name
from employee_demographics;

select first_name, last_name,
concat(first_name, ' ',  last_name) as Full_name
from employee_demographics;
-- ' ' this add a space between them
