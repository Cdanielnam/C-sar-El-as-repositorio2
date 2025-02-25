-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2025 a las 03:42:54
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
-- Base de datos: `proyectos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id_departamento` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id_departamento`, `nombre`) VALUES
(1, 'San Salvador'),
(2, 'Sonsonate'),
(3, 'Cabañas'),
(4, 'Usulután'),
(5, 'San Miguel'),
(6, 'La Libertad'),
(7, 'Santa Ana'),
(8, 'La Unión'),
(9, 'La Paz'),
(10, 'Morazan'),
(11, 'San Vicente'),
(12, 'Ahuachapan'),
(13, 'Cuscatlan'),
(14, 'Morazan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id_municipio` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id_municipio`, `nombre`, `id_departamento`, `orden`) VALUES
(1, 'San Martín', 1, NULL),
(2, 'Aguilares', 1, NULL),
(3, 'El Paisnal', 1, NULL),
(4, 'San Salvador', 1, NULL),
(5, 'Apopa', 1, NULL),
(6, 'Mejicanos', 1, NULL),
(7, 'Soyapango', 1, NULL),
(8, 'Delgado', 1, NULL),
(9, 'Cuscatancingo', 1, NULL),
(10, 'Tonacatepeque', 1, NULL),
(11, 'Ayutuxtepeque', 1, NULL),
(12, 'Ilopango', 1, NULL),
(13, 'Nejapa', 1, NULL),
(14, 'Panchimalco', 1, NULL),
(15, 'Rosario de Mora', 1, NULL),
(16, 'Santo Tomás', 1, NULL),
(17, 'Santiago Texacuangos', 1, NULL),
(18, 'Guazapa', 1, NULL),
(19, 'San Marcos', 1, NULL),
(20, 'San José Guayabal', 1, NULL),
(21, 'Sonsonate', 2, NULL),
(22, 'Acajutla', 2, NULL),
(23, 'Armenia', 2, NULL),
(24, 'Caluco', 2, NULL),
(25, 'Cuisnahuat', 2, NULL),
(26, 'Izalco', 2, NULL),
(27, 'Juayúa', 2, NULL),
(28, 'Nahuizalco', 2, NULL),
(29, 'Nahulingo', 2, NULL),
(30, 'Salcoatitán', 2, NULL),
(31, 'San Antonio del Monte', 2, NULL),
(32, 'San Julián', 2, NULL),
(33, 'Santa Catarina Masahuat', 2, NULL),
(34, 'Santa Isabel Ishuatán', 2, NULL),
(35, 'Santo Domingo de Guzmán', 2, NULL),
(36, 'Sonzacate', 2, NULL),
(37, 'Ilobasco', 3, NULL),
(38, 'Cinquera', 3, NULL),
(39, 'Dolores', 3, NULL),
(40, 'Guacotecti', 3, NULL),
(41, 'Jutiapa', 3, NULL),
(42, 'San Isidro', 3, NULL),
(43, 'Sensuntepeque', 3, NULL),
(44, 'Tejutepeque', 3, NULL),
(45, 'Victoria', 3, NULL),
(46, 'Usulután', 4, NULL),
(47, 'Alegría', 4, NULL),
(48, 'Berlín', 4, NULL),
(49, 'California', 4, NULL),
(50, 'Concepción Batres', 4, NULL),
(51, 'El Triunfo', 4, NULL),
(52, 'Ereguayquín', 4, NULL),
(53, 'Estanzuelas', 4, NULL),
(54, 'Jiquilisco', 4, NULL),
(55, 'Jucuapa', 4, NULL),
(56, 'Jucuarán', 4, NULL),
(57, 'Mercedes Umaña', 4, NULL),
(58, 'Nueva Granada', 4, NULL),
(59, 'Ozatlán', 4, NULL),
(60, 'Puerto El Triunfo', 4, NULL),
(61, 'San Agustín', 4, NULL),
(62, 'San Buenaventura', 4, NULL),
(63, 'San Dionisio', 4, NULL),
(64, 'San Francisco Javier', 4, NULL),
(65, 'Santa Elena', 4, NULL),
(66, 'Santa María', 4, NULL),
(67, 'Santiago de María', 4, NULL),
(68, 'Tecapán', 4, NULL),
(69, 'San Miguel', 5, NULL),
(70, 'Carolina', 5, NULL),
(71, 'Chapeltique', 5, NULL),
(72, 'Chinameca', 5, NULL),
(73, 'Chirilagua', 5, NULL),
(74, 'Ciudad Barrios', 5, NULL),
(75, 'Comacarán', 5, NULL),
(76, 'El Tránsito', 5, NULL),
(77, 'Lolotique', 5, NULL),
(78, 'Moncagua', 5, NULL),
(79, 'Nueva Guadalupe', 5, NULL),
(80, 'Nuevo Edén de San Juan', 5, NULL),
(81, 'Quelepa', 5, NULL),
(82, 'San Antonio', 5, NULL),
(83, 'San Gerardo', 5, NULL),
(84, 'San Jorge', 5, NULL),
(85, 'San Luis de la Reina', 5, NULL),
(86, 'San Rafael Oriente', 5, NULL),
(87, 'Sesori', 5, NULL),
(88, 'Uluazapa', 5, NULL),
(89, 'Colón', 6, NULL),
(90, 'Cangrejera', 6, NULL),
(91, 'Antiguo Cuscatlán', 6, NULL),
(92, 'San Juan Opico', 6, NULL),
(93, 'Santa Tecla', 6, NULL),
(94, 'Talnique', 6, NULL),
(95, 'Nuevo Cuscatlán', 6, NULL),
(96, 'Comasagua', 6, NULL),
(97, 'Chiltiupán', 6, NULL),
(98, 'Huizúcar', 6, NULL),
(99, 'Jicalapa', 6, NULL),
(100, 'La Libertad', 6, NULL),
(101, 'Quezaltepeque', 6, NULL),
(102, 'Sacacoyo', 6, NULL),
(103, 'San José Villanueva', 6, NULL),
(104, 'San Matías', 6, NULL),
(105, 'San Pablo Tacachico', 6, NULL),
(106, 'Tamanique', 6, NULL),
(107, 'Teotepeque', 6, NULL),
(108, 'Tepecoyo', 6, NULL),
(109, 'Zaragoza', 6, NULL),
(110, 'Metapán', 7, NULL),
(111, 'Candelaria de la Frontera', 7, NULL),
(112, 'Chalchuapa', 7, NULL),
(113, 'Coatepeque', 7, NULL),
(114, 'El Congo', 7, NULL),
(115, 'El Porvenir', 7, NULL),
(116, 'Masahuat', 7, NULL),
(117, 'San Antonio Pajonal', 7, NULL),
(118, 'San Sebastián Salitrillo', 7, NULL),
(119, 'Santa Ana', 7, NULL),
(120, 'Santa Rosa Guachipilín', 7, NULL),
(121, 'Santiago de la Frontera', 7, NULL),
(122, 'Texistepeque', 7, NULL),
(123, 'Santa Rosa de Lima', 8, NULL),
(124, 'Pasaquina', 8, NULL),
(125, 'Anamorós', 8, NULL),
(126, 'Bolívar', 8, NULL),
(127, 'Concepción de Oriente', 8, NULL),
(128, 'Conchagua', 8, NULL),
(129, 'El Carmen', 8, NULL),
(130, 'El Sauce', 8, NULL),
(131, 'Intipucá', 8, NULL),
(132, 'La Unión', 8, NULL),
(133, 'Lislique', 8, NULL),
(134, 'Meanguera del Golfo', 8, NULL),
(135, 'Nueva Esparta', 8, NULL),
(136, 'Polorós', 8, NULL),
(137, 'San Alejo', 8, NULL),
(138, 'San José', 8, NULL),
(139, 'Yayantique', 8, NULL),
(140, 'Yucuaiquín', 8, NULL),
(141, 'Zacatecoluca', 9, NULL),
(142, 'Cuyultitán', 9, NULL),
(143, 'El Rosario', 9, NULL),
(144, 'Jerusalén', 9, NULL),
(145, 'Mercedes La Ceiba', 9, NULL),
(146, 'Olocuilta', 9, NULL),
(147, 'Paraíso de Osorio', 9, NULL),
(148, 'San Antonio Masahuat', 9, NULL),
(149, 'San Emigdio', 9, NULL),
(150, 'San Francisco Chinameca', 9, NULL),
(151, 'San Juan Nonualco', 9, NULL),
(152, 'San Juan Talpa', 9, NULL),
(153, 'San Juan Tepezontes', 9, NULL),
(154, 'San Luis La Herradura', 9, NULL),
(155, 'San Luis Talpa', 9, NULL),
(156, 'San Miguel Tepezontes', 9, NULL),
(157, 'San Pedro Masahuat', 9, NULL),
(158, 'San Pedro Nonualco', 9, NULL),
(159, 'San Rafael Obrajuelo', 9, NULL),
(160, 'Santa María Ostuma', 9, NULL),
(161, 'Santiago Nonualco', 9, NULL),
(162, 'Tapalhuaca', 9, NULL),
(163, 'San Francisco Gotera', 10, NULL),
(164, 'Arambala', 10, NULL),
(165, 'Cacaopera', 10, NULL),
(166, 'Chilanga', 10, NULL),
(167, 'Corinto', 10, NULL),
(168, 'Delicias de Concepción', 10, NULL),
(169, 'El Divisadero', 10, NULL),
(170, 'El Rosario', 10, NULL),
(171, 'Gualococti', 10, NULL),
(172, 'Guatajiagua', 10, NULL),
(173, 'Joateca', 10, NULL),
(174, 'Jocoaitique', 10, NULL),
(175, 'Jocoro', 10, NULL),
(176, 'Lolotiquillo', 10, NULL),
(177, 'Meanguera', 10, NULL),
(178, 'Osicala', 10, NULL),
(179, 'Perquín', 10, NULL),
(180, 'San Carlos', 10, NULL),
(181, 'San Fernando', 10, NULL),
(182, 'San Isidro', 10, NULL),
(183, 'San Simón', 10, NULL),
(184, 'Sensembra', 10, NULL),
(185, 'Sociedad', 10, NULL),
(186, 'Torola', 10, NULL),
(187, 'Yamabal', 10, NULL),
(188, 'Yoloaiquín', 10, NULL),
(189, 'San Vicente', 11, NULL),
(190, 'Apastepeque', 11, NULL),
(191, 'Guadalupe', 11, NULL),
(192, 'San Cayetano Istepeque', 11, NULL),
(193, 'San Esteban Catarina', 11, NULL),
(194, 'San Ildefonso', 11, NULL),
(195, 'San Lorenzo', 11, NULL),
(196, 'San Sebastián', 11, NULL),
(197, 'Santa Clara', 11, NULL),
(198, 'Santo Domingo', 11, NULL),
(199, 'Tecoluca', 11, NULL),
(200, 'Tepetitán', 11, NULL),
(201, 'Verapaz', 11, NULL),
(202, 'Ahuachapán', 12, NULL),
(203, 'Apaneca', 12, NULL),
(204, 'Atiquizaya', 12, NULL),
(205, 'Concepción de Ataco', 12, NULL),
(206, 'El Refugio', 12, NULL),
(207, 'Guaymango', 12, NULL),
(208, 'Jujutla', 12, NULL),
(209, 'San Francisco Menéndez', 12, NULL),
(210, 'San Lorenzo', 12, NULL),
(211, 'San Pedro Puxtla', 12, NULL),
(212, 'Tacuba', 12, NULL),
(213, 'Turín', 12, NULL),
(214, 'Cojutepeque', 13, NULL),
(215, 'Candelaria', 13, NULL),
(216, 'El Carmen', 13, NULL),
(217, 'El Rosario', 13, NULL),
(218, 'Monte San Juan', 13, NULL),
(219, 'Oratorio de Concepción', 13, NULL),
(220, 'San Bartolomé Perulapía', 13, NULL),
(221, 'San Cristóbal', 13, NULL),
(222, 'San José Guayabal', 13, NULL),
(223, 'San Pedro Perulapán', 13, NULL),
(224, 'San Rafael Cedros', 13, NULL),
(225, 'San Ramón', 13, NULL),
(226, 'Santa Cruz Analquito', 13, NULL),
(227, 'Santa Cruz Michapa', 13, NULL),
(228, 'Suchitoto', 13, NULL),
(229, 'Tenancingo', 13, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id_proyecto` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `id_municipio` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `presupuesto` decimal(15,2) DEFAULT NULL,
  `estado` enum('En planificación','En ejecución','Finalizado') DEFAULT NULL,
  `responsable` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id_proyecto`, `nombre`, `descripcion`, `id_municipio`, `fecha`, `orden`, `presupuesto`, `estado`, `responsable`) VALUES
(1, 'Centro Turístico DECAMERON', 'Estudios hidrológicos y diseños hidráulicos.', 6, '2003-01-01', 1, NULL, NULL, NULL),
(2, 'Carretera Longitudinal del Norte', 'Demarcación de cuencas y subcuencas en Autocad 2000.', 14, '2004-01-01', 2, NULL, NULL, NULL),
(3, 'Cementerio Jardín Las Palmas', 'Diseños hidráulicos para redes de agua potable, aguas negras y lluvias.', 1, '2012-06-01', 3, NULL, NULL, NULL),
(4, 'Parcelación El Sitio', 'Estudios hidrológicos e hidráulicos.', 7, '2012-07-01', 4, NULL, NULL, NULL),
(5, 'Evaluación de Quebrada', 'Evaluación de quebrada colindante a Centro Comercial.', 15, '2012-06-01', 5, NULL, NULL, NULL),
(6, 'Lotificación Potrero Grande', 'Estudios hidrológicos e hidráulicos para legalización.', 3, '2013-01-01', 6, NULL, NULL, NULL),
(7, 'Apartamentos Villa D’Campo', 'Diseño de redes hidráulicas en Colonia Escalón.', 4, '2014-01-01', 7, NULL, NULL, NULL),
(8, 'Centro Logístico RANSA', 'Centro logístico en Apopa.', 5, '2014-01-01', 8, NULL, NULL, NULL),
(9, 'Lotificación Villas de la Esmeralda', 'Estudios hidrológicos e hidráulicos para legalización.', 6, '2014-01-01', 9, NULL, NULL, NULL),
(10, 'Lotificación Miraflores', 'Estudios hidrológicos e hidráulicos para legalización.', 9, '2015-01-01', 10, NULL, NULL, NULL),
(11, 'Lotificación Santa Lucía', 'Estudios hidrológicos e hidráulicos para legalización.', 11, '2015-01-01', 11, NULL, NULL, NULL),
(12, 'Complejo Industrial El Bosquecito', 'Estudios hidrológicos y diseños hidráulicos.', 13, '2015-01-01', 12, NULL, NULL, NULL),
(13, 'Bodegas Livesmart Tres Fases', 'Estudios hidrológicos para bodegas.', 10, '2015-01-01', 13, NULL, NULL, NULL),
(14, 'Edificio Bicentenarios - Canal 12', 'Estudios hidrológicos y diseños hidráulicos.', 12, '2016-01-01', 14, NULL, NULL, NULL),
(15, 'Anteproyecto Centro Financiero Irlanda', 'Anteproyecto', 12, '2017-02-01', 15, NULL, NULL, NULL),
(16, 'Complejo Turístico El Espino', 'Estudios hidrológicos y diseños hidráulicos.', 8, '2017-03-01', 16, NULL, NULL, NULL),
(17, 'AMPLIACION NAVES LIVSEMART', 'Diseño de redes hidráulicas de agua potable, negras y lluvias.', 10, '2017-01-01', 17, NULL, NULL, NULL),
(18, 'Los Almendros', 'Diseño de Red Contra Incendio.', 4, '2017-06-01', 18, NULL, NULL, NULL),
(19, 'Los Almendros', 'Revisión y adaptación a normas nacionales de memoria de cálculo y planos.', 4, '2017-05-01', 19, NULL, NULL, NULL),
(20, 'Estacionamiento PriceMart Santa Elena', 'Diseño de red de aguas negras y aguas lluvias.', 12, '2017-06-01', 20, NULL, NULL, NULL),
(21, 'Caracol', 'Diseño de red de agua potable, aguas negras y lluvias.', 17, '2017-01-01', 21, NULL, NULL, NULL),
(22, 'FORESTA EL ENCANTO', 'Diseño de redes hidráulicas de agua potable, negras, red contra incendio y lluvias.', 12, '2017-01-01', 22, NULL, NULL, NULL),
(23, 'Bodegas LUXOR', 'Diseño de redes hidráulicas de agua potable, negras, red contra incendio y lluvias.', 12, '2017-01-01', 23, NULL, NULL, NULL),
(24, 'Centro de Distribución Super Repuestos Nejapa', 'Diseño de redes hidráulicas de agua potable, negras, red contra incendio y lluvias.', 5, '2017-01-01', 24, NULL, NULL, NULL),
(25, 'Comercial Granada', 'Diseño de redes hidráulicas de agua potable, negras, red contra incendio y lluvias.', 19, '2018-01-01', 25, NULL, NULL, NULL),
(26, 'Vista Tower II', 'Revisión y adaptación a normas nacionales de memoria de cálculo y planos.', 4, '2019-05-01', 26, NULL, NULL, NULL),
(27, 'Colector Pluvial Livsmart', 'Diseño de colector pluvial principal.', 10, '2018-01-01', 27, NULL, NULL, NULL),
(28, 'Edificio Tipo para Juegos Centroamericanos', 'Diseño de redes de agua potable, aguas negras y lluvias para Instalaciones de Atletas en la Universidad de El Salvador.', 4, '2023-02-01', 28, NULL, NULL, NULL),
(29, 'Sistema de red para Bodega #2 BODESA', 'Diseño de sistema de agua potable, aguas negras y lluvias para Bodega #2 en Apopa.', 5, '2024-03-01', 29, NULL, NULL, NULL),
(30, 'Revisión Sistema de Detención La Prensa Gráfica', 'Revisión del sistema de detención.', 1, '2024-09-01', 30, NULL, NULL, NULL),
(31, 'Maxidespensas', 'Ubicadas en Santa Ana, Olocuilta, Soyapango Boulevard del Ejército y La Constancia, Carretera Troncal del Norte, Centro Urbano José Simeón Cañas (Zacamil), Apopa.', 7, '2015-01-01', 31, NULL, NULL, NULL),
(32, 'Readecuación de Walmart', 'Readecuación de instalaciones de Walmart, Colonia Escalón.', 4, '2015-03-01', 32, NULL, NULL, NULL),
(33, 'Remodelación Agencia CITI', 'Remodelación de Agencia CITI, Terminal de Occidente.', 4, '2015-05-01', 33, NULL, NULL, NULL),
(34, 'Unidad de Salud Soyapango', 'Unidad de Salud Soyapango propiedad del MINSAL y KOICA.', 5, '2015-03-01', 34, NULL, NULL, NULL),
(35, 'Centro Comercial Estación del Casco', 'Propiedad de URBANICA S.A. de C.V.', 14, '2019-01-01', 35, NULL, NULL, NULL),
(36, 'Residencia Kedan Kuan', 'Ubicada en Portal del Casco Norte, San Salvador.', 4, '2020-05-01', 36, NULL, NULL, NULL),
(37, 'Estación de Servicio TEXACO Juan Pablo II', 'Estación de Servicio y Gasolinera TEXACO Juan Pablo II, San Salvador.', 4, '2020-06-01', 37, NULL, NULL, NULL),
(38, 'Ampliación TEXACO El Ángel', 'Ampliación de Estación de Servicio y Gasolinera TEXACO El Ángel, Municipio de Apopa.', 5, '2020-06-01', 38, NULL, NULL, NULL),
(39, 'Estación de Servicio BELEN', 'Estación de Servicio y Gasolinera BELEN, Municipio de San Miguel.', 9, '2021-05-01', 39, NULL, NULL, NULL),
(40, 'Roatán Resort', 'Complejos Turísticos en Islas de Roatán: Edificios de 5 y 7 niveles, Bungalows y Áreas Recreativas.', 8, '2007-01-01', 40, NULL, NULL, NULL),
(41, 'Residencial Las Luces', 'Calle al Boquerón, municipio de Santa Tecla.', 14, '2016-01-01', 41, NULL, NULL, NULL),
(42, 'Proyecto EPA Los Héroes', 'Revisión de sistema de aguas lluvias.', 14, '2018-01-01', 42, NULL, NULL, NULL),
(43, 'Centro Comercial Masferrer', 'Ubicado sobre Prolongación Avenida Masferrer Norte.', 14, '2018-01-01', 43, NULL, NULL, NULL),
(44, 'Torre Las Américas', 'Diseños hidráulicos para redes de agua potable, negras y lluvias.', 16, '2017-05-01', 44, NULL, NULL, NULL),
(45, 'Club Salvadoreño', 'Diseño de redes hidráulicas para agua potable, negras y lluvias.', 16, '2020-09-01', 45, NULL, NULL, NULL),
(46, 'Instalaciones de TCS 2 – 4 – 6', 'En Complejo La Gran Vía.', 14, '2018-01-01', 46, NULL, NULL, NULL),
(47, 'Residencia Casa AUGSPURG', 'Portal del Casco Norte, municipio de San Salvador.', 4, '2018-01-01', 47, NULL, NULL, NULL),
(48, 'Centro Escolar Maya', 'Ubicado al interior de proyecto Tuscania, municipio de Zaragoza.', 6, '2016-02-01', 48, NULL, NULL, NULL),
(49, 'Residencia Casa Luxmar', 'Ubicada en Portal del Casco Sur, municipio de San Salvador.', 4, '2016-01-01', 49, NULL, NULL, NULL),
(50, 'Iglesia Católica', 'Al interior de Portal del Casco Sur, municipio de San Salvador, propiedad de URBANICA S.A. de C.V.', 4, '2018-01-01', 50, NULL, NULL, NULL),
(51, 'Diseño de Fosa Séptica y pozos de absorción', 'Para dos viviendas en Residencial Tuscania.', 6, '2022-01-01', 51, NULL, NULL, NULL),
(52, 'Centro Turístico DECAMERON', 'Estudios hidrológicos y diseños hidráulicos.', 6, '2003-01-01', 52, 250000.00, 'Finalizado', 'Ing. Rodríguez'),
(53, 'Carretera Longitudinal del Norte', 'Demarcación de cuencas y subcuencas en Autocad 2000.', 14, '2004-01-01', 53, 1500000.00, 'Finalizado', 'Arq. Martínez'),
(54, 'Cementerio Jardín Las Palmas', 'Diseños hidráulicos para redes de agua potable, aguas negras y lluvias.', 1, '2012-06-01', 54, 500000.00, 'Finalizado', 'Ing. Pérez'),
(55, 'Parcelación El Sitio', 'Estudios hidrológicos e hidráulicos.', 7, '2012-07-01', 55, 300000.00, 'Finalizado', 'Ing. Gómez'),
(56, 'Evaluación de Quebrada', 'Evaluación de quebrada colindante a Centro Comercial.', 15, '2012-06-01', 56, 200000.00, 'Finalizado', 'Arq. López'),
(57, 'Lotificación Potrero Grande', 'Estudios hidrológicos e hidráulicos para legalización.', 3, '2013-01-01', 57, 100000.00, 'Finalizado', 'Ing. Jiménez'),
(58, 'Apartamentos Villa D’Campo', 'Diseño de redes hidráulicas en Colonia Escalón.', 4, '2014-01-01', 58, 800000.00, 'Finalizado', 'Ing. Rivera'),
(59, 'Centro Logístico RANSA', 'Centro logístico en Apopa.', 5, '2014-01-01', 59, 1200000.00, 'Finalizado', 'Ing. Torres'),
(60, 'Lotificación Villas de la Esmeralda', 'Estudios hidrológicos e hidráulicos para legalización.', 6, '2014-01-01', 60, 900000.00, 'Finalizado', 'Arq. Castillo'),
(61, 'Lotificación Miraflores', 'Estudios hidrológicos e hidráulicos para legalización.', 9, '2015-01-01', 61, 700000.00, 'Finalizado', 'Ing. Romero'),
(62, 'Lotificación Santa Lucía', 'Estudios hidrológicos e hidráulicos para legalización.', 11, '2015-01-01', 62, 450000.00, 'Finalizado', 'Ing. Chávez'),
(63, 'Complejo Industrial El Bosquecito', 'Estudios hidrológicos y diseños hidráulicos.', 13, '2015-01-01', 63, 2500000.00, 'Finalizado', 'Arq. Moreno'),
(64, 'Edificio Bicentenarios - Canal 12', 'Estudios hidrológicos y diseños hidráulicos.', 12, '2016-01-01', 64, 1500000.00, 'Finalizado', 'Ing. Duarte'),
(65, 'Anteproyecto Centro Financiero Irlanda', 'Anteproyecto', 12, '2017-02-01', 65, 5000000.00, 'En planificación', 'Arq. Ramírez'),
(66, 'Complejo Turístico El Espino', 'Estudios hidrológicos y diseños hidráulicos.', 8, '2017-03-01', 66, 3500000.00, 'En planificación', 'Ing. Fernández'),
(67, 'Estacionamiento PriceMart Santa Elena', 'Diseño de red de aguas negras y aguas lluvias.', 12, '2017-06-01', 67, 400000.00, 'Finalizado', 'Arq. Peralta'),
(68, 'Revisión de Observaciones de Formulario Ambiental', 'Revisión de observaciones relacionadas al proyecto de Casa de Retiro de Lago de Coatepeque.', 2, '2020-11-01', 68, 100000.00, 'Finalizado', 'Ing. Salgado'),
(69, 'Memoria de Cálculo Edificio 4920 y Anexo', 'Memoria de cálculo para Edificio 4920 y Edificio Anexo en Colonia Escalón.', 4, '2020-11-01', 69, 120000.00, 'Finalizado', 'Ing. Herrera'),
(70, 'Diseño de Redes Hidráulicas Estación TEXACO Amapolas', 'Diseño de red de agua potable, aguas negras y lluvias para Estación de Servicio TEXACO Amapolas.', 4, '2021-03-01', 70, 150000.00, 'Finalizado', 'Ing. Vargas'),
(71, 'Diagnóstico Territorial Centro de Servicio DIANA', 'Elaboración de diagnóstico territorial para el proyecto “Centro de Servicio DIANA”.', 8, '2021-05-01', 28, 180000.00, 'Finalizado', 'Arq. Castillo'),
(72, 'Diseño de Redes Hidráulicas Edificio Reforma', 'Diseño de redes hidráulicas para el proyecto EDIFICIO REFORMA.', 4, '2022-01-01', 71, 200000.00, 'Finalizado', 'Ing. Méndez'),
(73, 'Diseño de Redes Hidráulicas Estación TEXACO Ahuachapán', 'Diseño de red de agua potable, aguas negras y lluvias para Estación de Servicio TEXACO Ahuachapán.', 10, '2022-03-01', 72, 170000.00, 'Finalizado', 'Ing. Romero'),
(74, 'Diseño de Instalaciones Hidráulicas Bodega Industrial', 'Diseño de instalaciones hidráulicas para BODEGA INDUSTRIAL en Zaragoza.', 16, '2022-05-01', 73, 220000.00, 'Finalizado', 'Ing. Chávez'),
(75, 'Diseño de Instalaciones Hidráulicas Casa Palomo', 'Diseño de instalaciones hidráulicas para Casa Palomo en Lago de Coatepeque.', 2, '2022-05-01', 32, 190000.00, 'Finalizado', 'Ing. Duarte'),
(76, 'Diseño de Instalaciones Hidráulicas Casa Novoa Fiallos', 'Diseño de instalaciones hidráulicas para Casa Familia Novoa Fiallos.', 17, '2022-06-01', 74, 210000.00, 'Finalizado', 'Ing. Torres'),
(77, 'Diseño de Instalaciones Hidráulicas Casa Saca', 'Diseño de instalaciones hidráulicas para Casa Saca en Antiguo Cuscatlán.', 18, '2022-08-01', 34, 230000.00, 'Finalizado', 'Ing. Rivera'),
(78, 'Diseño de Instalaciones Hidráulicas Oficinas APAMO', 'Diseño de instalaciones hidráulicas para OFICINAS ADMINISTRATIVAS Y BODEGAS APAMO S.A. DE C.V.', 16, '2022-09-01', 75, 240000.00, 'Finalizado', 'Ing. Jiménez'),
(79, 'Rediseño de Redes Hidráulicas Estación TEXACO Amapolas', 'Rediseño de red de agua potable, aguas negras y lluvias para Estación de Servicio TEXACO Amapolas.', 4, '2022-03-01', 76, 160000.00, 'Finalizado', 'Ing. Vargas'),
(80, 'Diseño de Redes Hidráulicas Proyecto OASIS', 'Diseño de red de agua potable, aguas negras y lluvias para el proyecto OASIS en Soyapango.', 8, '2024-03-01', 77, 250000.00, '', 'Ing. Salgado'),
(81, 'Diseño y Revisión de Red de Aguas Lluvias', 'Diseño y revisión de red de aguas lluvias para ampliación de bodega central en Chalchuapa.', 19, '2022-07-01', 78, 130000.00, 'Finalizado', 'Ing. Herrera'),
(82, 'Revisión de Obras de Drenaje Pluvial', 'Revisión de obras de drenaje pluvial para el proyecto de revitalización de corredores urbanos en San Salvador.', 4, '2015-01-01', 79, 140000.00, 'Finalizado', 'Arq. Moreno');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id_municipio`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id_proyecto`),
  ADD KEY `id_municipio` (`id_municipio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id_municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id_proyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`);

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `proyectos_ibfk_1` FOREIGN KEY (`id_municipio`) REFERENCES `municipios` (`id_municipio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
