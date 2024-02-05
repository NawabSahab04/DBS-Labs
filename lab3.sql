use sakila;
select title, first_name, last_name from film inner join film_actor on film.film_id=film_actor.film_id
inner join actor on actor.actor_id=film_actor.actor_id;

select amount from payment inner join customer on payment.customer_id = customer.customer_id;

select distinct title from film inner join inventory on film.film_id = inventory.film_id 
inner join rental on rental.inventory_id = inventory.inventory_id
where month(return_date)!=1 or year(return_date)!=2005;

select sum(amount) from payment inner join staff on payment.staff_id=staff.staff_id
inner join store on store.store_id = staff.store_id; 

select * from customer inner join rental on rental.customer_id = customer.customer_id
where return_date<=curdate()-interval 30 day;