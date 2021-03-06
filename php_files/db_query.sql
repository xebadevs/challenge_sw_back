-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 19-04-2022 a las 20:56:08
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ch_scandiweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attributes`
--

CREATE TABLE `attributes` (
  `id_attribute` int(11) NOT NULL,
  `size` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `height` float DEFAULT NULL,
  `width` float DEFAULT NULL,
  `length` float DEFAULT NULL,
  `fk_id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `attributes`
--

INSERT INTO `attributes` (`id_attribute`, `size`, `weight`, `height`, `width`, `length`, `fk_id_product`) VALUES
(2, 700, NULL, NULL, NULL, NULL, 5),
(5, 700, NULL, NULL, NULL, NULL, 6),
(6, 700, NULL, NULL, NULL, NULL, 7),
(7, 700, NULL, NULL, NULL, NULL, 8),
(8, NULL, 2, NULL, NULL, NULL, 9),
(9, NULL, 2, NULL, NULL, NULL, 10),
(10, NULL, 2, NULL, NULL, NULL, 11),
(11, NULL, 2, NULL, NULL, NULL, 12),
(12, NULL, NULL, 24, 45, 15, 13),
(13, NULL, NULL, 24, 45, 15, 14),
(14, NULL, NULL, 24, 45, 15, 15),
(15, NULL, NULL, 24, 45, 15, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id_prod` int(11) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_prod`, `sku`, `name`, `price`) VALUES
(5, 'JVC200123', 'Acme DISC', 1),
(6, 'JVC200123', 'Acme DISC', 1),
(7, 'JVC200123', 'Acme DISC', 1),
(8, 'JVC200123', 'Acme DISC', 1),
(9, 'GGWP0007', 'War and Peace', 20),
(10, 'GGWP0007', 'War and Peace', 20),
(11, 'GGWP0007', 'War and Peace', 20),
(12, 'GGWP0007', 'War and Peace', 20),
(13, 'TR120555', 'Choir', 40),
(14, 'TR120555', 'Choir', 40),
(15, 'TR120555', 'Choir', 40),
(16, 'TR120555', 'Choir', 40);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id_attribute`),
  ADD KEY `fk_id_product` (`fk_id_product`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_prod`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id_attribute` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_ibfk_1` FOREIGN KEY (`fk_id_product`) REFERENCES `products` (`id_prod`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
