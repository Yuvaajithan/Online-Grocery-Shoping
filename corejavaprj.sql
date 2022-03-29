-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2022 at 01:51 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `corejavaprj`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkuser` (IN `em` VARCHAR(300), IN `pd` VARCHAR(10), OUT `ct` INT)  select count(*) into ct from users where email_id=em and pwd=pd$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `addcart`
--

CREATE TABLE `addcart` (
  `prid` int(11) NOT NULL,
  `pnm` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `prid` int(11) NOT NULL,
  `pnm` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`prid`, `pnm`, `price`, `qty`, `email_id`) VALUES
(42, 'jeera', 250, 2, 'yuva@gmail.com'),
(43, 'jeera', 250, 2, 'yuva@gmail.com'),
(44, 'rice', 189, 2, 'yuva@gmail.com'),
(45, 'rice', 189, 2, 'yuva@gmail.com'),
(46, 'jeera', 250, 2, 'yuva@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `crid` int(11) NOT NULL,
  `crnm` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`crid`, `crnm`, `price`, `duration`) VALUES
(101, 'hadoop', 10000, 6),
(102, 'word', 10000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prid` int(11) NOT NULL,
  `pnm` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `manufactuer` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prid`, `pnm`, `qty`, `price`, `manufactuer`, `pic`) VALUES
(2, 'Rice', '2', 189, 'Annapoorna  Good QualityOne Kg', 'rice.jpg'),
(4, 'Cauliflower', '12', 78, 'Good Quality\r\n!2kg \r\n', 'cauliflower.jpg'),
(5, 'jeera', '2', 250, '400gm\r\nGood Quality', 'jeera.jpg'),
(6, 'Onion', '3', 1000, 'Sun Farm\r\n2 kg\r\nGood Quality', 'onion.jpg'),
(25, 'Carrot', '3', 23, 'Good Quality', 'carrot.jpg'),
(26, 'Olive', '3', 300, 'Good Quality\r\n300ml', 'olive.jpg'),
(27, 'Sugar Free', '4', 120, 'Good Quality', 'sugarfree.jpg'),
(28, 'Honey', '34', 400, 'Good Taste', 'honey.jpg'),
(29, 'Equal', '2', 333, 'Equal Inc', 'equal.jpg'),
(30, 'Turmeric', '34', 200, 'Good Quality', 'turmeric.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stid` int(11) NOT NULL,
  `stnm` varchar(100) NOT NULL,
  `crid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stid`, `stnm`, `crid`) VALUES
(1, 'jack', 101),
(2, 'william', 102),
(3, 'adam', 103),
(4, 'suman', 104);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email_id` varchar(200) NOT NULL,
  `pwd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email_id`, `pwd`) VALUES
('yuva@gmail.com', '1234'),
('admin@gmail.com', '2345'),
('ajith@gmail.com', '7890'),
('keerthana@gmail.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcart`
--
ALTER TABLE `addcart`
  ADD PRIMARY KEY (`prid`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`prid`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`crid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `prid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
