-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-08-2023 a las 19:19:13
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
-- Base de datos: `hotsos_metrics`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reports`
--

CREATE TABLE `reports` (
  `ID` int(11) NOT NULL,
  `N_ORDER` int(11) NOT NULL,
  `CREATED_AT` date NOT NULL,
  `CLOSED_AT` date NOT NULL,
  `TYPE` varchar(255) NOT NULL,
  `ISSUE` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(1024) NOT NULL,
  `ATTACHMENT` tinyint(1) NOT NULL,
  `N_PRIORITY` int(11) NOT NULL,
  `DESC_PRIORITY` varchar(255) NOT NULL,
  `ROOM` int(11) NOT NULL,
  `ASSIGNED_AREA` varchar(255) NOT NULL,
  `ASSIGNED_ID_WORKER` int(11) NOT NULL,
  `ASSIGNED_NAME` varchar(255) NOT NULL,
  `OCCUPATION` varchar(255) NOT NULL,
  `GUEST_TYPE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reports`
--

INSERT INTO `reports` (`ID`, `N_ORDER`, `CREATED_AT`, `CLOSED_AT`, `TYPE`, `ISSUE`, `DESCRIPTION`, `ATTACHMENT`, `N_PRIORITY`, `DESC_PRIORITY`, `ROOM`, `ASSIGNED_AREA`, `ASSIGNED_ID_WORKER`, `ASSIGNED_NAME`, `OCCUPATION`, `GUEST_TYPE`) VALUES
(1, 100001, '2023-05-30', '2023-05-30', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2458, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'MIP'),
(2, 100002, '2023-05-30', '2023-05-30', 'Orden de Servicio', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 3145, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(3, 100003, '2023-05-31', '2023-05-31', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 5302, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'MIP'),
(4, 100004, '2023-05-31', '2023-05-31', 'Orden de Servicio', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 4235, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'MIP'),
(5, 100005, '2023-05-31', '2023-05-31', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 1438, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(6, 100006, '2023-05-31', '2023-05-31', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 2354, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(7, 100007, '2023-04-26', '2023-04-26', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 5354, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'MIP'),
(8, 100008, '2023-06-07', '2023-06-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 1423, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'MIP'),
(9, 100009, '2023-06-07', '2023-06-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2658, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'MIP'),
(10, 100010, '2023-06-07', '2023-06-07', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 1235, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(11, 100011, '2023-06-07', '2023-06-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 3316, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'MIP'),
(12, 100012, '2023-06-07', '2023-06-07', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 2546, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(13, 100013, '2023-06-07', '2023-06-07', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 3141, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(14, 100014, '2023-06-07', '2023-06-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 1345, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'MIP'),
(15, 100015, '2023-06-07', '2023-06-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2458, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'MIP'),
(16, 100016, '2023-06-07', '2023-06-07', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 3145, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(17, 100017, '2023-06-07', '2023-06-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 5302, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'MIP'),
(18, 100018, '2023-06-07', '2023-06-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 4235, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'MIP'),
(19, 100019, '2023-06-07', '2023-06-07', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 1438, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(20, 100020, '2023-06-07', '2023-06-07', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 2354, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(21, 100021, '2023-06-07', '2023-06-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 5354, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'MIP'),
(22, 100022, '2023-06-07', '2023-06-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 1423, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'MIP'),
(23, 100023, '2023-06-07', '2023-06-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2658, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'MIP'),
(24, 100024, '2023-06-07', '2023-06-07', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 1235, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(25, 100025, '2023-06-07', '2023-06-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 3316, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'MIP'),
(26, 100012, '2023-06-07', '2023-06-07', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 2546, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(27, 100013, '2023-06-07', '2023-06-07', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 3141, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(28, 100014, '2023-06-07', '2023-06-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 1345, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'MIP'),
(29, 100029, '2023-01-30', '2023-01-30', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 3145, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(30, 100030, '2023-01-30', '2023-01-30', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2458, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'MIP'),
(31, 100031, '2023-01-31', '2023-01-31', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 5302, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'MIP'),
(32, 100032, '0000-00-00', '0000-00-00', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 4235, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'MIP'),
(33, 100033, '0000-00-00', '0000-00-00', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 1438, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(34, 100034, '0000-00-00', '0000-00-00', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 2354, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(35, 100035, '2023-03-26', '2023-03-26', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 5354, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'MIP'),
(36, 100036, '2023-03-07', '2023-03-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 1423, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'MIP'),
(37, 100037, '2023-03-07', '2023-03-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2658, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'MIP'),
(38, 100038, '2023-04-07', '2023-04-07', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 1235, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(39, 100039, '2023-04-07', '2023-04-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 3316, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'MIP'),
(40, 100040, '2023-01-07', '2023-01-07', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 2546, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(41, 100041, '2023-01-07', '2023-01-07', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 3141, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(42, 100042, '2023-01-07', '2023-01-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 1345, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'MIP'),
(43, 100043, '2023-02-07', '2023-02-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2458, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'MIP'),
(44, 100044, '2023-02-07', '2023-02-07', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 3145, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(45, 100045, '2023-02-07', '2023-02-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 5302, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'MIP'),
(46, 100046, '2023-03-07', '2023-03-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 4235, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'MIP'),
(47, 100047, '2023-03-07', '2023-03-07', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 1438, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(48, 100048, '2023-03-07', '2023-03-07', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 2354, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(49, 100049, '2023-04-07', '2023-04-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 5354, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'MIP'),
(50, 100050, '2023-04-07', '2023-04-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 1423, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'Normal'),
(51, 100051, '2023-04-07', '2023-04-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2658, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'Normal'),
(52, 100052, '2023-05-07', '2023-05-07', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 1235, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(53, 100053, '2023-05-07', '2023-05-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 3316, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'Normal'),
(54, 100054, '2023-05-07', '2023-05-07', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 2546, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(55, 100055, '2023-06-07', '2023-06-07', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 3141, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(56, 100056, '2023-06-07', '2023-06-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 1345, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'Normal'),
(57, 200001, '2022-01-30', '2022-01-30', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2458, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'Normal'),
(58, 200002, '2022-01-30', '2022-01-30', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 3145, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(59, 200003, '2022-01-31', '2022-01-31', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 5302, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'Normal'),
(60, 200004, '0000-00-00', '0000-00-00', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 4235, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'Normal'),
(61, 200005, '0000-00-00', '0000-00-00', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 1438, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(62, 200006, '0000-00-00', '0000-00-00', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 2354, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(63, 200007, '2022-03-26', '2022-03-26', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 5354, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'Normal'),
(64, 200008, '2022-03-07', '2022-03-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 1423, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'Normal'),
(65, 200009, '2022-03-07', '2022-03-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2658, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'Normal'),
(66, 200010, '2022-04-07', '2022-04-07', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 1235, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(67, 200011, '2022-04-07', '2022-04-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 3316, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'Normal'),
(68, 200012, '2022-04-07', '2022-04-07', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 2546, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(69, 200013, '2022-05-07', '2022-05-07', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 3141, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(70, 200014, '2022-05-07', '2022-05-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 1345, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'Normal'),
(71, 200015, '2022-04-07', '2022-04-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2458, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'Normal'),
(72, 200016, '2022-06-07', '2022-06-07', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 3145, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(73, 200017, '2022-06-07', '2022-06-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 5302, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'Normal'),
(74, 200018, '2022-06-07', '2022-06-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 4235, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'Normal'),
(75, 200019, '2022-07-07', '2022-07-07', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 1438, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(76, 200020, '2022-07-07', '2022-07-07', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 2354, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(77, 200021, '2022-07-07', '2022-07-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 5354, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'Normal'),
(78, 200022, '2022-08-07', '2022-08-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 1423, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'Normal'),
(79, 200023, '2022-09-07', '2022-09-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2658, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'Normal'),
(80, 200024, '2022-07-07', '2022-07-07', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 1235, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(81, 200025, '2022-09-07', '2022-09-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 3316, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'Normal'),
(82, 200012, '2022-09-07', '2022-09-07', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 2546, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(83, 200013, '2022-09-07', '2022-09-07', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 3141, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(84, 200014, '2022-10-07', '2022-10-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 1345, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'Normal'),
(85, 200029, '2022-10-30', '2022-10-30', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 3145, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(86, 200030, '2022-10-30', '2022-10-30', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2458, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'Normal'),
(87, 200031, '0000-00-00', '0000-00-00', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 5302, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'Normal'),
(88, 200032, '2022-11-05', '2022-11-05', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 4235, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'Normal'),
(89, 200033, '2022-11-05', '2022-11-05', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 1438, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(90, 200034, '2022-12-05', '2022-12-05', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 2354, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(91, 200035, '2022-12-26', '2022-12-26', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 5354, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'Normal'),
(92, 200036, '2022-12-07', '2022-12-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 1423, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'Normal'),
(93, 200037, '2022-01-07', '2022-01-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2658, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'Normal'),
(94, 200038, '2022-01-07', '2022-01-07', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 1235, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(95, 200039, '2022-02-07', '2022-02-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 3316, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'Normal'),
(96, 200040, '2022-02-07', '2022-02-07', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 2546, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(97, 200041, '2022-03-07', '2022-03-07', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 3141, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(98, 200042, '2022-03-07', '2022-03-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 1345, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'Normal'),
(99, 200043, '2022-04-07', '2022-04-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2458, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'Normal'),
(100, 200044, '2022-04-07', '2022-04-07', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 3145, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(101, 200045, '2022-05-07', '2022-05-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 5302, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'V1'),
(102, 200046, '2022-05-07', '2022-05-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 4235, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'V1'),
(103, 200047, '2022-06-07', '2022-06-07', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 1438, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(104, 200048, '2022-06-07', '2022-06-07', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 2354, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(105, 200049, '2022-07-07', '2022-07-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 5354, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'V1'),
(106, 200050, '2022-07-07', '2022-07-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 1423, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'V1'),
(107, 200051, '2022-08-07', '2022-08-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2658, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'V1'),
(108, 200052, '2022-08-07', '2022-08-07', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 1235, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(109, 200053, '2022-09-07', '2022-09-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 3316, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'V1'),
(110, 200054, '2022-09-07', '2022-09-07', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 2546, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(111, 200055, '2022-10-07', '2022-10-07', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 3141, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(112, 200056, '2022-10-07', '2022-10-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 1345, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'V1'),
(113, 300001, '2023-05-01', '2023-05-01', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2458, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'V1'),
(114, 300002, '2023-05-02', '2023-05-02', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 3145, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(115, 300003, '2023-05-03', '2023-05-03', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 5302, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'V1'),
(116, 300004, '2023-05-04', '2023-05-04', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 4235, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'V1'),
(117, 300005, '2023-05-05', '2023-05-05', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 1438, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(118, 300006, '2023-05-06', '2023-05-06', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 2354, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(119, 300007, '2023-05-07', '2023-05-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 5354, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'V1'),
(120, 300008, '2023-05-08', '2023-05-08', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 1423, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'V1'),
(121, 300009, '2023-05-09', '2023-05-09', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2658, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'V1'),
(122, 300010, '2023-05-10', '2023-05-10', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 1235, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(123, 300011, '2023-05-11', '2023-05-11', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 3316, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'V1'),
(124, 300012, '2023-05-12', '2023-05-12', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 2546, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(125, 300013, '2023-05-13', '2023-05-13', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 3141, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(126, 300014, '2023-05-14', '2023-05-14', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 1345, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'V1'),
(127, 300015, '2023-05-15', '2023-05-15', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2458, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'V1'),
(128, 300016, '2023-05-16', '2023-05-16', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 3145, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(129, 300017, '2023-05-17', '2023-05-17', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 5302, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'V1'),
(130, 300018, '2023-05-18', '2023-05-18', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 4235, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'V1'),
(131, 300019, '2023-05-19', '2023-05-19', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 1438, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(132, 300020, '2023-05-20', '2023-05-20', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 2354, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(133, 300021, '2023-05-21', '2023-05-21', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 5354, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'V1'),
(134, 300022, '2023-05-22', '2023-05-22', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 1423, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'V1'),
(135, 300023, '2023-05-23', '2023-05-23', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2658, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'V1'),
(136, 300024, '2023-05-24', '2023-05-24', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 1235, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(137, 300025, '2023-05-25', '2023-05-25', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 3316, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'V1'),
(138, 300012, '2023-05-26', '2023-05-26', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 2546, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(139, 300013, '2023-05-27', '2023-05-27', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 3141, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(140, 300014, '2023-05-28', '2023-05-28', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 1345, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'V1'),
(141, 300029, '2023-05-29', '2023-05-29', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 3145, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(142, 300030, '2023-05-30', '2023-05-30', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2458, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'V1'),
(143, 300031, '2023-05-31', '2023-05-31', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 5302, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'V1'),
(144, 300032, '0000-05-05', '0000-05-05', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 4235, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'V1'),
(145, 300033, '0000-05-12', '0000-05-12', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 1438, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(146, 300034, '0000-05-20', '0000-05-20', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 2354, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(147, 300035, '2023-05-08', '2023-05-08', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 5354, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'V1'),
(148, 300036, '2023-05-07', '2023-05-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 1423, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'V1'),
(149, 300037, '2023-05-04', '2023-05-04', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2658, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'V1'),
(150, 300038, '2023-05-06', '2023-05-06', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 1235, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(151, 300039, '2023-05-08', '2023-05-08', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 3316, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'V2'),
(152, 300040, '2023-05-02', '2023-05-02', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 2546, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(153, 300041, '2023-05-17', '2023-05-17', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 3141, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(154, 300042, '2023-05-26', '2023-05-26', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 1345, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'V2'),
(155, 300043, '2023-05-24', '2023-05-24', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2458, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'V2'),
(156, 300044, '2023-05-30', '2023-05-30', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 3145, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(157, 300045, '2023-05-15', '2023-05-15', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 5302, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'V2'),
(158, 300046, '2023-05-16', '2023-05-16', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 4235, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'V2'),
(159, 300047, '2023-05-11', '2023-05-11', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 1438, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(160, 300048, '2023-05-15', '2023-05-15', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 2354, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(161, 300049, '2023-05-21', '2023-05-21', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 5354, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'V2'),
(162, 300050, '2023-05-24', '2023-05-24', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 1423, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'V2'),
(163, 300051, '2023-05-26', '2023-05-26', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2658, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'V2'),
(164, 300052, '2023-05-06', '2023-05-06', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 1235, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(165, 300053, '2023-05-24', '2023-05-24', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 3316, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'V2'),
(166, 300054, '2023-05-31', '2023-05-31', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 2546, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(167, 300055, '2023-05-15', '2023-05-15', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 3141, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(168, 300056, '2023-05-24', '2023-05-24', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 1345, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'V2'),
(169, 300001, '2022-05-19', '2022-05-19', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2458, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'V2'),
(170, 300002, '2022-05-18', '2022-05-18', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 3145, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(171, 300003, '2022-05-10', '2022-05-10', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 5302, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'V2'),
(172, 300004, '2022-05-16', '2022-05-16', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 4235, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'V2'),
(173, 300005, '2022-05-20', '2022-05-20', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 1438, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(174, 300006, '2022-05-01', '2022-05-01', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 2354, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(175, 300007, '2022-05-26', '2022-05-26', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 5354, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'V2'),
(176, 300008, '2022-05-07', '2022-05-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 1423, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'V2'),
(177, 300009, '2022-05-07', '2022-05-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2658, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'V2'),
(178, 300010, '2022-05-07', '2022-05-07', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 1235, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(179, 300011, '2022-05-07', '2022-05-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 3316, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'V2'),
(180, 300012, '2022-05-07', '2022-05-07', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 2546, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(181, 300013, '2022-05-07', '2022-05-07', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 3141, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(182, 300014, '2022-05-07', '2022-05-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 1345, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'V2'),
(183, 300015, '2022-05-07', '2022-05-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2458, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'V2'),
(184, 300016, '2022-05-07', '2022-05-07', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 3145, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(185, 300017, '2022-05-07', '2022-05-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 5302, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'V2'),
(186, 300018, '2022-05-07', '2022-05-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 4235, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'V2'),
(187, 300019, '2022-05-07', '2022-05-07', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 1438, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(188, 300020, '2022-05-07', '2022-05-07', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 2354, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(189, 300021, '2022-05-07', '2022-05-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 5354, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'V2'),
(190, 300022, '2022-05-07', '2022-05-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 1423, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'V2'),
(191, 300023, '2022-05-07', '2022-05-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2658, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'V2'),
(192, 300024, '2022-05-07', '2022-05-07', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 1235, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(193, 300025, '2022-05-07', '2022-05-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 3316, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'V2'),
(194, 300012, '2022-05-07', '2022-05-07', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 2546, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(195, 300013, '2022-05-07', '2022-05-07', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 3141, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(196, 300014, '2022-05-07', '2022-05-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 1345, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'V2'),
(197, 300029, '2022-05-30', '2022-05-30', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 3145, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(198, 300030, '2022-05-30', '2022-05-30', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2458, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'V2'),
(199, 300031, '0000-00-00', '0000-00-00', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 5302, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'V2'),
(200, 300032, '2022-05-05', '2022-05-05', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 4235, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'V2'),
(201, 300033, '2022-05-05', '2022-05-05', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 1438, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(202, 300034, '2022-05-05', '2022-05-05', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 2354, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(203, 300035, '2022-05-26', '2022-05-26', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 5354, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'V2'),
(204, 300036, '2022-05-07', '2022-05-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 1423, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'V2'),
(205, 300037, '2022-05-07', '2022-05-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2658, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'V2'),
(206, 300038, '2022-05-07', '2022-05-07', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 1235, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(207, 300039, '2022-05-07', '2022-05-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 3316, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'V2'),
(208, 300040, '2022-05-07', '2022-05-07', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 2546, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(209, 300041, '2022-05-07', '2022-05-07', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 3141, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(210, 300042, '2022-05-07', '2022-05-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 1345, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'V2'),
(211, 300043, '2022-05-07', '2022-05-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2458, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'V2'),
(212, 300044, '2022-05-07', '2022-05-07', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 3145, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(213, 300045, '2022-05-07', '2022-05-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 5302, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'V2'),
(214, 300046, '2022-05-07', '2022-05-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 4235, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'V2'),
(215, 300047, '2022-05-07', '2022-05-07', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 1438, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(216, 300048, '2022-05-07', '2022-05-07', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 2354, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(217, 300049, '2022-05-07', '2022-05-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 5354, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'V2'),
(218, 300050, '2022-05-07', '2022-05-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'Television no tiene el idioma del huesped', 0, 2, '', 1423, 'IT - Sistemas', 1234, 'Esau', 'Ocupado', 'V2'),
(219, 300051, '2022-05-07', '2022-05-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra todas las fotografias que se tomo durante su estancia', 0, 3, '', 2658, 'IT - Sistemas', 2004, 'Pedro', 'Ocupado', 'V2'),
(220, 300052, '2022-05-07', '2022-05-07', 'Incidencia', 'AppleTV Control Remoto No Sirve', 'No enciende tv con el control remoto', 1, 2, '', 1235, 'IT - Sistemas', 3456, 'Gustavo', 'Vacante', 'Vacante'),
(221, 300053, '2022-05-07', '2022-05-07', 'Incidencia', 'AppleTV Cambio de Idioma', 'TV debe estar en español', 0, 1, '', 3316, 'IT - Sistemas', 3456, 'Gustavo', 'Ocupado', 'V2'),
(222, 300054, '2022-05-07', '2022-05-07', 'Orden de Servicio', 'AppleTV Sin Señal', 'TV no tiene señal ', 0, 1, '', 2546, 'IT - Sistemas', 5678, 'Francisco', 'Vacante', 'Vacante'),
(223, 300055, '2022-05-07', '2022-05-07', 'Orden de Servicio', 'TV Falla general', 'La television no tiene boton para encender', 1, 1, '', 3141, 'IT - Sistemas', 2345, 'Leonardo', 'Vacante', 'Vacante'),
(224, 300056, '2022-05-07', '2022-05-07', 'Incidencia', 'Incidencia Fotografias', 'El huesped no encuentra sus fotografias', 1, 3, '', 1345, 'IT - Sistemas', 4567, 'Alfredo', 'Ocupado', 'V2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reports`
--
ALTER TABLE `reports`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
