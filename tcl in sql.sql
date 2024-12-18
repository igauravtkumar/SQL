# tcl - transaction control language
# Transaction - any logical task 
# ddl , dml ,dcl command 
# dml task/start transaction command  --> transaction start 
# ddl / dcl / commit rollback command -- > transaction end

select @@autocommit; # changes ko save krdena autocommit

use regex;
create table tushar(eid int);
insert into tushar values(10);
select * from tushar;

# commit is use for complete the pending transaction 
set @@autocommit = 0;
select @@autocommit; 
use regex;
create table tushar(eid int);
insert into tushar values(50);
delete from tushar where eid = 10;
rollback; -- stop pending transaction 
select * from tushar;

insert into tushar values(60);
insert into tushar values(70);
savepoint regex_insert; # savepoint -- to go that line where we use checkpoint
delete from tushar where eid = 30;
rollback to regex_insert; -- delete/stop pending transaction 
select * from tushar;

# dcl 

