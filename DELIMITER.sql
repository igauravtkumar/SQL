use regex1;
select * from employees;
select first_name,
sum(salary) over(partition by first_name) from employees;

select first_name,salary,
sum(salary) over(partition by first_name order by salary) 
from employees;
select first_name,salary,
sum(salary) over(partition by first_name),
rank() over(partition by first_name order by salary) 
from employees;
with cte as 
(select first_name,salary,sum(salary) over(partition by first_name), rank() 
over(partition by first_name order by salary desc) as r1
from employees)
select * from cte where first_name = 'John';


-- set of statement
use sakila;

DELIMITER $$

create procedure getactor()
begin  # statement return krte h
     select * from actor order by last_name;
end $$  # block krte h
DELIMITER ; 

# delimiter --> define proceure
# begin -> statement return 
# end --> block


use sakila;

select amount from payment where payment_id = 3 ;
DELIMITER //
CREATE PROCEDURE proce_amount()
begin 
     declare v_amount double(6,2);
     select amount into v_amount from payment
     where payment_id = 3;
     select v_amount;
end //
DELIMITER ;

use sakila;
DELIMITER //
CREATE PROCEDURE proce_amount2(IN pid int)
begin 
     declare v_amount double(6,2);
     select amount into v_amount from payment
     where payment_id = pid;
     select v_amount;
end //
DELIMITER ;

call proce_amount2(2);
# que -- In name parameter and first name and last name ko print krna h 
# actor table mein

use sakila;
select * from actor;
DELIMITER // 
CREATE PROCEDURE act_name(in customer_id int)
begin 
     select first_name , last_name from actor
     where actor_id = customer_id;
end //

DELIMITER ;

call act_name(3);





