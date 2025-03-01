-- DataTypes in sql

use regex2;


-- numeric

create table employee1(eid int);
insert into employee1 values(2147483647, -2147483648);
select * from employee1;

create table employee2(eid int(4));
insert into employee2 values(10),(100),(1000),(10000),(100000);
select * from employee2;

create table employee3(eid int(4) Zerofill);
insert into employee3 values(10),(100),(1000),(10000),(100000);
select * from employee3;

create table employee4(eid int unsigned);
insert into employee4 values(3147483649);
select * from employee4;

create table employee5(eid tinyint);
insert into employee5 values(-128), (127);
select * from employee5;

create table employee6(salary float);
insert into employee6 values(232.2345),(34252.234252235);
select * from employee6;

create table employee7(salary float(4,2));
insert into employee7 values(23.24),(34.234252235);		-- not 345.00 values
select * from employee7;


-- string

create table employee8(name char(4));
insert into employee8 values("raj"), ("hari");
select *, length(name) from employee8;

create table employee9(name varchar(7));
insert into employee9 values("khemraj"),("raj"), ("hari");
select *, length(name) from employee9;


-- Data time
-- format : YYYY-MM-DD hh:mm:ss

create table test1(dob date);
insert into test1 values('2005-07-05');
select * from test1;