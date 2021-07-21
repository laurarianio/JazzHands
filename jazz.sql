-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-07-2021 a las 04:36:46
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `jazz`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `jazz`.`servicios` (
  `id` int(4) NOT NULL,
  `spa` varchar(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `proceso` varchar(20) NOT NULL,
  `duracion` varchar(20) NOT NULL,
  `precio` int(6) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `jazz`.`servicios` (`id`, `spa`, `nombre`, `proceso`, `duracion`, `precio`, `foto`) VALUES
(0, '', '', '0', '', 0, ''),
(1000, 'uñas', 'Manicuría básica con opción de esmaltado común', '1 hora', '7 a 15 días', 700, 'img/mani.png'),
(1001, 'uñas', 'Manicuría con esmaltado semipermanente (Incluye 2 decoracion', '2 horas', '20 a 40 días', 1000, 'img/semi.png'),
(1002, 'uñas', 'Capping con gel o acrigel. Incluye 2 decoraciones a elección en total.', '3 horas', '20 a 40 días', 1200, 'img/capping.png'),
(1003, 'uñas', 'Esculpidas con gel o acrigel.\r\nIncluye 2 decoraciones a elección en total.', '4 horas', '20 a 40 días', 1650, 'img/esculpidas.png'),
(1004, 'uñas', 'Reparación/reconstrucción de uña rota natural o esculpida', '30 minutos', '20 a 40 días', 200, '\"img/reparacion.png\"'),
(1005, 'uñas', 'Decoración de uña extra. Glitter, piedras, dibujo, etc.', '30 minutos', '20 a 40 días', 100, '\"img/deco.jpg\"'),
(1006, 'uñas', 'Remoción sin renovación del servicio.\r\nIncluye manicuría básica.\r\nSemipermanente', '60 minutos', '', 400, '\"img/remocion.jpg\"'),
(1007, 'uñas', 'Remoción sin renovación del servicio. Incluye manicuría básica. Capping.', '60 minutos', '', 500, '\"img/remocion.jpg\"'),
(1008, 'uñas', 'Remoción sin renovación del servicio. Incluye manicuría básica. Esculpidas.', '60 minutos', '', 600, '\"img/remocion.jpg\"'),
(2000, 'uñas', 'Pedicuría básica con opción de esmaltado común', '60 minutos', '15 a 30 días', 1000, '\"img/pedi.jpg\"'),
(2001, 'uñas', 'Pedicuría con esmaltado semipermanente', '2 horas', '1 a 2 meses', 1200, '\"img/pedi-semi.png\"'),
(3000, 'pestañas', 'Lifting de pestañas', '30 minutos', '1 a 2 meses', 900, '\"img/lifting.png\"'),
(3001, 'pestañas', 'Lifting de pestañas + tinte', '60 minutos', '1 a 2 meses', 1000, '\"img/lifting+tinte.png\"'),
(4000, 'cejas', 'Perfilado y diseño de cejas', '30 minutos', '1 a 2 meses', 750, '\"img/cejas.png\"'),
(4001, 'cejas', 'Perfilado + tinte de cejas', '60 minutos', '1 a 2 meses', 850, '\"img/cejas-tinte.png\"');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `jazz`.`servicios`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
