CREATE DATABASE  IF NOT EXISTS `biblia` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `biblia`;
-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: biblia
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.16.04.1

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
-- Table structure for table `biblia`
--

DROP TABLE IF EXISTS `biblia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biblia` (
  `favoritos` int(11) DEFAULT NULL,
  `libro` varchar(50) DEFAULT NULL,
  `capitulo` varchar(50) DEFAULT NULL,
  `notas` longtext,
  `json` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biblia`
--

LOCK TABLES `biblia` WRITE;
/*!40000 ALTER TABLE `biblia` DISABLE KEYS */;
INSERT INTO `biblia` VALUES (11792,'II CRÃ“NICAS','4',NULL,'{\"id\": \"11792\", \"libro\": \"II CRu00d3NICAS\", \"capitulo\": \"4\"}'),(11794,'II CRÃ“NICAS','4',NULL,'{\"id\": \"11794\", \"libro\": \"II CRu00d3NICAS\", \"capitulo\": \"4\"}'),(11796,'II CRÃ“NICAS','4',NULL,'{\"id\": \"11796\", \"libro\": \"II CRu00d3NICAS\", \"capitulo\": \"4\"}'),(31668,'JUAN','1',NULL,'{\"id\": \"31668\", \"libro\": \"JUAN\", \"capitulo\": \"1\"}'),(37058,'APOCALIPSIS','22',NULL,'{\"id\": \"37058\", \"libro\": \"APOCALIPSIS\", \"capitulo\": \"22\"}'),(2094,'Ã‰XODO','19',NULL,'{\"id\": \"2094\", \"libro\": \"u00c9XODO\", \"capitulo\": \"19\"}'),(1802,'Ã‰XODO','9',NULL,'{\"id\": \"1802\", \"libro\": \"u00c9XODO\", \"capitulo\": \"9\"}'),(18122,'SALMOS','91',NULL,'{\"id\": \"18122\", \"libro\": \"SALMOS\", \"capitulo\": \"91\"}'),(24041,'JEREMÃAS','20',NULL,'{\"id\": \"24041\", \"libro\": \"JEREMu00cdAS\", \"capitulo\": \"20\"}'),(9449,'I REYES','10',NULL,'{\"id\": \"9449\", \"libro\": \"I REYES\", \"capitulo\": \"10\"}'),(19305,'PROVERBIOS','6',NULL,'{\"id\": \"19305\", \"libro\": \"PROVERBIOS\", \"capitulo\": \"6\"}'),(1606,'Ã‰XODO','2',NULL,'{\"id\": \"1606\", \"libro\": \"u00c9XODO\", \"capitulo\": \"2\"}'),(2881,'LEVÃTICO','1',NULL,'{\"id\": \"2881\", \"libro\": \"LEVu00cdTICO\", \"capitulo\": \"1\"}'),(35628,'I TIMOTEO','4',NULL,'{\"id\": \"35628\", \"libro\": \"I TIMOTEO\", \"capitulo\": \"4\"}'),(35629,'I TIMOTEO','4',NULL,'{\"id\": \"35629\", \"libro\": \"I TIMOTEO\", \"capitulo\": \"4\"}'),(35630,'I TIMOTEO','4',NULL,'{\"id\": \"35630\", \"libro\": \"I TIMOTEO\", \"capitulo\": \"4\"}'),(35631,'I TIMOTEO','4',NULL,'{\"id\": \"35631\", \"libro\": \"I TIMOTEO\", \"capitulo\": \"4\"}'),(35633,'I TIMOTEO','4',NULL,'{\"id\": \"35633\", \"libro\": \"I TIMOTEO\", \"capitulo\": \"4\"}'),(35632,'I TIMOTEO','4',NULL,'{\"id\": \"35632\", \"libro\": \"I TIMOTEO\", \"capitulo\": \"4\"}'),(35636,'I TIMOTEO','4',NULL,'{\"id\": \"35636\", \"libro\": \"I TIMOTEO\", \"capitulo\": \"4\"}'),(35644,'I TIMOTEO','4',NULL,'{\"id\": \"35644\", \"libro\": \"I TIMOTEO\", \"capitulo\": \"4\"}'),(28297,'MATEO','7',NULL,'{\"id\": \"28297\", \"libro\": \"MATEO\", \"capitulo\": \"7\"}'),(9064,'I REYES','1',NULL,'{\"id\": \"9064\", \"libro\": \"I REYES\", \"capitulo\": \"1\"}'),(9121,'I REYES','2',NULL,'{\"id\": \"9121\", \"libro\": \"I REYES\", \"capitulo\": 2}'),(35298,'FILIPENSES','3',NULL,'{\"id\": \"35298\", \"libro\": \"FILIPENSES\", \"capitulo\": \"3\"}'),(31746,'JUAN','2',NULL,'{\"id\": \"31746\", \"libro\": \"JUAN\", \"capitulo\": \"2\"}'),(5439,'DEUTERONOMIO','11',NULL,'{\"id\": \"5439\", \"libro\": \"DEUTERONOMIO\", \"capitulo\": \"11\"}'),(7539,'I SAMUEL','2',NULL,'{\"id\": \"7539\", \"libro\": \"I SAMUEL\", \"capitulo\": 2}'),(32557,'JUAN','19',NULL,'{\"id\": \"32557\", \"libro\": \"JUAN\", \"capitulo\": \"19\"}'),(22754,'ISAÃAS','28',NULL,'{\"id\": \"22754\", \"libro\": \"ISAu00cdAS\", \"capitulo\": \"28\"}'),(32627,'JUAN','20',NULL,'{\"id\": \"32627\", \"libro\": \"JUAN\", \"capitulo\": \"20\"}'),(32470,'JUAN','17',NULL,'{\"id\": \"32470\", \"libro\": \"JUAN\", \"capitulo\": \"17\"}'),(31996,'JUAN','7',NULL,'{\"id\": \"31996\", \"libro\": \"JUAN\", \"capitulo\": \"7\"}'),(35755,'II TIMOTEO','3',NULL,'{\"id\": \"35755\", \"libro\": \"II TIMOTEO\", \"capitulo\": \"3\"}'),(18743,'SALMOS','119',NULL,'{\"id\": \"18743\", \"libro\": \"SALMOS\", \"capitulo\": \"119\"}'),(35509,'I TESALONICENSES','5',NULL,'{\"id\": \"35509\", \"libro\": \"I TESALONICENSES\", \"capitulo\": \"5\"}');
/*!40000 ALTER TABLE `biblia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-06  2:53:53
