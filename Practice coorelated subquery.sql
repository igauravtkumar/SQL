use regex1;

show tables;
-- correlated subquery
create table emp(eid int primary key , name varchar(20));
insert into emp values(1,'aman'),(2,'shubham'),(3,'abc');

create table emp_family(eid int,name varchar(20),
father varchar(20));
insert into emp_family values(1,'aman','raj'),
(2,'shubham','kamal'),(3,'abc','aman'),
(4,'ujjwal','kaluram');
insert into emp_family  values(3,'abc','abc');
select * from emp_family;

select * from emp 
where name in (select father from emp_family 
				where emp_family.eid = emp.eid);

create table emp123(eid int primary key,
fname varchar(20), salary int , department_id int);
insert into emp123 values(1, 'tushar',900,10),
(2,"shubham",100,10),(3,"aman",50,10),
(4,"shakshi",200,11),(5,"naina",300,11);
select * from emp123;

-- eid , first name , department id and salary column only fo that column where salary > the avg salary of this department

select department_id , avg(salary) from emp123 group by department_id;

select * from emp123 where 
salary > (select avg(salary) from emp123 as e
where emp123.department_id=e.department_id
 group by e.department_id);
 
create table prd(pid int , product_name varchar(20));
insert into prd values (10,'Iphone'),(20,'Ac');
select * from prd;

drop table ord;
create table ord123(oid int , order_name varchar(20), product_id int);
insert into ord123 values (101,'Rohan',10),(102,'sohan',50);
select * from ord123;

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