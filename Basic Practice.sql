# sql statement is not case sensitive
show databases;
use sakila;
show tables;

describe actor; 
select * from actor;

select actor_id,first_name from actor;

select first_name , actor_id from actor;

select actor_id,
first_name, actor_id*100
from actor;
# select statement is not effect the original data
# where clause filter the data 

select * from actor
where actor_id = 2;

# operators-- >,<,>=,<= , =, != ,<> [<> not equal]
select * from actor where 
actor_id <>2;

# operator - between , in , and like  operator
# between --> range of values
select * from actor 
where actor_id between 2 and 5;

# in --> specific values check 
select * from actor 
where actor_id in (2 , 5);

# que--1> Get the actor_id first name only for those user where
# the first name nick ya ed

select actor_id , first_name from actor
where first_name in ('NICK' , 'ED');

# like operator --> pattern dhundna 
# wildcard character --> % => zero character or more character
# _ -> only one character


select * from actor 
where first_name = 'ED';

select * from actor 
where first_name like 'E%';

select * from actor 
where first_name like '%Y';

select * from actor 
where first_name like 'S%Y';


select * from actor
where first_name like '%A';

select * from actor
where first_name like '%A%';

select * from actor
where first_name like '%SA%';

select * from actor
where first_name like 'E%';

select * from actor
where first_name like 'E_';

select * from actor
where first_name like '_A';

select * from actor
where first_name like '_A%';

# q --> Get those name who`s first name has only 4 character

select * from actor where first_name like '____';

# get all the name of actor table where last third word I ho

select * from actor where first_name like '%I__';
## Get those data where E letter middle ho

select * from actor  where first_name like '_%E%_';


# GEt those user which hav atleast 4 letter and last third letter
# should be R
select * from actor where first_name like '_R__';
# get those latter where EE present together in name 

select * from actor where first_name like '_%EE%_';

# get those data where the second letter h and second 
#last letter z

select * from actor where first_name like '_H%Z_';
