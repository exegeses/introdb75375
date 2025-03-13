# Modificación de datos (registro) de una tabla

> para modificar los datos de una tabla utilizamos el comando **UPDATE**


> Sintáxis:  

    UPDATE nombreTabla  
        SET nombreCampo = valor,  
            nombreCampo2 = valor2
      WHERE condicion;

> Ejemplo práctico:

    UPDATE productos2  
        SET prdPrecio = 210  
      WHERE idProducto = 1;

    UPDATE clientes  
        SET nombre = 'María',   
            apellido = 'Pérez'  
      WHERE id = 12;  

> Modificar el precio de todos los productos de la categoría 4
> Aplicar un 5% de aumento

    UPDATE productos2  
        SET prdPrecio = prdPrecio * 1.05  
      WHERE idCategoria = 4;  
