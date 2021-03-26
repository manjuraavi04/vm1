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
-- Table structure for table `authorizations`
--

DROP TABLE IF EXISTS `authorizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authorizations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `published` datetime DEFAULT NULL,
  `self_link_href` varchar(255) DEFAULT NULL,
  `self_link_rel` varchar(255) DEFAULT 'self',
  `up_link_href` varchar(255) DEFAULT NULL,
  `up_link_rel` varchar(255) DEFAULT 'up',
  `updated` datetime DEFAULT NULL,
  `uuid` varchar(255) NOT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `authorization_uri` varchar(255) DEFAULT NULL,
  `ap_duration` bigint(20) DEFAULT NULL,
  `ap_start` bigint(20) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `error` int(11) DEFAULT NULL,
  `errorDescription` varchar(255) DEFAULT NULL,
  `errorUri` varchar(255) DEFAULT NULL,
  `expiresIn` bigint(20) DEFAULT NULL,
  `grantType` int(11) DEFAULT NULL,
  `pp_duration` bigint(20) DEFAULT NULL,
  `pp_start` bigint(20) DEFAULT NULL,
  `refreshToken` varchar(255) DEFAULT NULL,
  `resourceURI` varchar(255) DEFAULT NULL,
  `responseType` int(11) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `third_party` varchar(255) DEFAULT NULL,
  `tokenType` int(11) DEFAULT NULL,
  `application_information_id` bigint(20) DEFAULT NULL,
  `retail_customer_id` bigint(20) DEFAULT NULL,
  `subscription_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_d0761ae9d2dd44c49867ac4ec4b` (`application_information_id`),
  KEY `FK_a4fccef421a14e0ead5c1b9753d` (`retail_customer_id`),
  KEY `FK_subscriptionkey` (`subscription_id`),
  CONSTRAINT `FK_a4fccef421a14e0ead5c1b9753d` FOREIGN KEY (`retail_customer_id`) REFERENCES `retail_customers` (`id`),
  CONSTRAINT `FK_d0761ae9d2dd44c49867ac4ec4b` FOREIGN KEY (`application_information_id`) REFERENCES `application_information` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorizations`
--

LOCK TABLES `authorizations` WRITE;
/*!40000 ALTER TABLE `authorizations` DISABLE KEYS */;
INSERT INTO `authorizations` VALUES (1,NULL,'2014-05-12 09:02:03',NULL,'self',NULL,'up','2014-05-12 09:02:03','0BA247E0-87F0-41E1-BB50-271468B00DC0','75dd9c46-becf-48b5-9cb5-9c3233d718d0','http://localhost:8080/DataCustodian/espi/1_1/resource/Authorization/2',0,0,NULL,NULL,NULL,NULL,31536000,NULL,0,0,NULL,'http://localhost:8080/DataCustodian/espi/1_1/resource/Batch/Bulk',NULL,'FB=34_35',NULL,'1','third_party_admin',0,1,0,NULL),(2,NULL,'2014-05-12 09:02:03',NULL,'self',NULL,'up','2014-05-12 09:02:03','2BBCC436-E545-459F-90E9-99113C11FFD4','d89bb056-0f02-4d47-9fd2-ec6a19ba8d0c','http://localhost:8080/DataCustodian/espi/1_1/resource/Authorization/4',0,0,NULL,NULL,NULL,NULL,31536000,NULL,0,0,NULL,'http://localhost:8080/DataCustodian/espi/1_1/resource/ApplicationInformation/2',NULL,'FB=36_40',NULL,'1','REGISTRATION_third_party',0,1,0,NULL);
/*!40000 ALTER TABLE `authorizations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-26 14:50:58
