-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018 m. Vas 18 d. 15:03
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `awesomepizza`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unitsOrdered` int(11) DEFAULT NULL,
  `size` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deliveryAddress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf16 COLLATE utf16_lithuanian_ci DEFAULT NULL,
  `totalPrice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `unitsOrdered`, `size`, `deliveryAddress`, `city`, `totalPrice`) VALUES
(3, '2018-02-18 09:23:40', NULL, 2, 'big', 'Savanoriu 5', 'Vilnius', 21),
(5, '2018-02-18 09:25:48', NULL, 2, 'medium', 'Gedimino 55-22', 'Vilnius', 21),
(9, '2018-02-18 09:27:19', NULL, 20, 'big', 'Savanoriu 50', 'Kaunas', 50),
(10, '2018-02-18 09:27:41', NULL, 10, 'big', 'Savanoriu 50', 'Kaunas', 50),
(12, '2018-02-18 09:31:00', NULL, 10, 'big', 'Pavilnio 1', 'Vilnius', 92),
(13, '2018-02-18 09:32:34', NULL, 1, 'big', 'Laisves 5', 'Vilnius', 92),
(14, '2018-02-18 09:32:56', NULL, 8, 'big', 'Laisves 50', 'Vilnius', 92),
(15, '2018-02-18 09:33:20', NULL, 2, 'big', 'Kauno 44-68', 'Vilnius', 21),
(16, '2018-02-18 09:33:53', NULL, 12, 'big', 'Savanoriu 80', 'Kaunas', 21),
(17, '2018-02-18 09:34:21', NULL, 2, 'big', 'Savanoriu 1', 'Vilnius', 21),
(21, '2018-02-18 09:41:50', NULL, 7, 'medium', 'Laisves 5', 'Vilnius', 87),
(23, '2018-02-18 09:44:27', NULL, 10, 'medium', 'Savanoriu 5', 'Vilnius', 87),
(25, '2018-02-18 09:45:12', NULL, 1, 'big', 'Antakalnio 1', 'Vilnius', 44),
(27, '2018-02-18 09:45:37', NULL, 5, 'small', 'Antakalnio 1', 'Vilnius', 61),
(28, '2018-02-18 09:46:54', NULL, 3, 'big', 'Savanoriu 10', 'Kaunas', 34),
(30, '2018-02-18 09:47:20', NULL, 6, 'medium', 'Zemaites 8', 'Vilnius', 13),
(31, '2018-02-18 09:47:53', NULL, 2, 'big', 'Antakalnio 1', 'Vilnius', 13),
(32, '2018-02-18 09:48:49', NULL, 4, 'big', 'Vilniaus 44-25', 'Kaunas', 13),
(33, '2018-02-18 09:49:10', NULL, 4, 'medium', 'Laisves 1', 'Vilnius', 93),
(34, '2018-02-18 09:49:31', NULL, 6, 'small', 'Antakalnio 5', 'Vilnius', 37),
(35, '2018-02-18 09:51:22', NULL, 10, 'small', 'Antakalnio 1', 'Vilnius', 37),
(36, '2018-02-18 09:51:44', NULL, 1, 'big', 'Virrsuliskiu 51-33', 'Vilnius', 33),
(37, '2018-02-18 09:52:01', NULL, 1, 'big', 'Laisves 5', 'Vilnius', 72),
(38, '2018-02-18 09:52:22', NULL, 8, 'medium', 'Savanoriu 55', 'Kaunas', 50),
(39, '2018-02-18 09:52:41', NULL, 5, 'medium', 'Kauno 44', 'Vilnius', 26),
(40, '2018-02-18 09:53:11', NULL, 1, 'big', 'Kauno 1', 'Vilnius', 18),
(41, '2018-02-18 09:53:46', NULL, 4, 'big', 'Savanoriu 2', 'Kaunas', 18),
(42, '2018-02-18 09:54:09', NULL, 18, 'big', 'Laisves 5', 'Vilnius', 47),
(43, '2018-02-18 09:54:26', NULL, 5, 'medium', 'Kauno 5', 'Kaunas', 74),
(44, '2018-02-18 09:54:54', NULL, 1, 'big', 'Laisves 5', 'Vilnius', 68),
(45, '2018-02-18 09:57:10', NULL, 5, 'medium', 'Saules 8', 'Vilnius', 55),
(46, '2018-02-18 09:57:23', NULL, 10, 'big', 'Kauno 55', 'Vilnius', 32),
(47, '2018-02-18 09:57:43', NULL, 1, 'small', 'Savanoriu 1', 'Kaunas', 23),
(48, '2018-02-18 09:58:00', NULL, 3, 'medium', 'Saules 5', 'Vilnius', 63),
(49, '2018-02-18 09:58:33', NULL, 10, 'medium', 'Antakalnio 55', 'Vilnius', 21),
(50, '2018-02-18 09:58:53', NULL, 5, 'medium', 'Gedimino 1', 'Vilnius', 51),
(51, '2018-02-18 09:59:09', NULL, 3, 'big', 'Laisves 1', 'Vilnius', 87),
(52, '2018-02-18 09:59:23', NULL, 5, 'big', 'Saules 1', 'Vilnius', 20),
(53, '2018-02-18 10:00:04', NULL, 4, 'medium', 'Laisves 1', 'Kaunas', 34),
(54, '2018-02-18 10:00:19', NULL, 5, 'small', 'Saules 5', 'Vilnius', 57),
(55, '2018-02-18 10:00:52', NULL, 5, 'medium', 'Saules 1', 'Vilnius', 74),
(56, '2018-02-18 10:01:09', NULL, 10, 'small', 'Laisves 3', 'Kaunas', 38),
(57, '2018-02-18 10:01:36', NULL, 1, 'medium', 'Kauno 4', 'Vilnius', 37),
(58, '2018-02-18 10:01:52', NULL, 2, 'medium', 'Kauno 2', 'Vilnius', 32),
(59, '2018-02-18 10:02:09', NULL, 3, 'big', 'Savanoriu 5', 'Kaunas', 60),
(60, '2018-02-18 10:02:26', NULL, 4, 'medium', 'Saules 1', 'Vilnius', 100),
(61, '2018-02-18 10:02:42', NULL, 6, 'big', 'Kauno 1', 'Vilnius', 78),
(62, '2018-02-18 10:02:59', NULL, 7, 'medium', 'Laisves 4', 'Kaunas', 32),
(63, '2018-02-18 10:03:21', NULL, 7, 'medium', 'Saules 4', 'Vilnius', 50),
(64, '2018-02-18 10:03:36', NULL, 8, 'big', 'Laisves 5', 'Kaunas', 90),
(65, '2018-02-18 10:03:53', NULL, 9, 'medium', 'Savanoriu 2', 'Vilnius', 80),
(66, '2018-02-18 10:04:22', NULL, 10, 'big', 'Laisves 50', 'Vilnius', 34);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
