-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)

--

-- Host: localhost    Database: billeterie

-- ------------------------------------------------------

-- Server version               10.4.24-MariaDB



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `artiste`

--



DROP TABLE IF EXISTS `artiste`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `artiste` (

                           `id` int(11) NOT NULL AUTO_INCREMENT,

                           `nom` varchar(32) DEFAULT NULL,

                           PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `artiste`

--



LOCK TABLES `artiste` WRITE;

/*!40000 ALTER TABLE `artiste` DISABLE KEYS */;

/*!40000 ALTER TABLE `artiste` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `artiste_concert`

--



DROP TABLE IF EXISTS `artiste_concert`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `artiste_concert` (

                                   `Artiste_id` int(11) NOT NULL,

                                   `Concert_id` int(11) NOT NULL,

                                   KEY `Artiste_id` (`Artiste_id`),

                                   KEY `Concert_id` (`Concert_id`),

                                   CONSTRAINT `artiste_concert_ibfk_1` FOREIGN KEY (`Artiste_id`) REFERENCES `artiste` (`id`),

                                   CONSTRAINT `artiste_concert_ibfk_2` FOREIGN KEY (`Concert_id`) REFERENCES `concert` (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `artiste_concert`

--



LOCK TABLES `artiste_concert` WRITE;

/*!40000 ALTER TABLE `artiste_concert` DISABLE KEYS */;

/*!40000 ALTER TABLE `artiste_concert` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `artiste_style`

--



DROP TABLE IF EXISTS `artiste_style`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `artiste_style` (

                                 `Artiste_id` int(11) NOT NULL,

                                 `Style_id` int(11) NOT NULL,

                                 KEY `Artiste_id` (`Artiste_id`),

                                 KEY `Style_id` (`Style_id`),

                                 CONSTRAINT `artiste_style_ibfk_1` FOREIGN KEY (`Artiste_id`) REFERENCES `artiste` (`id`),

                                 CONSTRAINT `artiste_style_ibfk_2` FOREIGN KEY (`Style_id`) REFERENCES `style` (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `artiste_style`

--



LOCK TABLES `artiste_style` WRITE;

/*!40000 ALTER TABLE `artiste_style` DISABLE KEYS */;

/*!40000 ALTER TABLE `artiste_style` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `client`

--



DROP TABLE IF EXISTS `client`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `client` (

                          `id` int(11) NOT NULL AUTO_INCREMENT,

                          `Prénom` varchar(32) DEFAULT NULL,

                          `Nom` varchar(32) DEFAULT NULL,

                          `adress` text DEFAULT NULL,

                          `mail` varchar(64) DEFAULT NULL,

                          `tel` varchar(32) DEFAULT NULL,

                          PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `client`

--



LOCK TABLES `client` WRITE;

/*!40000 ALTER TABLE `client` DISABLE KEYS */;

/*!40000 ALTER TABLE `client` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `commande`

--



DROP TABLE IF EXISTS `commande`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `commande` (

                            `id` int(11) NOT NULL AUTO_INCREMENT,

                            `Numero` int(11) DEFAULT NULL,

                            `date` date DEFAULT NULL,

                            PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `commande`

--



LOCK TABLES `commande` WRITE;

/*!40000 ALTER TABLE `commande` DISABLE KEYS */;

/*!40000 ALTER TABLE `commande` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `commande_ticket`

--



DROP TABLE IF EXISTS `commande_ticket`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `commande_ticket` (

                                   `Commande_id` int(11) NOT NULL,

                                   `Ticket_id` int(11) NOT NULL,

                                   KEY `Commande_id` (`Commande_id`),

                                   KEY `Ticket_id` (`Ticket_id`),

                                   CONSTRAINT `commande_ticket_ibfk_1` FOREIGN KEY (`Commande_id`) REFERENCES `commande` (`id`),

                                   CONSTRAINT `commande_ticket_ibfk_2` FOREIGN KEY (`Ticket_id`) REFERENCES `ticket` (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `commande_ticket`

--



LOCK TABLES `commande_ticket` WRITE;

/*!40000 ALTER TABLE `commande_ticket` DISABLE KEYS */;

/*!40000 ALTER TABLE `commande_ticket` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `concert`

--



DROP TABLE IF EXISTS `concert`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `concert` (

                           `id` int(11) NOT NULL AUTO_INCREMENT,

                           `nom` varchar(32) DEFAULT NULL,

                           `date` date DEFAULT NULL,

                           `lieu` varchar(32) DEFAULT NULL,

                           PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `concert`

--



LOCK TABLES `concert` WRITE;

/*!40000 ALTER TABLE `concert` DISABLE KEYS */;

/*!40000 ALTER TABLE `concert` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `style`

--



DROP TABLE IF EXISTS `style`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `style` (

                         `id` int(11) NOT NULL AUTO_INCREMENT,

                         `nom` varchar(32) DEFAULT NULL,

                         `descriptif` text DEFAULT NULL,

                         PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `style`

--



LOCK TABLES `style` WRITE;

/*!40000 ALTER TABLE `style` DISABLE KEYS */;

/*!40000 ALTER TABLE `style` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `ticket`

--



DROP TABLE IF EXISTS `ticket`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `ticket` (

                          `id` int(11) NOT NULL AUTO_INCREMENT,

                          `categorie` int(11) DEFAULT NULL,

                          `prix` float DEFAULT NULL,

                          PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `ticket`

--



LOCK TABLES `ticket` WRITE;

/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;

/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;

UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;