drop table test;

create table test ( name1 varchar(20));

set serveroutput on;

create or replace trigger test_trigger 
before insert or update on test
for each row
enable

declare 
      u_name varchar(20) := 'Gaurav';
    
begin 
    dbms_output.put_line('Your user is ' || ' ' || u_name);

end;