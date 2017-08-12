-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: springdemo
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `demo1`
--

DROP TABLE IF EXISTS `demo1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `salary` int(11) NOT NULL,
  `city` varchar(20) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo1`
--

LOCK TABLES `demo1` WRITE;
/*!40000 ALTER TABLE `demo1` DISABLE KEYS */;
INSERT INTO `demo1` VALUES (1,'Bob','bob@andrewtung.com',50000,'Taipei','I am a handsome boy!'),(2,'Sue','sue@andrewtung.com',40000,'HsinChu','I really love programming!'),(3,'Danny','danny@andrewtung.com',36000,'Kaoshung','I love Sharry, really!'),(4,'Edwin','edwin@andrewtung.com',78000,'Taichung','Lazy boy I am!'),(5,'Sugar','sugar@andrewtung.com',95000,'Tainan','LOL is my true love!'),(6,'Chunk','chunk@andrewtung.com',47000,'Ilan','Programming is truely fantastic!'),(7,'Tammy','tammy@andrewtung.com',13000,'Taipei','Drawing is my passion!'),(8,'Anne','anne@andrewtung.com',82000,'Taichung','Accounting is really terrible for me.'),(9,'Kelly','kelly@andrewtung.com',32000,'Taipei','Exams are nightmare for everyone.'),(10,'Johnson','johnson@andrewtung.com',150000,'Taipei','Computer science can help me become rich.'),(11,'Vivian','vivian@andrewtung.com',22000,'Tainan','I love Korean drama!'),(12,'Arnie','arnie@andrewtung.com',100000,'Taichung','Helping other people is my passion.'),(13,'Tabonster','tabonster@andrewtung.com',72000,'Kaoshung','Pokemon is a extremely interesting game.'),(14,'Jay','jay@andrewtung.com',98000,'Taichung','Overwork is not a good idea.'),(15,'Allen','allen@andrewtung.com',65000,'Ilan','I want to revenge.'),(16,'Mikasa','mikasa@andrewtung.com',71000,'Tainan','Allen is to die for.'),(17,'Lufee','lufee@andrewtung.com',34000,'Taitung','I have magic power.'),(18,'Solong','solong@andrewtung.com',54000,'Taichung','Sword have their functions.'),(19,'Namay','namay@andrewtung.com',63000,'Taipei','Like father, like son.'),(20,'doctorJ','doctorj@andrewtung.com',110000,'Taipei','Like mother, like daughter.');
/*!40000 ALTER TABLE `demo1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-10  3:12:13
