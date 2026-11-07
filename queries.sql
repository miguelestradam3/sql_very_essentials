/*
Promedio gastado por cliente
Usando la funcion CONCAT(), ROUND() y AVG().
*/

SELECT
    CONCAT(clientes.nombre,' ',clientes.primer_apellido) AS "Cliente",
    ROUND(AVG(ventas.item_cantidad * inventario.precio),2) AS "Promedio gastado por cliente"
FROM ventas
INNER JOIN clientes
    ON ventas.id_cliente = clientes.id
INNER JOIN inventario
    ON ventas.id_item = inventario.id
GROUP BY
    clientes.id,
    clientes.nombre,
    clientes.primer_apellido;

/*
Cantidad de clientes por banco
Usando la funcion COUNT().
*/
SELECT
    nombre_banco AS "Banco",
    COUNT(id_cliente) AS "Clientes por Banco"
FROM bancos
GROUP BY nombre_banco;

/*
Total vendido por empleado
Usando la funcion CONCAT(), COUNT() y SUM().
*/
SELECT
    CONCAT(empleados.nombre,' ',empleados.primer_apellido) AS "Empleado",
    COUNT(ventas.id) AS "Ventas realizadas",
    ROUND(SUM(ventas.item_cantidad * inventario.precio),2) AS "Total vendido"
FROM ventas
INNER JOIN empleados
    ON ventas.id_empleado = empleados.id
INNER JOIN inventario
    ON ventas.id_item = inventario.id
GROUP BY
    empleados.id,
    empleados.nombre,
    empleados.primer_apellido;

/*
Productos que generaron más de $100
Ejemplo del uso de HAVING.
*/
SELECT
    inventario.nombre AS "Nombre del producto",
    ROUND(SUM(ventas.item_cantidad * inventario.precio),2) AS "Total en ventas"
FROM ventas
INNER JOIN inventario
    ON ventas.id_item = inventario.id
GROUP BY
    inventario.id,
    inventario.nombre
HAVING SUM(ventas.item_cantidad * inventario.precio) > 100;

/*
Ordenar productos por precio
Uso de ORDER BY y de WHERE (precio mayor a $20 y cantidad mayor a 10)
*/
SELECT
    id,
    nombre,
    cantidad_en_stock,
    precio
FROM inventario
    WHERE precio > 20 AND cantidad_en_stock > 10
ORDER BY precio DESC;