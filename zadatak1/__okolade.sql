-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2020 at 10:24 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `čokolade`
--

-- --------------------------------------------------------

--
-- Table structure for table `čokolade`
--

CREATE TABLE `čokolade` (
  `Id` int(11) NOT NULL,
  `Proizvođač` varchar(255) NOT NULL,
  `Vrsta` varchar(255) NOT NULL,
  `Cijena` int(11) NOT NULL,
  `Količina (g)` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `čokolade`
--

INSERT INTO `čokolade` (`Id`, `Proizvođač`, `Vrsta`, `Cijena`, `Količina (g)`) VALUES
(1, 'Dorina', 'Mlijecna', 13, 250),
(2, 'Milka', 'Oreo', 9, 100),
(3, 'Dorina', 'Keks', 13, 220),
(4, 'Dorina', 'Riža', 7, 75),
(5, 'Dorina', 'Lješnjak', 8, 80),
(6, 'Milka', 'Biskvit', 15, 175),
(7, 'Milka', 'Jagoda', 9, 100),
(8, 'Schogetten', 'Mlijecna', 7, 100),
(9, 'Schogetten', 'Bijela', 7, 100),
(10, 'Schogetten', 'Noisette', 7, 100);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
