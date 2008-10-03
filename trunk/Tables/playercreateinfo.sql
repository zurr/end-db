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
-- Table structure for table `playercreateinfo`
--

DROP TABLE IF EXISTS `playercreateinfo`;
CREATE TABLE `playercreateinfo` (
  `Index` tinyint(3) unsigned NOT NULL auto_increment,
  `race` tinyint(3) unsigned NOT NULL default '0',
  `factiontemplate` int(10) unsigned NOT NULL default '0',
  `class` tinyint(3) unsigned NOT NULL default '0',
  `mapID` int(10) unsigned NOT NULL default '0',
  `zoneID` int(10) unsigned NOT NULL default '0',
  `positionX` float NOT NULL default '0',
  `positionY` float NOT NULL default '0',
  `positionZ` float NOT NULL default '0',
  `displayID` smallint(5) unsigned NOT NULL default '0',
  `BaseStrength` tinyint(3) unsigned NOT NULL default '0',
  `BaseAgility` tinyint(3) unsigned NOT NULL default '0',
  `BaseStamina` tinyint(3) unsigned NOT NULL default '0',
  `BaseIntellect` tinyint(3) unsigned NOT NULL default '0',
  `BaseSpirit` tinyint(3) unsigned NOT NULL default '0',
  `BaseHealth` int(10) unsigned NOT NULL default '0',
  `BaseMana` int(10) unsigned NOT NULL default '0',
  `BaseRage` int(10) unsigned NOT NULL default '0',
  `BaseFocus` int(10) unsigned NOT NULL default '0',
  `BaseEnergy` int(10) unsigned NOT NULL default '0',
  `attackpower` int(10) unsigned NOT NULL default '0',
  `mindmg` float NOT NULL default '0',
  `maxdmg` float NOT NULL default '0',
  PRIMARY KEY  (`Index`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1 COMMENT='Player System';

--
-- Dumping data for table `playercreateinfo`
--

LOCK TABLES `playercreateinfo` WRITE;
/*!40000 ALTER TABLE `playercreateinfo` DISABLE KEYS */;
INSERT INTO `playercreateinfo` VALUES (1,1,1,1,0,12,-8949.95,-132.493,83.5312,49,23,20,22,20,20,60,0,1000,0,0,29,5,6),(2,2,2,1,1,14,-618.518,-4251.67,38.718,51,26,17,24,17,23,80,0,1000,0,0,35,6,7),(3,3,3,1,0,1,-6240.32,331.033,382.758,53,25,16,25,19,19,90,0,1000,0,0,33,5,6),(4,4,4,1,1,141,10311.3,832.463,1326.41,55,20,25,21,20,20,50,0,1000,0,0,23,4,5),(5,5,5,1,0,85,1676.35,1677.45,121.67,57,22,18,23,18,25,70,0,1000,0,0,27,4,5),(6,6,6,1,1,215,-2917.58,-257.98,52.9968,59,28,15,24,15,22,80,0,1000,0,0,39,6,7),(7,7,115,1,0,1,-6237.02,329.659,382.703,1563,18,23,21,23,20,50,0,1000,0,0,19,3,4),(8,8,116,1,1,14,-618.518,-4251.67,38.718,1478,24,22,23,16,21,70,0,1000,0,0,31,5,6),(9,1,1,2,0,12,-8949.95,-132.493,83.5312,49,22,20,22,20,21,58,80,0,0,0,27,4,5),(10,3,3,2,0,1,-6240.32,331.033,382.758,53,24,16,25,19,20,88,79,0,0,0,31,5,6),(11,2,2,3,1,14,-618.518,-4251.67,38.718,51,23,20,23,17,24,76,82,0,0,0,25,4,5),(12,3,3,3,0,1,-6240.32,331.033,382.758,53,22,19,24,19,20,86,84,0,0,0,23,4,5),(15,4,4,3,1,141,10311.3,832.463,1326.41,55,17,28,20,20,21,46,85,0,0,0,27,4,5),(16,6,6,3,1,215,-2917.58,-257.98,52.9968,59,25,18,23,15,23,76,80,0,0,0,25,4,5),(17,8,116,3,1,14,-618.518,-4251.67,38.718,1478,21,25,22,16,22,66,81,0,0,0,28,5,6),(18,1,1,4,0,12,-8949.95,-132.493,83.5312,49,21,23,21,20,20,55,0,0,0,100,26,4,5),(19,2,2,4,1,14,-618.518,-4251.67,38.718,51,24,20,23,17,23,75,0,0,0,100,26,4,5),(20,3,3,4,0,1,-6240.32,331.033,382.758,53,23,19,24,19,19,85,0,0,0,100,24,4,5),(21,4,4,4,1,141,10311.3,832.463,1326.41,55,18,28,20,20,20,45,0,0,0,100,28,5,6),(22,5,5,4,0,85,1676.35,1677.45,121.67,57,20,21,22,18,25,65,0,0,0,100,23,4,5),(23,7,115,4,0,1,-6237.02,329.659,382.703,1563,16,26,20,23,20,45,0,0,0,100,24,4,5),(24,8,116,4,1,14,-618.518,-4251.67,38.718,1478,22,25,22,16,21,65,0,0,0,100,29,5,6),(25,1,1,5,0,12,-8949.95,-132.493,83.5312,49,20,20,20,22,23,52,160,0,0,0,10,2,3),(26,3,3,5,0,1,-6240.32,331.033,382.758,53,22,16,23,21,22,82,145,0,0,0,12,2,3),(27,4,4,5,1,141,10311.3,832.463,1326.41,55,17,25,19,22,23,51,160,0,0,0,7,2,2),(28,5,5,5,0,85,1676.35,1677.45,121.67,57,19,18,21,20,28,62,130,0,0,0,9,2,3),(29,8,116,5,1,14,-618.518,-4251.67,38.718,1478,21,22,21,18,24,62,128,0,0,0,11,2,3),(30,2,2,7,1,14,-618.518,-4251.67,38.718,51,24,17,23,18,25,77,73,0,0,0,30,5,6),(31,6,6,7,1,215,-2917.58,-257.98,52.9968,59,26,15,23,16,24,77,71,0,0,0,34,5,6),(32,8,116,7,1,14,-618.518,-4251.67,38.718,1478,22,22,22,17,23,67,72,0,0,0,26,4,5),(34,1,1,8,0,12,-8949.95,-132.493,83.5312,49,20,20,20,23,22,52,165,0,0,0,10,2,3),(35,5,5,8,0,85,1676.35,1677.45,121.67,57,19,18,21,21,27,62,135,0,0,0,9,2,3),(36,7,115,8,0,1,-6237.02,329.659,382.703,1563,15,23,19,26,22,51,210,0,0,0,5,1,2),(37,8,116,8,1,14,-618.518,-4251.67,38.718,1478,21,22,21,19,23,62,119,0,0,0,11,2,3),(38,1,1,9,0,12,-8949.95,-132.493,83.5312,49,20,20,21,22,22,53,140,0,0,0,10,2,3),(39,2,2,9,1,14,-618.518,-4251.67,38.718,51,23,17,23,19,25,73,109,0,0,0,13,2,3),(40,5,5,9,0,85,1676.35,1677.45,121.67,57,19,18,22,20,27,63,110,0,0,0,9,2,3),(41,7,115,9,0,1,-6237.02,329.659,382.703,1563,15,23,20,25,22,43,185,0,0,0,5,1,2),(42,4,4,11,1,141,10311.3,832.463,1326.41,55,18,25,19,22,22,53,100,0,0,0,16,3,4),(43,6,6,11,1,215,-2917.58,-257.98,52.9968,59,26,15,22,17,24,74,67,0,0,0,32,5,6),(44,11,1629,1,530,3524,-3961.64,-13931.2,100.615,16125,24,17,21,21,22,50,0,1000,0,0,31,5,6),(45,11,1629,2,530,3524,-3961.64,-13931.2,100.615,16125,23,17,21,21,23,48,95,0,0,0,29,5,6),(46,11,1629,3,530,3524,-3961.64,-13931.2,100.615,16125,21,20,20,21,23,46,100,0,0,0,23,4,5),(47,11,1629,5,530,3524,-3961.64,-13931.2,100.615,16125,21,17,19,23,25,51,175,0,0,0,11,2,3),(48,11,1629,7,530,3524,-3961.64,-13931.2,100.615,16125,22,17,20,22,24,47,105,0,0,0,26,4,5),(49,11,1629,8,530,3524,-3961.64,-13931.2,100.615,16125,21,17,19,24,24,51,180,0,0,0,11,2,3),(50,10,1610,2,530,3430,10349.6,-6357.29,33.4026,15476,19,22,20,24,20,38,140,0,0,0,21,4,4),(51,10,1610,3,530,3430,10349.6,-6357.29,33.4026,15476,17,25,19,24,20,45,145,0,0,0,24,4,5),(52,10,1610,4,530,3430,10349.6,-6357.29,33.4026,15476,18,25,19,24,19,44,0,0,0,100,25,4,5),(53,10,1610,5,530,3430,10349.6,-6357.29,33.4026,15476,17,22,18,26,22,50,220,0,0,0,7,2,2),(54,10,1610,8,530,3430,10349.6,-6357.29,33.4026,15476,17,22,18,27,21,50,225,0,0,0,7,2,2),(55,10,1610,9,530,3430,10349.6,-6357.29,33.4026,15476,17,22,19,26,21,42,200,0,0,0,7,2,2);
/*!40000 ALTER TABLE `playercreateinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2008-10-03  0:55:34
