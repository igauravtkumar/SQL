-- subprograme

/*
create or replace procedure [name]
        [in | out | in out]
    
begin 
    <procedure body>

end procedure_name

*/

set serveroutput on;

create or replace procedure message
    as
    begin
     dbms_output.put_line('hello user');
     
    end;
-- execute message
    
    