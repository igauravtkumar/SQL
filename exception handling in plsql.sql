-- exception  : unwanted condition 
-- terminate 
-- exception error
-- system defined exception
-- user defined exception

--declare 
--
--begin
--
--exception 
--      when exception then
--          statement
--
--end;

set serveroutput on;
declare
    c_name employees.first_name%type;
    tushar_exception exception;

begin 
--    select first_name into c_name from employees where employee_id=101;
--    select first_name into c_name from employees where employee_id=506;
    select first_name into c_name from employees where employee_id=102;
    if c_name = 'Neena' then 
          dbms_output.put_line('Rows are Found' || ' ' || c_name);
    
    else 
       raise tushar_exception;
    end if;
exception 
     when tushar_exception then 
       dbms_output.put_line('No rows are found');
end;  
    