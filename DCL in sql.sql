create user bob identified by 'bob';

select current_user();

select * from mysql.user;
create user 'sammy' identified by 'password';


create user 'sammy'@192.168.10.1 identified by
 'password';
 
drop user sammy@'192.168.10.1';

create table sakila.test(id int);
insert into sakila.test values(10),(20);

select * from sakila.test;
use sakila;
grant all privileges on sakila.test to bob;

select * from mysql.user;

show grants for 'bob';
revoke all privileges on sakila.test from bob;
show grants for bob;

select * from sakila.test;
alter table sakila.test add column name1 varchar(20);
grant select(id) on sakila.test to bob;
show grants for 'bob';

-- locking user 
alter user 'bob' account lock;

-- to unlock 
alter user 'bob' account unlock;

-- create role 
create role sales1;
grant select on sakila.* to sales1;

-- grant role to bob

grant sales1 to bob;
flush privileges;
show grants for bob;
set default role all to bob;



