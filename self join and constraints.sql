# self join 
use regex;
create table employee(eid int , ename varchar(20),
manager_id int);
insert into employee values(10,"aman",null),
(20,"akshay",30),(30,"naina",10),(40,"abhishek",30);

select * from employee;

select emp.eid , emp.ename , emp.manager_id ,
mgr.eid,mgr.ename
from employee as emp join employee as mgr
where emp.manager_id = mgr.eid;

select * from orders;
select * from product;

select * from orders natural join product;

# natural join --column name same h to inner join ki 
# tarah react krta h agar column name same nhi h to
# cross join ki tarah
drop table test;
create table test(eid int not null);
insert into test values(200);
insert into test values(null);
select * from test;

create table test1(eid int unique);
insert into test1 values(200);
insert into test1 values(200);
insert into test1 values(null);
select * from test1;

create table test2(eid int not null unique);
insert into test2 values(200);
insert into test2 values(200);
insert into test2 values();
select * from test2;

create table test3(eid int default 0 ,name varchar(20));
insert into test3(eid,name) values(100,"aman");
insert into test3(eid,name) values(null,"abhishek");
insert into test3(name) values("abhishek2");
select * from test3;

# is comparision operator
select * from test3 where eid is null;
select * from test3 where eid is not null;

create table test4(eid int primary key auto_increment
                  ,name varchar(20));
insert into test4(eid,name) values(100,"aman");
insert into test4(eid,name) values(null,"aman1");
insert into test4(name) values("aman");
select * from test4;

create table test5(eid int check (eid>10),
                  name varchar(20));
insert into test5(eid,name) values(100,"aman");
insert into test5(eid,name) values(9,"aman");
select * from test5;

drop table test6;
create table test6(eid int, name varchar(20),
 constraint regex_test_eid_chk check (eid>10),
 constraint regex_name_uk unique(name));
insert into test6(eid,name) values(90,"aman");
select * from test6;

