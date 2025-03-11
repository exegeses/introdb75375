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

CREATE TABLE IF NOT EXISTS `personas` (
	`id` int AUTO_INCREMENT NOT NULL,
	`nombre` varchar(15) NOT NULL,
	`apellido` varchar(15) NOT NULL,
	`edad` int NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `productos`
    ADD CONSTRAINT `productos_fk4`
        FOREIGN KEY (`empresa_id`)
        REFERENCES `empresas`(`id`);

