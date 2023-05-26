-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2017 at 07:57 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------
--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `Usuario` varchar(100) NOT NULL,
  `Contrasena` varchar(100) NOT NULL,
  `FechaActualizacion` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Usuario`, `Contrasena`, `FechaActualizacion`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE IF NOT EXISTS `tblreservas` (
  `id` int(11) NOT NULL,
  `EmailUsuario` varchar(100) DEFAULT NULL,
  `IdVehiculo` int(11) DEFAULT NULL,
  `FechaInicio` varchar(20) DEFAULT NULL,
  `FechaFin` varchar(20) DEFAULT NULL,
  `Mensajes` varchar(255) DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL,
  `FechaPosteo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblreservas` (`id`, `EmailUsuario`, `IdVehiculo`, `FechaInicio`, `FechaFin`, `Mensajes`, `Estado`, `FechaPosteo`) VALUES
(1, 'test@gmail.com', 2, '22/06/2017', '25/06/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 1, '2017-06-19 20:15:43'),
(2, 'test@gmail.com', 3, '30/06/2017', '02/07/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 2, '2017-06-26 20:15:43'),
(3, 'test@gmail.com', 4, '02/07/2017', '07/07/2017', 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ', 0, '2017-06-26 21:10:06');

-- --------------------------------------------------------

--
-- Tabla marca
--

CREATE TABLE IF NOT EXISTS `tblmarcas` (
  `id` int(11) NOT NULL,
  `NombreMarca` varchar(120) NOT NULL,
  `FechaCreacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ActualiFecha` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- ****** Tabla Marca *************
--

INSERT INTO `tblmarcas` (`id`, `NombreMarca`, `FechaCreacion`, `ActualiFecha`) VALUES
(1, 'Specialized.', '2017-06-18 16:24:34', '2017-06-19 06:42:23'),
(2, 'Scott', '2017-06-18 16:24:50', NULL),
(3, 'Trek', '2017-06-18 16:25:03', NULL),
(4, 'Giant', '2017-06-18 16:25:13', NULL),
(5, 'Orbea', '2017-06-18 16:25:24', NULL),
(7, 'BMC', '2017-06-19 06:22:13', NULL);

-- --------------------------------------------------------

--
-- Tabla Informacion de contacto
--

CREATE TABLE IF NOT EXISTS `tblcontactoinfo` (
  `id` int(11) NOT NULL,
  `Direccion` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `Contacto` char(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- ****** Tabla de Informacion de Contacto
--

INSERT INTO `tblcontactoinfo` (`id`, `Direccion`, `EmailId`, `Contacto`) VALUES
(1, 'Test Demo test demo																									', 'test@test.com', '8585233222');

-- 

--   *********** Tabla de vehiculos **************

CREATE TABLE IF NOT EXISTS `tblvehiculos` (
  `id` int(11) NOT NULL,
  `TituloVehiculo` varchar(150) DEFAULT NULL,
  `MarcaVehiculo` int(11) DEFAULT NULL,
  `DescripcionVehiculo` longtext,
  `PrecioDia` int(11) DEFAULT NULL,
  `aYear` int(6) DEFAULT NULL,
  `Capacidad` int(11) DEFAULT NULL,
  `Barritas` int(11) DEFAULT NULL,
  `BombaAire` int(11) DEFAULT NULL,
  `Camara` int(11) DEFAULT NULL,
  `Desmontables` int(11) DEFAULT NULL,
  `Manguitos` int(11) DEFAULT NULL,
  `Chaleco` int(11) DEFAULT NULL,
  `CuentakilometrosGPS` int(11) DEFAULT NULL,
  `Candado` int(11) DEFAULT NULL,
  `Casco` int(11) DEFAULT NULL,
  `Guantes` int(11) DEFAULT NULL
-- `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

--
-- Datos
--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblreservas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblmarcas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactoinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblreservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblmarcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblcontactusquery`
ALTER TABLE `tblvehiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
