CREATE DATABASE  IF NOT EXISTS `qa_test_eniki` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `qa_test_eniki`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: qa_test_eniki
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `idgroups` int NOT NULL,
  `datastart` date NOT NULL,
  `datafinish` date NOT NULL,
  PRIMARY KEY (`idgroups`),
  UNIQUE KEY `idgroups_UNIQUE` (`idgroups`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'2021-01-20','2021-03-20'),(2,'2021-03-21','2021-06-20'),(3,'2021-06-21','2021-09-20');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hw_progress`
--

DROP TABLE IF EXISTS `hw_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hw_progress` (
  `idhw_progress` int NOT NULL AUTO_INCREMENT,
  `studentsname` varchar(60) NOT NULL,
  `hw_number` int NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`idhw_progress`,`studentsname`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hw_progress`
--

LOCK TABLES `hw_progress` WRITE;
/*!40000 ALTER TABLE `hw_progress` DISABLE KEYS */;
INSERT INTO `hw_progress` VALUES (1,'Ivan Ivanov',1,1),(2,'Ivan Ivanov',1,1),(3,'Ivan Ivanov',2,1),(4,'Ivan Ivanov',3,1),(5,'Ivan Ivanov',4,1),(6,'Ivan Ivanov',5,1),(7,'Petr Petrov',6,1),(8,'Petr Petrov',7,1),(9,'Petr Petrov',8,1),(10,'Petr Petrov',9,1),(11,'Petr Petrov',10,1),(12,'Pavel Pavlov',1,0),(13,'Pavel Pavlov',2,0),(14,'Pavel Pavlov',3,0),(15,'Pavel Pavlov',4,0),(16,'Pavel Pavlov',5,0),(17,'Masha Mareva',6,0),(18,'Masha Mareva',7,0),(19,'Masha Mareva',8,0),(20,'Masha Mareva',9,0),(21,'Masha Mareva',10,0),(22,'Greg Cox',1,0),(23,'Greg Cox',2,1),(24,'Greg Cox',3,0),(25,'Greg Cox',4,1),(26,'Greg Cox',5,0),(27,'Justin Davies',6,1),(28,'Justin Davies',7,0),(29,'Justin Davies',8,1),(30,'Justin Davies',9,0),(31,'Justin Davies',10,1),(32,'Jessica Harris',1,1),(33,'Jessica Harris',2,1),(34,'Jessica Harris',3,0),(35,'Jessica Harris',4,0),(36,'Jessica Harris',5,0),(37,'Poppy Ponchick',6,1),(38,'Poppy Ponchick',7,1),(39,'Poppy Ponchick',8,0),(40,'Poppy Ponchick',9,0),(41,'Poppy Ponchick',10,1),(42,'Miron Admiral',1,1),(43,'Miron Admiral',2,1),(44,'Miron Admiral',3,1),(45,'Miron Admiral',4,1),(46,'Miron Admiral',5,1),(47,'Rosa May',6,1),(48,'Rosa May',7,1),(49,'Rosa May',8,1),(50,'Rosa May',9,1),(51,'Rosa May',10,1),(52,'Oscar Dicaprio',1,0),(53,'Oscar Dicaprio',2,0),(54,'Oscar Dicaprio',3,0),(55,'Oscar Dicaprio',4,0),(56,'Oscar Dicaprio',5,0),(57,'James Oliver',6,0),(58,'James Oliver',7,0),(59,'James Oliver',8,0),(60,'James Oliver',9,0),(61,'James Oliver',10,0),(62,'Maman Papanov',1,1),(63,'Maman Papanov',2,1),(64,'Maman Papanov',3,1),(65,'Maman Papanov',4,1),(66,'Maman Papanov',5,1),(67,'Leo Remi',6,1),(68,'Leo Remi',7,1),(69,'Leo Remi',8,1),(70,'Leo Remi',9,1),(71,'Leo Remi',10,1),(72,'Barny Sam',1,0),(73,'Barny Sam',2,0),(74,'Barny Sam',3,0),(75,'Barny Sam',4,0),(76,'Barny Sam',5,0);
/*!40000 ALTER TABLE `hw_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `idstudents` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `groupe_number` int NOT NULL,
  PRIMARY KEY (`idstudents`),
  UNIQUE KEY `idstudents_UNIQUE` (`idstudents`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Ivan Ivanov',1),(2,'Petr Petrov',1),(3,'Pavel Pavlov',1),(4,'Masha Mareva',1),(5,'Greg Cox',1),(6,'Justin Davies',2),(7,'Jessica Harris',2),(8,'Poppy Ponchick',2),(9,'Miron Admiral',2),(10,'Rosa May',2),(11,'Oscar Dicaprio',3),(12,'James Oliver',3),(13,'Maman Papanov',3),(14,'Leo Remi',3),(15,'Barny Sam',3);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works`
--

DROP TABLE IF EXISTS `works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `works` (
  `idworks` int NOT NULL,
  `score` varchar(45) NOT NULL,
  PRIMARY KEY (`idworks`),
  UNIQUE KEY `idworks_UNIQUE` (`idworks`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works`
--

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` VALUES (1,'50'),(2,'70'),(3,'50'),(4,'30'),(5,'20'),(6,'70'),(7,'55'),(8,'20'),(9,'50'),(10,'100');
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-22 15:08:30
