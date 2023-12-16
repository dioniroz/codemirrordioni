CREATE DATABASE  IF NOT EXISTS `dioni` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dioni`;
-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: dioni
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
-- Table structure for table `crucigramas`
--

DROP TABLE IF EXISTS `crucigramas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crucigramas` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `visibles` json NOT NULL,
  `items` json NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='coordenadas, crucigramas,y guardar donde quedo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crucigramas`
--

LOCK TABLES `crucigramas` WRITE;
/*!40000 ALTER TABLE `crucigramas` DISABLE KEYS */;
INSERT INTO `crucigramas` VALUES (1,'[5, 12, 13, 14, 16, 17, 18, 19, 20, 22, 23, 24, 29, 37, 38, 40, 42, 43, 44, 46, 47, 49, 58, 59, 61, 63, 64, 66, 67, 68, 70, 72, 73, 75, 80, 81, 88, 90, 92, 93, 94, 96, 97, 99, 100, 101, 102, 104, 106, 108, 110, 111, 112, 113, 120, 124, 126, 127, 128, 130, 131, 134, 136, 138, 140, 146, 154, 155, 158, 160, 162, 164, 166, 167, 170, 172, 174, 175, 177, 181, 182, 184, 185, 186, 187, 189, 190, 191, 203, 206, 207, 208, 209, 210, 211, 213, 214, 215, 218, 219, 221, 225, 230, 231, 233, 234, 235, 236, 237, 238, 239, 242, 243, 254, 255, 257, 259, 260, 262, 263, 264, 266, 267, 268, 269, 271, 277, 283, 284, 286, 287, 288]','[1, 3, 6, 9, 25, 30, 36, 41, 50, 71, 76, 79, 105, 109, 114, 121, 123, 125, 132, 139, 141, 147, 176, 178, 193, 220, 222, 226, 244, 246, 249, 272, 278]'),(2,'[1, 7, 8, 13, 14, 16, 17, 18, 19, 21, 23, 24, 26, 28, 29, 31, 33, 35, 36, 38, 40, 41, 43, 48, 57, 59, 60, 62, 64, 65, 67, 68, 72, 73, 74, 76, 81, 83, 84, 89, 91, 93, 95, 96, 98, 100, 102, 103, 105, 107, 108, 110, 111, 112, 114, 115, 117, 118, 119, 120, 122, 123, 124, 126, 132, 138, 139, 141, 142, 144, 146, 147, 148, 150, 151, 152, 153, 154, 156, 158, 159, 160, 161, 162, 164, 177, 178, 180, 181, 182, 184, 185, 186, 188, 193, 194, 196, 197, 198, 200, 201, 202, 204, 205, 207, 209, 210, 212, 213, 214, 215, 217, 224, 225, 226, 227, 229, 231, 233, 234, 235, 236, 238, 239, 241, 243, 251, 253, 255, 257, 258, 259, 260, 262, 263, 269, 277, 279, 280, 281, 282, 283, 284, 286, 287, 288]','[2, 3, 9, 10, 20, 25, 30, 44, 49, 69, 77, 80, 101, 127, 131, 133, 163, 165, 169, 171, 189, 206, 208, 216, 218, 237, 244, 265, 270]'),(3,'[1, 2, 3, 4, 10, 12, 13, 15, 16, 18, 19, 21, 30, 31, 33, 34, 36, 37, 39, 40, 41, 42, 48, 49, 51, 53, 55, 57, 59, 62, 63, 65, 67, 69, 71, 74, 82, 83, 86, 87, 89, 91, 93, 101, 103, 104, 105, 107, 108, 110, 111, 112, 120, 122, 123, 125, 127, 129, 131, 133, 139, 141, 143, 145, 147, 149, 150, 151, 153, 155, 157, 159, 161, 167, 169, 170, 174, 175, 177, 178, 179, 181, 182, 183, 185, 186, 187, 197, 199, 200, 201, 202, 203, 206, 207, 209, 211, 212, 213, 214, 215, 218, 226, 227, 230, 231, 232, 233, 235, 236, 237, 239, 242, 247, 248, 254, 259, 260, 261, 263, 264, 266, 271, 272, 273, 275, 276, 277, 278, 279, 280, 281, 282]','[5, 8, 11, 14, 22, 25, 43, 46, 52, 54, 60, 61, 75, 94, 97, 113, 116, 124, 132, 134, 162, 171, 188, 193, 198, 219, 238, 243, 249, 267, 283]'),(4,'[6, 7, 9, 10, 12, 14, 15, 16, 18, 19, 21, 22, 24, 26, 27, 38, 40, 42, 43, 45, 46, 48, 50, 52, 54, 55, 56, 57, 59, 60, 62, 64, 73, 78, 79, 80, 81, 83, 84, 85, 87, 88, 89, 91, 92, 93, 95, 96, 97, 99, 107, 109, 111, 112, 113, 115, 116, 118, 119, 121, 123, 124, 125, 127, 128, 130, 131, 136, 138, 147, 148, 150, 151, 152, 154, 155, 156, 158, 159, 160, 167, 168, 174, 175, 176, 177, 178, 179, 180, 186, 188, 189, 198, 200, 201, 203, 204, 216, 224, 225, 227, 235, 237, 239, 242, 243, 244, 245, 246, 259, 261, 263, 266, 268, 269, 270, 271, 273, 274, 275, 278, 280, 285, 286, 287]','[1, 5, 8, 11, 28, 39, 58, 65, 74, 90, 100, 105, 108, 133, 137, 139, 161, 170, 187, 190, 194, 206, 228, 229, 236, 247, 253, 255, 281]'),(5,'[1, 2, 3, 4, 5, 13, 14, 15, 16, 18, 19, 21, 22, 23, 24, 25, 26, 34, 36, 37, 39, 40, 42, 43, 45, 49, 51, 52, 53, 54, 55, 57, 58, 60, 65, 66, 73, 75, 76, 78, 79, 81, 82, 84, 85, 94, 95, 96, 97, 99, 100, 102, 103, 105, 107, 110, 111, 112, 114, 115, 116, 117, 119, 122, 124, 126, 127, 129, 131, 138, 145, 146, 148, 149, 151, 153, 154, 155, 156, 161, 163, 165, 166, 167, 168, 170, 172, 173, 182, 184, 185, 186, 187, 189, 190, 191, 192, 194, 196, 197, 199, 205, 206, 213, 214, 215, 216, 218, 219, 220, 221, 223, 224, 225, 227, 228, 230, 231, 232, 233, 235, 236, 237, 239, 242, 243, 244, 251, 254, 255, 256, 257, 259, 260, 261, 263, 272, 273, 275, 278, 279, 280, 281, 282, 283]','[6, 8, 17, 27, 35, 38, 46, 61, 67, 77, 86, 106, 108, 109, 123, 128, 133, 139, 150, 157, 174, 198, 200, 207, 217, 226, 240, 245, 265, 284]'),(6,'[7, 8, 9, 10, 11, 13, 14, 16, 17, 18, 29, 30, 31, 32, 34, 35, 38, 40, 41, 43, 44, 46, 47, 50, 60, 62, 64, 65, 67, 68, 69, 70, 71, 73, 74, 76, 81, 83, 85, 86, 88, 89, 91, 92, 93, 95, 100, 101, 103, 105, 107, 110, 112, 122, 124, 125, 126, 127, 129, 130, 131, 132, 134, 135, 136, 137, 138, 144, 146, 147, 148, 150, 151, 153, 154, 155, 156, 157, 158, 166, 168, 170, 171, 172, 174, 175, 177, 178, 180, 182, 183, 184, 186, 187, 192, 194, 196, 198, 200, 201, 202, 204, 206, 208, 210, 212, 213, 214, 216, 225, 227, 232, 233, 234, 236, 237, 239, 245, 251, 257, 258, 260, 261, 263, 265, 273, 275, 277, 278, 279, 281, 282, 283, 284]','[1, 3, 12, 19, 21, 25, 42, 51, 72, 77, 82, 97, 104, 113, 139, 149, 159, 167, 169, 188, 195, 199, 217, 226, 228, 244, 246, 266, 285]'),(7,'[8, 9, 10, 11, 12, 14, 15, 16, 18, 19, 20, 26, 28, 30, 31, 33, 34, 36, 38, 46, 48, 50, 52, 54, 55, 57, 58, 60, 62, 64, 66, 72, 74, 76, 77, 79, 81, 82, 83, 86, 87, 88, 93, 95, 98, 99, 100, 101, 103, 105, 107, 109, 110, 112, 113, 115, 116, 128, 129, 131, 132, 134, 136, 137, 139, 140, 141, 143, 144, 146, 148, 155, 156, 158, 159, 161, 163, 165, 166, 167, 168, 170, 175, 177, 181, 182, 183, 185, 187, 189, 190, 192, 193, 197, 198, 204, 205, 206, 207, 209, 211, 213, 214, 216, 217, 218, 219, 224, 225, 226, 228, 229, 231, 233, 235, 241, 243, 245, 247, 249, 250, 251, 252, 264, 265, 267, 269, 270, 271, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283]','[1, 5, 21, 23, 27, 32, 39, 67, 78, 84, 89, 94, 111, 117, 121, 149, 152, 160, 171, 178, 194, 199, 210, 220, 230, 236, 253, 259, 284]'),(8,'[1, 2, 6, 7, 12, 13, 14, 15, 16, 18, 19, 21, 22, 23, 24, 34, 36, 37, 38, 39, 40, 42, 43, 45, 46, 48, 55, 57, 58, 60, 62, 63, 64, 66, 67, 69, 70, 72, 74, 75, 76, 77, 79, 80, 91, 92, 94, 96, 98, 99, 100, 101, 108, 112, 113, 115, 116, 118, 120, 122, 123, 124, 128, 130, 132, 134, 135, 137, 139, 141, 142, 144, 145, 146, 147, 149, 151, 153, 154, 156, 166, 168, 170, 171, 172, 173, 175, 177, 178, 180, 182, 187, 189, 191, 193, 194, 196, 198, 199, 201, 203, 206, 208, 215, 220, 222, 223, 224, 225, 227, 230, 232, 234, 236, 237, 238, 239, 242, 243, 244, 246, 248, 249, 251, 254, 266, 267, 268, 269, 270, 272, 273, 275, 276, 278, 279, 284]','[3, 5, 8, 25, 35, 49, 78, 81, 85, 102, 109, 125, 136, 140, 157, 183, 185, 190, 192, 205, 209, 217, 235]'),(9,'[4, 5, 11, 12, 13, 14, 16, 17, 19, 20, 21, 23, 24, 25, 26, 28, 33, 35, 36, 38, 40, 41, 43, 44, 57, 59, 60, 62, 64, 65, 66, 67, 68, 69, 71, 72, 74, 75, 76, 84, 86, 87, 88, 90, 91, 92, 93, 95, 96, 98, 103, 104, 105, 106, 108, 109, 110, 111, 112, 114, 115, 116, 121, 122, 123, 128, 130, 132, 133, 134, 136, 138, 139, 140, 142, 144, 145, 156, 157, 158, 160, 162, 163, 164, 168, 169, 170, 172, 173, 180, 185, 187, 188, 190, 191, 193, 194, 200, 202, 203, 205, 209, 211, 217, 218, 219, 221, 222, 223, 225, 226, 227, 234, 239, 241, 242, 243, 244, 245, 246, 247, 249, 251, 259, 260, 261, 263, 265, 266, 267, 268, 269, 270, 271, 272, 273, 275, 282, 283, 288]','[1, 3, 6, 10, 29, 37, 45, 49, 77, 99, 107, 117, 124, 135, 146, 174, 177, 181, 192, 197, 206, 208, 212, 229, 235, 238, 253, 277, 284]'),(10,'[1, 2, 3, 4, 13, 25, 27, 37, 38, 39, 40, 49, 51, 62, 63, 64, 65, 66, 67, 75, 78, 87, 90, 91, 99, 100, 101, 102, 103]','[55]');
/*!40000 ALTER TABLE `crucigramas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-06  2:53:48
