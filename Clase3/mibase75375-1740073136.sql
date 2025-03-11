CREATE TABLE IF NOT EXISTS `productos` (
	`id` int AUTO_INCREMENT NOT NULL,
	`nombre` varchar(50) NOT NULL,
	`precio` float,
	`stock` int NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `empresas` (
	`id` int NOT NULL,
	`nombre` varchar(30) NOT NULL,
	`cuidad` varchar(30) NOT NULL,
	`email` varchar(40) NOT NULL,
	`telefono` varchar(40),
	PRIMARY KEY (`id`)
);


