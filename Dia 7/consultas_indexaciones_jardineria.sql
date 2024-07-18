-- ##########################
-- ### Dia 7 - Jardineria ###
-- ##########################

-- Crear índice en el campo 'puesto' de la tabla 'empleado' para optimizar la consulta
CREATE INDEX idx_empleado_puesto ON empleado(puesto);

SELECT 
    cliente.nombre_cliente,
    cliente.telefono,
    cliente.ciudad,
    empleado.nombre AS nombre_responsable,
    empleado.apellido1 AS apellido_responsable,
    empleado.email
FROM 
    cliente
INNER JOIN 
    empleado ON cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado
WHERE 
    empleado.puesto = 'responsable de ventas';

-- Crear índice en el campo 'ciudad' de la tabla 'cliente' para optimizar la consulta
CREATE INDEX idx_cliente_ciudad ON cliente(ciudad);

-- Crear índice en el campo 'fecha_pedido' de la tabla 'pedido' para optimizar la consulta
CREATE INDEX idx_pedido_fecha_pedido ON pedido(fecha_pedido);

SELECT 
    pedido.codigo_pedido,
    pedido.fecha_pedido,
    pedido.fecha_entrega,
    pedido.estado,
    pedido.comentarios,
    pedido.codigo_cliente
FROM 
    pedido
INNER JOIN 
    cliente ON pedido.codigo_cliente = cliente.codigo_cliente
WHERE 
    cliente.ciudad = 'Sotogrande'
    AND pedido.fecha_pedido BETWEEN '2009-03-15' AND '2009-07-15';

-- Crear índice en el campo 'gama' de la tabla 'producto' para optimizar la consulta
CREATE INDEX idx_producto_gama ON producto(gama);

-- Crear índice en el campo 'proveedor' de la tabla 'producto' para optimizar la consulta
CREATE INDEX idx_producto_proveedor ON producto(proveedor);

SELECT 
    producto.codigo_producto,
    producto.nombre,
    producto.descripcion,
    producto.cantidad_en_stock,
    producto.precio_venta * 0.90 AS precio_con_descuento,
    detalle_pedido.cantidad AS cantidad_en_pedidos
FROM 
    producto
LEFT JOIN 
    detalle_pedido ON producto.codigo_producto = detalle_pedido.codigo_producto
WHERE 
    producto.gama = 'frutas'
    AND producto.proveedor = 'Frutas Talaveras S.A';

-- Desarrollado por: Oliver López / T.I 1097911715
