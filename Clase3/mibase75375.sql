-- esto es un comentario de línea (1)
#esto es un comentario de línea (2)

/*
esto
es
un
comentario
de bloque
*/

/* esto es un comentario de bloque en una línea */

-- muestro el listado de base de datos disponibles en el motor, servicio o servidor de base de datos
show databases;
/* SHOW DATABASES;
Show Databases; */

create database mibase75375;
-- drop database mibase75375;

use mibase75375;

show tables;

CREATE TABLE personas (
    id INT unsigned AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(15) NOT NULL,
    apellido VARCHAR(15) NOT NULL,
    edad INT UNSIGNED not null
);
#drop table personas;

describe personas;
desc personas;

INSERT INTO personas (nombre, apellido, edad) VALUES
('Juan', 'Pérez', 30),
('María', 'Gómez', 25),
('Carlos', 'Rodríguez', 40);

select * from personas;

/* ----------------------- Clase 3 --------------------------- */
-- ----------------------- Clase 3 --------------------------- 
#----------------------- Clase 3 --------------------------- 

use mibase75375;

-- Crear las tablas productos y empresas y luego crear el sql necesario para establecer la relación
CREATE TABLE IF NOT EXISTS `productos` (
	`id` int AUTO_INCREMENT NOT NULL,
	`nombre` varchar(50) NOT NULL,
	`precio` float,
	`stock` int NOT NULL,
	`empresa_id` int NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `empresas` (
	`id` int NOT NULL,
	`nombre` varchar(30) NOT NULL,
	`ciudad` varchar(30) NOT NULL,
	`email` varchar(40) NOT NULL,
	`telefono` varchar(40),
	PRIMARY KEY (`id`)
);

ALTER TABLE `productos`
    ADD CONSTRAINT `productos_fk4`
        FOREIGN KEY (`empresa_id`)
        REFERENCES `empresas`(`id`);

-- Crear las tablas productos y empresas con la relación ya establecida en la estructura de la tabla productos
CREATE TABLE IF NOT EXISTS `productos` (
	`id` int AUTO_INCREMENT NOT NULL,
	`nombre` varchar(50) NOT NULL,
	`precio` float,
	`stock` int NOT NULL,
	`empresa_id` int NOT NULL,
	PRIMARY KEY (`id`),
    FOREIGN KEY (`empresa_id`)
        REFERENCES `empresas`(`id`)
);
#drop table productos;
desc productos;

CREATE TABLE IF NOT EXISTS `empresas` (
	`id` int NOT NULL,
	`nombre` varchar(30) NOT NULL,
	`ciudad` varchar(30) NOT NULL,
	`email` varchar(40) NOT NULL,
	`telefono` varchar(40),
	PRIMARY KEY (`id`)
);
-- drop table empresas;
desc empresas;


-- ---------------------------------------------------------
create table clientes(
	id int unsigned not null auto_increment,
    nombre varchar(20) not null,
    apellido varchar(20) not null,
	edad int unsigned not null,
    primary key(id)
);
describe clientes;
desc clientes;

select * from clientes;


/* 1. FORMA NORMAL DE INSERTAR UN REGISTRO o FILA DENTRO DE UNA TABLA */
insert into clientes (nombre, apellido, edad) values ('Juan', 'Perez', 21);
insert into clientes (apellido, nombre, edad) values ('Lopez', 'Ana', 23);

/* 2. FORMA MYSQL DE INSERTAR UN REGISTRO o FILA DENTRO DE UNA TABLA */
insert into clientes 
set nombre = 'Pedro',
	apellido = 'Gomez', 
    edad = 26;

/* 3. FORMA SIMPLIFICADA DE INSERTAR UN/OS REGISTRO/S o FILA/S DENTRO DE UNA TABLA */
insert into clientes values (null, 'Lucia', 'Mei', 23);

insert into clientes values (null, 'Gaby', 'Lopez', 25),
							(null, 'Diego','Gutierrez', 21),
                            (null, 'Cecilia', 'Blanco', 40);

insert into clientes values (null, 'Pablo', 'Juarez', 29);

select * from clientes;







