-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2016 at 09:38 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roshanp_b`
--

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `Id` int(11) NOT NULL,
  `Passenger_Name` varchar(50) NOT NULL,
  `Seat_No` varchar(5) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `Bus_No` varchar(20) NOT NULL,
  `Bus_Category` varchar(10) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`Id`, `Passenger_Name`, `Seat_No`, `Phone`, `Destination`, `Bus_No`, `Bus_Category`, `Date`, `Time`) VALUES
(1, '', '', '', '', '', '', '2016-10-29', '01:41:25'),
(3, 'Sapana Mishra', 'A11', '9860306332', 'Birgunj to Kathmandu', '5595', 'A/C', '2016-10-29', '10:44:10'),
(4, 'Rohan Maharjan', 'A11', '9810310933', 'Kathmandu to Birgunj', '8978', 'Non-A/C', '2016-10-26', '10:26:57'),
(5, 'Saroj Maharjan', 'A3', '9818621893', 'Kathmandu to Birgunj', '9867', 'A/C', '2016-10-26', '10:34:45'),
(7, 'Roshan Posakya', 'A3', '9823000790', 'Birgunj to Kathmandu', '5596', 'A/C', '2016-10-26', '02:31:59'),
(8, 'Rohan Posakya', 'A3', '9823000790', 'Birgunj to Kathmandu', '5596', 'A/C', '2016-10-26', '02:31:59'),
(9, 'Rohan Posakya', 'A3', '9823000790', 'Birgunj to Kathmandu', '5596', 'Non-A/C', '2016-10-26', '02:31:59'),
(10, 'Rohan Maharjan', 'A3', '9823000790', 'Birgunj to Kathmandu', '5596', 'A/C', '2016-10-26', '02:32:51'),
(14, 'Rohan Posakya', 'A3', '9823000790', 'Birgunj to Kathmandu', '5596', 'Non-A/C', '2016-10-29', '10:52:45'),
(15, 'Rohan Posakya', 'A3', '9823000790', 'Birgunj to Kathmandu', '5596', 'Non-A/C', '2016-10-29', '10:52:45'),
(16, 'Rohan Posakya', 'A3', '9823000790', 'Birgunj to Kathmandu', '5596', 'Non-A/C', '2016-10-29', '10:52:45'),
(17, 'Rohan Maharjan', 'A3', '9823000790', 'Birgunj to Kathmandu', '5596', 'A/C', '2016-10-29', '10:53:04'),
(19, 'Rohan Posakya', 'A3', '9823000790', 'Birgunj to Kathmandu', '5596', 'Non-A/C', '2016-10-29', '10:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--

CREATE TABLE `travel` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel`
--

INSERT INTO `travel` (`Id`, `Name`, `Image`, `Type`) VALUES
(1, 'Sapana Travel', '632021.jpg', 1),
(3, 'Sulav Travel', '987775.jpg', 2),
(4, 'Apple Travel', '438215.jpg', 3),
(5, 'Anmol Travel', '128618.gif', 4),
(6, 'Panas Deluxe', '780737.jpg', 5),
(7, 'Jai Ho Deluxe', '828328.jpg', 6),
(8, 'Samar Travel', '870491.jpg', 7),
(9, 'Lijen Deluxe', '621503.gif', 8);

-- --------------------------------------------------------

--
-- Table structure for table `travel_detail`
--

CREATE TABLE `travel_detail` (
  `Id` int(11) NOT NULL,
  `Bus_No` varchar(30) NOT NULL,
  `Driver_No` varchar(30) NOT NULL,
  `Available_Seat` varchar(30) NOT NULL,
  `Destination` varchar(30) NOT NULL,
  `Bus_Category` varchar(30) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_detail`
--

INSERT INTO `travel_detail` (`Id`, `Bus_No`, `Driver_No`, `Available_Seat`, `Destination`, `Bus_Category`, `Date`) VALUES
(1, '5595', '9845189894', '15', 'Birgunj to Kathmandu', 'A/C', '2016-10-26'),
(2, '5596', '9818062462', '20', 'Birgunj to Kathmandu', 'Non-A/C', '2016-10-26'),
(3, '8978', '9861085045', '5', 'Kathmandu to Birgunj', 'Non-A/C', '2016-10-26'),
(4, '9867', '9811106602', '10', 'Kathmandu to Birgunj', 'A/C', '2016-10-26');

-- --------------------------------------------------------

--
-- Table structure for table `travel_type`
--

CREATE TABLE `travel_type` (
  `Id` int(11) NOT NULL,
  `Arrival_Time` time NOT NULL,
  `Departure_Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_type`
--

INSERT INTO `travel_type` (`Id`, `Arrival_Time`, `Departure_Time`) VALUES
(1, '19:30:00', '20:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `type` (`Type`);

--
-- Indexes for table `travel_detail`
--
ALTER TABLE `travel_detail`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `travel_type`
--
ALTER TABLE `travel_type`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `travel`
--
ALTER TABLE `travel`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `travel_detail`
--
ALTER TABLE `travel_detail`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `travel_type`
--
ALTER TABLE `travel_type`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
