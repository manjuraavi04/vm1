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
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `published` datetime DEFAULT NULL,
  `self_link_href` varchar(255) DEFAULT NULL,
  `self_link_rel` varchar(255) DEFAULT 'self',
  `up_link_href` varchar(255) DEFAULT NULL,
  `up_link_rel` varchar(255) DEFAULT 'up',
  `updated` datetime DEFAULT NULL,
  `uuid` varchar(255) NOT NULL,
  `hashedId` varchar(255) DEFAULT NULL,
  `lastUpdate` datetime DEFAULT NULL,
  `applicationInformation_id` bigint(20) NOT NULL,
  `authorization_id` bigint(20) DEFAULT NULL,
  `retail_customer_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_a027c87418ce4d7abbde7ee5eec` (`applicationInformation_id`),
  KEY `FK_a68a2938cbc142c3b82f57cb4b1` (`authorization_id`),
  KEY `FK_e38a940ce8ed4d8983d1d5dac6e` (`retail_customer_id`),
  CONSTRAINT `FK_a027c87418ce4d7abbde7ee5eec` FOREIGN KEY (`applicationInformation_id`) REFERENCES `application_information` (`id`),
  CONSTRAINT `FK_e38a940ce8ed4d8983d1d5dac6e` FOREIGN KEY (`retail_customer_id`) REFERENCES `retail_customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (1,NULL,'2015-05-15 15:02:40',NULL,'self',NULL,'up','2015-05-15 15:02:40','BE830DC5-3F21-4967-AA35-EFDF8C61A914','4e625c48-3ec2-4571-9e21-d1da0c57516d','2015-05-15 15:02:40',1,1,0),(2,NULL,'2015-05-15 15:02:53',NULL,'self',NULL,'up','2015-05-15 15:02:53','55AE97C3-2DD4-4762-B7BF-11AED8D7AE58','7a60b601-f2c0-41aa-8e71-8dbe42c028d9','2015-05-15 15:02:53',3,2,0),(3,NULL,'2015-05-15 15:02:56',NULL,'self',NULL,'up','2015-05-15 15:02:56','991C0B49-97BA-48C2-BE30-7545C027F72E','82e034de-0812-4c8f-879a-fc367e7fe224','2015-05-15 15:02:56',2,3,0),(4,NULL,'2015-05-15 15:03:02',NULL,'self',NULL,'up','2015-05-15 15:03:02','99F1F395-8883-44F7-8D1D-1DBABDCB7C1F','38a6bea3-cdad-4ab6-af81-2034ad112b0e','2015-05-15 15:03:02',2,4,0);
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
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
