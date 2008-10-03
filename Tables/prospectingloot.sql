-- MySQL dump 10.11
--
-- Host: 127.0.0.1    Database: ascent_world
-- ------------------------------------------------------
-- Server version	5.0.51b-community-nt

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
-- Table structure for table `prospectingloot`
--

DROP TABLE IF EXISTS `prospectingloot`;
CREATE TABLE `prospectingloot` (
  `index` int(11) unsigned NOT NULL auto_increment,
  `entryid` int(11) unsigned NOT NULL default '0',
  `itemid` int(11) unsigned NOT NULL default '25',
  `percentchance` float NOT NULL default '0',
  `heroicpercentchance` float NOT NULL default '0',
  `mincount` int(11) unsigned NOT NULL default '1',
  `maxcount` int(11) unsigned NOT NULL default '1',
  `ffa_loot` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`index`),
  UNIQUE KEY `index` (`index`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=latin1 COMMENT='Loot System';

--
-- Dumping data for table `prospectingloot`
--

LOCK TABLES `prospectingloot` WRITE;
/*!40000 ALTER TABLE `prospectingloot` DISABLE KEYS */;
INSERT INTO `prospectingloot` VALUES (1,23424,23107,16.2,0,1,1,0),(2,23424,23077,16.4,0,1,1,0),(3,23424,23077,16.4,0,1,1,0),(4,23424,21929,16.5,0,1,1,0),(5,23424,21929,16.5,0,1,1,0),(6,23424,23112,16.5,0,1,1,0),(7,23424,23112,16.5,0,1,1,0),(8,23424,23079,16.8,0,1,1,0),(9,23424,23079,16.8,0,1,1,0),(10,23424,24242,100,0,1,1,0),(11,10620,23117,1.2,0,1,1,0),(12,10620,23077,1.3,0,1,1,0),(13,10620,23079,1.3,0,1,1,0),(14,10620,23107,1.3,0,1,1,0),(15,10620,23112,1.4,0,1,1,0),(16,10620,21929,1.4,0,1,1,0),(17,10620,12799,17.1,0,1,1,0),(18,10620,12799,17.1,0,1,1,0),(19,10620,12800,17.1,0,1,1,0),(20,10620,12800,17.1,0,1,1,0),(21,10620,12364,17.1,0,1,1,0),(22,10620,12364,17.1,0,1,1,0),(23,10620,12361,17.5,0,1,1,0),(24,10620,12361,17.5,0,1,1,0),(25,10620,7910,28.7,0,1,1,0),(26,10620,7910,28.7,0,1,1,0),(27,10620,24235,100,0,1,1,0),(28,3858,12800,2.5,0,1,1,0),(29,3858,12364,2.6,0,1,1,0),(30,3858,12361,2.6,0,1,1,0),(31,3858,12799,2.7,0,1,1,0),(32,3858,3864,30.4,0,1,1,0),(33,3858,3864,30.4,0,1,1,0),(34,3858,7909,31.3,0,1,1,0),(35,3858,7909,31.3,0,1,1,0),(36,3858,7919,31.7,0,1,1,0),(37,3858,7910,32.5,0,1,1,0),(38,3858,7910,32.5,0,1,1,0),(39,3858,24234,100,0,1,1,0),(40,2772,7909,5.1,0,1,1,0),(41,2772,7910,5.2,0,1,1,0),(42,2772,1705,30.8,0,1,1,0),(43,2772,1705,30.8,0,1,1,0),(44,2772,3864,31.6,0,1,1,0),(45,2772,3864,31.6,0,1,1,0),(46,2772,1529,32.2,0,1,1,0),(47,2772,1529,32.2,0,1,1,0),(48,2772,24190,100,0,1,1,0),(49,2771,7909,3.1,0,1,1,0),(50,2771,3864,3.3,0,1,1,0),(51,2771,1529,3.5,0,1,1,0),(52,2771,1210,36.8,0,1,1,0),(53,2771,1210,36.8,0,1,1,0),(54,2771,1705,37.6,0,1,1,0),(55,2771,1705,37.6,0,1,1,0),(56,2771,1206,38.7,0,1,1,0),(57,2771,1206,38.7,0,1,1,0),(58,2771,24188,100,0,1,1,0),(59,2770,1210,9.8,0,1,1,0),(60,2770,818,49.9,0,1,1,0),(61,2770,774,50.1,0,1,1,0),(62,2770,24186,100,0,1,1,0),(63,23424,23117,15.9,0,1,1,0),(64,23424,23117,15.9,0,1,1,0),(65,23424,23439,1,0,1,1,0),(66,23424,23437,1,0,1,1,0),(67,23424,23436,1,0,1,1,0),(68,23424,23438,0.9,0,1,1,0),(69,23424,23440,0.9,0,1,1,0),(70,23424,3864,0.9,0,1,1,0),(71,23425,24243,100,0,1,1,0),(72,23425,21929,18.9,0,1,1,0),(73,23425,23079,18.9,0,1,1,0),(74,23425,23117,18.8,0,1,1,0),(75,23425,23112,18.8,0,1,1,0),(76,23425,23077,18.7,0,1,1,0),(77,23425,23107,18.6,0,1,1,0),(78,23425,23437,2.9,0,1,1,0),(79,23425,23439,2.8,0,1,1,0),(80,23425,23440,2.8,0,1,1,0),(81,23425,23436,2.8,0,1,1,0),(82,23425,23441,2.7,0,1,1,0),(83,23425,23438,2.7,0,1,1,0);
/*!40000 ALTER TABLE `prospectingloot` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2008-10-03  0:55:36
