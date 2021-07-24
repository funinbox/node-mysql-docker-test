-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 22, 2021 at 07:08 PM
-- Server version: 8.0.25-0ubuntu0.20.04.1
-- PHP Version: 7.1.33-39+ubuntu20.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learn-node`
--

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int NOT NULL,
  `os` json NOT NULL,
  `client_app` json NOT NULL,
  `device` json NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `os`, `client_app`, `device`) VALUES
(1, '{\"name\": \"GNU/Linux\", \"family\": \"GNU/Linux\", \"version\": \"\", \"platform\": \"x64\", \"short_name\": \"LIN\"}', '{\"name\": \"Chrome\", \"type\": \"browser\", \"engine\": \"Blink\", \"family\": \"Chrome\", \"version\": \"91.0.4472.164\", \"short_name\": \"CH\", \"engine_version\": \"\"}', '{\"id\": \"\", \"type\": \"desktop\", \"brand\": \"\", \"model\": \"\"}'),
(2, '{\"name\": \"GNU/Linux\", \"family\": \"GNU/Linux\", \"version\": \"\", \"platform\": \"x64\", \"short_name\": \"LIN\"}', '{\"name\": \"Chrome\", \"type\": \"browser\", \"engine\": \"Blink\", \"family\": \"Chrome\", \"version\": \"91.0.4472.164\", \"short_name\": \"CH\", \"engine_version\": \"\"}', '{\"id\": \"\", \"type\": \"desktop\", \"brand\": \"\", \"model\": \"\"}'),
(3, '{\"name\": \"GNU/Linux\", \"family\": \"GNU/Linux\", \"version\": \"\", \"platform\": \"x64\", \"short_name\": \"LIN\"}', '{\"name\": \"Chrome\", \"type\": \"browser\", \"engine\": \"Blink\", \"family\": \"Chrome\", \"version\": \"91.0.4472.164\", \"short_name\": \"CH\", \"engine_version\": \"\"}', '{\"id\": \"\", \"type\": \"desktop\", \"brand\": \"\", \"model\": \"\"}'),
(4, '{\"name\": \"GNU/Linux\", \"family\": \"GNU/Linux\", \"version\": \"\", \"platform\": \"x64\", \"short_name\": \"LIN\"}', '{\"name\": \"Chrome\", \"type\": \"browser\", \"engine\": \"Blink\", \"family\": \"Chrome\", \"version\": \"91.0.4472.164\", \"short_name\": \"CH\", \"engine_version\": \"\"}', '{\"id\": \"\", \"type\": \"desktop\", \"brand\": \"\", \"model\": \"\"}'),
(5, '{\"name\": \"GNU/Linux\", \"family\": \"GNU/Linux\", \"version\": \"\", \"platform\": \"x64\", \"short_name\": \"LIN\"}', '{\"name\": \"Chrome\", \"type\": \"browser\", \"engine\": \"Blink\", \"family\": \"Chrome\", \"version\": \"91.0.4472.164\", \"short_name\": \"CH\", \"engine_version\": \"\"}', '{\"id\": \"\", \"type\": \"desktop\", \"brand\": \"\", \"model\": \"\"}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
