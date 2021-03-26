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
-- Table structure for table `application_information`
--

DROP TABLE IF EXISTS `application_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application_information` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kind` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `published` datetime DEFAULT NULL,
  `self_link_href` varchar(255) DEFAULT NULL,
  `self_link_rel` varchar(255) DEFAULT NULL,
  `up_link_href` varchar(255) DEFAULT NULL,
  `up_link_rel` varchar(255) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `uuid` varchar(255) NOT NULL,
  `authorizationServerAuthorizationEndpoint` varchar(255) DEFAULT NULL,
  `authorizationServerRegistrationEndpoint` varchar(255) DEFAULT NULL,
  `authorizationServerTokenEndpoint` varchar(255) DEFAULT NULL,
  `authorizationServerUri` varchar(255) DEFAULT NULL,
  `clientId` varchar(64) NOT NULL,
  `clientIdIssuedAt` bigint(20) DEFAULT NULL,
  `clientName` varchar(255) DEFAULT NULL,
  `clientSecret` varchar(255) DEFAULT NULL,
  `clientSecretExpiresAt` bigint(20) DEFAULT NULL,
  `clientUri` varchar(255) DEFAULT NULL,
  `contacts` tinyblob,
  `dataCustodianApplicationStatus` varchar(255) DEFAULT NULL,
  `dataCustodianBulkRequestURI` varchar(255) DEFAULT NULL,
  `dataCustodianDefaultBatchResource` varchar(255) DEFAULT NULL,
  `dataCustodianDefaultSubscriptionResource` varchar(255) DEFAULT NULL,
  `dataCustodianId` varchar(64) DEFAULT NULL,
  `dataCustodianResourceEndpoint` varchar(255) DEFAULT NULL,
  `dataCustodianThirdPartySelectionScreenURI` varchar(255) DEFAULT NULL,
  `logoUri` varchar(255) DEFAULT NULL,
  `policyUri` varchar(255) DEFAULT NULL,
  `redirectUri` varchar(255) DEFAULT NULL,
  `registrationAccessToken` varchar(255) DEFAULT NULL,
  `registrationClientUri` varchar(255) DEFAULT NULL,
  `responseTypes` int(11) DEFAULT NULL,
  `softwareId` varchar(255) DEFAULT NULL,
  `softwareVersion` varchar(255) DEFAULT NULL,
  `thirdPartyApplicationDescription` varchar(255) DEFAULT NULL,
  `thirdPartyApplicationName` varchar(64) NOT NULL,
  `thirdPartyApplicationStatus` varchar(255) DEFAULT NULL,
  `thirdPartyApplicationType` varchar(255) DEFAULT NULL,
  `thirdPartyApplicationUse` varchar(255) DEFAULT NULL,
  `thirdPartyDataCustodianSelectionScreenURI` varchar(255) DEFAULT NULL,
  `thirdPartyLoginScreenURI` varchar(255) DEFAULT NULL,
  `thirdPartyNotifyUri` varchar(255) DEFAULT NULL,
  `thirdPartyPhone` varchar(255) DEFAULT NULL,
  `thirdPartyScopeSelectionScreenURI` varchar(255) DEFAULT NULL,
  `thirdPartyUserPortalScreenURI` varchar(255) DEFAULT NULL,
  `tokenEndpointAuthMethod` varchar(255) DEFAULT NULL,
  `tosUri` varchar(255) DEFAULT NULL,
  `dataCustodianScopeSelectionScreenURI` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_information`
--

LOCK TABLES `application_information` WRITE;
/*!40000 ALTER TABLE `application_information` DISABLE KEYS */;
INSERT INTO `application_information` VALUES (1,'DATA_CUSTODIAN_ADMIN','GreenButtonData.org  Data Custodian Admin Application','2014-01-02 05:00:00','/espi/1_1/resource/DataCustodian/ApplicationInformation/1','self','/espi/1_1/resource/DataCustodian/ApplicationInformation','up','2014-01-02 05:00:00','185C9C3F-5B4A-44A9-8959-3AE79E60A9F5','http://localhost:8080/DataCustodian/oauth/authorize','http://localhost:8080/DataCustodian/espi/1_1/register','http://localhost:8080/DataCustodian/oauth/token','http://localhost:8080/DataCustodian/','data_custodian',1403190000,'Green Button DataCustodian Admin','secret',0,'http://localhost:8080/DataCustodian','john.teeter@energyos.org,martin.burns@nist.gov,donald.coffin@reminetworks.com','1','http://localhost:8080/DataCustodian/espi/1_1/resource/Batch/Bulk','http://localhost:8080/DataCustodian/espi/1_1/resource/Batch','http://localhost:8080/DataCustodian/espi/1_1/resource/Batch/Subscription','data_custodian','http://localhost:8080/DataCustodian/espi/1_1/resource','http://localhost:8080/DataCustodian/RetailCustomer/{retailCustomerId}/ThirdPartyList',NULL,NULL,NULL,NULL,'http://localhost:8080/DataCustodian/espi/1_1/resource/ApplicationInformation/1',0,'EnergyOS OpenESPI','1.2','EnergyOS OpenESPI Example DataCustodian Admin','Data Custodian Admin (localhost)','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'client_secret_basic',NULL,'http://localhost:8080/DataCustodian/RetailCustomer/ScopeSelection/'),(2,'THIRD_PARTY','GreenButtonData.org  ThirdParty Application','2014-01-02 05:00:00','/espi/1_1/resource/DataCustodian/ApplicationInformation/2','self','/espi/1_1/resource/DataCustodian/ApplicationInformation','up','2014-01-02 05:00:00','AF6E8B03-0299-467E-972A-A883ECDCC575','http://localhost:8080/DataCustodian/oauth/authorize','http://localhost:8080/DataCustodian/espi/1_1/register','http://localhost:8080/DataCustodian/oauth/token','http://localhost:8080/DataCustodian/','third_party',1403190000,'Green Button Third Party','secret',0,'http://localhost:8080/ThirdParty','john.teeter@energyos.org,martin.burns@nist.gov,donald.coffin@reminetworks.com','1','http://localhost:8080/DataCustodian/espi/1_1/resource/Batch/Bulk','http://localhost:8080/DataCustodian/espi/1_1/resource/Batch','http://localhost:8080/DataCustodian/espi/1_1/resource/Batch/Subscription','data_custodian','http://localhost:8080/DataCustodian/espi/1_1/resource','http://localhost:8080/DataCustodian/RetailCustomer/1/ThirdPartyList','http://localhost:8080/ThirdParty/resources/ico/favicon.png',NULL,'http://localhost:8080/ThirdParty/espi/1_1/OAuthCallBack','d89bb056-0f02-4d47-9fd2-ec6a19ba8d0c','http://localhost:8080/DataCustodian/espi/1_1/resource/ApplicationInformation/2',0,'EnergyOS OpenESPI Example Third Party','1.2','EnergyOS OpenESPI Example Third Party','Third Party (localhost)','1','1','1','http://localhost:8080/ThirdParty/RetailCustomer/{retailCustomerId}/DataCustodianList','http://localhost:8080/ThirdParty/login','http://localhost:8080/ThirdParty/espi/1_1/Notification',NULL,'http://localhost:8080/ThirdParty/RetailCustomer/ScopeSelection','http://localhost:8080/ThirdParty','client_secret_basic',NULL,'http://localhost:8080/DataCustodian/RetailCustomer/ScopeSelectionList?ThirdPartyID=third_party'),(3,'UPLOAD_ADMIN','GreenButtonData.org  MDM Upload Application','2014-01-02 05:00:00','/espi/1_1/resource/DataCustodian/ApplicationInformation/3','self','/espi/1_1/resource/DataCustodian/ApplicationInformation','up','2014-01-02 05:00:00','185C9C3F-5B4A-44A9-8959-3AE79E60A9F7','http://localhost:8080/DataCustodian/oauth/authorize','http://localhost:8080/DataCustodian/espi/1_1/register','http://localhost:8080/DataCustodian/oauth/token','http://localhost:8080/DataCustodian/','upload',1403190000,'Green Button DMD Upload Service','secret',0,NULL,'john.teeter@energyos.org,martin.burns@nist.gov,donald.coffin@reminetworks.com','1','http://localhost:8080/DataCustodian/espi/1_1/resource/Batch/Bulk','http://localhost:8080/DataCustodian/espi/1_1/resource/Batch','http://localhost:8080/DataCustodian/espi/1_1/resource/Batch/Subscription','data_custodian','http://localhost:8080/DataCustodian/espi/1_1/resource','http://localhost:8080/DataCustodian/RetailCustomer/1/ThirdPartyList',NULL,NULL,NULL,NULL,'http://localhost:8080/DataCustodian/espi/1_1/resource/ApplicationInformation/3',0,'EnergyOS OpenESPI DMD Upload Service','1.2','EnergyOS OpenESPI DMD Upload Service','MDM Upload (localhost)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'client_secret_basic',NULL,NULL);
/*!40000 ALTER TABLE `application_information` ENABLE KEYS */;
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
