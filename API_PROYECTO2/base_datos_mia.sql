-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-08-2024 a las 22:06:59
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_datos_mia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id` int(11) NOT NULL,
  `estudiante_id` int(11) DEFAULT NULL,
  `psicologo_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `motivo` enum('ansiedad','depresion','estres','relaciones','autoestima','trauma','adicciones','desarrollo','academico','salud_mental','otros') DEFAULT NULL,
  `estado` varchar(50) DEFAULT 'pendiente',
  `sede` varchar(255) DEFAULT NULL,
  `Nombre_Completo` varchar(40) NOT NULL,
  `Correo` varchar(30) NOT NULL,
  `Genero` enum('male','female','other') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id`, `estudiante_id`, `psicologo_id`, `fecha`, `hora`, `motivo`, `estado`, `sede`, `Nombre_Completo`, `Correo`, `Genero`) VALUES
(1, 1130267745, NULL, '2024-07-30', '09:30:00', 'ansiedad', 'pendiente', 'Barranquilla', '', '', 'male'),
(2, 1130267745, NULL, '2024-08-01', '11:00:00', 'depresion', 'pendiente', 'Barranquilla', '', '', 'male'),
(3, 1130267745, NULL, '2024-08-09', '13:00:00', 'ansiedad', 'pendiente', 'Soledad', '', '', 'male'),
(4, 1130267745, NULL, '2024-08-02', '14:00:00', 'depresion', 'pendiente', 'Barranquilla', '', '', 'male'),
(5, 1140837811, NULL, '2024-08-15', '01:11:00', 'estres', 'pendiente', 'Barranquilla', '', '', 'male'),
(6, 1130267745, NULL, '2024-08-08', '03:30:00', 'estres', 'pendiente', 'Soledad', '', '', 'male'),
(7, 1130267745, NULL, '2024-08-09', NULL, '', 'pendiente', 'Soledad', '', '', 'male'),
(8, 1140837811, NULL, '2024-08-09', NULL, '', 'pendiente', 'Barranquilla', '', '', 'male'),
(9, 1130267745, NULL, '2024-08-08', '11:00:00', '', 'pendiente', 'Soledad', '', '', 'male'),
(10, 1130267745, NULL, '2024-08-08', '11:00:00', 'adicciones', 'pendiente', 'Soledad', '', '', 'male'),
(11, 1130267745, NULL, '2024-08-08', '11:00:00', 'ansiedad', 'pendiente', 'Soledad', '', '', 'male'),
(12, 1130267745, NULL, '2024-08-08', '11:00:00', '', 'pendiente', 'Soledad', '', '', 'male'),
(13, 1130267745, NULL, '2024-07-31', '22:00:00', 'ansiedad', 'pendiente', 'Soledad', '', '', 'male'),
(14, 1140837811, NULL, '2024-08-10', '09:00:00', 'depresion', 'pendiente', 'Soledad', '', '', 'male'),
(15, 1140837811, NULL, '2024-08-10', '09:00:00', 'depresion', 'pendiente', 'Soledad', '', '', 'male'),
(16, 1130267745, NULL, '2024-08-15', '15:00:00', 'ansiedad', 'pendiente', 'Soledad', 'Daniel Garcia', 'dmnauelgarcia@unibarranquilla.', 'male'),
(17, 1140837811, NULL, '2024-08-09', '16:00:00', 'relaciones', 'pendiente', 'Soledad', 'Vanesa Martinez', 'vmartinez@unibarranquilla.edu.', 'female');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas_enfermeria`
--

CREATE TABLE `citas_enfermeria` (
  `id` int(11) NOT NULL,
  `estudiante_id` int(11) DEFAULT NULL,
  `enfermero_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `motivo` varchar(100) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `sede` varchar(40) DEFAULT NULL,
  `Nombre_Completo` varchar(50) NOT NULL,
  `Correo` varchar(40) NOT NULL,
  `Genero` enum('male','female','other') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `citas_enfermeria`
--

INSERT INTO `citas_enfermeria` (`id`, `estudiante_id`, `enfermero_id`, `fecha`, `hora`, `motivo`, `estado`, `sede`, `Nombre_Completo`, `Correo`, `Genero`) VALUES
(1, 1130267745, NULL, '2024-07-25', '11:00:00', 'dolor', NULL, 'Soledad', '', 'male', 'male'),
(2, 1130267745, NULL, '2024-08-08', '11:00:00', 'dolor ', NULL, 'Soledad', '', 'male', 'male'),
(3, 1130267745, NULL, '2024-08-08', '12:00:00', 'dolor de cabeza', NULL, 'Barranquilla', '', 'male', 'male'),
(4, 1130267745, NULL, '2024-08-14', '16:00:00', 'hola', NULL, 'Soledad', 'Daniel Garcia', 'dmnauelgarcia@unibarranquilla.', 'male'),
(5, 1140837811, NULL, '2024-08-14', '16:00:00', 'hola', NULL, 'Soledad', 'Vanesa Martinez', 'vmartinez@unibarranquilla.edu.', 'female'),
(6, 1130267745, NULL, '2024-08-15', '00:00:00', 'dolor de estomago', NULL, 'Barranquilla', 'Daniel Garcia', 'dmnauelgarcia@unibarranquilla.', 'male');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermero`
--

CREATE TABLE `enfermero` (
  `id_user` int(11) NOT NULL,
  `correo_institucional` varchar(50) NOT NULL,
  `identificacion` int(13) NOT NULL,
  `telefono` int(15) DEFAULT NULL,
  `Nombre_Completo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `enfermero`
--

INSERT INTO `enfermero` (`id_user`, `correo_institucional`, `identificacion`, `telefono`, `Nombre_Completo`) VALUES
(1, 'mjovanegas@unibarranquilla.edu.co', 32874150, NULL, 'Maria Jose Vanegas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `tipo_documento` enum('cc','ti') NOT NULL,
  `identificacion` int(13) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `historial_clinico` varchar(100) DEFAULT NULL,
  `Nombre_Completo` varchar(40) NOT NULL,
  `Correo` varchar(30) NOT NULL,
  `Genero` enum('male','female','other') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`tipo_documento`, `identificacion`, `telefono`, `historial_clinico`, `Nombre_Completo`, `Correo`, `Genero`) VALUES
('', 1130267745, '3003729941', NULL, 'Daniel Garcia', 'dmnauelgarcia@unibarranquilla.', 'male'),
('cc', 1140837811, '300000', NULL, 'Vanesa Martinez', 'vmartinez@unibarranquilla.edu.', 'female');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `psicologo`
--

CREATE TABLE `psicologo` (
  `id_user` int(11) NOT NULL,
  `correo_institucional` varchar(50) NOT NULL,
  `Identificacion` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `Nombre_completo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `psicologo`
--

INSERT INTO `psicologo` (`id_user`, `correo_institucional`, `Identificacion`, `telefono`, `Nombre_completo`) VALUES
(1, 'pcastro@unibarraqnuilla.edu.co', 8778987, 30000000, 'pablo Castro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recomendaciones_enfermeria`
--

CREATE TABLE `recomendaciones_enfermeria` (
  `id_recomendacion` int(11) NOT NULL,
  `id_enfermero` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `fecha_recomendacion` date NOT NULL,
  `recomendacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `recomendaciones_enfermeria`
--

INSERT INTO `recomendaciones_enfermeria` (`id_recomendacion`, `id_enfermero`, `id_estudiante`, `fecha_recomendacion`, `recomendacion`) VALUES
(2, 32874150, 1130267745, '2024-08-06', 'kjashjjhdfhjfekej'),
(3, 32874150, 1140837811, '2024-08-16', 'yttffgytytytyt');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recomendaciones_psicologia`
--

CREATE TABLE `recomendaciones_psicologia` (
  `id` int(11) NOT NULL,
  `id_psicologo` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `recomendacion` text NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `identificacion` varchar(15) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `rol` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `nombre`, `identificacion`, `correo`, `telefono`, `username`, `password`, `rol`) VALUES
(1, 'David bastos', '12345678', 'dbasto@unibarranquilla.edu.co', '300000', 'admin1', 'admin1', 'admin1'),
(2, 'Daniel Garcia', '987654321', 'dmanbuelgarcia@unibarraqnuilla.edu.co', '34000000', 'admin2', 'admin2', 'admin2'),
(3, 'Saray Garcia', '1357911', 'saraygarcia@unibarramquilla.edu.co', '200000', 'enfermera1', 'enfermera1', 'enfermera1'),
(4, 'Edwin garcia', '879648', 'egarcia@unibarranquilla.edu.co', '30000000', 'psicologo1', 'psicologo1', 'psicologo1'),
(5, 'Julian Garcia', '1130267875', 'jgarcia@unibarranquilla.eedu.co', '3456789', 'estudiante1', 'estuiante1', 'estudiante1'),
(6, 'juan ', '12345', 'example@example', '3000000', 'estudiante2', 'estudiante2', 'estudiante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin123', 'admin'),
(2, 'estudiante', 'estudiante123', ' estudiante'),
(3, 'enfermera', 'enfermera123', 'enfermeria'),
(4, 'psicologo', 'psicologo123', 'psicologo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estudiante_id` (`estudiante_id`),
  ADD KEY `psicologo_id` (`psicologo_id`);

--
-- Indices de la tabla `citas_enfermeria`
--
ALTER TABLE `citas_enfermeria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `estudiante_id` (`estudiante_id`,`enfermero_id`),
  ADD KEY `enfermero_id` (`enfermero_id`);

--
-- Indices de la tabla `enfermero`
--
ALTER TABLE `enfermero`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `identificacion` (`identificacion`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`identificacion`),
  ADD UNIQUE KEY `identificacion` (`identificacion`);

--
-- Indices de la tabla `psicologo`
--
ALTER TABLE `psicologo`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `Identificacion` (`Identificacion`);

--
-- Indices de la tabla `recomendaciones_enfermeria`
--
ALTER TABLE `recomendaciones_enfermeria`
  ADD PRIMARY KEY (`id_recomendacion`),
  ADD KEY `id_enfermero` (`id_enfermero`),
  ADD KEY `id_estudiante` (`id_estudiante`);

--
-- Indices de la tabla `recomendaciones_psicologia`
--
ALTER TABLE `recomendaciones_psicologia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_psicologo` (`id_psicologo`),
  ADD KEY `id_estudiante` (`id_estudiante`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `citas_enfermeria`
--
ALTER TABLE `citas_enfermeria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `enfermero`
--
ALTER TABLE `enfermero`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `psicologo`
--
ALTER TABLE `psicologo`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `recomendaciones_enfermeria`
--
ALTER TABLE `recomendaciones_enfermeria`
  MODIFY `id_recomendacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `recomendaciones_psicologia`
--
ALTER TABLE `recomendaciones_psicologia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `citas_ibfk_1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante` (`identificacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `citas_ibfk_2` FOREIGN KEY (`psicologo_id`) REFERENCES `psicologo` (`Identificacion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `citas_enfermeria`
--
ALTER TABLE `citas_enfermeria`
  ADD CONSTRAINT `citas_enfermeria_ibfk_1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante` (`identificacion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `recomendaciones_enfermeria`
--
ALTER TABLE `recomendaciones_enfermeria`
  ADD CONSTRAINT `recomendaciones_enfermeria_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`identificacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recomendaciones_enfermeria_ibfk_2` FOREIGN KEY (`id_enfermero`) REFERENCES `enfermero` (`identificacion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `recomendaciones_psicologia`
--
ALTER TABLE `recomendaciones_psicologia`
  ADD CONSTRAINT `recomendaciones_psicologia_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`identificacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recomendaciones_psicologia_ibfk_2` FOREIGN KEY (`id_psicologo`) REFERENCES `psicologo` (`Identificacion`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
