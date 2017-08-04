-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 06, 2016 at 07:41 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donor`
--
CREATE DATABASE IF NOT EXISTS `donor` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `donor`;

-- --------------------------------------------------------

--
-- Table structure for table `a`
--

CREATE TABLE `a` (
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `a`
--

INSERT INTO `a` (`date`) VALUES
('2016-01-05'),
('2016-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `name` varchar(200) NOT NULL,
  `user_id` varchar(500) NOT NULL,
  `password` text NOT NULL,
  `phone` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `address` mediumtext NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `country` text NOT NULL,
  `pincode` int(11) NOT NULL,
  `blood` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`name`, `user_id`, `password`, `phone`, `dob`, `address`, `city`, `state`, `country`, `pincode`, `blood`) VALUES
('', '', '', '', '0000-00-00', '', '', '', '', 0, ''),
('a', 'a', 'a', '1', '2000-10-23', 'A', 'Nirman Vihar', 'Delhi', 'India', 135, 'A-'),
('Aakash', 'a', 'a', '8529', '2009-04-20', '1695 did', 'Nirman Vihar', 'Delhi', 'India', 1532, 'A-'),
('a', 'a1', 'a', '1', '2000-10-23', 'A', 'Nirman Vihar', 'Delhi', 'India', 135, 'A-'),
('a', 'aa', '1', '1', '2016-10-23', 'Ashe', 'Laxmi Nagar', 'Delhi', 'India', 14, 'A '),
('SUSHANT Bansal', 'sh125', 'password', '8529607664', '2005-05-22', '1685', 'Inderpuri', 'Delhi NCR', 'USA', 13, 'A-');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` varchar(500) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `phone`, `password`) VALUES
('', '', ''),
('a', '1', 'a'),
('a', '8529', 'a'),
('a1', '1', 'a'),
('aa', '1', '1'),
('sh125', '8529607664', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `sh125`
--

CREATE TABLE `sh125` (
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sh125`
--

INSERT INTO `sh125` (`date`) VALUES
('0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `a`
--
ALTER TABLE `a`
  ADD PRIMARY KEY (`date`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`user_id`,`phone`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`,`phone`);

--
-- Indexes for table `sh125`
--
ALTER TABLE `sh125`
  ADD PRIMARY KEY (`date`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
