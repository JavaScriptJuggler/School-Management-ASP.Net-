-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2021 at 05:48 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `storage`
--
CREATE DATABASE IF NOT EXISTS `Storage` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `Storage`;

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `id` varchar(5) NOT NULL,
  `ps` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `ps`) VALUES
('ad123', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bn` varchar(1000) NOT NULL,
  `stat` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bn`, `stat`) VALUES
('book 1', 'Not Available'),
('book 2', 'Not Available'),
('\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `data_table`
--

CREATE TABLE `data_table` (
  `name` varchar(100) NOT NULL,
  `batch` varchar(100) NOT NULL,
  `roll` varchar(20) NOT NULL,
  `lib` varchar(10) NOT NULL,
  `trans` varchar(10) NOT NULL,
  `father` varchar(30) NOT NULL,
  `mother` varchar(30) NOT NULL,
  `occu` varchar(100) NOT NULL,
  `addr` varchar(100) NOT NULL,
  `phn` varchar(10) NOT NULL,
  `po` varchar(100) NOT NULL,
  `ps` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_table`
--

INSERT INTO `data_table` (`name`, `batch`, `roll`, `lib`, `trans`, `father`, `mother`, `occu`, `addr`, `phn`, `po`, `ps`, `zip`) VALUES
('Soumya Manna', 'CACPA', '1', 'Yes', 'Yes', 'm.Manna', 'S.manna', 'Service', '102, Agarpara,Elias road', '7450892149', 'kamarhati', 'Khardah', '700058'),
('Biswajit Paul', 'CACPA', '1234', 'Yes', 'No', 'Alok Paul', 'Abc Paul', 'Business', 'agarpara', '5467809874', 'kamarha', 'khardah', '700057');

-- --------------------------------------------------------

--
-- Table structure for table `lib`
--

CREATE TABLE `lib` (
  `cno` varchar(100) NOT NULL,
  `sn` varchar(100) NOT NULL,
  `roll` varchar(100) NOT NULL,
  `book_nm` varchar(1000) NOT NULL,
  `date` varchar(100) NOT NULL,
  `stat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lib`
--

INSERT INTO `lib` (`cno`, `sn`, `roll`, `book_nm`, `date`, `stat`) VALUES
('CACPA.LC 7164', 'Soumya Manna', '1', 'book 2', '06 Mar 2021', 'Pending'),
('CACPA.LC 8121', 'Biswajit Paul', '1234', 'book 1', '06 Mar 2021', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `sl` bigint(20) UNSIGNED NOT NULL,
  `notice` varchar(3000) NOT NULL,
  `date` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`sl`, `notice`, `date`) VALUES
(5, 'will be available soon', '06 Mar 2021'),
(9, 'Hello World', '06 Mar 2021'),
(11, 'Hii ASP', '06 Mar 2021'),
(12, 'Hiii', '06 Mar 2021'),
(13, 'My notice', '06 Mar 2021');

-- --------------------------------------------------------

--
-- Table structure for table `trans`
--

CREATE TABLE `trans` (
  `tno` varchar(100) NOT NULL,
  `sn` varchar(100) NOT NULL,
  `roll` varchar(100) NOT NULL,
  `date` varchar(10) NOT NULL,
  `fees` varchar(100) NOT NULL,
  `stat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trans`
--

INSERT INTO `trans` (`tno`, `sn`, `roll`, `date`, `fees`, `stat`) VALUES
('CACPA.TC 7164', 'Soumya Manna', '1', '05 Mar 202', '2500', 'Paid');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_table`
--
ALTER TABLE `data_table`
  ADD PRIMARY KEY (`roll`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD UNIQUE KEY `sl` (`sl`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `sl` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
