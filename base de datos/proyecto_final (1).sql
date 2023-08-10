-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-08-2023 a las 20:57:19
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_materia`
--

CREATE TABLE `alumno_materia` (
  `id_am` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  `materia_id` int(11) NOT NULL,
  `calificacion` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `correo` varchar(100) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestro_materia`
--

CREATE TABLE `maestro_materia` (
  `id_mm` int(11) NOT NULL,
  `maestro_id` int(11) DEFAULT NULL,
  `materia_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `maestro_materia`
--

INSERT INTO `maestro_materia` (`id_mm`, `maestro_id`, `materia_id`) VALUES
(6, 24, 7),
(7, 25, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_materia` int(11) NOT NULL,
  `nombre_materia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `nombre_materia`) VALUES
(16, 'Artistica'),
(9, 'Astronomia'),
(10, 'Biologia'),
(7, 'Biomedicina'),
(4, 'Calculo'),
(11, 'Ciencia de los Materiales'),
(1, 'Ciencias'),
(12, 'Ciencias Ambientales'),
(13, 'Ciencias Basicas'),
(14, 'Ciencias de la Tierra'),
(5, 'Corrosion'),
(8, 'Guarani'),
(15, 'Idiomas'),
(2, 'Ingles'),
(3, 'Matematica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nombre_rol`) VALUES
(1, 'admin'),
(2, 'maestro'),
(3, 'alumno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_datos`
--

CREATE TABLE `usuarios_datos` (
  `id_ud` int(11) NOT NULL,
  `dni` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios_datos`
--

INSERT INTO `usuarios_datos` (`id_ud`, `dni`, `nombre`, `apellidos`, `direccion`, `fecha_nacimiento`, `rol_id`) VALUES
(1, 0, 'Harold', 'Carazas', 'lima', '2001-12-20', 1),
(4, 15126383, 'Carlos', 'Sosa', 'Colombia', '2023-08-31', 3),
(5, 15587385, 'Arlis', 'Acagua', 'Venezuela', '0000-00-00', 3),
(6, 5588882, 'Victor ', 'Perez', 'Lima', '0000-00-00', 3),
(7, 13123408, 'Jose ', 'Perales', 'Quito', '0000-00-00', 3),
(9, 0, 'Arlis', 'Alvarado', 'Australia', '0000-00-00', 2),
(10, 0, 'CarlosJose', 'Perez', 'Ecuador', '0000-00-00', 2),
(12, 0, 'Daniel JESUS', 'Suarez', 'Lima', '0000-00-00', 2),
(13, 0, 'daniela', 'Suarez', 'Lima', '0000-00-00', 2),
(14, 0, 'Maria Alejandra', 'asdsd', 'sdsds', '0000-00-00', 2),
(15, 0, 'Carlos P', 'Alvarado M', 'Chile', '0000-00-00', 2),
(17, 0, 'Carlos Santiago', 'Alvarado', 'Chile', '0000-00-00', 2),
(20, 0, 'Felipe', 'Alvarado', 'Colombia', '0000-00-00', 2),
(22, 0, 'Carlos', 'Alvarado', 'Colombia', '0000-00-00', 2),
(24, 0, 'Harold ', 'Carazas P', 'Callao', '0000-00-00', 2),
(25, 0, 'Harold ', 'Carazas P', 'Callao', '0000-00-00', 2),
(34, 0, 'Arelis', 'Hernandez', 'Quito', '2023-08-01', 2),
(35, 0, 'Manuel', 'Rodriguez', 'Panama', '1999-12-10', 2),
(36, 0, 'arlos', 'Alvarado', 'Colombia', '2023-08-01', 2),
(37, 0, 'arlos', 'Alvarado', 'Colombia', '2023-08-01', 2),
(38, 0, 'Carlos', 'Alvaradommmm', 'Colombia', '2023-08-03', 2),
(39, 0, 'pedro', 'Alvarado', 'Colombia', '2023-08-03', 2),
(40, 15346213, 'Diego ', 'Perez', 'Colombia', '0000-00-00', 3),
(41, 212321456, 'Josue', 'Inga', 'Uruguay', '0000-00-00', 3),
(42, 15126408, 'admin', 'admin', 'Lima', '2023-08-01', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_login`
--

CREATE TABLE `usuarios_login` (
  `id_ul` int(11) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contra` varchar(150) NOT NULL,
  `datos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios_login`
--

INSERT INTO `usuarios_login` (`id_ul`, `correo`, `contra`, `datos_id`) VALUES
(1, 'admin@admin', '3333', 1),
(3, 'juanita@man.com', '$2y$10$WdvL2F5X5kmkTax/BzYM/.ajMQ35kkf/yFJLqVSHeyBmXBo0MpZr.', 9),
(4, 'Luis@funval.com', '$2y$10$IjFUa9AoSFvJd/7C.iwuF..Lv1UrxATnZ28yDhtVbzd8GG5IpWdb.', 10),
(6, 'carlosjam10@funval.com', '$2y$10$T4DStRu/PQhPbvAi.gYm4O9M6tGxuynzjY2LLfDl86AobOBg6ieEm', 12),
(8, 'funval@funval', '$2y$10$10HqBEixafkndDeplk/rxOTI/WWAec/47gdZjkqBRCVfSi6LiUY2i', 14),
(9, 'beltran@gmail.com', '$2y$10$/USQBvJlV2LIhEiQ60CnU.YmLb77b7YITMh7I4GgwUK1kjO2YXUPu', 15),
(12, 'Jose@byu.com', '$2y$10$LFfuaHeY1Cenzzbs3GG0fu2eTrQPMVrWPx5kcLWG9./ogfSqR9oRm', 20),
(14, 'Harold@Funval.com', '$2y$10$b2PRymYSK0vo595owLVFUOJNE7wkAkL9A8VSbdrTLe0ZMFg.0ItO.', 24),
(25, 'admin@byuorg', '$2y$10$JNtiGyCBnQfVKHulIlP5JOMCr26ZU8Oj6wwR2Qn1Hr/0W6f9MLWFS', 41),
(26, 'admin@admin.net', '$2y$10$EwE7UePjeEpkj001s1x8zuaGnRrjKex.2TBbc1eXnNK/fOS09bSg.', 42);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno_materia`
--
ALTER TABLE `alumno_materia`
  ADD PRIMARY KEY (`id_am`),
  ADD KEY `alumno_materia_fk0` (`alumno_id`),
  ADD KEY `alumno_materia_fk1` (`materia_id`);

--
-- Indices de la tabla `maestro_materia`
--
ALTER TABLE `maestro_materia`
  ADD PRIMARY KEY (`id_mm`),
  ADD KEY `maestro_materia_fk0` (`maestro_id`),
  ADD KEY `maestro_materia_fk1` (`materia_id`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_materia`),
  ADD UNIQUE KEY `nombre_materia` (`nombre_materia`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `usuarios_datos`
--
ALTER TABLE `usuarios_datos`
  ADD PRIMARY KEY (`id_ud`),
  ADD KEY `usuarios_datos_fk0` (`rol_id`);

--
-- Indices de la tabla `usuarios_login`
--
ALTER TABLE `usuarios_login`
  ADD PRIMARY KEY (`id_ul`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD UNIQUE KEY `datos_id` (`datos_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno_materia`
--
ALTER TABLE `alumno_materia`
  MODIFY `id_am` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `maestro_materia`
--
ALTER TABLE `maestro_materia`
  MODIFY `id_mm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios_datos`
--
ALTER TABLE `usuarios_datos`
  MODIFY `id_ud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `usuarios_login`
--
ALTER TABLE `usuarios_login`
  MODIFY `id_ul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno_materia`
--
ALTER TABLE `alumno_materia`
  ADD CONSTRAINT `alumno_materia_fk0` FOREIGN KEY (`alumno_id`) REFERENCES `usuarios_datos` (`id_ud`),
  ADD CONSTRAINT `alumno_materia_fk1` FOREIGN KEY (`materia_id`) REFERENCES `materia` (`id_materia`);

--
-- Filtros para la tabla `maestro_materia`
--
ALTER TABLE `maestro_materia`
  ADD CONSTRAINT `maestro_materia_fk0` FOREIGN KEY (`maestro_id`) REFERENCES `usuarios_datos` (`id_ud`),
  ADD CONSTRAINT `maestro_materia_fk1` FOREIGN KEY (`materia_id`) REFERENCES `materia` (`id_materia`);

--
-- Filtros para la tabla `usuarios_datos`
--
ALTER TABLE `usuarios_datos`
  ADD CONSTRAINT `usuarios_datos_fk0` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id_rol`);

--
-- Filtros para la tabla `usuarios_login`
--
ALTER TABLE `usuarios_login`
  ADD CONSTRAINT `usuarios_login_fk0` FOREIGN KEY (`datos_id`) REFERENCES `usuarios_datos` (`id_ud`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
