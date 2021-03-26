CREATE DATABASE  IF NOT EXISTS `thirdparty` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `thirdparty`;
-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: thirdparty
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
-- Table structure for table `interval_readings`
--

DROP TABLE IF EXISTS `interval_readings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interval_readings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cost` bigint(20) DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `start` bigint(20) DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `interval_block_id` bigint(20) DEFAULT NULL,
  `consumptionTier` bigint(20) DEFAULT NULL,
  `tou` bigint(20) DEFAULT NULL,
  `cpp` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_982b1bcd359b47fcb5823a43d21` (`interval_block_id`),
  CONSTRAINT `FK_982b1bcd359b47fcb5823a43d21` FOREIGN KEY (`interval_block_id`) REFERENCES `interval_blocks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interval_readings`
--

LOCK TABLES `interval_readings` WRITE;
/*!40000 ALTER TABLE `interval_readings` DISABLE KEYS */;
/*!40000 ALTER TABLE `interval_readings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-26 14:50:57
