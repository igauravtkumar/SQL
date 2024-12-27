# views -> virtual table that stored our query
# view ==> query stored => physically 
#         ==> provide security
use sakila;

create view actor_view as
select actor.actor_id , first_name, film_id
from actor join film_actor
where actor.actor_id=film_actor.actor_id;
select * from actor_view;

# film,film actor actor table and find krna h film
-- id actor_id and the movie has done 

select * from film;
select * from film_actor;
select * from actor;


-- replace agar vo view h to usse replace krdega
create or replace view aview as
select a.actor_id , f.film_id,fm.title
from actor as a join film_actor as f
join film fm
where a.actor_id=f.actor_id and f.film_id
=fm.film_id;

select * from aview;

use regex;
drop table student;
create table student(id int , ename varchar(20),
age int);
insert into student values(101,"Ram",22),
(102,"Jai",23),(103,"Abhi",25);
select * from student;

create view student_view as
select * from student;

select * from student_view;

update student_view set ename='Gaurav' 
where id =102;
select * from student_view;
select * from student;

# complex view--> not update not perform dml task
create view pview as
select ename from student group by ename;

select * from pview;

-- update pview set ename='Raj' where id=103; error
# not update in complex view


create view tview as 
select * from student where id>102
 with check option;

select * from tview;


