-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2022 a las 01:42:27
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `informe_deuda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuesto_vehiculo`
--

CREATE TABLE `impuesto_vehiculo` (
  `id_imp` int(11) NOT NULL,
  `cuota` int(11) NOT NULL,
  `año` date NOT NULL,
  `monto` int(11) NOT NULL,
  `estado` varchar(2) COLLATE utf8mb4_spanish_ci NOT NULL,
  `situacion` varchar(2) COLLATE utf8mb4_spanish_ci NOT NULL,
  `vencimiento` date NOT NULL,
  `actualizacion` int(11) NOT NULL,
  `interes` int(11) NOT NULL,
  `multa` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `id_contrib` int(11) NOT NULL,
  `id_vehic` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `impuesto_vehiculo`
--
ALTER TABLE `impuesto_vehiculo`
  ADD PRIMARY KEY (`id_imp`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `impuesto_vehiculo`
--
ALTER TABLE `impuesto_vehiculo`
  MODIFY `id_imp` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
