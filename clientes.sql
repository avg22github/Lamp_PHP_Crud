-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2019 at 12:22 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `crud`
--

CREATE TABLE `crud` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crud`
--

INSERT INTO `crud` (`id`, `name`, `email`, `phone`, `city`) VALUES
(44, 'Industrias Alfa', 'industriasalfa@gmail.com', '123456789', 'Madrid'),
(45, 'Grupo Beta', 'grupobeta@gmail.com', '987654321', 'Barcelona'),
(46, 'Compañía Gamma', 'companiagamma@gmail.com', '654987321', 'Valencia'),
(47, 'Empresas Delta', 'empresasdelta@gmail.com', '789123654', 'Sevilla'),
(48, 'Grupo Épsilon', 'grupoepsilon@gmail.com', '456321789', 'Málaga'),
(49, 'Corporación Zeta', 'corporacionzeta@gmail.com', '321654987', 'Bilbao'),
(50, 'Inversiones Iota', 'inversionesiota@gmail.com', '159753864', 'Alicante'),
(51, 'Organización Kappa', 'organizacionkappa@gmail.com', '753951468', 'Zaragoza'),
(52, 'Sociedad Lambda', 'sociedadlambda@gmail.com', '369852147', 'Granada'),
(53, 'Grupo Mu', 'grupomu@gmail.com', '258741369', 'Valencia'),
(54, 'Empresa Nú', 'empresanu@gmail.com', '147852369', 'Madrid'),
(55, 'Corporación Xi', 'corporacionxi@gmail.com', '963852741', 'Barcelona'),
(56, 'Ingeniería Ómicron', 'ingenieriaomicron@gmail.com', '789456123', 'Sevilla'),
(57, 'Constructora Pi', 'constructorapi@gmail.com', '321654987', 'Málaga'),
(58, 'Empresas Rho', 'empresasrho@gmail.com', '852963741', 'Bilbao'),
(59, 'Grupo Sigma', 'gruposigma@gmail.com', '456789123', 'Valencia'),
(60, 'Consultora Tau', 'consultoratau@gmail.com', '123456789', 'Alicante'),
(61, 'Comercio Úpsilon', 'comercioupsilon@gmail.com', '987654321', 'Zaragoza'),
(62, 'Servicios Phi', 'serviciosphi@gmail.com', '654987321', 'Granada'),
(63, 'Corporación Chi', 'corporacionchi@gmail.com', '789123654', 'Madrid');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crud`
--
ALTER TABLE `crud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
