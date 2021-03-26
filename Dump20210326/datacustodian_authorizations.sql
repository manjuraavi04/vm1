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
  KEY `FK_subscriptionkey` (`subscription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorizations`
--

LOCK TABLES `authorizations` WRITE;
/*!40000 ALTER TABLE `authorizations` DISABLE KEYS */;
INSERT INTO `authorizations` VALUES (1,NULL,'2015-05-15 15:02:39',NULL,'self',NULL,'up','2015-05-15 15:02:40','A1635478-76A7-449D-8AE9-EBB191352C25','2a85f4bd-30db-4b7d-8f41-b046b0566cb3','https://localhost:8443/DataCustodian/espi/1_1/resource/Authorization/1',0,0,NULL,NULL,NULL,NULL,1747076559,NULL,0,0,NULL,'https://localhost:8443/DataCustodian/espi/1_1/resource/',NULL,'FB=3_19_32_33_34_35_36_37_38_41_44_45',NULL,'1','data_custodian',0,1,0,1),(2,NULL,'2015-05-15 15:02:53',NULL,'self',NULL,'up','2015-05-15 15:02:53','63463495-7D32-4E45-8775-3B35AC60E13F','03909715-b0ca-4797-9a9a-601fff1d2848','https://localhost:8443/DataCustodian/espi/1_1/resource/Authorization/2',0,0,NULL,NULL,NULL,NULL,1747076572,NULL,0,0,NULL,'https://localhost:8443/DataCustodian/espi/1_1/resource/Batch/RetailCustomer/**/UsagePoint',NULL,'FB=45',NULL,'1','upload',0,3,0,2),(3,NULL,'2015-05-15 15:02:56',NULL,'self',NULL,'up','2015-05-15 15:02:56','766A7FBC-BB0B-41D1-801F-0E91EA0A3A64','53520584-d640-4812-a721-8a1afa459ff7','https://localhost:8443/DataCustodian/espi/1_1/resource/Authorization/3',0,0,NULL,NULL,NULL,NULL,1747076575,NULL,0,0,NULL,'https://localhost:8443/DataCustodian/espi/1_1/resource/Batch/Bulk/**',NULL,'FB=34_35',NULL,'1','third_party_admin',0,2,0,3),(4,NULL,'2015-05-15 15:03:02',NULL,'self',NULL,'up','2015-05-15 15:03:02','403CBA0C-46F5-4E64-816C-5D11C06DEB7A','c66b0854-ea1f-4e24-afb7-afab9e0f6c5e','https://localhost:8443/DataCustodian/espi/1_1/resource/Authorization/4',0,0,NULL,NULL,NULL,NULL,1747076581,NULL,0,0,NULL,'https://localhost:8443/DataCustodian/espi/1_1/resource/ApplicationInformation/2',NULL,'FB=36_40',NULL,'1','REGISTRATION_third_party',0,2,0,4);
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

-- Dump completed on 2021-03-26 14:51:00
