-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-01-2017 a las 23:20:19
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `planillas_seguridad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `a1m_planilla`
--

CREATE TABLE IF NOT EXISTS `a1m_planilla` (
  `PlaCod` int(11) NOT NULL,
  `PlaNum` char(20) DEFAULT NULL,
  `PlaFec` date NOT NULL,
  `PlaMes` char(10) NOT NULL,
  `PlaAnio` char(4) NOT NULL,
  `PlaFer` int(2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `a1m_planilla`
--

INSERT INTO `a1m_planilla` (`PlaCod`, `PlaNum`, `PlaFec`, `PlaMes`, `PlaAnio`, `PlaFer`) VALUES
(1, '5049988RYH', '2016-12-30', 'Enero', '2017', 1),
(2, '4444777TGH', '2016-12-30', 'Diciembre', '2016', 3),
(3, '4444778', '2016-12-01', 'Noviembre', '2016', 1),
(4, '8888DFR', '2016-11-01', 'Octubre', '2016', 0),
(5, '7777TYU', '2016-10-03', 'Setiembre', '2016', 0),
(7, '777999QWE', '2016-09-02', 'Agosto', '2016', 1),
(8, '3344ASD', '2016-08-01', 'Julio', '2016', 2),
(9, '5577QWE', '2016-07-01', 'Junio', '2016', 0),
(10, '998877ERT', '2016-06-01', 'Mayo', '2016', 0),
(11, '321654VBN', '2016-05-02', 'Abril', '2016', 0),
(12, '7788BHN', '2016-04-01', 'Marzo', '2016', 0),
(13, '987654BNM', '2016-03-01', 'Febrero', '2016', 0),
(14, '654741ZXC', '2016-02-01', 'Enero', '2016', 1),
(15, '223355HJK', '2016-01-02', 'Diciembre', '2016', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `a1m_tareaje`
--

CREATE TABLE IF NOT EXISTS `a1m_tareaje` (
  `TarCod` int(11) NOT NULL,
  `TraCod` int(7) DEFAULT NULL,
  `TarDias` int(2) DEFAULT NULL,
  `TarNoches` int(11) DEFAULT NULL,
  `TarInaAsi` tinyint(1) NOT NULL DEFAULT '0',
  `TarMes` int(2) NOT NULL,
  `TarAnio` int(4) NOT NULL,
  `TotTarHor` float(8,2) DEFAULT '0.00',
  `TotTar25` float DEFAULT '0',
  `TotTar35` float DEFAULT '0',
  `TotTarRef` float DEFAULT '0',
  `TotTarSobNoc` float DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `a1m_tareaje`
--

INSERT INTO `a1m_tareaje` (`TarCod`, `TraCod`, `TarDias`, `TarNoches`, `TarInaAsi`, `TarMes`, `TarAnio`, `TotTarHor`, `TotTar25`, `TotTar35`, `TotTarRef`, `TotTarSobNoc`) VALUES
(1, 1, 30, 0, 0, 12, 2016, 240.00, 20, 37.5, 0.75, 22.5),
(2, 1, 15, 15, 0, 11, 2016, 8.00, 2, 1.25, 0.75, 0),
(3, 4, 24, 2, 4, 12, 2016, 208.00, 15, 20, 0.75, 0),
(4, 4, 10, 10, 10, 11, 2016, 8.00, 2, 1.25, 0.75, 0),
(5, 2, 20, 5, 5, 12, 2016, 200.00, 15, 15, 0.75, 0),
(6, 4, 28, 1, 0, 10, 2016, 8.00, 2, 1.25, 0.75, 0),
(7, 4, 18, 10, 2, 9, 2016, 8.00, 2, 1.25, 0.75, 0),
(8, 2, 20, 10, 0, 11, 2016, 8.00, 2, 1.25, 0.75, 0),
(9, 2, 30, 0, 0, 10, 2016, 8.00, 2, 1.25, 0.75, 0),
(10, 2, 25, 0, 5, 9, 2016, 8.00, 2, 1.25, 0.75, 0),
(11, 1, 10, 20, 0, 10, 2016, 8.00, 2, 1.25, 0.75, 0),
(12, 1, 10, 10, 10, 9, 2016, 8.00, 2, 1.25, 0.75, 0),
(13, 4, 25, 5, 0, 8, 2016, 8.00, 2, 1.25, 0.75, 0),
(14, 4, 24, 4, 2, 7, 2016, 8.00, 2, 1.25, 0, 7),
(15, 7, 1, 12, 0, 1, 2017, 88.00, 22, 21.25, 0.75, 70);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `a1m_trabajadores`
--

CREATE TABLE IF NOT EXISTS `a1m_trabajadores` (
  `TraCod` int(7) NOT NULL,
  `TraApePat` char(30) NOT NULL,
  `TraApeMat` char(30) NOT NULL,
  `TraNom` char(40) NOT NULL,
  `TraDni` char(10) NOT NULL,
  `TraNac` varchar(40) DEFAULT NULL,
  `CarCod` int(4) DEFAULT NULL,
  `LugTraCod` int(7) DEFAULT NULL,
  `TraFecIni` date NOT NULL,
  `TraFecCes` date NOT NULL,
  `TraSueBas` double(12,2) DEFAULT NULL,
  `TraAsiFam` double(12,2) DEFAULT NULL,
  `TraCuspp` char(30) DEFAULT NULL,
  `TraEssVid` tinyint(1) DEFAULT NULL,
  `SisPenCod` int(4) DEFAULT NULL,
  `AfpCobCod` int(4) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `a1m_trabajadores`
--

INSERT INTO `a1m_trabajadores` (`TraCod`, `TraApePat`, `TraApeMat`, `TraNom`, `TraDni`, `TraNac`, `CarCod`, `LugTraCod`, `TraFecIni`, `TraFecCes`, `TraSueBas`, `TraAsiFam`, `TraCuspp`, `TraEssVid`, `SisPenCod`, `AfpCobCod`) VALUES
(1, 'Calderón', 'Galindo', 'José Alfredo', '45046435', 'Peruana', 1, 1, '2013-01-08', '2014-05-03', 850.00, 85.00, '307611SCAQR7', 0, 1, 1),
(2, 'Rosas', 'Jáuregui', 'Gilber Francisco', '42959010', 'Peruana', 1, 7, '2016-09-04', '2016-05-09', 850.00, 85.00, '595801GRJAR9', 0, 2, 2),
(3, 'Vásquez', 'Cayllahua', 'Rafael', '29612547', 'Peruana', 1, 1, '2016-06-08', '2016-06-09', 850.00, 85.00, '5955987BHUYG8', 0, 2, 3),
(4, 'Rojas', 'Coaguila', 'Ana Katherine', '80623362', 'Peruana', 1, 7, '2016-03-06', '2016-03-10', 850.00, 85.00, '6688772PLKJA1', 0, 2, 1),
(5, 'Gutierrez', 'Aquino', 'Miguel Ángel', '45956897', 'Peruana', 1, 8, '2016-08-24', '2016-10-04', 850.00, 85.00, '619641ECLCR0', 0, 4, 2),
(6, 'Riveros', 'Saico', 'Juan', '29649099', 'Peruana', 1, 3, '2016-12-01', '2016-12-30', 850.00, 85.00, '265251JRSEC0', 1, 2, 3),
(7, 'Ledesma', 'Salazar', 'Serenela Rosa Avelina', 'O9946986', 'Peruana', 1, 7, '2016-10-14', '0000-00-00', 850.00, NULL, '574230SLSEA9', 0, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `a1t_planilla_detalle`
--

CREATE TABLE IF NOT EXISTS `a1t_planilla_detalle` (
  `DetCod` int(11) NOT NULL,
  `PlaCod` int(11) DEFAULT NULL,
  `TraCod` int(7) DEFAULT NULL,
  `DetAsis` int(2) DEFAULT NULL,
  `DetInasis` int(2) DEFAULT NULL,
  `DetVac` tinyint(1) DEFAULT NULL,
  `DetBon` double DEFAULT NULL,
  `DetGra` double DEFAULT NULL,
  `DetBonPro` double DEFAULT NULL,
  `DetEss` double DEFAULT NULL,
  `DetOtrDsc` double DEFAULT NULL,
  `DetAdeQui` double DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `a1t_planilla_detalle`
--

INSERT INTO `a1t_planilla_detalle` (`DetCod`, `PlaCod`, `TraCod`, `DetAsis`, `DetInasis`, `DetVac`, `DetBon`, `DetGra`, `DetBonPro`, `DetEss`, `DetOtrDsc`, `DetAdeQui`) VALUES
(1, 15, 4, 6, 0, 0, 50, 50, 50, 0, 0, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `a1t_tasas`
--

CREATE TABLE IF NOT EXISTS `a1t_tasas` (
  `TasCod` int(6) NOT NULL,
  `SisPenCod` int(4) DEFAULT NULL,
  `AfpCobCod` int(4) DEFAULT NULL,
  `MesCod` int(2) DEFAULT NULL,
  `TasAnio` int(4) DEFAULT NULL,
  `TasCif` double(12,9) DEFAULT NULL,
  `TasDes` char(120) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `a1t_tasas`
--

INSERT INTO `a1t_tasas` (`TasCod`, `SisPenCod`, `AfpCobCod`, `MesCod`, `TasAnio`, `TasCif`, `TasDes`) VALUES
(1, 1, NULL, 12, 2016, 0.130000000, 'ONP'),
(2, 2, 4, 12, 2016, 0.100000000, NULL),
(3, 2, 5, 12, 2016, 0.008300000, NULL),
(4, 2, 3, 1, 2016, 0.015500000, NULL),
(5, 2, 1, 12, 2016, 0.012300000, NULL),
(6, 2, 2, 12, 2016, 0.012000000, NULL),
(7, NULL, NULL, 12, 2016, 0.090000000, 'EsSalud'),
(8, 2, 1, 1, 2017, 0.012300000, 'INTEGRA'),
(9, 2, 4, 1, 2017, 0.100000000, NULL),
(10, 2, 5, 1, 2017, 0.013300000, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gzz_afp_cobros`
--

CREATE TABLE IF NOT EXISTS `gzz_afp_cobros` (
  `AfpCobCod` int(4) NOT NULL,
  `AfpCobNom` char(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gzz_afp_cobros`
--

INSERT INTO `gzz_afp_cobros` (`AfpCobCod`, `AfpCobNom`) VALUES
(1, 'Comision Flujo'),
(2, 'Comisión Saldo'),
(3, 'Comisión'),
(4, 'Fondo'),
(5, 'Seguro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gzz_cargos`
--

CREATE TABLE IF NOT EXISTS `gzz_cargos` (
  `CarCod` int(4) NOT NULL,
  `CarNom` char(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gzz_cargos`
--

INSERT INTO `gzz_cargos` (`CarCod`, `CarNom`) VALUES
(1, 'Vigilante de Seguridad (Privados)'),
(2, 'Obrero - Limpieza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gzz_cuentas_cts`
--

CREATE TABLE IF NOT EXISTS `gzz_cuentas_cts` (
  `CueCtsCod` int(11) NOT NULL,
  `TraCod` int(7) DEFAULT NULL,
  `CueCtsNum` char(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gzz_cuentas_cts`
--

INSERT INTO `gzz_cuentas_cts` (`CueCtsCod`, `TraCod`, `CueCtsNum`) VALUES
(1, 1, '21546196278085'),
(2, 4, '21548093866022'),
(3, 3, '21548999876011'),
(4, 1, '21548334444033');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gzz_cuentas_sueldo`
--

CREATE TABLE IF NOT EXISTS `gzz_cuentas_sueldo` (
  `CueSueCod` int(11) NOT NULL,
  `TraCod` int(7) DEFAULT NULL,
  `CueSueNum` char(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gzz_cuentas_sueldo`
--

INSERT INTO `gzz_cuentas_sueldo` (`CueSueCod`, `TraCod`, `CueSueNum`) VALUES
(1, 1, '21526785384038'),
(2, 2, '215-3544448888-0-55'),
(3, 4, '215-3577771111-0-88'),
(4, 5, '215-3599996666-0-77'),
(5, 3, '215-3544440000-0-55'),
(6, 7, '215-35832107-0-43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gzz_lugar_trabajo`
--

CREATE TABLE IF NOT EXISTS `gzz_lugar_trabajo` (
  `LugTraCod` int(7) NOT NULL,
  `LugTraNom` char(120) NOT NULL,
  `LugTraDir` char(150) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gzz_lugar_trabajo`
--

INSERT INTO `gzz_lugar_trabajo` (`LugTraCod`, `LugTraNom`, `LugTraDir`) VALUES
(1, 'Ladrillera el Diamante', 'Av. Circunvalacion s/n Km. 8 Panamericana Norte'),
(2, 'Golf Club', NULL),
(3, 'Universidad La Salle', 'Calle La Salle s/n Cercado'),
(4, 'Haap Security', NULL),
(5, 'TECSUP', NULL),
(6, 'JIREMA', NULL),
(7, 'SENATI', NULL),
(8, 'Max Uhle', NULL),
(9, 'La Salle', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gzz_meses`
--

CREATE TABLE IF NOT EXISTS `gzz_meses` (
  `MesCod` int(2) NOT NULL,
  `MesNom` char(20) DEFAULT NULL,
  `MesDias` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gzz_meses`
--

INSERT INTO `gzz_meses` (`MesCod`, `MesNom`, `MesDias`) VALUES
(1, 'Enero', 31),
(2, 'Febrero', 28),
(3, 'Marzo', 31),
(4, 'Abril', 30),
(5, 'Mayo', 31),
(6, 'Junio', 30),
(7, 'Julio', 31),
(8, 'Agosto', 31),
(9, 'Setiembre', 30),
(10, 'Octubre', 31),
(11, 'Noviembre', 30),
(12, 'Diciembre', 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gzz_sis_pensiones`
--

CREATE TABLE IF NOT EXISTS `gzz_sis_pensiones` (
  `SisPenCod` int(4) NOT NULL,
  `SisPenNom` char(100) NOT NULL,
  `SisPenNem` char(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gzz_sis_pensiones`
--

INSERT INTO `gzz_sis_pensiones` (`SisPenCod`, `SisPenNom`, `SisPenNem`) VALUES
(1, 'Oficina de Normalización Previsional', 'ONP'),
(2, 'AFP Integra', 'Integra'),
(3, 'AFP Profuturo', 'Profuturo'),
(4, 'AFP Prima', 'Prima'),
(5, 'AFP Habitat', 'Habitat');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_planilla_detalle_mes_anio`
--
CREATE TABLE IF NOT EXISTS `v_planilla_detalle_mes_anio` (
`TraCod` int(7)
,`DetAsis` int(2)
,`DetInasis` int(2)
,`DetVac` tinyint(1)
,`DetBon` double
,`DetGra` double
,`DetBonPro` double
,`DetEss` double
,`DetOtrDsc` double
,`DetAdeQui` double
,`PlaMes` char(10)
,`PlaAnio` char(4)
,`PlaFer` int(2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_planilla_detalle_mes_anio_final`
--
CREATE TABLE IF NOT EXISTS `v_planilla_detalle_mes_anio_final` (
`TraCod` int(7)
,`DetAsis` int(2)
,`DetInasis` int(2)
,`DetVac` tinyint(1)
,`DetBon` double
,`DetGra` double
,`DetBonPro` double
,`DetEss` double
,`DetOtrDsc` double
,`DetAdeQui` double
,`PlaMes` char(10)
,`PlaAnio` char(4)
,`PlaFer` int(2)
,`MesCod` int(2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_sueldo_por_hora`
--
CREATE TABLE IF NOT EXISTS `v_sueldo_por_hora` (
`TraCod` int(7)
,`sueldo_por_hora` double(27,10)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_total_trasuebas_mas_traasifam`
--
CREATE TABLE IF NOT EXISTS `v_total_trasuebas_mas_traasifam` (
`TraCod` int(7)
,`TraDni` char(10)
,`TraSueBas` double(12,2)
,`TraAsiFam` double(12,2)
,`trasuebas_mas_traasifam` double(19,2)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `v_planilla_detalle_mes_anio`
--
DROP TABLE IF EXISTS `v_planilla_detalle_mes_anio`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_planilla_detalle_mes_anio` AS select `a1t_planilla_detalle`.`TraCod` AS `TraCod`,`a1t_planilla_detalle`.`DetAsis` AS `DetAsis`,`a1t_planilla_detalle`.`DetInasis` AS `DetInasis`,`a1t_planilla_detalle`.`DetVac` AS `DetVac`,`a1t_planilla_detalle`.`DetBon` AS `DetBon`,`a1t_planilla_detalle`.`DetGra` AS `DetGra`,`a1t_planilla_detalle`.`DetBonPro` AS `DetBonPro`,`a1t_planilla_detalle`.`DetEss` AS `DetEss`,`a1t_planilla_detalle`.`DetOtrDsc` AS `DetOtrDsc`,`a1t_planilla_detalle`.`DetAdeQui` AS `DetAdeQui`,`a1m_planilla`.`PlaMes` AS `PlaMes`,`a1m_planilla`.`PlaAnio` AS `PlaAnio`,`a1m_planilla`.`PlaFer` AS `PlaFer` from (`a1t_planilla_detalle` join `a1m_planilla` on((`a1t_planilla_detalle`.`PlaCod` = `a1m_planilla`.`PlaCod`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `v_planilla_detalle_mes_anio_final`
--
DROP TABLE IF EXISTS `v_planilla_detalle_mes_anio_final`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_planilla_detalle_mes_anio_final` AS select `v_planilla_detalle_mes_anio`.`TraCod` AS `TraCod`,`v_planilla_detalle_mes_anio`.`DetAsis` AS `DetAsis`,`v_planilla_detalle_mes_anio`.`DetInasis` AS `DetInasis`,`v_planilla_detalle_mes_anio`.`DetVac` AS `DetVac`,`v_planilla_detalle_mes_anio`.`DetBon` AS `DetBon`,`v_planilla_detalle_mes_anio`.`DetGra` AS `DetGra`,`v_planilla_detalle_mes_anio`.`DetBonPro` AS `DetBonPro`,`v_planilla_detalle_mes_anio`.`DetEss` AS `DetEss`,`v_planilla_detalle_mes_anio`.`DetOtrDsc` AS `DetOtrDsc`,`v_planilla_detalle_mes_anio`.`DetAdeQui` AS `DetAdeQui`,`v_planilla_detalle_mes_anio`.`PlaMes` AS `PlaMes`,`v_planilla_detalle_mes_anio`.`PlaAnio` AS `PlaAnio`,`v_planilla_detalle_mes_anio`.`PlaFer` AS `PlaFer`,`gzz_meses`.`MesCod` AS `MesCod` from (`v_planilla_detalle_mes_anio` join `gzz_meses` on((`v_planilla_detalle_mes_anio`.`PlaMes` = `gzz_meses`.`MesNom`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `v_sueldo_por_hora`
--
DROP TABLE IF EXISTS `v_sueldo_por_hora`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_sueldo_por_hora` AS select `v_total_trasuebas_mas_traasifam`.`TraCod` AS `TraCod`,((`v_total_trasuebas_mas_traasifam`.`trasuebas_mas_traasifam` / 30) / 8) AS `sueldo_por_hora` from `v_total_trasuebas_mas_traasifam`;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_total_trasuebas_mas_traasifam`
--
DROP TABLE IF EXISTS `v_total_trasuebas_mas_traasifam`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_total_trasuebas_mas_traasifam` AS select `a1m_trabajadores`.`TraCod` AS `TraCod`,`a1m_trabajadores`.`TraDni` AS `TraDni`,`a1m_trabajadores`.`TraSueBas` AS `TraSueBas`,`a1m_trabajadores`.`TraAsiFam` AS `TraAsiFam`,(`a1m_trabajadores`.`TraSueBas` + `a1m_trabajadores`.`TraAsiFam`) AS `trasuebas_mas_traasifam` from `a1m_trabajadores`;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `a1m_planilla`
--
ALTER TABLE `a1m_planilla`
  ADD PRIMARY KEY (`PlaCod`);

--
-- Indices de la tabla `a1m_tareaje`
--
ALTER TABLE `a1m_tareaje`
  ADD PRIMARY KEY (`TarCod`),
  ADD KEY `IX_Relationship10` (`TraCod`);

--
-- Indices de la tabla `a1m_trabajadores`
--
ALTER TABLE `a1m_trabajadores`
  ADD PRIMARY KEY (`TraCod`),
  ADD KEY `IX_Relationship1` (`CarCod`),
  ADD KEY `IX_Relationship2` (`LugTraCod`),
  ADD KEY `IX_Relationship19` (`SisPenCod`),
  ADD KEY `IX_Relationship20` (`AfpCobCod`);

--
-- Indices de la tabla `a1t_planilla_detalle`
--
ALTER TABLE `a1t_planilla_detalle`
  ADD PRIMARY KEY (`DetCod`),
  ADD KEY `IX_Relationship24` (`TraCod`),
  ADD KEY `IX_Relationship25` (`PlaCod`);

--
-- Indices de la tabla `a1t_tasas`
--
ALTER TABLE `a1t_tasas`
  ADD PRIMARY KEY (`TasCod`),
  ADD KEY `IX_Relationship18` (`MesCod`),
  ADD KEY `IX_Relationship21` (`SisPenCod`),
  ADD KEY `IX_Relationship22` (`AfpCobCod`);

--
-- Indices de la tabla `gzz_afp_cobros`
--
ALTER TABLE `gzz_afp_cobros`
  ADD PRIMARY KEY (`AfpCobCod`);

--
-- Indices de la tabla `gzz_cargos`
--
ALTER TABLE `gzz_cargos`
  ADD PRIMARY KEY (`CarCod`);

--
-- Indices de la tabla `gzz_cuentas_cts`
--
ALTER TABLE `gzz_cuentas_cts`
  ADD PRIMARY KEY (`CueCtsCod`),
  ADD KEY `IX_Relationship6` (`TraCod`);

--
-- Indices de la tabla `gzz_cuentas_sueldo`
--
ALTER TABLE `gzz_cuentas_sueldo`
  ADD PRIMARY KEY (`CueSueCod`),
  ADD KEY `IX_Relationship5` (`TraCod`);

--
-- Indices de la tabla `gzz_lugar_trabajo`
--
ALTER TABLE `gzz_lugar_trabajo`
  ADD PRIMARY KEY (`LugTraCod`);

--
-- Indices de la tabla `gzz_meses`
--
ALTER TABLE `gzz_meses`
  ADD PRIMARY KEY (`MesCod`);

--
-- Indices de la tabla `gzz_sis_pensiones`
--
ALTER TABLE `gzz_sis_pensiones`
  ADD PRIMARY KEY (`SisPenCod`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `a1m_planilla`
--
ALTER TABLE `a1m_planilla`
  MODIFY `PlaCod` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `a1m_tareaje`
--
ALTER TABLE `a1m_tareaje`
  MODIFY `TarCod` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `a1m_trabajadores`
--
ALTER TABLE `a1m_trabajadores`
  MODIFY `TraCod` int(7) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `a1t_planilla_detalle`
--
ALTER TABLE `a1t_planilla_detalle`
  MODIFY `DetCod` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `a1t_tasas`
--
ALTER TABLE `a1t_tasas`
  MODIFY `TasCod` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `gzz_afp_cobros`
--
ALTER TABLE `gzz_afp_cobros`
  MODIFY `AfpCobCod` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `gzz_cargos`
--
ALTER TABLE `gzz_cargos`
  MODIFY `CarCod` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `gzz_cuentas_cts`
--
ALTER TABLE `gzz_cuentas_cts`
  MODIFY `CueCtsCod` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `gzz_cuentas_sueldo`
--
ALTER TABLE `gzz_cuentas_sueldo`
  MODIFY `CueSueCod` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `gzz_lugar_trabajo`
--
ALTER TABLE `gzz_lugar_trabajo`
  MODIFY `LugTraCod` int(7) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `gzz_meses`
--
ALTER TABLE `gzz_meses`
  MODIFY `MesCod` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `gzz_sis_pensiones`
--
ALTER TABLE `gzz_sis_pensiones`
  MODIFY `SisPenCod` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `a1m_tareaje`
--
ALTER TABLE `a1m_tareaje`
  ADD CONSTRAINT `Relationship10` FOREIGN KEY (`TraCod`) REFERENCES `a1m_trabajadores` (`TraCod`);

--
-- Filtros para la tabla `a1m_trabajadores`
--
ALTER TABLE `a1m_trabajadores`
  ADD CONSTRAINT `Relationship1` FOREIGN KEY (`CarCod`) REFERENCES `gzz_cargos` (`CarCod`),
  ADD CONSTRAINT `Relationship19` FOREIGN KEY (`SisPenCod`) REFERENCES `gzz_sis_pensiones` (`SisPenCod`),
  ADD CONSTRAINT `Relationship2` FOREIGN KEY (`LugTraCod`) REFERENCES `gzz_lugar_trabajo` (`LugTraCod`),
  ADD CONSTRAINT `Relationship20` FOREIGN KEY (`AfpCobCod`) REFERENCES `gzz_afp_cobros` (`AfpCobCod`);

--
-- Filtros para la tabla `a1t_planilla_detalle`
--
ALTER TABLE `a1t_planilla_detalle`
  ADD CONSTRAINT `Relationship24` FOREIGN KEY (`TraCod`) REFERENCES `a1m_trabajadores` (`TraCod`),
  ADD CONSTRAINT `Relationship25` FOREIGN KEY (`PlaCod`) REFERENCES `a1m_planilla` (`PlaCod`);

--
-- Filtros para la tabla `a1t_tasas`
--
ALTER TABLE `a1t_tasas`
  ADD CONSTRAINT `Relationship18` FOREIGN KEY (`MesCod`) REFERENCES `gzz_meses` (`MesCod`),
  ADD CONSTRAINT `Relationship21` FOREIGN KEY (`SisPenCod`) REFERENCES `gzz_sis_pensiones` (`SisPenCod`),
  ADD CONSTRAINT `Relationship22` FOREIGN KEY (`AfpCobCod`) REFERENCES `gzz_afp_cobros` (`AfpCobCod`);

--
-- Filtros para la tabla `gzz_cuentas_cts`
--
ALTER TABLE `gzz_cuentas_cts`
  ADD CONSTRAINT `Relationship6` FOREIGN KEY (`TraCod`) REFERENCES `a1m_trabajadores` (`TraCod`);

--
-- Filtros para la tabla `gzz_cuentas_sueldo`
--
ALTER TABLE `gzz_cuentas_sueldo`
  ADD CONSTRAINT `Relationship5` FOREIGN KEY (`TraCod`) REFERENCES `a1m_trabajadores` (`TraCod`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
