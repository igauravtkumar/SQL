use sakila;
drop table employees;
create table employees(id int primary key auto_increment,
dept varchar(20), salary int);
insert into employees(dept,salary) values("hr",200),
("hr",300),("hr",100),
("marketing",70),("marketing",50),
("marketing",200),("marketing",400),("marketing",200),
("marketing",600),
("dsa",150),("dsa",120),
("dsa",40),("dsa",90),("dsa",500);

# window function / Analytical function
# help in aggregation => calculation (har ek row ke sath dikhega)

select * from employees;
select sum(salary) from employees;

select * , 3020 from employees;

select * ,(select sum(salary) from employees) from employees;

select *,
sum(salary) over() from employees;
# over() --aggregate function ke result ko har row ke sath 
# dekhata hai.

select *,
sum(salary) over(partition by dept) from employees;
# over(partition by) -- har ek value ko collect krna like and 
# uska aggregate result uske samne  show krna

select *,
sum(salary) over(order by salary) from employees;

# over(order by) -> running value

# sum(_) over(partition by _ order by _ ) --> cumultive sum
select *,
sum(salary) over(partition by dept order by salary)
from employees;


select *,
rank() over()
from employees;

select *,
rank() over(order by salary desc)
from employees;
# rank() -> same value same ranking otherwise skip 

select *,
rank() over(order by salary desc),
dense_rank() over(order by salary desc)
from employees;
# dense_rank() -- same value same ranking but not skip the values

select *,
rank() over(order by salary desc),
dense_rank() over(order by salary desc),
row_number() over(order by salary desc)
from employees;

select *,
lead(salary,1) over() from employees;

# lead() -- compare krta h values ko next value se
select *,
lead(salary,1) over(partition by dept) from employees;

select *,
lead(salary,1,300) over(partition by dept) from employees;

# by default 300 null value ki jagah aajayega

select *,
rank() over(order by salary desc) as sal from 
employees limit 2;

select *,
rank() over(order by salary desc) as sal from 
employees limit 2,1;
# second higehst salary -->
select * from	
    (
	select *,
	rank() over(order by salary desc) as sal from 
	employees ) as xyz where sal=2;

