-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-07-2026 a las 21:56:52
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `miguel_estrada`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bancos`
--

CREATE TABLE `bancos` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `nombre_banco` varchar(50) DEFAULT NULL,
  `cuenta_de_cobro` varchar(50) DEFAULT NULL,
  `inscripcion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bancos`
--

INSERT INTO `bancos` (`id`, `id_cliente`, `nombre_banco`, `cuenta_de_cobro`, `inscripcion`) VALUES
(1, 1, 'Banco Nacional', '1001001001', '2026-07-19 19:32:47'),
(2, 2, 'Banco de Costa Rica', '1001001002', '2026-07-19 19:32:47'),
(3, 3, 'BAC Credomatic', '1001001003', '2026-07-19 19:32:47'),
(4, 4, 'Scotiabank', '1001001004', '2026-07-19 19:32:47'),
(5, 5, 'Davivienda', '1001001005', '2026-07-19 19:32:47'),
(6, 6, 'Banco Popular', '1001001006', '2026-07-19 19:32:47'),
(7, 7, 'Promerica', '1001001007', '2026-07-19 19:32:47'),
(8, 8, 'Banco Lafise', '1001001008', '2026-07-19 19:32:47'),
(9, 9, 'Banco General', '1001001009', '2026-07-19 19:32:47'),
(10, 10, 'Banco Improsa', '1001001010', '2026-07-19 19:32:47'),
(11, 1, 'BAC Credomatic', '1234567890', '2026-07-19 19:41:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `primer_apellido` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `inscripcion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `primer_apellido`, `correo`, `numero`, `inscripcion`) VALUES
(1, 'Laura', 'González', 'laura.gonzalez@example.com', '555-2001', '2026-07-19 19:14:00'),
(2, 'Andrés', 'Castillo', 'andres.castillo@example.com', '555-2002', '2026-07-19 19:14:00'),
(3, 'Patricia', 'Mora', 'patricia.mora@example.com', '555-2003', '2026-07-19 19:14:00'),
(4, 'José', 'Herrera', 'jose.herrera@example.com', '555-2004', '2026-07-19 19:14:00'),
(5, 'Gabriela', 'Vargas', 'gabriela.vargas@example.com', '555-2005', '2026-07-19 19:14:00'),
(6, 'Ricardo', 'Solís', 'ricardo.solis@example.com', '555-2006', '2026-07-19 19:14:00'),
(7, 'Natalia', 'Chaves', 'natalia.chaves@example.com', '555-2007', '2026-07-19 19:14:00'),
(8, 'Fernando', 'Rojas', 'fernando.rojas@example.com', '555-2008', '2026-07-19 19:14:00'),
(9, 'Melissa', 'Aguilar', 'melissa.aguilar@example.com', '555-2009', '2026-07-19 19:14:00'),
(10, 'Kevin', 'Ramírez', 'kevin.ramirez@example.com', '555-2010', '2026-07-19 19:14:00'),
(11, 'Carolina', 'Jiménez', 'carolina.jimenez@example.com', '555-2011', '2026-07-19 19:14:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `primer_apellido` varchar(50) DEFAULT NULL,
  `segundo_apellido` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `inscripcion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `primer_apellido`, `segundo_apellido`, `correo`, `numero`, `inscripcion`) VALUES
(1, 'Juan', 'Pérez', 'Gómez', 'juan.perez@example.com', '555-1001', '2026-07-19 19:11:08'),
(2, 'María', 'Rodríguez', 'López', 'maria.rodriguez@example.com', '555-1002', '2026-07-19 19:11:08'),
(3, 'Carlos', 'Fernández', 'Mora', 'carlos.fernandez@example.com', '555-1003', '2026-07-19 19:11:08'),
(4, 'Ana', 'Sánchez', 'Ruiz', 'ana.sanchez@example.com', '555-1004', '2026-07-19 19:11:08'),
(5, 'Luis', 'Jiménez', 'Castro', 'luis.jimenez@example.com', '555-1005', '2026-07-19 19:11:08'),
(6, 'Sofía', 'Vargas', 'Herrera', 'sofia.vargas@example.com', '555-1006', '2026-07-19 19:11:08'),
(7, 'Diego', 'Ramírez', 'Solano', 'diego.ramirez@example.com', '555-1007', '2026-07-19 19:11:08'),
(8, 'Valeria', 'Morales', 'Díaz', 'valeria.morales@example.com', '555-1008', '2026-07-19 19:11:08'),
(9, 'Javier', 'Rojas', 'Aguilar', 'javier.rojas@example.com', '555-1009', '2026-07-19 19:11:08'),
(10, 'Daniela', 'Alvarado', 'Chaves', 'daniela.alvarado@example.com', '555-1010', '2026-07-19 19:11:08'),
(11, 'Miguel', 'Estrada', 'Murillo', 'miguel.estrada@example.com', '555-1011', '2026-07-19 19:11:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `cantidad_en_stock` int(11) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `inscripcion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id`, `nombre`, `cantidad_en_stock`, `precio`, `inscripcion`) VALUES
(1, 'Laptop Dell Inspiron', 15, 899.99, '2026-07-19 19:01:11'),
(2, 'Wireless Mouse', 50, 19.99, '2026-07-19 19:01:11'),
(3, 'Mechanical Keyboard', 25, 79.5, '2026-07-19 19:01:11'),
(4, '27-inch Monitor', 12, 249.99, '2026-07-19 19:01:11'),
(5, 'USB-C Cable', 100, 9.99, '2026-07-19 19:01:11'),
(6, 'External Hard Drive 1TB', 20, 64.95, '2026-07-19 19:01:11'),
(7, 'Webcam HD', 18, 39.99, '2026-07-19 19:01:11'),
(8, 'Bluetooth Speaker', 30, 54.99, '2026-07-19 19:01:11'),
(9, 'Office Chair', 10, 179.99, '2026-07-19 19:01:11'),
(10, 'Desk Lamp LED', 40, 29.95, '2026-07-19 19:01:11'),
(11, 'Gaming Headset', 8, 129.99, '2026-07-19 19:02:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `item_cantidad` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `id_empleado`, `id_cliente`, `id_item`, `item_cantidad`, `fecha`) VALUES
(1, 1, 1, 3, 2, '2026-07-19 19:45:05'),
(2, 2, 2, 1, 1, '2026-07-19 19:45:05'),
(3, 3, 3, 5, 4, '2026-07-19 19:45:05'),
(4, 4, 4, 2, 3, '2026-07-19 19:45:05'),
(5, 5, 5, 8, 1, '2026-07-19 19:45:05'),
(6, 6, 6, 4, 2, '2026-07-19 19:45:05'),
(7, 7, 7, 10, 5, '2026-07-19 19:45:05'),
(8, 8, 8, 6, 1, '2026-07-19 19:45:05'),
(9, 9, 9, 7, 2, '2026-07-19 19:45:05'),
(10, 10, 10, 9, 1, '2026-07-19 19:45:05'),
(11, 5, 1, 3, 12, '2026-07-19 19:45:42');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bancos`
--
ALTER TABLE `bancos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_empleado` (`id_empleado`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_item` (`id_item`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bancos`
--
ALTER TABLE `bancos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bancos`
--
ALTER TABLE `bancos`
  ADD CONSTRAINT `bancos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`id_item`) REFERENCES `inventario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

--
-- UPDATE AND DELETE EXAMPLES
--

UPDATE empleados
SET numero = '555-1111'
WHERE id = 5;


DELETE FROM ventas
WHERE id = 8;
