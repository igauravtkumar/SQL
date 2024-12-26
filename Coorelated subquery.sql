use employees;
select * from employees;
select * from salaries;
select * from dept_emp;
select * from titles;

select emp_no,first_name,hire_date 
from employees where hire_date in
	(select from_date from dept_emp
where emp_no=employees.emp_no);

select * from employees;
select * from titles;

select * from titles where title="Manager";

select first_name, e.emp_no, title
from employees as e join titles where 
e.emp_no = titles.emp_no and title='Manager';
-- nested quaries
select first_name,emp_no
from employees where emp_no in ( 
				select emp_no from titles 
                where emp_no=employees.emp_no and 
                title = 'Manager');
                
select * from employees;
select * from titles;

# Que - I need to get the emp_no first_name of employees
# those employees where the hiring date of emp > 
# the oldest date(min date)  of from_date column 

#  > all - greater than the maximum value of subquery
# > any => greater than the minimum value of subquery
select emp_no , first_name, hire_date from 
employees where hire_date > (select min(from_date) from titles);
           
# Que 2 => first_name emp_no hire_date un employees ka jo currently 
# assisent engineer ki post pr work kr rhe h and unka hiring date h
# for the same employee working on manager position ?

select emp_no, first_name, hire_date 
from employees join titles using (emp_no)
where title='Assistant Engineer' And hire_date <
any (select hire_date from employees join titles using (emp_no)
where title='Manager');