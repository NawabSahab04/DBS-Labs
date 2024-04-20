use sakila;
select a.first_name, a.last_name, f.title from actor a inner join film_actor fm on a.actor_id = fm.actor_id  inner join film f on f.film_id = fm.film_id;
select sum(amount) from payment group by customer_id;
select rental_id from rental where rental_date not between '2005-01-01' and '2005-01-31';
select sum(p.amount) from store s inner join staff st on s.store_id = st.store_id inner join payment p on p.staff_id = st.staff_id group by s.store_id;

SELECT customer.customer_id, 
       CONCAT(customer.first_name, ' ', customer.last_name) AS customer_name
FROM customer
JOIN rental ON customer.customer_id = rental.customer_id
WHERE rental.rental_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY);
