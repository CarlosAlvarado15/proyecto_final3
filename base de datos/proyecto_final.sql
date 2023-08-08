-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-08-2023 a las 22:24:18
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

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`correo`, `nombre`, `apellidos`, `direccion`, `fecha_nacimiento`, `rol_id`) VALUES
('carlosjam10@gmail.com', 'Carlos', 'Alvarado', 'Colombia', '0000-00-00', 2),
('carlosjam10@gmail.com', 'Carlos', 'Alvarado', 'Colombia', '0000-00-00', 2),
('Luis@hotmail.com', 'Luis ', 'Castillo', 'Caracas', '0000-00-00', 2),
('admin@funval', 'Carlos javier ', 'Alvarez', 'Peru', '0000-00-00', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestro_materia`
--

CREATE TABLE `maestro_materia` (
  `id_mm` int(11) NOT NULL,
  `maestro_id` int(11) DEFAULT NULL,
  `materia_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_materia` int(11) NOT NULL,
  `nombre_materia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(3, 15126389, 'Carlos', 'Alvarado', 'Colombia', '0000-00-00', 3),
(4, 15126383, 'Carlos', 'Alvarado', 'Colombia', '0000-00-00', 3),
(5, 15587385, 'Arlis', 'Acagua', 'Venezuela', '0000-00-00', 3),
(6, 5588882, 'Victor ', 'Perez', 'Lima', '0000-00-00', 3),
(7, 13123408, 'Jose ', 'Perales', 'Quito', '0000-00-00', 3);

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
(1, 'admin@admin', '3333', 1);

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
  ADD KEY `usuarios_login_fk0` (`datos_id`);

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
  MODIFY `id_mm` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios_datos`
--
ALTER TABLE `usuarios_datos`
  MODIFY `id_ud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios_login`
--
ALTER TABLE `usuarios_login`
  MODIFY `id_ul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
