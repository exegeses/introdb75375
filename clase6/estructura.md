# tablas catálogo
marcas
    idMarca pk
    mkNombre

categorias
    idCategoria pk
    catNombre

productos2
    idProducto pk
    prdNombre
    prdPrecio
    idMarca fk
    idCategoria fk
    prdDescripcion
    prdImagen
    prdActivo

-------
auto_increment
autoincrement
