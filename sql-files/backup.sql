/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.14-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: argonarok
-- ------------------------------------------------------
-- Server version	10.11.14-MariaDB-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acc_reg_num`
--

DROP TABLE IF EXISTS `acc_reg_num`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_reg_num` (
  `account_id` int(11) unsigned NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `value` bigint(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`account_id`,`key`,`index`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_reg_num`
--

LOCK TABLES `acc_reg_num` WRITE;
/*!40000 ALTER TABLE `acc_reg_num` DISABLE KEYS */;
INSERT INTO `acc_reg_num` VALUES
(2000000,'#pda_nivel',0,1),
(2000000,'#pda_date',0,77),
(2000000,'#monster',0,10);
/*!40000 ALTER TABLE `acc_reg_num` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_reg_str`
--

DROP TABLE IF EXISTS `acc_reg_str`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_reg_str` (
  `account_id` int(11) unsigned NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `value` varchar(254) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_reg_str`
--

LOCK TABLES `acc_reg_str` WRITE;
/*!40000 ALTER TABLE `acc_reg_str` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_reg_str` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_collection_complete`
--

DROP TABLE IF EXISTS `account_collection_complete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_collection_complete` (
  `account_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `completed_at` datetime DEFAULT NULL,
  `char_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`account_id`,`collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_collection_complete`
--

LOCK TABLES `account_collection_complete` WRITE;
/*!40000 ALTER TABLE `account_collection_complete` DISABLE KEYS */;
INSERT INTO `account_collection_complete` VALUES
(2000000,1,'2026-03-11 21:10:26','Admin'),
(2000000,3,NULL,NULL),
(2000000,4,NULL,NULL),
(2000000,5,NULL,NULL),
(2000000,7,NULL,NULL),
(2000000,9,NULL,NULL),
(2000000,10,NULL,NULL),
(2000000,11,NULL,NULL),
(2000000,12,NULL,NULL),
(2000000,13,NULL,NULL),
(2000000,14,NULL,NULL),
(2000000,15,NULL,NULL),
(2000000,16,NULL,NULL),
(2000000,17,NULL,NULL),
(2000001,3,NULL,NULL),
(2000001,4,NULL,NULL),
(2000001,5,NULL,NULL),
(2000001,6,NULL,NULL),
(2000001,7,NULL,NULL),
(2000001,8,NULL,NULL),
(2000001,9,NULL,NULL);
/*!40000 ALTER TABLE `account_collection_complete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_collection_progress`
--

DROP TABLE IF EXISTS `account_collection_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_collection_progress` (
  `account_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`account_id`,`collection_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_collection_progress`
--

LOCK TABLES `account_collection_progress` WRITE;
/*!40000 ALTER TABLE `account_collection_progress` DISABLE KEYS */;
INSERT INTO `account_collection_progress` VALUES
(2000000,3,4001),
(2000000,4,4002),
(2000000,5,4003),
(2000000,7,4001),
(2000000,9,4001),
(2000000,10,4009),
(2000000,11,4001),
(2000000,11,4015),
(2000000,12,4001),
(2000000,12,4002),
(2000000,13,4001),
(2000000,14,4001),
(2000000,15,4001),
(2000000,16,4001),
(2000000,17,4001),
(2000001,3,4001),
(2000001,4,4002),
(2000001,5,4003),
(2000001,6,4004),
(2000001,7,4001),
(2000001,8,4001),
(2000001,9,4001);
/*!40000 ALTER TABLE `account_collection_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `achievement`
--

DROP TABLE IF EXISTS `achievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `achievement` (
  `char_id` int(11) unsigned NOT NULL DEFAULT 0,
  `id` bigint(11) unsigned NOT NULL,
  `count1` int(10) unsigned NOT NULL DEFAULT 0,
  `count2` int(10) unsigned NOT NULL DEFAULT 0,
  `count3` int(10) unsigned NOT NULL DEFAULT 0,
  `count4` int(10) unsigned NOT NULL DEFAULT 0,
  `count5` int(10) unsigned NOT NULL DEFAULT 0,
  `count6` int(10) unsigned NOT NULL DEFAULT 0,
  `count7` int(10) unsigned NOT NULL DEFAULT 0,
  `count8` int(10) unsigned NOT NULL DEFAULT 0,
  `count9` int(10) unsigned NOT NULL DEFAULT 0,
  `count10` int(10) unsigned NOT NULL DEFAULT 0,
  `completed` datetime DEFAULT NULL,
  `rewarded` datetime DEFAULT NULL,
  PRIMARY KEY (`char_id`,`id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievement`
--

LOCK TABLES `achievement` WRITE;
/*!40000 ALTER TABLE `achievement` DISABLE KEYS */;
INSERT INTO `achievement` VALUES
(150001,240000,0,0,0,0,0,0,0,0,0,0,'2026-02-06 19:15:08',NULL),
(150000,240000,0,0,0,0,0,0,0,0,0,0,'2026-02-07 19:20:52',NULL),
(150000,230201,10,5,10,10,0,0,0,0,0,0,NULL,NULL),
(150000,200007,0,0,0,0,0,0,0,0,0,0,'2026-02-21 18:51:52',NULL),
(150000,240003,0,0,0,0,0,0,0,0,0,0,'2026-02-21 18:49:44',NULL),
(150000,220023,0,0,0,0,0,0,0,0,0,0,'2026-02-21 18:49:44',NULL),
(150000,200017,0,0,0,0,0,0,0,0,0,0,'2026-02-21 18:49:08',NULL),
(150000,200018,0,0,0,0,0,0,0,0,0,0,'2026-02-21 18:49:08',NULL),
(150000,200019,0,0,0,0,0,0,0,0,0,0,'2026-02-21 18:49:08',NULL),
(150000,240002,0,0,0,0,0,0,0,0,0,0,'2026-02-21 18:49:08',NULL),
(150000,200020,0,0,0,0,0,0,0,0,0,0,'2026-02-21 18:49:08',NULL),
(150000,200021,0,0,0,0,0,0,0,0,0,0,'2026-02-21 18:49:08',NULL),
(150000,240001,0,0,0,0,0,0,0,0,0,0,'2026-02-21 18:49:08',NULL),
(150000,200022,0,0,0,0,0,0,0,0,0,0,'2026-02-21 18:49:08',NULL),
(150000,240004,0,0,0,0,0,0,0,0,0,0,'2026-02-21 18:52:29',NULL),
(150000,200000,0,0,0,0,0,0,0,0,0,0,'2026-02-21 18:52:29',NULL),
(150000,230202,1,0,0,0,0,0,0,0,0,0,NULL,NULL),
(150002,240001,0,0,0,0,0,0,0,0,0,0,'2026-02-21 20:43:01',NULL),
(150002,200007,0,0,0,0,0,0,0,0,0,0,'2026-02-21 20:43:01',NULL),
(150002,240000,0,0,0,0,0,0,0,0,0,0,'2026-02-21 20:42:28',NULL),
(150002,230201,1,0,0,0,0,0,0,0,0,0,NULL,NULL),
(150002,200017,0,0,0,0,0,0,0,0,0,0,'2026-02-21 20:43:14',NULL),
(150002,240003,0,0,0,0,0,0,0,0,0,0,'2026-02-21 20:43:14',NULL),
(150002,200018,0,0,0,0,0,0,0,0,0,0,'2026-02-21 20:43:14',NULL),
(150002,200019,0,0,0,0,0,0,0,0,0,0,'2026-02-21 20:43:14',NULL),
(150002,200020,0,0,0,0,0,0,0,0,0,0,'2026-02-21 20:43:14',NULL),
(150002,200021,0,0,0,0,0,0,0,0,0,0,'2026-02-21 20:43:14',NULL),
(150002,240002,0,0,0,0,0,0,0,0,0,0,'2026-02-21 20:43:14',NULL),
(150002,200022,0,0,0,0,0,0,0,0,0,0,'2026-02-21 20:43:14',NULL),
(150003,240000,0,0,0,0,0,0,0,0,0,0,'2026-02-21 20:48:40',NULL),
(150003,230201,1,0,0,0,0,0,0,0,0,0,NULL,NULL),
(150000,220024,0,0,0,0,0,0,0,0,0,0,'2026-02-23 09:20:07',NULL),
(150000,220025,0,0,0,0,0,0,0,0,0,0,'2026-02-23 09:20:07',NULL),
(150004,240000,0,0,0,0,0,0,0,0,0,0,'2026-03-03 18:26:34',NULL),
(150013,240000,0,0,0,0,0,0,0,0,0,0,'2026-03-16 17:36:12',NULL),
(150006,240000,0,0,0,0,0,0,0,0,0,0,'2026-03-03 18:46:54',NULL),
(150000,200009,0,0,0,0,0,0,0,0,0,0,'2026-03-03 18:58:56',NULL),
(150004,240002,0,0,0,0,0,0,0,0,0,0,'2026-03-04 08:45:21',NULL),
(150004,200005,0,0,0,0,0,0,0,0,0,0,'2026-03-04 08:45:21',NULL),
(150004,240001,0,0,0,0,0,0,0,0,0,0,'2026-03-04 08:45:21',NULL),
(150004,200006,0,0,0,0,0,0,0,0,0,0,'2026-03-04 08:45:21',NULL),
(150004,220005,0,0,0,0,0,0,0,0,0,0,'2026-03-04 08:46:18',NULL),
(150010,200006,0,0,0,0,0,0,0,0,0,0,'2026-03-16 17:36:28',NULL),
(150010,240001,0,0,0,0,0,0,0,0,0,0,'2026-03-16 17:36:28',NULL),
(150010,200005,0,0,0,0,0,0,0,0,0,0,'2026-03-16 17:36:28',NULL),
(150010,240002,0,0,0,0,0,0,0,0,0,0,'2026-03-16 17:36:28',NULL),
(150011,240000,0,0,0,0,0,0,0,0,0,0,'2026-03-16 11:29:33',NULL),
(150009,240002,0,0,0,0,0,0,0,0,0,0,'2026-03-05 10:39:54',NULL),
(150009,200005,0,0,0,0,0,0,0,0,0,0,'2026-03-05 10:39:54',NULL),
(150009,240000,0,0,0,0,0,0,0,0,0,0,'2026-03-05 10:34:41',NULL),
(150008,240000,0,0,0,0,0,0,0,0,0,0,'2026-03-04 09:01:54',NULL),
(150009,230201,10,0,0,0,0,0,0,0,0,0,NULL,NULL),
(150010,240000,0,0,0,0,0,0,0,0,0,0,'2026-03-16 11:26:26',NULL),
(150009,200006,0,0,0,0,0,0,0,0,0,0,'2026-03-05 10:39:54',NULL),
(150009,240001,0,0,0,0,0,0,0,0,0,0,'2026-03-05 10:37:44',NULL),
(150009,220005,0,0,0,0,0,0,0,0,0,0,'2026-03-05 10:37:44',NULL),
(150000,230203,1,0,0,0,0,0,0,0,0,0,NULL,NULL),
(150000,220030,0,0,0,0,0,0,0,0,0,0,'2026-03-16 10:00:38',NULL),
(150000,220031,0,0,0,0,0,0,0,0,0,0,'2026-03-16 10:00:38',NULL),
(150000,240005,0,0,0,0,0,0,0,0,0,0,'2026-03-16 10:00:38',NULL),
(150000,220032,0,0,0,0,0,0,0,0,0,0,'2026-03-16 10:00:38',NULL),
(150000,220033,0,0,0,0,0,0,0,0,0,0,'2026-03-16 10:00:38',NULL),
(150000,220034,0,0,0,0,0,0,0,0,0,0,'2026-03-16 10:00:38',NULL),
(150010,220005,0,0,0,0,0,0,0,0,0,0,'2026-03-16 17:37:44',NULL),
(150000,200008,0,0,0,0,0,0,0,0,0,0,'2026-03-17 09:25:15',NULL),
(150000,230101,1,0,0,0,0,0,0,0,0,0,'2026-03-18 07:53:15',NULL),
(150000,230102,1,0,0,0,0,0,0,0,0,0,'2026-03-18 08:50:21',NULL),
(150000,240006,0,0,0,0,0,0,0,0,0,0,'2026-03-22 14:22:39',NULL),
(150000,220026,0,0,0,0,0,0,0,0,0,0,'2026-03-22 14:22:39',NULL),
(150000,200023,0,0,0,0,0,0,0,0,0,0,'2026-03-24 20:41:20',NULL),
(150000,200024,0,0,0,0,0,0,0,0,0,0,'2026-03-24 20:41:20',NULL),
(150000,200025,0,0,0,0,0,0,0,0,0,0,'2026-03-24 20:41:20',NULL),
(150000,200026,0,0,0,0,0,0,0,0,0,0,'2026-03-24 20:41:20',NULL),
(150000,200027,0,0,0,0,0,0,0,0,0,0,'2026-03-24 20:41:20',NULL),
(150000,200028,0,0,0,0,0,0,0,0,0,0,'2026-03-24 20:41:20',NULL),
(150000,200010,0,0,0,0,0,0,0,0,0,0,'2026-03-24 21:05:47',NULL),
(150000,240007,0,0,0,0,0,0,0,0,0,0,'2026-03-24 21:03:12',NULL),
(150000,220027,0,0,0,0,0,0,0,0,0,0,'2026-03-24 21:03:12',NULL),
(150000,240008,0,0,0,0,0,0,0,0,0,0,'2026-03-27 14:36:42',NULL),
(150000,200002,0,0,0,0,0,0,0,0,0,0,'2026-03-27 14:36:42',NULL),
(150000,200001,0,0,0,0,0,0,0,0,0,0,'2026-03-27 14:36:42',NULL),
(150000,200032,0,0,0,0,0,0,0,0,0,0,'2026-03-27 14:36:42',NULL),
(150000,120110,0,0,0,0,0,0,0,0,0,0,'2026-03-27 14:45:28',NULL),
(150002,220024,0,0,0,0,0,0,0,0,0,0,'2026-03-27 20:12:55',NULL),
(150002,220023,0,0,0,0,0,0,0,0,0,0,'2026-03-27 20:12:35',NULL),
(150000,120133,0,0,0,0,0,0,0,0,0,0,'2026-03-30 12:02:36',NULL),
(150000,200003,0,0,0,0,0,0,0,0,0,0,'2026-03-30 12:00:47',NULL),
(150000,200011,0,0,0,0,0,0,0,0,0,0,'2026-03-30 13:35:48',NULL),
(150000,120111,0,0,0,0,0,0,0,0,0,0,'2026-03-30 13:33:23',NULL),
(150000,240009,0,0,0,0,0,0,0,0,0,0,'2026-03-30 14:02:15',NULL),
(150000,200035,0,0,0,0,0,0,0,0,0,0,'2026-03-30 14:02:15',NULL),
(150000,200012,0,0,0,0,0,0,0,0,0,0,'2026-03-31 09:37:28',NULL),
(150000,200033,0,0,0,0,0,0,0,0,0,0,'2026-03-31 09:41:27',NULL),
(150002,200008,0,0,0,0,0,0,0,0,0,0,'2026-03-31 13:27:41',NULL);
/*!40000 ALTER TABLE `achievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auction`
--

DROP TABLE IF EXISTS `auction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auction` (
  `auction_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) unsigned NOT NULL DEFAULT 0,
  `seller_name` varchar(30) NOT NULL DEFAULT '',
  `buyer_id` int(11) unsigned NOT NULL DEFAULT 0,
  `buyer_name` varchar(30) NOT NULL DEFAULT '',
  `price` int(11) unsigned NOT NULL DEFAULT 0,
  `buynow` int(11) unsigned NOT NULL DEFAULT 0,
  `hours` smallint(6) NOT NULL DEFAULT 0,
  `timestamp` int(11) unsigned NOT NULL DEFAULT 0,
  `nameid` int(10) unsigned NOT NULL DEFAULT 0,
  `item_name` varchar(50) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT 0,
  `refine` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `card0` int(10) unsigned NOT NULL DEFAULT 0,
  `card1` int(10) unsigned NOT NULL DEFAULT 0,
  `card2` int(10) unsigned NOT NULL DEFAULT 0,
  `card3` int(10) unsigned NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `unique_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`auction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auction`
--

LOCK TABLES `auction` WRITE;
/*!40000 ALTER TABLE `auction` DISABLE KEYS */;
/*!40000 ALTER TABLE `auction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barter`
--

DROP TABLE IF EXISTS `barter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `barter` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `index` smallint(5) unsigned NOT NULL,
  `amount` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`name`,`index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barter`
--

LOCK TABLES `barter` WRITE;
/*!40000 ALTER TABLE `barter` DISABLE KEYS */;
/*!40000 ALTER TABLE `barter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bonus_categories`
--

DROP TABLE IF EXISTS `bonus_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bonus_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonus_categories`
--

LOCK TABLES `bonus_categories` WRITE;
/*!40000 ALTER TABLE `bonus_categories` DISABLE KEYS */;
INSERT INTO `bonus_categories` VALUES
(1,'Basic Bonuses'),
(2,'Extended Bonuses'),
(3,'Group-specific Bonuses'),
(4,'Status Bonuses'),
(5,'Auto Spell Bonuses'),
(6,'Misc Bonuses');
/*!40000 ALTER TABLE `bonus_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bonus_constants`
--

DROP TABLE IF EXISTS `bonus_constants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bonus_constants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonus_constants`
--

LOCK TABLES `bonus_constants` WRITE;
/*!40000 ALTER TABLE `bonus_constants` DISABLE KEYS */;
/*!40000 ALTER TABLE `bonus_constants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bonus_list`
--

DROP TABLE IF EXISTS `bonus_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bonus_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `script_cmd` varchar(10) DEFAULT NULL,
  `bonus_cmd` varchar(50) DEFAULT NULL,
  `param1_type` varchar(30) DEFAULT NULL,
  `param2_type` varchar(30) DEFAULT NULL,
  `param3_type` varchar(30) DEFAULT NULL,
  `param4_type` varchar(30) DEFAULT NULL,
  `param5_type` varchar(30) DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonus_list`
--

LOCK TABLES `bonus_list` WRITE;
/*!40000 ALTER TABLE `bonus_list` DISABLE KEYS */;
INSERT INTO `bonus_list` VALUES
(1,1,'bonus','bStr','number',NULL,NULL,NULL,NULL,'Increase STR'),
(2,1,'bonus','bAgi','number',NULL,NULL,NULL,NULL,'Increase AGI'),
(3,1,'bonus','bVit','number',NULL,NULL,NULL,NULL,'Increase VIT'),
(4,1,'bonus','bInt','number',NULL,NULL,NULL,NULL,'Increase INT'),
(5,1,'bonus','bDex','number',NULL,NULL,NULL,NULL,'Increase DEX'),
(6,1,'bonus','bLuk','number',NULL,NULL,NULL,NULL,'Increase LUK'),
(7,1,'bonus','bAllStats','number',NULL,NULL,NULL,NULL,'Increase all stats'),
(8,1,'bonus','bAgiVit','number',NULL,NULL,NULL,NULL,'Increase AGI and VIT'),
(9,1,'bonus','bAgiDexStr','number',NULL,NULL,NULL,NULL,'Increase STR AGI DEX'),
(10,1,'bonus','bPow','number',NULL,NULL,NULL,NULL,'Increase POW'),
(11,1,'bonus','bSta','number',NULL,NULL,NULL,NULL,'Increase STA'),
(12,1,'bonus','bWis','number',NULL,NULL,NULL,NULL,'Increase WIS'),
(13,1,'bonus','bSpl','number',NULL,NULL,NULL,NULL,'Increase SPL'),
(14,1,'bonus','bCon','number',NULL,NULL,NULL,NULL,'Increase CON'),
(15,1,'bonus','bCrt','number',NULL,NULL,NULL,NULL,'Increase CRT'),
(16,1,'bonus','bAllTraitStats','number',NULL,NULL,NULL,NULL,'Increase all trait stats'),
(17,1,'bonus','bMaxHP','number',NULL,NULL,NULL,NULL,'Max HP'),
(18,1,'bonus','bMaxHPrate','number',NULL,NULL,NULL,NULL,'Max HP percent'),
(19,1,'bonus','bMaxSP','number',NULL,NULL,NULL,NULL,'Max SP'),
(20,1,'bonus','bMaxSPrate','number',NULL,NULL,NULL,NULL,'Max SP percent'),
(21,1,'bonus','bMaxAP','number',NULL,NULL,NULL,NULL,'Max AP'),
(22,1,'bonus','bMaxAPrate','number',NULL,NULL,NULL,NULL,'Max AP percent'),
(23,1,'bonus','bBaseAtk','number',NULL,NULL,NULL,NULL,'Base ATK'),
(24,1,'bonus','bAtk','number',NULL,NULL,NULL,NULL,'ATK'),
(25,1,'bonus','bAtk2','number',NULL,NULL,NULL,NULL,'ATK2'),
(26,1,'bonus','bAtkRate','number',NULL,NULL,NULL,NULL,'ATK percent'),
(27,1,'bonus','bWeaponAtkRate','number',NULL,NULL,NULL,NULL,'Weapon ATK percent'),
(28,1,'bonus','bMatk','number',NULL,NULL,NULL,NULL,'MATK'),
(29,1,'bonus','bMatk2','number',NULL,NULL,NULL,NULL,'MATK hidden'),
(30,1,'bonus','bMatkRate','number',NULL,NULL,NULL,NULL,'MATK percent'),
(31,1,'bonus','bWeaponMatkRate','number',NULL,NULL,NULL,NULL,'Weapon MATK percent'),
(32,1,'bonus','bDef','number',NULL,NULL,NULL,NULL,'DEF'),
(33,1,'bonus','bDefRate','number',NULL,NULL,NULL,NULL,'DEF percent'),
(34,1,'bonus','bDef2','number',NULL,NULL,NULL,NULL,'VIT DEF'),
(35,1,'bonus','bDef2Rate','number',NULL,NULL,NULL,NULL,'VIT DEF percent'),
(36,1,'bonus','bMdef','number',NULL,NULL,NULL,NULL,'MDEF'),
(37,1,'bonus','bMdefRate','number',NULL,NULL,NULL,NULL,'MDEF percent'),
(38,1,'bonus','bMdef2','number',NULL,NULL,NULL,NULL,'INT MDEF'),
(39,1,'bonus','bMdef2Rate','number',NULL,NULL,NULL,NULL,'INT MDEF percent'),
(40,1,'bonus','bHit','number',NULL,NULL,NULL,NULL,'Hit'),
(41,1,'bonus','bHitRate','number',NULL,NULL,NULL,NULL,'Hit percent'),
(42,1,'bonus','bCritical','number',NULL,NULL,NULL,NULL,'Critical'),
(43,1,'bonus','bCriticalLong','number',NULL,NULL,NULL,NULL,'Long critical'),
(44,3,'bonus2','bCriticalAddRace','race','number',NULL,NULL,NULL,'Critical vs race'),
(45,1,'bonus','bCriticalRate','number',NULL,NULL,NULL,NULL,'Critical percent'),
(46,1,'bonus','bFlee','number',NULL,NULL,NULL,NULL,'Flee'),
(47,1,'bonus','bFleeRate','number',NULL,NULL,NULL,NULL,'Flee percent'),
(48,1,'bonus','bFlee2','number',NULL,NULL,NULL,NULL,'Perfect dodge'),
(49,1,'bonus','bFlee2Rate','number',NULL,NULL,NULL,NULL,'Perfect dodge percent'),
(50,1,'bonus','bPerfectHitRate','number',NULL,NULL,NULL,NULL,'Perfect hit chance'),
(51,1,'bonus','bPerfectHitAddRate','number',NULL,NULL,NULL,NULL,'Perfect hit bonus'),
(52,1,'bonus','bSpeedRate','number',NULL,NULL,NULL,NULL,'Movement speed'),
(53,1,'bonus','bSpeedAddRate','number',NULL,NULL,NULL,NULL,'Movement speed bonus'),
(54,1,'bonus','bAspd','number',NULL,NULL,NULL,NULL,'ASPD'),
(55,1,'bonus','bAspdRate','number',NULL,NULL,NULL,NULL,'ASPD percent'),
(56,1,'bonus','bAtkRange','number',NULL,NULL,NULL,NULL,'Attack range'),
(57,1,'bonus','bAddMaxWeight','number',NULL,NULL,NULL,NULL,'Max weight'),
(58,1,'bonus','bPAtk','number',NULL,NULL,NULL,NULL,'PAtk'),
(59,1,'bonus','bPAtkRate','number',NULL,NULL,NULL,NULL,'PAtk percent'),
(60,1,'bonus','bSMatk','number',NULL,NULL,NULL,NULL,'SMAtk'),
(61,1,'bonus','bSMatkRate','number',NULL,NULL,NULL,NULL,'SMAtk percent'),
(62,1,'bonus','bRes','number',NULL,NULL,NULL,NULL,'Res'),
(63,1,'bonus','bResRate','number',NULL,NULL,NULL,NULL,'Res percent'),
(64,1,'bonus','bMRes','number',NULL,NULL,NULL,NULL,'MRes'),
(65,1,'bonus','bMResRate','number',NULL,NULL,NULL,NULL,'MRes percent'),
(66,1,'bonus','bHPlus','number',NULL,NULL,NULL,NULL,'HPlus'),
(67,1,'bonus','bHPlusRate','number',NULL,NULL,NULL,NULL,'HPlus percent'),
(68,1,'bonus','bCRate','number',NULL,NULL,NULL,NULL,'CRate'),
(69,1,'bonus','bCRateRate','number',NULL,NULL,NULL,NULL,'CRate percent'),
(70,2,'bonus','bHPrecovRate','number',NULL,NULL,NULL,NULL,'HP regen rate'),
(71,2,'bonus','bSPrecovRate','number',NULL,NULL,NULL,NULL,'SP regen rate'),
(72,2,'bonus2','bHPRegenRate','number','time',NULL,NULL,NULL,'HP regen interval'),
(73,2,'bonus2','bHPLossRate','number','time',NULL,NULL,NULL,'HP loss interval'),
(74,2,'bonus2','bSPRegenRate','number','time',NULL,NULL,NULL,'SP regen interval'),
(75,2,'bonus2','bSPLossRate','number','time',NULL,NULL,NULL,'SP loss interval'),
(76,2,'bonus2','bRegenPercentHP','number','time',NULL,NULL,NULL,'HP percent regen'),
(77,2,'bonus2','bRegenPercentSP','number','time',NULL,NULL,NULL,'SP percent regen'),
(78,2,'bonus','bNoRegen','number',NULL,NULL,NULL,NULL,'Disable regen'),
(79,2,'bonus','bUseSPrate','number',NULL,NULL,NULL,NULL,'SP consumption'),
(80,2,'bonus2','bSkillUseSP','skill','number',NULL,NULL,NULL,'Reduce skill SP'),
(81,2,'bonus2','bSkillUseSPrate','skill','number',NULL,NULL,NULL,'Reduce skill SP percent'),
(82,2,'bonus2','bSkillAtk','skill','number',NULL,NULL,NULL,'Skill damage percent'),
(83,2,'bonus','bSkillRatio','number',NULL,NULL,NULL,NULL,'Skill ratio'),
(84,2,'bonus','bShortAtkRate','number',NULL,NULL,NULL,NULL,'Short range damage'),
(85,2,'bonus','bLongAtkRate','number',NULL,NULL,NULL,NULL,'Long range damage'),
(86,2,'bonus','bCritAtkRate','number',NULL,NULL,NULL,NULL,'Critical damage'),
(87,2,'bonus','bNonCritAtkRate','number',NULL,NULL,NULL,NULL,'Non critical damage'),
(88,2,'bonus','bCritDefRate','number',NULL,NULL,NULL,NULL,'Critical damage reduction'),
(89,2,'bonus','bCriticalDef','number',NULL,NULL,NULL,NULL,'Critical resist'),
(90,2,'bonus2','bWeaponAtk','weapon','number',NULL,NULL,NULL,'Weapon atk'),
(91,2,'bonus2','bWeaponDamageRate','weapon','number',NULL,NULL,NULL,'Weapon damage'),
(92,2,'bonus','bNearAtkDef','number',NULL,NULL,NULL,NULL,'Melee reduction'),
(93,2,'bonus','bLongAtkDef','number',NULL,NULL,NULL,NULL,'Ranged reduction'),
(94,2,'bonus','bMagicAtkDef','number',NULL,NULL,NULL,NULL,'Magic reduction'),
(95,2,'bonus','bMiscAtkDef','number',NULL,NULL,NULL,NULL,'Misc reduction'),
(96,2,'bonus','bNoWeaponDamage','number',NULL,NULL,NULL,NULL,'Weapon damage reduction'),
(97,2,'bonus','bNoMagicDamage','number',NULL,NULL,NULL,NULL,'Magic damage reduction'),
(98,2,'bonus','bNoMiscDamage','number',NULL,NULL,NULL,NULL,'Misc damage reduction'),
(99,3,'bonus2','bAddEle','element','number',NULL,NULL,NULL,'Physical damage vs element'),
(100,3,'bonus3','bAddEle','element','number','bf',NULL,NULL,'Physical damage vs element with trigger'),
(101,3,'bonus2','bMagicAddEle','element','number',NULL,NULL,NULL,'Magic damage vs element'),
(102,3,'bonus2','bSubEle','element','number',NULL,NULL,NULL,'Damage reduction vs element'),
(103,3,'bonus3','bSubEle','element','number','bf',NULL,NULL,'Damage reduction vs element with trigger'),
(104,3,'bonus2','bSubDefEle','element','number',NULL,NULL,NULL,'Damage reduction vs defense element'),
(105,3,'bonus2','bMagicSubDefEle','element','number',NULL,NULL,NULL,'Magic reduction vs defense element'),
(106,3,'bonus2','bAddRace','race','number',NULL,NULL,NULL,'Damage vs race'),
(107,3,'bonus2','bMagicAddRace','race','number',NULL,NULL,NULL,'Magic damage vs race'),
(108,3,'bonus2','bSubRace','race','number',NULL,NULL,NULL,'Damage reduction vs race'),
(109,3,'bonus3','bSubRace','race','number','bf',NULL,NULL,'Damage reduction vs race with trigger'),
(110,3,'bonus2','bAddClass','class','number',NULL,NULL,NULL,'Damage vs class'),
(111,3,'bonus2','bMagicAddClass','class','number',NULL,NULL,NULL,'Magic damage vs class'),
(112,3,'bonus2','bSubClass','class','number',NULL,NULL,NULL,'Damage reduction vs class'),
(113,3,'bonus2','bAddSize','size','number',NULL,NULL,NULL,'Damage vs size'),
(114,3,'bonus2','bMagicAddSize','size','number',NULL,NULL,NULL,'Magic damage vs size'),
(115,3,'bonus2','bSubSize','size','number',NULL,NULL,NULL,'Damage reduction vs size'),
(116,3,'bonus2','bWeaponSubSize','size','number',NULL,NULL,NULL,'Weapon damage reduction vs size'),
(117,3,'bonus2','bMagicSubSize','size','number',NULL,NULL,NULL,'Magic damage reduction vs size'),
(118,3,'bonus','bNoSizeFix',NULL,NULL,NULL,NULL,NULL,'Ignore size modifier'),
(119,3,'bonus2','bAddDamageClass','mob','number',NULL,NULL,NULL,'Damage vs monster ID'),
(120,3,'bonus2','bAddMagicDamageClass','mob','number',NULL,NULL,NULL,'Magic damage vs monster ID'),
(121,3,'bonus2','bAddDefMonster','mob','number',NULL,NULL,NULL,'Physical reduction vs monster ID'),
(122,3,'bonus2','bAddMDefMonster','mob','number',NULL,NULL,NULL,'Magic reduction vs monster ID'),
(123,3,'bonus2','bAddRace2','race2','number',NULL,NULL,NULL,'Damage vs monster race'),
(124,3,'bonus2','bSubRace2','race2','number',NULL,NULL,NULL,'Damage reduction vs monster race'),
(125,3,'bonus2','bMagicAddRace2','race2','number',NULL,NULL,NULL,'Magic damage vs monster race'),
(126,3,'bonus2','bSubSkill','skill','number',NULL,NULL,NULL,'Damage reduction vs skill'),
(127,3,'bonus','bAbsorbDmgMaxHP','number',NULL,NULL,NULL,NULL,'Limit damage by percent of MaxHP'),
(128,3,'bonus','bAbsorbDmgMaxHP2','number',NULL,NULL,NULL,NULL,'Damage capped to percent MaxHP'),
(129,3,'bonus','bAtkEle','element',NULL,NULL,NULL,NULL,'Change attack element'),
(130,3,'bonus','bDefEle','element',NULL,NULL,NULL,NULL,'Change defense element'),
(131,3,'bonus2','bMagicAtkEle','element','number',NULL,NULL,NULL,'Magic damage of element'),
(132,3,'bonus','bDefRatioAtkRace','race',NULL,NULL,NULL,NULL,'Damage vs race based on DEF'),
(133,3,'bonus','bDefRatioAtkEle','element',NULL,NULL,NULL,NULL,'Damage vs element based on DEF'),
(134,3,'bonus','bDefRatioAtkClass','class',NULL,NULL,NULL,NULL,'Damage vs class based on DEF'),
(135,3,'bonus4','bSetDefRace','race','number','time','number',NULL,'Set enemy DEF'),
(136,3,'bonus4','bSetMDefRace','race','number','time','number',NULL,'Set enemy MDEF'),
(137,3,'bonus','bIgnoreDefEle','element',NULL,NULL,NULL,NULL,'Ignore DEF vs element'),
(138,3,'bonus','bIgnoreDefRace','race',NULL,NULL,NULL,NULL,'Ignore DEF vs race'),
(139,3,'bonus','bIgnoreDefClass','class',NULL,NULL,NULL,NULL,'Ignore DEF vs class'),
(140,3,'bonus','bIgnoreMDefRace','race',NULL,NULL,NULL,NULL,'Ignore MDEF vs race'),
(141,3,'bonus2','bIgnoreDefRaceRate','race','number',NULL,NULL,NULL,'Ignore percent DEF vs race'),
(142,3,'bonus2','bIgnoreMdefRaceRate','race','number',NULL,NULL,NULL,'Ignore percent MDEF vs race'),
(143,3,'bonus2','bIgnoreMdefRace2Rate','race2','number',NULL,NULL,NULL,'Ignore percent MDEF vs monster race'),
(144,3,'bonus','bIgnoreMDefEle','element',NULL,NULL,NULL,NULL,'Ignore MDEF vs element'),
(145,3,'bonus2','bIgnoreDefClassRate','class','number',NULL,NULL,NULL,'Ignore percent DEF vs class'),
(146,3,'bonus2','bIgnoreMdefClassRate','class','number',NULL,NULL,NULL,'Ignore percent MDEF vs class'),
(147,3,'bonus2','bIgnoreResRaceRate','race','number',NULL,NULL,NULL,'Ignore percent Res vs race'),
(148,3,'bonus2','bIgnoreMResRaceRate','race','number',NULL,NULL,NULL,'Ignore percent MRes vs race'),
(149,3,'bonus2','bExpAddRace','race','number',NULL,NULL,NULL,'Extra EXP vs race'),
(150,3,'bonus2','bExpAddClass','class','number',NULL,NULL,NULL,'Extra EXP vs class'),
(151,4,'bonus2','bAddEff','status','number',NULL,NULL,NULL,'Inflict status'),
(152,4,'bonus2','bAddEff2','status','number',NULL,NULL,NULL,'Inflict status on self'),
(153,4,'bonus2','bAddEffWhenHit','status','number',NULL,NULL,NULL,'Inflict status when hit'),
(154,4,'bonus2','bResEff','status','number',NULL,NULL,NULL,'Status resistance'),
(155,4,'bonus3','bAddEff','status','number','atf',NULL,NULL,'Inflict status with trigger'),
(156,4,'bonus4','bAddEff','status','number','atf','time',NULL,'Inflict status duration'),
(157,4,'bonus3','bAddEffWhenHit','status','number','atf',NULL,NULL,'Status when hit'),
(158,4,'bonus4','bAddEffWhenHit','status','number','atf','time',NULL,'Status when hit duration'),
(159,4,'bonus3','bAddEffOnSkill','skill','status','number',NULL,NULL,'Status on skill'),
(160,4,'bonus4','bAddEffOnSkill','skill','status','number','atf',NULL,'Status on skill with trigger'),
(161,4,'bonus5','bAddEffOnSkill','skill','status','number','atf','time','Status on skill duration'),
(162,4,'bonus2','bComaClass','class','number',NULL,NULL,NULL,'Coma vs class'),
(163,4,'bonus2','bComaRace','race','number',NULL,NULL,NULL,'Coma vs race'),
(164,4,'bonus2','bWeaponComaEle','element','number',NULL,NULL,NULL,'Coma vs element'),
(165,4,'bonus2','bWeaponComaClass','class','number',NULL,NULL,NULL,'Coma vs class'),
(166,4,'bonus2','bWeaponComaRace','race','number',NULL,NULL,NULL,'Coma vs race'),
(167,5,'bonus3','bAutoSpell','skill','number','number',NULL,NULL,'Auto cast skill'),
(168,5,'bonus3','bAutoSpellWhenHit','skill','number','number',NULL,NULL,'Auto cast when hit'),
(169,5,'bonus4','bAutoSpell','skill','number','number','number',NULL,'Auto cast skill advanced'),
(170,5,'bonus5','bAutoSpell','skill','number','number','bf','number','Auto cast skill with trigger'),
(171,5,'bonus4','bAutoSpellWhenHit','skill','number','number','number',NULL,'Auto cast when hit advanced'),
(172,5,'bonus5','bAutoSpellWhenHit','skill','number','number','bf','number','Auto cast when hit trigger'),
(173,5,'bonus4','bAutoSpellOnSkill','skill','skill','number','number',NULL,'Auto spell on skill'),
(174,5,'bonus5','bAutoSpellOnSkill','skill','skill','number','number','number','Auto spell on skill advanced'),
(175,6,'bonus','bHPDrainValue','number',NULL,NULL,NULL,NULL,'HP drain'),
(176,6,'bonus2','bHPDrainValueRace','race','number',NULL,NULL,NULL,'HP drain vs race'),
(177,6,'bonus2','bHpDrainValueClass','class','number',NULL,NULL,NULL,'HP drain vs class'),
(178,6,'bonus','bSPDrainValue','number',NULL,NULL,NULL,NULL,'SP drain'),
(179,6,'bonus2','bSPDrainValueRace','race','number',NULL,NULL,NULL,'SP drain vs race'),
(180,6,'bonus2','bSpDrainValueClass','class','number',NULL,NULL,NULL,'SP drain vs class'),
(181,6,'bonus2','bHPDrainRate','number','number',NULL,NULL,NULL,'HP drain rate'),
(182,6,'bonus2','bSPDrainRate','number','number',NULL,NULL,NULL,'SP drain rate'),
(183,6,'bonus2','bHPVanishRate','number','number',NULL,NULL,NULL,'HP vanish'),
(184,6,'bonus3','bHPVanishRaceRate','race','number','number',NULL,NULL,'HP vanish vs race'),
(185,6,'bonus2','bSPVanishRate','number','number',NULL,NULL,NULL,'SP vanish'),
(186,6,'bonus3','bSPVanishRaceRate','race','number','number',NULL,NULL,'SP vanish vs race'),
(187,6,'bonus3','bStateNoRecoverRace','race','number','time',NULL,NULL,'No recover state'),
(188,6,'bonus','bHPGainValue','number',NULL,NULL,NULL,NULL,'HP gain'),
(189,6,'bonus','bSPGainValue','number',NULL,NULL,NULL,NULL,'SP gain'),
(190,6,'bonus2','bSPGainRace','race','number',NULL,NULL,NULL,'SP gain vs race'),
(191,6,'bonus','bLongHPGainValue','number',NULL,NULL,NULL,NULL,'HP gain ranged'),
(192,6,'bonus','bLongSPGainValue','number',NULL,NULL,NULL,NULL,'SP gain ranged'),
(193,6,'bonus','bMagicHPGainValue','number',NULL,NULL,NULL,NULL,'HP gain magic'),
(194,6,'bonus','bMagicSPGainValue','number',NULL,NULL,NULL,NULL,'SP gain magic'),
(195,6,'bonus','bShortWeaponDamageReturn','number',NULL,NULL,NULL,NULL,'Reflect melee'),
(196,6,'bonus','bLongWeaponDamageReturn','number',NULL,NULL,NULL,NULL,'Reflect ranged'),
(197,6,'bonus','bMagicDamageReturn','number',NULL,NULL,NULL,NULL,'Reflect magic'),
(198,6,'bonus','bReduceDamageReturn','number',NULL,NULL,NULL,NULL,'Reduce reflect'),
(199,6,'bonus','bUnstripableWeapon',NULL,NULL,NULL,NULL,NULL,'Unstrip weapon'),
(200,6,'bonus','bUnstripableArmor',NULL,NULL,NULL,NULL,NULL,'Unstrip armor'),
(201,6,'bonus','bUnstripableHelm',NULL,NULL,NULL,NULL,NULL,'Unstrip helm'),
(202,6,'bonus','bUnstripableShield',NULL,NULL,NULL,NULL,NULL,'Unstrip shield'),
(203,6,'bonus','bUnstripable',NULL,NULL,NULL,NULL,NULL,'Unstrip all'),
(204,6,'bonus','bUnbreakableGarment',NULL,NULL,NULL,NULL,NULL,'Unbreak garment'),
(205,6,'bonus','bUnbreakableWeapon',NULL,NULL,NULL,NULL,NULL,'Unbreak weapon'),
(206,6,'bonus','bUnbreakableArmor',NULL,NULL,NULL,NULL,NULL,'Unbreak armor'),
(207,6,'bonus','bUnbreakableHelm',NULL,NULL,NULL,NULL,NULL,'Unbreak helm'),
(208,6,'bonus','bUnbreakableShield',NULL,NULL,NULL,NULL,NULL,'Unbreak shield'),
(209,6,'bonus','bUnbreakableShoes',NULL,NULL,NULL,NULL,NULL,'Unbreak shoes'),
(210,6,'bonus','bUnbreakable','number',NULL,NULL,NULL,NULL,'Reduce break chance'),
(211,6,'bonus','bBreakWeaponRate','number',NULL,NULL,NULL,NULL,'Break weapon'),
(212,6,'bonus','bBreakArmorRate','number',NULL,NULL,NULL,NULL,'Break armor'),
(213,6,'bonus2','bDropAddRace','race','number',NULL,NULL,NULL,'Drop rate vs race'),
(214,6,'bonus2','bDropAddClass','class','number',NULL,NULL,NULL,'Drop rate vs class'),
(215,6,'bonus3','bAddMonsterIdDropItem','item','mob','number',NULL,NULL,'Extra drop'),
(216,6,'bonus2','bAddMonsterDropItem','item','number',NULL,NULL,NULL,'Drop item'),
(217,6,'bonus3','bAddMonsterDropItem','item','race','number',NULL,NULL,'Drop item vs race'),
(218,6,'bonus3','bAddClassDropItem','item','class','number',NULL,NULL,'Drop item vs class'),
(219,6,'bonus2','bAddMonsterDropItemGroup','itemgroup','number',NULL,NULL,NULL,'Drop item group'),
(220,6,'bonus3','bAddMonsterDropItemGroup','itemgroup','race','number',NULL,NULL,'Drop group vs race'),
(221,6,'bonus3','bAddClassDropItemGroup','itemgroup','class','number',NULL,NULL,'Drop group vs class'),
(222,6,'bonus2','bGetZenyNum','number','number',NULL,NULL,NULL,'Gain zeny'),
(223,6,'bonus2','bAddGetZenyNum','number','number',NULL,NULL,NULL,'Extra zeny'),
(224,6,'bonus','bDoubleRate','number',NULL,NULL,NULL,NULL,'Double attack'),
(225,6,'bonus','bDoubleAddRate','number',NULL,NULL,NULL,NULL,'Double attack bonus'),
(226,6,'bonus','bSplashRange','number',NULL,NULL,NULL,NULL,'Splash radius'),
(227,6,'bonus','bSplashAddRange','number',NULL,NULL,NULL,NULL,'Splash radius bonus'),
(228,6,'bonus2','bAddSkillBlow','skill','number',NULL,NULL,NULL,'Knockback skill'),
(229,6,'bonus','bNoKnockback',NULL,NULL,NULL,NULL,NULL,'Prevent knockback'),
(230,6,'bonus','bNoGemStone',NULL,NULL,NULL,NULL,NULL,'No gemstone'),
(231,6,'bonus','bIntravision',NULL,NULL,NULL,NULL,NULL,'See hidden'),
(232,6,'bonus','bPerfectHide',NULL,NULL,NULL,NULL,NULL,'Hide from monsters'),
(233,6,'bonus','bRestartFullRecover',NULL,NULL,NULL,NULL,NULL,'Full recover on revive'),
(234,6,'bonus','bClassChange','number',NULL,NULL,NULL,NULL,'Change monster class'),
(235,6,'bonus','bAddStealRate','number',NULL,NULL,NULL,NULL,'Steal rate'),
(236,6,'bonus','bNoMadoFuel',NULL,NULL,NULL,NULL,NULL,'No Mado fuel'),
(237,6,'bonus','bNoWalkDelay',NULL,NULL,NULL,NULL,NULL,'Infinite endure');
/*!40000 ALTER TABLE `bonus_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bonus_script`
--

DROP TABLE IF EXISTS `bonus_script`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bonus_script` (
  `char_id` int(11) unsigned NOT NULL,
  `script` text NOT NULL,
  `tick` bigint(20) NOT NULL DEFAULT 0,
  `flag` smallint(5) unsigned NOT NULL DEFAULT 0,
  `type` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `icon` smallint(3) NOT NULL DEFAULT -1,
  KEY `char_id` (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonus_script`
--

LOCK TABLES `bonus_script` WRITE;
/*!40000 ALTER TABLE `bonus_script` DISABLE KEYS */;
INSERT INTO `bonus_script` VALUES
(150003,'{ bonus bAgi,15; }',94641182,512,0,-1),
(150000,'{ bonus bAgi,15; }',35395225,512,0,-1);
/*!40000 ALTER TABLE `bonus_script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyingstore_items`
--

DROP TABLE IF EXISTS `buyingstore_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyingstore_items` (
  `buyingstore_id` int(10) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `amount` smallint(5) unsigned NOT NULL,
  `price` int(10) unsigned NOT NULL,
  PRIMARY KEY (`buyingstore_id`,`index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyingstore_items`
--

LOCK TABLES `buyingstore_items` WRITE;
/*!40000 ALTER TABLE `buyingstore_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `buyingstore_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyingstores`
--

DROP TABLE IF EXISTS `buyingstores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyingstores` (
  `id` int(10) unsigned NOT NULL,
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(10) unsigned NOT NULL,
  `sex` enum('F','M') NOT NULL DEFAULT 'M',
  `map` varchar(20) NOT NULL,
  `x` smallint(5) unsigned NOT NULL,
  `y` smallint(5) unsigned NOT NULL,
  `title` varchar(80) NOT NULL,
  `limit` int(10) unsigned NOT NULL,
  `body_direction` char(1) NOT NULL DEFAULT '4',
  `head_direction` char(1) NOT NULL DEFAULT '0',
  `sit` char(1) NOT NULL DEFAULT '1',
  `autotrade` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyingstores`
--

LOCK TABLES `buyingstores` WRITE;
/*!40000 ALTER TABLE `buyingstores` DISABLE KEYS */;
/*!40000 ALTER TABLE `buyingstores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_inventory`
--

DROP TABLE IF EXISTS `cart_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) unsigned NOT NULL DEFAULT 0,
  `nameid` int(10) unsigned NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `equip` int(11) unsigned NOT NULL DEFAULT 0,
  `identify` smallint(6) NOT NULL DEFAULT 0,
  `refine` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `attribute` tinyint(4) NOT NULL DEFAULT 0,
  `card0` int(10) unsigned NOT NULL DEFAULT 0,
  `card1` int(10) unsigned NOT NULL DEFAULT 0,
  `card2` int(10) unsigned NOT NULL DEFAULT 0,
  `card3` int(10) unsigned NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `expire_time` int(11) unsigned NOT NULL DEFAULT 0,
  `bound` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `unique_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_inventory`
--

LOCK TABLES `cart_inventory` WRITE;
/*!40000 ALTER TABLE `cart_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `char`
--

DROP TABLE IF EXISTS `char`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `char` (
  `char_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL DEFAULT 0,
  `char_num` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(30) NOT NULL DEFAULT '',
  `class` smallint(6) unsigned NOT NULL DEFAULT 0,
  `base_level` smallint(6) unsigned NOT NULL DEFAULT 1,
  `job_level` smallint(6) unsigned NOT NULL DEFAULT 1,
  `base_exp` bigint(20) unsigned NOT NULL DEFAULT 0,
  `job_exp` bigint(20) unsigned NOT NULL DEFAULT 0,
  `zeny` int(11) unsigned NOT NULL DEFAULT 0,
  `str` smallint(4) unsigned NOT NULL DEFAULT 0,
  `agi` smallint(4) unsigned NOT NULL DEFAULT 0,
  `vit` smallint(4) unsigned NOT NULL DEFAULT 0,
  `int` smallint(4) unsigned NOT NULL DEFAULT 0,
  `dex` smallint(4) unsigned NOT NULL DEFAULT 0,
  `luk` smallint(4) unsigned NOT NULL DEFAULT 0,
  `pow` smallint(4) unsigned NOT NULL DEFAULT 0,
  `sta` smallint(4) unsigned NOT NULL DEFAULT 0,
  `wis` smallint(4) unsigned NOT NULL DEFAULT 0,
  `spl` smallint(4) unsigned NOT NULL DEFAULT 0,
  `con` smallint(4) unsigned NOT NULL DEFAULT 0,
  `crt` smallint(4) unsigned NOT NULL DEFAULT 0,
  `max_hp` int(11) unsigned NOT NULL DEFAULT 0,
  `hp` int(11) unsigned NOT NULL DEFAULT 0,
  `max_sp` int(11) unsigned NOT NULL DEFAULT 0,
  `sp` int(11) unsigned NOT NULL DEFAULT 0,
  `max_ap` int(11) unsigned NOT NULL DEFAULT 0,
  `ap` int(11) unsigned NOT NULL DEFAULT 0,
  `status_point` int(11) unsigned NOT NULL DEFAULT 0,
  `skill_point` int(11) unsigned NOT NULL DEFAULT 0,
  `trait_point` int(11) unsigned NOT NULL DEFAULT 0,
  `option` int(11) NOT NULL DEFAULT 0,
  `karma` tinyint(3) NOT NULL DEFAULT 0,
  `manner` smallint(6) NOT NULL DEFAULT 0,
  `party_id` int(11) unsigned NOT NULL DEFAULT 0,
  `guild_id` int(11) unsigned NOT NULL DEFAULT 0,
  `pet_id` int(11) unsigned NOT NULL DEFAULT 0,
  `homun_id` int(11) unsigned NOT NULL DEFAULT 0,
  `elemental_id` int(11) unsigned NOT NULL DEFAULT 0,
  `hair` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `hair_color` smallint(5) unsigned NOT NULL DEFAULT 0,
  `clothes_color` smallint(5) unsigned NOT NULL DEFAULT 0,
  `body` smallint(5) unsigned NOT NULL DEFAULT 0,
  `weapon` smallint(6) unsigned NOT NULL DEFAULT 0,
  `shield` smallint(6) unsigned NOT NULL DEFAULT 0,
  `head_top` smallint(6) unsigned NOT NULL DEFAULT 0,
  `head_mid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `head_bottom` smallint(6) unsigned NOT NULL DEFAULT 0,
  `robe` smallint(6) unsigned NOT NULL DEFAULT 0,
  `last_map` varchar(11) NOT NULL DEFAULT '',
  `last_x` smallint(4) unsigned NOT NULL DEFAULT 53,
  `last_y` smallint(4) unsigned NOT NULL DEFAULT 111,
  `last_instanceid` int(11) unsigned NOT NULL DEFAULT 0,
  `save_map` varchar(11) NOT NULL DEFAULT '',
  `save_x` smallint(4) unsigned NOT NULL DEFAULT 53,
  `save_y` smallint(4) unsigned NOT NULL DEFAULT 111,
  `partner_id` int(11) unsigned NOT NULL DEFAULT 0,
  `online` tinyint(2) NOT NULL DEFAULT 0,
  `father` int(11) unsigned NOT NULL DEFAULT 0,
  `mother` int(11) unsigned NOT NULL DEFAULT 0,
  `child` int(11) unsigned NOT NULL DEFAULT 0,
  `fame` int(11) unsigned NOT NULL DEFAULT 0,
  `rename` smallint(3) unsigned NOT NULL DEFAULT 0,
  `delete_date` int(11) unsigned NOT NULL DEFAULT 0,
  `moves` int(11) unsigned NOT NULL DEFAULT 0,
  `unban_time` int(11) unsigned NOT NULL DEFAULT 0,
  `font` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `uniqueitem_counter` int(11) unsigned NOT NULL DEFAULT 0,
  `sex` enum('M','F') NOT NULL,
  `hotkey_rowshift` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `hotkey_rowshift2` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `clan_id` int(11) unsigned NOT NULL DEFAULT 0,
  `last_login` datetime DEFAULT NULL,
  `title_id` int(11) unsigned NOT NULL DEFAULT 0,
  `show_equip` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `inventory_slots` smallint(6) NOT NULL DEFAULT 100,
  `body_direction` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `disable_call` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `disable_partyinvite` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `disable_showcostumes` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`),
  UNIQUE KEY `name_key` (`name`),
  KEY `account_id` (`account_id`),
  KEY `party_id` (`party_id`),
  KEY `guild_id` (`guild_id`),
  KEY `online` (`online`)
) ENGINE=MyISAM AUTO_INCREMENT=150014 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `char`
--

LOCK TABLES `char` WRITE;
/*!40000 ALTER TABLE `char` DISABLE KEYS */;
INSERT INTO `char` VALUES
(150002,2000000,1,'Heloisa',17,51,1,26177,0,4985,100,100,100,100,100,100,0,0,0,0,0,0,1003595,330000,712,712,0,0,433,0,0,0,0,0,0,0,0,0,0,32,17,0,17,1,1,0,0,0,0,'prontera',156,182,0,'iz_int',18,26,0,0,0,0,0,0,0,0,0,0,0,6,'F',0,0,0,'2026-03-31 13:19:45',0,0,100,4,0,0,0),
(150000,2000000,0,'Admin',4063,200,1,541,659,499995283,1,1,1,28,1,1,0,0,0,0,0,0,20212,20212,3087,3087,200,0,4073,59,0,0,0,0,0,0,0,0,0,21,24,1,4063,0,0,0,0,0,0,'prontera',157,180,0,'gon_test',56,99,0,0,0,0,0,0,0,0,0,0,0,239,'M',0,0,0,'2026-04-08 17:07:38',0,0,100,7,0,0,0),
(150003,2000000,2,'Mari Ya',4023,1,2,150,9,5000,1,1,1,1,1,1,0,0,0,0,0,0,40,40,11,11,0,0,48,1,0,0,0,0,0,0,0,0,0,4,8,0,4023,1,0,0,0,0,0,'prontera',153,175,0,'int_land03',77,101,0,0,0,0,0,0,0,0,0,0,0,0,'F',0,0,0,'2026-03-16 11:25:01',0,0,100,6,0,0,0),
(150004,2000000,3,'Teste',5,1,1,0,0,5000,1,1,1,1,1,1,0,0,0,0,0,0,40,40,13,13,0,0,48,0,0,0,0,0,6,0,0,0,0,1,0,0,5,1,0,0,0,0,0,'prontera',156,191,0,'iz_int01',18,26,0,0,0,0,0,0,0,0,0,0,0,1,'M',0,0,0,'2026-03-16 11:18:55',0,0,100,3,0,0,0),
(150010,2000000,5,'Hyllok',5,41,31,0,0,5000,1,1,1,1,1,1,0,0,0,0,0,0,607,607,135,135,0,0,316,21,0,0,0,0,9,0,0,0,0,9,5,0,5,1,0,0,0,0,0,'prontera',152,184,0,'iz_int',18,26,0,0,0,0,0,0,0,0,0,0,0,0,'M',0,0,0,'2026-03-16 17:36:23',0,0,100,4,0,0,0),
(150006,2000001,1,'Testador',0,1,1,0,0,5000,1,1,1,1,20,1,0,0,0,0,0,0,40,23,11,11,0,0,1,0,0,0,0,0,6,0,0,0,0,18,0,0,0,1,0,0,0,0,0,'iz_int',18,26,0,'iz_int',18,26,0,0,0,0,0,0,0,0,0,0,0,0,'M',0,0,0,'2026-03-04 20:30:17',0,0,100,2,0,0,0),
(150011,2000000,6,'Test rAthena',0,1,1,0,0,5000,1,1,1,1,1,1,0,0,0,0,0,0,44,43,12,12,0,0,48,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,'iz_int01',18,26,0,'iz_int01',18,26,0,0,0,0,0,0,0,0,0,0,0,0,'M',0,0,0,'2026-03-16 11:29:33',0,0,100,0,0,0,0),
(150008,2000001,2,'Annn',0,1,1,0,0,5000,1,1,1,1,1,1,0,0,0,0,0,0,40,40,11,11,0,0,48,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,'alberta',28,234,0,'iz_int',18,26,0,0,0,0,0,0,0,0,0,0,0,0,'M',0,0,0,'2026-03-04 11:30:03',0,0,100,4,0,0,0),
(150009,2000000,4,'Testia',6,5,4,1141,270,5000,1,9,1,1,19,1,0,0,0,0,0,0,68,68,20,20,0,0,0,3,0,0,0,0,7,0,0,0,0,22,4,135,6,1,0,0,0,0,0,'prontera',156,181,0,'iz_int03',18,26,0,0,0,0,0,0,0,0,0,0,0,28,'F',0,0,0,'2026-03-16 08:25:07',0,0,100,4,0,0,0),
(150013,2000001,0,'Athena',0,1,1,0,0,5000,1,1,1,1,1,1,0,0,0,0,0,0,40,40,11,11,0,0,48,0,0,0,0,0,9,0,0,0,0,18,1,0,0,1,0,0,0,0,0,'gonryun',171,128,0,'iz_int04',18,26,0,0,0,0,0,0,0,0,0,0,0,0,'F',0,0,0,'2026-03-16 17:36:12',0,0,100,4,0,0,0);
/*!40000 ALTER TABLE `char` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `char_reg_num`
--

DROP TABLE IF EXISTS `char_reg_num`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `char_reg_num` (
  `char_id` int(11) unsigned NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `value` bigint(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`,`key`,`index`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `char_reg_num`
--

LOCK TABLES `char_reg_num` WRITE;
/*!40000 ALTER TABLE `char_reg_num` DISABLE KEYS */;
INSERT INTO `char_reg_num` VALUES
(150000,'jobchange_level',0,10),
(150002,'jobchange_level',0,1),
(150002,'PC_DIE_COUNTER',0,8),
(150000,'lastwarpx',0,32),
(150000,'lastwarpy',0,170),
(150013,'lastwarpx',0,160),
(150010,'lastwarpy',0,183),
(150010,'lastwarpx',0,155),
(150006,'lastwarpx',0,186),
(150006,'lastwarpy',0,247),
(150004,'lastwarpx',0,186),
(150004,'lastwarpy',0,247),
(150008,'lastwarpx',0,28),
(150008,'lastwarpy',0,234),
(150009,'lastwarpy',0,206),
(150009,'lastwarpx',0,190),
(150006,'PC_DIE_COUNTER',0,1),
(150000,'PC_DIE_COUNTER',0,9),
(150013,'lastwarpy',0,120),
(150000,'jobchange_level_3rd',0,50),
(150000,'jobchange_level_4th',0,1),
(150002,'lastwarpx',0,157),
(150002,'lastwarpy',0,14);
/*!40000 ALTER TABLE `char_reg_num` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `char_reg_str`
--

DROP TABLE IF EXISTS `char_reg_str`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `char_reg_str` (
  `char_id` int(11) unsigned NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `value` varchar(254) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`key`,`index`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `char_reg_str`
--

LOCK TABLES `char_reg_str` WRITE;
/*!40000 ALTER TABLE `char_reg_str` DISABLE KEYS */;
INSERT INTO `char_reg_str` VALUES
(150000,'lastwarp$',0,'orcsdun01'),
(150010,'lastwarp$',0,'prontera'),
(150006,'lastwarp$',0,'pay_fild04'),
(150004,'lastwarp$',0,'pay_fild04'),
(150008,'lastwarp$',0,'alberta'),
(150009,'lastwarp$',0,'prt_fild01'),
(150013,'lastwarp$',0,'gonryun'),
(150002,'lastwarp$',0,'ice_dun01');
/*!40000 ALTER TABLE `char_reg_str` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charlog`
--

DROP TABLE IF EXISTS `charlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `charlog` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `char_msg` varchar(255) NOT NULL DEFAULT 'char select',
  `account_id` int(11) unsigned NOT NULL DEFAULT 0,
  `char_num` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(23) NOT NULL DEFAULT '',
  `str` int(11) unsigned NOT NULL DEFAULT 0,
  `agi` int(11) unsigned NOT NULL DEFAULT 0,
  `vit` int(11) unsigned NOT NULL DEFAULT 0,
  `int` int(11) unsigned NOT NULL DEFAULT 0,
  `dex` int(11) unsigned NOT NULL DEFAULT 0,
  `luk` int(11) unsigned NOT NULL DEFAULT 0,
  `hair` tinyint(4) NOT NULL DEFAULT 0,
  `hair_color` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM AUTO_INCREMENT=316 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charlog`
--

LOCK TABLES `charlog` WRITE;
/*!40000 ALTER TABLE `charlog` DISABLE KEYS */;
INSERT INTO `charlog` VALUES
(1,'2026-02-02 12:04:29','make new char',200000,0,'Admin',1,1,1,1,1,1,1,6),
(2,'2026-02-02 12:04:30','char select',200000,0,'Admin',0,0,0,0,0,0,0,0),
(3,'2026-02-02 12:52:15','char select',200000,0,'Admin',0,0,0,0,0,0,0,0),
(4,'2026-02-03 22:55:59','char select',200000,0,'Admin',0,0,0,0,0,0,0,0),
(5,'2026-02-06 19:14:42','char select',200000,0,'Admin',0,0,0,0,0,0,0,0),
(6,'2026-02-06 19:15:07','make new char',2000000,0,'Hyllok',1,1,1,1,1,1,1,0),
(7,'2026-02-06 19:15:08','char select',2000000,0,'Hyllok',0,0,0,0,0,0,0,0),
(8,'2026-02-07 19:20:52','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(9,'2026-02-21 18:48:56','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(10,'2026-02-21 18:56:21','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(11,'2026-02-21 18:58:58','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(12,'2026-02-21 19:27:26','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(13,'2026-02-21 20:19:22','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(14,'2026-02-21 20:37:27','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(15,'2026-02-21 20:42:27','make new char',2000000,1,'Heloisa',1,1,1,1,1,1,18,4),
(16,'2026-02-21 20:42:28','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(17,'2026-02-21 20:48:38','make new char',2000000,2,'Mari Ya',1,1,1,1,1,1,4,8),
(18,'2026-02-21 20:48:40','char select',2000000,2,'Mari Ya',0,0,0,0,0,0,0,0),
(19,'2026-02-21 21:01:52','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(20,'2026-02-23 08:47:23','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(21,'2026-02-23 09:05:40','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(22,'2026-02-23 09:13:40','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(23,'2026-02-23 09:26:40','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(24,'2026-02-23 09:31:32','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(25,'2026-02-23 09:43:24','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(26,'2026-02-23 10:01:27','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(27,'2026-02-23 10:32:08','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(28,'2026-02-23 10:39:52','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(29,'2026-02-25 13:33:51','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(30,'2026-02-25 13:51:59','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(31,'2026-02-28 11:38:10','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(32,'2026-02-28 11:43:55','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(33,'2026-02-28 11:44:57','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(34,'2026-02-28 11:46:09','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(35,'2026-02-28 11:47:26','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(36,'2026-02-28 11:49:08','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(37,'2026-02-28 13:07:04','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(38,'2026-02-28 13:09:25','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(39,'2026-02-28 13:09:56','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(40,'2026-02-28 13:16:15','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(41,'2026-02-28 13:16:53','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(42,'2026-02-28 13:19:36','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(43,'2026-02-28 13:20:00','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(44,'2026-02-28 14:01:31','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(45,'2026-02-28 14:02:32','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(46,'2026-02-28 14:29:08','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(47,'2026-02-28 14:31:08','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(48,'2026-02-28 14:33:15','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(49,'2026-03-02 14:35:51','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(50,'2026-03-02 19:58:35','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(51,'2026-03-03 08:02:19','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(52,'2026-03-03 10:48:17','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(53,'2026-03-03 10:51:43','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(54,'2026-03-03 10:56:38','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(55,'2026-03-03 14:59:50','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(56,'2026-03-03 16:02:52','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(57,'2026-03-03 16:03:28','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(58,'2026-03-03 16:03:35','char select',2000000,2,'Mari Ya',0,0,0,0,0,0,0,0),
(59,'2026-03-03 17:53:47','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(60,'2026-03-03 17:57:03','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(61,'2026-03-03 18:01:08','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(62,'2026-03-03 18:01:14','char select',2000000,2,'Mari Ya',0,0,0,0,0,0,0,0),
(63,'2026-03-03 18:09:23','char select',2000000,2,'Mari Ya',0,0,0,0,0,0,0,0),
(64,'2026-03-03 18:09:33','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(65,'2026-03-03 18:09:41','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(66,'2026-03-03 18:10:14','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(67,'2026-03-03 18:10:22','char select',2000000,2,'Mari Ya',0,0,0,0,0,0,0,0),
(68,'2026-03-03 18:25:53','char select',2000000,2,'Mari Ya',0,0,0,0,0,0,0,0),
(69,'2026-03-03 18:25:59','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(70,'2026-03-03 18:26:04','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(71,'2026-03-03 18:26:27','char select',2000000,2,'Mari Ya',0,0,0,0,0,0,0,0),
(72,'2026-03-03 18:26:33','make new char',2000000,3,'Teste',1,1,1,1,1,1,1,0),
(73,'2026-03-03 18:26:34','char select',2000000,3,'Teste',0,0,0,0,0,0,0,0),
(74,'2026-03-03 18:40:57','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(75,'2026-03-03 18:42:30','make new char',2000001,0,'Hyllok',1,1,1,1,1,1,9,7),
(76,'2026-03-03 18:42:31','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(77,'2026-03-03 18:45:30','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(78,'2026-03-03 18:45:45','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(79,'2026-03-03 18:46:53','make new char',2000001,1,'Testador',1,1,1,1,1,1,18,0),
(80,'2026-03-03 18:46:54','char select',2000001,1,'Testador',0,0,0,0,0,0,0,0),
(81,'2026-03-03 18:57:52','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(82,'2026-03-03 18:59:08','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(83,'2026-03-03 19:04:55','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(84,'2026-03-03 19:05:53','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(85,'2026-03-03 19:08:00','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(86,'2026-03-03 20:07:20','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(87,'2026-03-03 21:46:27','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(88,'2026-03-04 08:43:39','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(89,'2026-03-04 08:44:36','char select',2000000,3,'Teste',0,0,0,0,0,0,0,0),
(90,'2026-03-04 08:56:22','char select',2000000,3,'Teste',0,0,0,0,0,0,0,0),
(91,'2026-03-04 08:56:40','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(92,'2026-03-04 08:59:12','char select',2000001,1,'Testador',0,0,0,0,0,0,0,0),
(93,'2026-03-04 09:01:18','make new char',2000000,4,'Test',1,1,1,1,1,1,1,0),
(94,'2026-03-04 09:01:19','char select',2000000,4,'Test',0,0,0,0,0,0,0,0),
(95,'2026-03-04 09:01:53','make new char',2000001,2,'Annn',1,1,1,1,1,1,1,0),
(96,'2026-03-04 09:01:54','char select',2000001,2,'Annn',0,0,0,0,0,0,0,0),
(97,'2026-03-04 09:23:32','char select',2000000,4,'Test',0,0,0,0,0,0,0,0),
(98,'2026-03-04 09:23:47','char select',2000001,2,'Annn',0,0,0,0,0,0,0,0),
(99,'2026-03-04 09:37:35','char select',2000000,4,'Test',0,0,0,0,0,0,0,0),
(100,'2026-03-04 09:37:51','char select',2000001,2,'Annn',0,0,0,0,0,0,0,0),
(101,'2026-03-04 09:49:06','char select',2000000,4,'Test',0,0,0,0,0,0,0,0),
(102,'2026-03-04 09:49:25','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(103,'2026-03-04 10:29:20','char select',2000000,4,'Test',0,0,0,0,0,0,0,0),
(104,'2026-03-04 10:29:39','char select',2000001,1,'Testador',0,0,0,0,0,0,0,0),
(105,'2026-03-04 11:29:48','char select',2000000,4,'Test',0,0,0,0,0,0,0,0),
(106,'2026-03-04 11:30:03','char select',2000001,2,'Annn',0,0,0,0,0,0,0,0),
(107,'2026-03-04 11:57:20','char select',2000000,4,'Test',0,0,0,0,0,0,0,0),
(108,'2026-03-04 11:57:35','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(109,'2026-03-04 12:25:33','char select',2000000,4,'Test',0,0,0,0,0,0,0,0),
(110,'2026-03-04 12:25:47','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(111,'2026-03-04 14:49:08','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(112,'2026-03-04 14:49:47','char select',2000000,2,'Mari Ya',0,0,0,0,0,0,0,0),
(113,'2026-03-04 15:27:12','char select',2000000,3,'Teste',0,0,0,0,0,0,0,0),
(114,'2026-03-04 16:47:17','char select',2000000,3,'Teste',0,0,0,0,0,0,0,0),
(115,'2026-03-04 16:48:09','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(116,'2026-03-04 20:28:20','char select',2000000,3,'Teste',0,0,0,0,0,0,0,0),
(117,'2026-03-04 20:28:36','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(118,'2026-03-04 20:30:17','char select',2000001,1,'Testador',0,0,0,0,0,0,0,0),
(119,'2026-03-05 09:16:09','Deleted char (CID 150007)',2000000,0,'Test',0,0,0,0,0,0,0,0),
(120,'2026-03-05 09:16:31','make new char',2000000,4,'Testia',1,1,1,1,1,1,22,5),
(121,'2026-03-05 09:16:32','char select',2000000,4,'Testia',0,0,0,0,0,0,0,0),
(122,'2026-03-05 09:16:58','char select',2000000,4,'Testia',0,0,0,0,0,0,0,0),
(123,'2026-03-05 10:34:41','char select',2000000,4,'Testia',0,0,0,0,0,0,0,0),
(124,'2026-03-10 09:44:50','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(125,'2026-03-10 09:45:39','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(126,'2026-03-10 09:47:07','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(127,'2026-03-11 20:26:45','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(128,'2026-03-11 21:20:12','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(129,'2026-03-11 21:20:26','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(130,'2026-03-11 21:39:53','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(131,'2026-03-11 21:43:03','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(132,'2026-03-11 21:44:01','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(133,'2026-03-11 21:44:43','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(134,'2026-03-11 21:44:50','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(135,'2026-03-11 21:45:53','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(136,'2026-03-11 21:51:44','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(137,'2026-03-11 21:52:04','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(138,'2026-03-11 21:58:51','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(139,'2026-03-11 22:16:38','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(140,'2026-03-11 22:18:23','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(141,'2026-03-11 22:18:43','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(142,'2026-03-11 22:20:12','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(143,'2026-03-11 22:25:28','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(144,'2026-03-11 22:28:18','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(145,'2026-03-11 22:28:42','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(146,'2026-03-11 22:31:42','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(147,'2026-03-12 17:02:41','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(148,'2026-03-13 12:07:15','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(149,'2026-03-13 12:09:50','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(150,'2026-03-13 12:09:59','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(151,'2026-03-13 12:10:09','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(152,'2026-03-13 20:36:55','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(153,'2026-03-13 20:37:29','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(154,'2026-03-13 20:37:39','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(155,'2026-03-13 20:38:30','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(156,'2026-03-13 20:43:51','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(157,'2026-03-13 20:45:56','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(158,'2026-03-13 20:47:02','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(159,'2026-03-13 20:52:27','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(160,'2026-03-13 20:52:39','char select',2000000,2,'Mari Ya',0,0,0,0,0,0,0,0),
(161,'2026-03-13 20:52:43','char select',2000000,3,'Teste',0,0,0,0,0,0,0,0),
(162,'2026-03-16 08:21:16','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(163,'2026-03-16 08:22:19','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(164,'2026-03-16 08:23:03','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(165,'2026-03-16 08:23:11','char select',2000000,3,'Teste',0,0,0,0,0,0,0,0),
(166,'2026-03-16 08:24:48','char select',2000000,4,'Testia',0,0,0,0,0,0,0,0),
(167,'2026-03-16 08:25:07','char select',2000000,4,'Testia',0,0,0,0,0,0,0,0),
(168,'2026-03-16 09:11:19','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(169,'2026-03-16 10:00:24','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(170,'2026-03-16 11:09:00','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(171,'2026-03-16 11:18:55','char select',2000000,3,'Teste',0,0,0,0,0,0,0,0),
(172,'2026-03-16 11:19:09','char select',2000000,2,'Mari Ya',0,0,0,0,0,0,0,0),
(173,'2026-03-16 11:25:01','char select',2000000,2,'Mari Ya',0,0,0,0,0,0,0,0),
(174,'2026-03-16 11:25:51','char select',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(175,'2026-03-16 11:25:59','Deleted char (CID 150005)',2000001,0,'Hyllok',0,0,0,0,0,0,0,0),
(176,'2026-03-16 11:26:24','make new char',2000000,5,'Hyllok',1,1,1,1,1,1,9,5),
(177,'2026-03-16 11:26:26','char select',2000000,5,'Hyllok',0,0,0,0,0,0,0,0),
(178,'2026-03-16 11:29:31','make new char',2000000,6,'Test rAthena',1,1,1,1,1,1,1,0),
(179,'2026-03-16 11:29:33','char select',2000000,6,'Test rAthena',0,0,0,0,0,0,0,0),
(180,'2026-03-16 11:29:44','char select',2000000,5,'Hyllok',0,0,0,0,0,0,0,0),
(181,'2026-03-16 11:30:07','char select',2000000,5,'Hyllok',0,0,0,0,0,0,0,0),
(182,'2026-03-16 15:52:38','char select',2000000,5,'Hyllok',0,0,0,0,0,0,0,0),
(183,'2026-03-16 16:43:16','char select',2000000,5,'Hyllok',0,0,0,0,0,0,0,0),
(184,'2026-03-16 16:43:20','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(185,'2026-03-16 17:34:36','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(186,'2026-03-16 17:34:58','char select',2000000,5,'Hyllok',0,0,0,0,0,0,0,0),
(187,'2026-03-16 17:35:49','make new char',2000001,0,'rAthena',1,1,1,1,1,1,1,0),
(188,'2026-03-16 17:35:54','Deleted char (CID 150012)',2000001,0,'rAthena',0,0,0,0,0,0,0,0),
(189,'2026-03-16 17:36:09','make new char',2000001,0,'Athena',1,1,1,1,1,1,18,1),
(190,'2026-03-16 17:36:12','char select',2000001,0,'Athena',0,0,0,0,0,0,0,0),
(191,'2026-03-16 17:36:23','char select',2000000,5,'Hyllok',0,0,0,0,0,0,0,0),
(192,'2026-03-17 08:45:37','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(193,'2026-03-17 08:46:15','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(194,'2026-03-17 08:48:07','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(195,'2026-03-17 08:56:19','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(196,'2026-03-17 09:06:21','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(197,'2026-03-17 09:11:00','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(198,'2026-03-17 09:11:27','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(199,'2026-03-17 09:20:53','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(200,'2026-03-17 09:31:29','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(201,'2026-03-17 09:32:43','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(202,'2026-03-17 09:36:20','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(203,'2026-03-17 09:43:06','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(204,'2026-03-17 09:50:14','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(205,'2026-03-17 11:39:50','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(206,'2026-03-18 07:34:10','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(207,'2026-03-18 07:44:18','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(208,'2026-03-18 08:02:20','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(209,'2026-03-18 08:02:48','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(210,'2026-03-18 08:29:57','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(211,'2026-03-18 08:47:55','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(212,'2026-03-18 08:57:59','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(213,'2026-03-18 09:05:41','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(214,'2026-03-18 09:38:03','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(215,'2026-03-18 11:11:41','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(216,'2026-03-18 11:23:56','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(217,'2026-03-18 11:26:01','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(218,'2026-03-18 11:37:54','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(219,'2026-03-18 11:45:55','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(220,'2026-03-19 08:46:01','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(221,'2026-03-19 09:06:42','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(222,'2026-03-19 09:12:57','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(223,'2026-03-19 09:47:23','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(224,'2026-03-19 10:37:42','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(225,'2026-03-19 11:02:25','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(226,'2026-03-19 11:08:56','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(227,'2026-03-19 11:11:53','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(228,'2026-03-19 11:15:32','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(229,'2026-03-19 14:35:10','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(230,'2026-03-19 15:00:11','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(231,'2026-03-19 16:17:36','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(232,'2026-03-19 19:40:40','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(233,'2026-03-19 21:43:44','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(234,'2026-03-20 10:31:05','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(235,'2026-03-20 17:46:40','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(236,'2026-03-20 17:48:08','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(237,'2026-03-22 14:17:45','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(238,'2026-03-22 15:34:38','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(239,'2026-03-23 08:16:10','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(240,'2026-03-23 08:17:39','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(241,'2026-03-24 11:36:18','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(242,'2026-03-24 20:37:49','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(243,'2026-03-24 20:47:17','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(244,'2026-03-24 20:50:20','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(245,'2026-03-24 21:01:31','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(246,'2026-03-25 08:03:24','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(247,'2026-03-25 11:18:14','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(248,'2026-03-25 11:26:13','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(249,'2026-03-25 12:09:48','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(250,'2026-03-25 12:10:59','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(251,'2026-03-25 12:14:21','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(252,'2026-03-25 12:33:35','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(253,'2026-03-25 12:46:37','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(254,'2026-03-25 12:53:23','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(255,'2026-03-25 12:54:03','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(256,'2026-03-25 12:59:57','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(257,'2026-03-25 13:02:55','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(258,'2026-03-26 07:50:32','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(259,'2026-03-26 10:35:14','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(260,'2026-03-26 18:46:34','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(261,'2026-03-27 08:11:24','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(262,'2026-03-27 08:12:03','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(263,'2026-03-27 10:19:24','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(264,'2026-03-27 14:33:54','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(265,'2026-03-27 16:11:02','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(266,'2026-03-27 20:03:00','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(267,'2026-03-27 20:12:11','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(268,'2026-03-27 20:14:59','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(269,'2026-03-27 20:17:05','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(270,'2026-03-27 20:19:40','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(271,'2026-03-27 20:23:39','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(272,'2026-03-27 20:24:40','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(273,'2026-03-27 20:25:41','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(274,'2026-03-27 20:27:18','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(275,'2026-03-27 20:28:06','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(276,'2026-03-27 20:29:47','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(277,'2026-03-27 20:32:38','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(278,'2026-03-27 20:34:17','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(279,'2026-03-27 20:36:52','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(280,'2026-03-27 20:38:36','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(281,'2026-03-27 20:43:44','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(282,'2026-03-27 20:45:44','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(283,'2026-03-30 08:05:48','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(284,'2026-03-30 08:43:49','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(285,'2026-03-30 11:54:12','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(286,'2026-03-30 12:10:37','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(287,'2026-03-30 13:16:27','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(288,'2026-03-30 14:02:15','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(289,'2026-03-30 14:32:16','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(290,'2026-03-30 19:36:38','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(291,'2026-03-31 09:37:12','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(292,'2026-03-31 09:41:27','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(293,'2026-03-31 09:46:03','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(294,'2026-03-31 09:46:40','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(295,'2026-03-31 11:32:48','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(296,'2026-03-31 11:33:53','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(297,'2026-03-31 11:35:15','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(298,'2026-03-31 11:35:33','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(299,'2026-03-31 11:38:40','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(300,'2026-03-31 13:19:45','char select',2000000,1,'Heloisa',0,0,0,0,0,0,0,0),
(301,'2026-04-08 13:06:02','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(302,'2026-04-08 13:10:41','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(303,'2026-04-08 13:12:07','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(304,'2026-04-08 13:19:14','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(305,'2026-04-08 13:21:31','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(306,'2026-04-08 13:25:26','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(307,'2026-04-08 13:28:32','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(308,'2026-04-08 13:30:33','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(309,'2026-04-08 13:31:36','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(310,'2026-04-08 13:33:04','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(311,'2026-04-08 13:35:47','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(312,'2026-04-08 13:36:19','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(313,'2026-04-08 13:37:26','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(314,'2026-04-08 13:43:09','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0),
(315,'2026-04-08 17:07:38','char select',2000000,0,'Admin',0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `charlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clan`
--

DROP TABLE IF EXISTS `clan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `clan` (
  `clan_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(24) NOT NULL DEFAULT '',
  `master` varchar(24) NOT NULL DEFAULT '',
  `mapname` varchar(24) NOT NULL DEFAULT '',
  `max_member` smallint(6) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`clan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clan`
--

LOCK TABLES `clan` WRITE;
/*!40000 ALTER TABLE `clan` DISABLE KEYS */;
INSERT INTO `clan` VALUES
(1,'Swordman Clan','Raffam Oranpere','prontera',500),
(2,'Arcwand Clan','Devon Aire','geffen',500),
(3,'Golden Mace Clan','Berman Aire','prontera',500),
(4,'Crossbow Clan','Shaam Rumi','payon',500);
/*!40000 ALTER TABLE `clan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clan_alliance`
--

DROP TABLE IF EXISTS `clan_alliance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `clan_alliance` (
  `clan_id` int(11) unsigned NOT NULL DEFAULT 0,
  `opposition` int(11) unsigned NOT NULL DEFAULT 0,
  `alliance_id` int(11) unsigned NOT NULL DEFAULT 0,
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`clan_id`,`alliance_id`),
  KEY `alliance_id` (`alliance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clan_alliance`
--

LOCK TABLES `clan_alliance` WRITE;
/*!40000 ALTER TABLE `clan_alliance` DISABLE KEYS */;
INSERT INTO `clan_alliance` VALUES
(1,0,3,'Golden Mace Clan'),
(2,0,3,'Golden Mace Clan'),
(2,1,4,'Crossbow Clan'),
(3,0,1,'Swordman Clan'),
(3,0,2,'Arcwand Clan'),
(3,0,4,'Crossbow Clan'),
(4,0,3,'Golden Mace Clan'),
(4,1,2,'Arcwand Clan');
/*!40000 ALTER TABLE `clan_alliance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_bonus`
--

DROP TABLE IF EXISTS `collection_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_bonus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) DEFAULT NULL,
  `script` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_bonus`
--

LOCK TABLES `collection_bonus` WRITE;
/*!40000 ALTER TABLE `collection_bonus` DISABLE KEYS */;
INSERT INTO `collection_bonus` VALUES
(1,6,'bonus bMaxHP,5000;'),
(2,7,'bonus bMaxHP,5000;'),
(3,8,'bonus bDex,40;'),
(4,9,'bonus bDex,50;'),
(5,10,'bonus bAspd,1;'),
(6,11,'bonus3 bAutoSpell,150;'),
(7,12,'bonus bAllStats,500;'),
(8,13,'bonus bAllStats,100;'),
(9,14,'bonus bMaxHP,10000;'),
(10,15,'bonus bAspd,15;'),
(11,16,'bonus bStr,20;'),
(12,17,'bonus bAllStats,10;');
/*!40000 ALTER TABLE `collection_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_cards`
--

DROP TABLE IF EXISTS `collection_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_cards`
--

LOCK TABLES `collection_cards` WRITE;
/*!40000 ALTER TABLE `collection_cards` DISABLE KEYS */;
INSERT INTO `collection_cards` VALUES
(1,3,4001),
(2,4,4002),
(3,5,4003),
(4,6,4004),
(5,7,4001),
(6,8,4001),
(7,9,4001),
(8,10,4009),
(9,11,4001),
(10,11,4015),
(11,12,4001),
(12,12,4002),
(13,13,4001),
(14,14,4001),
(15,15,4001),
(16,16,4001),
(17,17,4001);
/*!40000 ALTER TABLE `collection_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_db`
--

DROP TABLE IF EXISTS `collection_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_db` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `bonus_desc` text DEFAULT NULL,
  `active` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_db`
--

LOCK TABLES `collection_db` WRITE;
/*!40000 ALTER TABLE `collection_db` DISABLE KEYS */;
INSERT INTO `collection_db` VALUES
(1,'TEsteee',NULL,'',0),
(2,'Teste2',NULL,'',0),
(3,'Argo',NULL,'+1500 de HP',0),
(4,'Arg',NULL,'MaxHP +5000',0),
(5,'Rag',NULL,'MaxHP +555',0),
(6,'Jaca Mole',NULL,'MaxHP +5000',0),
(7,'Balatro',NULL,'MaxHP +5000',0),
(8,'Jacaranda',NULL,'DEx +40',0),
(9,'Tchurus',NULL,'50 dex',0),
(10,'ASPD',NULL,'ASPD +1',0),
(11,'Teste',NULL,'',0),
(12,'Sioux',NULL,'All stats +500',0),
(13,'Giba',NULL,'+100 All Stats',0),
(14,'adsfs',NULL,'',0),
(15,'Ragnar',NULL,'+15 ASPD',0),
(16,'rAthena',NULL,'+20 STR',0),
(17,'rAthena Test',NULL,'All Stats +10',0);
/*!40000 ALTER TABLE `collection_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_roulette`
--

DROP TABLE IF EXISTS `db_roulette`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_roulette` (
  `index` int(11) NOT NULL DEFAULT 0,
  `level` smallint(5) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `amount` smallint(5) unsigned NOT NULL DEFAULT 1,
  `flag` smallint(5) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_roulette`
--

LOCK TABLES `db_roulette` WRITE;
/*!40000 ALTER TABLE `db_roulette` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_roulette` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elemental`
--

DROP TABLE IF EXISTS `elemental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `elemental` (
  `ele_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) unsigned NOT NULL,
  `class` mediumint(9) unsigned NOT NULL DEFAULT 0,
  `mode` int(11) unsigned NOT NULL DEFAULT 1,
  `hp` int(11) unsigned NOT NULL DEFAULT 0,
  `sp` int(11) unsigned NOT NULL DEFAULT 0,
  `max_hp` int(11) unsigned NOT NULL DEFAULT 0,
  `max_sp` int(11) unsigned NOT NULL DEFAULT 0,
  `atk1` mediumint(6) unsigned NOT NULL DEFAULT 0,
  `atk2` mediumint(6) unsigned NOT NULL DEFAULT 0,
  `matk` mediumint(6) unsigned NOT NULL DEFAULT 0,
  `aspd` smallint(4) unsigned NOT NULL DEFAULT 0,
  `def` smallint(4) unsigned NOT NULL DEFAULT 0,
  `mdef` smallint(4) unsigned NOT NULL DEFAULT 0,
  `flee` smallint(4) unsigned NOT NULL DEFAULT 0,
  `hit` smallint(4) unsigned NOT NULL DEFAULT 0,
  `life_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ele_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elemental`
--

LOCK TABLES `elemental` WRITE;
/*!40000 ALTER TABLE `elemental` DISABLE KEYS */;
/*!40000 ALTER TABLE `elemental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `friends` (
  `char_id` int(11) unsigned NOT NULL DEFAULT 0,
  `friend_id` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`,`friend_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_acc_reg_num`
--

DROP TABLE IF EXISTS `global_acc_reg_num`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_acc_reg_num` (
  `account_id` int(11) unsigned NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `value` bigint(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`account_id`,`key`,`index`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_acc_reg_num`
--

LOCK TABLES `global_acc_reg_num` WRITE;
/*!40000 ALTER TABLE `global_acc_reg_num` DISABLE KEYS */;
/*!40000 ALTER TABLE `global_acc_reg_num` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_acc_reg_str`
--

DROP TABLE IF EXISTS `global_acc_reg_str`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_acc_reg_str` (
  `account_id` int(11) unsigned NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `value` varchar(254) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_acc_reg_str`
--

LOCK TABLES `global_acc_reg_str` WRITE;
/*!40000 ALTER TABLE `global_acc_reg_str` DISABLE KEYS */;
/*!40000 ALTER TABLE `global_acc_reg_str` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild`
--

DROP TABLE IF EXISTS `guild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild` (
  `guild_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(24) NOT NULL DEFAULT '',
  `char_id` int(11) unsigned NOT NULL DEFAULT 0,
  `master` varchar(24) NOT NULL DEFAULT '',
  `guild_lv` tinyint(6) unsigned NOT NULL DEFAULT 0,
  `connect_member` tinyint(6) unsigned NOT NULL DEFAULT 0,
  `max_member` tinyint(6) unsigned NOT NULL DEFAULT 0,
  `average_lv` smallint(6) unsigned NOT NULL DEFAULT 1,
  `exp` bigint(20) unsigned NOT NULL DEFAULT 0,
  `next_exp` bigint(20) unsigned NOT NULL DEFAULT 0,
  `skill_point` tinyint(11) unsigned NOT NULL DEFAULT 0,
  `mes1` varchar(60) NOT NULL DEFAULT '',
  `mes2` varchar(120) NOT NULL DEFAULT '',
  `emblem_len` int(11) unsigned NOT NULL DEFAULT 0,
  `emblem_id` int(11) unsigned NOT NULL DEFAULT 0,
  `emblem_data` blob DEFAULT NULL,
  `last_master_change` datetime DEFAULT NULL,
  PRIMARY KEY (`guild_id`,`char_id`),
  UNIQUE KEY `guild_id` (`guild_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild`
--

LOCK TABLES `guild` WRITE;
/*!40000 ALTER TABLE `guild` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_alliance`
--

DROP TABLE IF EXISTS `guild_alliance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_alliance` (
  `guild_id` int(11) unsigned NOT NULL DEFAULT 0,
  `opposition` int(11) unsigned NOT NULL DEFAULT 0,
  `alliance_id` int(11) unsigned NOT NULL DEFAULT 0,
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`,`alliance_id`),
  KEY `alliance_id` (`alliance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_alliance`
--

LOCK TABLES `guild_alliance` WRITE;
/*!40000 ALTER TABLE `guild_alliance` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_alliance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_castle`
--

DROP TABLE IF EXISTS `guild_castle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_castle` (
  `castle_id` int(11) unsigned NOT NULL DEFAULT 0,
  `guild_id` int(11) unsigned NOT NULL DEFAULT 0,
  `economy` int(11) unsigned NOT NULL DEFAULT 0,
  `defense` int(11) unsigned NOT NULL DEFAULT 0,
  `triggerE` int(11) unsigned NOT NULL DEFAULT 0,
  `triggerD` int(11) unsigned NOT NULL DEFAULT 0,
  `nextTime` int(11) unsigned NOT NULL DEFAULT 0,
  `payTime` int(11) unsigned NOT NULL DEFAULT 0,
  `createTime` int(11) unsigned NOT NULL DEFAULT 0,
  `visibleC` int(11) unsigned NOT NULL DEFAULT 0,
  `visibleG0` int(11) unsigned NOT NULL DEFAULT 0,
  `visibleG1` int(11) unsigned NOT NULL DEFAULT 0,
  `visibleG2` int(11) unsigned NOT NULL DEFAULT 0,
  `visibleG3` int(11) unsigned NOT NULL DEFAULT 0,
  `visibleG4` int(11) unsigned NOT NULL DEFAULT 0,
  `visibleG5` int(11) unsigned NOT NULL DEFAULT 0,
  `visibleG6` int(11) unsigned NOT NULL DEFAULT 0,
  `visibleG7` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`castle_id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_castle`
--

LOCK TABLES `guild_castle` WRITE;
/*!40000 ALTER TABLE `guild_castle` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_castle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_expulsion`
--

DROP TABLE IF EXISTS `guild_expulsion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_expulsion` (
  `guild_id` int(11) unsigned NOT NULL DEFAULT 0,
  `account_id` int(11) unsigned NOT NULL DEFAULT 0,
  `name` varchar(24) NOT NULL DEFAULT '',
  `mes` varchar(40) NOT NULL DEFAULT '',
  `char_id` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guild_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_expulsion`
--

LOCK TABLES `guild_expulsion` WRITE;
/*!40000 ALTER TABLE `guild_expulsion` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_expulsion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_member`
--

DROP TABLE IF EXISTS `guild_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_member` (
  `guild_id` int(11) unsigned NOT NULL DEFAULT 0,
  `char_id` int(11) unsigned NOT NULL DEFAULT 0,
  `exp` bigint(20) unsigned NOT NULL DEFAULT 0,
  `position` tinyint(6) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guild_id`,`char_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_member`
--

LOCK TABLES `guild_member` WRITE;
/*!40000 ALTER TABLE `guild_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_position`
--

DROP TABLE IF EXISTS `guild_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_position` (
  `guild_id` int(9) unsigned NOT NULL DEFAULT 0,
  `position` tinyint(6) unsigned NOT NULL DEFAULT 0,
  `name` varchar(24) NOT NULL DEFAULT '',
  `mode` smallint(11) unsigned NOT NULL DEFAULT 0,
  `exp_mode` tinyint(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guild_id`,`position`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_position`
--

LOCK TABLES `guild_position` WRITE;
/*!40000 ALTER TABLE `guild_position` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_skill`
--

DROP TABLE IF EXISTS `guild_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_skill` (
  `guild_id` int(11) unsigned NOT NULL DEFAULT 0,
  `id` smallint(11) unsigned NOT NULL DEFAULT 0,
  `lv` tinyint(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guild_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_skill`
--

LOCK TABLES `guild_skill` WRITE;
/*!40000 ALTER TABLE `guild_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_storage`
--

DROP TABLE IF EXISTS `guild_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_storage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guild_id` int(11) unsigned NOT NULL DEFAULT 0,
  `nameid` int(10) unsigned NOT NULL DEFAULT 0,
  `amount` int(11) unsigned NOT NULL DEFAULT 0,
  `equip` int(11) unsigned NOT NULL DEFAULT 0,
  `identify` smallint(6) unsigned NOT NULL DEFAULT 0,
  `refine` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `card0` int(10) unsigned NOT NULL DEFAULT 0,
  `card1` int(10) unsigned NOT NULL DEFAULT 0,
  `card2` int(10) unsigned NOT NULL DEFAULT 0,
  `card3` int(10) unsigned NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `expire_time` int(11) unsigned NOT NULL DEFAULT 0,
  `bound` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `unique_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_storage`
--

LOCK TABLES `guild_storage` WRITE;
/*!40000 ALTER TABLE `guild_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_storage_log`
--

DROP TABLE IF EXISTS `guild_storage_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_storage_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guild_id` int(11) unsigned NOT NULL DEFAULT 0,
  `time` datetime NOT NULL,
  `char_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(24) NOT NULL DEFAULT '',
  `nameid` int(10) unsigned NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 1,
  `identify` smallint(6) NOT NULL DEFAULT 0,
  `refine` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `card0` int(10) unsigned NOT NULL DEFAULT 0,
  `card1` int(10) unsigned NOT NULL DEFAULT 0,
  `card2` int(10) unsigned NOT NULL DEFAULT 0,
  `card3` int(10) unsigned NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `expire_time` int(11) unsigned NOT NULL DEFAULT 0,
  `unique_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `bound` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_storage_log`
--

LOCK TABLES `guild_storage_log` WRITE;
/*!40000 ALTER TABLE `guild_storage_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_storage_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homunculus`
--

DROP TABLE IF EXISTS `homunculus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `homunculus` (
  `homun_id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) unsigned NOT NULL,
  `class` mediumint(9) unsigned NOT NULL DEFAULT 0,
  `prev_class` mediumint(9) NOT NULL DEFAULT 0,
  `name` varchar(24) NOT NULL DEFAULT '',
  `level` smallint(4) NOT NULL DEFAULT 0,
  `exp` bigint(20) unsigned NOT NULL DEFAULT 0,
  `intimacy` int(12) NOT NULL DEFAULT 0,
  `hunger` smallint(4) NOT NULL DEFAULT 0,
  `str` smallint(4) unsigned NOT NULL DEFAULT 0,
  `agi` smallint(4) unsigned NOT NULL DEFAULT 0,
  `vit` smallint(4) unsigned NOT NULL DEFAULT 0,
  `int` smallint(4) unsigned NOT NULL DEFAULT 0,
  `dex` smallint(4) unsigned NOT NULL DEFAULT 0,
  `luk` smallint(4) unsigned NOT NULL DEFAULT 0,
  `hp` int(11) unsigned NOT NULL DEFAULT 0,
  `max_hp` int(11) unsigned NOT NULL DEFAULT 0,
  `sp` int(11) unsigned NOT NULL DEFAULT 0,
  `max_sp` int(11) unsigned NOT NULL DEFAULT 0,
  `skill_point` smallint(4) unsigned NOT NULL DEFAULT 0,
  `alive` tinyint(2) NOT NULL DEFAULT 1,
  `rename_flag` tinyint(2) NOT NULL DEFAULT 0,
  `vaporize` tinyint(2) NOT NULL DEFAULT 0,
  `autofeed` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`homun_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homunculus`
--

LOCK TABLES `homunculus` WRITE;
/*!40000 ALTER TABLE `homunculus` DISABLE KEYS */;
/*!40000 ALTER TABLE `homunculus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotkey`
--

DROP TABLE IF EXISTS `hotkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotkey` (
  `char_id` int(11) unsigned NOT NULL,
  `hotkey` tinyint(2) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `itemskill_id` int(11) unsigned NOT NULL DEFAULT 0,
  `skill_lvl` tinyint(4) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`,`hotkey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotkey`
--

LOCK TABLES `hotkey` WRITE;
/*!40000 ALTER TABLE `hotkey` DISABLE KEYS */;
INSERT INTO `hotkey` VALUES
(150000,0,1,8,10),
(150000,1,0,611,0),
(150000,2,0,0,0),
(150000,3,1,6510,5),
(150000,4,1,6519,5),
(150000,5,1,5344,5),
(150000,6,1,5348,5),
(150000,8,0,1207,0),
(150002,0,0,611,0);
/*!40000 ALTER TABLE `hotkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interlog`
--

DROP TABLE IF EXISTS `interlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `interlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `log` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interlog`
--

LOCK TABLES `interlog` WRITE;
/*!40000 ALTER TABLE `interlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `interlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) unsigned NOT NULL DEFAULT 0,
  `nameid` int(10) unsigned NOT NULL DEFAULT 0,
  `amount` int(11) unsigned NOT NULL DEFAULT 0,
  `equip` int(11) unsigned NOT NULL DEFAULT 0,
  `identify` smallint(6) NOT NULL DEFAULT 0,
  `refine` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `card0` int(10) unsigned NOT NULL DEFAULT 0,
  `card1` int(10) unsigned NOT NULL DEFAULT 0,
  `card2` int(10) unsigned NOT NULL DEFAULT 0,
  `card3` int(10) unsigned NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `expire_time` int(11) unsigned NOT NULL DEFAULT 0,
  `favorite` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `bound` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `unique_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `equip_switch` int(11) unsigned NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM AUTO_INCREMENT=491 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES
(124,150000,948,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(123,150000,7111,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(4,150001,1201,1,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(5,150001,2301,1,16,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(6,150001,23484,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(122,150000,13304,1,0,1,0,0,0,0,0,0,32,3,0,74,1,0,0,0,0,0,0,0,0,0,0,0,1,0,644245094400080,0,0),
(121,150000,7151,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(12,150000,1599,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,644245094400000,0,0),
(120,150000,746,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(119,150000,912,8,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(118,150000,1019,3,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(117,150000,7150,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(489,150000,2402,1,0,0,0,0,0,0,0,0,4,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,644245094400238,0,0),
(377,150002,512,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(25,150002,2301,1,16,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(26,150002,23484,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(27,150002,1599,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,644253684334592,0,0),
(28,150002,705,5,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(29,150002,949,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(30,150002,515,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(32,150003,1201,1,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(33,150003,2301,1,16,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(34,150003,23484,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(35,150000,2199,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,644245094400007,0,0),
(490,150000,9200,1,0,1,0,0,256,23,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,644245094400237,0,0),
(481,150000,1001740,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(272,150000,998,3,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(112,150000,2277,1,0,1,0,0,0,0,0,0,5,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,644245094400078,0,0),
(271,150000,935,6,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(480,150000,1065,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(111,150000,1049,4,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(428,150000,6256,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(427,150000,905,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(108,150000,1505,1,0,1,0,0,0,0,0,0,39,18,0,136,30,0,164,12,0,0,0,0,0,0,0,0,1,0,644245094400076,0,0),
(107,150000,1505,1,0,1,0,0,0,0,0,0,13,3,0,103,11,0,166,13,0,0,0,0,0,0,0,0,1,0,644245094400075,0,0),
(106,150000,1505,1,0,1,0,0,0,0,0,0,55,11,0,99,17,0,8,2,0,0,0,0,0,0,0,0,1,0,644245094400074,0,0),
(270,150000,913,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(103,150000,1505,1,0,1,0,0,0,0,0,0,37,11,0,131,8,0,7,7,0,0,0,0,0,0,0,0,1,0,644245094400071,0,0),
(102,150000,1505,1,0,1,0,0,0,0,0,0,55,4,0,154,6,0,17,11,0,0,0,0,0,0,0,0,1,0,644245094400070,0,0),
(101,150000,2609,1,0,1,0,0,0,0,0,0,3,8,0,29,5,0,40,10,0,84,6,0,0,0,0,0,1,0,644245094400069,0,0),
(100,150000,1505,1,0,1,0,0,0,0,0,0,41,10,0,135,17,0,166,8,0,0,0,0,0,0,0,0,1,0,644245094400068,0,0),
(479,150000,7447,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(426,150000,1033,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(252,150000,943,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(443,150000,7762,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(442,150000,7099,3,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(441,150000,918,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(125,150003,4001,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(126,150004,1201,1,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(127,150004,2301,1,16,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(128,150004,23484,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(135,150006,1201,1,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(228,150011,23484,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(227,150011,2301,1,16,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(226,150011,1201,1,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(225,150010,23484,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(224,150010,2301,1,16,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(136,150006,2301,1,16,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(137,150006,23484,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(138,150000,1505,1,0,1,0,0,0,0,0,0,8,2,0,18,5,0,0,0,0,0,0,0,0,0,0,0,1,0,644245094400081,0,0),
(139,150000,1505,1,0,1,0,0,0,0,0,0,8,5,0,18,5,0,0,0,0,0,0,0,0,0,0,0,1,0,644245094400082,0,0),
(140,150000,1505,1,0,1,0,0,0,0,0,0,8,2,0,22,18,0,171,6,0,0,0,0,0,0,0,0,1,0,644245094400083,0,0),
(141,150000,1505,1,0,1,0,0,0,0,0,0,8,1,0,16,6,0,15,1,0,171,10,0,0,0,0,0,1,0,644245094400084,0,0),
(142,150000,1505,1,0,1,0,0,0,0,0,0,8,1,0,170,9,0,170,8,0,0,0,0,0,0,0,0,1,0,644245094400085,0,0),
(143,150000,1505,1,0,1,0,0,0,0,0,0,8,1,0,15,2,0,0,0,0,0,0,0,0,0,0,0,1,0,644245094400086,0,0),
(144,150000,2609,1,0,1,0,0,0,0,0,0,6,2,0,8,2,0,5,4,0,0,0,0,0,0,0,0,1,0,644245094400087,0,0),
(145,150000,1505,1,0,1,0,0,0,0,0,0,8,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,644245094400088,0,0),
(146,150000,1505,1,0,1,0,0,0,0,0,0,8,1,0,16,8,0,0,0,0,0,0,0,0,0,0,0,1,0,644245094400089,0,0),
(386,150002,2199,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,644253684334597,0,0),
(289,150000,2404,1,0,1,0,0,0,0,0,0,259,27,0,2,1767,0,0,0,0,0,0,0,0,0,0,0,0,0,644245094400127,0,0),
(385,150002,7066,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(384,150002,7561,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(478,150000,7446,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(250,150000,7041,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(361,150000,6124,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(223,150010,1201,1,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(164,150009,23484,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(163,150009,2301,1,16,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(162,150009,1201,1,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(159,150008,1201,1,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(160,150008,2301,1,16,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(161,150008,23484,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(165,150009,909,21,0,1,0,0,0,0,0,0,3,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(166,150009,1202,1,0,0,0,0,0,0,0,0,3,10,0,15,5,0,171,9,0,0,0,0,0,0,0,0,0,0,644283749105664,0,0),
(167,150009,938,21,0,1,0,0,0,0,0,0,4,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(168,150009,1202,1,0,0,0,0,0,0,0,0,3,10,0,15,2,0,0,0,0,0,0,0,0,0,0,0,0,0,644283749105665,0,0),
(169,150009,1202,1,0,0,0,0,0,0,0,0,3,10,0,15,2,0,0,0,0,0,0,0,0,0,0,0,0,0,644283749105666,0,0),
(170,150009,1202,1,0,0,0,0,0,0,0,0,3,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,644283749105667,0,0),
(171,150009,1202,1,0,0,0,0,0,0,0,0,3,10,0,171,8,0,171,5,0,0,0,0,0,0,0,0,0,0,644283749105668,0,0),
(172,150009,914,8,0,1,0,0,0,0,0,0,8,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(173,150009,949,19,0,1,0,0,0,0,0,0,6,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(174,150009,705,19,0,1,0,0,0,0,0,0,3,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(175,150009,1501,1,0,0,0,0,0,0,0,0,8,5,0,170,8,0,18,5,0,0,0,0,0,0,0,0,0,0,644283749105669,0,0),
(176,150009,1202,1,0,0,0,0,0,0,0,0,3,10,0,171,8,0,0,0,0,0,0,0,0,0,0,0,0,0,644283749105670,0,0),
(177,150009,512,1,0,1,0,0,0,0,0,0,7,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(178,150009,1501,1,0,0,0,0,0,0,0,0,8,4,0,16,8,0,0,0,0,0,0,0,0,0,0,0,0,0,644283749105671,0,0),
(179,150009,1502,1,0,0,0,0,0,0,0,0,8,4,0,16,6,0,170,14,0,0,0,0,0,0,0,0,0,0,644283749105672,0,0),
(180,150009,511,1,0,1,0,0,0,0,0,0,7,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(181,150009,1501,1,0,0,0,0,0,0,0,0,8,1,0,18,5,0,18,5,0,0,0,0,0,0,0,0,0,0,644283749105673,0,0),
(182,150009,1502,1,0,0,0,0,0,0,0,0,8,4,0,18,5,0,170,14,0,0,0,0,0,0,0,0,0,0,644283749105674,0,0),
(183,150009,1501,1,0,0,0,0,0,0,0,0,8,4,0,16,9,0,0,0,0,0,0,0,0,0,0,0,0,0,644283749105675,0,0),
(184,150009,1202,1,0,0,0,0,0,0,0,0,3,10,0,18,18,0,22,29,0,0,0,0,0,0,0,0,0,0,644283749105676,0,0),
(185,150009,1102,1,0,0,0,0,0,0,0,0,8,3,0,15,2,0,15,1,0,18,5,0,0,0,0,0,0,0,644283749105677,0,0),
(186,150009,1202,1,0,0,0,0,0,0,0,0,3,10,0,18,21,0,0,0,0,0,0,0,0,0,0,0,0,0,644283749105678,0,0),
(187,150009,1102,1,0,0,0,0,0,0,0,0,8,3,0,16,7,0,0,0,0,0,0,0,0,0,0,0,0,0,644283749105679,0,0),
(188,150009,515,3,0,1,0,0,0,0,0,0,7,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(189,150009,1102,1,0,0,0,0,0,0,0,0,8,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,644283749105680,0,0),
(190,150009,1102,1,0,0,0,0,0,0,0,0,8,2,0,15,1,0,0,0,0,0,0,0,0,0,0,0,0,0,644283749105681,0,0),
(191,150009,1501,1,0,0,0,0,0,0,0,0,8,1,0,18,5,0,0,0,0,0,0,0,0,0,0,0,0,0,644283749105682,0,0),
(192,150009,1502,1,0,0,0,0,0,0,0,0,8,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,644283749105683,0,0),
(193,150009,1501,1,0,0,0,0,0,0,0,0,8,3,0,18,5,0,0,0,0,0,0,0,0,0,0,0,0,0,644283749105684,0,0),
(194,150009,1502,1,0,0,0,0,0,0,0,0,8,2,0,18,5,0,0,0,0,0,0,0,0,0,0,0,0,0,644283749105685,0,0),
(195,150009,1501,1,0,0,0,0,0,0,0,0,8,5,0,170,15,0,170,7,0,0,0,0,0,0,0,0,0,0,644283749105686,0,0),
(196,150009,1102,1,0,0,0,0,0,0,0,0,8,4,0,16,5,0,18,5,0,0,0,0,0,0,0,0,0,0,644283749105687,0,0),
(197,150009,1502,1,0,0,0,0,0,0,0,0,8,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,644283749105688,0,0),
(198,150009,1501,1,0,0,0,0,0,0,0,0,8,4,0,16,7,0,16,5,0,0,0,0,0,0,0,0,0,0,644283749105689,0,0),
(199,150009,1102,1,0,0,0,0,0,0,0,0,8,2,0,18,5,0,0,0,0,0,0,0,0,0,0,0,0,0,644283749105690,0,0),
(200,150009,1202,1,0,0,0,0,0,0,0,0,3,10,0,170,6,0,0,0,0,0,0,0,0,0,0,0,0,0,644283749105691,0,0),
(477,150000,2114,1,0,1,0,0,0,0,0,0,6,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,644245094400232,0,0),
(268,150000,932,19,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(208,150000,6249,1,0,1,0,0,0,0,0,0,8,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(383,150002,611,19,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(382,150002,1207,1,2,1,0,0,0,0,0,0,307,85,0,18,5,0,0,0,0,0,0,0,0,0,0,0,0,0,644253684334596,0,0),
(212,150000,25127,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(213,150000,25128,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(214,150000,7325,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(476,150000,7445,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(216,150000,740,3,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(381,150002,910,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(218,150000,7054,19,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(219,150000,715,4,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(464,150000,934,32,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(475,150000,579,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(474,150000,611,17,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(234,150013,23484,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(233,150013,2301,1,16,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(232,150013,1201,1,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(262,150002,9001,1,0,1,0,0,256,16,0,6,6,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,644253684334593,0,0),
(380,150002,601,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(473,150000,2890,1,0,1,0,0,0,0,0,0,4,3,0,334,7,0,0,0,0,0,0,0,0,0,0,0,0,0,644245094400231,0,0),
(484,150000,9001,1,0,1,0,0,256,21,0,10,7,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,644245094400234,0,0),
(263,150002,9001,1,0,1,0,0,256,17,0,6,6,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,644253684334594,0,0),
(264,150002,9001,1,0,1,0,0,256,18,0,6,7,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,644253684334595,0,0),
(273,150000,1043,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(379,150002,511,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(378,150002,938,5,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(323,150000,4033,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(472,150000,7123,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(459,150000,509,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(279,150000,911,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(471,150000,1036,8,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(457,150000,919,4,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(282,150000,710,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(452,150000,7315,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(470,150000,2609,1,0,1,0,0,0,0,0,0,3,4,0,7,2,0,0,0,0,0,0,0,0,0,0,0,0,0,644245094400226,0,0),
(456,150000,528,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(455,150000,7751,29,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(469,150000,2114,1,0,1,0,0,0,0,0,0,3,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,644245094400230,0,0),
(468,150000,757,5,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(451,150000,7940,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(450,150000,2853,1,0,1,0,0,0,0,0,0,6,4,0,3,5,0,256,15,0,0,0,0,0,0,0,0,0,0,644245094400219,0,0),
(439,150000,7117,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(307,150000,1064,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(467,150000,7448,16,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(437,150000,7753,7,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(449,150000,7317,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(466,150000,7938,19,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(454,150000,958,7,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(465,150000,1035,25,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(433,150000,938,8,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(432,150000,7752,18,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(447,150000,25615,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipbanlist`
--

DROP TABLE IF EXISTS `ipbanlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipbanlist` (
  `list` varchar(15) NOT NULL DEFAULT '',
  `btime` datetime NOT NULL,
  `rtime` datetime NOT NULL,
  `reason` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`list`,`btime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipbanlist`
--

LOCK TABLES `ipbanlist` WRITE;
/*!40000 ALTER TABLE `ipbanlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipbanlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `account_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(23) NOT NULL DEFAULT '',
  `user_pass` varchar(32) NOT NULL DEFAULT '',
  `sex` enum('M','F','S') NOT NULL DEFAULT 'M',
  `email` varchar(39) NOT NULL DEFAULT '',
  `group_id` tinyint(3) NOT NULL DEFAULT 0,
  `state` int(11) unsigned NOT NULL DEFAULT 0,
  `unban_time` int(11) unsigned NOT NULL DEFAULT 0,
  `expiration_time` int(11) unsigned NOT NULL DEFAULT 0,
  `logincount` mediumint(9) unsigned NOT NULL DEFAULT 0,
  `lastlogin` datetime DEFAULT NULL,
  `last_ip` varchar(100) NOT NULL DEFAULT '',
  `birthdate` date DEFAULT NULL,
  `character_slots` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `pincode` varchar(4) NOT NULL DEFAULT '',
  `pincode_change` int(11) unsigned NOT NULL DEFAULT 0,
  `vip_time` int(11) unsigned NOT NULL DEFAULT 0,
  `old_group` tinyint(3) NOT NULL DEFAULT 0,
  `web_auth_token` varchar(17) DEFAULT NULL,
  `web_auth_token_enabled` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `web_auth_token_key` (`web_auth_token`),
  KEY `name` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=2000002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES
(1,'1GqfzYwmt22BKSXk','7DLy666EF4Me9Ibc','S','athena@athena.com',0,0,0,0,156,'2026-04-09 10:25:21','127.0.0.1',NULL,0,'',0,0,0,NULL,0),
(2000001,'hyllok','77churruminos77','M','a@a.com',0,0,0,0,17,'2026-03-16 17:35:36','186.193.34.253',NULL,15,'',0,0,0,NULL,0),
(2000000,'admin','77churruminos77','M','a@a.com',99,0,0,0,222,'2026-04-08 17:07:37','186.193.44.208',NULL,15,'',0,0,0,NULL,0);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail`
--

DROP TABLE IF EXISTS `mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `send_name` varchar(30) NOT NULL DEFAULT '',
  `send_id` int(11) unsigned NOT NULL DEFAULT 0,
  `dest_name` varchar(30) NOT NULL DEFAULT '',
  `dest_id` int(11) unsigned NOT NULL DEFAULT 0,
  `title` varchar(45) NOT NULL DEFAULT '',
  `message` varchar(500) NOT NULL DEFAULT '',
  `time` int(11) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `zeny` int(11) unsigned NOT NULL DEFAULT 0,
  `type` smallint(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail`
--

LOCK TABLES `mail` WRITE;
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_attachments`
--

DROP TABLE IF EXISTS `mail_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail_attachments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `index` smallint(5) unsigned NOT NULL DEFAULT 0,
  `nameid` int(10) unsigned NOT NULL DEFAULT 0,
  `amount` int(11) unsigned NOT NULL DEFAULT 0,
  `refine` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `identify` smallint(6) NOT NULL DEFAULT 0,
  `card0` int(10) unsigned NOT NULL DEFAULT 0,
  `card1` int(10) unsigned NOT NULL DEFAULT 0,
  `card2` int(10) unsigned NOT NULL DEFAULT 0,
  `card3` int(10) unsigned NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `unique_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `bound` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_attachments`
--

LOCK TABLES `mail_attachments` WRITE;
/*!40000 ALTER TABLE `mail_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapreg`
--

DROP TABLE IF EXISTS `mapreg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mapreg` (
  `varname` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`varname`,`index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapreg`
--

LOCK TABLES `mapreg` WRITE;
/*!40000 ALTER TABLE `mapreg` DISABLE KEYS */;
INSERT INTO `mapreg` VALUES
('$timezonestring$',0,'^FF0000GMT^000000'),
('$event_paramk',0,'1'),
('$top_60min',0,'6'),
('$top_80min',0,'8'),
('$top_50min',0,'5'),
('$top_ptmin',0,'10'),
('$top_70min',0,'7'),
('$arn_pritop60',0,'480'),
('$arn_pritop70',0,'480'),
('$arn_pritop80',0,'480'),
('$arn_pritop90',0,'480'),
('$arn_acotop',0,'480'),
('$arn_pritopn60$',0,'Default'),
('$arn_pritopn70$',0,'Default'),
('$arn_pritopn80$',0,'Default'),
('$arn_pritopn90$',0,'Default'),
('$arn_acotopn$',0,'Default'),
('$ttnames$',0,'Breezy Havana'),
('$ttnames$',1,'RS125'),
('$ttnames$',2,'Hollgrehenn'),
('$ttnames$',3,'Antonio'),
('$ttnames$',4,'Aragham'),
('$ttnames$',5,'Kafra Jasmine'),
('$ttnames$',6,'Chris'),
('$ttnames$',7,'Breezy Havana'),
('$ttnames$',8,'RS125'),
('$ttnames$',9,'Breezy Havana'),
('$ttnames$',10,'Nari'),
('$ttnames$',11,'Senorita Sylvia'),
('$ttnames$',12,'Joo Jahk'),
('$ttnames$',13,'RS125'),
('$ttranks',0,'999999'),
('$120719_num_face',0,'3600'),
('$malayaNames$',0,'unknown'),
('$malayaNames$',1,'unknown'),
('$malayaNames$',2,'unknown'),
('$malayaNames$',3,'unknown'),
('$malayaNames$',4,'unknown'),
('$malayaNames$',5,'unknown'),
('$DTS_Time',0,'1142'),
('$DTS_Result',0,'3'),
('$pay_invest_result',0,'1'),
('$prt_invest_result',0,'1'),
('$2011_agit_invest',0,'2'),
('$gef_invest_result',0,'1'),
('$alde_invest_result',0,'1');
/*!40000 ALTER TABLE `mapreg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market`
--

DROP TABLE IF EXISTS `market`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `market` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `nameid` int(10) unsigned NOT NULL,
  `price` int(11) unsigned NOT NULL,
  `amount` int(11) NOT NULL,
  `flag` tinyint(2) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`,`nameid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market`
--

LOCK TABLES `market` WRITE;
/*!40000 ALTER TABLE `market` DISABLE KEYS */;
INSERT INTO `market` VALUES
('emp_seller#slo',714,1000000,100,0),
('market_resonance_stone',100003,2000000,99999,0),
('market_resonance_stone',100004,2000000,99999,0),
('armor_rockridge_1',2247,500000,10,0),
('armor_rockridge_1',2248,500000,10,0),
('armor_rockridge_1',5018,700000,10,0),
('armor_rockridge_2',5067,700000,10,0),
('armor_rockridge_2',5071,700000,10,0),
('armor_rockridge_2',5075,700000,10,0),
('armor_rockridge_3',2267,100000,10,0),
('armor_rockridge_3',2268,500000,10,0),
('armor_rockridge_3',2241,5000,10,0),
('armor_rockridge_4',5067,700000,10,0),
('armor_rockridge_4',5071,700000,10,0),
('armor_rockridge_4',5075,700000,10,0),
('armor_rockridge_4',31144,1500000,3,0),
('ep172littlemanager00',1000227,172,999999,0),
('ep172cubeshop00',100251,10000000,-1,0),
('ep172cubeshop00',100252,30000000,-1,0),
('Arrow_Archer',1750,1,-1,0),
('Arrow_Archer',1770,3,-1,0),
('Arrow_Archer',1751,5,-1,0),
('Arrow_Archer',1752,5,-1,0),
('Arrow_Archer',1754,5,-1,0),
('Arrow_Archer',1755,5,-1,0),
('Arrow_Archer',1756,5,-1,0),
('Arrow_Archer',1757,5,-1,0),
('Arrow_Archer',1767,5,-1,0),
('Arrow_Archer',1762,5,-1,0),
('Arrow_Archer',1065,50,-1,0),
('Arrow_Archer',7940,100,-1,0),
('Ammunition_Gunslinger',13200,1,-1,0),
('Ammunition_Gunslinger',13221,5,-1,0),
('Ammunition_Gunslinger',13228,5,-1,0),
('Ammunition_Gunslinger',13229,5,-1,0),
('Ammunition_Gunslinger',13230,5,-1,0),
('Ammunition_Gunslinger',13231,5,-1,0),
('Ammunition_Gunslinger',13232,5,-1,0),
('Ammunition_Gunslinger',13222,5,-1,0),
('Ammunition_Gunslinger',13215,5,-1,0),
('Ammunition_Gunslinger',13216,5,-1,0),
('Ammunition_Gunslinger',13217,5,-1,0),
('Ammunition_Gunslinger',13218,5,-1,0),
('Ammunition_Gunslinger',13219,5,-1,0),
('Ammunition_Gunslinger',13220,5,-1,0),
('Ammunition_Gunslinger',7663,15,-1,0),
('Ammunition_Gunslinger',7665,15,-1,0),
('Ammunition_Gunslinger',7664,30,-1,0),
('Ammunition_Gunslinger',25187,1000,-1,0),
('Ammunition_Gunslinger',1000564,30,-1,0),
('Weapons_Ninja',1220001,30,-1,0),
('Weapons_Ninja',1220002,30,-1,0),
('Weapons_Ninja',1220003,30,-1,0),
('Weapons_Ninja',1220004,30,-1,0),
('Weapons_Ninja',13258,30,-1,0),
('Weapons_Ninja',13257,30,-1,0),
('Weapons_Ninja',13255,30,-1,0),
('Weapons_Ninja',13256,30,-1,0),
('Weapons_Ninja',13259,30,-1,0),
('Weapons_Ninja',13294,100,-1,0),
('Weapons_Ninja',6512,50,-1,0),
('Weapons_Ninja',6515,50,-1,0),
('Weapons_Ninja',6513,50,-1,0),
('Weapons_Ninja',6514,50,-1,0),
('Weapons_Ninja',13250,2,-1,0),
('Weapons_Ninja',13251,4,-1,0),
('Weapons_Ninja',13252,6,-1,0),
('Weapons_Ninja',13253,12,-1,0),
('Weapons_Ninja',13254,20,-1,0),
('Weapons_Ninja',7521,50,-1,0),
('Weapons_Ninja',7522,50,-1,0),
('Weapons_Ninja',7523,50,-1,0),
('Weapons_Ninja',7524,200,-1,0),
('Weapons_Ninja',1000565,30,-1,0),
('Weapons_Ninja',1000566,30,-1,0),
('Weapons_Ninja',1000567,30,-1,0),
('Weapons_Ninja',1000568,30,-1,0),
('Weapons_Ninja',1000569,30,-1,0),
('Ammunition_Mechanic',18000,30,-1,0),
('Ammunition_Mechanic',18003,50,-1,0),
('Ammunition_Mechanic',18001,50,-1,0),
('Ammunition_Mechanic',18002,50,-1,0),
('Ammunition_Mechanic',18004,80,-1,0),
('Ammunition_Mechanic',18005,50,-1,0),
('Ammunition_Mechanic',18006,50,-1,0),
('Ammunition_Mechanic',18007,50,-1,0),
('Ammunition_Mechanic',18008,50,-1,0),
('Ammunition_Mechanic',6145,12,-1,0),
('Ammunition_Mechanic',6146,375,-1,0),
('Ammunition_Mechanic',12394,1375,-1,0),
('Ammunition_Mechanic',12393,500,-1,0),
('Ammunition_Mechanic',12392,200,-1,0),
('Ammunition_Mechanic',6147,125,-1,0),
('Ammunition_Mechanic',23277,10000,-1,0),
('Ammunition_Mechanic',100158,10000,-1,0),
('Ammunition_Mechanic',2804,100000,-1,0),
('Ammunition_Mechanic',2809,2000000,-1,0),
('Ammunition_Mechanic',2810,5000000,-1,0),
('Talisman_Merchant',1000563,30,-1,0),
('Talisman_Merchant',101117,15000,-1,0),
('Catch_Arrows',1773,5,-1,0),
('Catch_Arrows',1774,5,-1,0),
('market_refine_prt_in',1010,200,999999,0),
('market_refine_prt_in',1011,1000,999999,0),
('market_refine_payon',1010,200,999999,0),
('market_refine_payon',1011,1000,999999,0),
('market_refine_morocc_in',1010,200,999999,0),
('market_refine_morocc_in',1011,1000,999999,0),
('market_refine_alberta_in',1010,200,999999,0),
('market_refine_alberta_in',1011,1000,999999,0),
('market_refine_yuno_in01',1010,200,999999,0),
('market_refine_yuno_in01',1011,1000,999999,0),
('market_refine_ein_in01',1010,200,999999,0),
('market_refine_ein_in01',1011,1000,999999,0),
('market_refine_lhz_in02',1010,200,999999,0),
('market_refine_lhz_in02',1011,1000,999999,0),
('change_slot#slo',12786,100000,9999,0),
('para_coin10',6304,500000,1,0),
('para_coin10',6080,100000,1,0),
('para_coin10',6081,300000,1,0),
('para_coin10',6380,1000000,1,0),
('para_coin10',6004,100000,1,0),
('para_hei10',6608,150000,1,0),
('para_hei10',6607,20000,1,0),
('para_hei10',6755,200000,1,0),
('para_hei10',7642,10000,1,0),
('para_hei10',22687,200000,1,0),
('para_hei10',23016,1000000,1,0),
('para_key10',7026,100000,10,0),
('para_key10',7027,100000,10,0),
('para_wp00',1181,10000000,1,0),
('para_arm10',5007,2000000,1,0),
('para_ptn00',678,80000,999,0),
('para_ptn00',12016,50000,9999,0),
('para_ptn00',525,100000,1000,0),
('para_ptn00',12422,40000,100,0),
('para_ptn00',12423,50000,100,0),
('para_ptn00',12425,40000,100,0),
('para_ptn00',12426,50000,100,0),
('para_ptn10',505,40000,100,0),
('para_ptn10',12679,100000,500,0),
('para_ptn10',12676,30000,500,0),
('para_ptn10',12680,50000,100,0),
('para_itm00',12106,1500000,100,0),
('para_itm00',12107,500000,100,0),
('para_itm00',616,2500000,100,0),
('para_itm00',12194,200000,100,0),
('para_itm10',12008,5000,99999,0),
('para_itm10',12009,5000,99999,0),
('para_itm10',12012,5000,100,0),
('para_itm10',12010,5000,100,0),
('para_itm10',12011,5000,100,0),
('para_itm10',12013,20000,100,0),
('para_itm10',12014,80000,100,0),
('para_itm10',7931,5000,100,0),
('para_seed10',12290,5000,100,0),
('para_seed10',12376,5000,100,0),
('para_seed10',12291,10000,100,0),
('para_seed10',12377,10000,100,0),
('para_seed10',576,2000,100,0),
('para_seed10',587,2000,100,0),
('para_seed10',526,10000,100,0),
('para_seed10',607,70000,20,0),
('para_seed10',608,50000,20,0),
('para_mora10',11526,5000,100,0),
('para_mora10',11525,5000,1000,0),
('para_mora10',11520,50000,100,0),
('para_mora10',12574,20000,100,0),
('para_ref10',998,10000,500,0),
('para_ref10',1003,10000,500,0),
('para_ref10',1002,10000,500,0),
('para_ref10',999,10000,500,0),
('para_ref20',984,200000,10,0),
('para_ref20',985,200000,100,0),
('para_ref20',987,240000,1,0),
('para_ref20',988,600000,1,0),
('para_ref20',989,1200000,1,0),
('para_jew10',969,1000000,20,0),
('para_jew10',7289,500000,20,0),
('para_jew10',7290,500000,20,0),
('para_jew10',7291,500000,20,0),
('para_jew10',7292,500000,20,0),
('para_jew10',7293,500000,20,0),
('para_jew10',7294,500000,20,0),
('para_jew10',7295,500000,20,0),
('para_jew10',7296,500000,20,0),
('para_jew10',7297,500000,20,0),
('para_alc10',971,20000,20,0),
('para_alc10',972,12000,20,0),
('para_alc10',970,12000,20,0),
('para_alc10',7135,18000,20,0),
('para_alc20',1061,3000,1000,0),
('para_alc20',905,1000,1000,0),
('para_alc20',1059,1000,1000,0),
('para_alc20',7033,1000,1000,0),
('para_alc20',929,4000,1000,0),
('para_alc30',1000,10000,100,0),
('para_alc30',1001,10000,100,0),
('para_alc30',990,10000,100,0),
('para_alc30',991,10000,100,0),
('para_alc30',992,10000,100,0),
('para_alc30',993,10000,100,0),
('para_fod10',6252,40000,100,0),
('para_fod10',6253,8000,100,0),
('para_fod10',6254,30000,100,0),
('para_fod10',6256,15000,100,0),
('para_fod10',6257,15000,100,0),
('para_fod10',6259,15000,100,0),
('para_fod10',6260,10000,100,0),
('para_fod10',22658,80000,50,0),
('para_fod10',22659,100000,50,0),
('para_mag10',12108,20000,99999,0),
('para_mag10',717,1500,99999,0),
('para_mag10',715,4500,99999,0),
('para_mag10',716,4500,99999,0),
('para_mag10',14512,100000,100,0),
('para_mag10',14513,100000,100,0),
('para_mag10',14514,100000,100,0),
('para_mag10',12737,500,99999,0),
('para_mag10',12734,1500,99999,0),
('para_mag10',12738,2000,100,0),
('para_mag10',12735,3000,50,0),
('para_mag10',12736,10000,10,0),
('para_mag10',6360,200,99999,0),
('para_mag10',6363,200,99999,0),
('para_mag10',6361,200,99999,0),
('para_mag10',6362,200,99999,0),
('para_mag11',717,1500,99999,0),
('para_mag11',12737,500,99999,0),
('para_mag11',12734,1500,99999,0),
('para_mag11',6360,200,99999,0),
('para_mag11',6363,200,99999,0),
('para_mag11',6361,200,99999,0),
('para_mag11',6362,200,99999,0),
('para_mag20',12119,8000,100,0),
('para_mag20',12121,8000,100,0),
('para_mag20',12120,5000,100,0),
('para_mag20',12118,15000,100,0),
('para_plt01',709,10000,50,0),
('para_plt01',7932,4000,99999,0),
('para_plt01',7933,4000,99999,0),
('para_plt01',7934,4000,99999,0),
('para_plt01',7935,4000,99999,0),
('para_plt01',7936,4000,99999,0),
('para_plt01',7937,4000,99999,0),
('market_soda',1000374,50000,-1,0);
/*!40000 ALTER TABLE `market` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memo`
--

DROP TABLE IF EXISTS `memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `memo` (
  `memo_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) unsigned NOT NULL DEFAULT 0,
  `map` varchar(11) NOT NULL DEFAULT '',
  `x` smallint(4) unsigned NOT NULL DEFAULT 0,
  `y` smallint(4) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`memo_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memo`
--

LOCK TABLES `memo` WRITE;
/*!40000 ALTER TABLE `memo` DISABLE KEYS */;
/*!40000 ALTER TABLE `memo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mercenary`
--

DROP TABLE IF EXISTS `mercenary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mercenary` (
  `mer_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) unsigned NOT NULL,
  `class` mediumint(9) unsigned NOT NULL DEFAULT 0,
  `hp` int(11) unsigned NOT NULL DEFAULT 0,
  `sp` int(11) unsigned NOT NULL DEFAULT 0,
  `kill_counter` int(11) NOT NULL,
  `life_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`mer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mercenary`
--

LOCK TABLES `mercenary` WRITE;
/*!40000 ALTER TABLE `mercenary` DISABLE KEYS */;
/*!40000 ALTER TABLE `mercenary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mercenary_owner`
--

DROP TABLE IF EXISTS `mercenary_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mercenary_owner` (
  `char_id` int(11) unsigned NOT NULL,
  `merc_id` int(11) unsigned NOT NULL DEFAULT 0,
  `arch_calls` int(11) NOT NULL DEFAULT 0,
  `arch_faith` int(11) NOT NULL DEFAULT 0,
  `spear_calls` int(11) NOT NULL DEFAULT 0,
  `spear_faith` int(11) NOT NULL DEFAULT 0,
  `sword_calls` int(11) NOT NULL DEFAULT 0,
  `sword_faith` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mercenary_owner`
--

LOCK TABLES `mercenary_owner` WRITE;
/*!40000 ALTER TABLE `mercenary_owner` DISABLE KEYS */;
/*!40000 ALTER TABLE `mercenary_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party`
--

DROP TABLE IF EXISTS `party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `party` (
  `party_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(24) NOT NULL DEFAULT '',
  `exp` tinyint(11) unsigned NOT NULL DEFAULT 0,
  `item` tinyint(11) unsigned NOT NULL DEFAULT 0,
  `leader_id` int(11) unsigned NOT NULL DEFAULT 0,
  `leader_char` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`party_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party`
--

LOCK TABLES `party` WRITE;
/*!40000 ALTER TABLE `party` DISABLE KEYS */;
INSERT INTO `party` VALUES
(6,'Partyyyy',0,0,2000000,150004),
(9,'rAthena',0,0,2000000,150010),
(7,'Poppop',0,0,2000000,150009);
/*!40000 ALTER TABLE `party` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_bookings`
--

DROP TABLE IF EXISTS `party_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `party_bookings` (
  `world_name` varchar(32) NOT NULL,
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `char_name` varchar(23) NOT NULL,
  `purpose` smallint(5) unsigned NOT NULL DEFAULT 0,
  `assist` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `damagedealer` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `healer` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `tanker` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `minimum_level` smallint(5) unsigned NOT NULL,
  `maximum_level` smallint(5) unsigned NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`world_name`,`account_id`,`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_bookings`
--

LOCK TABLES `party_bookings` WRITE;
/*!40000 ALTER TABLE `party_bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `party_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_month_1`
--

DROP TABLE IF EXISTS `pda_month_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pda_month_1` (
  `quest` smallint(6) NOT NULL,
  `id_item` int(11) DEFAULT NULL,
  `qt_item` int(11) DEFAULT NULL,
  `id_mob` int(11) DEFAULT NULL,
  `qt_mob` int(11) DEFAULT NULL,
  `id_premio` int(11) DEFAULT NULL,
  `qt_premio` int(11) DEFAULT NULL,
  `id_premio_passe` int(11) DEFAULT NULL,
  `qt_premio_passe` int(11) DEFAULT NULL,
  PRIMARY KEY (`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_month_1`
--

LOCK TABLES `pda_month_1` WRITE;
/*!40000 ALTER TABLE `pda_month_1` DISABLE KEYS */;
INSERT INTO `pda_month_1` VALUES
(1,501,1,1001,10,502,1,503,5),
(2,501,1,1001,10,502,1,503,5),
(3,501,1,1001,10,502,1,503,5),
(4,501,1,1001,10,502,1,503,5),
(5,501,1,1001,10,502,1,503,5),
(6,501,1,1001,10,502,1,503,5),
(7,501,1,1001,10,502,1,503,5),
(8,501,1,1001,10,502,1,503,5),
(9,501,1,1001,10,502,1,503,5),
(10,501,1,1001,10,502,1,503,5),
(11,501,1,1001,10,502,1,503,5),
(12,501,1,1001,10,502,1,503,5),
(13,501,1,1001,10,502,1,503,5),
(14,501,1,1001,10,502,1,503,5),
(15,501,1,1001,10,502,1,503,5),
(16,501,1,1001,10,502,1,503,5),
(17,501,1,1001,10,502,1,503,5),
(18,501,1,1001,10,502,1,503,5),
(19,501,1,1001,10,502,1,503,5),
(20,501,1,1001,10,502,1,503,5),
(21,501,1,1001,10,502,1,503,5),
(22,501,1,1001,10,502,1,503,5),
(23,501,1,1001,10,502,1,503,5),
(24,501,1,1001,10,502,1,503,5),
(25,501,1,1001,10,502,1,503,5);
/*!40000 ALTER TABLE `pda_month_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_month_10`
--

DROP TABLE IF EXISTS `pda_month_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pda_month_10` (
  `quest` smallint(6) NOT NULL,
  `id_item` int(11) DEFAULT NULL,
  `qt_item` int(11) DEFAULT NULL,
  `id_mob` int(11) DEFAULT NULL,
  `qt_mob` int(11) DEFAULT NULL,
  `id_premio` int(11) DEFAULT NULL,
  `qt_premio` int(11) DEFAULT NULL,
  `id_premio_passe` int(11) DEFAULT NULL,
  `qt_premio_passe` int(11) DEFAULT NULL,
  PRIMARY KEY (`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_month_10`
--

LOCK TABLES `pda_month_10` WRITE;
/*!40000 ALTER TABLE `pda_month_10` DISABLE KEYS */;
INSERT INTO `pda_month_10` VALUES
(1,501,1,1001,10,502,1,503,5),
(2,501,1,1001,10,502,1,503,5),
(3,501,1,1001,10,502,1,503,5),
(4,501,1,1001,10,502,1,503,5),
(5,501,1,1001,10,502,1,503,5),
(6,501,1,1001,10,502,1,503,5),
(7,501,1,1001,10,502,1,503,5),
(8,501,1,1001,10,502,1,503,5),
(9,501,1,1001,10,502,1,503,5),
(10,501,1,1001,10,502,1,503,5),
(11,501,1,1001,10,502,1,503,5),
(12,501,1,1001,10,502,1,503,5),
(13,501,1,1001,10,502,1,503,5),
(14,501,1,1001,10,502,1,503,5),
(15,501,1,1001,10,502,1,503,5),
(16,501,1,1001,10,502,1,503,5),
(17,501,1,1001,10,502,1,503,5),
(18,501,1,1001,10,502,1,503,5),
(19,501,1,1001,10,502,1,503,5),
(20,501,1,1001,10,502,1,503,5),
(21,501,1,1001,10,502,1,503,5),
(22,501,1,1001,10,502,1,503,5),
(23,501,1,1001,10,502,1,503,5),
(24,501,1,1001,10,502,1,503,5),
(25,501,1,1001,10,502,1,503,5);
/*!40000 ALTER TABLE `pda_month_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_month_11`
--

DROP TABLE IF EXISTS `pda_month_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pda_month_11` (
  `quest` smallint(6) NOT NULL,
  `id_item` int(11) DEFAULT NULL,
  `qt_item` int(11) DEFAULT NULL,
  `id_mob` int(11) DEFAULT NULL,
  `qt_mob` int(11) DEFAULT NULL,
  `id_premio` int(11) DEFAULT NULL,
  `qt_premio` int(11) DEFAULT NULL,
  `id_premio_passe` int(11) DEFAULT NULL,
  `qt_premio_passe` int(11) DEFAULT NULL,
  PRIMARY KEY (`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_month_11`
--

LOCK TABLES `pda_month_11` WRITE;
/*!40000 ALTER TABLE `pda_month_11` DISABLE KEYS */;
INSERT INTO `pda_month_11` VALUES
(1,501,1,1001,10,502,1,503,5),
(2,501,1,1001,10,502,1,503,5),
(3,501,1,1001,10,502,1,503,5),
(4,501,1,1001,10,502,1,503,5),
(5,501,1,1001,10,502,1,503,5),
(6,501,1,1001,10,502,1,503,5),
(7,501,1,1001,10,502,1,503,5),
(8,501,1,1001,10,502,1,503,5),
(9,501,1,1001,10,502,1,503,5),
(10,501,1,1001,10,502,1,503,5),
(11,501,1,1001,10,502,1,503,5),
(12,501,1,1001,10,502,1,503,5),
(13,501,1,1001,10,502,1,503,5),
(14,501,1,1001,10,502,1,503,5),
(15,501,1,1001,10,502,1,503,5),
(16,501,1,1001,10,502,1,503,5),
(17,501,1,1001,10,502,1,503,5),
(18,501,1,1001,10,502,1,503,5),
(19,501,1,1001,10,502,1,503,5),
(20,501,1,1001,10,502,1,503,5),
(21,501,1,1001,10,502,1,503,5),
(22,501,1,1001,10,502,1,503,5),
(23,501,1,1001,10,502,1,503,5),
(24,501,1,1001,10,502,1,503,5),
(25,501,1,1001,10,502,1,503,5);
/*!40000 ALTER TABLE `pda_month_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_month_12`
--

DROP TABLE IF EXISTS `pda_month_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pda_month_12` (
  `quest` smallint(6) NOT NULL,
  `id_item` int(11) DEFAULT NULL,
  `qt_item` int(11) DEFAULT NULL,
  `id_mob` int(11) DEFAULT NULL,
  `qt_mob` int(11) DEFAULT NULL,
  `id_premio` int(11) DEFAULT NULL,
  `qt_premio` int(11) DEFAULT NULL,
  `id_premio_passe` int(11) DEFAULT NULL,
  `qt_premio_passe` int(11) DEFAULT NULL,
  PRIMARY KEY (`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_month_12`
--

LOCK TABLES `pda_month_12` WRITE;
/*!40000 ALTER TABLE `pda_month_12` DISABLE KEYS */;
INSERT INTO `pda_month_12` VALUES
(1,501,1,1001,10,502,1,503,5),
(2,501,1,1001,10,502,1,503,5),
(3,501,1,1001,10,502,1,503,5),
(4,501,1,1001,10,502,1,503,5),
(5,501,1,1001,10,502,1,503,5),
(6,501,1,1001,10,502,1,503,5),
(7,501,1,1001,10,502,1,503,5),
(8,501,1,1001,10,502,1,503,5),
(9,501,1,1001,10,502,1,503,5),
(10,501,1,1001,10,502,1,503,5),
(11,501,1,1001,10,502,1,503,5),
(12,501,1,1001,10,502,1,503,5),
(13,501,1,1001,10,502,1,503,5),
(14,501,1,1001,10,502,1,503,5),
(15,501,1,1001,10,502,1,503,5),
(16,501,1,1001,10,502,1,503,5),
(17,501,1,1001,10,502,1,503,5),
(18,501,1,1001,10,502,1,503,5),
(19,501,1,1001,10,502,1,503,5),
(20,501,1,1001,10,502,1,503,5),
(21,501,1,1001,10,502,1,503,5),
(22,501,1,1001,10,502,1,503,5),
(23,501,1,1001,10,502,1,503,5),
(24,501,1,1001,10,502,1,503,5),
(25,501,1,1001,10,502,1,503,5);
/*!40000 ALTER TABLE `pda_month_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_month_2`
--

DROP TABLE IF EXISTS `pda_month_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pda_month_2` (
  `quest` smallint(6) NOT NULL,
  `id_item` int(11) DEFAULT NULL,
  `qt_item` int(11) DEFAULT NULL,
  `id_mob` int(11) DEFAULT NULL,
  `qt_mob` int(11) DEFAULT NULL,
  `id_premio` int(11) DEFAULT NULL,
  `qt_premio` int(11) DEFAULT NULL,
  `id_premio_passe` int(11) DEFAULT NULL,
  `qt_premio_passe` int(11) DEFAULT NULL,
  PRIMARY KEY (`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_month_2`
--

LOCK TABLES `pda_month_2` WRITE;
/*!40000 ALTER TABLE `pda_month_2` DISABLE KEYS */;
INSERT INTO `pda_month_2` VALUES
(1,501,1,1001,10,502,1,503,5),
(2,501,1,1001,10,502,1,503,5),
(3,501,1,1001,10,502,1,503,5),
(4,501,1,1001,10,502,1,503,5),
(5,501,1,1001,10,502,1,503,5),
(6,501,1,1001,10,502,1,503,5),
(7,501,1,1001,10,502,1,503,5),
(8,501,1,1001,10,502,1,503,5),
(9,501,1,1001,10,502,1,503,5),
(10,501,1,1001,10,502,1,503,5),
(11,501,1,1001,10,502,1,503,5),
(12,501,1,1001,10,502,1,503,5),
(13,501,1,1001,10,502,1,503,5),
(14,501,1,1001,10,502,1,503,5),
(15,501,1,1001,10,502,1,503,5),
(16,501,1,1001,10,502,1,503,5),
(17,501,1,1001,10,502,1,503,5),
(18,501,1,1001,10,502,1,503,5),
(19,501,1,1001,10,502,1,503,5),
(20,501,1,1001,10,502,1,503,5),
(21,501,1,1001,10,502,1,503,5),
(22,501,1,1001,10,502,1,503,5),
(23,501,1,1001,10,502,1,503,5),
(24,501,1,1001,10,502,1,503,5),
(25,501,1,1001,10,502,1,503,5);
/*!40000 ALTER TABLE `pda_month_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_month_3`
--

DROP TABLE IF EXISTS `pda_month_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pda_month_3` (
  `quest` smallint(6) NOT NULL,
  `id_item` int(11) DEFAULT NULL,
  `qt_item` int(11) DEFAULT NULL,
  `id_mob` int(11) DEFAULT NULL,
  `qt_mob` int(11) DEFAULT NULL,
  `id_premio` int(11) DEFAULT NULL,
  `qt_premio` int(11) DEFAULT NULL,
  `id_premio_passe` int(11) DEFAULT NULL,
  `qt_premio_passe` int(11) DEFAULT NULL,
  PRIMARY KEY (`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_month_3`
--

LOCK TABLES `pda_month_3` WRITE;
/*!40000 ALTER TABLE `pda_month_3` DISABLE KEYS */;
INSERT INTO `pda_month_3` VALUES
(1,501,1,1001,10,502,1,503,5),
(2,501,1,1001,10,502,1,503,5),
(3,501,1,1001,10,502,1,503,5),
(4,501,1,1001,10,502,1,503,5),
(5,501,1,1001,10,502,1,503,5),
(6,501,1,1001,10,502,1,503,5),
(7,501,1,1001,10,502,1,503,5),
(8,501,1,1001,10,502,1,503,5),
(9,501,1,1001,10,502,1,503,5),
(10,501,1,1001,10,502,1,503,5),
(11,501,1,1001,10,502,1,503,5),
(12,501,1,1001,10,502,1,503,5),
(13,501,1,1001,10,502,1,503,5),
(14,501,1,1001,10,502,1,503,5),
(15,501,1,1001,10,502,1,503,5),
(16,501,1,1001,10,502,1,503,5),
(17,501,1,1001,10,502,1,503,5),
(18,501,1,1001,10,502,1,503,5),
(19,501,1,1001,10,502,1,503,5),
(20,501,1,1001,10,502,1,503,5),
(21,501,1,1001,10,502,1,503,5),
(22,501,1,1001,10,502,1,503,5),
(23,501,1,1001,10,502,1,503,5),
(24,501,1,1001,10,502,1,503,5),
(25,501,1,1001,10,502,1,503,5);
/*!40000 ALTER TABLE `pda_month_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_month_4`
--

DROP TABLE IF EXISTS `pda_month_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pda_month_4` (
  `quest` smallint(6) NOT NULL,
  `id_item` int(11) DEFAULT NULL,
  `qt_item` int(11) DEFAULT NULL,
  `id_mob` int(11) DEFAULT NULL,
  `qt_mob` int(11) DEFAULT NULL,
  `id_premio` int(11) DEFAULT NULL,
  `qt_premio` int(11) DEFAULT NULL,
  `id_premio_passe` int(11) DEFAULT NULL,
  `qt_premio_passe` int(11) DEFAULT NULL,
  PRIMARY KEY (`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_month_4`
--

LOCK TABLES `pda_month_4` WRITE;
/*!40000 ALTER TABLE `pda_month_4` DISABLE KEYS */;
INSERT INTO `pda_month_4` VALUES
(1,501,1,1001,10,502,1,503,5),
(2,501,1,1001,10,502,1,503,5),
(3,501,1,1001,10,502,1,503,5),
(4,501,1,1001,10,502,1,503,5),
(5,501,1,1001,10,502,1,503,5),
(6,501,1,1001,10,502,1,503,5),
(7,501,1,1001,10,502,1,503,5),
(8,501,1,1001,10,502,1,503,5),
(9,501,1,1001,10,502,1,503,5),
(10,501,1,1001,10,502,1,503,5),
(11,501,1,1001,10,502,1,503,5),
(12,501,1,1001,10,502,1,503,5),
(13,501,1,1001,10,502,1,503,5),
(14,501,1,1001,10,502,1,503,5),
(15,501,1,1001,10,502,1,503,5),
(16,501,1,1001,10,502,1,503,5),
(17,501,1,1001,10,502,1,503,5),
(18,501,1,1001,10,502,1,503,5),
(19,501,1,1001,10,502,1,503,5),
(20,501,1,1001,10,502,1,503,5),
(21,501,1,1001,10,502,1,503,5),
(22,501,1,1001,10,502,1,503,5),
(23,501,1,1001,10,502,1,503,5),
(24,501,1,1001,10,502,1,503,5),
(25,501,1,1001,10,502,1,503,5);
/*!40000 ALTER TABLE `pda_month_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_month_5`
--

DROP TABLE IF EXISTS `pda_month_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pda_month_5` (
  `quest` smallint(6) NOT NULL,
  `id_item` int(11) DEFAULT NULL,
  `qt_item` int(11) DEFAULT NULL,
  `id_mob` int(11) DEFAULT NULL,
  `qt_mob` int(11) DEFAULT NULL,
  `id_premio` int(11) DEFAULT NULL,
  `qt_premio` int(11) DEFAULT NULL,
  `id_premio_passe` int(11) DEFAULT NULL,
  `qt_premio_passe` int(11) DEFAULT NULL,
  PRIMARY KEY (`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_month_5`
--

LOCK TABLES `pda_month_5` WRITE;
/*!40000 ALTER TABLE `pda_month_5` DISABLE KEYS */;
INSERT INTO `pda_month_5` VALUES
(1,501,1,1001,10,502,1,503,5),
(2,501,1,1001,10,502,1,503,5),
(3,501,1,1001,10,502,1,503,5),
(4,501,1,1001,10,502,1,503,5),
(5,501,1,1001,10,502,1,503,5),
(6,501,1,1001,10,502,1,503,5),
(7,501,1,1001,10,502,1,503,5),
(8,501,1,1001,10,502,1,503,5),
(9,501,1,1001,10,502,1,503,5),
(10,501,1,1001,10,502,1,503,5),
(11,501,1,1001,10,502,1,503,5),
(12,501,1,1001,10,502,1,503,5),
(13,501,1,1001,10,502,1,503,5),
(14,501,1,1001,10,502,1,503,5),
(15,501,1,1001,10,502,1,503,5),
(16,501,1,1001,10,502,1,503,5),
(17,501,1,1001,10,502,1,503,5),
(18,501,1,1001,10,502,1,503,5),
(19,501,1,1001,10,502,1,503,5),
(20,501,1,1001,10,502,1,503,5),
(21,501,1,1001,10,502,1,503,5),
(22,501,1,1001,10,502,1,503,5),
(23,501,1,1001,10,502,1,503,5),
(24,501,1,1001,10,502,1,503,5),
(25,501,1,1001,10,502,1,503,5);
/*!40000 ALTER TABLE `pda_month_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_month_6`
--

DROP TABLE IF EXISTS `pda_month_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pda_month_6` (
  `quest` smallint(6) NOT NULL,
  `id_item` int(11) DEFAULT NULL,
  `qt_item` int(11) DEFAULT NULL,
  `id_mob` int(11) DEFAULT NULL,
  `qt_mob` int(11) DEFAULT NULL,
  `id_premio` int(11) DEFAULT NULL,
  `qt_premio` int(11) DEFAULT NULL,
  `id_premio_passe` int(11) DEFAULT NULL,
  `qt_premio_passe` int(11) DEFAULT NULL,
  PRIMARY KEY (`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_month_6`
--

LOCK TABLES `pda_month_6` WRITE;
/*!40000 ALTER TABLE `pda_month_6` DISABLE KEYS */;
INSERT INTO `pda_month_6` VALUES
(1,501,1,1001,10,502,1,503,5),
(2,501,1,1001,10,502,1,503,5),
(3,501,1,1001,10,502,1,503,5),
(4,501,1,1001,10,502,1,503,5),
(5,501,1,1001,10,502,1,503,5),
(6,501,1,1001,10,502,1,503,5),
(7,501,1,1001,10,502,1,503,5),
(8,501,1,1001,10,502,1,503,5),
(9,501,1,1001,10,502,1,503,5),
(10,501,1,1001,10,502,1,503,5),
(11,501,1,1001,10,502,1,503,5),
(12,501,1,1001,10,502,1,503,5),
(13,501,1,1001,10,502,1,503,5),
(14,501,1,1001,10,502,1,503,5),
(15,501,1,1001,10,502,1,503,5),
(16,501,1,1001,10,502,1,503,5),
(17,501,1,1001,10,502,1,503,5),
(18,501,1,1001,10,502,1,503,5),
(19,501,1,1001,10,502,1,503,5),
(20,501,1,1001,10,502,1,503,5),
(21,501,1,1001,10,502,1,503,5),
(22,501,1,1001,10,502,1,503,5),
(23,501,1,1001,10,502,1,503,5),
(24,501,1,1001,10,502,1,503,5),
(25,501,1,1001,10,502,1,503,5);
/*!40000 ALTER TABLE `pda_month_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_month_7`
--

DROP TABLE IF EXISTS `pda_month_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pda_month_7` (
  `quest` smallint(6) NOT NULL,
  `id_item` int(11) DEFAULT NULL,
  `qt_item` int(11) DEFAULT NULL,
  `id_mob` int(11) DEFAULT NULL,
  `qt_mob` int(11) DEFAULT NULL,
  `id_premio` int(11) DEFAULT NULL,
  `qt_premio` int(11) DEFAULT NULL,
  `id_premio_passe` int(11) DEFAULT NULL,
  `qt_premio_passe` int(11) DEFAULT NULL,
  PRIMARY KEY (`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_month_7`
--

LOCK TABLES `pda_month_7` WRITE;
/*!40000 ALTER TABLE `pda_month_7` DISABLE KEYS */;
INSERT INTO `pda_month_7` VALUES
(1,501,1,1001,10,502,1,503,5),
(2,501,1,1001,10,502,1,503,5),
(3,501,1,1001,10,502,1,503,5),
(4,501,1,1001,10,502,1,503,5),
(5,501,1,1001,10,502,1,503,5),
(6,501,1,1001,10,502,1,503,5),
(7,501,1,1001,10,502,1,503,5),
(8,501,1,1001,10,502,1,503,5),
(9,501,1,1001,10,502,1,503,5),
(10,501,1,1001,10,502,1,503,5),
(11,501,1,1001,10,502,1,503,5),
(12,501,1,1001,10,502,1,503,5),
(13,501,1,1001,10,502,1,503,5),
(14,501,1,1001,10,502,1,503,5),
(15,501,1,1001,10,502,1,503,5),
(16,501,1,1001,10,502,1,503,5),
(17,501,1,1001,10,502,1,503,5),
(18,501,1,1001,10,502,1,503,5),
(19,501,1,1001,10,502,1,503,5),
(20,501,1,1001,10,502,1,503,5),
(21,501,1,1001,10,502,1,503,5),
(22,501,1,1001,10,502,1,503,5),
(23,501,1,1001,10,502,1,503,5),
(24,501,1,1001,10,502,1,503,5),
(25,501,1,1001,10,502,1,503,5);
/*!40000 ALTER TABLE `pda_month_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_month_8`
--

DROP TABLE IF EXISTS `pda_month_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pda_month_8` (
  `quest` smallint(6) NOT NULL,
  `id_item` int(11) DEFAULT NULL,
  `qt_item` int(11) DEFAULT NULL,
  `id_mob` int(11) DEFAULT NULL,
  `qt_mob` int(11) DEFAULT NULL,
  `id_premio` int(11) DEFAULT NULL,
  `qt_premio` int(11) DEFAULT NULL,
  `id_premio_passe` int(11) DEFAULT NULL,
  `qt_premio_passe` int(11) DEFAULT NULL,
  PRIMARY KEY (`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_month_8`
--

LOCK TABLES `pda_month_8` WRITE;
/*!40000 ALTER TABLE `pda_month_8` DISABLE KEYS */;
INSERT INTO `pda_month_8` VALUES
(1,501,1,1001,10,502,1,503,5),
(2,501,1,1001,10,502,1,503,5),
(3,501,1,1001,10,502,1,503,5),
(4,501,1,1001,10,502,1,503,5),
(5,501,1,1001,10,502,1,503,5),
(6,501,1,1001,10,502,1,503,5),
(7,501,1,1001,10,502,1,503,5),
(8,501,1,1001,10,502,1,503,5),
(9,501,1,1001,10,502,1,503,5),
(10,501,1,1001,10,502,1,503,5),
(11,501,1,1001,10,502,1,503,5),
(12,501,1,1001,10,502,1,503,5),
(13,501,1,1001,10,502,1,503,5),
(14,501,1,1001,10,502,1,503,5),
(15,501,1,1001,10,502,1,503,5),
(16,501,1,1001,10,502,1,503,5),
(17,501,1,1001,10,502,1,503,5),
(18,501,1,1001,10,502,1,503,5),
(19,501,1,1001,10,502,1,503,5),
(20,501,1,1001,10,502,1,503,5),
(21,501,1,1001,10,502,1,503,5),
(22,501,1,1001,10,502,1,503,5),
(23,501,1,1001,10,502,1,503,5),
(24,501,1,1001,10,502,1,503,5),
(25,501,1,1001,10,502,1,503,5);
/*!40000 ALTER TABLE `pda_month_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_month_9`
--

DROP TABLE IF EXISTS `pda_month_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pda_month_9` (
  `quest` smallint(6) NOT NULL,
  `id_item` int(11) DEFAULT NULL,
  `qt_item` int(11) DEFAULT NULL,
  `id_mob` int(11) DEFAULT NULL,
  `qt_mob` int(11) DEFAULT NULL,
  `id_premio` int(11) DEFAULT NULL,
  `qt_premio` int(11) DEFAULT NULL,
  `id_premio_passe` int(11) DEFAULT NULL,
  `qt_premio_passe` int(11) DEFAULT NULL,
  PRIMARY KEY (`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_month_9`
--

LOCK TABLES `pda_month_9` WRITE;
/*!40000 ALTER TABLE `pda_month_9` DISABLE KEYS */;
INSERT INTO `pda_month_9` VALUES
(1,501,1,1001,10,502,1,503,5),
(2,501,1,1001,10,502,1,503,5),
(3,501,1,1001,10,502,1,503,5),
(4,501,1,1001,10,502,1,503,5),
(5,501,1,1001,10,502,1,503,5),
(6,501,1,1001,10,502,1,503,5),
(7,501,1,1001,10,502,1,503,5),
(8,501,1,1001,10,502,1,503,5),
(9,501,1,1001,10,502,1,503,5),
(10,501,1,1001,10,502,1,503,5),
(11,501,1,1001,10,502,1,503,5),
(12,501,1,1001,10,502,1,503,5),
(13,501,1,1001,10,502,1,503,5),
(14,501,1,1001,10,502,1,503,5),
(15,501,1,1001,10,502,1,503,5),
(16,501,1,1001,10,502,1,503,5),
(17,501,1,1001,10,502,1,503,5),
(18,501,1,1001,10,502,1,503,5),
(19,501,1,1001,10,502,1,503,5),
(20,501,1,1001,10,502,1,503,5),
(21,501,1,1001,10,502,1,503,5),
(22,501,1,1001,10,502,1,503,5),
(23,501,1,1001,10,502,1,503,5),
(24,501,1,1001,10,502,1,503,5),
(25,501,1,1001,10,502,1,503,5);
/*!40000 ALTER TABLE `pda_month_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_nivel`
--

DROP TABLE IF EXISTS `pda_nivel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pda_nivel` (
  `account_id` int(11) NOT NULL,
  `nivel` smallint(6) NOT NULL,
  `premium` enum('S','N') DEFAULT 'N',
  `dia_1` enum('N','P') DEFAULT NULL,
  `dia_2` enum('N','P') DEFAULT NULL,
  `dia_3` enum('N','P') DEFAULT NULL,
  `dia_4` enum('N','P') DEFAULT NULL,
  `dia_5` enum('N','P') DEFAULT NULL,
  `dia_6` enum('N','P') DEFAULT NULL,
  `dia_7` enum('N','P') DEFAULT NULL,
  `dia_8` enum('N','P') DEFAULT NULL,
  `dia_9` enum('N','P') DEFAULT NULL,
  `dia_10` enum('N','P') DEFAULT NULL,
  `dia_11` enum('N','P') DEFAULT NULL,
  `dia_12` enum('N','P') DEFAULT NULL,
  `dia_13` enum('N','P') DEFAULT NULL,
  `dia_14` enum('N','P') DEFAULT NULL,
  `dia_15` enum('N','P') DEFAULT NULL,
  `dia_16` enum('N','P') DEFAULT NULL,
  `dia_17` enum('N','P') DEFAULT NULL,
  `dia_18` enum('N','P') DEFAULT NULL,
  `dia_19` enum('N','P') DEFAULT NULL,
  `dia_20` enum('N','P') DEFAULT NULL,
  `dia_21` enum('N','P') DEFAULT NULL,
  `dia_22` enum('N','P') DEFAULT NULL,
  `dia_23` enum('N','P') DEFAULT NULL,
  `dia_24` enum('N','P') DEFAULT NULL,
  `dia_25` enum('N','P') DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_nivel`
--

LOCK TABLES `pda_nivel` WRITE;
/*!40000 ALTER TABLE `pda_nivel` DISABLE KEYS */;
/*!40000 ALTER TABLE `pda_nivel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet`
--

DROP TABLE IF EXISTS `pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pet` (
  `pet_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `class` mediumint(9) unsigned NOT NULL DEFAULT 0,
  `name` varchar(24) NOT NULL DEFAULT '',
  `account_id` int(11) unsigned NOT NULL DEFAULT 0,
  `char_id` int(11) unsigned NOT NULL DEFAULT 0,
  `level` smallint(4) unsigned NOT NULL DEFAULT 0,
  `egg_id` int(10) unsigned NOT NULL DEFAULT 0,
  `equip` int(10) unsigned NOT NULL DEFAULT 0,
  `intimate` smallint(9) unsigned NOT NULL DEFAULT 0,
  `hungry` smallint(9) unsigned NOT NULL DEFAULT 0,
  `rename_flag` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `incubate` int(11) unsigned NOT NULL DEFAULT 0,
  `autofeed` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`pet_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet`
--

LOCK TABLES `pet` WRITE;
/*!40000 ALTER TABLE `pet` DISABLE KEYS */;
INSERT INTO `pet` VALUES
(2,1002,'Tchoins',2000000,150000,1,9001,0,250,100,1,1,0),
(6,1002,'Poring',2000000,150000,1,9001,0,250,100,0,1,0),
(21,1002,'Poring',2000000,150000,2,9001,0,1000,64,0,1,0),
(16,1002,'Poring',0,0,1,9001,0,250,100,0,1,0),
(17,1002,'Poring',2000000,150002,1,9001,0,250,100,0,1,0),
(18,1002,'Poring',0,0,1,9001,0,250,100,0,1,0),
(23,1516,'Increase Soil',2000000,150000,2,9200,0,990,0,0,1,0);
/*!40000 ALTER TABLE `pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest`
--

DROP TABLE IF EXISTS `quest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest` (
  `char_id` int(11) unsigned NOT NULL DEFAULT 0,
  `quest_id` int(10) unsigned NOT NULL,
  `state` enum('0','1','2') NOT NULL DEFAULT '0',
  `time` int(11) unsigned NOT NULL DEFAULT 0,
  `count1` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `count2` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `count3` mediumint(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`,`quest_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest`
--

LOCK TABLES `quest` WRITE;
/*!40000 ALTER TABLE `quest` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `nameid` int(10) unsigned NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`nameid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_data`
--

DROP TABLE IF EXISTS `sc_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sc_data` (
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `type` smallint(11) unsigned NOT NULL,
  `tick` bigint(20) NOT NULL,
  `val1` int(11) NOT NULL DEFAULT 0,
  `val2` int(11) NOT NULL DEFAULT 0,
  `val3` int(11) NOT NULL DEFAULT 0,
  `val4` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_data`
--

LOCK TABLES `sc_data` WRITE;
/*!40000 ALTER TABLE `sc_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `sc_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `char_id` int(11) unsigned NOT NULL DEFAULT 0,
  `id` smallint(11) unsigned NOT NULL DEFAULT 0,
  `lv` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `flag` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES
(150004,41,10,0),
(150004,42,10,0),
(150004,40,1,0),
(150004,39,10,0),
(150004,38,10,0),
(150004,37,10,0),
(150004,36,10,0),
(150004,1,9,0),
(150010,1,9,0),
(150009,152,1,0),
(150009,151,1,0),
(150009,150,1,0),
(150009,149,1,0),
(150009,142,1,0),
(150009,1,9,0),
(150002,215,5,0),
(150002,214,5,0),
(150002,213,5,0),
(150002,212,10,0),
(150002,211,10,0),
(150002,210,10,0),
(150002,124,1,0),
(150002,53,1,0),
(150002,52,10,0),
(150002,51,10,0),
(150002,1,9,0),
(150002,2,10,0),
(150002,44,10,0),
(150002,46,10,0),
(150002,48,10,0),
(150002,49,10,0),
(150002,50,10,0),
(150002,225,10,0),
(150002,224,5,0),
(150002,223,1,0),
(150002,222,1,0),
(150002,221,5,0),
(150002,220,1,0),
(150002,219,5,0),
(150002,218,5,0),
(150002,217,5,0),
(150002,216,5,0),
(150000,1,9,0);
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_homunculus`
--

DROP TABLE IF EXISTS `skill_homunculus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_homunculus` (
  `homun_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `lv` smallint(6) NOT NULL,
  PRIMARY KEY (`homun_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_homunculus`
--

LOCK TABLES `skill_homunculus` WRITE;
/*!40000 ALTER TABLE `skill_homunculus` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_homunculus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skillcooldown`
--

DROP TABLE IF EXISTS `skillcooldown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `skillcooldown` (
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `skill` smallint(11) unsigned NOT NULL DEFAULT 0,
  `tick` bigint(20) NOT NULL,
  PRIMARY KEY (`char_id`,`skill`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skillcooldown`
--

LOCK TABLES `skillcooldown` WRITE;
/*!40000 ALTER TABLE `skillcooldown` DISABLE KEYS */;
/*!40000 ALTER TABLE `skillcooldown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skillcooldown_homunculus`
--

DROP TABLE IF EXISTS `skillcooldown_homunculus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `skillcooldown_homunculus` (
  `homun_id` int(11) NOT NULL,
  `skill` smallint(11) unsigned NOT NULL DEFAULT 0,
  `tick` bigint(20) NOT NULL,
  PRIMARY KEY (`homun_id`,`skill`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skillcooldown_homunculus`
--

LOCK TABLES `skillcooldown_homunculus` WRITE;
/*!40000 ALTER TABLE `skillcooldown_homunculus` DISABLE KEYS */;
/*!40000 ALTER TABLE `skillcooldown_homunculus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skillcooldown_mercenary`
--

DROP TABLE IF EXISTS `skillcooldown_mercenary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `skillcooldown_mercenary` (
  `mer_id` int(11) unsigned NOT NULL,
  `skill` smallint(11) unsigned NOT NULL DEFAULT 0,
  `tick` bigint(20) NOT NULL,
  PRIMARY KEY (`mer_id`,`skill`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skillcooldown_mercenary`
--

LOCK TABLES `skillcooldown_mercenary` WRITE;
/*!40000 ALTER TABLE `skillcooldown_mercenary` DISABLE KEYS */;
/*!40000 ALTER TABLE `skillcooldown_mercenary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage`
--

DROP TABLE IF EXISTS `storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `storage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL DEFAULT 0,
  `nameid` int(10) unsigned NOT NULL DEFAULT 0,
  `amount` smallint(11) unsigned NOT NULL DEFAULT 0,
  `equip` int(11) unsigned NOT NULL DEFAULT 0,
  `identify` smallint(6) unsigned NOT NULL DEFAULT 0,
  `refine` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `card0` int(10) unsigned NOT NULL DEFAULT 0,
  `card1` int(10) unsigned NOT NULL DEFAULT 0,
  `card2` int(10) unsigned NOT NULL DEFAULT 0,
  `card3` int(10) unsigned NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `expire_time` int(11) unsigned NOT NULL DEFAULT 0,
  `bound` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `unique_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage`
--

LOCK TABLES `storage` WRITE;
/*!40000 ALTER TABLE `storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vending_items`
--

DROP TABLE IF EXISTS `vending_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vending_items` (
  `vending_id` int(10) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `cartinventory_id` int(10) unsigned NOT NULL,
  `amount` smallint(5) unsigned NOT NULL,
  `price` int(10) unsigned NOT NULL,
  PRIMARY KEY (`vending_id`,`index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vending_items`
--

LOCK TABLES `vending_items` WRITE;
/*!40000 ALTER TABLE `vending_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `vending_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendings`
--

DROP TABLE IF EXISTS `vendings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendings` (
  `id` int(10) unsigned NOT NULL,
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(10) unsigned NOT NULL,
  `sex` enum('F','M') NOT NULL DEFAULT 'M',
  `map` varchar(20) NOT NULL,
  `x` smallint(5) unsigned NOT NULL,
  `y` smallint(5) unsigned NOT NULL,
  `title` varchar(80) NOT NULL,
  `body_direction` char(1) NOT NULL DEFAULT '4',
  `head_direction` char(1) NOT NULL DEFAULT '0',
  `sit` char(1) NOT NULL DEFAULT '1',
  `autotrade` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendings`
--

LOCK TABLES `vendings` WRITE;
/*!40000 ALTER TABLE `vendings` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-21  3:00:01
