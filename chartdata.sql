-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 08, 2019 at 03:05 AM
-- Server version: 8.0.16
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chartdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `average quarterly generation statistics for the year 2015`
--

CREATE TABLE `average quarterly generation statistics for the year 2015` (
  `id` int(10) UNSIGNED NOT NULL,
  `avr_label` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Q1` int(11) DEFAULT '0',
  `Q2` int(11) DEFAULT '0',
  `Q3` int(11) DEFAULT '0',
  `Q4` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `average quarterly generation statistics for the year 2015`
--

INSERT INTO `average quarterly generation statistics for the year 2015` (`id`, `avr_label`, `Q1`, `Q2`, `Q3`, `Q4`) VALUES
(1, 'Average Available Generation MW', 6262, 6885, 6857, 6455),
(2, 'Average Peak Generation MW', 3848, 3419, 4445, 4311),
(3, 'Average Generation MWH', 3466, 3053, 3939, 3898),
(4, 'Average Constraint due to Gas MW', 1777, 2313, 756, 1325),
(5, 'Average Constraint due to Water MW', 435, 530, 121, 18),
(6, 'Average Constraint due to Load Rejection MW', 23, 55, 1153, 196),
(7, 'Average Constraint due to Transmission MW', 35, 125, 199, 214),
(8, 'Average Total Constrained Generation MW', 1914, 2970, 2202, 1670);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `average quarterly generation statistics for the year 2015`
--
ALTER TABLE `average quarterly generation statistics for the year 2015`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
