set serveroutput on;

create or replace trigger test_trigger 
before insert or update on test
for each row
enable

declare 
      u_name varchar(20) := 'Gaurav';
    
begin 
    if inserting then 
        dbms_output.put_line('Your user is inserting ' || ' ' || u_name);
    elsif updating then 
        dbms_output.put_line('Your user is updating ' || ' ' || u_name);
    end if;
end;