# Foreign key - stablish the relationship
create database regexconst;
use regexconst;
drop table product;
create table product(pid int primary key ,pname varchar(20),price int);
insert into product values(10,'tv',100),(20,'mobile',200),
(30,'gyser',4000),(40,'yash',5000);
select * from product;
drop table orders;
create table orders(oid int, city varchar(20),
product_id int,
foreign key (product_id) references product(pid));  
insert into orders values(1991,"jaipur",10),(1992,"goa",20),
(1993,"UK",10),(1994,"shimla",40);
insert into orders value(1995,"laptop",80); -- give an error
#(can not add or update data because product id differnt
#  in insert value so forign key does not exist)
select * from orders;


# foreign key refers primary key or unique, table exist

# DDL - data defination language 
# create , drop , truncate,alter 

create table test(id int , name1 varchar(20));
insert into test values(10,"tushar");
-- insert into test values("tushar"); -- error 
insert into test(name1) values("tushar");
insert into test values(20,"Ram");
select * from test; # insert -- DML opertaion


# update 
update test set name1='xyz' where id=10;  
select * from test;
# delete
delete from test where id is null;
select * from test;

-- drop (delete data and table)
select * from test;
truncate test; # truncate(delete the data)

# alter statement in sql

use regexconst;

create table companies(id int);
insert into companies values(10);

select * from companies;

# add table coulmns 

ALTER TABLE companies 
ADD column phone varchar(15);

select * from companies;

alter table companies
add column employee_count3 int not null;

select * from companies;

alter table companies drop column employee_count3;
select * from companies;

# rename table 
rename table companies to newcompany1;
select * from companies; -- error
select * from newcompany1;

alter table newcompany1 rename to companies;

select * from companies;

desc companies;
alter table companies
rename column id to ids;
select * from companies;

alter table companies  add primary key (ids);
insert into companies values(12);
select * from companies;

desc companies;
# drop primary key;
alter table companies 
add constraint regex_compay_uk unique(phone);

alter table companies modify ids double;
desc companies;

alter table companies 
change ids newids varchar(6);
desc companies;

# drop delete and truncate me kya differnce hai ?

# delete -- is dml operation jisme hum where condition dete h  and delete can
# be roll back(return previous data)
# drop -- is ddl statement jo data and table structure dono ko delete kr skta 
# hai and not use in roll back
# truncate -- is ddl statement jo data and table dono ko drop and table ko phir recreate 
# krta h isme bhi roll back use nhi hota hai


use sakila;
select * from sakila.payment;
select max(amount) from sakila.payment;
select max(amount) from sakila.payment where amount < 11.99;