-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: forum
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(32) NOT NULL,
  `descriptif` text NOT NULL,
  `date_heure_creation` datetime NOT NULL,
  `actif` tinyint(1) NOT NULL,
  `createur_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_createur_id` (`createur_id`),
  CONSTRAINT `fk_createur_id` FOREIGN KEY (`createur_id`) REFERENCES `utilisateur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(32) NOT NULL,
  `descriptif` text NOT NULL,
  `nombre_de_likes` int NOT NULL,
  `date_heure_creation` datetime NOT NULL,
  `actif` tinyint(1) NOT NULL,
  `createur_id` int NOT NULL,
  `sujet_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_createur_id1` (`createur_id`),
  KEY `sujet_id` (`sujet_id`),
  CONSTRAINT `fk_createur_id1` FOREIGN KEY (`createur_id`) REFERENCES `utilisateur` (`id`),
  CONSTRAINT `sujet_id` FOREIGN KEY (`sujet_id`) REFERENCES `sujet` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sujet`
--

DROP TABLE IF EXISTS `sujet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sujet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(32) NOT NULL,
  `descriptif` text NOT NULL,
  `date_heure_creation` datetime NOT NULL,
  `actif` tinyint(1) NOT NULL,
  `forum_id` int NOT NULL,
  `createur_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createur_id` (`createur_id`),
  KEY `forum_id` (`forum_id`),
  CONSTRAINT `createur_id` FOREIGN KEY (`createur_id`) REFERENCES `utilisateur` (`id`),
  CONSTRAINT `forum_id` FOREIGN KEY (`forum_id`) REFERENCES `forum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sujet`
--

LOCK TABLES `sujet` WRITE;
/*!40000 ALTER TABLE `sujet` DISABLE KEYS */;
/*!40000 ALTER TABLE `sujet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilisateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(32) NOT NULL,
  `mdp` varchar(32) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `banni` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 12:07:40
