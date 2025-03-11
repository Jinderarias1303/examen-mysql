DROP database if exists sakilacampus;
create database sakilacampus;
use sakilacampus;

CREATE TABLE ACTOR(
id_actor int primary key,
nombre varchar(100),
apellidos varchar(100),
ultima_actualizacion timestamp
);

CREATE TABLE categoria(
id_categoria int primary key,
nombre varchar(25),
ultima_actualizacion timestamp
);

CREATE TABLE pais(
id_pais int primary key ,
nombre varchar(50),
ultima_actualizacion timestamp
);
CREATE table ciudad(
id_ciudad int primary key,
nombre varchar(50),
id_pais int,
ultima_actualizacion timestamp,
foreign key (id_pais) references pais(id_pais)
);


CREATE table direccion(
id_direccion int primary key,
direccion varchar(50),
direccion2 varchar(50),
distrito varchar(20),
id_cuidad int,
codigo_postal varchar(10),
telefono varchar(20),
ultima_actualizacion timestamp,
foreign key (id_cuidad) references ciudad(id_ciudad)
);

CREATE table empleado(
id_empleado int primary key,
nombre varchar(45),
apellidos varchar(45),
id_direccion int,
imagen blob,
email varchar(50),
id_almacen int,
activo int,
username varchar(16),
password varchar(40),
ultima_actualizacion timestamp,
foreign key (id_direccion) references direccion(id_direccion)
);

CREATE table almacen(
id_almacen int primary key,
id_empleado_jefe int ,
foreign key (id_empleado_jefe) references empleado(id_empleado),
id_direccion int ,
foreign key(id_direccion) references direccion(id_direccion),
ultima_actualizacion timestamp
);


CREATE table cliente(
id_cliente int primary key,
id_almacen int,
nombre varchar(45),
apellidos varchar(45),
email varchar(45),
id_direccion int,
activo int,
fecha_creacion datetime,
foreign key (id_almacen) references almacen(id_almacen),
foreign key (id_direccion) references direccion(id_direccion),
ultima_actualizacion timestamp
);

CREATE table idioma(
id_idioma int primary key,
nombre varchar(20),
ultima_actualizacion timestamp
);

create table pelicula(
id_pelicula int primary key,
titulo varchar(225),
descripcion text,
anyo_lanzamiento year,
id_idioma int,
foreign key(id_idioma) references idioma(id_idioma),
id_idioma_original int ,
duracion_alquiler int,
rental_rate decimal(4,2),
duracion int,
replacement_cost decimal(5,2),
clasificacion enum('G','PG','PG-13','R','NC-17'),
caracteres_especiales set('Trailers','Commentaries','Deleted Scenes','Behind the Scenes'),
ultima_actualizacion timestamp
);

CREATE table inventario(
id_inventario int primary key,
id_pelicula int,
id_almacen int,
foreign key(id_pelicula) references pelicula(id_pelicula),
foreign key(id_almacen) references almacen(id_almacen),
ultima_actualizacion timestamp
);

CREATE table alquiler(
id_alquiler int primary key,
fecha_alquiler datetime,
id_inventario int,
id_cliente int,
fecha_devolucion datetime,
id_empleado int,
foreign key(id_inventario) references inventario(id_inventario),
foreign key(id_cliente) references cliente(id_cliente),
foreign key(id_empleado) references empleado(id_empleado),
ultima_actualizacion timestamp
);

create table pago(
id_pago int primary key,
id_cliente int ,
id_empleado int,
id_alquiler int,
total decimal(5,2),
fecha_pago datetime,
foreign key (id_cliente) references cliente(id_cliente),
foreign key (id_empleado) references empleado(id_empleado),
foreign key (id_alquiler)  references alquiler(id_alquiler),
ultima_actializacion timestamp
);

CREATE table pelicula_categoria(
id_pelicula int,
id_categoria int,
primary key(id_pelicula,id_categoria),
foreign key(id_pelicula) references pelicula(id_pelicula),
foreign key(id_categoria) references categoria (id_categoria),
ultima_actializacion timestamp
);

create table pelicula_actor(
id_actor int,
id_pelicula int,
primary key(id_actor,id_pelicula),
foreign key(id_actor) references ACTOR(id_actor),
foreign key(id_pelicula) references pelicula(id_pelicula),
ultima_actializacion timestamp
);

create table film_text(
film_id int primary key,
title varchar(225),
description text
);












