set serveroutput on;

declare
    x int;
    y int;
--    c int;
    output int;
procedure addNo(a in int , b in int,z out int) is 
begin 
--    c:=a+b;
      z:=a+b;
--   dbms_output.put_line('value of procedure' || ' ' || c);
--    dbms_output.put_line(a+b);
      dbms_output.put_line('inside parameter'  || ' ' || z);
end;
begin 
    x :=10;
    y:=20;
--    addNo(5,10);
    dbms_output.put_line('before value is '  || ' ' || output);
    addNo(x,y,output);
--    dbms_output.put_line('value is '  || ' ' || x);
--    dbms_output.put_line('value is c'  || ' ' || c);
    dbms_output.put_line('value is '  || ' ' || output);
end;