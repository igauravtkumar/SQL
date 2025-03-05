use sakila;

select * from payment;

# limit --> restricted the values
select * from payment order by amount 
desc limit 2;
select distinct(amount) from payment order
 by amount desc limit 2;
 
select distinct(amount) from payment order
 by amount desc limit 1,3;
 
select * from payment 
where amount < (select max(amount) from payment);

select max(amount) from payment 
where amount < (select max(amount) from payment);

-- DDl Statement 
-- create , drop , alter

-- DML => insert , update , delete 

create database march3;
use march3;

create table regex(id int , name varchar(20));
insert into regex values(1,'tushar');
insert into regex(name) values('tushar');
insert into regex(name) values('tushar'),('aman');
select * from regex;

-- ctas -> create table as select statement

create table y2 as select * from sakila.actor;
select * from y2;

drop table y3;
create table y3 as select actor_id,
first_name from sakila.actor;

select * from y3;
desc y3;

-- delete 
select * from y3;
delete from y3 where actor_id in (2,4);

-- update 
update  y3 set first_name='regex';
select * from y3;

-- drop 
select * from y3;
drop table y3;
# drop -> we can not roll back our data once data
# is deleted

create table y3 as select  actor_id ,
first_name from sakila.actor;
select * from y3;
truncate table y3;

-- alter 
use march3;

create table companies(id int);
insert into companies values(10);

select * from companies;

desc companies;

alter table companies
add column phone varchar(15);

select * from companies;
desc companies;

alter table companies
add column employee_count3 int not null;

select * from companies;

alter table companies drop column
employee_count3;
select * from companies;

-- rename 
Rename table companies to newcompany1;
select * from companies;
select * from newcompany1;

alter table newcompany1 rename to companies;
select * from companies;

alter table companies
rename column phone to company_name;
select * from companies;

desc companies;

update companies set company_name = 'tushar'
where id =10;

select * from companies;
desc companies;

alter table companies add primary key (id);
desc companies;

alter table companies 
add column phone int;

alter table companies add unique (phone);
desc companies;

alter table companies 
add constraint regex_company_uk unique(company_name);
desc companies;
alter table companies drop constraint regex_company_uk;

alter table companies modify company_name int;
desc companies;



