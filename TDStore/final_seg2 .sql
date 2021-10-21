-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2021 at 04:38 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

-- SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
-- START TRANSACTION;
-- SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_seg2`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `id_provider` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `type` varchar(30) NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `phone` varchar(30) NOT NULL,
  `addr` text NOT NULL,
  `dob` date NOT NULL,
  `role` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `img` text DEFAULT NULL
);

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phone`, `addr`, `dob`, `role`, `date_created`, `img`) VALUES
(1, 'Quang     ', 'quangdo2000@gmail.com', '$2y$10$ouww5p0zk5m4WFPwrFX6AuWGhzQdiJPLLotsS7eUMPRjpRTe4aBp.', '0903092648', '1014/32 CMT8, W5, TB District', '2021-10-20', 3, '2021-10-11 13:01:13', NULL),
(2, 'Khanh', 'khanhdo@gmail.com', '$2y$10$EfHx78QE4NmEfHt4UyfmNelW.N607r/YRQckAtSBHGoRYjPZrTYDu', '', '', '0000-00-00', 3, '2021-10-11 13:04:42', NULL),
(3, 'Luyen 2', 'luyenga@gmail.com', '$2y$10$MOG5wHPluSc5HJHRYakU7ODqUv.N5GJVFsCxJGjUUfo4Lmls8ufOi', '0903092648', '1014/32 CMT8, W5, TB District', '2021-10-20', 3, '2021-10-20 20:28:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`,`id_provider`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
