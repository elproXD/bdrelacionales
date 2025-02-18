-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2025 a las 01:19:17
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
(1, 'Rubi Esmeralda', 'Zepeda Garcia', '23325061070514', '2007-09-29', 0, 'rubi.zepeda23@cetis107.edu.mx', '6673940804'),
(3, 'Sergio Braulio', 'Martinez Felix', '23325061070438', '2008-08-14', 1, 'sergio.martinez23@cetis107.edu.mx', '6673940809'),
(4, 'Jonathan Horus ', 'Zazueta Hernandez', '23325061070413', '2008-04-09', 1, 'jonathan.zazueta23@cetis107.edu.mx', '6673940877'),
(5, 'Bayron Uriel', 'Estrada Camacho', '23325061070375', '2008-08-14', 1, 'bayron.estrada23@cetis107.edu.mx', '6673940866'),
(7, 'Santiago ', 'Lopez Aispuro', '23325061070375', '2008-08-10', 1, 'santiago.lopez23@cetis107.edu.mx', '6673940811'),
(8, 'Paolo Nicholas', 'Valdez Bernal', '23325061070460', '2008-08-11', 1, 'paolo.valdez23@cetis107.edu.mx', '6673940555'),
(9, 'Luis Angel ', 'Moya Preciado', '23325061070393', '2008-08-12', 1, 'luis.moya23@cetis107.edu.mx', '6673940820');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id` int(11) NOT NULL,
  `materia_id` int(11) NOT NULL,
  `maestro_id` int(11) NOT NULL,
  `hora` time NOT NULL,
  `aula` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`id`, `materia_id`, `maestro_id`, `hora`, `aula`) VALUES
(1, 1, 4, '17:00:00', 'cc1'),
(2, 2, 7, '18:00:00', 'cc2'),
(3, 6, 8, '14:20:00', '123'),
(4, 3, 9, '13:00:00', '12'),
(5, 4, 1, '15:00:00', '12'),
(6, 7, 6, '16:00:00', '12'),
(7, 5, 1, '12:00:00', '12'),
(8, 8, 10, '19:00:00', '12'),
(9, 9, 9, '20:00:00', '12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Programacion', 'La Reforma de la Educación Media Superior se orienta a la construcción de un Sistema Nacional de Bachillerato, con los propósitos de conformar\r\nuna identidad propia de este nivel educativo y lograr un perfil común del egresado en todos los subsistemas y modalidades que lo constituyenintegrarse a un '),
(2, 'Electronica', 'la formación de Técnicos en Electrónica es relevante porque contribuye en la capacitación y superación\r\nprofesional de los estudiantes y les permite tener mejores expectativas de vida al poder insertarse en un sector laboral '),
(3, 'Ofimatica', 'La carrera de Técnico en Ofimática permite a los estudiantes, a lo largo del bachillerato, la adquisición de competencias desde distintos ámbitos\r\n'),
(4, 'Construccion', 'La carrera de Técnico en Ofimática permite a los estudiantes, a lo largo del bachillerato, la adquisición de competencias desde distintos ámbitos\r\n'),
(5, 'Contabilidad', 'La carrera de Técnico en Ofimática permite a los estudiantes, a lo largo del bachillerato, la adquisición de competencias desde distintos ámbitos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Genero` tinyint(1) NOT NULL,
  `Fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id`, `Nombre`, `Correo`, `Genero`, `Fecha_nacimiento`) VALUES
(1, 'David Ivan Gonzalez Perez', 'David.Gonzalez@gmail.com', 1, '1980-09-03'),
(2, 'Maria Guadalupe Dominguez Lizarraga', 'Maria.Dominguez@gmail.com', 0, '1985-11-15'),
(3, 'Francisco Javier Rochin Perez', 'Francisco.Rochin@gmail.com', 1, '1999-06-06'),
(4, 'Bayron Nicholas Moya Garcia', 'Bayron.moya@gmail.com', 1, '1990-04-08'),
(5, 'Rubi Fernanda Perez Payan', 'rubi.perez@gmail.com', 0, '1992-01-31'),
(6, 'Paolo Joan Diaz Valdez', 'Paolo.Diaz@gmail.com', 1, '1987-10-28'),
(7, 'Angel Diego Arreola Camacho', 'angel.arreola@gmail.com', 1, '1995-12-04'),
(8, 'Frida Gastelum Loaiza', 'frida.gastelum@gmail.com', 0, '2000-07-01'),
(9, 'Sofia Sanchez Arbillaga', 'Sofia.Arbillaga@gmail.com', 0, '1980-08-19'),
(10, 'Veronica Hernandez Diaz', 'Veronica.hernandez@gmail.com', 0, '1999-04-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `Nombre`, `Semestre`) VALUES
(1, 'Bd Relacionales', 4),
(2, 'Bd No Relacionales', 4),
(3, 'Conciencia Historica', 4),
(4, 'Ciencias Sociales', 4),
(5, 'Tutoria', 4),
(6, 'Recursos Socioemocionales', 4),
(7, 'Ingles', 4),
(8, 'Reaccion Quimica', 4),
(9, 'Matematicas', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materia_id` (`materia_id`),
  ADD KEY `maestro_id` (`maestro_id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clases`
--
ALTER TABLE `clases`
  ADD CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `clases_ibfk_2` FOREIGN KEY (`maestro_id`) REFERENCES `maestros` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
