use sakila;
select * from actor;

# and & or 
# firstly and operator solve then or operator solve
select * from actor
where actor_id > 2 and first_name = 'JOHNNY';

select * from actor
where actor_id > 2 or first_name = 'JOHNNY';

select * from actor
where  first_name = 'NICK' or first_name = 'ED' 
and actor_id > 2;

select * from actor
where  first_name = 'ED' or first_name = 'NICK' 
and actor_id > 2;

select * from actor
where  (first_name = 'NICK' or first_name = 'ED' )
and actor_id > 2;


# Functions --> block of code --> code resuable
-- code redable

-- pre defined function
-- string function 

select first_name, lower(first_name) from actor;  

select first_name, upper(first_name) from actor;  

select first_name, lower(first_name), 
upper(lower(first_name)) from actor; 


select first_name , last_name,
concat(first_name,' - ', last_name)
from actor;

# concat_ws --> concat separater btata h
select first_name , last_name,
concat_ws('-',first_name, last_name,'xyz')
from actor;

select * from actor
where 
concat(first_name ,  last_name) = 'EDCHASE';

# Substr -->

select first_name,
substr(first_name,2) from actor;

select first_name,
substr(first_name,1,3) from actor;

select first_name,
substr(first_name,3,5) from actor;

select first_name,
substr(first_name,-3) from actor;

# instr--> index position nikal kr dena

select first_name,
instr(first_name,'E') from actor;

# locate
select first_name,
locate('E',first_name,3) from actor;

-- char_length 
select first_name,
char_length(first_name) from actor;

# assci format / utf data

# dual table 

select 'Hey' from dual;
select 'Hey','Hello' from dual;

select length('大') , char_length('大')
from dual;

select 8752 from dual;

select amount from payment;

select first_name,
lpad(first_name,5,'$') from actor;


select first_name,
rpad(first_name,5,'$') from actor;

select '  hey  ',trim('  Hey   ') from dual;

select '  hey  ',
trim(leading 'z' from 'zzeyzzz  ') from dual;

# trim(leading '' from) --> starting character remove

select '  hey  ',
trim(trailing'z' from 'zzeyzzz') from dual;

# trim(trailing '' from) --> last character remove

select '  hey  ',
trim(both'z' from 'zzeyzzz') from dual;
# trim(both '' from) --> starting and ending character remove

# replace
select first_name, replace(first_name , 'E','X')
from actor;