-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 30 مارس 2023 الساعة 18:40
-- إصدار الخادم: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comp`
--

-- --------------------------------------------------------

--
-- بنية الجدول `employs`
--

CREATE TABLE `employs` (
  `id_emp` int(100) NOT NULL,
  `name_emp` varchar(100) NOT NULL,
  `mobile` int(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `Age` int(200) NOT NULL,
  `rateb` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `date_hir` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `grades`
--

CREATE TABLE `grades` (
  `name_emp` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL,
  `ratep` varchar(100) NOT NULL,
  `alawa` varchar(100) NOT NULL,
  `amtyaz` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `tarqe`
--

CREATE TABLE `tarqe` (
  `name_emp` varchar(100) NOT NULL,
  `job` varchar(100) NOT NULL,
  `new_job` varchar(100) NOT NULL,
  `comments` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `job` varchar(100) NOT NULL,
  `majal` varchar(200) NOT NULL,
  `moahel` varchar(200) NOT NULL,
  `khbrat` varchar(200) NOT NULL,
  `date_hir` timestamp NOT NULL DEFAULT current_timestamp(),
  `Age` int(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `mobile` int(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `vacations`
--

CREATE TABLE `vacations` (
  `name_emp` varchar(100) NOT NULL,
  `date_vac` date NOT NULL,
  `num_vac` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employs`
--
ALTER TABLE `employs`
  ADD PRIMARY KEY (`id_emp`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employs`
--
ALTER TABLE `employs`
  MODIFY `id_emp` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
