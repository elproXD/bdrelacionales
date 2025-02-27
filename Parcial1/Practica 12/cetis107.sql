-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-02-2025 a las 01:17:23
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
(1, 'Emiliano', 'Lopez Sanchez', '23325061070437', '2008-01-25', 1, 'emiliano.lopez23@cetis107.edu.mx', '6675137288'),
(2, 'hector aaron', 'ortiz serrano', '28742347238748347', '2008-08-23', 1, 'sptmarco16@gmail.com', '6673583222'),
(3, 'Victor manuel', 'diaz gastelum', '23325061070728', '2008-09-28', 1, 'victor.diaz23@cetis107.edu.mx', '66784895957894'),
(4, 'maximo', 'Coronel Aispuro', '23325061070422', '2008-04-12', 1, 'maximo.coronel23@cetis107.edu.mx', '66757854578'),
(5, 'Axel Armando', 'Beltran Lopez', '23325061070317', '2008-05-13', 1, 'axel.beltran@cetis107.edu.mx', '667578235784'),
(6, 'Diengo', 'Dominguez lizarraga', '23325061070579', '2008-11-10', 1, 'diego.dominguez@cetis107.edu.mx', '6676786767'),
(7, 'Firda Sofia', 'Sanchez Valenzuela', '23325061070611', '2008-01-10', 0, 'frida.sanchez23@cetis107.edu.mx', '66778789678'),
(8, 'Angel Gibran', 'Loaiza Garcia', '23325061070694', '2008-08-26', 1, 'angel.loaiza23@cetis107.edu.mx', '667676767679'),
(9, 'Bayron Uriel', 'Estrada Camacho', '23325061070375', '2008-08-13', 1, 'bayron.estrada23@cetis107.edu.mx', '6676786767'),
(10, 'Santiago', 'Lopez Aispuro', '23325061070386', '2008-04-20', 1, 'santiago.aispuro@cetis107.edu.mx', '6676786785678'),
(11, 'Luis Angel ', 'Moya Preciado', '23325061070393', '2008-12-29', 1, 'luis.moya@cetis107.edu.mx', '667787896789'),
(12, 'Paolo Nicholas', 'Valdez Bernal', '23325061070460', '2008-10-30', 1, 'paolo.valdez@cetis107.edu.mx', '66767675678'),
(13, 'mateo', 'ibarra gastelum', '23325061070484', '2008-06-24', 1, 'mateo.ibarra@cetis107.edu.mx', '6675678567'),
(14, 'Oscar Ivan', 'Torres Burgos', '23325061070510', '2008-05-03', 1, 'oscar.torres23@cetis107.edu.mx', '667679678'),
(15, 'Emiliano', 'Ojeda Quintero', '23325061070702', '2008-10-10', 1, 'emiliano.ojeda23@cetis107.edu.mx', '667678578568');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`) VALUES
(1, 'Peso pluma\r\n'),
(2, 'Tito doble p'),
(3, 'Boysix'),
(4, 'Tailor Swift'),
(5, 'Romeo Santos'),
(6, 'Bbno$');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistascanciones`
--

CREATE TABLE `artistascanciones` (
  `id` int(11) NOT NULL,
  `artistas_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistascanciones`
--

INSERT INTO `artistascanciones` (`id`, `artistas_id`, `canciones_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 6, 7),
(4, 1, 8),
(5, 3, 3),
(6, 4, 4),
(7, 5, 5),
(8, 5, 9),
(9, 3, 6),
(10, 6, 11),
(11, 4, 10),
(12, 2, 12),
(13, 5, 13),
(14, 3, 14),
(15, 1, 15),
(16, 1, 16),
(17, 3, 17),
(18, 5, 18),
(19, 1, 20),
(20, 1, 19),
(21, 1, 21),
(22, 1, 22),
(23, 3, 23),
(24, 3, 24),
(25, 3, 25),
(26, 3, 26),
(27, 6, 27),
(30, 6, 28),
(31, 6, 29),
(32, 6, 30),
(33, 6, 31),
(35, 6, 32),
(36, 5, 33),
(37, 3, 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'La people', 3, '00:03:01', '2022-01-04', 1, 'imgur/sakdkosj.com'),
(2, 'Zapata', 3, '00:03:15', '2022-06-04', 1, 'imgur/sakdkjssj.com'),
(3, 'Doritoti', 6, '00:02:46', '2008-04-19', 1, 'FOTO DE HATSUNE MIKU'),
(4, 'JUEVES', 5, '00:02:59', '2011-04-19', 1, 'LA BANDA'),
(5, 'THE OTHER WOMAN', 6, '00:03:14', '2018-01-04', 1, 'EXCLUSIV'),
(6, 'HILITO', 4, '00:02:45', '2016-01-17', 1, 'ROMEO SANTOS'),
(7, 'Check', 6, '02:00:00', '2024-09-21', 1, 'Bbno$ Money'),
(8, 'La silent', 3, '00:02:01', '2022-06-04', 1, 'imgur/sakdkosj.com'),
(9, 'Landrone', 6, '00:02:14', '2022-09-24', 1, 'Santa'),
(10, 'fullcharge', 6, '00:03:08', '2024-11-21', 1, 'SiCOpS'),
(11, 'Fortng', 2, '00:02:34', '2020-02-24', 1, 'NightStra'),
(12, 'Noches sin ti', 5, '00:01:47', '2020-05-02', 1, 'Bebellorando'),
(13, 'Roderio', 4, '00:02:41', '2017-07-05', 1, 'ToroAstro'),
(14, 'SinTi', 5, '00:03:48', '2020-08-12', 1, 'HombreSolo'),
(15, 'Empericado', 3, '00:03:23', '2024-03-19', 1, 'Hierba'),
(16, 'Lucha', 3, '00:02:40', '2024-06-04', 1, 'Boxeo sangriento'),
(17, 'La fila', 6, '00:01:47', '2020-02-29', 1, 'Circuito'),
(18, 'SantoslL', 4, '00:03:09', '2020-11-02', 1, 'Abalancha'),
(19, 'Hay Mama', 3, '00:02:34', '2024-09-11', 1, 'Desayuno'),
(20, 'LuegoVeras', 3, '02:00:00', '2024-11-21', 1, 'ArmaDeFuego'),
(21, 'YaMañana', 3, '00:02:14', '2024-09-16', 1, 'Salsa Soya'),
(22, 'SinFinal', 3, '00:01:47', '2024-06-02', 1, 'CieloRojo'),
(23, 'SoloYo', 5, '00:02:35', '2022-06-05', 1, 'CaraTriste'),
(24, 'Tecleado', 5, '00:02:05', '2022-09-24', 1, 'Persona llorando'),
(25, 'Sintiedo Algo', 5, '00:02:00', '2020-02-21', 1, 'Persona depresiva'),
(26, 'Locox', 5, '00:03:31', '2022-09-06', 1, 'Personaencruz'),
(27, 'AlgunDia', 6, '00:02:01', '2024-09-21', 1, 'OscuridadDensa'),
(28, 'West', 6, '00:02:27', '2023-06-04', 1, 'Casa'),
(29, 'Salado', 6, '00:02:17', '2022-06-07', 1, 'SalDerramandose'),
(30, 'Controlado', 6, '00:02:38', '2020-05-24', 1, 'Mouse y control'),
(31, 'Vuelven', 6, '00:03:22', '2022-11-24', 1, 'Caminando'),
(32, 'Sintiendo', 6, '00:02:14', '2022-09-24', 1, 'Latidos de corazon'),
(33, 'Saltando', 4, '00:02:44', '2024-11-21', 1, 'Saltamontes'),
(34, 'Crujiendo', 4, '00:02:50', '2020-02-24', 1, 'Crujiendo.jpg'),
(35, 'Intertensual', 5, '02:21:00', '2021-05-03', 1, 'CorazonRoto.jpg'),
(36, 'LAbeliquisa', 3, '00:03:08', '2021-06-23', 1, 'Carrodelaño.jpg'),
(37, 'Rivalizacion', 6, '00:03:22', '2023-07-15', 1, 'Galacta Marvel.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carga_academica`
--

CREATE TABLE `carga_academica` (
  `id` int(11) NOT NULL,
  `clase_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carga_academica`
--

INSERT INTO `carga_academica` (`id`, `clase_id`, `alumno_id`, `calificacion`) VALUES
(1, 1, 2, 9),
(2, 2, 2, 10),
(3, 3, 2, 9),
(4, 4, 2, 9),
(5, 5, 2, 8),
(6, 6, 2, 9),
(7, 7, 2, 7),
(8, 8, 2, 9),
(9, 9, 2, 10),
(10, 1, 4, 7),
(11, 2, 4, 10),
(12, 3, 4, 9),
(13, 4, 4, 9),
(14, 5, 4, 10),
(15, 6, 4, 8),
(16, 7, 4, 8),
(17, 8, 4, 10),
(18, 9, 4, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasess`
--

CREATE TABLE `clasess` (
  `id` int(11) NOT NULL,
  `materia_id` int(200) NOT NULL,
  `maestro_id` int(200) NOT NULL,
  `hora` time NOT NULL,
  `aula` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clasess`
--

INSERT INTO `clasess` (`id`, `materia_id`, `maestro_id`, `hora`, `aula`) VALUES
(1, 1, 3, '13:20:00', 'CC2'),
(2, 5, 1, '04:00:00', 'CC1'),
(3, 3, 4, '03:20:00', '12'),
(4, 2, 9, '02:00:00', '12'),
(5, 8, 8, '06:00:00', '12'),
(6, 6, 6, '04:40:00', '12'),
(7, 7, 10, '05:20:00', '12'),
(8, 4, 9, '04:00:00', '12'),
(9, 9, 7, '04:40:00', '12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(100) NOT NULL,
  `DESCRIPCION` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`ID`, `NOMBRE`, `DESCRIPCION`) VALUES
(1, 'PROGRAMACION', 'La carrera de Técnico en Programación del Bachillerato Tecnológico, establecida en el Acuerdo Secretarial 653, ofrece una formación integral que combina competencias técnicas, académicas y profesionales. El plan de estudios se estructura en seis semestres, con un enfoque en formación básica (matemát'),
(2, 'construccion', 'haces casitas y planos'),
(3, 'contabilidad', 'aprendes a administrar '),
(4, 'diseño grafico', 'aprendes a diseñar y a dibujar'),
(5, 'electronica', 'aprendes a soldar y a hacer circuitos electronicos'),
(6, 'ofimatica', 'aprendes a usar el exel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`id`, `usuario_id`, `cancion_id`) VALUES
(1, 2, 1),
(2, 1, 2),
(3, 3, 3),
(4, 5, 1),
(5, 4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`, `descripcion`) VALUES
(2, 'Rock', 'Musica para apestosos'),
(3, 'Corridos Tumbados', 'Musica para Sabios'),
(4, 'Bachata', 'Musica para bailar en fiestas'),
(5, 'Dolido', 'Para llorar'),
(6, 'Pop', 'Tailor Swift');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `fecha de nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id`, `nombre`, `correo`, `genero`, `fecha de nacimiento`) VALUES
(1, 'luis carlos', 'luis.carlos85@cetis107.edu.mx', 1, '1985-02-20'),
(2, 'francisco rochin', 'francisco.rochin79@cetis107.edu.mx', 1, '1980-05-23'),
(3, 'jorge ibarra', 'jorge.ibarra0@cetis107.edu.mx', 0, '1810-09-16'),
(4, 'maria guadalupe', 'maria.guadalupe', 0, '1985-02-20'),
(5, 'marco salazar', 'marco.salazar23@cetis107.edu.mx', 1, '1980-05-23'),
(6, 'alma aragon', 'alm.aragon23@cetis107.edu.mx', 0, '1980-08-23'),
(7, 'maria verduzco', 'maria.verdusco23@cetis107.edu.mx', 0, '1970-06-17'),
(8, 'cynthia gonzales', 'cynthia.gonzales23@cetis107.edu.mx', 0, '1990-09-08'),
(9, 'marco salazar', 'marco.salazar23@cetis.edu.mx', 1, '1990-06-30'),
(10, 'luis aispuro', 'luis.aispuro23@cetis107.edu.mx', 1, '1987-02-28');

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
(1, 'BD No RELACIONALES', 4),
(2, 'INGLES', 4),
(3, 'TEMAS MATE 1', 4),
(4, 'RS ', 4),
(5, 'BD RELACIONALES', 4),
(6, 'REACCIONES QUIMICA', 4),
(7, 'HISTORIA', 4),
(8, 'CIENCIAS SOCIALES 3', 4),
(9, 'TUTORIA', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `tipo`, `precio`) VALUES
(1, 'Gratis', 0),
(2, 'Premium Individual', 300),
(3, 'Recluso', 59),
(4, 'Duo', 159),
(5, 'Familiar', 359),
(6, 'Desarrollador', 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `totalcanciones` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlistcanciones`
--

CREATE TABLE `playlistcanciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(99) NOT NULL,
  `correo` varchar(99) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Horus', 'elproXD@gmail.com', 4),
(2, 'Frida Sofia', 'frida1234@gmail.com', 5),
(3, 'Rubi Zepeda', 'RubiZepedita@gmail.com', 6),
(4, 'Wong', 'apestoso12@gmail.com', 1),
(5, 'Sergio', 'unapeersona@gmail.com', 5),
(6, 'nickuck8009', 'peanutznico@gmail.com', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artistas_id` (`artistas_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clase_id` (`clase_id`),
  ADD KEY `alumno_id` (`alumno_id`);

--
-- Indices de la tabla `clasess`
--
ALTER TABLE `clasess`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materia_id` (`materia_id`),
  ADD KEY `maestro_id` (`maestro_id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
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
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `clasess`
--
ALTER TABLE `clasess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  ADD CONSTRAINT `artistascanciones_ibfk_1` FOREIGN KEY (`artistas_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artistascanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD CONSTRAINT `carga_academica_ibfk_1` FOREIGN KEY (`clase_id`) REFERENCES `clasess` (`id`),
  ADD CONSTRAINT `carga_academica_ibfk_2` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`);

--
-- Filtros para la tabla `clasess`
--
ALTER TABLE `clasess`
  ADD CONSTRAINT `clasess_ibfk_1` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `clasess_ibfk_2` FOREIGN KEY (`maestro_id`) REFERENCES `maestros` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD CONSTRAINT `playlistcanciones_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
