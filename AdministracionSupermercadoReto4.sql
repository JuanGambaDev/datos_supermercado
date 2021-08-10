-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 11-08-2021 a las 00:50:24
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `AdministracionSupermercadoReto4`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_categoria`
--

CREATE TABLE `tb_categoria` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `DescripcionGeneral` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_categoria`
--

INSERT INTO `tb_categoria` (`Id`, `Nombre`, `DescripcionGeneral`) VALUES
(1, 'Aseo Personal', 'productos destinados para limpieza del cuerpo'),
(2, 'Carnes rojas', 'Carnes de res y cerdo'),
(3, 'bebidas', 'toda clase de bebidas'),
(4, 'bebes', 'productos relacionado con el cuidado de un bebe'),
(5, 'Limpieza', 'productos relacionados con el aseo del hogar.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `Id` int(11) NOT NULL,
  `DocumentoDeIdentidad` varchar(20) NOT NULL,
  `Nombres` varchar(20) NOT NULL,
  `Apellidos` varchar(20) NOT NULL,
  `CorreoElectronico` varchar(20) NOT NULL,
  `id_Telefonos` int(11) NOT NULL,
  `id_Direccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_clientes`
--

INSERT INTO `tb_clientes` (`Id`, `DocumentoDeIdentidad`, `Nombres`, `Apellidos`, `CorreoElectronico`, `id_Telefonos`, `id_Direccion`) VALUES
(1, '1022525321', 'Jairo', 'Lopez', 'jairolopez@email.com', 1, 6),
(2, '1022452124', 'Nayibe', 'Flores', 'nayibeflores@email', 2, 7),
(3, '1022857421', 'Saul', 'Gamez', 'saulgamez@email', 3, 8),
(4, '1033211522', 'Claudia', 'Rodriguez', 'crcr@email', 4, 9),
(5, '1033265412', 'Rocio', 'Puentes', 'rociop@email', 5, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_direcciones`
--

CREATE TABLE `tb_direcciones` (
  `Id` int(11) NOT NULL,
  `CalleCarrera` varchar(20) NOT NULL,
  `Numero` varchar(20) NOT NULL,
  `Barrio` varchar(20) NOT NULL,
  `Ciudad` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_direcciones`
--

INSERT INTO `tb_direcciones` (`Id`, `CalleCarrera`, `Numero`, `Barrio`, `Ciudad`) VALUES
(1, 'tv', '49', 'Laureles', 'Bogotá'),
(2, 'cll', '98', 'Suba', 'Bogotá'),
(3, 'cra.', '98', 'Chico', 'Bogotá'),
(4, 'cll.', '93', 'El poblado', 'Medellin'),
(5, 'cll', '13', 'Las comunas', 'Medellin'),
(6, 'cll', '51', 'Molinos', 'Bogotá'),
(7, 'tv', '56', 'Tunal', 'Bogotá'),
(8, 'tv', '95', 'La Castellana', 'Bogotá'),
(9, 'Cll', '62', 'Chapinero', 'Bogotá'),
(10, 'cll', '36', 'La gran america', 'Bogotá');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_productos`
--

CREATE TABLE `tb_productos` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `PrecioActual` int(20) NOT NULL,
  `Existencia` int(11) NOT NULL,
  `id_Categoria` int(11) NOT NULL,
  `id_Proveedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_productos`
--

INSERT INTO `tb_productos` (`Id`, `Nombre`, `PrecioActual`, `Existencia`, `id_Categoria`, `id_Proveedor`) VALUES
(1, 'Shampo', 8000, 20, 1, 1),
(2, 'Carne de res', 10000, 50, 2, 2),
(3, 'Gaseosa', 5000, 20, 3, 3),
(4, 'Pañales', 32000, 50, 4, 4),
(5, 'Clorox', 4200, 100, 5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_proveedores`
--

CREATE TABLE `tb_proveedores` (
  `Id` int(11) NOT NULL,
  `Nit` varchar(20) NOT NULL,
  `RazonSocial` varchar(20) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `CorreoElectronico` varchar(20) NOT NULL,
  `RepresentanteLegal` varchar(20) NOT NULL,
  `SitioWeb` varchar(20) NOT NULL,
  `id_Direccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_proveedores`
--

INSERT INTO `tb_proveedores` (`Id`, `Nit`, `RazonSocial`, `Telefono`, `CorreoElectronico`, `RepresentanteLegal`, `SitioWeb`, `id_Direccion`) VALUES
(1, '001', 'Limpia Mas S.A.', '3212121', 'limpiamas@email.com', 'Ricardo Forero', 'limpiamas.com', 1),
(2, '002', 'reserdo S.A.', '5206354', 'reserdo@email.com', 'Julian Rios', 'reserdo.com', 2),
(3, '003', 'Postobon S.A.', '7070704', 'postobon@email.com', 'Nicolas Lule', 'postobon.com', 3),
(4, '004', 'Winny S.A.', '2000321', 'winny@email.com', 'Marta Cardozo', 'winny.com', 3),
(5, '005', 'Fab S.A.', '5252463', 'fab@email.com', 'Yury Mendez', 'fab.com', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_telefonos`
--

CREATE TABLE `tb_telefonos` (
  `Id` int(11) NOT NULL,
  `Numero` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_telefonos`
--

INSERT INTO `tb_telefonos` (`Id`, `Numero`) VALUES
(1, '7141999'),
(2, '5642112'),
(3, '5621714'),
(4, '5265251'),
(5, '6566512');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ventas`
--

CREATE TABLE `tb_ventas` (
  `Id` int(11) NOT NULL,
  `FechaDeVenta` varchar(20) NOT NULL,
  `ValorDescuento` int(11) NOT NULL DEFAULT 0,
  `ValorTotal` int(11) NOT NULL,
  `id_Cliente` int(11) NOT NULL,
  `id_Productos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_ventas`
--

INSERT INTO `tb_ventas` (`Id`, `FechaDeVenta`, `ValorDescuento`, `ValorTotal`, `id_Cliente`, `id_Productos`) VALUES
(1, '25/05/2021', 1200, 6800, 5, 1),
(2, '25/06/2021', 1000, 9000, 4, 2),
(3, '15/06/2021', 800, 6200, 3, 1),
(4, '16/06/2021', 2000, 6000, 2, 1),
(5, '18/06/2021', 1700, 2500, 1, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_categoria`
--
ALTER TABLE `tb_categoria`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `id_Telefonos` (`id_Telefonos`),
  ADD KEY `id_Direccion` (`id_Direccion`);

--
-- Indices de la tabla `tb_direcciones`
--
ALTER TABLE `tb_direcciones`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `id_Categoria` (`id_Categoria`),
  ADD KEY `id_Proveedor` (`id_Proveedor`);

--
-- Indices de la tabla `tb_proveedores`
--
ALTER TABLE `tb_proveedores`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `id_Direccion` (`id_Direccion`);

--
-- Indices de la tabla `tb_telefonos`
--
ALTER TABLE `tb_telefonos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tb_ventas`
--
ALTER TABLE `tb_ventas`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `id_Cliente` (`id_Cliente`),
  ADD KEY `id_Productos` (`id_Productos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_categoria`
--
ALTER TABLE `tb_categoria`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tb_direcciones`
--
ALTER TABLE `tb_direcciones`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tb_proveedores`
--
ALTER TABLE `tb_proveedores`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tb_telefonos`
--
ALTER TABLE `tb_telefonos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tb_ventas`
--
ALTER TABLE `tb_ventas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD CONSTRAINT `tb_clientes_ibfk_1` FOREIGN KEY (`id_Telefonos`) REFERENCES `tb_telefonos` (`Id`),
  ADD CONSTRAINT `tb_clientes_ibfk_2` FOREIGN KEY (`id_Direccion`) REFERENCES `tb_direcciones` (`Id`);

--
-- Filtros para la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  ADD CONSTRAINT `tb_productos_ibfk_1` FOREIGN KEY (`id_Categoria`) REFERENCES `tb_categoria` (`Id`),
  ADD CONSTRAINT `tb_productos_ibfk_2` FOREIGN KEY (`id_Proveedor`) REFERENCES `tb_proveedores` (`Id`);

--
-- Filtros para la tabla `tb_proveedores`
--
ALTER TABLE `tb_proveedores`
  ADD CONSTRAINT `tb_proveedores_ibfk_1` FOREIGN KEY (`id_Direccion`) REFERENCES `tb_direcciones` (`Id`);

--
-- Filtros para la tabla `tb_ventas`
--
ALTER TABLE `tb_ventas`
  ADD CONSTRAINT `tb_ventas_ibfk_1` FOREIGN KEY (`id_Cliente`) REFERENCES `tb_clientes` (`Id`),
  ADD CONSTRAINT `tb_ventas_ibfk_2` FOREIGN KEY (`id_Productos`) REFERENCES `tb_productos` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
