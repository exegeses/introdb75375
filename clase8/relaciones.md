# Consultas con relaciones entre tablas

> Si queremos consultar datos provenientes de dos o más tablas, debemos relacionar estas tablas
> Tenemos dos técnicas para lograrlo

## 1.- Table relation

> la técnica **Table relation** se logra mencionando en el listado de tablas (después del FROM) todas las tablas necesarias para la consulta (separadas por comas)
> Y luego mediante un filtro (**WHERE**) igualamos la columna en común
> La foreign key de una tabla con la primary key de la otra tabla

> Sintáxis: 

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1, tabla2  
      WHERE tabla1.fk = tabla2.pk;
      
> Ejemplo práctico:  

    SELECT prdNombre, prdPrecio, mkNombre  
      FROM productos2, marcas  
      WHERE productos2.idMarca = marcas.idMarca;  

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
      FROM productos2, marcas, categorias  
      WHERE productos2.idMarca = marcas.idMarca  
        AND productos2.idCategoria = categorias.idCategoria;  

## 2.- Join

> En la técnica **JOIN** no mencionamos en el listado de tablas  (después del FROM)  todas las tablas necesarias para la consulta      
> Sólo mencionamos la tabla principal
> Y luego utilizamos la palabra reservada **JOIN** para mencionar la tabla secundaria
> Y finalizamos igualando la columna en común luego de la palabra **ON**



> Sintáxis:

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1 
      JOIN tabla2  
        ON tabla1.fk = tabla2.pk;

> Ejemplo práctico: 

    SELECT prdNombre, prdPrecio, mkNombre  
      FROM productos2  
      JOIN marcas  
        ON productos2.idMarca = marcas.idMarca;  

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
      FROM productos2  
      JOIN marcas  
        ON productos2.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos2.idCategoria = categorias.idCategoria;  
