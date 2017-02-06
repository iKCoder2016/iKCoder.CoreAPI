CREATE DATABASE  IF NOT EXISTS `platformapi` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `platformapi`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: platformapi
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `account_basic`
--

DROP TABLE IF EXISTS `account_basic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_basic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_basic`
--

LOCK TABLES `account_basic` WRITE;
/*!40000 ALTER TABLE `account_basic` DISABLE KEYS */;
INSERT INTO `account_basic` VALUES (5,'18675521735','01070624'),(6,'13632623840','111111'),(7,'18676781672','123456'),(8,'18603052346','ikcoder');
/*!40000 ALTER TABLE `account_basic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_profile`
--

DROP TABLE IF EXISTS `account_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(200) DEFAULT NULL,
  `profile_data` mediumtext,
  `profile_name` varchar(50) DEFAULT NULL,
  `profile_product` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_profile`
--

LOCK TABLES `account_profile` WRITE;
/*!40000 ALTER TABLE `account_profile` DISABLE KEYS */;
INSERT INTO `account_profile` VALUES (2,'18675521735','<root><docbasic><doc_id></doc_id><doc_symbol>profile_18675521735</doc_symbol></docbasic><usrbasic><usr_name>18675521735</usr_name><usr_nickname></usr_nickname><coins>0</coins><account_status>L0</account_status><account_limited></account_limited><account_childs></account_childs><account_head></account_head></usrbasic><lessons><begin></begin><intermediate></intermediate><senior></senior></lessons><friends></friends></root>','profile_18675521735','iKCoder'),(3,'13632623840','<root><docbasic><doc_id></doc_id><doc_symbol>profile_13632623840</doc_symbol></docbasic><usrbasic><usr_name>13632623840</usr_name><usr_nickname></usr_nickname><coins>0</coins><account_status>L0</account_status><account_limited></account_limited><account_childs></account_childs><account_head></account_head></usrbasic><lessons><begin></begin><intermediate></intermediate><senior></senior></lessons><friends></friends></root>','profile_13632623840','iKCoder'),(4,'18676781672','<root><docbasic><doc_id></doc_id><doc_symbol>profile_18676781672</doc_symbol></docbasic><usrbasic><usr_name>18676781672</usr_name><usr_nickname></usr_nickname><coins>0</coins><account_status>L0</account_status><account_limited></account_limited><account_childs></account_childs><account_head></account_head></usrbasic><lessons><begin></begin><intermediate></intermediate><senior></senior></lessons><friends></friends></root>','profile_18676781672','iKCoder'),(5,'18603052346','<root><docbasic><doc_id></doc_id><doc_symbol>profile_18603052346</doc_symbol></docbasic><usrbasic><usr_name>18603052346</usr_name><usr_nickname></usr_nickname><coins>0</coins><account_status>L0</account_status><account_limited></account_limited><account_childs></account_childs><account_head></account_head></usrbasic><lessons><begin></begin><intermediate></intermediate><senior></senior></lessons><friends></friends></root>','profile_18603052346','iKCoder');
/*!40000 ALTER TABLE `account_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_basic`
--

DROP TABLE IF EXISTS `data_basic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_basic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(40) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `data` longblob,
  `produce` varchar(45) DEFAULT NULL,
  `isBinary` varchar(2) DEFAULT '0',
  `isBase64` varchar(2) DEFAULT '0',
  `isDES` varchar(2) DEFAULT '0',
  `DESKey` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_basic`
--

LOCK TABLES `data_basic` WRITE;
/*!40000 ALTER TABLE `data_basic` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_basic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_relationship`
--

DROP TABLE IF EXISTS `data_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_relationship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(45) DEFAULT NULL,
  `shiptype` varchar(45) DEFAULT NULL,
  `relationdoc` blob,
  `produce` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_relationship`
--

LOCK TABLES `data_relationship` WRITE;
/*!40000 ALTER TABLE `data_relationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_relationship` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-07  1:42:44
