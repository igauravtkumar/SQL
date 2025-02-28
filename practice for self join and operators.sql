-- Operator in sql

use sakila;

--  1.union ==> combine to query result set but remove duplicate

select * from actor where actor_id in (2,3)
union
select * from actor where actor_id in (3,5);

-- select * from actor where actor_id in (2,3)
-- union
-- select actor_id, first_name from actor where actor_id in (3,5);

select * from actor where actor_id in (2,3)
union
select first_name, actor_id, last_name, first_name from actor where actor_id in (3,5);

-- union all ==> duplicate allow

select * from actor where actor_id in (2,3)
union all
select * from actor where actor_id in (3,5);

-- except ==> , return all results from first set which are not also present in second set.alter

select * from actor where actor_id in (2,3)
except
select * from actor where actor_id in (3,5);

select * from actor;
select * from film_actor;

desc actor;

-- join two table
-- kes actor_id ne kitne movie ke

select a.actor_id, a.first_name, f.film_id
from actor as a join film_actor as f
where a.actor_id = f.actor_id;

select a.actor_id, count(f.film_id) as movies
from actor as a join film_actor as f
where a.actor_id = f.actor_id
group by a.actor_id
order by movies desc;