use sakilacampus;

-- CONSULTAS

-- 1.Encuentra el cliente que ha realizado la mayor cantidad de alquileres en los últimos 6 meses.

SELECT  COUNT(c.id_cliente) as id_cliente  
FROM cliente c 
join alquiler a on c.id_cliente = a.id_cliente 
LIMIT 1;

-- 2.Lista las cinco películas más alquiladas durante el último año.

SELECT COUNT(p.id_pelicula) as peliculas_alquiladas, p.titulo 
FROM pelicula p 
JOIN inventario i on p.id_pelicula = i.id_pelicula 
JOIN alquiler a on a.id_inventario = i.id_inventario 
GROUP by p.titulo 
LIMIT 5;

-- 3.Obtén el total de ingresos y la cantidad de alquileres realizados por cada categoría de película.



-- 4.Calcula el número total de clientes que han realizado alquileres por cada idioma disponible en un mes específico.



-- 5.Encuentra a los clientes que han alquilado todas las películas de una misma categoría.



-- 6.Lista las tres ciudades con más clientes activos en el último trimestre.

SELECT c.nombre 
FROM ciudad c 
JOIN direccion d ON c.id_ciudad = d.id_cuidad 
JOIN cliente c2 on d.id_direccion = c2.id_direccion 
WHERE c2.activo = "1"
LIMIT 3;

-- 7.Muestra las cinco categorías con menos alquileres registrados en el último año.



-- 8.Calcula el promedio de días que un cliente tarda en devolver las películas alquiladas.



-- 9.Encuentra los cinco empleados que gestionaron más alquileres en la categoría de Acción.

SELECT COUNT(e.id_empleado) as empleado_gestion , e.nombre 
FROM empleado e 
JOIN alquiler a on e.id_empleado = a.id_empleado 
GROUP by e.nombre 
LIMIT 5;

-- solo se encuentran 2 por que en la base no se pudieron ingresar mas alquileres 

-- 10.Genera un informe de los clientes con alquileres más recurrentes.



-- 11.Calcula el costo promedio de alquiler por idioma de las películas.



-- 12.Lista las cinco películas con mayor duración alquiladas en el último año.



-- 13.Muestra los clientes que más alquilaron películas de Comedia.



-- 14.Encuentra la cantidad total de días alquilados por cada cliente en el último mes.



-- 15.Muestra el número de alquileres diarios en cada almacén durante el último trimestre.



-- 16.Calcula los ingresos totales generados por cada almacén en el último semestre.



-- 17.Encuentra el cliente que ha realizado el alquiler más caro en el último año.



-- 18.Lista las cinco categorías con más ingresos generados durante los últimos tres meses.



-- 19.Obtén la cantidad de películas alquiladas por cada idioma en el último mes.



-- 20.Lista los clientes que no han realizado ningún alquiler en el último año.



