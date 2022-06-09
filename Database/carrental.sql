-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2022 at 01:18 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `VehicleId` int(11) NOT NULL,
  `CarType` varchar(20) DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `WeeklyRate` decimal(8,2) DEFAULT NULL,
  `DailyRate` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`VehicleId`, `CarType`, `model`, `year`, `WeeklyRate`, `DailyRate`) VALUES
(104, 'VAN', 'Toyota', 1998, '199.99', '19.99'),
(105, 'TRUCK', 'Ford', 2017, '420.00', '33.33'),
(106, 'SUV', 'LEXUS', 2021, '500.00', '40.00'),
(107, 'LARGE', 'Hummer', 2008, '249.99', '24.00'),
(108, 'COMPACT', 'Ford Escort', 2003, '99.99', '9.99'),
(109, 'MEDIUM', 'Ford Explorer', 2007, '89.99', '7.99'),
(110, 'COMPACT', 'BMW', 2022, '999.99', '80.00'),
(111, 'SUV', 'Acura', 2016, '300.00', '30.00'),
(112, 'TRUCK', 'GNC', 2017, '500.00', '66.99'),
(113, 'VAN', 'Mercedes', 2021, '700.00', '60.00'),
(114, 'TRUCK', 'Chevy', 2004, '200.00', '19.99'),
(115, 'COMPACT', 'Toyota Corolla', 2002, '100.00', '16.00'),
(116, 'MEDIUM', 'Toyota Camry', 2007, '150.00', '19.99'),
(117, 'LARGE', 'Tank', 1993, '999.99', '89.99'),
(118, 'COMPACT', 'Lamborghini', 2022, '1500.00', '100.00'),
(119, 'SUV', 'Lexus', 2011, '400.00', '50.00'),
(120, 'MEDIUM', 'Tesla', 2021, '600.00', '50.00'),
(121, 'LARGE', 'Jeep', 2007, '600.00', '45.00'),
(122, 'VAN', 'Honda', 2012, '320.00', '44.00'),
(123, 'COMPACT', 'Kia', 2004, '99.99', '33.33');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `IdNo` int(11) NOT NULL,
  `firstInitial` char(2) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`IdNo`, `firstInitial`, `lastName`, `phone`) VALUES
(67, 'K.', 'Ranjbar', '719-310-5511'),
(68, 'H.', 'Potter', '848-696-7777'),
(69, 'J.', 'Ray', '720-333-6783'),
(70, 'J.', 'Pruitt', '404-278-3609'),
(71, 'A.', 'Alvarez', '719-246-6294'),
(72, 'W.', 'Khalifa', '412-275-8392'),
(73, 'M.', 'Youngblood', '669-409-2684'),
(74, 'W.', 'Allen', '222-839-0010'),
(75, 'E.', 'Watson', '747-123-9876'),
(76, 'F.', 'Yousefzadeh', '999-111-7777');

-- --------------------------------------------------------

--
-- Table structure for table `dailyrental`
--

CREATE TABLE `dailyrental` (
  `RentalId` int(11) DEFAULT NULL,
  `NoOfDays` int(11) DEFAULT NULL,
  `StartDate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rentals`
--

CREATE TABLE `rentals` (
  `RentalId` int(11) NOT NULL,
  `RentalType` varchar(20) DEFAULT NULL,
  `Current_Or_Scheduled` varchar(20) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `IdNo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `weeklyrental`
--

CREATE TABLE `weeklyrental` (
  `RentalId` int(11) DEFAULT NULL,
  `NoOfWeeks` int(11) DEFAULT NULL,
  `StartDate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`VehicleId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`IdNo`);

--
-- Indexes for table `dailyrental`
--
ALTER TABLE `dailyrental`
  ADD KEY `RentalId` (`RentalId`);

--
-- Indexes for table `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`RentalId`),
  ADD KEY `IdNo` (`IdNo`),
  ADD KEY `VehicleId` (`VehicleId`);

--
-- Indexes for table `weeklyrental`
--
ALTER TABLE `weeklyrental`
  ADD KEY `RentalId` (`RentalId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `VehicleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `IdNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `rentals`
--
ALTER TABLE `rentals`
  MODIFY `RentalId` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dailyrental`
--
ALTER TABLE `dailyrental`
  ADD CONSTRAINT `dailyrental_ibfk_1` FOREIGN KEY (`RentalId`) REFERENCES `rentals` (`RentalId`);

--
-- Constraints for table `rentals`
--
ALTER TABLE `rentals`
  ADD CONSTRAINT `rentals_ibfk_1` FOREIGN KEY (`IdNo`) REFERENCES `customer` (`IdNo`),
  ADD CONSTRAINT `rentals_ibfk_2` FOREIGN KEY (`VehicleId`) REFERENCES `car` (`VehicleId`);

--
-- Constraints for table `weeklyrental`
--
ALTER TABLE `weeklyrental`
  ADD CONSTRAINT `weeklyrental_ibfk_1` FOREIGN KEY (`RentalId`) REFERENCES `rentals` (`RentalId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
