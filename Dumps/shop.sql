-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 29 mars 2024 à 21:52
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `shop`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`) VALUES
(1, 'Hauts'),
(2, 'Bas'),
(3, 'Sacs'),
(4, 'Accessoires'),
(5, 'Parfums'),
(6, 'Montres'),
(7, 'Lunettes de soleil'),
(8, 'Sous-vêtements'),
(9, 'Maquillage'),
(10, 'Chapeaux'),
(11, 'Sacs à dos'),
(12, 'Bijoux'),
(13, 'Vêtements de sport'),
(14, 'Costumes'),
(15, 'Vêtements pour enfants');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `adresse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `email`, `adresse`) VALUES
(1, 'Clouni', 'Greg', 'greg.clouni@example.com', '123 Rue de la République'),
(2, 'Deep', 'Jon', 'jon.deep@example.com', '456 Avenue des Fleurs'),
(3, 'Petit', 'Brad', 'brad.petit@example.com', '789 Boulevard des Champs'),
(4, 'Jolina', 'Angie', 'angie.jolina@example.com', '1011 Rue du Commerce'),
(5, 'Swift', 'Tay', 'tay.swift@example.com', '1213 Place de la Liberté'),
(6, 'Johannsen', 'Scarla', 'scarla.johannsen@example.com', '1415 Avenue Victor Hugo'),
(7, 'Larson', 'Brian', 'brian.larson@example.com', '1617 Boulevard Voltaire'),
(8, 'DeCapri', 'Leo', 'leo.decapri@example.com', '1819 Rue de la Paix'),
(9, 'Beyoncy', 'Riri', 'riri.beyoncy@example.com', '2021 Boulevard Saint-Michel'),
(10, 'Sheerman', 'Eddy', 'eddy.sheerman@example.com', '2223 Avenue du Maréchal'),
(11, 'Perri', 'Kati', 'kati.perri@example.com', '2425 Rue de la Gare'),
(12, 'W', 'Kai', 'kai.w@example.com', '2627 Boulevard Haussmann'),
(13, 'Gag', 'Ladi', 'ladi.gag@example.com', '2829 Avenue de la République'),
(14, 'Downi Jr.', 'Bert', 'bert.downi-jr@example.com', '3031 Rue des Roses'),
(15, 'Cyruss', 'Mimi', 'mimi.cyruss@example.com', '3233 Boulevard du Temple'),
(16, 'Smite', 'Willie', 'willie.smite@example.com', '3435 Avenue des Lilas'),
(17, 'Law', 'Jenni', 'jenni.law@example.com', '3637 Rue du Faubourg'),
(18, 'Dio', 'Ceci', 'ceci.dio@example.com', '3839 Boulevard de la Madeleine'),
(19, 'Start', 'Taylor', 'taylor.start@example.com', '4041 Avenue Foch'),
(20, 'Swee', 'Kay', 'kay.swee@example.com', '4243 Rue de la Croix'),
(21, 'Spiers', 'Brit', 'brit.spiers@example.com', '4445 Boulevard du Port'),
(22, 'Gomes', 'Selly', 'selly.gomes@example.com', '4647 Avenue de la Liberté'),
(23, 'Afflecky', 'Benji', 'benji.afflecky@example.com', '4849 Rue de la Fontaine'),
(24, 'Jaggy', 'Mike', 'mike.jaggy@example.com', '5051 Boulevard des Iris');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `etat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `client_id`, `date`, `etat`) VALUES
(1, 13, '2023-03-03 12:44:17', 'ANNULEE'),
(2, 17, '2016-08-18 11:06:17', 'ANNULEE'),
(3, 3, '2023-10-19 20:15:17', 'ANNULEE'),
(4, 2, '2024-01-02 21:31:17', 'ANNULEE'),
(5, 24, '2022-07-01 03:56:17', 'ANNULEE'),
(6, 13, '2018-01-27 16:39:17', 'ANNULEE'),
(7, 9, '2020-01-09 08:30:17', 'EXPEDIEE'),
(8, 22, '2018-10-26 13:02:17', 'ANNULEE'),
(9, 8, '2014-08-29 09:15:17', 'ANNULEE'),
(10, 13, '2015-12-18 10:27:17', 'PAYEE'),
(11, 4, '2021-03-05 00:08:17', 'ANNULEE'),
(12, 11, '2017-05-08 01:23:17', 'ANNULEE'),
(13, 21, '2021-09-02 19:22:17', 'ANNULEE'),
(14, 9, '2016-03-15 18:39:17', 'ANNULEE'),
(15, 8, '2021-12-12 20:53:17', 'PAYEE'),
(16, 6, '2021-12-15 14:16:17', 'ANNULEE'),
(17, 16, '2023-10-04 04:22:17', 'ANNULEE'),
(18, 8, '2019-06-03 20:04:17', 'ANNULEE'),
(19, 1, '2018-04-15 00:47:17', 'ANNULEE'),
(20, 22, '2020-08-05 18:52:17', 'ANNULEE'),
(21, 23, '2018-01-22 15:14:17', 'EXPEDIEE'),
(22, 5, '2018-11-28 21:05:17', 'PAYEE'),
(23, 22, '2020-08-31 01:35:17', 'ANNULEE'),
(24, 11, '2020-09-24 00:34:17', 'EXPEDIEE'),
(25, 2, '2022-03-11 20:56:17', 'ANNULEE'),
(26, 14, '2015-08-07 13:33:17', 'ANNULEE'),
(27, 24, '2016-12-30 08:59:17', 'ANNULEE'),
(28, 18, '2017-07-16 01:33:17', 'PAYEE'),
(29, 22, '2021-09-03 10:00:17', 'EXPEDIEE'),
(30, 15, '2018-04-09 09:16:17', 'ANNULEE'),
(31, 22, '2018-06-26 02:30:17', 'PAYEE'),
(32, 20, '2022-08-29 11:37:17', 'ANNULEE'),
(33, 22, '2020-02-17 13:12:17', 'ANNULEE'),
(34, 14, '2018-07-14 15:48:17', 'ANNULEE'),
(35, 24, '2021-06-27 11:48:17', 'ANNULEE'),
(36, 23, '2021-05-13 10:09:17', 'ANNULEE'),
(37, 5, '2018-04-05 14:46:17', 'PAYEE'),
(38, 19, '2023-09-06 18:35:17', 'EXPEDIEE'),
(39, 3, '2023-01-06 15:15:17', 'PAYEE'),
(40, 15, '2016-11-15 22:46:17', 'ANNULEE'),
(41, 20, '2015-01-21 10:38:17', 'PAYEE'),
(42, 8, '2020-05-18 14:11:17', 'ANNULEE'),
(43, 1, '2016-12-31 20:36:17', 'ANNULEE'),
(44, 15, '2020-04-16 08:32:17', 'ANNULEE'),
(45, 7, '2023-09-06 16:43:17', 'PAYEE'),
(46, 8, '2024-02-01 21:43:17', 'ANNULEE'),
(47, 17, '2018-12-16 13:38:17', 'PAYEE'),
(48, 19, '2017-01-14 00:02:17', 'PAYEE'),
(49, 8, '2022-09-08 13:52:17', 'EXPEDIEE'),
(50, 2, '2017-01-18 09:58:17', 'ANNULEE'),
(51, 4, '2021-05-05 06:44:17', 'EXPEDIEE'),
(52, 13, '2015-10-16 14:29:17', 'PAYEE'),
(53, 6, '2015-06-18 18:48:17', 'ANNULEE'),
(54, 17, '2017-08-29 00:53:17', 'ANNULEE'),
(55, 22, '2016-10-21 08:12:17', 'PAYEE'),
(56, 4, '2020-03-27 01:36:17', 'ANNULEE'),
(57, 4, '2019-12-12 21:39:17', 'PAYEE'),
(58, 24, '2016-11-22 20:27:17', 'ANNULEE'),
(59, 8, '2023-09-09 01:29:17', 'EXPEDIEE'),
(60, 24, '2018-04-24 12:36:17', 'EXPEDIEE'),
(61, 20, '2015-05-24 15:39:17', 'ANNULEE'),
(62, 15, '2022-07-24 12:33:17', 'EXPEDIEE'),
(63, 17, '2021-01-28 07:28:17', 'ANNULEE'),
(64, 18, '2022-11-25 18:24:17', 'PAYEE'),
(65, 19, '2016-07-07 23:20:17', 'ANNULEE'),
(66, 19, '2022-11-19 04:11:17', 'ANNULEE'),
(67, 11, '2020-06-03 21:47:17', 'ANNULEE'),
(68, 14, '2017-07-18 08:22:17', 'ANNULEE'),
(69, 19, '2017-02-03 11:59:17', 'ANNULEE'),
(70, 17, '2019-11-20 14:22:17', 'ANNULEE'),
(71, 6, '2020-11-10 20:25:17', 'ANNULEE'),
(72, 11, '2017-07-12 14:08:17', 'PAYEE'),
(73, 6, '2023-05-30 20:18:17', 'ANNULEE'),
(74, 15, '2021-01-13 06:20:17', 'ANNULEE'),
(75, 23, '2014-09-15 13:09:17', 'PAYEE'),
(76, 12, '2014-07-20 01:27:17', 'EXPEDIEE'),
(77, 5, '2022-03-10 03:27:17', 'ANNULEE'),
(78, 14, '2018-01-12 04:44:17', 'ANNULEE'),
(79, 16, '2016-04-27 01:23:17', 'EXPEDIEE'),
(80, 22, '2015-10-28 04:44:17', 'ANNULEE'),
(81, 13, '2014-07-06 10:34:17', 'ANNULEE'),
(82, 5, '2022-01-11 15:51:17', 'PAYEE'),
(83, 17, '2016-05-10 23:30:17', 'ANNULEE'),
(84, 10, '2014-07-09 05:14:17', 'EXPEDIEE'),
(85, 5, '2020-07-10 18:18:17', 'PAYEE'),
(86, 6, '2016-06-21 15:01:17', 'ANNULEE'),
(87, 12, '2014-05-25 10:48:17', 'EXPEDIEE'),
(88, 2, '2020-08-05 20:45:17', 'ANNULEE'),
(89, 12, '2022-07-12 07:24:17', 'ANNULEE'),
(90, 1, '2016-05-27 02:46:17', 'ANNULEE'),
(91, 4, '2021-11-11 22:18:17', 'ANNULEE'),
(92, 2, '2014-06-02 22:32:17', 'ANNULEE'),
(93, 21, '2023-02-19 11:38:17', 'EXPEDIEE'),
(94, 13, '2018-07-30 02:38:17', 'ANNULEE'),
(95, 13, '2023-03-03 10:29:17', 'ANNULEE'),
(96, 9, '2016-08-19 00:03:17', 'PAYEE'),
(97, 5, '2020-03-17 03:36:17', 'PAYEE'),
(98, 7, '2018-01-29 05:42:17', 'ANNULEE'),
(99, 11, '2020-04-13 11:47:17', 'ANNULEE'),
(100, 13, '2024-01-28 22:50:17', 'EXPEDIEE');

-- --------------------------------------------------------

--
-- Structure de la table `commande_produit`
--

CREATE TABLE `commande_produit` (
  `commande_id` int(11) NOT NULL,
  `produit_id` int(11) NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commande_produit`
--

INSERT INTO `commande_produit` (`commande_id`, `produit_id`, `quantite`) VALUES
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
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id`, `nom`) VALUES
(1, 'Gucchi'),
(2, 'Luis Vitton'),
(3, 'Prado'),
(4, 'Chanèle'),
(5, 'Dioir'),
(6, 'Versaz'),
(7, 'Balengiaga'),
(8, 'Fendy'),
(9, 'Hermel'),
(10, 'Valentino');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `prix` float DEFAULT NULL,
  `marque_id` int(11) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `description`, `prix`, `marque_id`, `categorie_id`) VALUES
(1, 'Chemise en coton à rayures', 'Chemise en coton à rayures classiques. Parfaite pour une tenue décontractée ou habillée.', 49.99, 4, 1),
(2, 'Jean slim délavé', 'Jean slim délavé avec effet déchiré. Style tendance pour une tenue décontractée.', 79.99, 1, 2),
(3, 'Sac à main en cuir matelassé', 'Sac à main en cuir matelassé avec chaîne dorée. Un accessoire élégant pour toutes les occasions.', 199.99, 3, 3),
(4, 'Bracelet en argent avec pendentif', 'Bracelet en argent avec pendentif cœur. Ajoute une touche d\'élégance à votre look.', 59.99, 2, 12),
(5, 'Chapeau en laine à larges bords', 'Chapeau en laine à larges bords avec bande contrastante. Parfait pour compléter votre tenue.', 39.99, 2, 10),
(6, 'Eau de parfum floral', 'Eau de parfum avec des notes florales et fruitées. Parfum frais et féminin.', 89.99, 3, 5),
(7, 'Montre-bracelet en acier inoxydable', 'Montre-bracelet en acier inoxydable avec cadran argenté. Un accessoire élégant pour homme.', 149.99, 10, 6),
(8, 'Lunettes de soleil aviateur', 'Lunettes de soleil aviateur en métal avec verres polarisés. Style intemporel et protection UV.', 129.99, 10, 7),
(9, 'Boxer en coton extensible', 'Boxer en coton extensible avec ceinture élastique. Confortable et ajusté.', 24.99, 8, 8),
(10, 'Palette de fards à paupières', 'Palette de fards à paupières avec une gamme de couleurs vibrantes. Créez des looks audacieux.', 49.99, 8, 9),
(11, 'T-shirt imprimé graphique', 'T-shirt en coton avec imprimé graphique audacieux. Parfait pour un look décontracté.', 39.99, 7, 1),
(12, 'Pantalon de jogging en molleton', 'Pantalon de jogging en molleton avec logo brodé. Confortable et tendance pour les moments de détente.', 69.99, 1, 13),
(13, 'Sac à dos en nylon', 'Sac à dos en nylon avec compartiment rembourré pour ordinateur portable. Pratique et stylé.', 79.99, 4, 11),
(14, 'Collier en argent avec pendentif', 'Collier en argent avec pendentif croix. Un accessoire classique pour toutes les occasions.', 79.99, 6, 12),
(15, 'Veste en cuir véritable', 'Veste en cuir véritable avec fermeture à glissière asymétrique. Un essentiel pour un look moderne.', 299.99, 6, 1),
(16, 'Eau de toilette pour homme', 'Eau de toilette pour homme avec des notes boisées et épicées. Parfum masculin et sophistiqué.', 74.99, 4, 5),
(17, 'Montre-bracelet en cuir', 'Montre-bracelet en cuir avec cadran chronographe. Style élégant pour homme.', 169.99, 2, 6),
(18, 'Lunettes de soleil rondes', 'Lunettes de soleil rondes avec monture en acétate. Style rétro-chic pour un look tendance.', 99.99, 8, 7),
(19, 'Slip en coton extensible', 'Slip en coton extensible avec logo imprimé sur la ceinture. Confortable et ajusté.', 19.99, 3, 8),
(20, 'Palette de maquillage nude', 'Palette de maquillage avec des tons neutres pour créer un look naturel. Idéal pour un maquillage quotidien.', 59.99, 2, 9),
(21, 'Chemise en soie imprimée', 'Chemise en soie imprimée avec col à revers. Élégance et confort pour un look raffiné.', 119.99, 8, 1),
(22, 'Short de sport respirant', 'Short de sport en tissu respirant avec poches latérales. Parfait pour les entraînements intenses.', 49.99, 3, 13),
(23, 'Sac fourre-tout en toile', 'Sac fourre-tout en toile avec détails en cuir. Spacieux et polyvalent pour une utilisation quotidienne.', 89.99, 1, 3),
(24, 'Sweat à capuche en molleton', 'Sweat à capuche en molleton avec logo brodé. Confortable et chaud pour les journées fraîches.', 79.99, 4, 1),
(25, 'Jean skinny taille haute', 'Jean skinny taille haute avec détails déchirés. Parfait pour un look tendance.', 89.99, 9, 2),
(26, 'Sac bandoulière en cuir', 'Sac bandoulière en cuir avec chaîne dorée. Un accessoire chic pour toutes les occasions.', 149.99, 2, 3),
(27, 'Montre-bracelet en acier inoxydable doré', 'Montre-bracelet en acier inoxydable doré avec cadran blanc. Élégance et style.', 179.99, 1, 6),
(28, 'Lunettes de soleil oversize', 'Lunettes de soleil oversize avec monture en écaille de tortue. Look rétro pour un style affirmé.', 129.99, 1, 7),
(29, 'Boxer en coton stretch', 'Boxer en coton stretch avec ceinture élastique. Confortable et ajusté toute la journée.', 24.99, 10, 8),
(30, 'Palette de fards à paupières métallisés', 'Palette de fards à paupières métallisés avec une gamme de teintes scintillantes. Idéale pour un look glamour.', 54.99, 5, 9),
(31, 'Chemise en lin à manches courtes', 'Chemise en lin à manches courtes avec col boutonné. Légère et respirante pour l\'été.', 69.99, 7, 1),
(32, 'Short de bain imprimé', 'Short de bain imprimé avec cordon de serrage à la taille. Parfait pour la plage ou la piscine.', 39.99, 9, 13),
(33, 'Sac à dos en cuir grainé', 'Sac à dos en cuir grainé avec poche zippée sur le devant. Pratique et stylé pour le quotidien.', 129.99, 3, 11),
(34, 'Collier en argent avec pendentif lune', 'Collier en argent avec pendentif lune. Accessoire élégant pour une touche de glamour.', 69.99, 7, 12),
(35, 'Blouson bomber en satin', 'Blouson bomber en satin avec bordures côtelées. Style sportswear revisité pour un look tendance.', 119.99, 7, 1),
(36, 'Eau de toilette pour femme', 'Eau de toilette pour femme avec des notes florales et fruitées. Fragrance délicate et féminine.', 84.99, 1, 5),
(37, 'Montre-bracelet en cuir véritable', 'Montre-bracelet en cuir véritable avec cadran analogique. Style intemporel pour toutes les occasions.', 159.99, 5, 6),
(38, 'Lunettes de soleil cat-eye', 'Lunettes de soleil cat-eye avec monture en métal doré. Look rétro-chic pour un style sophistiqué.', 109.99, 3, 7),
(39, 'Soutien-gorge en dentelle push-up', 'Soutien-gorge en dentelle push-up avec armatures. Confortable et séduisant pour mettre en valeur votre silhouette.', 34.99, 10, 8),
(40, 'Palette de maquillage professionnelle', 'Palette de maquillage professionnelle avec des ombres à paupières, des blush et des rouges à lèvres. Pour un look complet.', 79.99, 8, 9),
(61, 'Robe en soie imprimée', 'Robe en soie imprimée avec encolure en V et ceinture à la taille. Élégance et féminité pour toutes les occasions.', 199.99, 2, 1),
(62, 'Veste en denim délavée', 'Veste en denim délavée avec détails brodés au dos. Un essentiel décontracté pour une tenue tendance.', 149.99, 7, 2),
(63, 'Portefeuille en cuir grainé', 'Portefeuille en cuir grainé avec fermeture à bouton pression. Pratique et élégant pour ranger vos cartes et espèces.', 69.99, 5, 4),
(64, 'Bague en argent avec pierre précieuse', 'Bague en argent avec pierre précieuse sertie. Accessoire raffiné pour une touche d\'éclat.', 79.99, 3, 12),
(65, 'Casquette de baseball en toile', 'Casquette de baseball en toile avec logo brodé sur le devant. Style décontracté pour une tenue sportswear.', 29.99, 1, 10),
(66, 'Parfum boisé pour homme', 'Parfum boisé pour homme avec des notes de cuir et de musc. Fragrance virile et sophistiquée.', 99.99, 4, 5),
(67, 'Montre-bracelet en acier inoxydable noir', 'Montre-bracelet en acier inoxydable noir avec cadran argenté. Style moderne et élégant pour homme.', 149.99, 7, 6),
(68, 'Lunettes de soleil cat-eye', 'Lunettes de soleil cat-eye en acétate noir. Un accessoire chic pour un look sophistiqué.', 109.99, 4, 7),
(69, 'Soutien-gorge en dentelle push-up', 'Soutien-gorge en dentelle push-up avec armatures et bretelles réglables. Confortable et sexy.', 34.99, 9, 8),
(70, 'Palette de maquillage pour les lèvres', 'Palette de maquillage pour les lèvres avec des rouges à lèvres mats et brillants. Pour des lèvres parfaitement maquillées.', 44.99, 2, 9),
(71, 'Chemisier en mousseline à pois', 'Chemisier en mousseline à pois avec col montant et boutons nacrés. Élégance rétro pour un look vintage.', 79.99, 3, 1),
(72, 'Pantalon cargo en coton', 'Pantalon cargo en coton avec poches latérales et fermeture éclair. Parfait pour un look utilitaire.', 89.99, 9, 2),
(73, 'Sac banane en cuir souple', 'Sac banane en cuir souple avec poche zippée à l\'avant. Un accessoire pratique pour garder vos essentiels à portée de main.', 129.99, 5, 3),
(74, 'Boucles d\'oreilles en argent avec perles', 'Boucles d\'oreilles en argent avec perles blanches. Accessoire classique pour une touche d\'élégance.', 59.99, 6, 12),
(75, 'Chapeau fedora en feutre', 'Chapeau fedora en feutre avec bande de gros-grain. Style intemporel pour une élégance décontractée.', 49.99, 4, 10),
(76, 'Eau de parfum fruitée', 'Eau de parfum fruitée avec des notes sucrées et acidulées. Parfum frais et gourmand pour éveiller les sens.', 79.99, 1, 5),
(77, 'Montre-bracelet en acier inoxydable argenté', 'Montre-bracelet en acier inoxydable argenté avec cadran bleu. Un accessoire sophistiqué pour homme.', 169.99, 5, 6),
(78, 'Lunettes de soleil rondes vintage', 'Lunettes de soleil rondes vintage avec monture en métal doré. Style rétro pour un look tendance.', 99.99, 1, 7),
(79, 'String en dentelle', 'String en dentelle avec ceinture élastique. Confortable et séduisant pour une touche de féminité.', 19.99, 8, 8),
(80, 'Palette de maquillage pour le contouring', 'Palette de maquillage pour le contouring avec des tons clairs et foncés pour sculpter et définir le visage.', 39.99, 9, 9),
(81, 'Chemise à carreaux en flanelle', 'Chemise à carreaux en flanelle avec boutons-pression. Parfait pour un look décontracté et confortable.', 69.99, 1, 1),
(82, 'Pantalon chino slim fit', 'Pantalon chino slim fit en coton stretch. Un classique polyvalent pour une tenue décontractée ou habillée.', 79.99, 5, 2),
(83, 'Sac de voyage en toile et cuir', 'Sac de voyage en toile et cuir avec poches latérales et bandoulière réglable. Parfait pour les déplacements.', 199.99, 3, 3),
(84, 'Collier en argent avec pendentif croix', 'Collier en argent avec pendentif croix. Accessoire symbolique pour une touche de spiritualité.', 49.99, 10, 12),
(85, 'Chapeau de paille avec ruban', 'Chapeau de paille avec ruban contrastant. Parfait pour une journée ensoleillée.', 39.99, 10, 10),
(86, 'Eau de toilette fraîche', 'Eau de toilette fraîche avec des notes aquatiques et citronnées. Fragrance vivifiante pour homme.', 69.99, 1, 5),
(87, 'Montre-bracelet en cuir véritable marron', 'Montre-bracelet en cuir véritable marron avec cadran blanc. Style décontracté et élégant pour homme.', 159.99, 5, 6),
(88, 'Lunettes de soleil aviateur', 'Lunettes de soleil aviateur avec monture en métal argenté. Un classique indémodable.', 119.99, 2, 7),
(89, 'Shorty en coton avec dentelle', 'Shorty en coton avec dentelle et nœud satiné. Confortable et féminin pour tous les jours.', 24.99, 3, 8),
(90, 'Palette de maquillage pour les sourcils', 'Palette de maquillage pour les sourcils avec des teintes naturelles et un gel fixateur. Pour des sourcils parfaitement dessinés.', 29.99, 8, 9),
(91, 'Chemisier en satin à volants', 'Chemisier en satin à volants avec encolure bardot. Féminité et élégance pour une tenue sophistiquée.', 79.99, 10, 1),
(92, 'Pantalon de jogging en molleton', 'Pantalon de jogging en molleton avec taille élastique et cordon de serrage. Confortable et stylé pour le sport ou les loisirs.', 59.99, 7, 2),
(93, 'Sac seau en cuir souple', 'Sac seau en cuir souple avec anses réglables. Un accessoire pratique et tendance.', 129.99, 5, 3),
(94, 'Boucles d\'oreilles en argent avec cristaux', 'Boucles d\'oreilles en argent avec cristaux étincelants. Accessoire chic pour une touche d\'éclat.', 69.99, 2, 12),
(95, 'Casquette de baseball en jean', 'Casquette de baseball en jean avec logo brodé sur le devant. Style décontracté pour une touche urbaine.', 29.99, 7, 10),
(96, 'Parfum fruité pour femme', 'Parfum fruité pour femme avec des notes sucrées et florales. Fragrance légère et enivrante.', 89.99, 5, 5),
(97, 'Montre-bracelet en acier inoxydable doré', 'Montre-bracelet en acier inoxydable doré avec cadran rose. Un accessoire élégant et sophistiqué pour femme.', 189.99, 7, 6),
(98, 'Lunettes de soleil rectangulaires', 'Lunettes de soleil rectangulaires avec monture en acétate noir. Style minimaliste et moderne.', 99.99, 8, 7),
(99, 'Tanga en dentelle et satin', 'Tanga en dentelle et satin avec dos en V. Confortable et séduisant pour une touche de glamour.', 19.99, 8, 8),
(100, 'Palette de maquillage pour les yeux neutres', 'Palette de maquillage pour les yeux neutres avec des tons chauds et froids. Parfaite pour créer une multitude de looks.', 49.99, 7, 9),
(101, 'Chemise en lin à rayures', 'Chemise en lin à rayures avec col boutonné. Légère et respirante pour les journées ensoleillées.', 79.99, 1, 1),
(102, 'Jean slim taille basse', 'Jean slim taille basse avec effet délavé et détails déchirés. Un incontournable pour un look décontracté.', 89.99, 1, 2),
(103, 'Sac à dos en toile', 'Sac à dos en toile avec compartiment rembourré pour ordinateur portable. Pratique et fonctionnel pour le quotidien.', 99.99, 3, 3),
(104, 'Boucles d\'oreilles pendantes en argent', 'Boucles d\'oreilles pendantes en argent avec perles fantaisie. Accessoire élégant pour toutes les occasions.', 49.99, 3, 12),
(105, 'Casquette de baseball en coton', 'Casquette de baseball en coton avec logo brodé sur le devant. Style décontracté pour un look sportif.', 29.99, 3, 10),
(106, 'Parfum floral pour femme', 'Parfum floral pour femme avec des notes de fleurs blanches. Fragrance délicate et romantique.', 69.99, 9, 5),
(107, 'Montre-bracelet en acier inoxydable argenté', 'Montre-bracelet en acier inoxydable argenté avec cadran noir. Un accessoire intemporel pour homme.', 129.99, 2, 6),
(108, 'Lunettes de soleil rondes en métal', 'Lunettes de soleil rondes en métal avec verres teintés. Style vintage pour un look rétro.', 79.99, 2, 7),
(109, 'Culotte en coton', 'Culotte en coton avec dentelle sur les côtés. Confortable et douce pour une sensation agréable toute la journée.', 14.99, 5, 8),
(110, 'Palette de maquillage pour les yeux scintillants', 'Palette de maquillage pour les yeux scintillants avec des nuances de métallique et de paillettes. Pour un regard éblouissant.', 39.99, 8, 9),
(111, 'Chemisier en soie à col lavallière', 'Chemisier en soie à col lavallière avec imprimé floral. Élégance et féminité pour un look sophistiqué.', 89.99, 7, 1),
(112, 'Pantalon cargo slim fit', 'Pantalon cargo slim fit en coton avec poches multiples. Pratique et tendance pour un look urbain.', 99.99, 7, 2),
(113, 'Sac à main en cuir matelassé', 'Sac à main en cuir matelassé avec chaîne dorée. Un accessoire chic pour compléter votre tenue.', 149.99, 6, 3),
(114, 'Bracelet en argent avec perles', 'Bracelet en argent avec perles et fermoir en forme de cœur. Accessoire délicat pour un poignet élégant.', 59.99, 7, 12),
(115, 'Chapeau de paille à large bord', 'Chapeau de paille à large bord avec ruban en satin. Parfait pour une journée ensoleillée à la plage.', 39.99, 5, 10),
(116, 'Eau de toilette boisée pour homme', 'Eau de toilette boisée pour homme avec des notes de bois et de vétiver. Parfum masculin et élégant.', 79.99, 5, 5),
(117, 'Montre-bracelet en acier inoxydable doré', 'Montre-bracelet en acier inoxydable doré avec cadran blanc. Un accessoire élégant pour toutes les occasions.', 159.99, 2, 6),
(118, 'Lunettes de soleil carrées en écaille', 'Lunettes de soleil carrées en écaille avec verres teintés. Style rétro pour un look tendance.', 109.99, 1, 7),
(119, 'Culotte taille haute en dentelle', 'Culotte taille haute en dentelle avec nœud satiné à l\'avant. Confortable et féminine pour une silhouette élégante.', 24.99, 8, 8),
(120, 'Palette de maquillage pour les lèvres matte', 'Palette de maquillage pour les lèvres matte avec des teintes riches et pigmentées. Pour des lèvres audacieuses et sublimes.', 49.99, 8, 9),
(121, 'Chemise en coton à carreaux', 'Chemise en coton à carreaux avec col boutonné. Parfaite pour un look décontracté et élégant.', 69.99, 7, 1),
(122, 'Jean bootcut taille haute', 'Jean bootcut taille haute avec délavage léger et ourlet évasé. Idéal pour une silhouette allongée.', 79.99, 7, 2),
(123, 'Sac de plage en paille tressée', 'Sac de plage en paille tressée avec anses en corde. Accessoire tendance pour l\'été.', 49.99, 6, 3),
(124, 'Boucles d\'oreilles créoles en argent', 'Boucles d\'oreilles créoles en argent avec motif torsadé. Accessoire intemporel pour sublimer votre look.', 39.99, 7, 12),
(125, 'Chapeau de paille à ruban', 'Chapeau de paille à ruban avec bord large. Parfait pour se protéger du soleil avec style.', 29.99, 7, 10),
(126, 'Parfum vanillé pour femme', 'Parfum vanillé pour femme avec des notes gourmandes et sucrées. Fragrance douce et envoûtante.', 49.99, 4, 5),
(127, 'Montre-bracelet en acier inoxydable doré rose', 'Montre-bracelet en acier inoxydable doré rose avec cadran blanc nacré. Un accessoire élégant et féminin.', 179.99, 9, 6),
(128, 'Lunettes de soleil aviateur en métal', 'Lunettes de soleil aviateur en métal avec verres miroir. Un classique revisité pour un look tendance.', 99.99, 2, 7),
(129, 'Shorty en dentelle et satin', 'Shorty en dentelle et satin avec nœud décoratif à l\'avant. Confortable et séduisant pour une touche de glamour.', 19.99, 3, 8),
(130, 'Palette de maquillage pour les yeux smoky', 'Palette de maquillage pour les yeux smoky avec des tons neutres et foncés. Parfaite pour un regard intense.', 29.99, 8, 9),
(131, 'Chemise en soie à manches longues', 'Chemise en soie à manches longues avec col classique. Élégante et polyvalente pour toutes les occasions.', 129.99, 10, 1),
(132, 'Pantalon cargo en toile', 'Pantalon cargo en toile avec poches cargo et cordon de serrage à la taille. Pratique et décontracté.', 69.99, 6, 2),
(133, 'Sac à main en cuir matelassé', 'Sac à main en cuir matelassé avec chaîne dorée. Un accessoire chic pour une touche d\'élégance.', 149.99, 10, 3),
(134, 'Bracelet en argent avec cœur', 'Bracelet en argent avec pendentif cœur. Accessoire romantique pour compléter votre tenue.', 49.99, 2, 12),
(135, 'Chapeau de paille à large bord', 'Chapeau de paille à large bord avec ruban en satin. Parfait pour une journée ensoleillée à la plage.', 39.99, 9, 10),
(136, 'Eau de toilette fraîche pour homme', 'Eau de toilette fraîche pour homme avec des notes citronnées et marines. Parfum dynamique et tonique.', 59.99, 10, 5),
(137, 'Montre-bracelet en acier inoxydable argenté', 'Montre-bracelet en acier inoxydable argenté avec cadran bleu nuit. Un accessoire élégant pour homme.', 129.99, 4, 6),
(138, 'Lunettes de soleil papillon', 'Lunettes de soleil papillon avec monture en acétate noir. Style rétro-chic pour un look sophistiqué.', 119.99, 6, 7),
(139, 'String en dentelle et satin', 'String en dentelle et satin avec nœud décoratif à l\'arrière. Confortable et séduisant pour une touche de glamour.', 14.99, 7, 8),
(140, 'Palette de maquillage pour les lèvres glossy', 'Palette de maquillage pour les lèvres glossy avec des teintes brillantes et hydratantes. Pour des lèvres pulpeuses et éclatantes.', 39.99, 8, 9),
(141, 'Chemise en lin à manches courtes', 'Chemise en lin à manches courtes avec col mao. Légère et respirante pour les journées chaudes.', 59.99, 7, 1),
(142, 'Short en jean taille haute', 'Short en jean taille haute avec ourlet effiloché. Parfait pour un look décontracté et estival.', 49.99, 9, 2),
(143, 'Sac bandoulière en cuir souple', 'Sac bandoulière en cuir souple avec rabat et boucle métallique. Un accessoire pratique et élégant pour tous les jours.', 79.99, 6, 3),
(144, 'Collier en argent avec pendentif clé', 'Collier en argent avec pendentif clé. Accessoire symbolique pour un style personnel.', 69.99, 3, 12),
(145, 'Chapeau de paille à ruban contrastant', 'Chapeau de paille à ruban contrastant avec bord large. Idéal pour une journée ensoleillée.', 39.99, 7, 10),
(146, 'Eau de parfum fruité pour femme', 'Eau de parfum fruité pour femme avec des notes de fruits rouges. Fragrance légère et pétillante.', 79.99, 5, 5),
(147, 'Montre-bracelet en acier inoxydable doré', 'Montre-bracelet en acier inoxydable doré avec cadran blanc et strass. Un accessoire chic pour femme.', 159.99, 5, 6),
(148, 'Lunettes de soleil rondes en métal', 'Lunettes de soleil rondes en métal avec verres dégradés. Style rétro pour un look vintage.', 99.99, 8, 7),
(149, 'Shorty en dentelle florale', 'Shorty en dentelle florale avec nœud satiné à l\'avant. Confortable et féminin pour une touche de séduction.', 19.99, 5, 8),
(150, 'Palette de maquillage pour les yeux naturels', 'Palette de maquillage pour les yeux naturels avec des tons chauds et neutres. Pour un maquillage discret et élégant.', 29.99, 9, 9),
(151, 'Chemisier en soie à volants', 'Chemisier en soie à volants avec encolure en V. Féminité et élégance pour un look sophistiqué.', 89.99, 10, 1),
(152, 'Short en lin avec ceinture', 'Short en lin avec ceinture tissée et poches latérales. Parfait pour une tenue estivale décontractée.', 69.99, 1, 2),
(153, 'Sac seau en cuir souple', 'Sac seau en cuir souple avec anses ajustables. Un accessoire pratique et tendance pour tous les jours.', 99.99, 6, 3),
(154, 'Bracelet en argent avec pendentif étoile', 'Bracelet en argent avec pendentif étoile. Accessoire délicat pour un look élégant et sophistiqué.', 59.99, 7, 12),
(155, 'Chapeau de paille à large bord', 'Chapeau de paille à large bord avec ruban en gros-grain. Parfait pour une journée ensoleillée.', 39.99, 6, 10),
(156, 'Eau de toilette fraîche pour homme', 'Eau de toilette fraîche pour homme avec des notes d\'agrumes et de menthe. Parfum dynamique et rafraîchissant.', 69.99, 8, 5),
(157, 'Montre-bracelet en acier inoxydable noir', 'Montre-bracelet en acier inoxydable noir avec cadran argenté. Un accessoire élégant et moderne pour homme.', 129.99, 2, 6),
(158, 'Lunettes de soleil rondes en écaille', 'Lunettes de soleil rondes en écaille avec verres marron dégradés. Style rétro-chic pour un look vintage.', 109.99, 4, 7),
(159, 'String en dentelle et satin', 'String en dentelle et satin avec nœud décoratif à l\'arrière. Confortable et séduisant pour une touche de féminité.', 14.99, 5, 8),
(160, 'Palette de maquillage pour les lèvres matte', 'Palette de maquillage pour les lèvres matte avec des teintes riches et veloutées. Pour des lèvres parfaitement maquillées.', 39.99, 3, 9),
(161, 'Chemise en coton à rayures', 'Chemise en coton à rayures avec col boutonné. Parfaite pour un look décontracté et élégant.', 69.99, 7, 1),
(162, 'Jean slim taille basse', 'Jean slim taille basse avec effet délavé et ourlet évasé. Idéal pour une silhouette allongée.', 79.99, 7, 2),
(163, 'Sac de plage en paille tressée', 'Sac de plage en paille tressée avec anses en corde. Accessoire tendance pour l\'été.', 49.99, 5, 3),
(164, 'Boucles d\'oreilles créoles en argent', 'Boucles d\'oreilles créoles en argent avec motif torsadé. Accessoire intemporel pour sublimer votre look.', 39.99, 4, 12),
(165, 'Chapeau de paille à ruban', 'Chapeau de paille à ruban avec bord large. Parfait pour se protéger du soleil avec style.', 29.99, 4, 10),
(166, 'Parfum vanillé pour femme', 'Parfum vanillé pour femme avec des notes gourmandes et sucrées. Fragrance douce et envoûtante.', 49.99, 5, 5),
(167, 'Montre-bracelet en acier inoxydable doré rose', 'Montre-bracelet en acier inoxydable doré rose avec cadran blanc nacré. Un accessoire élégant et féminin.', 179.99, 4, 6),
(168, 'Lunettes de soleil aviateur en métal', 'Lunettes de soleil aviateur en métal avec verres miroir. Un classique revisité pour un look tendance.', 99.99, 5, 7),
(169, 'Shorty en dentelle et satin', 'Shorty en dentelle et satin avec nœud décoratif à l\'avant. Confortable et séduisant pour une touche de glamour.', 19.99, 3, 8),
(170, 'Palette de maquillage pour les yeux smoky', 'Palette de maquillage pour les yeux smoky avec des tons neutres et foncés. Parfaite pour un regard intense.', 29.99, 9, 9),
(171, 'Chemise en soie à manches longues', 'Chemise en soie à manches longues avec col classique. Élégante et polyvalente pour toutes les occasions.', 129.99, 4, 1),
(172, 'Pantalon cargo en toile', 'Pantalon cargo en toile avec poches cargo et cordon de serrage à la taille. Pratique et décontracté.', 69.99, 5, 2),
(173, 'Sac à main en cuir matelassé', 'Sac à main en cuir matelassé avec chaîne dorée. Un accessoire chic pour une touche d\'élégance.', 149.99, 3, 3),
(174, 'Bracelet en argent avec cœur', 'Bracelet en argent avec pendentif cœur. Accessoire romantique pour compléter votre tenue.', 49.99, 8, 12),
(175, 'Chapeau de paille à large bord', 'Chapeau de paille à large bord avec ruban en satin. Parfait pour une journée ensoleillée à la plage.', 39.99, 2, 10),
(176, 'Eau de parfum fruité pour femme', 'Eau de parfum fruité pour femme avec des notes de fruits rouges. Fragrance légère et pétillante.', 79.99, 6, 5),
(177, 'Montre-bracelet en acier inoxydable doré', 'Montre-bracelet en acier inoxydable doré avec cadran blanc et strass. Un accessoire chic pour femme.', 159.99, 2, 6),
(178, 'Lunettes de soleil rondes en métal', 'Lunettes de soleil rondes en métal avec verres dégradés. Style rétro pour un look vintage.', 99.99, 4, 7),
(179, 'Shorty en dentelle florale', 'Shorty en dentelle florale avec nœud satiné à l\'avant. Confortable et féminin pour une touche de séduction.', 19.99, 2, 8),
(180, 'Palette de maquillage pour les yeux naturels', 'Palette de maquillage pour les yeux naturels avec des tons chauds et neutres. Pour un maquillage discret et élégant.', 29.99, 6, 9),
(181, 'Chemise en coton à rayures', 'Chemise en coton à rayures avec col boutonné. Parfaite pour un look décontracté et élégant.', 69.99, 4, 1),
(182, 'Jean slim taille basse', 'Jean slim taille basse avec effet délavé et ourlet évasé. Idéal pour une silhouette allongée.', 79.99, 4, 2),
(183, 'Sac de plage en paille tressée', 'Sac de plage en paille tressée avec anses en corde. Accessoire tendance pour l\'été.', 49.99, 5, 3),
(184, 'Boucles d\'oreilles créoles en argent', 'Boucles d\'oreilles créoles en argent avec motif torsadé. Accessoire intemporel pour sublimer votre look.', 39.99, 4, 12),
(185, 'Chapeau de paille à ruban', 'Chapeau de paille à ruban avec bord large. Parfait pour se protéger du soleil avec style.', 29.99, 5, 10),
(186, 'Parfum vanillé pour femme', 'Parfum vanillé pour femme avec des notes gourmandes et sucrées. Fragrance douce et envoûtante.', 49.99, 4, 5),
(187, 'Montre-bracelet en acier inoxydable doré rose', 'Montre-bracelet en acier inoxydable doré rose avec cadran blanc nacré. Un accessoire élégant et féminin.', 179.99, 2, 6),
(188, 'Lunettes de soleil aviateur en métal', 'Lunettes de soleil aviateur en métal avec verres miroir. Un classique revisité pour un look tendance.', 99.99, 7, 7),
(189, 'Shorty en dentelle et satin', 'Shorty en dentelle et satin avec nœud décoratif à l\'avant. Confortable et séduisant pour une touche de glamour.', 19.99, 10, 8),
(190, 'Palette de maquillage pour les yeux smoky', 'Palette de maquillage pour les yeux smoky avec des tons neutres et foncés. Parfaite pour un regard intense.', 29.99, 6, 9),
(191, 'Chemise en soie à manches longues', 'Chemise en soie à manches longues avec col classique. Élégante et polyvalente pour toutes les occasions.', 129.99, 2, 1),
(192, 'Pantalon cargo en toile', 'Pantalon cargo en toile avec poches cargo et cordon de serrage à la taille. Pratique et décontracté.', 69.99, 1, 2),
(193, 'Sac à main en cuir matelassé', 'Sac à main en cuir matelassé avec chaîne dorée. Un accessoire chic pour une touche d\'élégance.', 149.99, 9, 3),
(194, 'Bracelet en argent avec cœur', 'Bracelet en argent avec pendentif cœur. Accessoire romantique pour compléter votre tenue.', 49.99, 2, 12),
(195, 'Chapeau de paille à large bord', 'Chapeau de paille à large bord avec ruban en satin. Parfait pour une journée ensoleillée à la plage.', 39.99, 3, 10),
(196, 'Eau de parfum fruité pour femme', 'Eau de parfum fruité pour femme avec des notes de fruits rouges. Fragrance légère et pétillante.', 79.99, 8, 5),
(197, 'Montre-bracelet en acier inoxydable doré', 'Montre-bracelet en acier inoxydable doré avec cadran blanc et strass. Un accessoire chic pour femme.', 159.99, 1, 6),
(198, 'Lunettes de soleil rondes en métal', 'Lunettes de soleil rondes en métal avec verres dégradés. Style rétro pour un look vintage.', 99.99, 9, 7),
(199, 'Shorty en dentelle florale', 'Shorty en dentelle florale avec nœud satiné à l\'avant. Confortable et féminin pour une touche de séduction.', 19.99, 2, 8),
(200, 'Palette de maquillage pour les yeux naturels', 'Palette de maquillage pour les yeux naturels avec des tons chauds et neutres. Pour un maquillage discret et élégant.', 29.99, 3, 9);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Index pour la table `commande_produit`
--
ALTER TABLE `commande_produit`
  ADD PRIMARY KEY (`commande_id`,`produit_id`),
  ADD KEY `produit_id` (`produit_id`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marque_id` (`marque_id`),
  ADD KEY `categorie_id` (`categorie_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `commande_produit`
--
ALTER TABLE `commande_produit`
  ADD CONSTRAINT `commande_produit_ibfk_1` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`id`),
  ADD CONSTRAINT `commande_produit_ibfk_2` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`id`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`marque_id`) REFERENCES `marque` (`id`),
  ADD CONSTRAINT `produit_ibfk_2` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
