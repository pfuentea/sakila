use sakila;

-- 1
select c.first_name as nombre,c.last_name AS apellido ,c.email as correo,d.address as direccion
from customer as c 
join address as d on c.address_id=d.address_id
where city_id=312;

-- 2
select f.title as Pelicula, f.description as descripcion,
f.release_year as año_estreno,f.rating as calificacion ,
f.special_features as caract_especiales, c.name  as genero 
from film as f
join film_category as fc on f.film_id=fc.film_id
join category as c on fc.category_id=c.category_id
where c.name ='comedy';

-- 3
select a.first_name as nombre,a.last_name as apellido,f.title as pelicula,
f.description as descripcion, f.release_year as año_estreno
from film_actor as fa 
join film  as f on fa.film_id=f.film_id
join actor as a on fa.actor_id=a.actor_id
where a.actor_id=5;

-- 4
select c.first_name as nombre , c.last_name as apellido, c.email as correo, d.address as direccion 
from customer as c
join address as d on c.address_id=d.address_id
where c.store_id=1
and city_id in (1, 42, 312 ,459);

-- 5
select f.title as pelicula,f.description as descripcion, f.release_year as año_estreno,
f.rating as calificacion, f.special_features as caract_especiales
from film_actor as fa 
join film  as f on fa.film_id=f.film_id
join actor as a on fa.actor_id=a.actor_id
where f.rating='G' 
and f.special_features like '%Behind the Scenes%'
and a.actor_id=15
;

-- 6
select fa.film_id as pelicula_id , f.title as pelicula,
a.actor_id,a.first_name as nombre, a.last_name as apellido
from film_actor as fa 
join film  as f on fa.film_id=f.film_id
join actor as a on fa.actor_id=a.actor_id
where f.film_id=369;

-- 7 
select f.title as pelicula,f.description as descripcion, f.release_year as año_estreno,
f.rating as calificacion, f.special_features as caract_especiales, c.name as genero
from film as f
join film_category as fc on f.film_id=fc.film_id
join category as c on fc.category_id=c.category_id
where rental_rate=2.99
and c.name='Drama';

-- 8
select  f.title as pelicula,
description as descripcion, f.release_year as año_estreno,
f.rating as calificacion, f.special_features as caract_especiales, c.name as genero,
a.first_name as nombre, a.last_name as apellido
from film_actor as fa 
join film  as f on fa.film_id=f.film_id
join actor as a on fa.actor_id=a.actor_id
join film_category as fc on f.film_id=fc.film_id
join category as c on fc.category_id=c.category_id
where a.first_name  like '%sandra%' 
and a.last_name   like '%kilmer%'
and c.name= 'Action' ;