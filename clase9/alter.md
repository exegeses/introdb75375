# Modificaciones de estructura en una tabla

## Cambiar nombre de una columna

    ALTER TABLE nombreTabla  
        CHANGE nombreActual nombreNuevo tipoDato;  

> Debemos especificar el tipo de datos, si no dará error.
> Debemos especificar la condición de nulidad porque si no dejará que el dato sea nulo

## Cambiar tipos de datos o modificadores de un campo

    ALTER TABLE nombreTabla  
        MODIFY nombreCampo tipoDato;

    ALTER TABLE personas  
      MODIFY apellido varchar(30) not null,  
      MODIFY edad tinyint unsigned not null;  

## Agregar una columna a una tabla al final

    ALTER TABLE nombreTabla  
      ADD nombreCampo tipoDato;

    ALTER TABLE personas  
      ADD dni int unsigned unique not null;

    ALTER TABLE personas  
      ADD comentarios varchar(500);

## Agregar una columna a una tabla después de una columna existente

    ALTER TABLE nombreTabla  
      ADD nombreCampoNuevo tipoDato  
      AFTER nombreCampoExistente;

    ALTER TABLE personas    
      ADD dni int unsigned not null  
      AFTER apellido;

## Eliminar campos en una tabla

    ALTER TABLE nombreTabla  
      DROP nombreCampo;  

    ALTER TABLE personas    
      DROP dni;

## Agregar primary key

    ALTER TABLE nombreTabla
      MODIFY nombreColumna tipoDato primary key auto_increment not null;  

## Agregar Foreign key  

    ALTER TABLE nombreTabla  
      ADD  
        FOREIGN KEY (idFK) REFERENCES tabla2 (idPK);  

    ALTER TABLE productos  
      ADD  
        FOREIGN KEY (idMarca) REFERENCES marcas (idMarca);  

