use employees;
select * from employees;
select * from departments;
select * from salaries;
select * from titles;

-- get those emp number where there salary is less than the salary of emp no 
-- 10003

select * from salaries where emp_no=10003;
select * from salaries where salary < all 
(select salary from salaries where emp_no=10003);

select * from employees;
select * from titles;
desc employees;
desc titles;

-- find out emp no , name of person , title 
select e.emp_no , e.first_name , t.title from employees
as e join titles as t using (emp_no);

select e.emp_no , e.first_name , t.title from employees
as e join titles as t
 on e.emp_no = t.emp_no
and title = 'Manager';


-- first_name , last name title and currently non manager pr work
-- kr rhe h
select e.emp_no , e.first_name , t.title from employees
as e join titles as t
 on e.emp_no = t.emp_no
and t.title != 'Manager';



-- que - I need to get the empno first name last name 
-- title from this table where current position manager
-- and also worked on any other position 

select e.emp_no, e.first_name, e.last_name, t.title 
from employees as e 
join titles AS t on e.emp_no = t.emp_no where t.title = 'Manager' 
AND e.emp_no = ANY (
    select t2.emp_no from employees as e2 join titles as t2 
    on e2.emp_no = t2.emp_no 
    where t2.title <> 'Manager'
);


select distinct e.emp_no , e.first_name,e.last_name , t.title 
from employees
as e join titles as t using (emp_no) 
 JOIN titles AS t2 using (emp_no)
WHERE t.title = 'Manager' 
AND t2.title <> 'Manager';


-- I need to get emp no first nam etitle and hire date for all the employees

select * from employees;
select * from titles;

select e.emp_no,e.first_name,e.last_name,t.title,e.hire_date
from employees as e join titles as t
on e.emp_no=t.emp_no;

select e.emp_no,e.first_name,e.last_name,t.title,e.hire_date
from employees as e join titles as t
on e.emp_no=t.emp_no where t.title = 'assistant engineer';


-- i need to get assistant engineer where hire date is less than 
-- the hiring date of that current emp any position
select e.emp_no,e.first_name,e.last_name,t.title,e.hire_date
from employees as e join titles as t
on e.emp_no=t.emp_no where t.title = 'assistant engineer' and 
e.hire_date < any (select e.hire_date
from employees as e join titles as t
on e.emp_no=t.emp_no where t.title != 'assistant engineer');


SELECT e.emp_no, e.first_name, e.last_name, t.title, e.hire_date
FROM employees AS e 
JOIN titles AS t ON e.emp_no = t.emp_no 
WHERE t.title = 'Assistant Engineer' 
AND e.hire_date < ANY (
    SELECT e2.hire_date 
    FROM employees AS e2 
    JOIN titles AS t2 ON e2.emp_no = t2.emp_no 
    WHERE t2.title <> 'Assistant Engineer' 
    AND e2.hire_date > e.hire_date  -- Correlation: Comparing with outer query
);

-- from the titles table get the emp_no , title , and the year of hiring date for
-- the current manager position where the person has been promoted 
-- in the same year if his working on any position 
select emp_no,year(from_date) from titles
where title="Manager" and (emp_no,year(from_date)) in
 (select emp_no,year(from_date) from  titles 
where title!="manager");






