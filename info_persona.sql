-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2019 a las 19:05:42
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `persona`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_persona`
--

CREATE TABLE `info_persona` (
  `Nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_id` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Documento` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Correo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Celular` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha_nacimiento` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `info_persona`
--

INSERT INTO `info_persona` (`Nombre`, `Apellido`, `tipo_id`, `Documento`, `Correo`, `Celular`, `Fecha_nacimiento`) VALUES
('Mateo', 'Gomez Meneses', 'cc', '1234557', 'matem@gmail.com', '3109876745', '29/08/1997');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
