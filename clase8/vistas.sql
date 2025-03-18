# Vistas en SQL
/*
   Una vista es una consulta que podemos almacenar
   dentro de nuestra base de datos
   !!! Parece una tabla independiente pero en realidad no lo es
*/

CREATE VIEW lista_precios
  AS
    SELECT idProducto as id,
           prdNombre AS Producto,
           prdPrecio AS Contado,
           prdPrecio * 1.05 AS Lista,
           mkNombre AS Marca,
           catNombre AS Categoría
    FROM productos2 AS p
        JOIN marcas AS m
          ON p.idMarca = m.idMarca
        JOIN categorias AS c
          ON p.idCategoria = c.idCategoria;
