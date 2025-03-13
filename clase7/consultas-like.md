# Consultas de coincidencia (qué contenga una cadena de caracteres)

> Las consultas de coincidencia se utilizan para obtener registros donde vamos a filtrar utilizando una cadena de caracteres
> Eso quiere decir que como filtro vamos a explicitar que contenga cierta cadena de caracteres

> Traer nombre, precio, descripción de la tabla productos2
> Que en la columna descripción contenga la palabra 'bluetooth'

    SELECT  prdNombre,  
            prdPrecio,  
            prdDescripcion  
       FROM productos2  
       WHERE prdDescripcion LIKE '%bluetooth%';  

> Utilizamos la palabra reservada **LIKE** en combinación con el carácter de **%** (porcentaje) Como una especie de comodín que podría ocupar 1 (uno), varios o hasta ningún carácter.

> El símbolo de **%** porcentaje no es el único comodín,
> también tenemos el **_** (guión bajo) qué es un comodín de 1 (un) solo un carácter.

 