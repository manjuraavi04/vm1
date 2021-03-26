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
-- Table structure for table `usage_point_related_links`
--

DROP TABLE IF EXISTS `usage_point_related_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usage_point_related_links` (
  `usage_point_id` bigint(20) NOT NULL,
  `href` varchar(255) DEFAULT NULL,
  `rel` varchar(255) DEFAULT NULL,
  KEY `FK_4f728266adfa41b2b8abc65c6e9` (`usage_point_id`),
  CONSTRAINT `FK_4f728266adfa41b2b8abc65c6e9` FOREIGN KEY (`usage_point_id`) REFERENCES `usage_points` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usage_point_related_links`
--

LOCK TABLES `usage_point_related_links` WRITE;
/*!40000 ALTER TABLE `usage_point_related_links` DISABLE KEYS */;
INSERT INTO `usage_point_related_links` VALUES (1,'/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading','related'),(1,'/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/UsageSummary','related'),(1,'/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/ElectricPowerQualitySummary','related'),(1,'/espi/1_1/resource/LocalTimeParameters/01','related');
/*!40000 ALTER TABLE `usage_point_related_links` ENABLE KEYS */;
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
