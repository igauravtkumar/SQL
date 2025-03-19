-- Index -- sequential searching 
-- index - refernce of your data which 
-- help in query optimization (faster our query)

-- primary key , unique key(column)
-- identifier 
-- select * from where col = values
-- index -> BTS tree form
-- clustered index 

-- index is good in read but not good in write

use regex1;
drop table users;
create table users(id int primary key
, fname varchar(20));

insert into users values(10,'tushar'),
(11 , 'aman'), (12,'naina'),(13,'raj')
,(14,'shubham'),(15,'om'),(16,'tushar');

select * from users;

explain select * from users where id = 11;
show indexes from users;

explain select * from users where fname = 'om';

create index user_f on users(fname);
explain select * from users where fname = 'tushar';
drop index `PRIMARY` on users;
show indexes from users;


 
-- composit index

create table kk(id int, fname varchar(20),
lname varchar(20));

insert into kk values(1,"rohan","khare"),
(2,"ajay","jain"),(3,"rohit","sharma"),
(4,"kartikey","kichara");

select * from kk;

explain select * from kk
where fname="kartikey" and lname="kichara";

create index user_f on kk(fname,lname);

explain select * from kk
where fname="kartikey" and lname="kichara";

explain select * from kk
where lname="kichara";

explain select * from kk
where fname="kartikey";


create table gg (id int , fname varchar(20),
lname varchar(20));
insert into gg values(1,'gaurav','tailor'),
(2,'rajat','bansal'),(3,'shivam','jha'),
(4,'raj','kumar');

select * from gg;

explain select * from gg
where fname='gaurav' and lname='tailor';

create index user_f on gg(fname,lname);
explain select * from gg
where fname='gaurav' and lname='tailor';

explain select * from gg
where fname='gaurav';

explain select * from gg
where lname='tailor';
show indexes from gg;
