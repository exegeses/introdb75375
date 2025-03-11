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

