-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2017 at 08:42 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pis`
--

-- --------------------------------------------------------

--
-- Table structure for table `dept_info`
--

CREATE TABLE `dept_info` (
  `id` int(50) NOT NULL,
  `Dept_no` int(50) NOT NULL,
  `Dept_name` varchar(15) NOT NULL,
  `Group_officer` varchar(50) NOT NULL,
  `Divisiion_officer` varchar(50) NOT NULL,
  `Technical_officer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_info`
--

CREATE TABLE `emp_info` (
  `IC_no` int(50) NOT NULL,
  `PIS_no` varchar(50) NOT NULL,
  `First_name` varchar(15) NOT NULL,
  `Last_name` varchar(15) NOT NULL,
  `Date_of_birth` date NOT NULL,
  `Date_of_joining_DRDO` date NOT NULL,
  `Date_of_joining_SSPL` date NOT NULL,
  `Category` varchar(15) NOT NULL,
  `Dept_officer_incharge` varchar(15) NOT NULL,
  `Dept_no` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dept_info`
--
ALTER TABLE `dept_info`
  ADD PRIMARY KEY (`Dept_no`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `emp_info`
--
ALTER TABLE `emp_info`
  ADD PRIMARY KEY (`IC_no`),
  ADD KEY `Dept_no` (`Dept_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dept_info`
--
ALTER TABLE `dept_info`
  ADD CONSTRAINT `dept_info_ibfk_1` FOREIGN KEY (`id`) REFERENCES `emp_info` (`IC_no`),
  ADD CONSTRAINT `dept_info_ibfk_2` FOREIGN KEY (`Dept_no`) REFERENCES `emp_info` (`Dept_no`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
