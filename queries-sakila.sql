
/* Actividad1- Qué consulta ejecutarías para 
obtener todos los clientes dentro de city_id = 312? 
Su consulta debe devolver el nombre, apellido, correo electrónico
 y dirección del cliente.*/
 
select 
	cu.first_name,
    cu.last_name,
    cu.email,
    concat(ad.address,' ', ad.district) as address,
    ci.city
from city ci inner join address ad
on ci.city_id = ad.city_id inner join customer cu
on ad.address_id = cu.address_id
where ci.city_id = 312;

/* Actividad2-Qué consulta harías para obtener todas las películas de comedia? Su consulta debe 
devolver el título de la película, la descripción, el año de estreno, 
la calificación, las características especiales y el género (categoría).*/
  
select
    film.title,
    film.description, 
    film.release_year,
    film.rating,
    film.special_features,
    category.name
    from film join film_category on film_category.film_id = film.film_id
    join category on film_category.category_id = category.category_id;
    
    /* Actividad3-¿Qué consulta harías para obtener todas las películas unidas por actor_id = 5? 
    Su consulta debe devolver la identificación del actor, 
    el nombre del actor, el título de la película, la descripción y el año de lanzamiento.*/
select
	actor.actor_id,
    actor.first_name,
    actor.last_name,
    film.film_id,
	film.title,
    film.description, 
    film.release_year
from film join actor join film_actor on film.film_id = film_actor.film_id
    where film_actor.actor_id and actor.actor_id = 5;
    
   /* Actividad4-¿Qué consulta ejecutaría para obtener todos los clientes en store_id = 1 y 
   dentro de estas ciudades (1, 42, 312 y 459)? Su consulta debe devolver el nombre, apellido,
   correo electrónico y dirección del cliente.*/
   
select 
    city.city_id,
    store.store_id,
    customer.first_name, 
    customer.last_name,
    customer.email,
    address.address
from customer join store on customer.store_id = store.store_id
    join address on customer.address_id = address.address_id
    join city on address.city_id = city.city_id
    where store.store_id = 1 and city.city_id in (1, 42, 312, 459);
    
     /* Actividad5- ¿Qué consulta realizarías para obtener todas las películas con una "calificación = G" y "característica especial = 
     detrás de escena", unidas por actor_id = 15? Su consulta debe devolver el título de la película, la descripción, el año de lanzamiento,
     la calificación y la función especial. Sugerencia: puede usar la función LIKE para obtener la parte 'detrás de escena'.*/
select
    film.title,
    film.description, 
    film.release_year,
    film.rating,
    film.special_features
    from film join film_actor on film_actor.film_id = film.film_id
    where rating = 'G' AND actor_id = 15 AND film.special_features LIKE "%Behind the Scenes%";
    
	/* Actividad6- ¿Qué consulta harías para obtener todos los actores que se unieron en el film_id = 369?
	Su consulta debe devolver film_id, title, actor_id y actor_name.*/
select 
	actor.actor_id,
	actor.first_name, 
    actor.last_name, 
    film.film_id, 
    film.title
    from actor join film_actor on film_actor.actor_id = actor.actor_id
    join film on film_actor.film_id = film.film_id
    where film.film_id = '369';

     
	/* ¿Qué consulta harías para obtener todas las películas dramáticas con una tarifa de alquiler de 2.99? Su consulta
    debe devolver el título de la película, la descripción, el año de estreno, la calificación, las características especiales
    y el género (categoría). */
select
	film.title, 
    film.description, 
    film.release_year, 
    film.rating, 
    film.special_features, 
    category.name AS genre
from film join film_category ON film_category.film_id = film.film_id
join category on film_category.category_id = category.category_id
where film.rental_rate = '2.99';
    
	/*Actividad8- ¿Qué consulta harías para obtener todas las películas de acción a las que se une SANDRA KILMER? Su consulta debe devolver el título de la película,
    la descripción, el año de estreno, la calificación, las características especiales, el género (categoría) y el nombre y apellido del actor.*/
  select
	film.title,
    film.description,
    film.release_year, 
    film.rating, 
    film.special_features, 
    category.name,
    actor.first_name, 
    actor.last_name
from film join film_category on film_category.film_id = film.film_id
join category on film_category.category_id = category.category_id
join film_actor on film_actor.film_id = film.film_id
join actor on film_actor.actor_id = actor.actor_id
where category.name = 'Action' and actor.actor_id = '23';
     
     

 
     
     
    
    
   
    
	
    
    

    
    
    
    
   




     
    
    
    
    

    

