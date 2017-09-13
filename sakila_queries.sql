#1
SELECT city.city_id, customer.first_name, customer.last_name, customer.email, address.address
from customer
JOIN address on address.address_id = customer.address_id 
JOIN city on city.city_id = address.city_id
WHERE city.city_id = 312

#2
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name
from category
JOIN film_category ON category.category_id = film_category.category_id
JOIN film on film.film_id = film_category.film_id
WHERE category.name = 'Comedy'

#3
SELECT actor.actor_id, actor.first_name, actor.last_name, film.title, film.description, film.release_year
FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
JOIN film ON film.film_id = film_actor.film_id
WHERE actor.actor_id = 5

#4
SELECT store.store_id, city.city_id, customer.first_name, customer.last_name, customer.email, address.address
from customer
JOIN address on address.address_id = customer.address_id 
JOIN city on city.city_id = address.city_id
JOIN store ON store.store_id = customer.store_id
WHERE store.store_id = 1 and city.city_id in(1,42,312,459)
ORDER BY city.city_id

#5
SELECT film.title, film.description, film.release_year, film.rating, film.special_features
FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
JOIN film ON film.film_id = film_actor.film_id
WHERE film.rating = 'G' and film.special_features like '%behind the scenes%' and actor.actor_id = 15

#6
SELECT film.film_id, film.title, actor.actor_id, actor.first_name, actor.last_name
FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
JOIN film ON film.film_id = film_actor.film_id
WHERE film.film_id = 369

#7
SELECT film.film_id, film.title, film.description, film.release_year, film.rating, film.special_features, category.name, film.rental_rate
FROM category
JOIN film_category ON category.category_id = film_category.category_id
JOIN film on film.film_id = film_category.film_id
WHERE rental_rate = 2.99 and category.name = "Drama" 

#8
SELECT concat(actor.first_name, ' ', actor.last_name) as actor_name, film.film_id, film.title, film.description, film.release_year, film.rating, film.special_features, category.name
from film
JOIN film_category ON film_category.film_id = film.film_id
JOIN category ON category.category_id = film_category.category_id 
JOIN film_actor ON film_actor.film_id = film.film_id
JOIN actor ON actor.actor_id = film_actor.actor_id
WHERE category.name = "action" and actor.actor_name = "SANDRA " and actor.last_name = "KILMER"


