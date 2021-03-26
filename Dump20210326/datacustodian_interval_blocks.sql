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
-- Table structure for table `interval_blocks`
--

DROP TABLE IF EXISTS `interval_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interval_blocks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `published` datetime DEFAULT NULL,
  `self_link_href` varchar(255) DEFAULT NULL,
  `self_link_rel` varchar(255) DEFAULT NULL,
  `up_link_href` varchar(255) DEFAULT NULL,
  `up_link_rel` varchar(255) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `uuid` varchar(255) NOT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `start` bigint(20) DEFAULT NULL,
  `meter_reading_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_52e33c3a319146ea9dcc64bebd0` (`uuid`),
  KEY `FK_23dcffa0baa44ffb817767d815f` (`meter_reading_id`),
  CONSTRAINT `FK_23dcffa0baa44ffb817767d815f` FOREIGN KEY (`meter_reading_id`) REFERENCES `meter_readings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interval_blocks`
--

LOCK TABLES `interval_blocks` WRITE;
/*!40000 ALTER TABLE `interval_blocks` DISABLE KEYS */;
INSERT INTO `interval_blocks` VALUES (1,'','2012-03-02 00:00:00','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock/173','self','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock','up','2012-03-02 00:00:00','FE9A61BB-6913-42D4-88BE-9634A218EF53',86400,1330578000,1),(2,'','2012-03-03 00:00:00','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock/174','self','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock','up','2012-03-03 00:00:00','0E49B341-CABD-445B-8F88-7ACF791B1863',86400,1330664400,1),(3,'','2012-03-04 00:00:00','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock/175','self','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock','up','2012-03-04 00:00:00','1A1A106F-7108-4532-A5A6-FD48F7DA3B8D',86400,1330750800,1),(4,'','2012-03-05 00:00:00','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock/176','self','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock','up','2012-03-05 00:00:00','45745604-814D-49A1-8D4B-856D5D44B7AF',86400,1330837200,1),(5,'','2012-03-06 00:00:00','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock/177','self','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock','up','2012-03-06 00:00:00','298F995F-849A-4DEE-B339-988B2CD4BA5F',86400,1330923600,1),(6,'','2012-03-07 00:00:00','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock/178','self','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock','up','2012-03-07 00:00:00','9648B7CE-8A3F-4545-A8D9-3997062E1419',86400,1331010000,1),(7,'','2012-03-08 00:00:00','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock/179','self','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock','up','2012-03-08 00:00:00','E92DB70E-9D88-4B25-9D87-0C0B466DFC80',86400,1331096400,1),(8,'','2012-03-09 00:00:00','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock/17A','self','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock','up','2012-03-09 00:00:00','4EF81BB0-052B-4A32-B428-2318FBF77847',86400,1331182800,1),(9,'','2012-03-10 00:00:00','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock/17B','self','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock','up','2012-03-10 00:00:00','E12148F9-6C29-4972-B157-2EDB7616C84F',86400,1331269200,1),(10,'','2012-03-11 00:00:00','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock/17C','self','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock','up','2012-03-11 00:00:00','312B86F5-60A6-435A-AA83-25CE1B2C4A86',86400,1331355600,1),(11,'','2012-03-12 00:00:00','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock/17D','self','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock','up','2012-03-12 00:00:00','339EFCC4-BA4D-49D5-8E1B-734961E74E5E',82800,1331442000,1),(12,'','2012-03-13 00:00:00','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock/17E','self','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock','up','2012-03-13 00:00:00','D517CDBA-0245-4E70-AE09-D57A4D129639',86400,1331524800,1),(13,'','2012-03-14 00:00:00','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock/17F','self','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock','up','2012-03-14 00:00:00','AF977275-B88A-4889-A3F6-7F026EE6B1D9',86400,1331611200,1),(14,'','2012-03-15 00:00:00','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock/180','self','/espi/1_1/resource/RetailCustomer/9B6C7066/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock','up','2012-03-15 00:00:00','8E8A6957-5C81-4BD9-BA4C-33615E0BA0AD',86400,1331697600,1);
/*!40000 ALTER TABLE `interval_blocks` ENABLE KEYS */;
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
