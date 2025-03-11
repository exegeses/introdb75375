# tablas catalogo
create table marcas
(
    idMarca smallint unsigned auto_increment primary key,
    mkNombre varchar(50) unique not null
);

create table categorias
(
    idCategoria smallint unsigned auto_increment primary key,
    catNombre varchar(50) unique not null
);

create table productos2
(
    idProducto mediumint unsigned auto_increment primary key,
    prdNombre varchar(50) unique not null,
    prdPrecio decimal(10,2) unsigned not null,
    idMarca smallint unsigned not null,
    idCategoria smallint unsigned not null,
    prdDescripcion varchar(1000),
    prdImagen varchar(50) not null,
    prdActivo boolean default 1 not null,
    foreign key (idMarca) references marcas (idMarca),
    foreign key (idCategoria) references categorias (idCategoria)
);
