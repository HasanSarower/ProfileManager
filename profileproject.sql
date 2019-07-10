-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2019 at 11:03 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `profileproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `version` bigint(20) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `date_created` datetime NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `identity_hash` varchar(255) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `identity_hash_last_update` bigint(20) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `version`, `phone`, `address`, `is_active`, `date_created`, `first_name`, `identity_hash`, `last_updated`, `password`, `user_type`, `identity_hash_last_update`, `last_name`, `date_of_birth`, `email`) VALUES
(2, 0, 1757049684, 'sfdfsd', b'1111111111111111111111111111111', '2019-07-10 08:51:44', 'System', NULL, '2019-07-10 08:51:44', '21232f297a57a5a743894a0e4a801fc3', 'ADMINISTRATOR', NULL, 'Administrator', 'sdfsf', 'admin@localhost.local'),
(3, 0, 1938400782, 'fbjshdfjhsdbf', b'1111111111111111111111111111111', '2019-07-10 08:54:46', 'Hasan', NULL, '2019-07-10 08:54:46', '81dc9bdb52d04dc20036dbd8313ed055', 'REGULAR_USER', NULL, 'Sarower', '3/10/1995', 'abc@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
