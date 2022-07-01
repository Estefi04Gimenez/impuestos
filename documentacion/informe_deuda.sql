-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2022 a las 01:06:46
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
-- Estructura de tabla para la tabla `contribuyentes`
--

CREATE TABLE `contribuyentes` (
  `id_contrib` int(11) NOT NULL,
  `nomb_comp` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cuim` int(11) NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `localidad` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `provincia` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nro` int(11) NOT NULL,
  `piso` int(11) NOT NULL,
  `depto` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cod_post` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

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
  `id_contrib` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL,
  `marca` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_rodado`
--

CREATE TABLE `tipo_de_rodado` (
  `id_tp_rod` int(11) NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id_vehic` int(11) NOT NULL,
  `id_tp_rod` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `modelo` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `domi_original` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `año` date NOT NULL,
  `id_contrib` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contribuyentes`
--
ALTER TABLE `contribuyentes`
  ADD PRIMARY KEY (`id_contrib`);

--
-- Indices de la tabla `impuesto_vehiculo`
--
ALTER TABLE `impuesto_vehiculo`
  ADD PRIMARY KEY (`id_imp`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `tipo_de_rodado`
--
ALTER TABLE `tipo_de_rodado`
  ADD PRIMARY KEY (`id_tp_rod`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id_vehic`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contribuyentes`
--
ALTER TABLE `contribuyentes`
  MODIFY `id_contrib` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `impuesto_vehiculo`
--
ALTER TABLE `impuesto_vehiculo`
  MODIFY `id_imp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_de_rodado`
--
ALTER TABLE `tipo_de_rodado`
  MODIFY `id_tp_rod` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `id_vehic` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
