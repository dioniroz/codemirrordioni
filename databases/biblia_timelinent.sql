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
-- Table structure for table `timelinent`
--

DROP TABLE IF EXISTS `timelinent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timelinent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `acontecimiento` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `libro` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=DYNAMIC COMMENT='tabla para la linea de tiempo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timelinent`
--

LOCK TABLES `timelinent` WRITE;
/*!40000 ALTER TABLE `timelinent` DISABLE KEYS */;
INSERT INTO `timelinent` VALUES (1,'6 BC\r\n','Birth of John the Baptist\r\n','(Luke 1,John 1:6)\r\n'),(2,'6 BC\r\n','Augustus Taxes the Roman Empire\r\n','Luke 2\r\n'),(3,'5 BC\r\n','Birth of Jesus\r\n','(Matthew 1, Mark 1, Luke 2:6, John 1:14)\r\n'),(4,'5 BC\r\n','Visit of the Magi\r\n','Matthew 2\r\n'),(5,'5 BC\r\n','Escape to Egypt\r\n','Matthew 2:13\r\n'),(6,'4 BC\r\n','Slaughter of Infants\r\n','Matthew 2:16\r\n'),(7,'4 BC\r\n','Return to Nazareth\r\n','Matthew 2:23\r\n'),(8,'8 AD\r\n','The Boy Jesus at the Temple\r\n','Luke 2:41\r\n'),(9,'26 AD\r\n','John the Baptist Prepares the Way\r\n','(Matthew 3, Mark 1:4, Luke 3, John 1:15)\r\n'),(10,'26 AD\r\n','The Baptism of Jesus\r\n','(Matthew 3:13, Mark 1:9, Luke 3:21)\r\n'),(11,'27 AD\r\n','Temptation of Jesus\r\n','(Matthew 4, Mark 1:12, Luke 4)\r\n'),(12,'27 AD\r\n','Jesus Calls his First Disciples\r\n','(Matthew 4:18, Mark 1:16, Luke 5)\r\n'),(13,'27 AD\r\n','Wedding at Cana\r\n','John 2\r\n'),(14,'27 AD\r\n','Jesus Teaches Nicodemus\r\n','John 3\r\n'),(15,'27 AD\r\n','Jesus Testifies to the Samaritan Woman\r\n','John 4\r\n'),(16,'27 AD\r\n','Sermon on the Mount\r\n','Matthew 5 - 7\r\n'),(17,'28 AD\r\n','Instructions on Prayer\r\n','Luke 11\r\n'),(18,'28 AD\r\n','Jesus Ministers in Galilee\r\n','(Matthew 8, Mark 2, Luke 4:14)\r\n'),(19,'28 AD\r\n','The Pool of Bethesda\r\n','John 5\r\n'),(20,'28 AD\r\n','Jesus Lord of the Sabbath\r\n','(Matthew 12, Mark 3, Luke 6)\r\n'),(21,'28 AD\r\n','Jesus Answers John\'s Disciples\r\n','(Matthew 11, Luke 7)\r\n'),(22,'28 AD\r\n','Jesus Speaks Many Parables\r\n','(Matthew 13, Mark 4, Luke 8)\r\n'),(23,'28 AD\r\n','Jesus Heals a Demoniac\r\n','(Matthew 8:28, Mark 5, Luke 8:26)\r\n'),(24,'28 AD\r\n','Jesus Heals a Paralytic\r\n','Matthew 9\r\n'),(25,'29 AD\r\n','Jesus Sends out His Twelve Apostles\r\n','(Matthew 10, Mark 6)\r\n'),(26,'29 AD\r\n','John the Baptist Beheaded\r\n','(Matthew 14, Mark 6:14)\r\n'),(27,'29 AD\r\n','Jesus Feeds the 5,000\r\n','(Matthew 14:15, Mark 6:30, Luke 9, John 6)\r\n'),(28,'29 AD\r\n','Teachings on Clean and Unclean\r\n','(Matthew 15, Mark 7)\r\n'),(29,'29 AD\r\n','Peter\'s Confession of Christ\r\n','(Matthew 16, Mark 8, Luke 9:18)\r\n'),(30,'29 AD\r\n','The Transfiguration\r\n','(Matthew 17, Mark 9, Luke 9:28)\r\n'),(31,'29 AD\r\n','Greatest and Least in the Kingdom\r\n','Matthew 18\r\n'),(32,'29 AD\r\n','Jesus Sends out the Seventy-two\r\n','Luke 10\r\n'),(33,'29 AD\r\n','Jesus Teaches at the Feast of Tabernacles\r\n','John 7\r\n'),(34,'29 AD\r\n','The Woman Caught in Adultery\r\n','John 8\r\n'),(35,'29 AD\r\n','Jesus Affirms He is the Son of God\r\n','John 9\r\n'),(36,'29 AD\r\n','The Shepherd and His Flock\r\n','John 10\r\n'),(37,'30 AD\r\n','Jesus Speaks More Parables\r\n','Luke 12 - 16\r\n'),(38,'30 AD\r\n','Jesus Cleanses the Ten Lepers\r\n','Luke 17\r\n'),(39,'30 AD\r\n','Jesus Raises Lazarus\r\n','John 11\r\n'),(40,'30 AD\r\n','Final Journey to Jerusalem\r\n','(Matthew 19, 20, Mark 10, Luke 18)\r\n'),(41,'30 AD\r\n','The Triumphal Entry\r\n','(Matthew 21, Mark 11, Luke 19, John 12)\r\n'),(42,'30 AD\r\n','Closing Ministry in Jerusalem\r\n','(Matthew 22 - 25, Mark 12, 13, Luke 20, 21)\r\n'),(43,'30 AD\r\n','Thursday Before Passover\r\n','(Matthew 26, Mark 14, Luke 22, John 13)\r\n'),(44,'30 AD\r\n','Jesus Comforts His Disciples\r\n','John 14\r\n'),(45,'30 AD\r\n','Jesus the True Vine\r\n','John 15\r\n'),(46,'30 AD\r\n','Jesus Promises the Holy Spirit\r\n','John 16\r\n'),(47,'30 AD\r\n','Jesus\' Intercessory prayers\r\n','John 17\r\n'),(48,'30 AD\r\n','Jesus\' Betrayal, Trial, Crucifixion\r\n','(Matthew 27, Mark 15, Luke 23, John 18, 19)\r\n'),(49,'30 AD\r\n','Jesus\' Resurrection\r\n','(Matthew 28, Mark 16, Luke 24, John 20, 21)\r\n'),(50,'30 AD\r\n','The Ascension\r\n','Acts 1\r\n'),(51,'30 AD\r\n','Matthias Chosen by Lot\r\n','Acts 1:12\r\n'),(52,'30 AD\r\n','The Holy Spirit Comes at Pentecost\r\n','Acts 2\r\n'),(53,'30 AD\r\n','Peter Heals and Preaches\r\n','Acts 3\r\n'),(54,'30 AD\r\n','Peter and John Arrested and Released;\r\n','Acts 4\r\n'),(55,'30 AD\r\n','Believers Share All\r\n','Acts 4:32\r\n'),(56,'30 AD\r\n','Deaths of Ananias and Sapphira\r\n','Acts 5\r\n'),(57,'30 AD\r\n','Apostles Preach and Heal\r\n','Acts 5:11\r\n'),(58,'31 AD\r\n','Stephen\'s Speech, Stoning and Death\r\n','Acts 6, 7\r\n'),(59,'31 AD\r\n','Saul Persecutes the Church\r\n','Acts 8\r\n'),(60,'31 AD\r\n','Philip in Samaria\r\n','Acts 8:3\r\n'),(61,'31 AD\r\n','Simon the Sorcerer\r\n','Acts 8:9\r\n'),(62,'31 AD\r\n','Philip and the Ethiopian\r\n','Acts 8:26\r\n'),(63,'34 AD\r\n','Saul\'s Conversion\r\n','Acts 9\r\n'),(64,'37 AD\r\n','Peter Preaches to the Gentiles\r\n','Acts 10, 11\r\n'),(65,'42 AD\r\n','Barnabas Sent to Antioch\r\n','Acts 11:22\r\n'),(66,'42 AD\r\n','Peter Led from Prison by the Angel\r\n','Acts 12\r\n'),(67,'44 AD\r\n','Herod Agrippa Dies\r\n','Acts 12:20\r\n'),(68,'45 AD\r\n','James Writes his Letter\r\n','James 1 - 5\r\n'),(69,'48 AD\r\n','Paul\'s First Missionary Journey\r\n','Acts 13\r\n'),(70,'48 AD\r\n','Paul preaches in Pisidian Antioch\r\n','Acts 13:14\r\n'),(71,'48 AD\r\n','Paul and Barnabas in Iconium\r\n','Acts 14\r\n'),(72,'48 AD\r\n','Paul and Barnabas in Lystra and Derbe\r\n','Acts 14:8\r\n'),(73,'48 AD\r\n','Paul and Barnabas Return to Syrian Antioch\r\n','Acts 14:21\r\n'),(74,'48 AD\r\n','Return to Syrian Antioch\r\n','Acts 14:24\r\n'),(75,'48 AD\r\n','The Council at Jerusalem\r\n','Acts 15\r\n'),(76,'49 AD\r\n','Paul\'s Second Missionary Journey\r\n','Acts 15:36\r\n'),(77,'49 AD\r\n','Paul in Philippi\r\n','Acts 16\r\n'),(78,'49 AD\r\n','Paul in Thessalonica, Berea, Athens\r\n','Acts 17\r\n'),(79,'51 AD\r\n','Paul in Corinth\r\n','Acts 18\r\n'),(80,'51 AD\r\n','Paul Writes to the Thessalonians\r\n','1 Thess. 1 - 5\r\n'),(81,'52 AD\r\n','Paul Writes again to the Thessalonians\r\n','2 Thess. 1 - 3\r\n'),(82,'54 AD\r\n','Paul in Ephesus\r\n','Acts 19\r\n'),(83,'54 AD\r\n','Paul Writes to the Corinthians\r\n','1 Corinthians 1 - 16\r\n'),(84,'54 AD\r\n','Paul Writes to the Galatians\r\n','Galatians 1 - 6\r\n'),(85,'57 AD\r\n','Paul in Macedonia and Greece\r\n','Acts 20\r\n'),(86,'57 AD\r\n','Paul Writes to the Romans\r\n','Romans 1 - 16\r\n'),(87,'57 AD\r\n','Paul Writes again to the Corinthians\r\n','2 Corinthians 1 - 13\r\n'),(88,'59 AD\r\n','Paul Returns to Jerusalem\r\n','Acts 21 - 23\r\n'),(89,'60 AD\r\n','Paul imprisoned in Caesarea\r\n','Acts 24\r\n'),(90,'62 AD\r\n','Paul Before Festus\r\n','Acts 25\r\n'),(91,'62 AD\r\n','Paul Before Agrippa\r\n','Acts 26\r\n'),(92,'62 AD\r\n','Paul Sails for Rome\r\n','Acts 27\r\n'),(93,'62 AD\r\n','The Shipwreck\r\n','Acts 27:13\r\n'),(94,'62 AD\r\n','Paul Ashore at Malta\r\n','Acts 28\r\n'),(95,'62 AD\r\n','Paul Preaches at Rome\r\n','Acts 28:11\r\n'),(96,'62 AD\r\n','Paul Writes to the Ephesians\r\n','Ephesians 1 - 6\r\n'),(97,'62 AD\r\n','Paul Writes to the Philippians\r\n','Philippians 1 - 4\r\n'),(98,'62 AD\r\n','Paul Writes to the Colossians\r\n','Colossians 1 - 4\r\n'),(99,'62 AD\r\n','Paul Writes to Philemon\r\n','Philemon 1\r\n'),(100,'63 AD\r\n','Paul Writes to Timothy\r\n','1 Timothy 1 - 6\r\n'),(101,'64 AD\r\n','Peter Writes his First Letter\r\n','1 Peter 1 - 5\r\n'),(102,'66 AD\r\n','Paul Writes to Titus\r\n','Titus 1 - 3\r\n'),(103,'67 AD\r\n','Paul Writes Again to Timothy\r\n','2 Timothy 1 - 4\r\n'),(104,'67 AD\r\n','Peter Writes his Second Letter\r\n','2 Peter 1 - 3\r\n'),(105,'68 AD\r\n','Letter to the Hebreos\r\n','Hebreos 1 - 13\r\n'),(106,'68 AD\r\n','Jude Writes his Letter\r\n','Jude 1\r\n'),(107,'90 AD\r\n','John Writes his First Letter\r\n','1 John 1 - 5\r\n'),(108,'92 AD\r\n','John Writes his Second Letter\r\n','2 John 1\r\n'),(109,'94 AD','John Writes his Third Letter','3 John 1');
/*!40000 ALTER TABLE `timelinent` ENABLE KEYS */;
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
