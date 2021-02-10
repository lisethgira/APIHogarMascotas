-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 10-02-2021 a las 04:51:32
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hogarnuevoporvenir`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animales`
--

DROP TABLE IF EXISTS `animales`;
CREATE TABLE IF NOT EXISTS `animales` (
  `idAnimal` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `edad` int(5) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `descripcion` varchar(400) NOT NULL,
  `comida` varchar(50) NOT NULL,
  PRIMARY KEY (`idAnimal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `animales`
--

INSERT INTO `animales` (`idAnimal`, `nombre`, `edad`, `tipo`, `descripcion`, `comida`) VALUES
(4315, 'canguro', 56, 'silvestre', 'Pertenecientes a la subfamilia Macropodinae, estos simpáticos animales son originarios de las praderas australianas.  Entre sus particularidades, cuentan con la capacidad de saltar y de llevar a sus crías en una especie de bolsa natural en el abdomen.', 'hierbas'),
(5423, 'Guacamayo', 6, 'silvestre', 'Esta familia de aves del tipo de los loros está conformada por 14 especies que habitan en la selva, todas ellas con un colorido plumaje. Principalmente, se encuentran en Latinoamérica, en la larga extensión de territorio que existe entre México y el norte de Argentina.', 'come de todo menos aguacate, perejil y chocolate.'),
(5372, 'perro', 4, 'domestico', 'características morfológicas similares, como el ser digitígrados, complexión fuerte, boca poderosa con unos caninos muy desarrollados, además, es un animal veloz y resistente.', 'croquetas, carne'),
(8956, 'gato', 3, 'domestico', ' animal de complexión fuerte y atlética con órganos de los sentidos muy desarrollados, que les habilitan para cazar. Posee cuatro patas, una cola, cabeza con buenas proporciones y cuello moderado.', 'croquetas, pescado, carne');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
