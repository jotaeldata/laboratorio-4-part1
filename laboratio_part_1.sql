-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 09-11-2024 a las 04:31:45
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laboratio part 1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos estudiantes`
--

DROP TABLE IF EXISTS `cursos estudiantes`;
CREATE TABLE IF NOT EXISTS `cursos estudiantes` (
  `ID_Estudiante` int NOT NULL,
  `Curso` text NOT NULL,
  KEY `ID_Estudiante` (`ID_Estudiante`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `cursos estudiantes`
--

INSERT INTO `cursos estudiantes` (`ID_Estudiante`, `Curso`) VALUES
(1, 'Matemáticas'),
(1, 'Matemáticas'),
(1, 'Física'),
(1, 'Química'),
(2, 'Historia'),
(2, 'Literatura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
CREATE TABLE IF NOT EXISTS `estudiantes` (
  `ID_Estudiante` int NOT NULL AUTO_INCREMENT,
  `Nombre_Estudiante` varchar(50) NOT NULL,
  `Direccion` text NOT NULL,
  PRIMARY KEY (`ID_Estudiante`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`ID_Estudiante`, `Nombre_Estudiante`, `Direccion`) VALUES
(1, 'Juan Pérez', 'Calle Falsa 123'),
(2, 'Ana López', 'Avenida Siempre Viva 742');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

DROP TABLE IF EXISTS `profesor`;
CREATE TABLE IF NOT EXISTS `profesor` (
  `Curso` text NOT NULL,
  `Nombre_Profesor` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`Curso`, `Nombre_Profesor`) VALUES
('Matemáticas', 'Juan'),
('Física', 'Juan'),
('Química', 'David'),
('Historia', 'Santiago'),
('Literatura', 'Andres');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
