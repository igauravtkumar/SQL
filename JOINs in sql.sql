create database regex;
use regex;
create table product(pid int, pname varchar(20),price int);
insert into product values(10,'tv',100),(20,'mobile',200),
(30,'gyser',4000),(40,'yash',5000);
select * from product;
create table orders(oid int, city varchar(20),products_id int);
insert into orders values(1991,'jaipur',10),(1992,'goa',20),(1993,'uk',10),
(1994,'shimla',40),(1995,'kerala',80);

select * from product;
select * from orders;

select o.oid,o.city,o.products_id ,p.pid, p.pname,p.price
from orders as o join product as p
where o.products_id = p.pid;

# cross join / cartesian join -- ek table ka record dusri table ke sbhi record se match ho

select o.oid,o.city,o.products_id ,p.pid, p.pname,p.price
from orders as o inner join product as p
on o.products_id = p.pid;

select o.oid,o.city,o.products_id ,p.pid, p.pname,p.price
from orders as o left join product as p
on o.products_id = p.pid;

select o.oid,o.city,o.products_id ,p.pid, p.pname,p.price
from orders as o right join product as p
on o.products_id = p.pid;


use sakila;

select * from actor;
select * from film_actor;

# get the actor_id the full name of actor the film id and the last update column from these to table

select a.actor_id ,concat(a.first_name,' ',a.last_name),f.film_id,f.last_update
from actor as a inner join film_actor as f on a.actor_id = f.film_id;
 

