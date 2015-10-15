-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-10-2015 a las 01:10:41
-- Versión del servidor: 5.6.19-0ubuntu0.14.04.1
-- Versión de PHP: 5.6.10-1+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `acuario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especie`
--

CREATE TABLE IF NOT EXISTS `especie` (
  `Id_especie` int(11) NOT NULL,
  `Nombre_especie` varchar(25) NOT NULL,
  `Dieta` varchar(25) NOT NULL,
  PRIMARY KEY (`Id_especie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE IF NOT EXISTS `evento` (
  `Id_evento` int(11) NOT NULL,
  `Fecha` int(11) NOT NULL,
  `Naturaleza_evento` varchar(25) NOT NULL,
  `Id_pez` int(11) NOT NULL,
  PRIMARY KEY (`Id_evento`),
  KEY `Id_pez` (`Id_pez`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE IF NOT EXISTS `pais` (
  `Id_origen` int(11) NOT NULL,
  `Nombre_pais` varchar(25) NOT NULL,
  PRIMARY KEY (`Id_origen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pez`
--

CREATE TABLE IF NOT EXISTS `pez` (
  `Id_pez` int(11) NOT NULL,
  `Nombre_pez` varchar(25) NOT NULL,
  `Color` varchar(25) NOT NULL,
  `Peso` double NOT NULL,
  `Id_tanque` int(11) NOT NULL,
  `Id_especie` int(11) NOT NULL,
  `Id_origen` int(11) NOT NULL,
  PRIMARY KEY (`Id_pez`),
  KEY `Id_tanque` (`Id_tanque`),
  KEY `Id_especie` (`Id_especie`),
  KEY `Id_origen` (`Id_origen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tanque`
--

CREATE TABLE IF NOT EXISTS `tanque` (
  `Id_tanque` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_tanque` varchar(25) NOT NULL,
  `Color` varchar(25) NOT NULL,
  `Volumen` double NOT NULL,
  PRIMARY KEY (`Id_tanque`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `tanque`
--

INSERT INTO `tanque` (`Id_tanque`, `Nombre_tanque`, `Color`, `Volumen`) VALUES
(3, 'min lux', 'rojo', 2400),
(4, 'agsd', 'agads', 4356),
(5, 'agsd', 'agads', 4),
(6, 'agsd', 'agads', 43),
(7, 'agsd', 'agads', 43),
(8, 'gasdg5', 'adsgads5', 24),
(9, 'gasdg1', 'adsgads1', 24),
(10, 'gasdg1', 'adsgads1', 24),
(11, 'gasdg5', 'adsgads5', 24),
(12, 'gasdg5', 'adsgads5', 24),
(14, 'sadg', 'adsg', 5235),
(15, 'dsga', 'adgssd', 436);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`Id_pez`) REFERENCES `pez` (`Id_pez`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pez`
--
ALTER TABLE `pez`
  ADD CONSTRAINT `pez_ibfk_3` FOREIGN KEY (`Id_origen`) REFERENCES `pais` (`Id_origen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pez_ibfk_1` FOREIGN KEY (`Id_tanque`) REFERENCES `tanque` (`Id_tanque`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pez_ibfk_2` FOREIGN KEY (`Id_especie`) REFERENCES `especie` (`Id_especie`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
