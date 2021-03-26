CREATE DATABASE  IF NOT EXISTS `datacustodian` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `datacustodian`;
-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: datacustodian
-- ------------------------------------------------------
-- Server version	5.5.62-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `reading_qualities`
--

DROP TABLE IF EXISTS `reading_qualities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reading_qualities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quality` varchar(255) DEFAULT NULL,
  `interval_reading_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_11d630a57d684f26894e1cd6aa6` (`interval_reading_id`),
  CONSTRAINT `FK_11d630a57d684f26894e1cd6aa6` FOREIGN KEY (`interval_reading_id`) REFERENCES `interval_readings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reading_qualities`
--

LOCK TABLES `reading_qualities` WRITE;
/*!40000 ALTER TABLE `reading_qualities` DISABLE KEYS */;
INSERT INTO `reading_qualities` VALUES (1,'8',1),(2,'7',2),(3,'8',1341),(4,'7',1342),(5,'8',2681),(6,'7',2682),(7,'8',4021),(8,'7',4022),(9,'8',5361),(10,'7',5362),(11,'8',6701),(12,'7',6702),(13,'8',8041),(14,'7',8042),(15,'8',9381),(16,'7',9382),(17,'8',10721),(18,'7',10722),(19,'8',12061),(20,'7',12062),(21,'8',13401),(22,'7',13402),(23,'8',14741),(24,'7',14742);
/*!40000 ALTER TABLE `reading_qualities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-26 14:51:00
