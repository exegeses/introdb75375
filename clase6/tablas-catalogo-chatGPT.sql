CREATE TABLE marcas (
        idMarca INT AUTO_INCREMENT PRIMARY KEY,
        mkNombre VARCHAR(100) NOT NULL
);

CREATE TABLE categorias (
        idCategoria INT AUTO_INCREMENT PRIMARY KEY,
        catNombre VARCHAR(100) NOT NULL
);

CREATE TABLE productos2 (
        idProducto INT AUTO_INCREMENT PRIMARY KEY,
        prdNombre VARCHAR(100) NOT NULL,
        prdPrecio DECIMAL(10,2) NOT NULL,
        idMarca INT,
        idCategoria INT,
        prdDescripcion TEXT,
        prdImagen VARCHAR(255),
        prdActivo BOOLEAN DEFAULT TRUE,
        FOREIGN KEY (idMarca) REFERENCES marcas(idMarca) ON DELETE SET NULL,
        FOREIGN KEY (idCategoria) REFERENCES categorias(idCategoria) ON DELETE SET NULL
);
