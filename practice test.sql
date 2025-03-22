use regex1;
select * from users;
explain select * from users where id = 11;
show indexes from users;

create index user_f on users(fname);
explain select * from users where id = 11;
show indexes from users;

use sakila;
select * from payment;

use regex1;
select * from payment;

create view kview as 
select payment_id , amount from payment;

select * from kview;

create or replace view pview as 
select payment_id , amount from payment where payment_id < 5;
select * from pview;
create or replace view aview as
select  a.actor_id ,f.film_id, a.first_name , a.last_name
 from sakila.actor as a join sakila.film_actor as f
on a.actor_id=f.actor_id;

select * from aview;

use regex1;

show tables;

select * from emp where name in 
(select father from emp_family where emp_family.eid = emp.eid);


select * from prd as p
where exists (
    select *
    FROM ord123 as o
    WHERE p.pid = o.product_id
);

select * from prd as p
where not exists (
    select *
    FROM ord123 as o   
    WHERE p.pid = o.product_id
);
select * from emp123;

select * from emp123 where 
salary > (select avg(salary) from emp123 as e
where emp123.department_id = e.department_id 
group by e.department_id);

select * from emp123 where 
salary > (select avg(salary) from emp123 as e
where emp123.department_id=e.department_id
 group by e.department_id);
 
 
use sakila;

select * from employees;

select * , 
sum(salary) over(partition by dept) from employees;

select *,
rank() over() from employees;

select *,
rank() over(order by salary desc) from employees;

select *,
dense_rank() over(order by salary desc),
row_number() over(order by salary desc) from employees;

select *,
lead(salary,1) over() from employees;

select *,
lag(salary,1) over() from employees;


-- second highest salary

select * from 
(select *,
rank() over(order by salary desc) as sal from employees) as xyz where sal = 2;

-- I need to get the empno first name last name 
-- title from this table where current position manager
-- and also worked on any other position 

use employees;
select * from employees;
select * from departments;
select * from salaries;
select * from titles;

select e.emp_no , e.first_name , e.last_name, t.title
from employees as e join titles as t on e.emp_no = t.emp_no
where t.title ='Manager' and e.emp_no= any
	( select t2.emp_no from employees as e2 join titles as t2 
    on e2.emp_no = t2.emp_no 
    where t2.title <> 'Manager') ;