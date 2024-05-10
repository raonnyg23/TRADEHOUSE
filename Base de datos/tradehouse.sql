-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-05-2024 a las 14:10:27
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
-- Base de datos: `tradehouse`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opiniones`
--

CREATE TABLE `opiniones` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `opiniones`
--

INSERT INTO `opiniones` (`id`, `usuario`, `correo_electronico`, `mensaje`) VALUES
(1, 'cess', '', ''),
(2, 'cess', '', ''),
(3, 'cess', 'penamorillocesaremmanuel@gmail.com', ''),
(4, 'cess', 'penamorillocesaremmanuel@gmail.com', ''),
(5, 'cess', 'penamorillocesaremmanuel@gmail.com', ''),
(6, 'cess', 'penamorillocesaremmanuel@gmail.com', ''),
(7, 'cess', 'penamorillocesaremmanuel@gmail.com', ''),
(8, 'cess', 'penamorillocesaremmanuel@gmail.com', 'afasf'),
(9, '', '', ''),
(10, 'cess', 'penamorillocesaremmanuel@gmail.com', 'sdasdadasda'),
(11, 'Juan', 'juan@gmail.com', 'LA MEJOR PAGINA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrar`
--

CREATE TABLE `registrar` (
  `id` int(11) NOT NULL,
  `nombre_completo` varchar(200) NOT NULL,
  `correo_electronico` varchar(200) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registrar`
--

INSERT INTO `registrar` (`id`, `nombre_completo`, `correo_electronico`, `usuario`, `contrasena`) VALUES
(3, '', '', '', ''),
(4, 'Cesar emmanuel pena morillo', 'cess@gmail.com', 'cess', '823746'),
(5, 'Rodelfy pena morillo', 'Rode@gmail.com', 'rode', '10312'),
(6, 'Rodelfy pena morillo', 'Rode@gmail.com', 'rode', '10312'),
(7, 'Rodelfy pena morillo', 'Rode@gmail.com', 'rode', '10312'),
(8, 'Cesar emmanuel pena morillo', 'cess@gmail.com', 'cess', '123'),
(9, 'Cesar emmanuel pena morillo', 'cess@gmail.com', 'cess', '123'),
(10, 'Cesar emmanuel pena morillo', 'cess@gmail.com', 'cess', '123'),
(11, 'Cesar emmanuel pena morillo', 'cess@gmail.com', 'cess', '123'),
(12, 'Cesar emmanuel pena morillo', 'cess@gmail.com', 'cess', '123'),
(13, 'Cesar emmanuel pena morillo', 'cess@gmail.com', 'cess', '234234'),
(14, 'Cesar emmanuel pena morillo', 'Rode@gmail.com', 'rode', '2342'),
(15, 'Cesar emmanuel pena morillo', 'Rode@gmail.com', 'rode', '2342'),
(16, 'Cesar emmanuel pena morillo', 'Rode@gmail.com', 'rode', '54765'),
(17, 'Cesar emmanuel pena morillo', 'Rode@gmail.com', 'rode', '54765'),
(18, 'Cesar emmanuel pena morillo', 'Rode@gmail.com', 'rode', '54765'),
(19, 'Cesar emmanuel pena morillo', 'Rode@gmail.com', 'rode', '54765'),
(20, 'Cesar emmanuel pena morillo', 'cess@gmail.com', 'cess', '24234'),
(21, 'Cesar Jose Antonio', 'CesarJ@gmail.com', 'CesarJ', '12345'),
(22, 'pedro gyr', 'hghah@gmail', 'jua', '123455'),
(23, 'pedro gyr', 'pedor@gmail.com', 'pedro mu', '12345'),
(24, 'raonny', 'raonny23@gmail.com', 'Rao', '2112'),
(25, 'Juan Bautista', 'Juan@gmail.com', 'Juan02', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `opiniones`
--
ALTER TABLE `opiniones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registrar`
--
ALTER TABLE `registrar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `opiniones`
--
ALTER TABLE `opiniones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `registrar`
--
ALTER TABLE `registrar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
