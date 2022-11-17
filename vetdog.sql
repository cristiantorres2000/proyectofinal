-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-07-2022 a las 04:04:28
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vetdog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `business`
--

CREATE TABLE `business` (
  `id_buss` int(11) NOT NULL,
  `noemp` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ruc` char(14) COLLATE utf8_unicode_ci NOT NULL,
  `direcc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `telef` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `descp` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecre` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `business`
--

INSERT INTO `business` (`id_buss`, `noemp`, `ruc`, `direcc`, `correo`, `telef`, `descp`, `foto`, `fecre`) VALUES
(1, 'DASHBOARD', '012588888', 'TEMUCO', 'saa@gmail.com', '787857857', 'Rubro de Veterinaria', 'LOGO.jpg', '2022-07-18 05:10:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id`, `descripcion`) VALUES
(1, 'Administrador'),
(3, 'Veterinario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedad`
--

CREATE TABLE `enfermedad` (
  `idenfermedad` int(11) NOT NULL,
  `nombreenfermedad` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `enfermedad`
--

INSERT INTO `enfermedad` (`idenfermedad`, `nombreenfermedad`) VALUES
(2, 'Diarrea'),
(3, 'Rabia'),
(5, ''),
(6, 'rekjerer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `owner`
--

CREATE TABLE `owner` (
  `id_due` int(11) NOT NULL,
  `dni_due` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `digito_ver` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `nom_due` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `ape_due` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `fecnaci` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `movil` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `direc` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `estado` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `owner`
--

INSERT INTO `owner` (`id_due`, `dni_due`, `digito_ver`, `nom_due`, `ape_due`, `fecnaci`, `movil`, `correo`, `direc`, `estado`, `fere`) VALUES
(13, '20355757', '4', 'Cristian', 'Torres', '', '25565888', 'jkjkjkjkjk@gmail.com', 'fkdkjdf', '1', '2022-07-17 22:53:43'),
(14, '20345454', 'k', 'hjsdhjdshjsd', 'jkfdjkfd', '', '445544544', 'fdfdfdfd@hotmail.com', 'fdfdfd', '1', '2022-07-18 23:18:51'),
(15, '74387347', 'k', 'djjkfdjkfdjkfd', 'jkfdjfdjk', '', '454545544', 'saa@hotmail.com', 'kfkjfd', '1', '2022-07-19 01:01:44'),
(16, '20548712', 'k', 'José', 'Gonzalez', '', '772794355', 'saadghdf@hotmail.com', 'sdhjdhjs', '1', '2022-07-19 01:02:26'),
(17, '20355733', '3', 'Martin', 'Torres', '', '545454444', 'nfdf@gmail.com', 'kdfkdflkgf', '1', '2022-07-19 01:04:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pet`
--

CREATE TABLE `pet` (
  `id_pet` int(11) NOT NULL,
  `nomas` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_tiM` int(11) NOT NULL,
  `id_raza` int(11) NOT NULL,
  `idenfermedad` int(11) NOT NULL,
  `sexo` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `edad` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `tamano` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `peso` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `id_due` int(11) NOT NULL,
  `obser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pet_type`
--

CREATE TABLE `pet_type` (
  `id_tiM` int(11) NOT NULL,
  `noTiM` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `estado` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pet_type`
--

INSERT INTO `pet_type` (`id_tiM`, `noTiM`, `estado`, `fere`) VALUES
(12, 'Gatos', '1', '2022-07-19 01:21:43'),
(13, 'PERRO', '1', '2022-07-18 22:23:30'),
(14, 'CONEJO', '1', '2022-07-18 22:23:37'),
(15, 'HAMSTER', '1', '2022-07-18 22:23:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quotes`
--

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL,
  `id_vet` int(11) NOT NULL,
  `id_tiM` int(11) NOT NULL,
  `id_servi` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nommas` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `dueno` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `estado` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `raza`
--

CREATE TABLE `raza` (
  `id_raza` int(11) NOT NULL,
  `nomraza` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_tiM` int(11) NOT NULL,
  `estado` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `raza`
--

INSERT INTO `raza` (`id_raza`, `nomraza`, `id_tiM`, `estado`) VALUES
(19, 'pitbull', 13, '1'),
(21, 'Doberman', 13, '1'),
(22, 'Rotweiler', 13, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `service`
--

CREATE TABLE `service` (
  `id_servi` int(11) NOT NULL,
  `nomser` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `estado` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `service`
--

INSERT INTO `service` (`id_servi`, `nomser`, `estado`, `fere`) VALUES
(1, 'Baño general', '1', '2021-08-06 17:25:24'),
(2, 'Consulta cachorros y gatitos, vacunas y desparasitación de inicio de vida.', '1', '2021-08-06 17:26:49'),
(3, 'Exámenes de laboratorio (Perfil bioquímico, hemograma, orina, citología, entre muchos otros)', '1', '2021-08-06 17:27:12'),
(4, 'Corte de pelos', '1', '2021-08-06 17:27:48'),
(5, 'Vacunas', '1', '2021-08-10 04:21:28'),
(6, 'Corte de uñas', '1', '2021-08-06 17:36:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `contra` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cargo` int(11) NOT NULL,
  `estado` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `fecre` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `correo`, `contra`, `cargo`, `estado`, `fecre`) VALUES
(1, 'Doctor Cristian', 'cristian', 'cristian@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 1, '1', '2022-07-18 04:28:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `veterinarian`
--

CREATE TABLE `veterinarian` (
  `id_vet` int(11) NOT NULL,
  `dnivet` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `nomvet` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `apevet` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `direcc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fijo` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `movil` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `contra` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cargo` int(11) NOT NULL,
  `estado` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `veterinarian`
--

INSERT INTO `veterinarian` (`id_vet`, `dnivet`, `nomvet`, `apevet`, `direcc`, `sexo`, `correo`, `foto`, `fijo`, `movil`, `usuario`, `contra`, `cargo`, `estado`, `fere`) VALUES
(1, '76666666', 'Elizabeth', 'Goméz Chunga', 'Ica', 'Femenino', 'elizaGo@gmail.com', 'seven.png', '454322', '998876767', 'eliza21', 'b0baee9d279d34fa1dfd71aadb908c3f', 3, '1', '2021-12-01 14:09:49'),
(8, '74849349', 'Jose Luis', 'Flores Yovera', 'talaarita', 'Masculino', 'jjoseluis@gmail.com', 'profeico.png', '435323', '939838383', 'jooseluis21', 'b0baee9d279d34fa1dfd71aadb908c3f', 3, '1', '2021-12-04 20:03:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id_buss`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `enfermedad`
--
ALTER TABLE `enfermedad`
  ADD PRIMARY KEY (`idenfermedad`);

--
-- Indices de la tabla `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id_due`);

--
-- Indices de la tabla `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`id_pet`),
  ADD KEY `id_tiM` (`id_tiM`),
  ADD KEY `id_raza` (`id_raza`),
  ADD KEY `id_due` (`id_due`),
  ADD KEY `idenfermedad` (`idenfermedad`);

--
-- Indices de la tabla `pet_type`
--
ALTER TABLE `pet_type`
  ADD PRIMARY KEY (`id_tiM`);

--
-- Indices de la tabla `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_vet` (`id_vet`),
  ADD KEY `id_tiM` (`id_tiM`),
  ADD KEY `id_servi` (`id_servi`);

--
-- Indices de la tabla `raza`
--
ALTER TABLE `raza`
  ADD PRIMARY KEY (`id_raza`),
  ADD KEY `id_tiM` (`id_tiM`);

--
-- Indices de la tabla `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id_servi`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `veterinarian`
--
ALTER TABLE `veterinarian`
  ADD PRIMARY KEY (`id_vet`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `business`
--
ALTER TABLE `business`
  MODIFY `id_buss` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `enfermedad`
--
ALTER TABLE `enfermedad`
  MODIFY `idenfermedad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `owner`
--
ALTER TABLE `owner`
  MODIFY `id_due` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `pet`
--
ALTER TABLE `pet`
  MODIFY `id_pet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pet_type`
--
ALTER TABLE `pet_type`
  MODIFY `id_tiM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `raza`
--
ALTER TABLE `raza`
  MODIFY `id_raza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `service`
--
ALTER TABLE `service`
  MODIFY `id_servi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `veterinarian`
--
ALTER TABLE `veterinarian`
  MODIFY `id_vet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pet`
--
ALTER TABLE `pet`
  ADD CONSTRAINT `pet_ibfk_1` FOREIGN KEY (`id_tiM`) REFERENCES `pet_type` (`id_tiM`),
  ADD CONSTRAINT `pet_ibfk_2` FOREIGN KEY (`id_raza`) REFERENCES `raza` (`id_raza`),
  ADD CONSTRAINT `pet_ibfk_3` FOREIGN KEY (`id_due`) REFERENCES `owner` (`id_due`),
  ADD CONSTRAINT `pet_ibfk_4` FOREIGN KEY (`idenfermedad`) REFERENCES `enfermedad` (`idenfermedad`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `quotes`
--
ALTER TABLE `quotes`
  ADD CONSTRAINT `quotes_ibfk_1` FOREIGN KEY (`id_vet`) REFERENCES `veterinarian` (`id_vet`),
  ADD CONSTRAINT `quotes_ibfk_2` FOREIGN KEY (`id_tiM`) REFERENCES `pet_type` (`id_tiM`),
  ADD CONSTRAINT `quotes_ibfk_3` FOREIGN KEY (`id_servi`) REFERENCES `service` (`id_servi`);

--
-- Filtros para la tabla `raza`
--
ALTER TABLE `raza`
  ADD CONSTRAINT `raza_ibfk_1` FOREIGN KEY (`id_tiM`) REFERENCES `pet_type` (`id_tiM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
