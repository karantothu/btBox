-- MySQL dump 10.13  Distrib 5.5.20, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: performance
-- ------------------------------------------------------
-- Server version	5.5.20

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
-- Table structure for table `datatable`
--

DROP TABLE IF EXISTS `datatable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datatable` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `schemaname` varchar(45) NOT NULL,
  `uploadfile` varchar(500) NOT NULL,
  `encryptfile` varchar(500) NOT NULL,
  `decryptfile` varchar(500) NOT NULL,
  `time` varchar(45) NOT NULL,
  `filesize` varchar(100) NOT NULL,
  `file` varchar(500) NOT NULL,
  `filecost` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datatable`
--

LOCK TABLES `datatable` WRITE;
/*!40000 ALTER TABLE `datatable` DISABLE KEYS */;
INSERT INTO `datatable` VALUES (5,'JAVA','C:\\Performance\\Admin\\Upload\\String in java.java','C:\\Performance\\Admin\\Encryption\\String in java.java','C:\\Performance\\Admin\\Decryption\\String in java.java','65','0.400396','String in java.java','20'),(6,'DOTNET','C:\\Performance\\Admin\\Upload\\String in C#.cs','C:\\Performance\\Admin\\Encryption\\String in C#.cs','C:\\Performance\\Admin\\Decryption\\String in C#.cs','36','10','String in C#.cs','10'),(7,'JAVASCRIPT','C:\\Performance\\Admin\\Upload\\ScriptFile.js','C:\\Performance\\Admin\\Encryption\\ScriptFile.js','C:\\Performance\\Admin\\Decryption\\ScriptFile.js','7','30','ScriptFile.js','5'),(8,'JAVA','C:\\Performance\\Admin\\Upload\\Program of fibonacci series in java.java','C:\\Performance\\Admin\\Encryption\\Program of fibonacci series in java.java','C:\\Performance\\Admin\\Decryption\\Program of fibonacci series in java.java','7','27','Program of fibonacci series in java.java','10'),(9,'DOTNET','C:\\Performance\\Admin\\Upload\\SplitStringin C#.cs','C:\\Performance\\Admin\\Encryption\\SplitStringin C#.cs','C:\\Performance\\Admin\\Decryption\\SplitStringin C#.cs','8','28','SplitStringin C#.cs','20'),(10,'DOTNET','C:\\Performance\\Admin\\Upload\\constructor in C#.cs','C:\\Performance\\Admin\\Encryption\\constructor in C#.cs','C:\\Performance\\Admin\\Decryption\\constructor in C#.cs','69','23','constructor in C#.cs','15'),(11,'PHP','C:\\Performance\\Admin\\Upload\\forloopinphp.php3','C:\\Performance\\Admin\\Encryption\\forloopinphp.php3','C:\\Performance\\Admin\\Decryption\\forloopinphp.php3','65','12','forloopinphp.php3','20'),(12,'PHP','C:\\Performance\\Admin\\Upload\\Amstrong.php3','C:\\Performance\\Admin\\Encryption\\Amstrong.php3','C:\\Performance\\Admin\\Decryption\\Amstrong.php3','715','0.4736328125','Amstrong.php3','20'),(13,'java','C:\\Performance\\Admin\\Upload\\my.java','C:\\Performance\\Admin\\Encryption\\my.java','C:\\Performance\\Admin\\Decryption\\my.java','726','0.0205078125','my.java','50');
/*!40000 ALTER TABLE `datatable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloads`
--

DROP TABLE IF EXISTS `downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `downloads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `schema_name` varchar(100) DEFAULT NULL,
  `files` varchar(500) NOT NULL,
  `time` varchar(45) NOT NULL,
  `usages` varchar(100) NOT NULL,
  `pricing` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloads`
--

LOCK TABLES `downloads` WRITE;
/*!40000 ALTER TABLE `downloads` DISABLE KEYS */;
INSERT INTO `downloads` VALUES (23,'adhi','DOTNET','constructor in C#.cs','31','23','15'),(24,'suresh','DOTNET','constructor in C#.cs','24','23','15'),(25,'demo','PHP','forloopinphp.php3','21','12','20'),(26,'demo','DOTNET','constructor in C#.cs','25','23','15'),(27,'demo','JAVA','String in java.java','16','41','20'),(28,'demo','JAVA','String in java.java','24','41','20'),(29,'suresh','JAVA','String in java.java','26','0.400396','20'),(30,'suresh','PHP','forloopinphp.php3','23','12','20'),(31,'suresh','PHP','forloopinphp.php3','22','12','20'),(32,'suresh','JAVA','String in java.java','24','0.400396','20'),(33,'adhi','PHP','forloopinphp.php3','94','12','20'),(34,'suresh','java','my.java','13','0.0205078125','50');
/*!40000 ALTER TABLE `downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `performtype` varchar(20) DEFAULT NULL,
  `java` double(8,4) DEFAULT NULL,
  `dotnet` double(8,4) DEFAULT NULL,
  `javascript` double(8,4) DEFAULT NULL,
  `php` double(8,4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation`
--

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;
INSERT INTO `evaluation` VALUES (4,'demo','time',10.0000,25.0000,0.0000,0.0000),(5,'demo','pricing',10.0000,15.0000,0.0000,0.0000),(6,'demo','usage',10.0000,23.0000,0.0000,0.0000),(17,'suresh','time',60.0000,0.0000,0.0000,22.0000),(18,'suresh','pricing',90.0000,0.0000,0.0000,0.0000),(19,'suresh','usage',0.8213,0.0000,0.0000,0.0000),(20,'adhi','time',0.0000,0.0000,0.0000,94.0000),(21,'adhi','pricing',0.0000,0.0000,0.0000,20.0000),(22,'adhi','usage',0.0000,0.0000,0.0000,12.0000);
/*!40000 ALTER TABLE `evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logout`
--

DROP TABLE IF EXISTS `logout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logout` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `timein` varchar(45) NOT NULL,
  `timeout` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logout`
--

LOCK TABLES `logout` WRITE;
/*!40000 ALTER TABLE `logout` DISABLE KEYS */;
INSERT INTO `logout` VALUES (1,'suresh','2015-01-22-06.24.15 PM','NO'),(2,'as','2015-02-05-03.28.39 AM','NO'),(3,'as','2015-02-05-11.13.35 AM','NO'),(4,'as','2015-02-05-11.33.30 AM','NO'),(5,'as','2015-02-05-12.33.49 PM','NO'),(6,'as','2015-02-05-02.19.14 PM','NO'),(7,'as','2015-02-05-03.01.00 PM','NO'),(8,'as','2015-02-05-04.06.00 PM','NO'),(9,'as','2015-02-05-04.13.54 PM','NO'),(10,'as','2015-02-05-04.16.29 PM','NO'),(11,'as','2015-02-05-04.24.27 PM','NO'),(12,'as','2015-02-05-05.27.56 PM','NO'),(13,'adhi','2015-02-05-05.55.44 PM','NO'),(14,'adhi','2015-02-05-06.16.24 PM','NO'),(15,'suresh','2015-02-05-06.28.01 PM','NO'),(16,'demo','2015-02-05-06.46.30 PM','NO'),(17,'adhi','2015-02-05-08.17.33 PM','NO'),(18,'adhi','2015-02-05-10.50.40 PM','2015-02-05-10.50.48 PM'),(19,'adhi','2015-02-05-10.54.29 PM','2015-02-06-12.06.07 AM'),(20,'demo','2015-02-06-12.06.32 AM','NO'),(21,'adhi','2015-02-06-08.28.54 AM','2015-02-06-08.47.06 AM'),(22,'suresh','2015-02-06-08.47.28 AM','2015-02-06-10.38.09 AM'),(23,'demo','2015-02-06-10.42.22 AM','2015-02-06-10.57.52 AM'),(24,'adhi','2015-02-06-11.05.00 AM','2015-02-06-11.13.13 AM'),(25,'demo','2015-02-06-11.38.45 AM','NO'),(26,'demo','2015-02-06-12.37.21 PM','2015-02-06-12.40.11 PM'),(27,'demo','2015-02-06-12.54.33 PM','NO'),(28,'adhi','2015-02-10-12.25.57 PM','2015-02-10-12.37.27 PM'),(29,'suresh','2016-12-18-05.28.15 PM','2016-12-18-05.28.48 PM'),(30,'suresh','2016-12-18-05.37.35 PM','2016-12-18-05.41.20 PM'),(31,'suresh','2016-12-18-08.02.17 PM','2016-12-18-08.05.11 PM'),(32,'sairam','2016-12-19-10.29.00 AM','2016-12-19-10.30.52 AM'),(33,'sairam','2016-12-20-02.47.10 PM','NO'),(34,'sairam','2016-12-21-12.59.13 PM','2016-12-21-01.01.25 PM'),(35,'sairam','2016-12-21-02.27.34 PM','2016-12-21-02.28.15 PM'),(36,'sairam','2016-12-23-10.21.33 AM','2016-12-23-10.23.52 AM');
/*!40000 ALTER TABLE `logout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schematable`
--

DROP TABLE IF EXISTS `schematable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schematable` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `masterkey` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schematable`
--

LOCK TABLES `schematable` WRITE;
/*!40000 ALTER TABLE `schematable` DISABLE KEYS */;
INSERT INTO `schematable` VALUES (3,'java','java123'),(4,'dotnet','dotnet12'),(5,'javascript','js12'),(6,'php','php12');
/*!40000 ALTER TABLE `schematable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `emailid` varchar(45) NOT NULL,
  `space` varchar(45) NOT NULL,
  `cloudid` varchar(45) NOT NULL,
  `permission` varchar(45) NOT NULL,
  `cloudusage` varchar(20) DEFAULT NULL,
  `cost` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (11,'adhi','adhi','Male','Chennai','India','New delhi','8891433564','adhi@gmail.com','50','2481','YES','49.98818125','40'),(12,'suresh','suresh','Male','Chennai','India','New delhi','8835555555','su@gmail.com','25','4517','YES','24.91460606811523','20'),(13,'demo','demo','Male','Chennai','India','New delhi','8891443564','demo@gmail.com','50','4246','YES','50','80'),(14,'sairam','sairam','Male','hyderabad','India','Andhra Pradesh','8886186818','sairamsagar16@gmail.com','100','7456','YES','100','80'),(15,'advaith','advaith','Male','10-2-76/4/2,uppal','India','Andhra Pradesh','8886784563','adhu@gmail.com','50','4913','YES','50','40');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-28 20:59:00
