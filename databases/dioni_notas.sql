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
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `etiqueta` varchar(50) DEFAULT '0',
  `title` varchar(50) DEFAULT NULL,
  `nota` text,
  `top` char(50) DEFAULT NULL,
  `left` char(50) DEFAULT NULL,
  `fecha` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COMMENT='tabla para guardar las notas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,'code','nota','localhost:8000','0px','0px','<span>06:47:11 am </span><span class=\"fecha\">8 de febrero del 2020</span>'),(2,'code','nota de codemirror','localhost:8003','13px','921px','<span>06:47:36 am </span><span class=\"fecha\">8 de febrero del 2020</span>'),(3,'ingles','nota de ingles','ya le agregamos algo','247px','312px','<span>06:48:12 am </span><span class=\"fecha\">8 de febrero del 2020</span>'),(4,'code','lista cambiada','cambiada ok','200px','500px','<span class=\"fecha\">8 de febrero del 2020</span>'),(5,'agenda','dependencia','-acomodar las dependencias de las notas\n-esta usa helpers y usa ajax.POST como dependencias para  ejecutar las notas\n-cambiar miajax por solo ajax.js\n-guardar el codigo de ajax en helpers\n-y colocarle las sujerencias en README.MD\n','176px','388px','<span>08:09:14 am </span><span class=\"fecha\">8 de febrero del 2020</span>'),(6,'agenda','hacer algo','ir para santa ana','0px','0px','<span>10:21:13 am </span><span class=\"fecha\">8 de febrero del 2020</span>'),(7,'code','nueva','ya esta','0px','0px','<span>09:23:43 pm </span><span class=\"fecha\">15 de agosto del 2020</span>'),(8,'code','otra nota','octava','0px','0px','<span>09:25:54 pm </span><span class=\"fecha\">15 de agosto del 2020</span>'),(9,'ingles','dies','esta es la novena nota','0px','0px','<span>09:27:35 pm </span><span class=\"fecha\">15 de agosto del 2020</span>'),(10,'agenda','ir para santa ana','ir con Dianik para Santa Ana','177px','450px','<span>07:28:18 am </span><span class=\"fecha\">16 de agosto del 2020</span>'),(11,'code','las notas me gustan','las notas me gustan porque guardan coordenadas','67px','442px','<span>07:33:15 am </span><span class=\"fecha\">16 de agosto del 2020</span>'),(12,'agenda','nota de dianik rozo ','buscar los zapatos con mi papÃ¡','24px','71px','<span>08:20:09 am </span><span class=\"fecha\">16 de agosto del 2020</span>'),(13,'agenda','otra nota mas','acomodar el cuarto','89px','443px','<span>08:43:19 am </span><span class=\"fecha\">16 de agosto del 2020</span>'),(14,'code','codigo correcto de mi ajax','if(this.status==200){\nresolve(JSON.parse(this.responseText))\n}','0px','0px','<span>04:55:39 am </span><span class=\"fecha\">5 de febrero del 2009</span>'),(15,'0','biblia','falta II cronicas\nmas margen en las listas\nmenu buscar\nque se mueva las lecturas\nque sean instancias por si quiero mostrar las concordancias\nla linea de tiempo al pie\nmenu de ayuda para el estudio de la app\nrevistas o libros referente al estudio biblico\nlas notas\nlos mapas interactivos de las tierras donde acontecieron los hechos\ncuadro interactivo\nmenu interactivo que funcione con un acceso directo y con un atajo del teclado\nlos mapas','66px','129px','<span>05:16:09 pm </span><span class=\"fecha\">14 de octubre del 2020</span>'),(16,'0','administrador de notas','el administrador debe aparte de abrir la nota tambien poder editarla \nlos filtros deben mostrarse por etiquetas \nlas notas deben mostrarse en cuadros individuales\nse deben guardar con ctrl-s ','0px','0px','<span>06:37:39 pm </span><span class=\"fecha\">14 de octubre del 2020</span>');
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-06  2:53:47
