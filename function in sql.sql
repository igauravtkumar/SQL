-- functions==> block of code 
-- string function

use sakila;
select *from actor;

select concat("Mr", first_name,' ',last_name) from actor;

select concat_ws(" ","Mr", first_name,' ',last_name) from actor;

select first_name, substr(first_name,1) from actor;

select first_name, substr(first_name,2) from actor;

select first_name, substr(first_name,2,3) from actor;

select first_name, substr(first_name,-4,2) from actor;

select first_name, instr(first_name,'L') from actor;

select first_name, locate('L',first_name,3) from actor;

select first_name, locate('E',first_name,3) from actor;

select first_name, length(first_name) from actor;

select first_name, char_length(first_name) from actor;

-- dummy table (dual)

select 10+2 from dual;

select trim("  Hello   ") from dual;

select trim("  Hello   o") from dual;

select trim(trailing ' ' from "  Hello   ") from dual;

select trim(trailing 'l' from "  Hello   xllll") from dual;

-- lpad ,rpad 
-- l - left  r- right  pad -- addition 

select first_name,lpad(first_name,6,"#") from actor;

-- concat , substr , lpad , trim --> mostly used 

-- numeric function 
# round, truncate , floor , mod ,pow ,ceil

# round -- value round off

select round(12.6) from dual;

select round(12.4) from dual;
select round(12.423, 1) from dual;
select round(12.473, 1) from dual;

select round(12.463, 2) from dual;
select round(12.478, 2) from dual;

select round(43.478, -1) from dual;
select round(46.478, -1) from dual;

select round(46.478, -2) from dual;
select round(76.478, -2) from dual;
select round(376.478, -2) from dual;
select round(376.478, -3) from dual;
select round(876.478, -3) from dual;

-- truncate -- not roundoff the value this is extract the values
select truncate(876.478, 2) from dual;

-- floor --> data cnvert in lower 
select floor(10.99999) from dual; 
-- ceil --> give upper value
select ceil(10.99999) from dual; 
select ceil(10.001) from dual; 

