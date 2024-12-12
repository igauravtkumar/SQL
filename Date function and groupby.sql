# functions
# Date function

select current_date() from dual;
select curtime() from dual;
select curtime() from dual;

select current_timestamp() from dual;

select now(),adddate(now(),2) from dual;

select now(),adddate(now(),interval 2 month) from dual;

select datediff(now(), '2024-11-30') from dual;
select datediff(now(), '2024-11-10') from dual;

select last_day( now()) from dual;

select month(now()) from dual;

select date_format(now(),"%a") from dual;
select date_format(now(),"Current day %a") from dual;

select date_format(now(),"Current day %a %M") from dual;
select date_format(now(),"Current day %a %M %c") from dual;
select date_format(now(),"Current day %h %a %M") from dual;

-- multi-row functions 

use sakila;
select * from payment; 

select distinct(customer_id) from payment ;
select distinct(customer_id),amount from payment ;

select sum(amount),count(amount) from payment ;
select sum(amount),count(amount),count(*) from payment ;

# count(*) --  count null value + available value 
select sum(amount),count(amount),count(*),avg(amount) from payment ;

select sum(amount) from payment where customer_id =1;

select sum(amount) from payment where customer_id =2;

select customer_id from payment group by customer_id;
-- groupby mein jo column likhenge vo hi select mein likh skte h
-- aggregate function
select customer_id,sum(amount) from payment group by customer_id;
select customer_id,sum(amount),count(*) from payment group by customer_id;

# how many customer deal in which staff ?
select * from payment;
select staff_id, count(*) from payment group by staff_id;

# You have to find out the total number of payments, total amount spend and total number of customer serves in each month?

select month(payment_date),sum(amount),count(*) from payment group by month(payment_date);

# where clause group by me use tbhi hoga jab normally filter krna ho 
# having clause --
select month(payment_date),sum(amount),count(*) 
from payment group by month(payment_date)
 having count(*) > 2000;

select * from address;
select count(address_id) from address; 
select count(address_id), count(address2) from address;

# Get the each  district main the total district present and the sum of city_id for each district ?

select  district ,count(district), sum(city_id)   from address group by district;