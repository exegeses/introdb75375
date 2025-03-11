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

ALTER TABLE `productos` ADD CONSTRAINT `productos_fk4` FOREIGN KEY (`empresa_id`) REFERENCES `empresas`(`id`);

-- Crear las tablas productos y empresas con la relación ya establecida en la estructura de la tabla productos
CREATE TABLE IF NOT EXISTS `productos` (
	`id` int AUTO_INCREMENT NOT NULL,
	`nombre` varchar(50) NOT NULL,
	`precio` float,
	`stock` int NOT NULL,
	`empresa_id` int NOT NULL,
	PRIMARY KEY (`id`),
    FOREIGN KEY (`empresa_id`) REFERENCES `empresas`(`id`)
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

/* ------------- Clase 4 --------------- */
use mibase75375;

insert into clientes values (4, 'Maria', 'Perez', 24); -- da error porque el id 4 está utilizado: no puede haber dos registros o filas con la misma primary key
insert into clientes values (12, 'Maria', 'Perez', 24);

insert into clientes values (null, 'Mariela', 'Lopez', 22);

select * from clientes;

/* -------------------------------------------- */
/*      Clave primaria sin auto increment       */
/* -------------------------------------------- */
show tables;

create table prueba(
	id int unsigned not null,
    primary key(id)
);

desc prueba;

select * from prueba;

insert into prueba (id) values (1);
insert into prueba (id) values (2);
insert into prueba (id) values (null);
insert into prueba (id) values (-1);
insert into prueba (id) values (5);
insert into prueba (id) values (4);


/* -------------------------------------------------- */
/*      enum, default y clave primaria combinada      */
/* -------------------------------------------------- */
create table facturas(
	tipo enum('A','B','C') not null default 'A',
    numero int unsigned not null,
    primary key(tipo, numero)
);
drop table facturas;

show tables;

describe facturas;

select * from facturas;

insert into facturas (tipo, numero) values ('A', 1);
insert into facturas (tipo, numero) values ('A', 2);
insert into facturas (tipo, numero) values ('B', 1);
insert into facturas (tipo, numero) values ('C', 1);

insert into facturas (numero) values (3);
insert into facturas (numero) values (1); -- da error porque la factura A-1 está utilizada

insert into facturas (tipo, numero) values ('D', 1); 		-- da error o warning dependiendo de la versión o motor de base de datos porque 'D' no figura como caso válido dentro del enum
insert into facturas (tipo, numero) values ('A', 'Hola'); 	-- da error o warning dependiendo de la versión o motor de base de datos porque 'Hola' no es un tipo de dato numérico

insert into facturas (numero, tipo) values (2, 'C');
insert into facturas values ('C', 3);
insert into facturas set numero = 4, tipo = 'C';


/* ------------------------------------------------------------ */
/*  Unique Key (clave única) vs. Primary Key (Clave primaria)   */ 
/* ------------------------------------------------------------ */
create table alumnos(
	id int unsigned auto_increment,
	nombre varchar(20) not null,
    dni varchar(12) not null,
    unique key(dni),
    primary key(id)
);
-- drop table alumnos;
desc alumnos;

select * from alumnos;

insert into alumnos (nombre, dni) values ('Carlos', '33.456.789');
insert into alumnos (nombre, dni) values ('Ana', '33.456.788');
insert into alumnos (nombre, dni) values ('Pablo', '37.456.788');

insert into alumnos (id, nombre, dni) values (2, 'Pedro', '37.477.788');


/* -------------------------------- */
/*         Consulta Select          */
/* -------------------------------- */

select * from clientes;

select nombre, edad from clientes;
select edad, nombre from clientes;
select nombre from clientes;
select nombre, apellido, edad from clientes;
select id, nombre, id, apellido, edad, id from clientes;
select apellido, nombre, edad from clientes;

/* -------------------------------- */
/*    Consulta Select sin from      */
/* -------------------------------- */
select * from clientes;

select 5+1;			-- campo o columna literal
select (5+1)*3;		-- campo o columna literal
select (5+1)*3 as Resultado;		-- campo o columna literal con alias
select (5+1)*3 as Resultado, 3.1415926 * 2 as Pix2;		-- campos o columnas literales con alias

/* -------------------------------- */
/*         Modificador LIMIT        */
/* -------------------------------- */
select id, nombre, apellido, edad 
from clientes
limit 3;


/* -------------------------------- */
/*    Modificador LIMIT + OFFSET    */
/* -------------------------------- */
select id, nombre, apellido, edad 
from clientes
-- limit y offset se usan en conjunto para paginar (paginación)
limit 3			# representa la cantidad de registros que queremos ver por página
offset 9;		# representa la cantidad de registros que tengo que saltear desde el principio para ver los datos correctos
				# cálculo offset = (Nro página - 1) * limit

/* ------------------------------------------------- */
/*    Consulta Select con from: literales y alias    */
/* ------------------------------------------------- */
/*
prompting IA (ChatGPT)
creame una tabla articulos con los siguientes campos: nombre, marca, categoria, codigo y precio, no quiero clave unica para el campo código
*/

CREATE TABLE articulos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    codigo VARCHAR(50), 
    precio DECIMAL(10,2) NOT NULL
);

desc articulos;



