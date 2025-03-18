create user test identified by 'test123';

select user from mysql.user;

select * from mysql.user;

GRANT ALL privileges on sakila.* to test;

select * from mysql.user where user='test';

show grants for test;

# username@192.168.1.*

revoke all privileges on sakila.* from test;

grant select on sakila.* to test;
use sakila;
grant select(staff_id , first_name) on
sakila.staff to test;
show grants for test;

alter user 'test' identified by 'regex';
-- to lock
alter user 'test' account lock;
-- to unlock
alter user 'test' account unlock;

-- create role
create role sales2;
grant select on sakila.* to sales2;

create user 'isha' identified by 'isha';
show grants for 'isha';
-- grant role to user

grant sales2 to isha;

show grants for isha;

set default role all to isha;