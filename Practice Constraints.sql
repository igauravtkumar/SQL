-- constraint ==>
-- set of rule & regulation ==> invalid data
-- declaration of table

use regex2;

create table employee01(id int);
insert into employee01 values(10),(20),(null),(30);
select * from employee01;
select count(*) from employee01;

create table employee02(id int not null);
insert into employee02 values(10),(20),(30);
insert into employee02 values(null);
select * from employee02;

create table employee03(id int, salary int default 0);
insert into employee03 values(10, 21450),(20, 43900),(30, 23450);
insert into employee03(id) values(40);
insert into employee03 values(40, null);
select * from employee03;

create table employee04(id int, salary int unique);
insert into employee04 values(10, 21450),(20, 43900),(30, 23450);
insert into employee04 values(40,21450);
insert into employee04 values(40, null), (20, null);
select * from employee04;

create table employee05(id int primary key, salary int default 0);
insert into employee05 values(10, 21450),(20, 43900),(30, 23450);
insert into employee05(id) values(30);
insert into employee05 values(40, null), (50, null);
select * from employee05;

create table employee06(
	id int primary key,
    fname varchar(20),
    salary int default 0,
    constraint regex2_employee06_salary_uk unique(salary)
);
insert into employee06
values
(10,"raj", 23420),
(20, "ram", 24220);
insert into employee06 values(30, "hari");


-- we have to create a table stu 
-- col ==> 
-- id 
-- name
-- fees
-- clg_name
-- phone_no
-- id and name ==> primary key
-- fees => not null
-- clg_name ==> defalut regex
-- phone_no ==> unque 

create table student(
		id int,
        name varchar(20),
        fees int not null,
        clg_name varchar(40) default "regex",
        phone_no int,
        constraint regex2_stu_id_name_pk primary key(id, name),
        constraint regex2_stu_id_phone_uk unique(phone_no)
);

desc student;

INSERT INTO student (id, name, fees, clg_name, phone_no)  
VALUES  
(1, 'khemu', 25000, 'parishkar', 9876543210),  
(2, 'hari', 30000, 'xyz ', 9123456789),  
(3, 'ram', 28000, 'abc', 9988776655),  
(4, 'aadi', 27000, default, 9090909090),  
(5, 'ajay', 26000, 'qwert', NULL);
