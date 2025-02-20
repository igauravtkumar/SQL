use sakila;

-- now get those infromation where amount is equal to rental_id 1185 equal or greater

select * from payment where 
amount>=(select amount from payment where rental_id=1185);

-- get the month is equal to payment_id 3 equal 

select * from payment 
where month(payment_date)=(select month(payment_date) 
							from payment 
							where payment_id=3);
                            
-- get those amount where the total number of 
-- payments for the amount should 
-- we greater then the total payment
-- of amount 0.99

select count(amount) from payment where amount = 0.99 group by amount;

select amount,count(amount) from payment group by amount
having count(amount)>(select count(amount) 
						from payment 
                        where amount = 0.99 );
                        
                        
-- get each customer id and the total amount spend 
-- where toal amount should we greater 
-- then toal amount spend by customr id 9

select * from payment;

select customer_id, count(customer_id), sum(amount) 
from payment group by customer_id
having sum(amount)>(select sum(amount) 
					from payment 
                    where customer_id=9);

select sum(amount) from payment where customer_id=9;




-- subquery 


select * from payment 
where amount in (select amount from payment
				where payment_id in (1,3));
                
                
select * from payment 
where amount =any (select amount from payment
				where payment_id in (1,3));
      
      
-- minium value of result set
select * from payment 
where amount >any (select amount from payment
				where payment_id in (1,3));
                
-- maxium value of result set
select * from payment 
where amount <any (select amount from payment
				where payment_id in (1,3));
                
-- return maxium value of reult set
select * from payment 
where amount >all (select amount from payment
				where payment_id in (1,3));
                
-- return minium value of reult set
select * from payment 
where amount <all (select amount from payment
				where payment_id in (1,3));
                
                
