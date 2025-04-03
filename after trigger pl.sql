create table user_audit ( date1 date , user1 varchar(20), object1 varchar(20), operation1 varchar(20));

set serveroutput on;

create or replace trigger user_audit_trigger
after create or alter on schema

begin 
    insert into user_audit values (sysdate , 'Gaurav' , ora_dict_obj_name , ora_sysevent);
    

end;