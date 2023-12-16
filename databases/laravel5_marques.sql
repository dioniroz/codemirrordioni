CREATE DATABASE  IF NOT EXISTS `laravel5` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `laravel5`;
-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: laravel5
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
-- Table structure for table `marques`
--

DROP TABLE IF EXISTS `marques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marques` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marques`
--

LOCK TABLES `marques` WRITE;
/*!40000 ALTER TABLE `marques` DISABLE KEYS */;
INSERT INTO `marques` VALUES (1,'jhonny','marquez','timoteo chacon','1.jpg',NULL,NULL),(2,'angelica','rodriquez','timoteo chacon','2.jpg',NULL,NULL),(3,'arnulfo','navarro','cafetal  casa n 5','3.jpg',NULL,NULL),(4,'franklin','gutierrez','vera cruz','4.jpg',NULL,NULL),(5,'gabriel','benavides','el sucre','5.jpg',NULL,NULL),(6,'carlos','canchica','inavi','6.jpg',NULL,NULL),(7,'kleiber','mendez','vera cruz','7.jpg',NULL,NULL),(8,'esmic','silva','barrio colinas','8.jpg',NULL,NULL),(9,'alfredo','ortega','el libertador','9.jpg',NULL,NULL),(10,'gabriel','santander','las mercedes','10.jpg',NULL,NULL),(11,'orlando','carre','el milagro','11.jpg',NULL,NULL),(12,'wilson','centeno','santa tereza','12.jpg',NULL,NULL),(13,'roger','fuentes','el campin','13.jpg',NULL,NULL),(14,'erick','echenique','barrio quebradita','14.jpg',NULL,NULL),(15,'alexis','florez','barrio sucre carrera 4','15.jpg',NULL,NULL),(16,'kevin','chaparro','milagro','16.jpg',NULL,NULL),(17,'nelson','salcedo','tanque colinas','17.jpg',NULL,NULL),(18,'yonathan','colmenares','vera cruz','18.jpg',NULL,NULL),(19,'orlando','acu','timoteo chacon','19.jpg',NULL,NULL),(20,'jacdikson','lopez','quebrdita','20.jpg',NULL,NULL),(21,'josehp','mora','malacate','21.jpg',NULL,NULL),(22,'diego','colmenares','tanque colinas','22.jpg',NULL,NULL),(23,'eduardo','gonzalez','vera cruz','23.jpg',NULL,NULL),(24,'felix','mora','barrio colinas','24.jpg',NULL,NULL),(25,'raul','guerrero','la avenida','25.jpg',NULL,NULL);
/*!40000 ALTER TABLE `marques` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-06  2:53:50
