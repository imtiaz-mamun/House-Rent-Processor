-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 30, 2021 at 03:53 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `house_rent_mgt`
--

-- --------------------------------------------------------

--
-- Table structure for table `authorities`
--

CREATE TABLE `authorities` (
  `username` varchar(100) NOT NULL,
  `authority` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authorities`
--

INSERT INTO `authorities` (`username`, `authority`) VALUES
('admin1', 'ROLE_admin'),
('am100', 'ROLE_user'),
('am101', 'ROLE_user'),
('am102', 'ROLE_user'),
('am103', 'ROLE_user'),
('am104', 'ROLE_user'),
('am105', 'ROLE_user'),
('am106', 'ROLE_user'),
('am107', 'ROLE_user'),
('am108', 'ROLE_user'),
('am109', 'ROLE_user');

-- --------------------------------------------------------

--
-- Table structure for table `forecasting`
--

CREATE TABLE `forecasting` (
  `startLocation` varchar(100) NOT NULL,
  `endLocation` varchar(100) NOT NULL,
  `forecasting` double NOT NULL,
  `forecastingHour` int(10) NOT NULL,
  `forecastingMin` int(10) NOT NULL,
  `forcasting_date` date NOT NULL DEFAULT '2017-01-08'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forecasting`
--

INSERT INTO `forecasting` (`startLocation`, `endLocation`, `forecasting`, `forecastingHour`, `forecastingMin`, `forcasting_date`) VALUES
('Bata Signal Bus Stop', 'Muhammadpur Bus Stand', 0.4, 10, 5, '2017-01-08'),
('Bata Signal Bus Stop', 'Muhammadpur Bus Stand', 0.3, 10, 20, '2017-01-08'),
('Bata Signal Bus Stop', 'Muhammadpur Bus Stand', 0.2, 12, 20, '2017-01-08'),
('Dhanmondi 27 No Bus Stop', 'Bata Signal Bus Stop', 0.25, 10, 30, '2017-01-08'),
('Dhanmondi 27 No Bus Stop', 'Bata Signal Bus Stop', 0.35, 12, 30, '2017-01-08'),
('Jigatala Bus Stand, Satmasjid Road', 'Bata Signal Bus Stop', 0.45, 10, 40, '2017-01-08'),
('Jigatala Bus Stand, Satmasjid Road', 'Bata Signal Bus Stop', 0.45, 12, 40, '2017-01-08'),
('Muhammadpur Bus Stand', 'Bata Signal Bus Stop', 0.4, 6, 15, '2017-01-08'),
('Muhammadpur Bus Stand', 'Bata Signal Bus Stop', 0.2, 10, 50, '2017-01-08'),
('Muhammadpur Bus Stand', 'Bata Signal Bus Stop', 0.4, 11, 50, '2017-01-08'),
('Muhammadpur Bus Stand', 'Bata Signal Bus Stop', 0.4, 12, 50, '2017-01-08'),
('Muhammadpur Bus Stand', 'Dhanmondi 27 No Bus Stop, Mirpur Rd', 0.3, 10, 51, '2017-01-08'),
('Muhammadpur Bus Stand', 'Dhanmondi 27 No Bus Stop, Mirpur Rd', 0.2, 11, 51, '2017-01-08'),
('Muhammadpur Bus Stand', 'Dhanmondi 27 No Bus Stop, Mirpur Rd', 0.2, 12, 51, '2017-01-08'),
('Muhammadpur Bus Stand', 'Jigatala Bus Stand, Satmasjid Road', 0.35, 11, 0, '2017-01-08'),
('Muhammadpur Bus Stand', 'Jigatala Bus Stand, Satmasjid Road', 0.55, 11, 9, '2017-01-08'),
('Muhammadpur Bus Stand', 'Jigatala Bus Stand, Satmasjid Road', 0.55, 12, 0, '2017-01-08'),
('Muhammadpur Bus Stand', 'Shahbag Bus Stand', 0.35, 12, 10, '2017-01-08');

-- --------------------------------------------------------

--
-- Table structure for table `location_info`
--

CREATE TABLE `location_info` (
  `id` int(11) NOT NULL,
  `Latitude_x` double NOT NULL,
  `Longitude_y` double NOT NULL,
  `location_name` varchar(100) NOT NULL,
  `rent` text NOT NULL DEFAULT '40k per month'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_info`
--

INSERT INTO `location_info` (`id`, `Latitude_x`, `Longitude_y`, `location_name`, `rent`) VALUES
(1, 23.757631, 90.362401, 'Muhammadpur Bus Stand', '40k per month'),
(2, 23.739332, 90.375359, 'Jigatala Bus Stand, Satmasjid Road', '40k per month'),
(3, 23.739449, 90.383041, 'City College Bus Stop', '40k per month'),
(4, 23.739076, 90.388663, 'Bata Signal Bus Stop', '40k per month'),
(5, 23.738782, 90.391495, 'Kataban Bus Stand', '40k per month'),
(6, 23.739253, 90.395808, 'Shahbagh Bus Stop', '40k per month'),
(7, 23.759601, 90.366247, 'Mohammadpur Town Hall', '40k per month'),
(8, 23.760347, 90.372698, 'Asad Gate Bus Stand', '40k per month'),
(9, 23.758285, 90.373921, 'Aarong, Asad Gate Branch', '40k per month'),
(10, 23.752825, 90.374823, 'Dhanmondi 27 No Bus Stop, Mirpur Rd', '40k per month'),
(11, 23.751637, 90.377848, 'Dhanmondi 32 Bus Stop', '40k per month'),
(12, 23.747542, 90.380509, 'Kalabagan East Bus Stop', '40k per month'),
(13, 23.758452, 90.382998, 'Khamarbari Bus Stand', '40k per month'),
(14, 23.758884, 90.383545, 'Khejur Bagan Bus Stop', '40k per month'),
(15, 23.750832, 90.388749, 'Basnhundhara City North Bus Stop', '40k per month'),
(16, 12.12, 22.22, 'Random', '40k per month');

-- --------------------------------------------------------

--
-- Table structure for table `route_info`
--

CREATE TABLE `route_info` (
  `username` varchar(100) NOT NULL,
  `start_location` varchar(100) NOT NULL,
  `end_location` varchar(100) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `date` date NOT NULL,
  `distance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route_info`
--

INSERT INTO `route_info` (`username`, `start_location`, `end_location`, `start_time`, `end_time`, `date`, `distance`) VALUES
('am00', 'Muhammadpur Bus Stand', 'City College Bus Stop', '05:00:10', '06:00:10', '2017-01-01', 1.6),
('am00', 'Jigatala Bus Stand, Satmasjid Road', 'Muhammadpur Bus Stand', '05:17:12', '06:20:17', '2017-01-01', 1.6),
('am00', 'City College Bus Stop', 'Kataban Bus Stand', '06:16:10', '06:43:10', '2017-01-02', 1.1),
('am00', 'Bata Signal Bus Stop', 'City College Bus Stop', '07:13:32', '07:30:06', '2017-01-02', 1.1),
('am01', 'Kataban Bus Stand', 'Dhanmondi 32 Bus Stop', '03:07:10', '03:38:10', '2017-01-01', 1.4),
('am01', 'Shahbagh Bus Stop', 'Khamarbari Bus Stand', '05:12:05', '05:50:06', '2017-01-02', 1.3),
('am01', 'Dhanmondi 32 Bus Stop', 'Muhammadpur Bus Stand', '05:20:05', '05:50:06', '2017-01-01', 1.4),
('am01', 'Khamarbari Bus Stand', 'Shahbagh Bus Stop', '11:00:10', '11:54:10', '2017-01-02', 1.3),
('am02', 'Dhanmondi 32 Bus Stop', 'Shahbagh Bus Stop', '07:00:34', '08:24:06', '2017-01-02', 1.5),
('am02', 'Khamarbari Bus Stand', 'Dhanmondi 32 Bus Stop', '08:20:10', '08:50:10', '2017-01-02', 1.5),
('am02', 'Basnhundhara City North Bus Stop', 'Muhammadpur Bus Stand', '12:00:05', '12:29:06', '2017-01-01', 1.2),
('am02', 'Muhammadpur Bus Stand', 'Basnhundhara City North Bus Stop', '12:32:10', '12:54:10', '2017-01-01', 1.2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `enabled`) VALUES
('admin1', '1234', 1),
('am100', '1234', 1),
('am101', '1234', 1),
('am102', '1234', 1),
('am103', '1234', 1),
('am104', '1234', 1),
('am105', '1234', 1),
('am106', '1234', 1),
('am107', '1234', 1),
('am108', '1234', 1),
('am109', '1234', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `forecasting`
--
ALTER TABLE `forecasting`
  ADD PRIMARY KEY (`startLocation`,`endLocation`,`forecastingHour`,`forecastingMin`);

--
-- Indexes for table `location_info`
--
ALTER TABLE `location_info`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
