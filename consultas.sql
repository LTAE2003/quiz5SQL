USE miautopuntocom;

#Vehiculos Disponibles
SELECT v.*
FROM vehiculos v
LEFT JOIN ventas ve ON v.id = ve.vehiculos_id
WHERE ve.vehiculos_id IS NULL
ORDER BY v.PRECIO DESC;

#Total de ventas realizadas por vendedor
SELECT
    v.id,
    v.NOMBRE,
    v.APELLIDO,
    COUNT(ve.id) AS total_de_ventas
FROM vendedores v
LEFT JOIN ventas ve ON v.id = ve.vendedores_id
GROUP BY v.id, v.NOMBRE, v.APELLIDO;

#Ingreso total generado por vendedor
SELECT
    v.id,
    v.NOMBRE,
    v.APELLIDO,
    SUM(ve.PRECIO_F) AS total_de_ganancias
FROM vendedores v
LEFT JOIN ventas ve ON v.id = ve.vendedores_id
GROUP BY v.id, v.NOMBRE, v.APELLIDO;

#El cliente con la compra mas costosa
SELECT 
    c.NOMBRE, 
    c.APELLIDO, 
    c.CDI, 
    v.MARCA, 
    v.MODELO, 
    ve.PRECIO_F AS monto_compra
FROM clientes c
INNER JOIN ventas ve ON c.ID = ve.clientes_id
INNER JOIN vehiculos v ON ve.vehiculos_id = v.ID
ORDER BY ve.PRECIO_F DESC
LIMIT 1;

#Lista de vehiculos vendidos el ultimo mes
SELECT 
    v.MARCA, 
    v.MODELO, 
    v.ANO, 
    ve.PRECIO_F, 
    ve.FECHA_VENTA,
    ve.METODO_PAGO,
    c.NOMBRE AS nombre_cliente, 
    c.APELLIDO AS apellido_cliente, 
    c.CDI, 
    c.TELEFONO
FROM ventas ve
INNER JOIN vehiculos v ON ve.vehiculos_id = v.ID
INNER JOIN clientes c ON ve.clientes_id = c.ID
WHERE ve.FECHA_VENTA >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH);

#Comision ganada por vendedor
SELECT 
    vd.NOMBRE, 
    vd.APELLIDO, 
    vd.COMISION AS porcentaje_comision,
    COALESCE(ROUND(SUM(ve.PRECIO_F * (vd.COMISION / 100)), 2), 0) AS comision_ganada
FROM vendedores vd
LEFT JOIN ventas ve ON vd.ID = ve.vendedores_id
GROUP BY vd.ID, vd.NOMBRE, vd.APELLIDO, vd.COMISION;

#Promedio de precios de vehiculos vendidos por tipo
SELECT 
    v.TIPO, 
    ROUND(AVG(ve.PRECIO_F), 2) AS promedio_precio
FROM vehiculos v
INNER JOIN ventas ve ON v.ID = ve.vehiculos_id
GROUP BY v.TIPO;

#Que marca de vehiculo vendio mas
SELECT 
    v.MARCA, 
    COUNT(ve.ID) AS cantidad_vendida
FROM vehiculos v
INNER JOIN ventas ve ON v.ID = ve.vehiculos_id
GROUP BY v.MARCA
ORDER BY cantidad_vendida DESC
LIMIT 1;
