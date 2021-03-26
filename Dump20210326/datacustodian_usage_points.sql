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
-- Table structure for table `usage_points`
--

DROP TABLE IF EXISTS `usage_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usage_points` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `published` datetime DEFAULT NULL,
  `self_link_href` varchar(255) DEFAULT NULL,
  `self_link_rel` varchar(255) DEFAULT NULL,
  `up_link_href` varchar(255) DEFAULT NULL,
  `up_link_rel` varchar(255) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `uuid` varchar(255) NOT NULL,
  `roleFlags` tinyblob,
  `status` smallint(6) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `localTimeParameters_id` bigint(20) DEFAULT NULL,
  `retail_customer_id` bigint(20) DEFAULT NULL,
  `serviceCategory_kind` bigint(20) NOT NULL,
  `serviceDeliveryPoint_id` bigint(20) DEFAULT NULL,
  `subscription_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_d3b5c06a4b994ad8906ead9757f` (`uuid`),
  KEY `FK_9fa5cbe1eaeb4dbfb7209cb0213` (`localTimeParameters_id`),
  KEY `FK_41107ba4248e4bf79b62c405385` (`retail_customer_id`),
  KEY `FK_c3909436c6934c8bb14da2bb93b` (`serviceDeliveryPoint_id`),
  KEY `FK_53bcef9479ff4522b63a46e018c` (`subscription_id`),
  CONSTRAINT `FK_41107ba4248e4bf79b62c405385` FOREIGN KEY (`retail_customer_id`) REFERENCES `retail_customers` (`id`),
  CONSTRAINT `FK_53bcef9479ff4522b63a46e018c` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`),
  CONSTRAINT `FK_9fa5cbe1eaeb4dbfb7209cb0213` FOREIGN KEY (`localTimeParameters_id`) REFERENCES `time_configurations` (`id`),
  CONSTRAINT `FK_c3909436c6934c8bb14da2bb93b` FOREIGN KEY (`serviceDeliveryPoint_id`) REFERENCES `service_delivery_points` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usage_points`
--

LOCK TABLES `usage_points` WRITE;
/*!40000 ALTER TABLE `usage_points` DISABLE KEYS */;
INSERT INTO `usage_points` VALUES (1,'Front Electric Meter','2012-10-24 00:00:00','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F','self','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint','up','2012-10-24 00:00:00','48C2A019-5598-4E16-B0F9-49E4FF27F5FB',NULL,NULL,NULL,1,NULL,0,NULL,NULL),(2,'A Temporary UsagePoint Description','2021-01-24 16:59:00',NULL,'self',NULL,'up','2021-01-24 16:59:00','15B0A4ED-CCF4-4521-A0A1-9FF650EC8A6B',NULL,NULL,NULL,NULL,9,0,NULL,NULL);
/*!40000 ALTER TABLE `usage_points` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-26 14:50:59
