-- TCL --> Transcation control language
-- Transaction -> set of logical statement
# start yh stop
--  start --> Dml task
--  Stop --> DDL DcL task

-- TCL : commit , savepoint , rollback

select @@autocommit;  -- by defautl autocommit 1
-- autoocommit is use to commit by default

set autocommit=0;

use regex1;

create table yash(id int , fname varchar(20));
insert into yash values(10, 'shubham');
select * from yash;
commit; -- data ko store krke stop krna 


insert into yash values(11, 'aman');
select * from yash;
rollback; -- data ko hta deta h and stop krdeta h

insert into yash values(11, 'aman');
commit;  -- save krta h data ko isliye roll back me data show hua
rollback; 
select * from yash;

insert into yash values(12 , 'shubham');
update yash set fname = 'regex';

select * from yash;

insert into yash values(13 , 'shubham');
update yash set fname = 'regex';
create table dd(id  int);  -- DDL command stop the transaction and save the previous transaction
select * from yash;

-- rollback sare data ko hta detah respective of savepoint

insert into yash values(14 , 'shubham');
update yash set fname = 'uu';
select * from yash;
savepoint yash_raj;
insert into yash values(15 , 'pp');
select * from yash;
rollback to yash_raj;
