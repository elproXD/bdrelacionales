-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2025 a las 02:12:45
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `numero_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'Jonathan Horus', 'Zazueta Hernández', '23325061070413', '2008-04-09', 1, 'jonathan.zazueta23@cetis107.edu.mx', '6677562259'),
(2, 'Sergio Braulio', 'Martínez Félix', '23325061070647', '2008-08-14', 1, 'sergio.martinez23@cetis107.edu.mx', '6672075250'),
(3, 'José Roberto', 'Velázquez sillas', '23325061070541', '2008-11-12', 1, 'jose.velazquez@cetis107.edu.mx', '6677966170'),
(4, 'Rubí Esmeralda', 'Zepeda Garcia', '23325061070334', '2007-09-29', 0, 'rubi.zepeda23@cetis107.edu.mx', '6672075299'),
(5, 'Santiago López', 'Aispuro', '23325061070386', '2008-06-11', 1, 'santiago.aispuro23@cetis107.edu.mx', '6673309322'),
(6, 'Bayron Uriel', 'Estrada Camacho', '23325061070375', '2008-07-04', 1, 'bayron.estrada23@cetis107.edu.mx', '+1 (909) 95160134'),
(7, 'Víctor Manuel', 'Diaz Gastelum', '23325061070728', '2008-06-29', 1, 'Victor.Diaz23@cetis107.edu.mx', '6677911274');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
