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
-- Table structure for table `petdefaultspells`
--

DROP TABLE IF EXISTS `petdefaultspells`;
CREATE TABLE `petdefaultspells` (
  `entry` int(11) NOT NULL default '0',
  `spell` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Pet System';

--
-- Dumping data for table `petdefaultspells`
--

LOCK TABLES `petdefaultspells` WRITE;
/*!40000 ALTER TABLE `petdefaultspells` DISABLE KEYS */;
INSERT INTO `petdefaultspells` VALUES (3110,17253),(30,17253),(1994,17253),(1922,17253),(1688,17253),(1505,17253),(2959,17253),(2958,17253),(1509,17253),(1138,17253),(1999,17253),(1131,17253),(834,17255),(833,17255),(1195,17255),(2001,17255),(7319,17255),(1693,17255),(3461,17255),(2960,17255),(118,17255),(17199,17255),(1133,17255),(442,17255),(1132,17255),(1555,17255),(2000,17255),(1765,17255),(4824,17256),(11921,17256),(1923,17256),(616,17256),(14279,17256),(4005,17256),(4006,17256),(5053,17256),(2350,17256),(16349,17256),(3823,17256),(505,17256),(569,17256),(3653,17256),(2476,17256),(521,17256),(14266,17256),(1185,17256),(4825,17257),(628,17257),(1258,17257),(2348,17257),(4887,17257),(3825,17257),(2349,17257),(2089,17257),(1112,17257),(574,17257),(2408,17257),(3821,17257),(2753,17258),(2727,17258),(4412,17258),(4341,17258),(2565,17258),(4344,17258),(2563,17258),(4143,17258),(4841,17259),(14339,17259),(769,17259),(4345,17259),(8959,17259),(5286,17259),(8211,17259),(14233,17259),(1087,17259),(5356,17259),(8762,17259),(8933,17260),(1817,17260),(8961,17260),(8213,17260),(1824,17260),(8277,17260),(2505,17260),(6585,17260),(2681,17260),(9696,17261),(18466,17261),(16934,17261),(19350,17261),(18467,27050),(21956,27050),(20634,27050),(1196,16827),(3106,16827),(3281,16827),(3124,16827),(1995,16827),(1130,16828),(5823,16828),(15652,16828),(3108,16828),(1778,16828),(16348,16828),(1961,16828),(1997,16828),(2163,16828),(2232,16828),(3127,16828),(822,16828),(3809,16829),(1189,16829),(3812,16829),(6788,16829),(3619,16829),(16349,16829),(2351,16829),(1216,16829),(4821,16829),(4822,16829),(4823,16830),(3810,16830),(4696,16830),(4140,16830),(4343,16831),(4697,16831),(7022,16831),(5937,16831),(5268,16832),(731,16832),(1088,16832),(5352,16832),(5422,16832),(922,16832),(8958,3010),(8301,3010),(9695,3010),(1816,3010),(7099,3010),(5274,3010),(14344,3010),(14343,3010),(7444,3010),(7455,3010),(7445,3009),(17034,3009),(17039,3009),(7456,3009),(17129,27049),(18257,27049),(18220,27049),(20671,27049),(22100,27049),(22265,27049),(3121,1742),(2957,1742),(3035,1742),(3246,1742),(2321,1742),(1553,1742),(1199,1742),(3068,1742),(2070,1742),(2042,1742),(2323,1753),(2237,1753),(3245,1753),(3241,1753),(2384,1753),(4067,1753),(4425,1754),(4126,1754),(2385,1754),(4538,1754),(736,1754),(683,1754),(681,1754),(2732,1755),(2731,1755),(4861,1755),(8927,1756),(2522,1756),(8601,1756),(8600,1756),(7430,16697),(8602,16697),(21022,27048),(22807,27048),(20671,27048),(4688,23099),(2850,23099),(2727,23099),(2729,23099),(2728,23099),(976,23099),(4662,23099),(4304,23099),(729,23099),(4950,23099),(682,23099),(767,23099),(728,23109),(5426,23109),(1713,23109),(731,23109),(5286,23109),(8211,23109),(5427,23109),(2730,23109),(2734,23109),(2926,23109),(5425,23109),(7055,23110),(9696,23110),(7433,23110),(7432,23110),(8303,23110),(10200,23110),(8300,23110),(16932,23110),(22123,23110),(9416,23110),(20634,23110),(2681,23110),(11365,23110),(15067,23110),(4425,23145),(4693,23145),(4539,23145),(4538,23145),(2579,23145),(4346,23145),(4347,23145),(4348,23145),(4861,23145),(6013,23145),(2578,23145),(5349,23147),(5429,23147),(8207,23147),(7097,23147),(5428,23147),(5308,23147),(5430,23147),(5307,23147),(1809,23148),(8927,23148),(21042,23148),(7099,23148),(7098,23148),(17053,23148),(14343,23148),(8600,23148),(22265,23148),(21804,23148),(5708,23148),(8299,23148),(17128,23148),(19055,23148),(7455,23148),(7456,23148),(2931,23148),(2966,7371),(2954,7371),(3225,7371),(1125,7371),(3099,7371),(1127,7371),(3100,7371),(1126,7371),(119,7371),(3098,7371),(1190,7371),(390,7371),(330,7371),(524,7371),(1689,7371),(708,7371),(113,7371),(1985,7371),(1984,7371),(1192,26177),(157,26177),(547,26177),(1191,26177),(454,26177),(4511,26178),(345,26178),(4514,26178),(4512,26178),(5992,26201),(8303,26201),(16117,27685),(833,24604),(10644,24604),(1765,24604),(1258,24605),(2729,24605),(3825,24605),(2925,24605),(14339,24603),(8959,24603),(5287,24603),(5286,24603),(2924,24603),(5356,24603),(9696,24597),(20330,24597),(20058,24597),(18033,24597),(21956,24597),(18476,24597),(20797,24844),(3630,25008),(5056,25008),(3631,25008),(5756,25008),(3249,25008),(3424,25008),(3247,25008),(4117,25009),(4119,25009),(4118,25009),(3472,25009),(4347,25010),(4348,25010),(5308,25010),(5307,25010),(5349,25011),(5708,25011),(19428,25012),(21123,25012),(20749,25012),(11357,25012),(11359,25012),(20673,25012),(2406,24450),(2731,24450),(768,24450),(684,24450),(1713,24452),(2734,24452),(7432,24453),(2522,24453),(15067,24453),(3226,24640),(5823,24640),(3250,24640),(3252,24640),(3127,24640),(7078,24583),(4696,24583),(4699,24583),(4140,24583),(4139,24583),(5937,24583),(7405,24586),(9695,24586),(8926,24586),(7803,24586),(5424,24586),(5422,24586),(5423,24586),(5988,24586),(11735,24586),(9691,24586),(9698,24587),(14476,24587),(11737,24587),(11736,24587),(21864,27060),(22100,27060),(154,24423),(4694,24577),(4158,24577),(4861,24577),(1809,24578),(8927,24578),(7097,24578),(17035,24579),(8602,24579),(7456,24579),(21042,27051),(17129,27051),(18257,27051),(19055,27051),(4824,26064),(4825,26064),(4887,26064),(8213,26064),(3653,26064),(2408,26064),(1114,26090),(1108,26090),(1557,26187),(5262,26187),(9622,26188),(6516,26188),(15650,34889),(15649,34889),(18155,35323),(20502,35323),(20038,35323),(2966,35290),(2954,35290),(3099,35290),(1126,35290),(524,35290),(1985,35290),(3225,35291),(3100,35291),(157,35291),(1190,35291),(17199,35291),(1192,35292),(17527,35292),(547,35292),(345,35293),(5992,35296),(16117,35297),(16934,35297),(19189,35297),(19349,35297),(22123,35298),(5048,35387),(5762,35387),(5755,35387),(5224,35389),(5225,35389),(7268,35389),(19784,35392),(11372,35392),(11373,35392),(11371,35392),(23219,35346),(18884,35346),(18465,35346),(18464,35346);
/*!40000 ALTER TABLE `petdefaultspells` ENABLE KEYS */;
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
