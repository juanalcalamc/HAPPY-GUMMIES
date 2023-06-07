-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 07-06-2023 a las 14:29:21
-- Versión del servidor: 5.7.15-log
-- Versión de PHP: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `happy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_admis`
--

CREATE TABLE `tbl_admis` (
  `cons` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Pais` varchar(50) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Cuentas_de_banco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_admis`
--

INSERT INTO `tbl_admis` (`cons`, `Nombre`, `Pais`, `Telefono`, `Cuentas_de_banco`) VALUES
(1, 'jhorlandis', 'colombia', 0, 0),
(2, 'Maria Fernanda', 'colombia', 0, 0),
(3, 'Samuel guillot', 'colombia', 0, 0),
(4, 'Isaura Pérez', 'colombia', 0, 0),
(8, 'Juan carlos', 'colombia', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `cons` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `perfil` varchar(15) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `Orden_compra` varchar(30) NOT NULL,
  `Orden_venta` varchar(4) NOT NULL,
  `clave` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`cons`, `nombre`, `perfil`, `correo`, `telefono`, `Orden_compra`, `Orden_venta`, `clave`) VALUES
(1, 'marta cecilia', 'marta', 'martacecilia@gmail.com', '3863436', '2 gomitas', '2000', '00000'),
(2, 'olga lucia', 'olga', 'olgalucia@gmail.com', '738382', '4 gomitas', '4000', '000000'),
(3, 'pedro rodriguez', 'pedro', 'pedrorodriguez@gmail.com', '387244', '6 gomitas', '5000', '00000'),
(4, 'carlos emiro', 'carlos', 'carlsoemiro@gmail.com', '3737746', ' 1 paquete', '7000', '0000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ingredientes`
--

CREATE TABLE `tbl_ingredientes` (
  `cons` int(11) DEFAULT NULL,
  `Nombre` varchar(20) NOT NULL,
  `compra` int(20) NOT NULL,
  `venta` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_ingredientes`
--

INSERT INTO `tbl_ingredientes` (`cons`, `Nombre`, `compra`, `venta`) VALUES
(NULL, 'frutas', 50000, 0),
(NULL, 'gelatina', 20000, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario`
--

CREATE TABLE `tbl_usuario` (
  `cons` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `perfil` varchar(15) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `grado` varchar(4) NOT NULL,
  `clave` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`cons`, `nombre`, `perfil`, `correo`, `telefono`, `estado`, `grado`, `clave`) VALUES
(1, 'marta cecilia', 'marta', 'martacecilia@gmail.com', '3863436', 'activo', '7.1', '000000'),
(2, 'olga lucia', 'olga', 'olgalucia@gmail.com', '738382', 'activo', '8.1', '0000000'),
(3, 'pedro rodriguez', 'pedro', 'pedrorodriguez@gmail.com', '387244', 'activo', '9.2', '0000000'),
(4, 'carlos emiro', 'carlos', 'carlsoemiro@gmail.com', '3737746', 'activo', '6.1', '0000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ventas`
--

CREATE TABLE `tbl_ventas` (
  `cons` int(11) NOT NULL,
  `Cantidad_vendida` int(30) NOT NULL,
  `Preciodelaventa` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_ventas`
--

INSERT INTO `tbl_ventas` (`cons`, `Cantidad_vendida`, `Preciodelaventa`) VALUES
(1, 20, 140),
(2, 10, 20);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_admis`
--
ALTER TABLE `tbl_admis`
  ADD PRIMARY KEY (`cons`);

--
-- Indices de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`cons`);

--
-- Indices de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`cons`);

--
-- Indices de la tabla `tbl_ventas`
--
ALTER TABLE `tbl_ventas`
  ADD PRIMARY KEY (`cons`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_admis`
--
ALTER TABLE `tbl_admis`
  MODIFY `cons` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  MODIFY `cons` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  MODIFY `cons` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tbl_ventas`
--
ALTER TABLE `tbl_ventas`
  MODIFY `cons` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
