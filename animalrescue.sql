-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 21-09-2014 a las 02:10:31
-- Versión del servidor: 5.6.12-log
-- Versión de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `animalrescue`
--
CREATE DATABASE IF NOT EXISTS `animalrescue` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `animalrescue`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adopcion`
--

CREATE TABLE IF NOT EXISTS `adopcion` (
  `id_adopcion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `raza` varchar(40) NOT NULL,
  `edad` int(11) NOT NULL,
  `sexo` char(1) NOT NULL,
  `fk_usuario` int(11) NOT NULL,
  `fk_tipoAnimal` int(11) NOT NULL,
  `fk_estado` int(11) NOT NULL,
  PRIMARY KEY (`id_adopcion`),
  KEY `fk_usuario` (`fk_usuario`,`fk_tipoAnimal`,`fk_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animalperdido`
--

CREATE TABLE IF NOT EXISTS `animalperdido` (
  `id_animalPerdido` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `raza` varchar(40) NOT NULL,
  `edad` int(11) NOT NULL,
  `sexo` char(1) NOT NULL,
  `fk_usuario` int(11) NOT NULL,
  `fk_estado` int(11) NOT NULL,
  `fk_tipoAnimal` int(11) NOT NULL,
  PRIMARY KEY (`id_animalPerdido`),
  KEY `fk_usuario` (`fk_usuario`,`fk_estado`,`fk_tipoAnimal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(40) NOT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id_estado`, `estado`) VALUES
(1, 'Adoptado'),
(2, 'no adoptado'),
(3, 'Perdido'),
(4, 'Encontrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(30) NOT NULL,
  `contrasena` varchar(40) NOT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoanimal`
--

CREATE TABLE IF NOT EXISTS `tipoanimal` (
  `id_tipoAnimal` int(11) NOT NULL AUTO_INCREMENT,
  `tipoAnimal` varchar(40) NOT NULL,
  PRIMARY KEY (`id_tipoAnimal`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `tipoanimal`
--

INSERT INTO `tipoanimal` (`id_tipoAnimal`, `tipoAnimal`) VALUES
(1, 'Canino'),
(2, 'Gatos'),
(3, 'Aves'),
(4, 'Roedores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `contrasena` varchar(40) NOT NULL,
  `sexo` int(11) NOT NULL,
  `puntos` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
