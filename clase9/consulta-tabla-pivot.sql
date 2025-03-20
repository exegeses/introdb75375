# consulta a través de una tabla intermedia (pivot)

-- obtener el nombre del producto (tabla productos2)
-- obtener el nombre del proveedor (tabla proveedores)

SELECT prdNombre AS producto, prvNombre AS proveedor
FROM productos2
JOIN productos_proveedores
  ON productos2.idProducto = productos_proveedores.idProducto
JOIN proveedores
  ON proveedores.idProveedor = productos_proveedores.idProveedor;


SELECT prdNombre AS producto,
       mkNombre AS marca,
       prvNombre AS proveedor
FROM productos2
JOIN marcas
  ON productos2.idMarca = marcas.idMarca
JOIN productos_proveedores
  ON productos2.idProducto = productos_proveedores.idProducto
JOIN proveedores
  ON proveedores.idProveedor = productos_proveedores.idProveedor;
