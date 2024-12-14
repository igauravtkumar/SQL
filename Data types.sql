use sakila;
select * from payment;
select amount from payment where payment_id in (1,3);

select * from payment
 where 
 amount in (select amount 
 from payment where payment_id in (1,3));
 
 -- 2.99 5.99 any operator
 select * from payment
 where 
 amount = any (select amount 
 from payment where payment_id in (1,3));

# > any(greater than any) - greater than the minimum value of subquery
select * from payment
 where 
 amount > any (select amount 
 from payment where payment_id in (1,3));
 
 select * from payment
 where 
 amount >= any (select amount 
 from payment where payment_id in (1,3));
 
# < any(less than any) - less than the maximum value of subquery
select * from payment
 where 
 amount < any (select amount 
 from payment where payment_id in (1,3));
 
 select * from payment
 where 
 amount <= any (select amount 
 from payment where payment_id in (1,3));
 
# > all - greater than the maximum value of subquery
select * from payment
 where 
 amount > all (select amount 
 from payment where payment_id in (1,3));
 
# < all - less than the minimum value of subquery
select * from payment
 where 
 amount < all (select amount 
 from payment where payment_id in (1,3));
 
select count(*) from payment
 where 
 amount < all (select amount 
 from payment where payment_id in (1,3));
 


# Data type in sql .
# numeric string date time
# int(numerical)

# INT(width)(unsigned ) [zerofill]
# 4 bytes (1-8) 2^32
# -2,147,483,648 to 2,147,483,647(4 byte storage)
# 1 byte -- 8 bit 2**32 ==> 256
# create table tablename
# insert into table values(value)

create database regex1;
use regex1;
create table xyz(id int);
insert into xyz values(2147483647);
select * from xyz;

# ddl statement(data defination language)
create table employee(id int unsigned);
insert into employee values(2147483648);
select * from employee;
# unsigned = 0 to 256
# signed  -128 to 127
# tiny int =1
# small int = 2
# medium int = 3
# int = 4 byte
# big int = 8 byte

create table abc(salary double(5,2));
insert into abc values(20.1);
insert into abc values(120.1);
insert into abc values(3420.1); 
insert into abc values(120.1222323232);
select * from abc;

# bool is basically tinyint
create table test_bool (i BOOL);
insert into test_bool values(True),(False);
select * from test_bool;

# char datatype is fix in size and char remove trailing(last) 
# spaces remove
create table ep2(name1 char(4) );  
insert into ep2 values("zzzz");
insert into ep2 values("zz   ");
select name1,length(name1) from ep2;

# variable character  -- it remove the trailing whitespaces
# upto the column
create table ep_var(name1 varchar(3) );
insert into ep_var values("x");
insert into ep_var values("x   ");
select name1,length(name1) from ep_var;

# YYYY-MM-dd(year month date)  hh:mm:ss(hour min second)
create table e1(dob date);
insert into e1 values('2024-12-07');
select * from e1;

# conditional statement
use sakila; 
select * from actor;
select first_name, if (first_name ='NICK',0,1) 
from actor;
# terniary operator-condition?True:False
# first_name ki value 0 hui to true nhi to false
select first_name, 
if(first_name ='NICK',0, if(first_name="ED",2,"not value"))
from actor; 

select first_name,
case
    when first_name = "NICK" then 0
    when first_name = "ED" then 1
END as 'newcol'
   from actor;    



