-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2024 at 09:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `basket`
--

CREATE TABLE `basket` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `etat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `basket`
--

INSERT INTO `basket` (`id`, `client_id`, `date`, `etat`) VALUES
(1, 13, '2023-03-03 12:44:17', 'CANCELLED'),
(2, 17, '2016-08-18 11:06:17', 'CANCELLED'),
(3, 3, '2023-10-19 20:15:17', 'CANCELLED'),
(4, 2, '2024-01-02 21:31:17', 'CANCELLED'),
(5, 24, '2022-07-01 03:56:17', 'CANCELLED'),
(6, 13, '2018-01-27 16:39:17', 'CANCELLED'),
(7, 9, '2020-01-09 08:30:17', 'SHIPPED'),
(8, 22, '2018-10-26 13:02:17', 'CANCELLED'),
(9, 8, '2014-08-29 09:15:17', 'CANCELLED'),
(10, 13, '2015-12-18 10:27:17', 'PAID'),
(11, 4, '2021-03-05 00:08:17', 'CANCELLED'),
(12, 11, '2017-05-08 01:23:17', 'CANCELLED'),
(13, 21, '2021-09-02 19:22:17', 'CANCELLED'),
(14, 9, '2016-03-15 18:39:17', 'CANCELLED'),
(15, 8, '2021-12-12 20:53:17', 'PAID'),
(16, 6, '2021-12-15 14:16:17', 'CANCELLED'),
(17, 16, '2023-10-04 04:22:17', 'CANCELLED'),
(18, 8, '2019-06-03 20:04:17', 'CANCELLED'),
(19, 1, '2018-04-15 00:47:17', 'CANCELLED'),
(20, 22, '2020-08-05 18:52:17', 'CANCELLED'),
(21, 23, '2018-01-22 15:14:17', 'SHIPPED'),
(22, 5, '2018-11-28 21:05:17', 'PAID'),
(23, 22, '2020-08-31 01:35:17', 'CANCELLED'),
(24, 11, '2020-09-24 00:34:17', 'SHIPPED'),
(25, 2, '2022-03-11 20:56:17', 'CANCELLED'),
(26, 14, '2015-08-07 13:33:17', 'CANCELLED'),
(27, 24, '2016-12-30 08:59:17', 'CANCELLED'),
(28, 18, '2017-07-16 01:33:17', 'PAID'),
(29, 22, '2021-09-03 10:00:17', 'SHIPPED'),
(30, 15, '2018-04-09 09:16:17', 'CANCELLED'),
(31, 22, '2018-06-26 02:30:17', 'PAID'),
(32, 20, '2022-08-29 11:37:17', 'CANCELLED'),
(33, 22, '2020-02-17 13:12:17', 'CANCELLED'),
(34, 14, '2018-07-14 15:48:17', 'CANCELLED'),
(35, 24, '2021-06-27 11:48:17', 'CANCELLED'),
(36, 23, '2021-05-13 10:09:17', 'CANCELLED'),
(37, 5, '2018-04-05 14:46:17', 'PAID'),
(38, 19, '2023-09-06 18:35:17', 'SHIPPED'),
(39, 3, '2023-01-06 15:15:17', 'PAID'),
(40, 15, '2016-11-15 22:46:17', 'CANCELLED'),
(41, 20, '2015-01-21 10:38:17', 'PAID'),
(42, 8, '2020-05-18 14:11:17', 'CANCELLED'),
(43, 1, '2016-12-31 20:36:17', 'CANCELLED'),
(44, 15, '2020-04-16 08:32:17', 'CANCELLED'),
(45, 7, '2023-09-06 16:43:17', 'PAID'),
(46, 8, '2024-02-01 21:43:17', 'CANCELLED'),
(47, 17, '2018-12-16 13:38:17', 'PAID'),
(48, 19, '2017-01-14 00:02:17', 'PAID'),
(49, 8, '2022-09-08 13:52:17', 'SHIPPED'),
(50, 2, '2017-01-18 09:58:17', 'CANCELLED'),
(51, 4, '2021-05-05 06:44:17', 'SHIPPED'),
(52, 13, '2015-10-16 14:29:17', 'PAID'),
(53, 6, '2015-06-18 18:48:17', 'CANCELLED'),
(54, 17, '2017-08-29 00:53:17', 'CANCELLED'),
(55, 22, '2016-10-21 08:12:17', 'PAID'),
(56, 4, '2020-03-27 01:36:17', 'CANCELLED'),
(57, 4, '2019-12-12 21:39:17', 'PAID'),
(58, 24, '2016-11-22 20:27:17', 'CANCELLED'),
(59, 8, '2023-09-09 01:29:17', 'SHIPPED'),
(60, 24, '2018-04-24 12:36:17', 'SHIPPED'),
(61, 20, '2015-05-24 15:39:17', 'CANCELLED'),
(62, 15, '2022-07-24 12:33:17', 'SHIPPED'),
(63, 17, '2021-01-28 07:28:17', 'CANCELLED'),
(64, 18, '2022-11-25 18:24:17', 'PAID'),
(65, 19, '2016-07-07 23:20:17', 'CANCELLED'),
(66, 19, '2022-11-19 04:11:17', 'CANCELLED'),
(67, 11, '2020-06-03 21:47:17', 'CANCELLED'),
(68, 14, '2017-07-18 08:22:17', 'CANCELLED'),
(69, 19, '2017-02-03 11:59:17', 'CANCELLED'),
(70, 17, '2019-11-20 14:22:17', 'CANCELLED'),
(71, 6, '2020-11-10 20:25:17', 'CANCELLED'),
(72, 11, '2017-07-12 14:08:17', 'PAID'),
(73, 6, '2023-05-30 20:18:17', 'CANCELLED'),
(74, 15, '2021-01-13 06:20:17', 'CANCELLED'),
(75, 23, '2014-09-15 13:09:17', 'PAID'),
(76, 12, '2014-07-20 01:27:17', 'SHIPPED'),
(77, 5, '2022-03-10 03:27:17', 'CANCELLED'),
(78, 14, '2018-01-12 04:44:17', 'CANCELLED'),
(79, 16, '2016-04-27 01:23:17', 'SHIPPED'),
(80, 22, '2015-10-28 04:44:17', 'CANCELLED'),
(81, 13, '2014-07-06 10:34:17', 'CANCELLED'),
(82, 5, '2022-01-11 15:51:17', 'PAID'),
(83, 17, '2016-05-10 23:30:17', 'CANCELLED'),
(84, 10, '2014-07-09 05:14:17', 'SHIPPED'),
(85, 5, '2020-07-10 18:18:17', 'PAID'),
(86, 6, '2016-06-21 15:01:17', 'CANCELLED'),
(87, 12, '2014-05-25 10:48:17', 'SHIPPED'),
(88, 2, '2020-08-05 20:45:17', 'CANCELLED'),
(89, 12, '2022-07-12 07:24:17', 'CANCELLED'),
(90, 1, '2016-05-27 02:46:17', 'CANCELLED'),
(91, 4, '2021-11-11 22:18:17', 'CANCELLED'),
(92, 2, '2014-06-02 22:32:17', 'CANCELLED'),
(93, 21, '2023-02-19 11:38:17', 'SHIPPED'),
(94, 13, '2018-07-30 02:38:17', 'CANCELLED'),
(95, 13, '2023-03-03 10:29:17', 'CANCELLED'),
(96, 9, '2016-08-19 00:03:17', 'PAID'),
(97, 5, '2020-03-17 03:36:17', 'PAID'),
(98, 7, '2018-01-29 05:42:17', 'CANCELLED'),
(99, 11, '2020-04-13 11:47:17', 'CANCELLED'),
(100, 13, '2024-01-28 22:50:17', 'SHIPPED');

-- --------------------------------------------------------

--
-- Table structure for table `basket_product`
--

CREATE TABLE `basket_product` (
  `commande_id` int(11) NOT NULL,
  `produit_id` int(11) NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `basket_product`
--

INSERT INTO `basket_product` (`commande_id`, `produit_id`, `quantite`) VALUES
(1, 28, 4),
(1, 35, 5),
(1, 153, 5),
(1, 161, 1),
(1, 165, 1),
(2, 35, 5),
(2, 90, 1),
(2, 157, 5),
(2, 170, 2),
(2, 175, 2),
(3, 92, 2),
(3, 155, 4),
(3, 162, 5),
(3, 169, 1),
(3, 179, 2),
(3, 198, 5),
(4, 12, 1),
(4, 13, 1),
(4, 25, 3),
(4, 62, 3),
(4, 71, 4),
(4, 119, 5),
(5, 3, 5),
(5, 116, 4),
(5, 141, 2),
(5, 144, 3),
(5, 149, 3),
(6, 90, 1),
(6, 118, 4),
(7, 22, 2),
(7, 172, 1),
(8, 2, 5),
(8, 100, 2),
(8, 120, 4),
(8, 124, 5),
(8, 147, 3),
(9, 69, 3),
(9, 93, 1),
(9, 150, 3),
(10, 15, 1),
(10, 65, 2),
(10, 162, 4),
(11, 103, 2),
(11, 135, 1),
(12, 22, 2),
(12, 30, 3),
(12, 75, 3),
(12, 94, 1),
(12, 119, 4),
(12, 131, 5),
(13, 33, 3),
(13, 99, 1),
(13, 191, 2),
(14, 36, 3),
(14, 133, 5),
(14, 157, 3),
(15, 65, 1),
(15, 96, 5),
(15, 136, 5),
(15, 168, 4),
(16, 31, 2),
(16, 35, 2),
(16, 84, 4),
(16, 169, 4),
(17, 112, 2),
(17, 120, 3),
(18, 14, 5),
(18, 193, 2),
(19, 94, 4),
(19, 165, 3),
(20, 2, 3),
(20, 113, 2),
(20, 191, 1),
(21, 11, 4),
(21, 76, 2),
(21, 92, 4),
(21, 159, 2),
(22, 128, 3),
(22, 166, 3),
(23, 8, 3),
(23, 125, 3),
(23, 198, 2),
(24, 7, 3),
(24, 29, 1),
(24, 83, 2),
(24, 89, 3),
(24, 94, 4),
(24, 157, 2),
(24, 179, 4),
(24, 181, 5),
(25, 27, 5),
(25, 73, 1),
(25, 80, 2),
(25, 161, 2),
(25, 198, 1),
(26, 198, 1),
(27, 106, 5),
(28, 35, 1),
(28, 116, 1),
(28, 194, 1),
(29, 1, 1),
(29, 21, 4),
(29, 128, 2),
(29, 146, 4),
(29, 147, 5),
(29, 158, 1),
(29, 183, 4),
(30, 11, 2),
(30, 14, 3),
(30, 19, 3),
(30, 184, 4),
(31, 2, 1),
(32, 11, 2),
(32, 75, 5),
(32, 89, 2),
(32, 171, 2),
(33, 128, 2),
(33, 189, 4),
(34, 196, 5),
(35, 118, 5),
(35, 179, 3),
(35, 194, 4),
(36, 38, 5),
(36, 172, 2),
(37, 33, 4),
(37, 165, 1),
(37, 186, 3),
(38, 89, 1),
(38, 93, 1),
(38, 137, 2),
(38, 143, 3),
(38, 161, 5),
(38, 186, 3),
(38, 193, 4),
(39, 27, 3),
(39, 176, 2),
(40, 13, 1),
(40, 16, 1),
(40, 133, 1),
(40, 176, 1),
(41, 25, 3),
(41, 40, 4),
(41, 104, 2),
(41, 142, 2),
(41, 160, 4),
(41, 177, 1),
(41, 196, 4),
(42, 37, 4),
(42, 104, 2),
(43, 24, 2),
(43, 30, 3),
(43, 100, 2),
(43, 107, 2),
(43, 124, 4),
(43, 175, 1),
(44, 66, 2),
(44, 160, 4),
(45, 93, 5),
(45, 128, 5),
(45, 134, 5),
(45, 139, 1),
(46, 151, 2),
(47, 75, 3),
(47, 94, 5),
(47, 142, 1),
(47, 144, 1),
(48, 16, 5),
(48, 101, 1),
(48, 169, 4),
(48, 186, 2),
(49, 91, 4),
(49, 92, 5),
(49, 102, 1),
(50, 14, 5),
(50, 88, 4),
(50, 115, 2),
(50, 150, 2),
(50, 167, 4),
(50, 179, 5),
(51, 24, 1),
(51, 138, 5),
(51, 151, 2),
(52, 14, 4),
(52, 62, 5),
(52, 85, 3),
(53, 85, 3),
(53, 107, 1),
(53, 132, 4),
(53, 182, 5),
(54, 1, 3),
(54, 18, 5),
(54, 75, 2),
(54, 192, 1),
(54, 195, 2),
(55, 5, 3),
(55, 10, 3),
(55, 11, 4),
(55, 128, 3),
(55, 148, 1),
(55, 164, 3),
(56, 3, 2),
(56, 18, 4),
(56, 35, 1),
(56, 80, 2),
(56, 129, 3),
(57, 2, 2),
(57, 125, 3),
(58, 29, 5),
(58, 106, 5),
(58, 120, 2),
(58, 171, 3),
(59, 106, 5),
(59, 114, 1),
(59, 116, 1),
(60, 23, 4),
(60, 77, 1),
(60, 113, 1),
(60, 122, 2),
(60, 176, 4),
(60, 197, 1),
(61, 3, 2),
(61, 32, 5),
(61, 83, 2),
(61, 108, 5),
(62, 36, 1),
(62, 165, 2),
(62, 167, 2),
(62, 181, 4),
(63, 73, 5),
(63, 145, 4),
(64, 13, 3),
(64, 19, 3),
(64, 32, 5),
(64, 90, 2),
(64, 102, 4),
(64, 115, 5),
(64, 141, 4),
(64, 158, 1),
(64, 169, 2),
(64, 181, 3),
(65, 140, 3),
(65, 151, 5),
(66, 66, 4),
(66, 126, 1),
(66, 159, 5),
(66, 163, 1),
(66, 176, 3),
(67, 5, 1),
(67, 157, 5),
(68, 27, 4),
(68, 36, 5),
(68, 149, 4),
(68, 196, 5),
(69, 23, 3),
(69, 111, 4),
(69, 159, 5),
(69, 167, 1),
(70, 104, 3),
(70, 176, 2),
(71, 99, 2),
(71, 103, 3),
(72, 7, 1),
(72, 79, 5),
(72, 107, 3),
(72, 135, 2),
(72, 161, 5),
(72, 193, 4),
(73, 74, 4),
(73, 132, 1),
(73, 152, 4),
(74, 66, 3),
(74, 187, 3),
(76, 13, 1),
(76, 89, 5),
(76, 126, 5),
(77, 140, 1),
(77, 141, 2),
(77, 144, 2),
(78, 77, 3),
(78, 91, 5),
(78, 109, 3),
(79, 6, 4),
(79, 37, 3),
(79, 66, 2),
(79, 75, 3),
(79, 100, 1),
(80, 82, 4),
(80, 152, 2),
(81, 9, 5),
(82, 90, 4),
(82, 129, 4),
(82, 165, 4),
(83, 5, 4),
(83, 70, 2),
(83, 73, 2),
(83, 191, 2),
(84, 11, 4),
(84, 142, 1),
(84, 154, 2),
(84, 157, 3),
(84, 169, 4),
(85, 1, 3),
(85, 6, 4),
(85, 83, 3),
(85, 120, 3),
(86, 16, 5),
(86, 165, 3),
(87, 66, 1),
(87, 91, 4),
(87, 135, 4),
(87, 156, 2),
(88, 134, 4),
(88, 155, 2),
(89, 6, 3),
(89, 7, 3),
(89, 91, 4),
(89, 157, 2),
(89, 189, 1),
(90, 36, 1),
(90, 37, 2),
(90, 89, 3),
(90, 117, 2),
(90, 139, 4),
(91, 3, 2),
(91, 25, 5),
(91, 32, 1),
(91, 184, 5),
(92, 15, 4),
(92, 62, 5),
(92, 124, 2),
(93, 14, 3),
(93, 27, 5),
(93, 32, 5),
(93, 80, 1),
(93, 99, 4),
(93, 147, 5),
(93, 180, 4),
(94, 19, 4),
(94, 79, 1),
(94, 139, 4),
(94, 152, 5),
(95, 88, 2),
(95, 99, 4),
(95, 104, 4),
(95, 142, 4),
(95, 168, 2),
(95, 173, 3),
(96, 12, 3),
(96, 35, 5),
(96, 86, 2),
(96, 108, 5),
(96, 135, 3),
(96, 154, 5),
(97, 170, 2),
(97, 179, 3),
(98, 5, 2),
(99, 7, 2),
(99, 26, 4),
(99, 81, 1),
(99, 82, 1),
(99, 134, 2),
(99, 144, 4),
(99, 187, 4),
(100, 21, 3),
(100, 92, 2);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `nom`) VALUES
(1, 'Gucchi'),
(2, 'Luis Vitton'),
(3, 'Prado'),
(4, 'Chanele'),
(5, 'Dioir'),
(6, 'Versaz'),
(7, 'Balengiaga'),
(8, 'Fendy'),
(9, 'Hermel'),
(10, 'Valentino');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `nom`) VALUES
(1, 'Tops'),
(2, 'Bottoms'),
(3, 'Bags'),
(4, 'Accessories'),
(5, 'Perfumes'),
(6, 'Watches'),
(7, 'Sunglasses'),
(8, 'Underwear'),
(9, 'Makeup'),
(10, 'Hats'),
(11, 'Backpacks'),
(12, 'Jewelry'),
(13, 'Sportswear'),
(14, 'Suits'),
(15, 'Children\'s Clothing');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `adresse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `nom`, `prenom`, `email`, `adresse`) VALUES
(1, 'Clouni', 'Greg', 'greg.clouni@yahoo.com', '123 Republic Street, New York, NY, 10001'),
(2, 'Deep', 'Jon', 'jon.deep@gmail.com', '456 Flowers Avenue, Los Angeles, CA, 90001'),
(3, 'Petit', 'Brad', 'brad.petit@outlook.com', '789 Fields Boulevard, Chicago, IL, 60601'),
(4, 'Jolina', 'Angie', 'angie.jolina@hotmail.com', '1011 Commerce Street, Houston, TX, 77001'),
(5, 'Swift', 'Tay', 'tay.swift@icloud.com', '1213 Liberty Square, Phoenix, AZ, 85001'),
(6, 'Johannsen', 'Scarla', 'scarla.johannsen@yahoo.com', '1415 Victor Hugo Avenue, Philadelphia, PA, 19101'),
(7, 'Larson', 'Brian', 'brian.larson@gmail.com', '1617 Voltaire Boulevard, San Antonio, TX, 78201'),
(8, 'DeCapri', 'Leo', 'leo.decapri@outlook.com', '1819 Peace Street, San Diego, CA, 92101'),
(9, 'Beyoncy', 'Riri', 'riri.beyoncy@hotmail.com', '2021 Saint-Michel Boulevard, Dallas, TX, 75201'),
(10, 'Sheerman', 'Eddy', 'eddy.sheerman@icloud.com', '2223 Marshal Avenue, San Jose, CA, 95101'),
(11, 'Perri', 'Kati', 'kati.perri@yahoo.com', '2425 Station Street, Austin, TX, 73301'),
(12, 'W', 'Kai', 'kai.w@gmail.com', '2627 Haussmann Boulevard, Jacksonville, FL, 32099'),
(13, 'Gag', 'Ladi', 'ladi.gag@outlook.com', '2829 Republic Avenue, San Francisco, CA, 94101'),
(14, 'Downi Jr.', 'Bert', 'bert.downi-jr@hotmail.com', '3031 Roses Street, Columbus, OH, 43085'),
(15, 'Cyruss', 'Mimi', 'mimi.cyruss@icloud.com', '3233 Temple Boulevard, Fort Worth, TX, 76101'),
(16, 'Smite', 'Willie', 'willie.smite@yahoo.com', '3435 Lilacs Avenue, Charlotte, NC, 28201'),
(17, 'Law', 'Jenni', 'jenni.law@gmail.com', '3637 Faubourg Street, Detroit, MI, 48201'),
(18, 'Dio', 'Ceci', 'ceci.dio@outlook.com', '3839 Madeleine Boulevard, El Paso, TX, 79901'),
(19, 'Start', 'Taylor', 'taylor.start@hotmail.com', '4041 Foch Avenue, Seattle, WA, 98101'),
(20, 'Swee', 'Kay', 'kay.swee@icloud.com', '4243 Cross Street, Denver, CO, 80014'),
(21, 'Spiers', 'Brit', 'brit.spiers@yahoo.com', '4445 Port Boulevard, Washington DC, 20001'),
(22, 'Gomes', 'Selly', 'selly.gomes@gmail.com', '4647 Liberty Avenue, Boston, MA, 02101'),
(23, 'Afflecky', 'Benji', 'benji.afflecky@outlook.com', '4849 Fountain Street, Nashville, TN, 37201'),
(24, 'Jaggy', 'Mike', 'mike.jaggy@hotmail.com', '5051 Iris Boulevard, Baltimore, MD, 21201');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `prix` float DEFAULT NULL,
  `marque_id` int(11) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `nom`, `description`, `prix`, `marque_id`, `categorie_id`) VALUES
(1, 'Striped cotton shirt', 'Classic striped cotton shirt, perfect for both casual and formal wear.', 49.99, 4, 1),
(2, 'Washed slim jeans', 'Stylish washed slim jeans with a trendy torn effect, ideal for casual outfits.', 79.99, 1, 2),
(3, 'Quilted leather handbag', 'Elegant quilted leather handbag with a golden chain, suitable for all occasions.', 199.99, 3, 3),
(4, 'Silver bracelet with heart pendant', 'Delicate silver bracelet featuring a heart-shaped pendant, an elegant addition to any outfit.', 59.99, 2, 12),
(5, 'Wide-brimmed wool hat', 'Fashionable wide-brimmed wool hat, perfect for adding a sophisticated touch to any ensemble.', 39.99, 2, 10),
(6, 'Floral eau de parfum', 'Refreshing floral eau de parfum with hints of fruit, providing a fresh and feminine scent.', 89.99, 3, 5),
(7, 'Stainless steel wristwatch', 'Durable stainless steel wristwatch with a sleek design, suitable for both business and leisure.', 149.99, 10, 6),
(8, 'Aviator sunglasses', 'Classic aviator sunglasses offering UV protection and a timeless style.', 129.99, 10, 7),
(9, 'Stretch cotton boxer', 'Comfortable stretch cotton boxer shorts, designed for daily wear.', 24.99, 8, 8),
(10, 'Eyeshadow palette', 'Versatile eyeshadow palette featuring a range of vibrant colors for creating bold eye makeup looks.', 49.99, 8, 9),
(11, 'Graphic print T-shirt', 'Casual cotton T-shirt with a bold graphic print, perfect for everyday wear.', 39.99, 7, 1),
(12, 'Fleece joggers', 'Soft fleece joggers with embroidered logo, combining comfort and style for relaxed days.', 69.99, 1, 13),
(13, 'Nylon backpack', 'Durable nylon backpack with a padded compartment for laptops, ideal for both work and travel.', 79.99, 4, 11),
(14, 'Silver cross pendant necklace', 'Elegant silver necklace with a cross pendant, suitable for both special occasions and everyday wear.', 79.99, 6, 12),
(15, 'Genuine leather jacket', 'High-quality genuine leather jacket with an asymmetrical zipper, a must-have for modern wardrobes.', 299.99, 6, 1),
(16, 'Men\'s woody eau de toilette', 'Elegant stainless steel kitchen knife set, perfect for slicing and dicing.', 74.99, 4, 5),
(17, 'Leather chronograph watch', 'Premium leather messenger bag with multiple compartments for organization.', 169.99, 2, 6),
(18, 'Round sunglasses', 'Classic wooden chess set, great for beginners and advanced players alike.', 99.99, 8, 7),
(19, 'Stretch cotton briefs', 'High-performance wireless gaming mouse with customizable buttons and RGB lighting.', 19.99, 3, 8),
(20, 'Nude makeup palette', 'Cozy fleece blanket, ideal for snuggling up on the couch during cold evenings.', 59.99, 2, 9),
(21, 'Printed silk shirt', 'Luxurious printed silk shirt, perfect for elegant evening wear or sophisticated daytime outfits.', 119.99, 8, 1),
(22, 'Breathable sports shorts', 'Lightweight sports shorts, featuring breathable fabric for ultimate comfort during workouts.', 49.99, 3, 13),
(23, 'Canvas tote bag', 'Spacious canvas tote bag with stylish leather accents, ideal for shopping or casual outings.', 89.99, 1, 3),
(24, 'Fleece hoodie', 'Cozy fleece hoodie with an embroidered logo, perfect for chilly evenings or casual layering.', 79.99, 4, 1),
(25, 'High-waist skinny jeans', 'Trendy high-waist skinny jeans with ripped details, perfect for fashion-forward styling.', 89.99, 9, 2),
(26, 'Leather shoulder bag', 'Chic leather shoulder bag with a gold chain, versatile for day-to-night use.', 149.99, 2, 3),
(27, 'Gold stainless steel watch', 'Elegant gold-tone stainless steel watch, combining classic style with modern functionality.', 179.99, 1, 6),
(28, 'Oversized sunglasses', 'Stylish oversized sunglasses with tortoise shell frames, offering both fashion and function.', 129.99, 1, 7),
(29, 'Stretch cotton boxer', 'Comfortable stretch cotton boxer shorts, designed for everyday comfort and durability.', 24.99, 10, 8),
(30, 'Metallic eyeshadow palette', 'Metallic eyeshadow palette featuring shimmering shades for glamorous makeup looks.', 54.99, 5, 9),
(31, 'Short sleeve linen shirt', 'Versatile short-sleeve linen shirt, ideal for hot summer days or casual layering.', 69.99, 7, 1),
(32, 'Printed swim shorts', 'Vibrant printed swim shorts, perfect for beach days or poolside relaxation.', 39.99, 9, 13),
(33, 'Grained leather backpack', 'Premium grained leather backpack, combining style and functionality for urban adventurers.', 129.99, 3, 11),
(34, 'Silver moon pendant necklace', 'Sophisticated silver necklace with a moon pendant, ideal for adding a touch of elegance to any outfit.', 69.99, 7, 12),
(35, 'Satin bomber jacket', 'Stylish satin bomber jacket, perfect for a sporty chic look or casual outings.', 119.99, 7, 1),
(36, 'Women\'s floral eau de toilette', 'Delicate floral eau de toilette for women, featuring a light and refreshing scent.', 84.99, 1, 5),
(37, 'Genuine leather watch', 'Timeless genuine leather watch, perfect for adding a sophisticated touch to any ensemble.', 159.99, 5, 6),
(38, 'Cat-eye sunglasses', 'Fashionable cat-eye sunglasses, offering a retro-chic look with modern appeal.', 109.99, 3, 7),
(39, 'Lace push-up bra', 'Elegant lace push-up bra, designed to enhance and support with comfort and style.', 34.99, 10, 8),
(40, 'Professional makeup palette', 'Comprehensive professional makeup palette, including eyeshadows, blushes, and lip colors for full-face applications.', 79.99, 8, 9),
(61, 'Silk print dress', 'Checkered flannel shirt, combining comfort with casual style for cooler weather.', 199.99, 2, 1),
(62, 'Embroidered denim jacket', 'Slim fit chino pants, crafted from stretch cotton for comfort and versatility in any wardrobe.', 149.99, 7, 2),
(63, 'Grained leather wallet', 'Durable canvas and leather travel bag, perfect for weekend getaways or as a carry-on.', 69.99, 5, 4),
(64, 'Silver gemstone ring', 'Silver cross pendant necklace, offering a touch of spirituality and style to any ensemble.', 79.99, 3, 12),
(65, 'Canvas baseball cap', 'Stylish straw hat with ribbon, an essential accessory for sun protection during summer outings.', 29.99, 1, 10),
(66, 'Woody men\'s perfume', 'Invigorating fresh eau de toilette, with aquatic and citrus notes for a vibrant scent.', 99.99, 4, 5),
(67, 'Black stainless steel watch', 'Classic brown leather watch, combining traditional craftsmanship with elegant design.', 149.99, 7, 6),
(68, 'Cat-eye sunglasses', 'Timeless aviator sunglasses, featuring silver metal frames for a classic pilot look.', 109.99, 4, 7),
(69, 'Lace push-up bra', 'Comfortable cotton lace shorts, ideal for relaxed home wear or sweet dreams.', 34.99, 9, 8),
(70, 'Lip makeup palette', 'Eyebrow makeup palette, with natural shades and fixing gel for perfect brow styling.', 44.99, 2, 9),
(71, 'Polka dot chiffon blouse', 'Cozy fleece-lined hoodie, perfect for layering or lounging on chilly days.', 79.99, 3, 1),
(72, 'Cotton cargo pants', 'Chic leather ankle boots, featuring a stacked heel and side zipper for easy wear.', 89.99, 9, 2),
(73, 'Soft leather fanny pack', 'Versatile leather tote bag, spacious enough for daily essentials with a stylish finish.', 129.99, 5, 3),
(74, 'Silver pearl earrings', 'Sleek stainless steel cufflinks, adding a refined touch to any formal attire.', 59.99, 6, 12),
(75, 'Felt fedora hat', 'Sporty silicone fitness tracker, with heart rate monitor and activity tracking features.', 49.99, 4, 10),
(76, 'Fruity eau de parfum', 'Masculine leather biker jacket, exuding rugged charm with a timeless design.', 79.99, 1, 5),
(77, 'Silver stainless steel watch', 'Classic leather belt, crafted from genuine leather with a polished metal buckle.', 169.99, 5, 6),
(78, 'Vintage round sunglasses', 'Elegant sterling silver bracelet, featuring intricate filigree detail for a sophisticated look.', 99.99, 1, 7),
(79, 'Lace thong', 'Stylish cat-eye glasses, with a tortoiseshell frame and clear lenses for a retro vibe.', 19.99, 8, 8),
(80, 'Contouring makeup palette', 'Soft and plush bathrobe, perfect for lounging in luxury after a relaxing bath.', 39.99, 9, 9),
(81, 'Flannel checkered shirt', 'Sensual lace lingerie set, featuring a bralette and matching panties for a romantic look.', 69.99, 1, 1),
(82, 'Slim fit chino pants', 'Exquisite pearl necklace, a timeless piece that adds elegance to any outfit.', 79.99, 5, 2),
(83, 'Canvas and leather travel bag', 'Practical nylon backpack, designed for durability and functionality during daily commutes.', 199.99, 3, 3),
(84, 'Silver cross pendant necklace', 'Refined leather passport holder, keeping your travel documents safe and stylish.', 49.99, 10, 12),
(85, 'Straw hat with ribbon', 'Glamorous rhinestone earrings, perfect for adding sparkle to evening ensembles.', 39.99, 10, 10),
(86, 'Fresh eau de toilette', 'Classic aviator sunglasses, featuring gold frames and brown gradient lenses.', 69.99, 1, 5),
(87, 'Genuine brown leather watch', 'Chic leopard print scarf, adding a touch of wild sophistication to any outfit.', 159.99, 5, 6),
(88, 'Aviator sunglasses', 'Soft cotton pajama set, featuring a button-up shirt and drawstring pants for cozy nights.', 119.99, 2, 7),
(89, 'Cotton lace shorts', 'Refreshing citrus-scented body lotion, keeping your skin hydrated and fragrant.', 24.99, 3, 8),
(90, 'Eyebrow makeup palette', 'Minimalist leather wallet, with card slots and a zippered compartment for organization.', 29.99, 8, 9),
(91, 'Ruffled satin blouse', 'Elegant rose gold watch, featuring a mother-of-pearl dial and crystal hour markers.', 79.99, 10, 1),
(92, 'Fleece joggers', 'Versatile canvas tote bag, perfect for beach outings or running errands in style.', 59.99, 7, 2),
(93, 'Soft leather bucket bag', 'Charming heart-shaped pendant necklace, a symbol of love and affection.', 129.99, 5, 3),
(94, 'Silver crystal earrings', 'Casual cotton baseball cap, featuring an embroidered logo and an adjustable strap.', 69.99, 2, 12),
(95, 'Denim baseball cap', 'Luxurious silk scarf, with a vibrant floral print to add elegance to any look.', 29.99, 7, 10),
(96, 'Fruity women\'s perfume', 'Soothing lavender-scented eye mask, perfect for relaxation and a restful sleep.', 89.99, 5, 5),
(97, 'Gold stainless steel watch', 'Sleek leather messenger bag, ideal for carrying essentials with style on-the-go.', 189.99, 7, 6),
(98, 'Rectangular sunglasses', 'Classic silver hoop earrings, a versatile accessory for both casual and formal wear.', 99.99, 8, 7),
(99, 'Lace and satin tanga', 'Elegant wool fedora hat, featuring a grosgrain ribbon for a touch of sophistication.', 19.99, 8, 8),
(100, 'Neutral eyeshadow palette', 'Modern wireless earbuds with active noise cancellation for immersive sound experience.', 49.99, 7, 9),
(101, 'Striped linen shirt', 'Compact portable charger with fast charging capability, perfect for travel and emergencies.', 79.99, 1, 1),
(102, 'Low-rise slim jeans', 'Stylish leather wallet with RFID blocking technology to protect your cards from unauthorized scanning.', 89.99, 1, 2),
(103, 'Canvas backpack', 'Soft cotton crewneck t-shirt, perfect for everyday wear and casual outings.', 99.99, 3, 3),
(104, 'Silver dangling earrings', 'Classic analog wristwatch with stainless steel band and water resistance up to 50 meters.', 49.99, 3, 12),
(105, 'Cotton baseball cap', 'Durable hardcover notebook with ruled pages, ideal for journaling and note-taking.', 29.99, 3, 10),
(106, 'Floral women\'s perfume', 'Versatile multi-tool with various functions including knife, screwdriver, and bottle opener.', 69.99, 9, 5),
(107, 'Silver stainless steel watch', 'Compact foldable umbrella with windproof design, suitable for rainy days.', 129.99, 2, 6),
(108, 'Metal round sunglasses', 'Gourmet coffee beans sourced from organic farms, roasted to perfection for rich flavor.', 79.99, 2, 7),
(109, 'Cotton panties', 'Premium whiskey glasses set, crafted from lead-free crystal for enhanced tasting experience.', 14.99, 5, 8),
(110, 'Sparkling eyeshadow palette', 'Luxurious silk scarf with intricate floral pattern, adding elegance to any outfit.', 39.99, 8, 9),
(111, 'Silk lavallière blouse', 'Sleek stainless steel water bottle, keeping drinks cold or hot for hours on-the-go.', 89.99, 7, 1),
(112, 'Slim fit cargo pants', 'Lightweight laptop backpack with padded compartments for secure storage of devices.', 99.99, 7, 2),
(113, 'Quilted leather handbag', 'Compact Bluetooth speaker with high-fidelity sound, perfect for outdoor gatherings.', 149.99, 6, 3),
(114, 'Silver pearl bracelet', 'Stylish canvas sneakers with rubber sole, providing comfort and durability.', 59.99, 7, 12),
(115, 'Wide-brim straw hat', 'Reusable stainless steel drinking straws, eco-friendly alternative to plastic straws.', 39.99, 5, 10),
(116, 'Woody men\'s eau de toilette', 'Portable electric toothbrush with USB charging, ideal for travel and daily use.', 79.99, 5, 5),
(117, 'Gold stainless steel watch', 'Aromatic lavender scented candles, creating a calming ambiance in any room.', 159.99, 2, 6),
(118, 'Square tortoise sunglasses', 'Classic aviator sunglasses with polarized lenses, offering UV protection and style.', 109.99, 1, 7),
(119, 'Lace high-waist panties', 'Soft microfiber bath towels set, highly absorbent and quick-drying for daily use.', 24.99, 8, 8),
(120, 'Matte lip makeup palette', 'Compact portable charger with fast charging capability, perfect for travel and emergencies.', 49.99, 8, 9),
(121, 'Checked cotton shirt', 'Stylish leather wallet with RFID blocking technology to protect your cards from unauthorized scanning.', 69.99, 7, 1),
(122, 'High-waist bootcut jeans', 'Soft cotton crewneck t-shirt, perfect for everyday wear and casual outings.', 79.99, 7, 2),
(123, 'Straw beach bag', 'Classic analog wristwatch with stainless steel band and water resistance up to 50 meters.', 49.99, 6, 3),
(124, 'Silver hoop earrings', 'Durable hardcover notebook with ruled pages, ideal for journaling and note-taking.', 39.99, 7, 12),
(125, 'Straw ribbon hat', 'Versatile multi-tool with various functions including knife, screwdriver, and bottle opener.', 29.99, 7, 10),
(126, 'Vanilla women\'s perfume', 'Compact foldable umbrella with windproof design, suitable for rainy days.', 49.99, 4, 5),
(127, 'Rose gold stainless steel watch', 'Gourmet coffee beans sourced from organic farms, roasted to perfection for rich flavor.', 179.99, 9, 6),
(128, 'Metal aviator sunglasses', 'Premium whiskey glasses set, crafted from lead-free crystal for enhanced tasting experience.', 99.99, 2, 7),
(129, 'Lace and satin shorts', 'Luxurious silk scarf with intricate floral pattern, adding elegance to any outfit.', 19.99, 3, 8),
(130, 'Smoky eye makeup palette', 'Sleek stainless steel water bottle, keeping drinks cold or hot for hours on-the-go.', 29.99, 8, 9),
(131, 'Long-sleeve silk shirt', 'Lightweight laptop backpack with padded compartments for secure storage of devices.', 129.99, 10, 1),
(132, 'Canvas cargo pants', 'Compact Bluetooth speaker with high-fidelity sound, perfect for outdoor gatherings.', 69.99, 6, 2),
(133, 'Quilted leather shoulder bag', 'Stylish canvas sneakers with rubber sole, providing comfort and durability.', 149.99, 10, 3),
(134, 'Silver heart bracelet', 'Reusable stainless steel drinking straws, eco-friendly alternative to plastic straws.', 49.99, 2, 12),
(135, 'Large-brim straw hat', 'Portable electric toothbrush with USB charging, ideal for travel and daily use.', 39.99, 9, 10),
(136, 'Fresh men\'s eau de toilette', 'Aromatic lavender scented candles, creating a calming ambiance in any room.', 59.99, 10, 5),
(137, 'Silver stainless steel watch with blue dial', 'Classic aviator sunglasses with polarized lenses, offering UV protection and style.', 129.99, 4, 6),
(138, 'Butterfly sunglasses', 'Soft microfiber bath towels set, highly absorbent and quick-drying for daily use.', 119.99, 6, 7),
(139, 'Lace satin thong', 'Compact portable charger with fast charging capability, perfect for travel and emergencies.', 14.99, 7, 8),
(140, 'Glossy lip makeup palette', 'Stylish leather wallet with RFID blocking technology to protect your cards from unauthorized scanning.', 39.99, 8, 9),
(141, 'Short-sleeve linen shirt', 'Soft cotton crewneck t-shirt, perfect for everyday wear and casual outings.', 59.99, 7, 1),
(142, 'High-waist denim shorts', 'Classic analog wristwatch with stainless steel band and water resistance up to 50 meters.', 49.99, 9, 2),
(143, 'Soft leather crossbody bag', 'Durable hardcover notebook with ruled pages, ideal for journaling and note-taking.', 79.99, 6, 3),
(144, 'Silver key pendant necklace', 'Versatile multi-tool with various functions including knife, screwdriver, and bottle opener.', 69.99, 3, 12),
(145, 'Straw hat with contrasting ribbon', 'Compact foldable umbrella with windproof design, suitable for rainy days.', 39.99, 7, 10),
(146, 'Fruity eau de parfum for women', 'Gourmet coffee beans sourced from organic farms, roasted to perfection for rich flavor.', 79.99, 5, 5),
(147, 'Gold stainless steel watch with rhinestones', 'Premium whiskey glasses set, crafted from lead-free crystal for enhanced tasting experience.', 159.99, 5, 6),
(148, 'Metal round vintage sunglasses', 'Luxurious silk scarf with intricate floral pattern, adding elegance to any outfit.', 99.99, 8, 7),
(149, 'Lace floral shorts', 'Sleek stainless steel water bottle, keeping drinks cold or hot for hours on-the-go.', 19.99, 5, 8),
(150, 'Natural eye makeup palette', 'Lightweight laptop backpack with padded compartments for secure storage of devices.', 29.99, 9, 9),
(151, 'Ruffled silk blouse', 'Compact Bluetooth speaker with high-fidelity sound, perfect for outdoor gatherings.', 89.99, 10, 1),
(152, 'Linen shorts with belt', 'Stylish canvas sneakers with rubber sole, providing comfort and durability.', 69.99, 1, 2),
(153, 'Soft leather bucket bag', 'Reusable stainless steel drinking straws, eco-friendly alternative to plastic straws.', 99.99, 6, 3),
(154, 'Silver star pendant bracelet', 'Portable electric toothbrush with USB charging, ideal for travel and daily use.', 59.99, 7, 12),
(155, 'Large-brim straw hat', 'Aromatic lavender scented candles, creating a calming ambiance in any room.', 39.99, 6, 10),
(156, 'Fresh men\'s eau de toilette with citrus notes', 'Classic aviator sunglasses with polarized lenses, offering UV protection and style.', 69.99, 8, 5),
(157, 'Black stainless steel watch', 'Soft microfiber bath towels set, highly absorbent and quick-drying for daily use.', 129.99, 2, 6),
(158, 'Tortoise round sunglasses', 'Compact portable charger with fast charging capability, perfect for travel and emergencies.', 109.99, 4, 7),
(159, 'Lace satin string', 'Stylish leather wallet with RFID blocking technology to protect your cards from unauthorized scanning.', 14.99, 5, 8),
(160, 'Matte lip makeup palette', 'Soft cotton crewneck t-shirt, perfect for everyday wear and casual outings.', 39.99, 3, 9),
(161, 'Striped cotton shirt', 'Classic analog wristwatch with stainless steel band and water resistance up to 50 meters.', 69.99, 7, 1),
(162, 'Low-rise slim jeans', 'Durable hardcover notebook with ruled pages, ideal for journaling and note-taking.', 79.99, 7, 2),
(163, 'Straw beach bag', 'Versatile multi-tool with various functions including knife, screwdriver, and bottle opener.', 49.99, 5, 3),
(164, 'Silver hoop earrings', 'Compact foldable umbrella with windproof design, suitable for rainy days.', 39.99, 4, 12),
(165, 'Straw ribbon hat', 'Gourmet coffee beans sourced from organic farms, roasted to perfection for rich flavor.', 29.99, 4, 10),
(166, 'Vanilla women\'s perfume', 'Premium whiskey glasses set, crafted from lead-free crystal for enhanced tasting experience.', 49.99, 5, 5),
(167, 'Rose gold stainless steel watch', 'Luxurious silk scarf with intricate floral pattern, adding elegance to any outfit.', 179.99, 4, 6),
(168, 'Metal aviator sunglasses', 'Sleek stainless steel water bottle, keeping drinks cold or hot for hours on-the-go.', 99.99, 5, 7),
(169, 'Lace and satin shorts', 'Lightweight laptop backpack with padded compartments for secure storage of devices.', 19.99, 3, 8),
(170, 'Smoky eye makeup palette', 'Compact Bluetooth speaker with high-fidelity sound, perfect for outdoor gatherings.', 29.99, 9, 9),
(171, 'Long-sleeve silk shirt', 'Stylish canvas sneakers with rubber sole, providing comfort and durability.', 129.99, 4, 1),
(172, 'Canvas cargo pants', 'Reusable stainless steel drinking straws, eco-friendly alternative to plastic straws.', 69.99, 5, 2),
(173, 'Quilted leather shoulder bag', 'Portable electric toothbrush with USB charging, ideal for travel and daily use.', 149.99, 3, 3),
(174, 'Silver heart bracelet', 'Aromatic lavender scented candles, creating a calming ambiance in any room.', 49.99, 8, 12),
(175, 'Large-brim straw hat', 'Classic aviator sunglasses with polarized lenses, offering UV protection and style.', 39.99, 2, 10),
(176, 'Fresh men\'s eau de toilette', 'Soft microfiber bath towels set, highly absorbent and quick-drying for daily use.', 79.99, 6, 5),
(177, 'Silver stainless steel watch with blue dial', 'Compact portable charger with fast charging capability, perfect for travel and emergencies.', 159.99, 2, 6),
(178, 'Butterfly sunglasses', 'Stylish leather wallet with RFID blocking technology to protect your cards from unauthorized scanning.', 99.99, 4, 7),
(179, 'Lace satin thong', 'Soft cotton crewneck t-shirt, perfect for everyday wear and casual outings.', 19.99, 2, 8),
(180, 'Glossy lip makeup palette', 'Classic analog wristwatch with stainless steel band and water resistance up to 50 meters.', 29.99, 6, 9),
(181, 'Short-sleeve linen shirt', 'Durable hardcover notebook with ruled pages, ideal for journaling and note-taking.', 69.99, 4, 1),
(182, 'High-waist denim shorts', 'Versatile multi-tool with various functions including knife, screwdriver, and bottle opener.', 79.99, 4, 2),
(183, 'Soft leather crossbody bag', 'Compact foldable umbrella with windproof design, suitable for rainy days.', 49.99, 5, 3),
(184, 'Silver key pendant necklace', 'Gourmet coffee beans sourced from organic farms, roasted to perfection for rich flavor.', 39.99, 4, 12),
(185, 'Straw hat with contrasting ribbon', 'Premium whiskey glasses set, crafted from lead-free crystal for enhanced tasting experience.', 29.99, 5, 10),
(186, 'Fruity eau de parfum for women', 'Luxurious silk scarf with intricate floral pattern, adding elegance to any outfit.', 49.99, 4, 5),
(187, 'Gold stainless steel watch with rhinestones', 'Sleek stainless steel water bottle, keeping drinks cold or hot for hours on-the-go.', 179.99, 2, 6),
(188, 'Metal round vintage sunglasses', 'Lightweight laptop backpack with padded compartments for secure storage of devices.', 99.99, 7, 7),
(189, 'Lace floral shorts', 'Compact Bluetooth speaker with high-fidelity sound, perfect for outdoor gatherings.', 19.99, 10, 8),
(190, 'Natural eye makeup palette', 'Stylish canvas sneakers with rubber sole, providing comfort and durability.', 29.99, 6, 9),
(191, 'Ruffled silk blouse', 'Reusable stainless steel drinking straws, eco-friendly alternative to plastic straws.', 129.99, 2, 1),
(192, 'Linen shorts with belt', 'Portable electric toothbrush with USB charging, ideal for travel and daily use.', 69.99, 1, 2),
(193, 'Soft leather bucket bag', 'Aromatic lavender scented candles, creating a calming ambiance in any room.', 149.99, 9, 3),
(194, 'Silver star pendant bracelet', 'Classic aviator sunglasses with polarized lenses, offering UV protection and style.', 49.99, 2, 12),
(195, 'Large-brim straw hat', 'Soft microfiber bath towels set, highly absorbent and quick-drying for daily use.', 39.99, 3, 10),
(196, 'Fresh men\'s eau de toilette with citrus notes', 'Compact portable charger with fast charging capability, perfect for travel and emergencies.', 79.99, 8, 5),
(197, 'Black stainless steel watch', 'Stylish leather wallet with RFID blocking technology to protect your cards from unauthorized scanning.', 159.99, 1, 6),
(198, 'Tortoise round sunglasses', 'Soft cotton crewneck t-shirt, perfect for everyday wear and casual outings.', 99.99, 9, 7),
(199, 'Lace satin string', 'Classic analog wristwatch with stainless steel band and water resistance up to 50 meters.', 19.99, 2, 8),
(200, 'Matte lip makeup palette', 'Durable hardcover notebook with ruled pages, ideal for journaling and note-taking.', 29.99, 3, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `basket_product`
--
ALTER TABLE `basket_product`
  ADD PRIMARY KEY (`commande_id`,`produit_id`),
  ADD KEY `produit_id` (`produit_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marque_id` (`marque_id`),
  ADD KEY `categorie_id` (`categorie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `basket`
--
ALTER TABLE `basket`
  ADD CONSTRAINT `basket_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `basket_product`
--
ALTER TABLE `basket_product`
  ADD CONSTRAINT `basket_product_ibfk_1` FOREIGN KEY (`commande_id`) REFERENCES `basket` (`id`),
  ADD CONSTRAINT `basket_product_ibfk_2` FOREIGN KEY (`produit_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`marque_id`) REFERENCES `brand` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`categorie_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
