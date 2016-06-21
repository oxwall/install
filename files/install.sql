-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: 10.0.0.99    Database: build_db_skadate
-- ------------------------------------------------------
-- Server version	5.5.28-0ubuntu0.12.10.2

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
-- Table structure for table `%%TBL-PREFIX%%ads_banner`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%ads_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%ads_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `code` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%ads_banner`
--

LOCK TABLES `%%TBL-PREFIX%%ads_banner` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%ads_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%ads_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%ads_banner_location`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%ads_banner_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%ads_banner_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bannerId` int(11) NOT NULL,
  `location` char(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bannerId` (`bannerId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%ads_banner_location`
--

LOCK TABLES `%%TBL-PREFIX%%ads_banner_location` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%ads_banner_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%ads_banner_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%ads_banner_position`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%ads_banner_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%ads_banner_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bannerId` int(11) NOT NULL,
  `position` enum('top','sidebar','bottom') NOT NULL,
  `pluginKey` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bannerId` (`bannerId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%ads_banner_position`
--

LOCK TABLES `%%TBL-PREFIX%%ads_banner_position` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%ads_banner_position` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%ads_banner_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_attachment`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `addStamp` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `fileName` varchar(100) DEFAULT NULL,
  `origFileName` varchar(100) DEFAULT NULL,
  `size` int(11) NOT NULL DEFAULT '0',
  `bundle` varchar(128) DEFAULT NULL,
  `pluginKey` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `bundle` (`bundle`),
  KEY `pluginKey` (`pluginKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_attachment`
--

LOCK TABLES `%%TBL-PREFIX%%base_attachment` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_authorization_action`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_authorization_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_authorization_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `availableForGuest` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `groupId` (`groupId`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=339 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_authorization_action`
--

LOCK TABLES `%%TBL-PREFIX%%base_authorization_action` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_authorization_action` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_authorization_action` VALUES (7,5,'view',1),(8,5,'upload',0),(11,6,'add_comment',0),(13,5,'add_comment',0),(67,6,'search_users',1),(171,6,'view_profile',1),(303,130,'hide_ads',1),(330,144,'send_gift',0),(331,145,'add_to_list',0),(333,99,'read_chat_message',0),(334,99,'send_chat_message',0),(335,99,'reply_to_chat_message',0),(336,99,'read_message',0),(337,99,'send_message',0),(338,99,'reply_to_message',0);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_authorization_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_authorization_group`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_authorization_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_authorization_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `moderated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_authorization_group`
--

LOCK TABLES `%%TBL-PREFIX%%base_authorization_group` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_authorization_group` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_authorization_group` VALUES (99,'mailbox',0),(5,'photo',1),(6,'base',1),(7,'admin',1),(139,'membership',0),(140,'usercredits',1),(130,'ads',0),(144,'virtualgifts',0),(145,'hotlist',0);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_authorization_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_authorization_moderator`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_authorization_moderator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_authorization_moderator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_authorization_moderator`
--

LOCK TABLES `%%TBL-PREFIX%%base_authorization_moderator` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_authorization_moderator` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_authorization_moderator` VALUES (1,1);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_authorization_moderator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_authorization_moderator_permission`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_authorization_moderator_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_authorization_moderator_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `moderatorId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `moderatorId` (`moderatorId`),
  KEY `groupId` (`groupId`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_authorization_moderator_permission`
--

LOCK TABLES `%%TBL-PREFIX%%base_authorization_moderator_permission` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_authorization_moderator_permission` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_authorization_moderator_permission` VALUES (1,1,5),(2,1,6),(3,1,140),(4,1,130),(5,1,144),(6,1,7),(13,1,7),(14,1,7),(15,1,7),(16,1,7),(17,1,7),(18,1,7),(19,1,7),(20,1,7),(21,1,7),(22,1,7);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_authorization_moderator_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_authorization_permission`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_authorization_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_authorization_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actionId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `actionId` (`actionId`,`roleId`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_authorization_permission`
--

LOCK TABLES `%%TBL-PREFIX%%base_authorization_permission` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_authorization_permission` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_authorization_permission` VALUES (3,7,1),(4,7,12),(5,7,34),(6,8,12),(7,8,34),(8,13,34),(13,67,1),(14,67,12),(15,67,34),(16,171,1),(17,171,12),(18,171,34),(19,303,34),(20,330,12),(21,330,34),(22,331,12),(23,331,34),(26,333,12),(27,333,34),(28,334,12),(29,334,34),(30,335,12),(31,335,34),(32,336,12),(33,336,34),(34,337,12),(35,337,34),(36,338,12),(37,338,34);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_authorization_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_authorization_role`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_authorization_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_authorization_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sortOrder` int(11) NOT NULL,
  `displayLabel` tinyint(1) DEFAULT '0',
  `custom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_authorization_role`
--

LOCK TABLES `%%TBL-PREFIX%%base_authorization_role` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_authorization_role` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_authorization_role` VALUES (1,'guest',0,0,NULL),(12,'wqewq',1,0,NULL),(34,'bronze',3,1,'rgb(1, 162, 166)');
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_authorization_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_authorization_user_role`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_authorization_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_authorization_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user2role` (`userId`,`roleId`),
  KEY `userId` (`userId`),
  KEY `roleId` (`roleId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_authorization_user_role`
--

LOCK TABLES `%%TBL-PREFIX%%base_authorization_user_role` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_authorization_user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_authorization_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_avatar`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_avatar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_avatar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `hash` int(11) NOT NULL DEFAULT '0',
  `status` varchar(32) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='utf8_general_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_avatar`
--

LOCK TABLES `%%TBL-PREFIX%%base_avatar` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_avatar` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_avatar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_billing_gateway`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_billing_gateway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_billing_gateway` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gatewayKey` varchar(50) NOT NULL,
  `adapterClassName` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `mobile` tinyint(1) NOT NULL DEFAULT '0',
  `recurring` tinyint(1) NOT NULL DEFAULT '0',
  `dynamic` tinyint(1) DEFAULT '1',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `currencies` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gatewayKey` (`gatewayKey`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_billing_gateway`
--

LOCK TABLES `%%TBL-PREFIX%%base_billing_gateway` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_billing_gateway` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_billing_gateway` VALUES (1,'billingpaypal','BILLINGPAYPAL_CLASS_PaypalAdapter',1,1,1,NULL,0,'AUD,BRL,CAD,CZK,DKK,EUR,HKD,HUF,ILS,JPY,MYR,MXN,NOK,NZD,PHP,PLN,GBP,SGD,SEK,CHF,TWD,THB,USD'),(3,'billingccbill','BILLINGCCBILL_CLASS_CcbillAdapter',1,0,1,NULL,0,'AUD,CAD,EUR,GBP,JPY,USD');
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_billing_gateway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_billing_gateway_config`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_billing_gateway_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_billing_gateway_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gatewayId` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_billing_gateway_config`
--

LOCK TABLES `%%TBL-PREFIX%%base_billing_gateway_config` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_billing_gateway_config` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_billing_gateway_config` VALUES (1,1,'business',''),(2,1,'sandboxMode','0'),(7,2,'dpFormName',''),(8,2,'edFormName',''),(12,3,'clientAccnum',''),(13,3,'clientSubacc','0000'),(14,3,'clientSubaccCredits',''),(15,3,'ccFormName',''),(16,3,'ckFormName',''),(17,3,'dpFormName',''),(18,3,'edFormName',''),(19,3,'dynamicPricingSalt',''),(20,3,'datalinkUsername',''),(21,3,'datalinkPassword','');
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_billing_gateway_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_billing_gateway_product`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_billing_gateway_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_billing_gateway_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gatewayId` int(10) NOT NULL,
  `pluginKey` varchar(255) NOT NULL,
  `entityType` varchar(50) NOT NULL,
  `entityId` int(10) NOT NULL,
  `productId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_billing_gateway_product`
--

LOCK TABLES `%%TBL-PREFIX%%base_billing_gateway_product` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_billing_gateway_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_billing_gateway_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_billing_product`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_billing_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_billing_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productKey` varchar(255) NOT NULL,
  `adapterClassName` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `productKey` (`productKey`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_billing_product`
--

LOCK TABLES `%%TBL-PREFIX%%base_billing_product` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_billing_product` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_billing_product` VALUES (1,'membership_plan','MEMBERSHIP_CLASS_MembershipPlanProductAdapter',1),(2,'user_credits_pack','USERCREDITS_CLASS_UserCreditsPackProductAdapter',1);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_billing_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_billing_sale`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_billing_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_billing_sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL,
  `pluginKey` varchar(255) DEFAULT NULL,
  `entityKey` varchar(50) NOT NULL,
  `entityId` int(10) DEFAULT NULL,
  `entityDescription` varchar(255) DEFAULT NULL,
  `gatewayId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `transactionUid` varchar(32) DEFAULT NULL,
  `price` float(9,3) NOT NULL,
  `period` int(10) DEFAULT NULL,
  `quantity` int(10) NOT NULL,
  `totalAmount` float(9,3) NOT NULL DEFAULT '0.000',
  `currency` varchar(3) NOT NULL,
  `recurring` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('init','prepared','verified','delivered','processing','error') NOT NULL DEFAULT 'init',
  `timeStamp` int(10) NOT NULL DEFAULT '0',
  `extraData` text,
  `periodUnits` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entityKey` (`entityKey`),
  KEY `entityId` (`entityId`),
  KEY `userId` (`userId`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_billing_sale`
--

LOCK TABLES `%%TBL-PREFIX%%base_billing_sale` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_billing_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_billing_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_cache`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `expireTimestamp` int(11) NOT NULL,
  `instantLoad` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `key_index` (`key`),
  KEY `expire_index` (`expireTimestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_cache`
--

LOCK TABLES `%%TBL-PREFIX%%base_cache` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_cache_tag`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_cache_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_cache_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) NOT NULL,
  `cacheId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_index` (`tag`),
  KEY `cacheId_index` (`cacheId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_cache_tag`
--

LOCK TABLES `%%TBL-PREFIX%%base_cache_tag` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_cache_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_cache_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_comment`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `commentEntityId` int(11) NOT NULL,
  `message` text NOT NULL,
  `createStamp` int(11) NOT NULL,
  `attachment` text,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `commentEntityId` (`commentEntityId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_comment`
--

LOCK TABLES `%%TBL-PREFIX%%base_comment` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_comment_entity`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_comment_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_comment_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entityType` varchar(255) NOT NULL,
  `entityId` int(11) NOT NULL,
  `pluginKey` varchar(100) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entityType` (`entityType`,`entityId`),
  KEY `pluginKey` (`pluginKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_comment_entity`
--

LOCK TABLES `%%TBL-PREFIX%%base_comment_entity` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_comment_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_comment_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_component`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_component` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `className` varchar(50) NOT NULL,
  `clonable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=839 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_component`
--

LOCK TABLES `%%TBL-PREFIX%%base_component` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_component` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_component` VALUES (70,'BASE_CMP_AboutMeWidget',0),(69,'BASE_CMP_RssWidget',1),(68,'BASE_CMP_UserViewWidget',0),(67,'BASE_CMP_JoinNowWidget',0),(66,'BASE_CMP_ProfileWallWidget',0),(64,'BASE_CMP_IndexWallWidget',0),(61,'BASE_CMP_AddNewContent',0),(62,'BASE_CMP_CustomHtmlWidget',1),(63,'BASE_CMP_UserListWidget',0),(207,'BASE_CMP_MyAvatarWidget',0),(761,'BASE_CMP_QuickLinksWidget',0),(831,'MATCHMAKING_CMP_MatchesWidget',0),(832,'MEMBERSHIP_CMP_MyMembershipWidget',0),(764,'PHOTO_CMP_PhotoListWidget',0),(765,'PHOTO_CMP_UserPhotoAlbumsWidget',0),(835,'USERCREDITS_CMP_MyCreditsWidget',0),(767,'OCSGUESTS_CMP_MyGuestsWidget',0),(834,'MEMBERSHIP_CMP_PromoWidget',0),(827,'HOTLIST_MCMP_Widget',0),(828,'HOTLIST_CMP_IndexWidget',0),(779,'ADS_CMP_SidebarAds',0),(804,'VIRTUALGIFTS_CMP_UserGiftsWidget',0),(805,'BASE_MCMP_CustomHtmlWidget',1),(806,'BASE_MCMP_RssWidget',1),(818,'BASE_MCMP_UserListWidget',0),(833,'MEMBERSHIP_CMP_UserMembershipWidget',0),(826,'BOOKMARKS_MCMP_BookmarksWidget',0),(810,'BASE_CMP_ModerationToolsWidget',0),(811,'BASE_CMP_WelcomeWidget',0),(830,'MATCHMAKING_CMP_CompatibilityWidget',0),(813,'BASE_MCMP_JoinNowWidget',0),(814,'ADMIN_CMP_FinanceStatisticWidget',0),(815,'ADMIN_CMP_UserStatisticWidget',0),(816,'ADMIN_CMP_ContentStatisticWidget',0),(817,'SKADATE_MCMP_PromoImageWidget',0),(819,'PHOTO_MCMP_PhotoListWidget',0),(829,'GOOGLELOCATION_CMP_GroupsWidget',0),(825,'BOOKMARKS_CMP_BookmarksWidget',0),(836,'USERCREDITS_CMP_CreditStatisticWidget',0),(837,'USEARCH_CMP_QuickSearchWidget',0),(838,'USEARCH_MCMP_QuickSearchWidget',0);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_component_entity_place`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_component_entity_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_component_entity_place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `componentId` int(11) NOT NULL,
  `placeId` int(11) NOT NULL,
  `clone` tinyint(4) NOT NULL DEFAULT '0',
  `entityId` int(11) NOT NULL,
  `uniqName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`entityId`,`uniqName`),
  KEY `componentId` (`componentId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='utf8_general_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_component_entity_place`
--

LOCK TABLES `%%TBL-PREFIX%%base_component_entity_place` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_component_entity_place` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_component_entity_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_component_entity_position`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_component_entity_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_component_entity_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `componentPlaceUniqName` varchar(50) NOT NULL,
  `section` enum('top','left','bottom','right') NOT NULL,
  `order` int(11) NOT NULL,
  `entityId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`entityId`,`componentPlaceUniqName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='utf8_general_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_component_entity_position`
--

LOCK TABLES `%%TBL-PREFIX%%base_component_entity_position` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_component_entity_position` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_component_entity_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_component_entity_setting`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_component_entity_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_component_entity_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entityId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  `componentPlaceUniqName` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'string',
  PRIMARY KEY (`id`),
  UNIQUE KEY `componentUniqName` (`entityId`,`componentPlaceUniqName`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='utf8_general_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_component_entity_setting`
--

LOCK TABLES `%%TBL-PREFIX%%base_component_entity_setting` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_component_entity_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_component_entity_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_component_place`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_component_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_component_place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `componentId` int(11) NOT NULL,
  `placeId` int(11) NOT NULL,
  `clone` tinyint(1) unsigned DEFAULT '0',
  `uniqName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniqName` (`uniqName`),
  KEY `componentId` (`componentId`)
) ENGINE=MyISAM AUTO_INCREMENT=100859 DEFAULT CHARSET=utf8 COMMENT='utf8_general_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_component_place`
--

LOCK TABLES `%%TBL-PREFIX%%base_component_place` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_component_place` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_component_place` VALUES (328,69,3,0,'profile-BASE_CMP_RssWidget'),(317,69,2,0,'index-BASE_CMP_RssWidget'),(327,69,1,0,'dashboard-BASE_CMP_RssWidget'),(324,67,2,0,'index-BASE_CMP_JoinNowWidget'),(325,68,3,0,'profile-BASE_CMP_UserViewWidget'),(323,66,3,0,'profile-BASE_CMP_ProfileWallWidget'),(329,70,3,0,'profile-BASE_CMP_AboutMeWidget'),(100850,830,3,0,'profile-MATCHMAKING_CMP_CompatibilityWidget'),(321,64,2,0,'index-BASE_CMP_IndexWallWidget'),(318,62,1,0,'dashboard-BASE_CMP_CustomHtmlWidget'),(319,62,3,0,'profile-BASE_CMP_CustomHtmlWidget'),(320,63,2,0,'index-BASE_CMP_UserListWidget'),(326,62,2,0,'index-BASE_CMP_CustomHtmlWidget'),(316,61,2,0,'index-BASE_CMP_AddNewContent'),(100001,62,2,1,'admin-4b543d8cdc488'),(100829,811,1,0,'dashboard-BASE_CMP_WelcomeWidget'),(100152,207,2,0,'index-BASE_CMP_MyAvatarWidget'),(100775,761,1,0,'dashboard-BASE_CMP_QuickLinksWidget'),(100851,831,1,0,'dashboard-MATCHMAKING_CMP_MatchesWidget'),(100778,764,2,0,'index-PHOTO_CMP_PhotoListWidget'),(100779,765,3,0,'profile-PHOTO_CMP_UserPhotoAlbumsWidget'),(100855,835,1,0,'dashboard-USERCREDITS_CMP_MyCreditsWidget'),(100781,767,1,0,'dashboard-OCSGUESTS_CMP_MyGuestsWidget'),(100854,834,2,0,'index-MEMBERSHIP_CMP_PromoWidget'),(100847,827,6,0,'mobile.dashboard-HOTLIST_MCMP_Widget'),(100795,779,2,0,'index-ADS_CMP_SidebarAds'),(100820,804,3,0,'profile-VIRTUALGIFTS_CMP_UserGiftsWidget'),(100821,805,6,0,'mobile.dashboard-BASE_MCMP_CustomHtmlWidget'),(100822,805,5,0,'mobile.index-BASE_MCMP_CustomHtmlWidget'),(100823,806,6,0,'mobile.dashboard-BASE_MCMP_RssWidget'),(100824,806,5,0,'mobile.index-BASE_MCMP_RssWidget'),(100838,818,5,0,'mobile.index-BASE_MCMP_UserListWidget'),(100853,833,3,0,'profile-MEMBERSHIP_CMP_UserMembershipWidget'),(100846,826,6,0,'mobile.dashboard-BOOKMARKS_MCMP_BookmarksWidget'),(100828,810,1,0,'dashboard-BASE_CMP_ModerationToolsWidget'),(100849,829,4,0,'group-GOOGLELOCATION_CMP_GroupsWidget'),(100831,813,5,0,'mobile.index-BASE_MCMP_JoinNowWidget'),(100832,62,7,0,'admin.dashboard-BASE_CMP_CustomHtmlWidget'),(100833,69,7,0,'admin.dashboard-BASE_CMP_RssWidget'),(100834,814,7,0,'admin.dashboard-ADMIN_CMP_FinanceStatisticWidget'),(100835,815,7,0,'admin.dashboard-ADMIN_CMP_UserStatisticWidget'),(100836,816,7,0,'admin.dashboard-ADMIN_CMP_ContentStatisticWidget'),(100837,817,5,0,'mobile.index-SKADATE_MCMP_PromoImageWidget'),(100839,819,5,0,'mobile.index-PHOTO_MCMP_PhotoListWidget'),(100852,832,1,0,'dashboard-MEMBERSHIP_CMP_MyMembershipWidget'),(100848,828,1,0,'dashboard-HOTLIST_CMP_IndexWidget'),(100845,825,1,0,'dashboard-BOOKMARKS_CMP_BookmarksWidget'),(100856,836,7,0,'admin.dashboard-USERCREDITS_CMP_CreditStatisticWid'),(100857,837,1,0,'dashboard-USEARCH_CMP_QuickSearchWidget'),(100858,838,5,0,'mobile.index-USEARCH_MCMP_QuickSearchWidget');
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_component_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_component_place_cache`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_component_place_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_component_place_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placeId` int(11) NOT NULL,
  `state` longtext NOT NULL,
  `entityId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userId` (`entityId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='utf8_general_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_component_place_cache`
--

LOCK TABLES `%%TBL-PREFIX%%base_component_place_cache` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_component_place_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_component_place_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_component_position`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_component_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_component_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `componentPlaceUniqName` varchar(50) NOT NULL DEFAULT '',
  `section` varchar(100) DEFAULT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `componentPlaceUniqName` (`componentPlaceUniqName`)
) ENGINE=MyISAM AUTO_INCREMENT=11558 DEFAULT CHARSET=utf8 COMMENT='utf8_general_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_component_position`
--

LOCK TABLES `%%TBL-PREFIX%%base_component_position` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_component_position` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_component_position` VALUES (6975,'admin-4c627f1bdc9db','top',0),(6986,'admin-4c62811170310','top',0),(11393,'profile-BASE_CMP_UserViewWidget','right',0),(11540,'index-BASE_CMP_MyAvatarWidget','sidebar',0),(11532,'dashboard-BOOKMARKS_CMP_BookmarksWidget','right',5),(11550,'dashboard-MEMBERSHIP_CMP_MyMembershipWidget','left',0),(11536,'profile-MATCHMAKING_CMP_CompatibilityWidget','left',1),(11551,'dashboard-BASE_CMP_QuickLinksWidget','left',1),(11235,'index-BASE_CMP_UserListWidget','left',0),(11236,'index-PHOTO_CMP_PhotoListWidget','right',0),(11516,'mobile.dashboard-BOOKMARKS_MCMP_BookmarksWidget','mobile.main',0),(11531,'dashboard-OCSGUESTS_CMP_MyGuestsWidget','right',4),(11541,'index-ADS_CMP_SidebarAds','sidebar',1),(11537,'profile-PHOTO_CMP_UserPhotoAlbumsWidget','left',2),(11538,'profile-VIRTUALGIFTS_CMP_UserGiftsWidget','left',3),(11539,'profile-MEMBERSHIP_CMP_UserMembershipWidget','left',4),(11554,'mobile.index-SKADATE_MCMP_PromoImageWidget','mobile.main',0),(11529,'dashboard-BASE_CMP_ModerationToolsWidget','right',2),(11530,'dashboard-BASE_CMP_WelcomeWidget','right',3),(11546,'admin.dashboard-ADMIN_CMP_FinanceStatisticWidget','top',0),(11547,'admin.dashboard-ADMIN_CMP_UserStatisticWidget','top',1),(11517,'mobile.dashboard-HOTLIST_MCMP_Widget','mobile.main',1),(11528,'dashboard-MATCHMAKING_CMP_MatchesWidget','right',1),(11555,'mobile.index-BASE_MCMP_JoinNowWidget','mobile.main',1),(11556,'mobile.index-PHOTO_MCMP_PhotoListWidget','mobile.main',2),(11527,'dashboard-HOTLIST_CMP_IndexWidget','right',0),(11552,'dashboard-USERCREDITS_CMP_MyCreditsWidget','left',2),(11542,'index-MEMBERSHIP_CMP_PromoWidget','sidebar',2),(11548,'admin.dashboard-ADMIN_CMP_ContentStatisticWidget','top',2),(11549,'admin.dashboard-USERCREDITS_CMP_CreditStatisticWid','top',3),(11553,'dashboard-USEARCH_CMP_QuickSearchWidget','left',3),(11557,'mobile.index-USEARCH_MCMP_QuickSearchWidget','mobile.main',3);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_component_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_component_setting`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_component_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_component_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `componentPlaceUniqName` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'string',
  PRIMARY KEY (`id`),
  UNIQUE KEY `componentPlaceUniqName` (`componentPlaceUniqName`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=1484 DEFAULT CHARSET=utf8 COMMENT='utf8_general_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_component_setting`
--

LOCK TABLES `%%TBL-PREFIX%%base_component_setting` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_component_setting` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_component_setting` VALUES (775,'admin-4b543d8cdc488','content','Welcome to our new site! Feel free to participate in our community!','string'),(776,'admin-4b543d8cdc488','nl_to_br','0','string'),(777,'admin-4b543d8cdc488','title','Welcome','string'),(778,'admin-4b543d8cdc488','show_title','0','string'),(779,'admin-4b543d8cdc488','icon','ow_ic_warning','string'),(780,'admin-4b543d8cdc488','wrap_in_box','1','string'),(1366,'admin-4b543d8cdc488','freeze','0','string'),(1434,'dashboard-OCSGUESTS_CMP_MyGuestsWidget','wrap_in_box','0','string'),(1369,'index-BASE_CMP_JoinNowWidget','freeze','0','string'),(1370,'index-BASE_CMP_UserListWidget','count','18','string'),(1371,'index-BASE_CMP_UserListWidget','show_title','1','string'),(1372,'index-BASE_CMP_UserListWidget','icon','ow_ic_user','string'),(1373,'index-BASE_CMP_UserListWidget','wrap_in_box','1','string'),(1374,'index-BASE_CMP_UserListWidget','restrict_view','0','string'),(1375,'index-BASE_CMP_UserListWidget','access_restrictions','[\"1\",\"12\"]','json'),(1376,'index-PHOTO_CMP_PhotoListWidget','photoCount','12','string'),(1377,'index-PHOTO_CMP_PhotoListWidget','show_title','1','string'),(1378,'index-PHOTO_CMP_PhotoListWidget','icon','ow_ic_picture','string'),(1379,'index-PHOTO_CMP_PhotoListWidget','wrap_in_box','1','string'),(1380,'index-PHOTO_CMP_PhotoListWidget','restrict_view','0','string'),(1381,'index-PHOTO_CMP_PhotoListWidget','access_restrictions','[\"1\",\"12\"]','json'),(1432,'dashboard-OCSGUESTS_CMP_MyGuestsWidget','show_title','1','string'),(1433,'dashboard-OCSGUESTS_CMP_MyGuestsWidget','icon','ow_ic_lens','string'),(1430,'index-BASE_CMP_AddNewContent','freeze','0','string'),(1387,'profile-PHOTO_CMP_UserPhotoAlbumsWidget','freeze','0','string'),(1388,'profile-BASE_CMP_AboutMeWidget','freeze','0','string'),(1390,'profile-PHOTO_CMP_UserPhotoAlbumsWidget','albumsCount','4','string'),(1391,'profile-PHOTO_CMP_UserPhotoAlbumsWidget','showTitles','0','string'),(1392,'profile-PHOTO_CMP_UserPhotoAlbumsWidget','show_title','1','string'),(1393,'profile-PHOTO_CMP_UserPhotoAlbumsWidget','icon','ow_ic_picture','string'),(1394,'profile-PHOTO_CMP_UserPhotoAlbumsWidget','wrap_in_box','0','string'),(1395,'profile-PHOTO_CMP_UserPhotoAlbumsWidget','restrict_view','0','string'),(1396,'profile-PHOTO_CMP_UserPhotoAlbumsWidget','access_restrictions','[\"1\",\"12\",\"34\"]','json'),(1397,'profile-BASE_CMP_UserViewWidget','show_title','0','string'),(1398,'profile-BASE_CMP_UserViewWidget','icon','ow_ic_add','string'),(1399,'profile-BASE_CMP_UserViewWidget','wrap_in_box','0','string'),(1400,'profile-BASE_CMP_UserViewWidget','freeze','0','string'),(1401,'profile-BASE_CMP_UserViewWidget','restrict_view','0','string'),(1402,'profile-BASE_CMP_UserViewWidget','access_restrictions','[\"1\",\"12\",\"34\",\"28\",\"30\"]','json'),(1418,'dashboard-BASE_CMP_QuickLinksWidget','freeze','0','string'),(1435,'dashboard-OCSGUESTS_CMP_MyGuestsWidget','freeze','0','string'),(1436,'dashboard-OCSGUESTS_CMP_MyGuestsWidget','restrict_view','0','string'),(1437,'dashboard-OCSGUESTS_CMP_MyGuestsWidget','access_restrictions','[\"12\",\"34\"]','json'),(1431,'dashboard-OCSGUESTS_CMP_MyGuestsWidget','count','8','string'),(1482,'dashboard-MEMBERSHIP_CMP_MyMembershipWidget','freeze','1','string'),(1483,'profile-MEMBERSHIP_CMP_UserMembershipWidget','freeze','1','string');
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_component_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_config`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text,
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=878 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_config`
--

LOCK TABLES `%%TBL-PREFIX%%base_config` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_config` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_config` VALUES (8,'photo','accepted_filesize','32','Maximum accepted file size'),(9,'photo','main_image_width','960','Main image width'),(10,'photo','main_image_height','640','Main image height'),(11,'photo','preview_image_width','140','Preview image width'),(12,'photo','preview_image_height','140','Preview image height'),(13,'photo','photos_per_page','20','Photos per page'),(14,'photo','album_quota','400','Maximum number of photos per album'),(15,'photo','user_quota','5000','Maximum number of photos per user'),(16,'base','avatar_big_size','190','User avatar width'),(17,'base','avatar_size','90','User avatar height'),(18,'admin','admin_menu_state','[]',NULL),(19,'base','selectedTheme','turquoise','Selected theme.'),(20,'base','military_time','0','Desc'),(21,'base','site_name','Skadate','Site name'),(22,'base','confirm_email','1','Confirm email'),(23,'base','user_view_presentation','table','User view presentation'),(24,'base','site_tagline','Skadate','Site tagline'),(25,'base','site_description','More dates than on any other dating site!','Site Description'),(26,'base','site_timezone','America/New_York','Site Timezone'),(27,'base','site_use_relative_time','1','Use relative date/time'),(31,'base','display_name_question','realname','Question used for display name'),(32,'base','site_email','demo@skadate.com','Email address from which your users will receive notifications and mass mailing.'),(34,'base','google_analytics',NULL,NULL),(46,'base','mail_smtp_enabled','0','Smtp enabled'),(45,'base','date_field_format','mdy','Date format'),(47,'base','mail_smtp_host','smtp.test.net','Smtp Host'),(48,'base','mail_smtp_user','smtp@test.net','Smtp User'),(49,'base','mail_smtp_password','','Smtp passwprd'),(50,'base','mail_smtp_port','465','Smtp Port'),(51,'base','mail_smtp_connection_prefix','ssl','Smpt connection prefix (tsl, ssl)'),(56,'base','splash_screen','0',NULL),(57,'base','who_can_join','1',NULL),(58,'base','who_can_invite','1',NULL),(59,'base','guests_can_view','1',NULL),(61,'base','guests_can_view_password','',NULL),(62,'base','splash_leave_url','http://www.google.com/',NULL),(70,'base','maintenance','0',NULL),(69,'base','mandatory_user_approve','0','mandatory_user_approve'),(72,'photo','store_fullsize','1','Store full-size photos'),(74,'base','billing_currency','USD','Site currency 3-char code'),(862,'googlelocation','country_restriction','',NULL),(79,'base','tf_max_pic_size','5',NULL),(80,'base','soft_build','10600','Current soft version'),(81,'base','update_soft','0','Soft core update flag'),(85,'base','unverify_site_email','','Email address from which your users will receive notifications and mass mailing.'),(88,'photo','uninstall_inprogress','0','Plugin is being uninstalled'),(89,'photo','uninstall_cron_busy','0','Uninstall queue is busy'),(115,'base','soft_version','1.8.3',NULL),(139,'base','site_installed','0',NULL),(140,'base','check_mupdates_ts','0','Last manual updates check timestamp.'),(93,'photo','maintenance_mode_state','0','Stores site maintenance mode config before plugin uninstallation'),(789,'membership','subscribe_hidden_actions','[14,11]','Actions hidden on subscribe page'),(813,'virtualgifts','uninstall_inprogress','0','Plugin is being uninstalled'),(814,'virtualgifts','uninstall_cron_busy','0','Uninstall queue is busy'),(179,'admin','mass_mailing_timestamp','0',NULL),(200,'base','dev_mode','1',NULL),(241,'base','default_avatar','[]','Default avatar'),(249,'base','language_switch_allowed','1','Allow users switch languages on site'),(790,'usercredits','is_once_initialized','1',NULL),(276,'base','rss_loading','0',NULL),(277,'base','cron_is_active','1','Flag showing if cron script is activated after soft install'),(806,'virtualgifts','is_once_initialized','1',NULL),(416,'photo','advanced_upload_enabled','1','Enable advanced photo upload'),(348,'base','users_count_on_page','30','Users count on page'),(521,'base','cachedEntitiesPostfix','5720b35c91055',NULL),(367,'base','join_display_photo_upload','display_and_required','Display \'Photo Upload\' field on Join page.'),(368,'base','join_photo_upload_set_required','1','Make \'Photo Upload\' a required field on Join Page.'),(369,'base','join_display_terms_of_use','1','Display \'Terms of use\' field on Join page.'),(448,'base','favicon','1',NULL),(404,'base','html_head_code','','Code (meta, css, js) added from admin panel into head section of HTML document.'),(405,'base','html_prebody_code','','Code (js) added before \'body\' closing tag.'),(432,'photo','fullsize_resolution','1024','Full-size photo resolution'),(470,'mailbox','enable_attachments','1','Enable file attachments'),(469,'mailbox','results_per_page','10','Conversations number per page'),(444,'base','tf_user_custom_html_disable','1',NULL),(445,'base','tf_user_rich_media_disable','1',NULL),(446,'base','tf_comments_rich_media_disable','1',NULL),(447,'base','tf_resource_list','[\"clipfish.de\",\"youtube.com\",\"google.com\",\"metacafe.com\",\"myspace.com\",\"novamov.com\",\"myvideo.de\"]',NULL),(746,'base','cron_is_configured','0',NULL),(741,'base','master_page_theme_info','{\"5\":[],\"4\":{\"logoImage\":{\"src\":\"http:\\/\\/hgow2\\/ow_userfiles\\/themes\\/theme_image_44.jpg\",\"width\":1024,\"height\":768},\"inputBg\":{\"src\":\"http:\\/\\/hgow2\\/ow_userfiles\\/themes\\/theme_image_45.jpg\",\"width\":800,\"height\":600}},\"3\":[]}',NULL),(754,'base','user_invites_limit','50',NULL),(768,'ocsguests','store_period','1','Guests visit period, months'),(781,'base','install_complete','0','Site is fully installed'),(807,'matchmaking','send_new_matches_interval','7','Send new matches to users by email'),(808,'matchmaking','last_matches_sent_timestamp','1462423163','Timestamp of the last matchmaking mass mailing'),(788,'googlelocation','api_key','','API key'),(812,'hotlist','expiration_time','2592000',NULL),(810,'matchmaking','cron_busy','0','Mass mailing queue is busy'),(811,'matchmaking','cron_mailing_user_first','1','Already mailed users count'),(815,'virtualgifts','maintenance_mode_state','0','Stores site maintenance mode config before plugin uninstallation'),(820,'base','users_on_page','12',NULL),(819,'base','profile_question_edit_stamp','1462260341',NULL),(821,'skadate','license_info','{\"status\":\"Active\",\"registeredname\":\"Margareth Aks\",\"email\":\"marayvi@gmail.com\",\"serviceid\":\"7843\",\"productid\":\"1\",\"productname\":\"SkaDate License\",\"regdate\":\"2016-05-03\",\"nextduedate\":\"0000-00-00\",\"billingcycle\":\"One Time\",\"validdomain\":\"10.0.0.101,www.10.0.0.101\",\"validip\":\"92.245.109.122\",\"validdirectory\":\"\\/home\\/jk\\/public_html\\/skadate_default_db\\/\",\"md5hash\":\"b037f164078f7c7dfd8bb8d27a34cf13\",\"brandingRemoval\":false,\"remotecheck\":true,\"result\":true,\"licenseValid\":true}',NULL),(822,'skadate','brand_removal','0',NULL),(823,'skadate','license_key','',NULL),(824,'skadate','license_key_valid','0',NULL),(825,'base','admin_cookie','inUb45aZAHydit3REJItOxoHIrYs4gew',NULL),(826,'base','disable_mobile_context','0',NULL),(827,'base','log_file_max_size_mb','20',NULL),(828,'base','attch_file_max_size_mb','2',NULL),(829,'base','attch_ext_list','[\"txt\",\"doc\",\"docx\",\"sql\",\"csv\",\"xls\",\"ppt\",\"pdf\",\"jpg\",\"jpeg\",\"png\",\"gif\",\"bmp\",\"psd\",\"ai\",\"avi\",\"wmv\",\"mp3\",\"3gp\",\"flv\",\"mkv\",\"mpeg\",\"mpg\",\"swf\",\"zip\",\"gz\",\"tgz\",\"gzip\",\"7z\",\"bzip2\",\"rar\"]',NULL),(830,'photo','photo_list_view_classic','0',NULL),(831,'photo','album_list_view_classic','0',NULL),(832,'photo','photo_view_classic','0',NULL),(833,'photo','download_accept','1',NULL),(834,'googlelocation','distance_units','miles','Distance Units'),(835,'googlelocation','auto_fill_location_on_search','0','Auto fill location on search'),(836,'usearch','quick_search_fields','',NULL),(837,'mailbox','active_modes','[\"mail\",\"chat\"]',NULL),(838,'mailbox','show_all_members','0',NULL),(841,'bookmarks','notify_interval','10',NULL),(842,'bookmarks','widget_user_count','9',NULL),(843,'ganalytics','web_property_id',NULL,NULL),(844,'skadate','photo_filter_setting_matching','0',NULL),(845,'membership','notify_period','3','Remind users by email that membership expires in days'),(846,'photo','update_tag_process','0',NULL),(847,'usearch','order_latest_activity','1',NULL),(848,'usearch','order_recently_joined','1',NULL),(849,'usearch','order_match_compatibitity','0',NULL),(850,'usearch','order_distance','0',NULL),(851,'usearch','hide_user_activity_after','400',NULL),(852,'mailbox','last_attachment_id','0',''),(853,'mailbox','plugin_update_timestamp','1409048272',''),(861,'moderation','content_types','{\"user_join\":false}',NULL),(858,'base','avatar_max_upload_size','1','Enable file attachments'),(859,'mailbox','send_message_interval','60',NULL),(860,'matchmaking','cron_busy_timestamp','1463380810',''),(863,'base','site_statistics_disallowed_entity_types','user-status,avatar-change',NULL),(864,'skadate','promo_image_uploaded','1',NULL),(865,'usercredits','allow_grant_credits','1',NULL),(866,'usearch','users_limit','10000',NULL),(867,'matchmaking','users_limit','10000',NULL),(868,'base','enable_captcha','true','is captcha enabled on join form?'),(869,'googlelocation','map_provider','google','Map Provider'),(870,'googlelocation','bing_api_key','','bing maps api key'),(871,'usearch','enable_username_search','',NULL),(877,'fbconnect','api_secret','','Facebook Application Secret'),(875,'fbconnect','api_key','','Facebook Api Key'),(876,'fbconnect','app_id','','Facebook Application ID');
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_cron_job`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_cron_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_cron_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `methodName` varchar(200) NOT NULL DEFAULT '',
  `runStamp` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `className` (`methodName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_cron_job`
--

LOCK TABLES `%%TBL-PREFIX%%base_cron_job` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_cron_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_cron_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_db_cache`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_db_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_db_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expireStamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='utf8_general_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_db_cache`
--

LOCK TABLES `%%TBL-PREFIX%%base_db_cache` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_db_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_db_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_document`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `isStatic` tinyint(1) NOT NULL DEFAULT '0',
  `isMobile` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`),
  KEY `uriIndex` (`uri`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_document`
--

LOCK TABLES `%%TBL-PREFIX%%base_document` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_document` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_document` VALUES (3,'admin_pages','ADMIN_Pages','index',NULL,0,0),(23,'page-679283',NULL,NULL,'join',1,0),(39,'page-119658',NULL,NULL,'terms-of-use',1,0),(55,'page_99448870',NULL,NULL,'privacy',1,0),(56,'mobile_terms_of_use',NULL,NULL,'terms-of-use',1,1);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_email_verify`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_email_verify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_email_verify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(10) NOT NULL DEFAULT '0',
  `type` enum('user','site') NOT NULL,
  `email` varchar(128) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `createStamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`userId`),
  UNIQUE KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_email_verify`
--

LOCK TABLES `%%TBL-PREFIX%%base_email_verify` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_email_verify` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_email_verify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_entity_tag`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_entity_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_entity_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entityId` int(10) unsigned NOT NULL,
  `entityType` varchar(255) NOT NULL,
  `tagId` int(10) unsigned NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `entityId` (`entityId`),
  KEY `entityType` (`entityType`),
  KEY `tagId` (`tagId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_entity_tag`
--

LOCK TABLES `%%TBL-PREFIX%%base_entity_tag` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_entity_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_entity_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_file`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `addDatetime` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_file`
--

LOCK TABLES `%%TBL-PREFIX%%base_file` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_flag`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_flag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_flag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entityType` varchar(100) NOT NULL,
  `entityId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `timeStamp` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entityType` (`entityType`,`entityId`,`userId`),
  KEY `timeStamp` (`timeStamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_flag`
--

LOCK TABLES `%%TBL-PREFIX%%base_flag` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_flag` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_flag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_geolocation_ip_to_country`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_geolocation_ip_to_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_geolocation_ip_to_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cc2` char(2) NOT NULL,
  `cc3` char(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_geolocation_ip_to_country`
--

LOCK TABLES `%%TBL-PREFIX%%base_geolocation_ip_to_country` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_geolocation_ip_to_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_geolocation_ip_to_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_geolocationdata_ipv4`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_geolocationdata_ipv4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_geolocationdata_ipv4` (
  `ipFrom` varchar(200) NOT NULL,
  `IpTo` varchar(200) DEFAULT NULL,
  `cc2` varchar(200) NOT NULL,
  `cc3` varchar(200) DEFAULT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_geolocationdata_ipv4`
--

LOCK TABLES `%%TBL-PREFIX%%base_geolocationdata_ipv4` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_geolocationdata_ipv4` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_geolocationdata_ipv4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_invitation`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_invitation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entityType` varchar(255) NOT NULL,
  `entityId` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `pluginKey` varchar(255) NOT NULL,
  `timeStamp` int(11) NOT NULL,
  `viewed` int(11) NOT NULL,
  `sent` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `data` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entityType` (`entityType`,`entityId`,`userId`),
  KEY `timeStamp` (`timeStamp`),
  KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_invitation`
--

LOCK TABLES `%%TBL-PREFIX%%base_invitation` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_invitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_invite_code`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_invite_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_invite_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `expiration_stamp` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_invite_code`
--

LOCK TABLES `%%TBL-PREFIX%%base_invite_code` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_invite_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_invite_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_language`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(32) NOT NULL,
  `label` varchar(32) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `status` enum('active','inactive') DEFAULT 'inactive',
  `rtl` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_language`
--

LOCK TABLES `%%TBL-PREFIX%%base_language` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_language` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_language` VALUES (1,'en','English',1,'active',0),(32,'ru-Ru','Russian',2,'inactive',0);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_language_key`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_language_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_language_key` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prefixId` int(11) NOT NULL DEFAULT '0',
  `key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `prefix_key` (`prefixId`,`key`)
) ENGINE=MyISAM AUTO_INCREMENT=19941 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_language_key`
--

LOCK TABLES `%%TBL-PREFIX%%base_language_key` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_language_key` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_language_key` VALUES (10883,191,'mb'),(10880,191,'mark_read_message'),(10879,191,'mark_read_fail_message'),(10878,191,'mark_conversation_unread_message'),(10877,191,'mark_conversation_read_message'),(10876,191,'mark_as_unread_button'),(10875,191,'mark_as_read_button'),(10874,191,'mailbox'),(5837,7,'forgot_password_heading'),(10888,191,'notification_mail_template_text'),(10887,191,'notification_mail_template_html'),(10886,191,'notification_mail_subject'),(10885,191,'new_message_count_text'),(15355,272,'admin_menu_subscribe'),(15354,272,'admin_menu_memberships'),(1603,1,'you_are_editing'),(1604,1,'check_other_langs'),(1605,1,'add_new_text'),(1606,1,'go'),(1607,1,'search_results_for_keyword'),(1608,1,'search'),(1609,1,'original_value'),(1610,1,'translation'),(1611,1,'delete'),(1612,1,'custom_keys'),(1613,1,'save_this_page'),(1614,1,'section'),(1615,1,'all_sections'),(1616,1,'missing_text'),(1617,1,'page_note_part_1'),(1618,1,'page_note_part_2'),(1619,1,'msg_one_active_constraint'),(1620,1,'empty'),(1621,1,'missing_keys2'),(1622,1,'active_languages'),(1623,1,'language'),(1624,1,'btn_label_edit'),(1625,1,'btn_label_clone'),(1626,1,'btn_label_deactivate'),(1627,1,'btn_label_activate'),(1628,1,'btn_label_delete'),(3793,12,'view_user_albums'),(9030,7,'authorization_action_newsfeed_add_comment'),(1682,1,'import_lang_note'),(1683,1,'add_new_lang_or_pack'),(1684,1,'select_items_to_import_note'),(1685,1,'lang_import_check_all'),(1686,1,'import_lang_button_label'),(1687,1,'export_lang_header'),(1688,1,'export_lang_note'),(1689,1,'export_lang_button_label'),(1690,1,'export_lang_note2'),(1691,1,'export_lang_button_label2'),(1692,1,'show'),(1693,1,'edit_language'),(1694,1,'available_languages'),(1695,1,'add_key_form_lbl_key'),(1696,1,'add_key_form_lbl_val'),(1697,1,'add_key_form_lbl_add'),(1698,1,'lang_file'),(1699,1,'inactive_languages'),(1700,1,'clone_language'),(1701,1,'clone_form_lbl_label'),(1702,1,'title_add_new_text'),(1703,1,'clone_form_descr_label'),(1704,1,'are_you_sure'),(1705,1,'clone_form_lbl_tag'),(1706,1,'clone_form_descr_tag'),(1708,1,'clone_form_lbl_submit'),(1709,1,'search_no_results_for_keyword'),(1710,1,'no_values'),(1711,7,'forgot_password_submit_label'),(1712,1,'def'),(1713,1,'msg_dublicate_key'),(9029,7,'authorization_group_newsfeed'),(1741,7,'month_2'),(1742,7,'month_8'),(1743,7,'month_9'),(1745,7,'all'),(1746,7,'archive'),(1747,7,'are_you_sure'),(1752,7,'comments_label'),(1754,7,'by'),(1755,7,'more'),(5833,7,'forgot_password_no_user_error_message'),(1768,7,'flag'),(1769,7,'edit'),(1770,7,'delete'),(1773,7,'approve'),(1774,7,'disapprove'),(2838,12,'cmp_widget_photo_albums_show_titles'),(1810,12,'page_title_browse_photos'),(1811,12,'menu_featured'),(1812,12,'menu_latest'),(1813,12,'menu_toprated'),(1814,12,'menu_tagged'),(1815,12,'admin_menu_general'),(1816,12,'upload_settings'),(1817,12,'view_settings'),(1818,12,'quotas'),(4064,12,'size_limit'),(1820,12,'accepted_filesize_desc'),(1821,12,'main_size_desc'),(1822,12,'preview_size_desc'),(1823,12,'per_page_desc'),(1824,12,'album_quota_desc'),(1825,12,'user_quota_desc'),(4065,12,'photo_upload_error'),(1827,12,'accepted_filesize'),(1828,12,'main_size'),(1829,12,'preview_size'),(1830,12,'per_page'),(1831,12,'album_quota'),(1832,12,'user_quota'),(1833,12,'btn_edit'),(1834,12,'settings_updated'),(1835,12,'album'),(1836,12,'photo'),(1837,12,'auth_view_permissions'),(1838,12,'mark_featured'),(1839,12,'remove_from_featured'),(1840,12,'page_title_user_albums'),(1841,12,'albums_by'),(1842,12,'no_photo_found'),(1843,12,'tag_search'),(1844,12,'tag_search_result'),(1845,12,'no_album_found'),(1846,12,'photos_in_album'),(1847,12,'album_by'),(1848,12,'album_updated'),(1849,12,'comments_count'),(1850,12,'photo_added'),(1851,12,'previous'),(1852,12,'next'),(1853,12,'photo_index'),(1854,12,'of'),(1855,7,'avatar_avatar_is'),(1856,7,'avatar_current'),(1857,7,'avatar_new'),(1858,7,'avatar_crop'),(1859,7,'avatar_crop_instructions'),(1860,7,'avatar_picture'),(1861,7,'avatar_apply_crop'),(16371,1,'error_empty_host_provided'),(1863,7,'avatar_preview'),(1864,12,'upload'),(1865,12,'pic_number'),(1866,12,'description'),(1867,12,'tags'),(1868,12,'tags_desc'),(1869,12,'description_desc'),(1870,12,'btn_upload'),(1872,12,'quota_exceeded'),(1873,12,'photos_uploaded'),(1885,12,'upload_photos'),(1886,1,'permissions_roles'),(1887,1,'sidebar_menu_item_settings_language'),(19530,1,'widgets_admin_profile_heading'),(1890,1,'themes_choose_activate_button_label'),(1891,1,'theme_settings_form_submit_label'),(2583,1,'permissions_edit_role'),(1893,1,'theme_settings_no_controls_label'),(1894,7,'not_valid_image'),(1895,7,'questions_question_user_photo_label'),(1896,7,'join_error_photo_file_is_not_valid'),(1897,1,'sidebar_menu_item_theme_choose'),(1898,7,'join_error_password_too_long'),(1899,7,'join_error_password_too_short'),(1900,7,'join_error_password_not_valid'),(1901,7,'join_error_email_already_exist'),(1902,7,'join_error_email_not_valid'),(1903,7,'join_error_username_not_valid'),(1904,1,'themes_choose_list_cap_title'),(1906,7,'join_error_username_already_exist'),(1915,12,'status_changed'),(1916,12,'confirm_delete'),(1918,1,'delete_btn_label'),(1919,7,'date_time_today'),(1920,1,'save_btn_label'),(1921,1,'updated_msg'),(1922,1,'page_default_title'),(1923,1,'page_default_heading'),(1926,11,'page_custom_title'),(1927,7,'main_menu_my_profile'),(1928,7,'main_menu_index'),(1929,12,'photo_updated'),(1930,11,'page_default_title'),(1931,11,'page_default_heading'),(1932,11,'page_default_description'),(1933,11,'page_default_keywords'),(1935,1,'sidebar_menu_settings'),(19531,1,'page_title_manage_plugins'),(1937,1,'sidebar_menu_appearance'),(1938,1,'sidebar_menu_users'),(1939,1,'sidebar_menu_plugins'),(1940,7,'sign_in_submit_label'),(1942,1,'sidebar_menu_item_theme_edit'),(1943,1,'theme_css_edit_css_box_cap_label'),(1944,1,'theme_css_edit_submit_label'),(1945,12,'upload_ini_value'),(1948,7,'tag_cloud_cap_label'),(1949,1,'permissions_moderators'),(1950,1,'permissions_index'),(1951,11,'menu_item_main_photo_list'),(1952,11,'menu_item_main_forum'),(1953,1,'theme_css_existing_css_box_cap_label'),(1954,1,'theme_graphics_delete_success_message'),(1955,1,'theme_graphics_upload_form_fail_message'),(1956,1,'theme_graphics_upload_form_success_message'),(1957,1,'theme_graphics_upload_form_submit_label'),(1958,1,'theme_graphics_table_delete'),(1959,1,'theme_graphics_table_url'),(1960,1,'theme_graphics_table_preview'),(1961,1,'theme_graphics_list_cap_label'),(1962,1,'theme_graphics_upload_label'),(1963,7,'questions_question_account_type_label'),(2170,1,'site_tagline'),(1965,1,'theme_settings_cap_label'),(1966,1,'theme_info_author_url_label'),(1967,1,'theme_info_author_label'),(1968,7,'pages_label'),(1970,1,'main_menu_admin'),(1971,7,'date_time_within_one_minute'),(1972,7,'date_time_one_minute_ago'),(1973,7,'date_time_minutes_ago'),(1974,7,'users_main_menu_item'),(1975,12,'tb_edit_photo'),(1976,1,'theme_info_compatibility_label'),(1977,7,'cmp_add_new_content_box_cap_label'),(1978,1,'theme_info_version_label'),(2601,1,'permissions_default_role'),(2556,7,'email_verify_template_html'),(2476,1,'questions_question_description_label'),(3807,1,'sidebar_menu_privacy'),(1992,7,'comment_add_submit_label'),(1993,7,'comment_box_cap_label'),(1994,7,'avatar_btn_upload'),(1995,7,'avatar_upload_types'),(2643,7,'questions_question_realname_description'),(1998,7,'avatar_change_avatar'),(1999,7,'questions_no_section_label'),(2000,7,'questions_add_new_account_type'),(2008,7,'join_submit_button_continue'),(2009,7,'join_submit_button_join'),(16013,268,'menu_item_search'),(15401,7,'questions_section_about_my_match_label'),(15826,7,'questions_question_23036b67a077fe7784c7cf4691a96fe3_label'),(15863,271,'googlemap_location_search_invitation'),(2013,1,'sidebar_menu_item_plugin_photo'),(2014,1,'sidebar_menu_item_plugin_video'),(2015,7,'comment_add_post_error'),(2016,7,'comment_add_auth_error'),(2017,7,'comment_no_comments'),(2018,7,'comment_delete_label'),(2019,7,'date_time_one_hour_ago'),(2020,7,'date_time_hours_ago'),(2021,7,'date_time_yesterday'),(2022,7,'date_time_at_label'),(2023,12,'admin_config'),(2025,7,'date_time_month_short_9'),(2026,7,'date_time_month_short_1'),(2027,7,'date_time_month_short_2'),(2028,7,'date_time_month_short_3'),(2029,7,'date_time_month_short_4'),(2030,7,'date_time_month_short_5'),(2031,7,'date_time_month_short_6'),(2032,7,'date_time_month_short_7'),(2033,7,'date_time_month_short_8'),(2034,7,'date_time_month_short_10'),(2035,7,'date_time_month_short_11'),(2036,7,'date_time_month_short_12'),(2037,1,'sidebar_menu_item_graphics'),(2038,1,'sidebar_menu_item_css'),(2039,1,'sidebar_menu_item_settings'),(2040,12,'photo_album_updated'),(2041,7,'questions_question_repeat_password_label'),(2042,7,'questions_question_password_label'),(2043,7,'questions_question_email_label'),(2044,1,'sidebar_menu_item_questions'),(2045,12,'edit_album'),(2046,12,'delete_album'),(2047,7,'questions_question_username_label'),(2048,12,'confirm_delete_album'),(2397,7,'questions_account_type_ef5e279523aed72d87fd8a1fd59d592f'),(2427,7,'questions_section_f90cde5913235d172603cc4e7b9726e3_label'),(2051,1,'sidebar_menu_item_permissions'),(2058,7,'widgets_customize_btn'),(2059,7,'avatar_change'),(2060,7,'avatar_console_edit_profile'),(2061,7,'base_document_404_heading'),(2062,7,'base_document_404'),(2065,7,'view_all'),(2064,12,'total_albums'),(2066,7,'month_12'),(2070,7,'user_list_menu_item_latest'),(2071,7,'user_list_menu_item_featured'),(2072,7,'widgets_finish_customize_btn'),(2073,7,'widgets_reset_customization'),(2074,7,'custom_html_widget_default_title'),(2075,1,'sidebar_menu_admin'),(2076,7,'widgets_section_box_title'),(2077,1,'sidebar_menu_dashboard'),(2078,1,'sidebar_menu_item_user_dashboard'),(2079,1,'sidebar_menu_item_user_profile'),(2080,7,'join_index_join_button'),(2081,1,'sidebar_menu_plugins_manage'),(2082,7,'authorization_role_guest'),(2611,7,'massmailing_unsubscribe_successful'),(2085,7,'widgets_action_edit'),(2086,7,'widgets_action_delete'),(2088,7,'custom_html_widget_content_label'),(2089,12,'photo_list_widget'),(10890,191,'permission_denied'),(2093,7,'custom_html_widget_nl2br_label'),(10889,191,'no_conversations'),(2096,7,'authorization_group_video'),(2097,7,'authorization_action_video_add'),(2098,7,'authorization_action_video_view'),(2099,7,'authorization_group_photo'),(2100,7,'authorization_action_photo_view'),(2101,7,'authorization_action_photo_upload'),(2102,7,'authorization_action_photo_add_comment'),(2103,7,'authorization_action_photo_delete_comment_by_content_owner'),(2104,7,'authorization_group_base'),(2105,7,'authorization_action_base_add_comment'),(2106,7,'authorization_action_base_delete_comment_by_content_owner'),(2107,1,'back_to_site_label'),(2108,7,'widgets_fb_default_settings_label'),(2109,7,'widgets_default_settings_title'),(2110,7,'widgets_default_settings_show_title'),(2111,7,'widgets_default_settings_icon'),(2112,7,'widgets_default_settings_wib'),(2113,7,'widgets_default_settings_freeze'),(2114,7,'widgets_admin_section_information'),(2115,7,'widgets_admin_legend'),(2116,7,'widgets_allow_customize_legend'),(2117,7,'widgets_delete_component_confirm'),(2118,7,'widgets_allow_customize_label'),(2119,12,'cmp_widget_photo_count'),(2122,7,'widgets_fb_setting_box_title'),(2130,1,'main_menu_item'),(2125,7,'cmp_widget_wall_comments_count'),(2126,7,'cmp_widget_wall_comments_mode'),(2127,7,'cmp_widget_wall_comments_mode_option_2'),(2128,7,'cmp_widget_wall_comments_mode_option_1'),(2131,7,'user_list_widget_empty'),(2132,7,'user_list_menu_item_online'),(2134,7,'widgets_customize_label'),(2135,7,'questions_question_birthdate_label'),(2997,7,'base_join_menu_item'),(2140,12,'my_albums'),(19526,1,'pages_page_heading'),(2142,1,'sidebar_menu_item_users'),(2143,1,'sidebar_menu_item_main_settings'),(2144,7,'view_index'),(2145,7,'rss_widget_default_title'),(2146,7,'rss_widget_count_label'),(2147,7,'rss_widget_url_label'),(2148,7,'rss_widget_url_invalid_msg'),(2555,7,'email_verify_send_verify_mail_button_label'),(2257,1,'questions_delete_question_confirmation'),(2155,7,'join_promo'),(2536,1,'questions_add_new_account_type'),(2523,1,'questions_add_values_description'),(19525,1,'themes_settings_page_title'),(2162,1,'menu_item_basics'),(9873,1,'heading_user_settings'),(2164,7,'questions_question_accountType_description'),(2165,7,'questions_question_username_description'),(2166,7,'questions_question_email_description'),(2167,7,'join_index'),(2168,1,'site_installation'),(2169,1,'site_title'),(2171,1,'site_tagline_desc'),(2172,1,'site_description'),(2173,1,'site_description_desc'),(2174,1,'time_settings'),(2175,1,'timezone'),(2176,1,'use_relative_time'),(2177,1,'site_relative_time_desc'),(2178,7,'questions_question_sex_label'),(2179,7,'questions_question_sex_description'),(2180,7,'questions_question_sex_value_1'),(2181,7,'questions_question_sex_value_2'),(2182,7,'questions_question_accountType_label'),(2183,7,'questions_checkbox_value_true'),(2184,7,'questions_checkbox_value_false'),(2185,1,'main_settings_updated'),(2186,7,'widgets_no_content'),(2187,7,'rss_widget_title_only_label'),(2188,7,'view_no_section_label'),(4717,1,'core_update_leave_button_label'),(10884,191,'new_conversation_link'),(3812,1,'menu_item_users_recently_active'),(2196,1,'menu_item_user_roles'),(2200,7,'questions_empty_lang_value'),(2207,7,'authorization_group_blogs'),(2208,7,'authorization_action_blogs_add_comment'),(2214,7,'about_me_widget_inv_text'),(2215,7,'about_me_widget_default_title'),(2216,7,'about_me_widget_content_saved'),(2217,1,'heading_browse_users'),(2218,1,'no_users'),(2219,7,'check_all'),(2220,7,'with_selected'),(2231,1,'joined'),(2232,1,'user'),(2233,7,'form_element_select_field_invitation_label'),(2234,7,'form_element_common_invitation_text'),(2235,1,'user_delete_msg'),(2236,1,'confirm_delete_users'),(2642,7,'questions_question_realname_label'),(2554,7,'email_verify_index'),(2582,1,'massmailing_send_mails_message'),(5832,7,'forgot_password_form_text'),(2256,1,'questions_question_was_deleted'),(2269,7,'component_sign_in_login_invitation'),(2270,7,'rates_box_cap_label'),(2271,1,'questions_section_was_deleted'),(2430,7,'questions_admin_description_label'),(2429,7,'questions_admin_question_label'),(15356,272,'admin_page_heading_memberships'),(2329,7,'questions_menu_add'),(2330,7,'questions_menu_editAccountType'),(2436,7,'copyright'),(2324,7,'questions_account_type_was_added'),(2314,1,'questions_account_type_was_deleted'),(2307,7,'questions_admin_edit_label'),(2308,7,'questions_admin_delete_label'),(2660,7,'suspended_user_page_content'),(2328,7,'questions_menu_index'),(2312,7,'forgot_password_cap_label'),(2313,7,'forgot_password_email_invitation_message'),(2315,7,'forgot_password_mail_template_subject'),(6052,7,'reset_password_mail_template_subject'),(2365,7,'questions_menu_settings'),(16368,1,'default_role'),(2333,7,'comments_add_auth_message'),(2334,7,'questions_question_presentation_text_label'),(2337,7,'questions_question_presentation_textarea_label'),(2338,7,'questions_question_presentation_checkbox_label'),(2339,7,'questions_question_presentation_multicheckbox_label'),(2340,7,'questions_question_presentation_date_label'),(2341,7,'questions_question_presentation_url_label'),(2342,7,'questions_question_presentation_password_label'),(2654,7,'email_verify_verify_mail_was_sent'),(2655,7,'suspend_user_btn'),(2656,7,'user_suspend_btn_lbl'),(2366,7,'questions_config_user_view_presentation_description'),(2355,1,'sidebar_menu_item_plugin_blogs'),(2356,1,'sidebar_menu_item_plugin_links'),(2367,7,'questions_config_user_view_presentation_label'),(2368,7,'authorization_action_blogs_add'),(2370,7,'authorization_action_blogs_view'),(2374,7,'edit_button'),(2375,7,'edit_successfull_edit'),(2376,7,'edit_index'),(2390,1,'questions_edit_section_name_title'),(2381,7,'widgets_panel_dashboard_label'),(19517,1,'user_settings_profile_questions'),(2383,1,'manage_plugins_active_box_cap_label'),(2384,1,'manage_plugins_inactive_box_cap_label'),(2385,1,'manage_plugins_settings_button_label'),(2386,1,'manage_plugins_deactivate_button_label'),(2387,1,'manage_plugins_activate_button_label'),(2388,1,'manage_plugins_uninstall_button_label'),(2389,1,'manage_plugins_install_button_label'),(2391,1,'questions_edit_question_value_title'),(2392,1,'questions_edit_question_name_title'),(2393,1,'questions_edit_question_description_title'),(2394,7,'questions_account_type_all'),(2395,1,'questions_edit_account_type_name_title'),(2396,1,'manage_plugins_install_success_message'),(18689,1,'questions_add_account_type'),(16370,1,'error_empty_credentials_provided'),(2593,7,'massmailing_unsubscribe'),(2594,1,'permissions_roles_deleted_msg'),(2599,1,'permissions_user_role'),(2600,1,'permissions_number_of_users'),(2595,1,'permissions_please_select_role'),(2589,1,'permissions_role_added_msg'),(2588,1,'permissions_add_form_role_lbl'),(2581,7,'rate_cmp_success_message'),(2425,7,'auth_identity_not_found_error_message'),(2426,7,'auth_invlid_password_error_message'),(2431,7,'auth_success_message'),(2468,1,'msg_lang_cloned'),(2469,1,'heading_questions'),(2472,1,'languages_page_heading'),(2473,1,'questions_account_type_label'),(2474,1,'questions_new_question_label'),(2475,1,'questions_question_name_label'),(2477,1,'questions_for_account_type_label'),(2478,1,'questions_for_account_type_description'),(2479,1,'questions_question_section_label'),(2480,1,'questions_answer_type_label'),(16367,1,'add_question_value_description'),(2486,1,'questions_possible_values_description'),(2487,1,'questions_columns_count_label'),(2488,1,'questions_required_label'),(2489,1,'questions_required_description'),(2490,1,'questions_on_sing_up_label'),(2491,1,'questions_on_sing_up_description'),(2492,1,'questions_on_edit_label'),(2493,1,'questions_on_edit_description'),(2494,1,'questions_on_view_label'),(2495,1,'questions_on_view_description'),(2496,1,'questions_on_search_description'),(2497,1,'questions_on_search_label'),(2498,1,'questions_save_and_new_label'),(2585,1,'massmailing_unsubscribe_link_text'),(2584,1,'massmailing_unsubscribe_link_html'),(2501,1,'questions_add_question_message'),(2504,1,'questions_update_question_message'),(18766,1,'pages_page_field_content_desc'),(2505,1,'pages_new_form_or'),(2506,1,'questions_edit_delete_value_confirm_message'),(2511,1,'pages_page_field_meta_desc'),(16369,1,'error_cant_connect_to_host'),(2513,1,'questions_edit_question_description_label'),(2515,1,'questions_admin_existing_values'),(2516,1,'questions_admin_dragndrop_reorder'),(2517,1,'questions_add_question_values_title'),(2518,1,'questions_question_was_not_update_message'),(2519,1,'questions_question_was_not_updated_message'),(2541,1,'questions_section_was_added'),(2522,1,'questions_add_values_label'),(2525,1,'questions_add_values_submit_button'),(19521,1,'heading_user_input_settings'),(2531,1,'questions_empty_lang_value'),(2529,1,'questions_question_is_not_exist'),(2533,1,'questions_add_question_values_message'),(2542,1,'questions_index_info_txt'),(2540,1,'questions_account_type_was_added'),(2543,1,'questions_index_drag_n_drop_info_txt'),(2544,1,'questions_add_new_question_button'),(2545,1,'questions_profile_question_sections_title'),(2546,1,'questions_section_info_txt'),(2547,1,'questions_new_section_label'),(2549,1,'questions_delete_section_confirmation'),(2557,7,'email_verify_template_text'),(2558,7,'email_verify_email_verify_success'),(2559,1,'questions_add_new_section_button'),(2561,7,'new_message_count_text'),(2562,1,'sidebar_menu_item_dev_langs'),(2661,7,'user_feedback_profile_unsuspended'),(2564,7,'email_verify_promo'),(2565,7,'email_verify_email_verify_fail'),(2568,1,'permissions_edit_role_btn'),(2569,1,'permissions_add_role_btn'),(2570,1,'massmailing_ignore_unsubscribe_label'),(2571,1,'massmailing_email_format_html'),(2572,1,'massmailing_email_format_text'),(2573,1,'massmailing_body_label'),(2574,1,'massmailing_subject_label'),(2575,1,'massmailing_email_format_label'),(2576,1,'massmailing_user_section_label'),(2577,1,'massmailing_total_members'),(2578,1,'massmailing_preview_label'),(2579,1,'massmailing_compose_email'),(2580,1,'massmailing_start_mailing_button'),(2602,1,'permissions_check_all_selected'),(2603,1,'permissions_delete_role'),(2604,1,'permissions_are_you_sure'),(2605,1,'permissions_go_to_permissions_page'),(2609,7,'authorization_role_wqewq'),(2612,7,'massmailing_unsubscribe_failed'),(2613,1,'massmailing'),(2615,7,'questions_section_user_photo_label'),(2616,7,'questions_section_captcha_label'),(2707,7,'questions_question_relationship_label'),(2620,1,'massmailing_following_variables_text'),(2850,7,'widgets_admin_customization_box_title'),(2626,1,'user_display_settings'),(2627,1,'user_avatar_settings'),(2628,1,'user_settings_updated'),(2629,1,'user_settings_avatar_size_label'),(2630,1,'user_settings_big_avatar_size_label'),(2632,1,'user_settings_display_name'),(2633,1,'user_settings_display_name_desc'),(2634,1,'user_settings_avatar_size_desc'),(2635,1,'user_settings_big_avatar_size_desc'),(2662,7,'user_unsuspend_btn_lbl'),(2657,7,'user_feedback_profile_suspended'),(2659,1,'user_feedback_profiles_suspended'),(2736,1,'pages_edit_local_page_content'),(2735,1,'pages_edit_local_visible_for'),(2743,1,'themes_settings_reset_label'),(2667,7,'widgets_admin_dashboard_heading'),(2668,7,'widgets_admin_profile_heading'),(2670,7,'join_successful_join'),(2671,7,'user_page_suspended'),(2672,7,'form_validate_common_error_message'),(2673,7,'profile_view_title'),(2674,7,'profile_view_heading'),(2675,7,'my_profile_title'),(2676,1,'my_profile_heading'),(2677,1,'theme_settings_reset_confirm_message'),(2680,1,'theme_graphics_image_delete_confirm_message'),(2732,1,'pages_edit_local_menu_name'),(2784,1,'permissions_successfully_updated'),(2734,1,'pages_edit_local_page_url'),(2733,1,'pages_edit_local_page_title'),(2698,7,'questions_question_match_sex_label'),(2703,7,'questions_question_match_sex_value_2'),(2702,7,'questions_question_match_sex_value_1'),(2731,1,'pages_edit_external_visible_for'),(2834,1,'permissions_go_to_role_management_page'),(2727,1,'pages_edit_external_menu_name_label'),(2728,1,'pages_edit_external_url_label'),(2729,7,'comments_add_login_message'),(2730,1,'pages_edit_external_url_open_in_new_window'),(2723,7,'questions_question_relationship_value_1'),(2724,7,'questions_question_relationship_value_2'),(2725,7,'questions_question_relationship_value_4'),(2726,7,'questions_question_relationship_value_8'),(2737,1,'pages_edit_visible_for_guests'),(2738,1,'pages_edit_visible_for_members'),(2739,1,'pages_add_menu_name'),(2740,1,'pages_add_page_content'),(2741,1,'page_add_page_address'),(2744,7,'skalfa'),(15992,7,'page_99448870'),(2747,1,'themes_settings_graphics_preview_cap_label'),(2748,7,'my_profile_heading'),(2860,7,'component_add_new_box_cap_label'),(2783,1,'permissions_page_heading'),(2785,1,'permissions_feedback_user_not_found'),(2786,1,'permissions_feedback_moderator_added'),(2789,1,'permissions_feedback_user_kicked_from_moders'),(2788,1,'permissions_feedback_user_is_already_moderator'),(2790,1,'permissions_feedback_cant_remove_moder'),(2791,1,'permissions_index_who_can_join'),(2792,1,'permissions_index_anyone_can_join'),(2793,1,'permissions_index_by_invitation_only_can_join'),(2794,1,'permissions_index_who_can_invite'),(2795,1,'permissions_index_all_users_can_invate'),(2796,1,'permissions_index_admin_only_can_invate'),(2798,1,'permissions_index_mandatory_member_approve'),(2799,1,'permissions_index_moders_approve_members_manually'),(2800,1,'permissions_index_guests_can_view_site'),(2801,1,'permissions_index_yes'),(2802,1,'permissions_index_no'),(2804,1,'permissions_index_with_password'),(2805,1,'permissions_idex_if_not_yes_will_override_settings'),(19528,1,'maintenance_section_label'),(2807,1,'permissions_moders_content'),(2809,1,'permissions_moders_add_moder'),(2810,1,'permissions_moders_username'),(2812,1,'permissions_moders_make_moderator'),(2815,7,'empty_list'),(2822,1,'sidebar_menu_item_plugin_mass_mailing'),(2823,7,'authorization_action_video_add_comment'),(2824,7,'authorization_action_video_delete_comment_by_content_owner'),(2825,1,'confirm_suspend_users'),(2827,7,'authorization_action_blogs_delete_comment_by_content_owner'),(2829,7,'users_browse_page_heading'),(2830,1,'manage_plugins_activate_success_message'),(2831,1,'manage_plugins_deactivate_success_message'),(2835,7,'authorization_failed_feedback'),(2837,12,'cmp_widget_photo_albums_count'),(2840,12,'user_photo_albums_widget'),(2842,12,'auth_upload_permissions'),(2843,7,'authorization_failed_msg'),(2844,7,'form_validator_required_error_message'),(2845,7,'comments_widget_label'),(2846,7,'avatar_widget'),(2847,7,'email_verify_subject'),(15711,7,'questions_section_683bffc1ac46b8bd0c840a3526cce25b_label'),(2876,1,'languages_values_updated'),(2877,7,'user_no_users'),(2880,1,'site_email'),(2881,1,'site_email_desc'),(2884,7,'activity_widget_title'),(3011,1,'sidebar_menu_item_plugin_contact_importer'),(3012,7,'rate_cmp_auth_error_message'),(2895,7,'month_1'),(2899,7,'user_feedback_marked_as_featured'),(2900,7,'user_feedback_unmarked_as_featured'),(2901,7,'user_action_mark_as_featured'),(2902,7,'user_action_unmark_as_featured'),(2903,7,'authorization_group_friends'),(2904,7,'authorization_action_friends_add_friend'),(2906,7,'avatar_select_image'),(2907,12,'photo_deleted'),(2908,12,'photo_not_deleted'),(2923,7,'change_password'),(2924,7,'change_password_old_password'),(2925,7,'change_password_new_password'),(2926,7,'change_password_repeat_password'),(2927,7,'change_password_success'),(2928,7,'change_password_error'),(2932,7,'avatar_activity_string'),(2934,7,'join_activity_string'),(2935,7,'join_activity_user_avatar'),(2936,7,'edit_activity_string'),(2958,7,'widgets_reset_position_confirm'),(5796,7,'authorization_group_membership'),(15348,272,'action'),(15349,272,'add'),(15350,272,'add_btn'),(2993,7,'unsuspend_user_btn'),(2994,7,'user_feedback_profiles_unsuspended'),(2995,1,'user_feedback_profiles_unsuspended'),(3770,7,'flag_spam'),(3037,7,'delete_user_cancel_button'),(3038,7,'delete_user_delete_button'),(3039,7,'delete_user_index'),(3040,7,'edit_profile_link'),(3041,7,'delete_profile'),(3045,7,'delete_user_confirmation'),(3046,7,'email_verify_verification_code_label'),(3050,7,'email_verify_invalid_verification_code'),(3048,7,'email_verify_verification_code_submit_button_label'),(3049,7,'email_verify_form_promo'),(3051,7,'questions_config_date_field_format_label'),(3052,7,'questions_config_date_field_format_mdy'),(3053,7,'questions_config_date_field_format_dmy'),(3056,7,'delete_user_content_label'),(15352,272,'add_role'),(3062,12,'file_size_validation_error'),(3077,7,'profile_toolbar_user_delete_label'),(3078,7,'delete_user_confirmation_label'),(3081,7,'admin_delete_user_text'),(3082,1,'mail_settings_updated'),(3083,1,'menu_item_mail_settings'),(3084,1,'mail_smtp_title_enabled'),(3085,1,'mail_smtp_title_enabled_desc'),(3086,1,'mail_smtp_title_host'),(3087,1,'mail_smtp_title_user'),(3088,1,'mail_smtp_title_password'),(3089,1,'mail_smtp_connection_prefix'),(3090,1,'mail_smtp_connection_prefix_desc'),(19523,1,'heading_mail_settings'),(3097,1,'mail_smtp_secure_invitation'),(3096,1,'mail_smtp_test_connection_title'),(3098,1,'mail_smtp_connection_desc'),(3099,1,'mail_smtp_test_connection_btn'),(3100,1,'smtp_test_connection_success'),(3101,7,'month_3'),(3102,7,'month_4'),(3104,7,'month_5'),(3105,7,'month_6'),(3106,7,'month_7'),(3107,7,'month_10'),(3108,7,'month_11'),(15123,7,'questions_question_googlemap_location_description'),(15124,7,'questions_question_googlemap_location_label'),(3116,7,'questions_age_year_old'),(13948,237,'ads_manage_add_banners_message'),(13952,237,'advertisement_menu_manage_banners'),(13951,237,'advertisement_menu_banner_list'),(4661,1,'manage_plugins_core_update_request_box_cap_label'),(4662,1,'manage_plugins_core_update_request_text'),(10911,191,'upload_file_file_partially_uploaded_error'),(3349,1,'sign_in_button_list_text'),(10900,191,'sent_meta_tilte'),(10899,191,'sent_message_form_label'),(10898,191,'sent_label'),(10896,191,'send_button'),(10897,191,'sent_button'),(19529,1,'splash_screen_section_label'),(10910,191,'upload_file_fail'),(3230,7,'join_form_title'),(3231,7,'join_connect_title'),(3232,7,'join_or'),(3352,7,'authorization_feedback_roles_updated'),(10901,191,'settings_updated'),(19527,1,'maintenance_page_heading'),(3236,7,'password_protection_cap_label'),(3237,7,'password_protection_text'),(3238,7,'password_protection_submit_label'),(3239,7,'password_protection_success_message'),(3240,7,'password_protection_error_message'),(3241,7,'paging_label_first'),(3242,7,'paging_label_prev'),(3243,7,'paging_label_next'),(3244,7,'paging_label_last'),(19459,12,'album_desc'),(3246,1,'splash_intro_label'),(3247,1,'splash_intro_desc'),(3248,1,'splash_button_label'),(3249,1,'splash_button_label_desc'),(3250,1,'splash_leave_url_label'),(3251,1,'splash_leave_url_desc'),(3252,1,'splash_intro_value'),(3253,1,'splash_button_value'),(3261,1,'sidebar_menu_item_splash_screen'),(19518,1,'admin_admin_dashboard'),(3260,1,'splash_leave_button_label'),(3274,7,'join_not_valid_invite_code'),(3308,7,'authorization_user_roles'),(10902,191,'subject'),(10903,191,'text'),(10904,191,'to'),(3283,1,'splash_enable_label'),(3284,1,'splash_enable_desc'),(3285,1,'invite_members_button_label'),(3286,1,'invite_members_cap_label'),(3287,1,'invite_members_textarea_invitation_text'),(3288,1,'invite_members_submit_label'),(3289,1,'invite_members_max_limit_message'),(3290,1,'invite_members_min_limit_message'),(3291,1,'invite_members_success_message'),(3292,7,'mail_template_admin_invite_user_subject'),(3293,7,'mail_template_admin_invite_user_content_html'),(3294,7,'mail_template_admin_invite_user_content_text'),(10895,191,'select_all_checkbox'),(10894,191,'selected_label'),(3309,7,'authorization_give_user_role'),(15367,272,'membership_added'),(3345,7,'moderator_panel'),(3346,7,'approve_users'),(3347,7,'wait_for_approval'),(3348,1,'permissions_index_user_approve'),(3351,7,'profile_toolbar_user_approve_label'),(3353,7,'user_approved'),(3354,7,'user_approved_mail_subject'),(3355,7,'user_approved_mail_txt'),(3356,7,'user_approved_mail_html'),(15365,272,'expires'),(10906,191,'upload_file_count_files_error'),(10907,191,'upload_file_delete_fail'),(10908,191,'upload_file_delete_success'),(10909,191,'upload_file_extension_is_not_allowed'),(3371,1,'sidebar_menu_item_maintenance'),(19520,1,'heading_main_settings'),(19519,1,'heading_user_roles'),(3374,1,'maintenance_text_value'),(3379,1,'maintenance_enable_label'),(3380,1,'maintenance_enable_desc'),(3381,1,'maintenance_text_label'),(3382,1,'maintenance_text_desc'),(3383,1,'maintenance_submit_success_message'),(15364,272,'displaying_members'),(15363,272,'delete_selected'),(15362,272,'days'),(3391,7,'geolocation_country_name_ABW'),(3392,7,'geolocation_country_name_AFG'),(3393,7,'geolocation_country_name_AGO'),(3394,7,'geolocation_country_name_AIA'),(3395,7,'geolocation_country_name_ALB'),(3396,7,'geolocation_country_name_AND'),(3397,7,'geolocation_country_name_ANT'),(3398,7,'geolocation_country_name_ARE'),(3399,7,'geolocation_country_name_ARG'),(3400,7,'geolocation_country_name_ARM'),(3401,7,'geolocation_country_name_ASM'),(3402,7,'geolocation_country_name_ATA'),(3403,7,'geolocation_country_name_ATF'),(3404,7,'geolocation_country_name_ATG'),(3405,7,'geolocation_country_name_AUS'),(3406,7,'geolocation_country_name_AUT'),(3407,7,'geolocation_country_name_AZE'),(3408,7,'geolocation_country_name_BDI'),(3409,7,'geolocation_country_name_BEL'),(3410,7,'geolocation_country_name_BEN'),(3411,7,'geolocation_country_name_BFA'),(3412,7,'geolocation_country_name_BGD'),(3413,7,'geolocation_country_name_BGR'),(3414,7,'geolocation_country_name_BHR'),(3415,7,'geolocation_country_name_BHS'),(3416,7,'geolocation_country_name_BIH'),(3417,7,'geolocation_country_name_BLR'),(3418,7,'geolocation_country_name_BLZ'),(3419,7,'geolocation_country_name_BMU'),(3420,7,'geolocation_country_name_BOL'),(3421,7,'geolocation_country_name_BRA'),(3422,7,'geolocation_country_name_BRB'),(3423,7,'geolocation_country_name_BRN'),(3424,7,'geolocation_country_name_BTN'),(3425,7,'geolocation_country_name_BVT'),(3426,7,'geolocation_country_name_BWA'),(3427,7,'geolocation_country_name_CAF'),(3428,7,'geolocation_country_name_CAN'),(3429,7,'geolocation_country_name_CHE'),(3430,7,'geolocation_country_name_CHL'),(3431,7,'geolocation_country_name_CHN'),(3432,7,'geolocation_country_name_CIV'),(3433,7,'geolocation_country_name_CMR'),(3434,7,'geolocation_country_name_COD'),(3435,7,'geolocation_country_name_COG'),(3436,7,'geolocation_country_name_COK'),(3437,7,'geolocation_country_name_COL'),(3438,7,'geolocation_country_name_COM'),(3439,7,'geolocation_country_name_CPV'),(3440,7,'geolocation_country_name_CRI'),(3441,7,'geolocation_country_name_CUB'),(3442,7,'geolocation_country_name_CYM'),(3443,7,'geolocation_country_name_CYP'),(3444,7,'geolocation_country_name_CZE'),(3445,7,'geolocation_country_name_DEU'),(3446,7,'geolocation_country_name_DJI'),(3447,7,'geolocation_country_name_DMA'),(3448,7,'geolocation_country_name_DNK'),(3449,7,'geolocation_country_name_DOM'),(3450,7,'geolocation_country_name_DZA'),(3451,7,'geolocation_country_name_ECU'),(3452,7,'geolocation_country_name_EGY'),(3453,7,'geolocation_country_name_ERI'),(3454,7,'geolocation_country_name_ESP'),(3455,7,'geolocation_country_name_EST'),(3456,7,'geolocation_country_name_ETH'),(3457,7,'geolocation_country_name_FIN'),(3458,7,'geolocation_country_name_FJI'),(3459,7,'geolocation_country_name_FLK'),(3460,7,'geolocation_country_name_FRA'),(3461,7,'geolocation_country_name_FRO'),(3462,7,'geolocation_country_name_FSM'),(3463,7,'geolocation_country_name_GAB'),(3464,7,'geolocation_country_name_GBR'),(3465,7,'geolocation_country_name_GEO'),(3466,7,'geolocation_country_name_GGY'),(3467,7,'geolocation_country_name_GHA'),(3468,7,'geolocation_country_name_GIB'),(3469,7,'geolocation_country_name_GIN'),(3470,7,'geolocation_country_name_GLP'),(3471,7,'geolocation_country_name_GMB'),(3472,7,'geolocation_country_name_GNB'),(3473,7,'geolocation_country_name_GNQ'),(3474,7,'geolocation_country_name_GRC'),(3475,7,'geolocation_country_name_GRD'),(3476,7,'geolocation_country_name_GRL'),(3477,7,'geolocation_country_name_GTM'),(3478,7,'geolocation_country_name_GUF'),(3479,7,'geolocation_country_name_GUM'),(3480,7,'geolocation_country_name_GUY'),(3481,7,'geolocation_country_name_HKG'),(3482,7,'geolocation_country_name_HND'),(3483,7,'geolocation_country_name_HRV'),(3484,7,'geolocation_country_name_HTI'),(3485,7,'geolocation_country_name_HUN'),(3486,7,'geolocation_country_name_IDN'),(3487,7,'geolocation_country_name_IMN'),(3488,7,'geolocation_country_name_IND'),(3489,7,'geolocation_country_name_IOT'),(3490,7,'geolocation_country_name_IRL'),(3491,7,'geolocation_country_name_IRN'),(3492,7,'geolocation_country_name_IRQ'),(3493,7,'geolocation_country_name_ISL'),(3494,7,'geolocation_country_name_ISR'),(3495,7,'geolocation_country_name_ITA'),(3496,7,'geolocation_country_name_JAM'),(3497,7,'geolocation_country_name_JEY'),(3498,7,'geolocation_country_name_JOR'),(3499,7,'geolocation_country_name_JPN'),(3500,7,'geolocation_country_name_KAZ'),(3501,7,'geolocation_country_name_KEN'),(3502,7,'geolocation_country_name_KGZ'),(3503,7,'geolocation_country_name_KHM'),(3504,7,'geolocation_country_name_KIR'),(3505,7,'geolocation_country_name_KNA'),(3506,7,'geolocation_country_name_KOR'),(3507,7,'geolocation_country_name_KWT'),(3508,7,'geolocation_country_name_LAO'),(3509,7,'geolocation_country_name_LBN'),(3510,7,'geolocation_country_name_LBR'),(3511,7,'geolocation_country_name_LBY'),(3512,7,'geolocation_country_name_LCA'),(3513,7,'geolocation_country_name_LIE'),(3514,7,'geolocation_country_name_LKA'),(3515,7,'geolocation_country_name_LSO'),(3516,7,'geolocation_country_name_LTU'),(3517,7,'geolocation_country_name_LUX'),(3518,7,'geolocation_country_name_LVA'),(3519,7,'geolocation_country_name_MAC'),(3520,7,'geolocation_country_name_MAF'),(3521,7,'geolocation_country_name_MAR'),(3522,7,'geolocation_country_name_MCO'),(3523,7,'geolocation_country_name_MDA'),(3524,7,'geolocation_country_name_MDG'),(3525,7,'geolocation_country_name_MDV'),(3526,7,'geolocation_country_name_MEX'),(3527,7,'geolocation_country_name_MHL'),(3528,7,'geolocation_country_name_MKD'),(3529,7,'geolocation_country_name_MLI'),(3530,7,'geolocation_country_name_MLT'),(3531,7,'geolocation_country_name_MMR'),(3532,7,'geolocation_country_name_MNE'),(3533,7,'geolocation_country_name_MNG'),(3534,7,'geolocation_country_name_MNP'),(3535,7,'geolocation_country_name_MOZ'),(3536,7,'geolocation_country_name_MRT'),(3537,7,'geolocation_country_name_MSR'),(3538,7,'geolocation_country_name_MTQ'),(3539,7,'geolocation_country_name_MUS'),(3540,7,'geolocation_country_name_MWI'),(3541,7,'geolocation_country_name_MYS'),(3542,7,'geolocation_country_name_MYT'),(3543,7,'geolocation_country_name_NAM'),(3544,7,'geolocation_country_name_NCL'),(3545,7,'geolocation_country_name_NER'),(3546,7,'geolocation_country_name_NFK'),(3547,7,'geolocation_country_name_NGA'),(3548,7,'geolocation_country_name_NIC'),(3549,7,'geolocation_country_name_NIU'),(3550,7,'geolocation_country_name_NLD'),(3551,7,'geolocation_country_name_NOR'),(3552,7,'geolocation_country_name_NPL'),(3553,7,'geolocation_country_name_NRU'),(3554,7,'geolocation_country_name_NZL'),(3555,7,'geolocation_country_name_OMN'),(3556,7,'geolocation_country_name_PAK'),(3557,7,'geolocation_country_name_PAN'),(3558,7,'geolocation_country_name_PER'),(3559,7,'geolocation_country_name_PHL'),(3560,7,'geolocation_country_name_PLW'),(3561,7,'geolocation_country_name_PNG'),(3562,7,'geolocation_country_name_POL'),(3563,7,'geolocation_country_name_PRI'),(3564,7,'geolocation_country_name_PRK'),(3565,7,'geolocation_country_name_PRT'),(3566,7,'geolocation_country_name_PRY'),(3567,7,'geolocation_country_name_PSE'),(3568,7,'geolocation_country_name_PYF'),(3569,7,'geolocation_country_name_QAT'),(3570,7,'geolocation_country_name_REU'),(3571,7,'geolocation_country_name_ROM'),(3572,7,'geolocation_country_name_RUS'),(3573,7,'geolocation_country_name_RWA'),(3574,7,'geolocation_country_name_SAU'),(3575,7,'geolocation_country_name_SCG'),(3576,7,'geolocation_country_name_SDN'),(3577,7,'geolocation_country_name_SEN'),(3578,7,'geolocation_country_name_SGP'),(3579,7,'geolocation_country_name_SGS'),(3580,7,'geolocation_country_name_SLB'),(3581,7,'geolocation_country_name_SLE'),(3582,7,'geolocation_country_name_SLV'),(3583,7,'geolocation_country_name_SMR'),(3584,7,'geolocation_country_name_SOM'),(3585,7,'geolocation_country_name_SPM'),(3586,7,'geolocation_country_name_SRB'),(3587,7,'geolocation_country_name_STP'),(3588,7,'geolocation_country_name_SUR'),(3589,7,'geolocation_country_name_SVK'),(3590,7,'geolocation_country_name_SVN'),(3591,7,'geolocation_country_name_SWE'),(3592,7,'geolocation_country_name_SWZ'),(3593,7,'geolocation_country_name_SYC'),(3594,7,'geolocation_country_name_SYR'),(3595,7,'geolocation_country_name_TCA'),(3596,7,'geolocation_country_name_TCD'),(3597,7,'geolocation_country_name_TGO'),(3598,7,'geolocation_country_name_THA'),(3599,7,'geolocation_country_name_TJK'),(3600,7,'geolocation_country_name_TKL'),(3601,7,'geolocation_country_name_TKM'),(3602,7,'geolocation_country_name_TLS'),(3603,7,'geolocation_country_name_TON'),(3604,7,'geolocation_country_name_TTO'),(3605,7,'geolocation_country_name_TUN'),(3606,7,'geolocation_country_name_TUR'),(3607,7,'geolocation_country_name_TUV'),(3608,7,'geolocation_country_name_TWN'),(3609,7,'geolocation_country_name_TZA'),(3610,7,'geolocation_country_name_UGA'),(3611,7,'geolocation_country_name_UKR'),(3612,7,'geolocation_country_name_UMI'),(3613,7,'geolocation_country_name_URY'),(3614,7,'geolocation_country_name_USA'),(3615,7,'geolocation_country_name_UZB'),(3616,7,'geolocation_country_name_VAT'),(3617,7,'geolocation_country_name_VCT'),(3618,7,'geolocation_country_name_VEN'),(3619,7,'geolocation_country_name_VGB'),(3620,7,'geolocation_country_name_VIR'),(3621,7,'geolocation_country_name_VNM'),(3622,7,'geolocation_country_name_VUT'),(3623,7,'geolocation_country_name_WLF'),(3624,7,'geolocation_country_name_WSM'),(3625,7,'geolocation_country_name_YEM'),(3626,7,'geolocation_country_name_ZAF'),(3627,7,'geolocation_country_name_ZMB'),(3628,7,'geolocation_country_name_ZWE'),(12869,1,'sidebar_menu_themes_add'),(3665,7,'unique_local_page_error'),(3780,12,'add_new'),(3781,12,'no_photo'),(3799,12,'recently_uploaded'),(3790,7,'flags_users_reported'),(3791,7,'flags_deleted'),(3792,7,'dashboard_heading'),(3798,1,'sidebar_menu_item_plugin_forum'),(3802,12,'delete_fullsize_photos'),(3803,12,'delete_fullsize_confirm'),(3804,12,'photos_deleted'),(3805,12,'view_fullsize'),(3808,1,'maintenance_page_title'),(3813,1,'menu_item_users_suspended'),(3814,1,'menu_item_users_unverified'),(3815,1,'menu_item_users_unapproved'),(3816,1,'user_status'),(3819,1,'user_status_unapproved'),(3817,1,'user_status_suspended'),(3818,1,'user_status_unverified'),(15357,272,'admin_page_heading_users_by_membership'),(15404,273,'btn_save'),(15405,273,'business'),(3735,1,'search_by_name'),(15358,272,'auth_group_label'),(15359,272,'checkout'),(3771,7,'flag_offence'),(3772,7,'flag_illegal'),(3773,7,'flag_as'),(3774,7,'flag_flag'),(3776,7,'flag_accepted'),(3777,7,'flag_already_flagged'),(15366,272,'membership'),(3823,1,'user_search_result'),(3820,7,'activity_stamp'),(3821,7,'activity_online'),(3822,12,'album_deleted'),(15353,272,'admin_menu_browse_users'),(3843,7,'pages_add_submit'),(3840,12,'flags'),(3828,7,'users'),(3829,7,'for_approval'),(3830,7,'flagged_content'),(3832,1,'heading_user_role'),(3833,1,'back_to_roles'),(3834,1,'sidebar_menu_item_permission'),(3835,1,'sidebar_menu_item_roles'),(3836,1,'sidebar_menu_item_permission_roles'),(3837,1,'sidebar_menu_item_permission_moders'),(3844,7,'pages_add_item'),(3845,7,'pages_back'),(3854,7,'forgot_password_success_message'),(3852,1,'theme_change_success_message'),(3851,7,'dashboard'),(3858,1,'sidebar_menu_plugins_installed'),(3859,1,'sidebar_menu_plugins_available'),(3860,1,'sidebar_menu_plugins_add'),(3861,1,'finance_settings'),(3862,1,'currency'),(19516,1,'user_settings_permissions'),(3864,1,'manage_plugins_plugin_not_found'),(3865,1,'manage_plugins_delete_confirm_message'),(3866,1,'manage_plugins_delete_button_label'),(3867,1,'manage_plugins_uninstall_success_message'),(3868,1,'page_title_manage_plugins_ftp_info'),(3869,1,'manage_plugins_ftp_box_cap_label'),(3870,7,'upload'),(3871,1,'plugins_manage_ftp_form_login_label'),(3872,1,'plugins_manage_ftp_form_password_label'),(3873,1,'plugins_manage_ftp_form_submit_label'),(3874,1,'plugins_manage_need_ftp_attrs_message'),(3875,1,'plugins_manage_ftp_form_port_label'),(5840,7,'reset_password_request_submit_label'),(3878,1,'plugins_manage_ftp_attrs_invalid_host_message'),(4126,7,'user_list_menu_item_birthdays'),(13945,237,'ads_edit_banner_button_label'),(3887,1,'plugins_manage_ftp_form_host_label'),(3888,7,'forgot_password_label'),(5839,7,'reset_password_request_form_text'),(3892,7,'sign_in_remember_me_label'),(5842,7,'reset_password_request_invalid_code_error_message'),(13946,237,'ads_edit_banner_submit_label'),(13947,237,'ads_index_list_box_cap_label'),(3902,1,'manage_plugins_delete_success_message'),(5125,1,'user_settings_email'),(5126,1,'user_settings_confirm_email'),(5124,1,'user_settings_confirm_email_desc'),(13942,237,'ads_banner_edit_success_message'),(3918,1,'plugins_manage_add_submit_label'),(3921,7,'tf_allow_pics'),(3922,7,'tf_max_img_size'),(3923,7,'tf_sett_section'),(3924,7,'tf_img_url'),(3925,7,'tf_insert'),(3926,7,'tf_img_types'),(3927,7,'tf_img_max_size'),(3928,7,'tf_img_choose_file'),(3929,7,'tf_img_from_url'),(3930,7,'tf_img_gal'),(3931,7,'mp_gal_show'),(3932,7,'mp_gal_hide'),(3933,7,'mp_gal_pic_url'),(3934,7,'mp_gal_delete'),(3935,7,'mp_gal_preview'),(3936,7,'mp_gal_fullsize'),(3937,7,'mp_gal_align'),(3938,7,'mp_gal_none'),(3939,7,'mp_gal_left'),(3940,7,'mp_gal_center'),(3941,7,'mp_gal_right'),(3942,7,'mp_gal_ins_into_post'),(3943,1,'manage_plugins_update_button_label'),(3945,7,'billing_no_gateways'),(3950,1,'manage_plugins_update_request_box_cap_label'),(3951,1,'free_plugin_request_text'),(3952,1,'plugin_update_yes_button_label'),(3953,1,'plugin_update_no_button_label'),(3956,7,'billing_pay_with'),(5841,7,'reset_password_request_heading'),(13950,237,'ads_manage_select_plugin_text'),(13949,237,'ads_manage_global_label'),(3987,1,'plugins_manage_ftp_attrs_invalid_login_params_message'),(3988,7,'billing_currency_not_supported'),(10893,191,'read_permission_denied'),(10891,191,'please_enter_captcha'),(4001,12,'email_notifications_comment'),(4002,12,'email_notifications_setting_comment'),(4004,1,'com_plugin_request_key_label'),(4005,1,'license_form_leave_label'),(4006,1,'license_form_submit_label'),(4010,1,'com_plugin_request_text'),(4012,7,'date_time_week_0'),(4013,7,'date_time_week_1'),(4014,7,'date_time_week_2'),(4015,7,'date_time_week_3'),(4016,7,'date_time_week_4'),(4017,7,'date_time_week_5'),(4018,7,'date_time_week_6'),(4019,1,'plugins_manage_invalid_license_key_error_message'),(4020,7,'user_search_submit_button_label'),(4021,7,'user_search_display_name_search_label'),(4022,7,'user_search_page_heading'),(4032,7,'user_search_main_search_label'),(4034,7,'user_search_menu_item_label'),(4035,7,'user_search_back_to_search_from'),(4038,7,'form_element_from'),(4039,7,'form_element_to'),(4040,7,'form_element_age_range'),(4043,7,'user_search_authorization_warning'),(4044,7,'authorization_action_base_search_users'),(4045,12,'album_delete_not_allowed'),(4046,7,'rate_cmp_owner_cant_rate_error_message'),(4047,7,'comment_delete_confirm_message'),(4048,7,'year'),(4049,7,'month'),(4050,7,'day'),(4051,1,'permission_global_privacy_empty_pass_error_message'),(10905,191,'upload_file_cant_write_file_error'),(4070,12,'not_all_photos_uploaded'),(4071,12,'no_photo_uploaded'),(4078,1,'permission_global_privacy_pass_length_error_message'),(15360,272,'choose_plan'),(4087,1,'manage_plugins_uninstall_confirm_message'),(4090,7,'base_sign_in_cap_label'),(4091,7,'base_sign_in_or_label'),(13939,237,'ads_banners_count_label'),(4100,7,'confirm_page_ok_label'),(4101,7,'confirm_page_cancel_label'),(4102,7,'email_notifications_setting_user_comment'),(4103,7,'profile_comment_notification'),(4105,12,'email_notifications_section_label'),(12902,7,'forgot_password_request_exists_error_message'),(4128,1,'verify_site_email'),(4129,1,'send_verification_email'),(4130,1,'email_already_verify'),(4131,1,'site_email_verify_promo'),(4132,7,'site_email_verify_subject'),(4133,7,'site_email_verify_template_text'),(4134,7,'site_email_verify_template_html'),(13936,237,'ads_add_banner_submit_label'),(13937,237,'ads_add_banner_title_label'),(4140,7,'date_time_tomorrow'),(10892,191,'please_enter_valid_value'),(4145,1,'manage_plugins_uninstall_request_box_cap_label'),(4146,1,'plugin_uninstall_request_text'),(4147,12,'page_title_uninstall'),(4149,7,'form_validator_captcha_error_message'),(4150,12,'delete_content_warning'),(4151,12,'delete_content_desc'),(4152,12,'delete_content'),(4165,7,'form_validator_float_error_message'),(4154,12,'confirm_delete_photos'),(4155,12,'uninstall_inprogress'),(4156,12,'uninstall_inprogress_desc'),(15406,273,'config_page_heading'),(4164,7,'form_validator_date_error_message'),(4166,7,'form_validator_int_error_message'),(4167,7,'form_validator_alphanumeric_error_message'),(4168,7,'form_validator_url_error_message'),(4169,7,'form_validator_email_error_message'),(4170,7,'form_validator_regexp_error_message'),(4171,7,'form_validator_string_error_message'),(4500,12,'plugin_set_for_uninstall'),(15361,272,'create_plan'),(4515,7,'console_item_label_preferences'),(4516,7,'console_item_label_profile'),(4514,7,'console_item_label_dashboard'),(4517,7,'console_item_label_mailbox'),(4518,7,'console_item_label_sign_out'),(4519,1,'notification_soft_update'),(4520,1,'notification_plugins_to_update'),(13931,237,'ads_add_banner'),(13932,237,'ads_add_banner_code_desc'),(13933,237,'ads_add_banner_code_label'),(13934,237,'ads_add_banner_country_desc'),(13935,237,'ads_add_banner_country_label'),(5838,7,'reset_password_request_cap_label'),(4595,1,'manage_plugins_uninstall_error_message'),(13940,237,'ads_banner_add_success_message'),(4598,7,'media_panel_file_deleted'),(15368,272,'my_membership'),(15369,272,'no_plans'),(15370,272,'no_plans_selected'),(15371,272,'no_types_selected'),(15372,272,'period'),(15373,272,'plans'),(15374,272,'plans_deleted'),(15375,272,'plans_updated'),(4939,1,'manage_plugins_update_success_message'),(4766,7,'my_avatar_widget'),(4767,1,'page_title_finance'),(4770,1,'sidebar_menu_item_dashboard_finance'),(4769,7,'join_error_username_restricted'),(5843,7,'reset_password_heading'),(4772,1,'sidebar_menu_item_restricted_usernames'),(4773,1,'restrictedusernames'),(4774,1,'restrictedusernames_add_username'),(4775,1,'restrictedusernames_username_label'),(4776,1,'restrictedusernames_add_username_button'),(4777,1,'restrictedusernames_restricted_list_label'),(13943,237,'ads_delete_banner_confirm_message'),(13944,237,'ads_delete_button_label'),(4783,1,'restrictedusernames_username_added'),(4785,1,'manage_plugins_manual_update_request'),(4786,1,'plugin_manual_update_button_label'),(4793,7,'billing_gateway_not_found'),(4832,1,'plugin'),(4810,7,'billing_sale_not_found'),(5853,7,'reset_password_success_message'),(4843,7,'billing_amount'),(4842,7,'time'),(4811,7,'billing_order_init_failed'),(5852,7,'reset_password_length_error_message'),(5851,7,'reset_password_not_equal_error_message'),(4854,7,'billing_details'),(4855,7,'billing_gateway'),(4856,7,'billing_transaction_id'),(4857,7,'billing_statistics'),(4868,1,'questions_config_year_range_label'),(4869,7,'form_element_year_range'),(4870,7,'billing_gateway_unavailable'),(4871,7,'billing_order_canceled'),(4872,7,'billing_order_failed'),(4873,7,'billing_order_completed_successfully'),(4874,7,'billing_order_verified'),(4875,7,'billing_order_processing'),(4906,7,'billing_order_page_heading'),(4907,7,'billing_order_status_page_heading'),(5849,7,'reset_password_repeat_field_label'),(5848,7,'reset_password_field_label'),(5846,7,'reset_password_form_text'),(5845,7,'forgot_password_instructions'),(5844,7,'reset_password_cap_label'),(15408,273,'plugin_configuration_notice'),(15407,273,'gateway_title'),(5576,1,'massmailing_expire_text'),(15402,273,'account_settings'),(15351,272,'add_plan'),(6073,7,'authorization_action_market_post_jobs'),(15403,273,'available'),(5847,7,'reset_password_submit_label'),(13941,237,'ads_banner_delete_success_message'),(6051,7,'reset_password_mail_template_content_txt'),(6050,7,'reset_password_mail_template_content_html'),(6048,7,'authorization_action_market_delete_comment_by_content_owner'),(6046,7,'authorization_group_market'),(6045,1,'questions_edit_username_warning'),(6047,7,'authorization_action_market_add_comment'),(15410,273,'sandbox_mode'),(15411,273,'settings_updated'),(15409,273,'recurring_supported'),(6020,7,'questions_question_c5dc53f371fe6ba3001a7c7e31bd95fc_value_1'),(6021,7,'questions_question_c5dc53f371fe6ba3001a7c7e31bd95fc_value_2'),(6022,7,'questions_question_c5dc53f371fe6ba3001a7c7e31bd95fc_value_4'),(6023,7,'questions_question_c5dc53f371fe6ba3001a7c7e31bd95fc_value_8'),(6024,7,'questions_question_c5dc53f371fe6ba3001a7c7e31bd95fc_value_16'),(13419,12,'feed_activity_owner_photo_string'),(6155,7,'authorization_group_links'),(6156,7,'authorization_action_links_add_comment'),(6157,7,'authorization_action_links_add'),(6158,7,'authorization_action_links_delete_comment_by_content_owner'),(6159,7,'authorization_action_links_view'),(6377,1,'css_edit_success_message'),(6378,7,'comment_view_all'),(6406,7,'ajax_floatbox_users_title'),(10867,191,'email_notifications_section_label'),(10871,191,'inbox_label'),(10870,191,'general_settings'),(10869,191,'file_attachment_disabled'),(10868,191,'enable_attachments'),(15838,7,'questions_question_2b29f145d9d1128a3f57d3af6798fc85_value_4'),(14580,7,'text_is_too_long'),(10872,191,'inbox_meta_tilte'),(6697,7,'feed_user_join'),(6696,7,'feed_user_edit_profile'),(14109,7,'flag_own_content_not_accepted'),(14102,1,'feed_content_avatar_change'),(14103,191,'message_too_long_error'),(14104,7,'pages_wrong_local_url'),(6301,7,'white_spaces_dissalowed'),(6308,1,'user_feedback_email_verified'),(6306,7,'mark_email_verified_btn'),(9251,7,'tag_search'),(6366,1,'user_settings_avatar_image'),(8574,7,'authorization_action_virtualgifts_send_gift'),(8573,7,'authorization_group_virtualgifts'),(15782,1,'com_theme_request_text'),(6376,1,'plugins_manage_ftp_attrs_invalid_user'),(15776,281,'rule_edit_form_success_message'),(6473,1,'user_settings_avatar_image_desc'),(6477,7,'change'),(6478,7,'cancel'),(6486,1,'confirm_avatar_delete'),(6487,1,'default_avatar_deleted'),(15777,281,'top'),(6489,7,'empty_user_avatar_list'),(15413,274,'actions'),(6497,7,'avatar_user_list_select_count_label'),(6498,7,'avatar_user_list_select_button_label'),(14431,247,'unsubscribe_one_label'),(6516,7,'user_page_heading_status'),(7918,7,'authorization_action_event_add_comment'),(7915,7,'authorization_group_event'),(6568,7,'base_document_403_heading'),(6569,7,'base_document_403'),(6570,7,'base_document_404_title'),(6571,7,'base_document_403_title'),(7917,7,'authorization_action_event_view_event'),(7916,7,'authorization_action_event_add_event'),(9493,7,'form_element_submit_default_value'),(7429,7,'empty_user_avatar_list_select'),(15781,1,'com_theme_request_name_label'),(10851,191,'check_now_button'),(10852,191,'compose_message'),(10853,191,'conversation_box_info'),(10854,191,'conversation_label'),(15412,273,'supported_currencies'),(15442,274,'packs_updated'),(15443,274,'pack_added'),(11725,7,'billing_product_id'),(11724,7,'billing_product'),(11723,7,'billing_gateway_products_binding'),(8664,7,'authorization_group_usercredits'),(6671,7,'avatar_feed_string'),(6673,7,'widgets_enable_js'),(6674,7,'widgets_disable_js'),(6675,7,'reset_password_code_expired_cap_label'),(6677,7,'reset_password_code_expired_text'),(6678,1,'total_users'),(10866,191,'email_notifications_new_message'),(10865,191,'email_notifications_comment'),(10864,191,'delete_message'),(10863,191,'delete_conversation_message'),(10862,191,'delete_conversation_link'),(10861,191,'delete_conversation_button'),(10860,191,'delete_confirm_message'),(10859,191,'delete_button'),(10858,191,'create_conversation_message'),(6714,7,'avatar_user_select_empty_list_message'),(10912,191,'upload_file_invalid_extention_error'),(10913,191,'upload_file_max_upload_filesize_error'),(10914,191,'upload_file_name'),(10915,191,'upload_file_not_found'),(10916,191,'upload_file_no_file_error'),(10917,191,'upload_file_no_tmp_dir_error'),(10918,191,'upload_max_file_size'),(10919,191,'usercredits_action_send_message'),(6779,7,'authorization_group_mailbox'),(6780,7,'authorization_action_mailbox_read_message'),(6781,7,'authorization_action_mailbox_send_message'),(6823,7,'manage_plugins_add_success_message'),(6861,7,'date_time_cap_hour'),(6862,7,'date_time_cap_minute'),(9495,7,'user_list_widget_settings_count'),(9494,7,'user_list_widget_settings_title'),(10857,191,'create_conversation_fail_message'),(6890,1,'plugins_manage_no_available_items'),(7218,7,'manage_plugins_install_empty_key_error_message'),(7219,7,'manage_plugins_install_error_message'),(7302,1,'add_language_pack_empty_file_error_message'),(7304,1,'language_import_complete_success_message'),(10841,191,'add_message'),(10840,191,'add_button'),(15778,281,'uninstall_confirm_text'),(7528,7,'questions_question_joinStamp_label'),(15775,281,'rule_edit_form_error_message'),(15836,7,'questions_question_2b29f145d9d1128a3f57d3af6798fc85_value_1'),(15837,7,'questions_question_2b29f145d9d1128a3f57d3af6798fc85_value_2'),(15835,7,'questions_question_2b29f145d9d1128a3f57d3af6798fc85_label'),(15441,274,'packs_description'),(15440,274,'packs'),(15439,274,'pack'),(15437,274,'no_actions'),(15436,274,'not_enough_credits'),(15433,274,'meta_title_buy_credits'),(15432,274,'grant_amount'),(15427,274,'email_notifications_grant_credits'),(15425,274,'credit_balance_updated'),(15424,274,'credits_grant_error'),(15423,274,'credits_granted'),(15422,274,'credits_balance'),(15421,274,'credits'),(15420,274,'choose_pack'),(7828,1,'warning_cron_is_not_active'),(15799,7,'questions_section_1c39c2d13da6947108873e2896c31c51_label'),(15800,7,'questions_question_36e39f917cbcf4fb10aa753186ced60d_value_8'),(15735,281,'admin_menu_item_rules'),(15840,7,'questions_question_2b29f145d9d1128a3f57d3af6798fc85_value_16'),(15419,274,'buy_credits_page_heading'),(15418,274,'auth_group_label'),(15416,274,'add_pack'),(19663,274,'allow_grant_credits_label'),(8987,7,'authorization_group_forum'),(8988,7,'authorization_action_forum_view'),(8989,7,'authorization_action_forum_edit'),(8990,7,'authorization_action_forum_subscribe'),(8993,1,'avatar_label'),(8994,7,'yes'),(8995,7,'no'),(8996,1,'display_avatar_label'),(8997,1,'avatar_label_color'),(8999,1,'permissions_role_updated'),(10842,191,'admin_config'),(10843,191,'and'),(15415,274,'add'),(9055,12,'meta_title_photo_latest'),(9056,12,'meta_description_photo_latest'),(9057,12,'meta_title_photo_featured'),(9058,12,'meta_description_photo_featured'),(9059,12,'meta_title_photo_toprated'),(9060,12,'meta_description_photo_toprated'),(9061,12,'meta_title_photo_tagged_as'),(9062,12,'meta_description_photo_tagged_as'),(9063,12,'meta_title_photo_tagged'),(9064,12,'meta_description_photo_tagged'),(9065,12,'meta_title_photo_view'),(9066,12,'meta_description_photo_view'),(9067,12,'meta_title_photo_upload'),(9068,12,'meta_title_photo_useralbums'),(9069,12,'meta_description_photo_useralbums'),(9070,12,'meta_title_photo_useralbum'),(9071,12,'meta_description_photo_useralbum'),(9106,7,'checkout'),(19422,294,'type_of_content_label'),(19421,294,'require_premoderation_label'),(19419,294,'list_string_create'),(19418,294,'for_approve'),(19415,294,'content_types_saved_message'),(19414,294,'console_pending_approval'),(19413,294,'approve_update_time'),(19412,294,'approve_create_time'),(19411,294,'admin_title'),(19410,294,'admin_heading'),(9129,1,'permissions_role_actions_label'),(9133,1,'sidebar_menu_item_users_roles'),(9139,12,'auth_group_label'),(9140,12,'auth_action_label_view'),(9141,12,'auth_action_label_upload'),(9142,12,'auth_action_label_add_comment'),(9143,12,'auth_action_label_delete_comment_by_content_owner'),(9168,12,'usercredits_action_add_photo'),(9169,12,'usercredits_action_add_comment'),(9173,7,'usercredits_action_daily_login'),(9174,7,'usercredits_action_user_join'),(9175,7,'usercredits_action_search_users'),(9176,7,'usercredits_action_add_comment'),(9208,7,'your_rate_label'),(9209,7,'total_score_label'),(9285,1,'add_new_role_block_cap_label'),(9286,1,'user_role_permissions_cap_label'),(9297,1,'questions_edit_account_types_button'),(10856,191,'create_conversation_button'),(9291,7,'add_comment'),(10855,191,'conversation_meta_tilte'),(9293,1,'questions_values_count'),(9294,7,'delete_comment_by_content_owner'),(9295,7,'search_users'),(9296,1,'auth_group_label'),(9375,1,'question_column_question'),(9377,1,'question_column_type'),(15438,274,'no_packs'),(9381,1,'theme_info_cap_label'),(9382,1,'question_column_values'),(15376,272,'plan_added'),(9386,1,'pages_and_menus_instructions'),(9387,1,'pages_and_menus_main_menu_label'),(9388,1,'question_column_require'),(9389,1,'pages_and_menus_bottom_menu_label'),(9390,1,'pages_and_menus_hidden_pages_label'),(9391,1,'question_column_sign_up'),(9392,1,'pages_and_menus_hidden_desc'),(9393,1,'question_column_profile_edit'),(9395,1,'question_column_view'),(9396,1,'pages_and_menus_item_label'),(9397,1,'pages_and_menus_legend_everyone_label'),(9398,1,'question_column_search'),(9399,1,'pages_and_menus_legend_guests_label'),(9400,1,'pages_and_menus_legend_members_label'),(9401,7,'auth_view_profile'),(9402,1,'pages_and_menus_legend_label'),(9403,1,'or'),(9404,1,'question_column_account_type'),(9405,1,'question_column_exclusive_questions'),(9406,7,'view_profile_no_permission'),(16366,1,'add_button'),(9417,7,'tag_search_empty_value_error'),(9423,7,'form_element_submit_default_balue'),(9462,7,'notification_section_label'),(9469,7,'user_list_activity'),(9467,7,'user_list_online'),(9472,1,'soft_version'),(9522,1,'clone_language_cap_label'),(9528,1,'join_display_photo_upload'),(9530,1,'join_display_terms_of_use'),(9531,1,'join_page'),(9532,1,'join_display_terms_of_use_desc'),(9534,1,'join_display_photo_upload_desc'),(9542,7,'local_page_title_page-119658'),(16364,1,'account_type_sort_order'),(9541,7,'page-119658'),(9539,7,'questions_section_terms_of_use_label'),(9540,7,'questions_question_user_terms_of_use_label'),(9544,7,'local_page_content_page-119658'),(14430,247,'unsubscribe_confirm_msg'),(14429,247,'unsubscribe_completed'),(14428,247,'unsubscribe_code_expired'),(9913,1,'language_edit_form_error_message'),(9912,1,'language_edit_form_success_message'),(19766,274,'credit_rewards'),(15447,274,'price'),(9567,1,'use_military_time'),(9568,1,'sidebar_menu_item_permission_role'),(9683,7,'preference_index'),(9694,7,'config_join_display_photo_upload_display_and_require_label'),(9693,7,'config_join_display_photo_upload_display_label'),(9686,7,'preference_submit_button'),(9687,7,'preference_section_general'),(9688,7,'preference_preference_data_was_saved'),(9689,7,'preference_preference_data_not_changed'),(9690,7,'preference_no_items'),(9691,7,'preference_mass_mailing_subscribe_label'),(9692,7,'preference_mass_mailing_subscribe_description'),(9695,7,'config_join_display_photo_upload_not_display_label'),(9696,12,'describe_photo'),(9697,12,'add_tags'),(9698,12,'no_photo_selected'),(9699,12,'add_description'),(10850,191,'between'),(10849,191,'auth_group_label'),(15839,7,'questions_question_2b29f145d9d1128a3f57d3af6798fc85_value_8'),(9911,1,'lang_edit_form_rtl_desc'),(9910,1,'lang_edit_form_rtl_label'),(9909,1,'edit_langs_cap_label'),(9908,1,'btn_label_edit_values'),(15983,283,'remove_from_hot_list'),(15982,283,'label_save_btn_label'),(15981,283,'label_remove_btn_label'),(15980,283,'label_no_users'),(15979,283,'label_expiration_time'),(15978,283,'label_add_to_hotlist'),(9870,7,'privacy_action_view_profile'),(9871,1,'core_update_download_error'),(9872,1,'sidebar_menu_item_user_settings'),(9874,1,'menu_item_page_settings'),(19524,1,'themes_choose_page_title'),(9879,1,'page_settings_form_headcode_label'),(9877,1,'settings_submit_error_message'),(9878,1,'settings_submit_success_message'),(9880,1,'page_settings_form_headcode_desc'),(9881,1,'page_settings_form_bottomcode_label'),(9882,1,'page_settings_form_bottomcode_desc'),(9883,1,'page_settings_form_favicon_label'),(9884,1,'page_settings_form_favicon_desc'),(10574,12,'fullsize_resolution'),(10064,12,'enable_advanced_upload'),(10065,12,'advanced_upload'),(10066,12,'simple_upload'),(10068,12,'privacy_action_view_album'),(15780,1,'back_to_theme_list'),(14427,247,'unsubscribe_all_label'),(14421,247,'save_setting_btn_label'),(14420,247,'save_config_btn'),(15218,247,'schedule_automatic'),(14418,247,'email_txt_head'),(14417,247,'email_txt_bottom'),(14416,247,'email_subject'),(14415,247,'email_html_head'),(14414,247,'email_html_description'),(14413,247,'email_html_bottom'),(15219,247,'config_schedule_title'),(14411,247,'console_item_label'),(10844,191,'attache_file_delete_button'),(10253,7,'view_more_label'),(10258,12,'describe_photos'),(10259,12,'advanced_upload_add_more'),(10260,12,'advanced_upload_confirm'),(10261,12,'advanced_upload_processing'),(10262,12,'advanced_upload_uploading'),(10263,12,'advanced_upload_complete'),(10264,12,'advanced_upload_upload'),(10265,12,'advanced_upload_browse'),(10266,7,'ws_button_label_bold'),(10267,7,'ws_button_label_italic'),(10268,7,'ws_button_label_underline'),(10269,7,'ws_button_label_orderedlist'),(10270,7,'ws_button_label_unorderedlist'),(10271,7,'ws_button_label_link'),(10272,7,'ws_button_label_image'),(10273,7,'ws_button_label_video'),(10274,7,'ws_button_label_html'),(10275,7,'ws_button_label_switch_html'),(10281,12,'feed_content_label'),(10282,7,'ws_add_label'),(10283,7,'ws_insert_label'),(10284,7,'ws_link_empty_fields'),(10285,7,'ws_video_head_label'),(15972,283,'error_usercredits_not_installed'),(10287,7,'ws_video_empty_field'),(10288,7,'ws_html_head_label'),(10289,7,'welcome_letter_subject'),(18992,1,'admin_suspend_floatbox_title'),(18993,1,'input_settings_avatar_max_upload_size_label'),(10873,191,'keep_unread_button'),(10575,12,'fullsize_resolution_desc'),(10576,12,'advanced_upload_desc'),(10578,7,'ws_button_label_more'),(10580,1,'feed_content_registration'),(10581,1,'feed_content_edit'),(10689,7,'authorization_action_groups_add_topic'),(10688,7,'authorization_action_groups_add_comment'),(10687,7,'forgot_password_mail_template_content_txt'),(10881,191,'mark_unread_fail_message'),(10882,191,'mark_unread_message'),(10845,191,'attachments'),(10846,191,'attach_files'),(10847,191,'auth_action_label_read_message'),(10848,191,'auth_action_label_send_message'),(10601,1,'menu_item_user_input_settings'),(10602,1,'user_input_settings_user_content'),(10605,1,'user_input_settings_comments'),(10607,1,'user_input_settings_rich_media'),(19453,7,'form_validator_range_error_message'),(10609,1,'input_settings_max_upload_size_label'),(10610,1,'input_settings_resource_list_label'),(10612,7,'ws_html_textarea_label'),(10613,7,'ws_video_textarea_label'),(10614,1,'feed_content_user_comment'),(10618,1,'menu_item_user_settings_general'),(10619,1,'menu_item_user_settings_content_input'),(10666,1,'input_settings_user_rich_media_disable_label'),(10665,1,'input_settings_user_custom_html_disable_desc'),(10664,1,'input_settings_user_custom_html_disable_label'),(10623,1,'input_settings_resource_list_desc'),(10626,7,'privacy_action_view_my_presence_on_site'),(13909,7,'auth_action_add_comment'),(10667,1,'input_settings_user_rich_media_disable_desc'),(10668,1,'input_settings_comments_rich_media_disable_label'),(10669,1,'input_settings_comments_rich_media_disable_desc'),(10685,1,'menu_item_user_settings'),(10686,7,'forgot_password_mail_template_content_html'),(10674,12,'feed_more_items'),(10675,12,'feed_multiple_descriptions'),(10676,1,'page_settings_favicon_submit_error_message'),(10690,7,'authorization_action_groups_create'),(10691,7,'authorization_action_groups_delete_comment_by_content_owner'),(10692,7,'authorization_group_groups'),(10725,1,'join_photo_upload_set_required'),(10726,1,'join_photo_upload_set_required_desc'),(10746,12,'activity_string'),(10747,12,'activity_string_multiple'),(10748,12,'comment_activity_string'),(15830,7,'questions_question_23036b67a077fe7784c7cf4691a96fe3_value_8'),(11631,1,'manage_plugins_add_ftp_move_error'),(10835,1,'found_users'),(10836,1,'search_by'),(15968,283,'admin_heading_settings'),(10920,191,'write_here'),(10921,191,'write_permission_denied'),(10922,191,'you'),(10923,7,'attch_video_add_button_label'),(10924,7,'attch_video_button_label'),(10925,7,'attch_photo_button_label'),(10926,7,'attch_add_video_button_label'),(10927,7,'attch_attachment_label'),(10928,7,'upload_file_max_upload_filesize_error'),(10929,7,'upload_file_file_partially_uploaded_error'),(10930,7,'upload_file_no_file_error'),(10931,7,'upload_file_no_tmp_dir_error'),(10932,7,'upload_file_cant_write_file_error'),(10933,7,'upload_file_invalid_extention_error'),(10934,7,'upload_file_fail'),(11296,7,'comment_required_validator_message'),(11310,7,'sidebar_menu_view_all_questions'),(11311,1,'sidebar_menu_question_settings'),(11312,1,'sidebar_menu_basic_label'),(11313,1,'sidebar_menu_theme_css_label'),(11314,1,'sidebar_menu_pages_menus_label'),(11317,7,'widgets_avaliable_legend'),(11318,7,'widgets_avaliable_description'),(11573,1,'core_update_unzip_error'),(11574,7,'ws_link_text_label'),(11579,1,'page_settings_no_favicon_label'),(11577,7,'ws_link_url_label'),(11578,7,'ws_link_new_window_label'),(11635,7,'max_upload_filesize'),(11701,7,'authorization_action_forum_move_topic_to_hidden'),(15444,274,'pack_deleted'),(15445,274,'pack_list'),(11711,1,'settings_max_upload_size_error'),(11721,7,'mark_email_unverified_btn'),(11722,1,'user_feedback_email_unverified'),(11759,7,'confirm_button'),(11760,7,'cancel_button'),(11761,7,'massmailing_unsubscribe_confirmation'),(11766,7,'user_block_btn_lbl'),(11767,7,'user_unblock_btn_lbl'),(11768,7,'user_feedback_profile_blocked'),(11769,7,'user_feedback_profile_unblocked'),(11770,1,'massmailing_user_roles_label'),(11773,7,'user_block_message'),(13911,1,'restrictedusernames_username_deleted'),(12176,7,'maintenance_disable_message'),(12180,7,'user_block_confirm_message'),(12181,7,'block_user_confirmation_label'),(12866,7,'edit_remote_field_synchronize_title'),(12867,7,'user_search_back_to_search'),(12868,12,'store_full_size'),(12870,1,'themes_add_new_box_cap_label'),(12871,1,'themes_add_theme_page_heading'),(12872,1,'themes_item_add_success_message'),(12873,1,'theme_add_duplicated_dir_error'),(12874,1,'theme_add_extract_error'),(12875,1,'manage_theme_add_extract_error'),(12895,1,'plugin_update_download_error'),(12896,1,'manage_plugins_up_to_date_message'),(12897,1,'manage_plugins_update_process_error'),(12898,1,'plugin_update_request_error'),(12899,1,'manage_plugin_add_extract_error'),(12901,1,'manage_plugins_add_empty_field_error_message'),(13907,7,'custom_html_widget_no_content'),(13278,7,'not_writable_avatar_dir'),(13279,1,'user_settings_big_avatar_size_error'),(13280,1,'user_settings_avatar_size_error'),(19937,287,'settings_page_headeing'),(13938,237,'ads_banners_add_floatbox_label'),(19420,294,'list_string_update'),(19417,294,'feedback_approve_multiple'),(19416,294,'feedback_approve'),(13325,7,'feed_activity_join_profile_string'),(13326,7,'feed_activity_join_profile_string_like'),(13327,7,'disapprove_user_btn'),(13328,7,'approve_user_btn'),(13333,1,'user_feedback_profiles_disapproved'),(13334,1,'user_feedback_profiles_approved'),(13335,12,'feed_activity_photo_string'),(13336,12,'feed_activity_photo_string_like'),(13342,7,'feed_activity_avatar_string_like'),(13343,7,'feed_activity_avatar_string'),(14422,247,'settings_changed'),(14423,247,'settings_edit_label'),(14424,247,'settings_not_changed'),(15221,268,'profile_details'),(15222,268,'map'),(15223,268,'search_result'),(13385,7,'forgot_password_code_exists_error_message'),(13386,7,'upload_file_extension_is_not_allowed'),(13413,7,'ajax_attachment_select_image'),(13414,7,'ajax_attachment_select_image_title'),(15969,283,'are_you_hot_too'),(15970,283,'auth_action_label_add_to_list'),(15971,283,'cmp_widget_number_of_users'),(13501,7,'questions_question_presentation_range_label'),(13538,7,'user_deleted_message'),(14657,7,'comment_form_element_invitation_text'),(15831,7,'questions_question_23036b67a077fe7784c7cf4691a96fe3_value_16'),(15832,7,'questions_question_23036b67a077fe7784c7cf4691a96fe3_value_32'),(15833,7,'questions_question_23036b67a077fe7784c7cf4691a96fe3_value_64'),(14648,1,'cron_configuration_required_notice'),(14644,1,'questions_cant_delete_default_account_type'),(14643,1,'questions_account_type_has_exclusive_questions'),(14642,1,'manage_plugins_install_error_message'),(13669,7,'sort_control_sortby'),(13958,237,'widget_panel_title'),(13957,237,'page_title_ads'),(13956,237,'page_heading_ads'),(13955,237,'banner_position_submit_label'),(13954,237,'auth_group_label'),(13953,237,'auth_action_label_hide_ads'),(15448,274,'price_in_credits'),(15449,274,'profile_toolbar_grant'),(15450,274,'profile_toolbar_item_credits'),(15452,274,'spending_actions'),(15453,274,'tab_actions'),(15454,274,'unset_actions'),(13839,12,'width_validation_error'),(13840,12,'height_validation_error'),(13841,7,'tags_cloud_cap_label'),(13843,7,'quick_links_cap_label'),(15426,274,'earning_actions'),(15125,7,'questions_question_presentation_age_label'),(13912,1,'restrictedusernames_username_already_exists'),(14784,7,'widgets_default_settings_restrict_view'),(14111,1,'msg_lang_invalid_language_tag'),(14112,1,'msg_lang_clone_failed'),(14271,7,'base_invisible_profile_field_tooltip'),(14139,1,'language_activated'),(14140,1,'language_deactivated'),(14138,1,'language_deleted'),(14269,7,'deleted_user'),(14277,7,'cannot_delete_admin_user_message'),(14279,7,'preference_menu_item'),(14281,191,'console_request_item'),(14282,191,'mailbox_console_title'),(14283,191,'view_all'),(14375,1,'console_item_admin_dashboard'),(14376,1,'console_item_manage_pages'),(14377,1,'console_item_manage_plugins'),(14378,1,'console_item_manage_theme'),(14379,1,'console_item_manage_users'),(14382,1,'user_settings_avatar_size'),(14383,1,'user_settings_big_avatar_size'),(14384,7,'base_sign_in_txt'),(14385,7,'console_item_invitations_label'),(14386,7,'console_item_sign_up_label'),(14387,7,'contex_action_comment_delete_label'),(14388,7,'contex_action_user_delete_label'),(14389,7,'delete_user_success_message'),(14390,7,'user_deleted_page_message'),(14391,7,'user_list_chat_now'),(14636,12,'advanced_upload_yes'),(14409,12,'store_fullsize'),(16006,281,'no_matches'),(16005,268,'no_users_found'),(16004,7,'page_6820666'),(14785,7,'widgets_default_settings_access_restrictions'),(14788,7,'tags_input_field_invitation'),(15000,12,'feed_activity_owner_photo_like'),(15006,247,'schedule_immediately'),(15007,247,'schedule_auto'),(15008,247,'schedule_never'),(15220,268,'photo_gallery'),(15012,7,'profile_toolbar_group_moderation'),(15126,7,'questions_question_presentation_birthdate_label'),(15127,7,'questions_question_presentation_radio_label'),(15128,7,'questions_question_presentation_select_label'),(15343,271,'kms_from'),(15130,261,'general_settings'),(15131,261,'guest_list_widget_settings_count'),(15132,261,'months'),(15133,261,'no_guests'),(15134,261,'page_heading_admin'),(15135,261,'settings_updated'),(15136,261,'store_period'),(15137,261,'viewed_profile'),(15138,261,'visited'),(15435,274,'my_credits_quick_link'),(15434,274,'my_credits'),(15431,274,'grant'),(15430,274,'get_credits'),(15429,274,'email_notifications_setting_grant'),(15428,274,'email_notifications_section_label'),(15417,274,'admin_config'),(15765,281,'email_html_head'),(15764,281,'email_html_description'),(19405,247,'dashboard_menu_item'),(19404,247,'console_menu_label'),(15225,7,'profile_view_description'),(15226,12,'meta_description_photo_upload'),(16365,1,'account_type_translation'),(15763,281,'email_html_bottom'),(15762,281,'confirm_delete_text'),(15761,281,'configuration_settings_saved'),(15760,281,'compatibility_with'),(15759,281,'compatibility'),(15758,281,'btn_label_save'),(15757,281,'btn_label_edit'),(15756,281,'btn_label_delete'),(15755,281,'btn_label_add'),(15754,281,'admin_settings_label_send_new_matches'),(15753,281,'admin_settings_label_input_value_week'),(15752,281,'admin_settings_label_input_value_never'),(15751,281,'admin_settings_label_input_value3'),(15750,281,'admin_settings_label_input_value1'),(15749,281,'admin_rules_title_question'),(15748,281,'admin_rules_title_match_question'),(15747,281,'admin_rules_title_coefficient'),(15746,281,'admin_rules_title_add_new_rule'),(15745,281,'admin_rules_no_changes'),(15744,281,'admin_rules_desc_question'),(15743,281,'admin_rules_desc_match_question'),(15742,281,'admin_rules_desc_coefficient'),(15741,281,'admin_rules_delete_successful'),(15740,281,'admin_rules_add_new_invitation'),(15739,281,'admin_page_title_settings'),(15286,7,'questions_question_36e39f917cbcf4fb10aa753186ced60d_description'),(15287,7,'questions_question_36e39f917cbcf4fb10aa753186ced60d_label'),(15288,7,'questions_question_36e39f917cbcf4fb10aa753186ced60d_value_1'),(15289,7,'questions_question_36e39f917cbcf4fb10aa753186ced60d_value_2'),(15290,7,'questions_question_36e39f917cbcf4fb10aa753186ced60d_value_4'),(15858,7,'questions_question_match_6341ee69d879c97cb0c47507a557372c_label'),(15294,7,'users_list_latest_meta_description'),(15295,7,'users_list_online_meta_description'),(15296,7,'users_list_birthdays_meta_description'),(15829,7,'questions_question_23036b67a077fe7784c7cf4691a96fe3_value_4'),(15299,7,'questions_question_a023dd4e406571f6e805e52e5dd9b9ef_value_1'),(15300,7,'questions_question_a023dd4e406571f6e805e52e5dd9b9ef_value_2'),(15301,7,'questions_question_a023dd4e406571f6e805e52e5dd9b9ef_value_4'),(15302,7,'questions_question_a023dd4e406571f6e805e52e5dd9b9ef_value_8'),(15738,281,'admin_page_title_rules'),(15737,281,'admin_page_heading'),(15736,281,'admin_menu_item_settings'),(18543,268,'action_addfriend'),(15306,268,'action_addfriend_signin_required'),(18545,268,'action_follow'),(15308,268,'action_block_signin_required'),(18544,268,'action_block'),(15310,268,'action_follow_signin_required'),(18546,268,'action_removefriend'),(15312,268,'action_removefriend_signin_required'),(18547,268,'action_unblock'),(15314,268,'action_unblock_signin_required'),(18548,268,'action_unfollow'),(15316,268,'action_unfollow_signin_required'),(15317,268,'addfriend_complete_message'),(15318,268,'advanced_search'),(15319,268,'block_complete_message'),(15320,268,'follow_complete_message'),(15321,268,'online_only'),(15322,268,'quick_search'),(15323,268,'removefriend_complete_message'),(15324,268,'unblock_complete_message'),(15325,268,'unfollow_complete_message'),(15326,7,'users_list_user_search_meta_description'),(15328,268,'age'),(15342,271,'general_settings'),(15341,271,'api_key_too_long'),(15340,271,'api_key_description'),(15339,271,'api_key'),(15338,271,'admin_page_heading'),(15451,274,'setup_price_tip'),(15344,271,'map_page_heading'),(15345,271,'miles_from'),(15346,271,'settings_updated'),(15347,271,'users_map_menu_item'),(15377,272,'plan_delete_confirm'),(19776,272,'membershipInfo'),(15380,272,'plugin_configuration_notice'),(15381,272,'price'),(15382,272,'recurring'),(15383,272,'select_role'),(15384,272,'show_on_subscribe'),(15385,272,'subscribe'),(15386,272,'subscribe_page_heading'),(15387,272,'types_deleted'),(15388,272,'types_list'),(15389,272,'type_delete_confirm'),(15390,272,'type_info'),(15391,272,'type_updated'),(15392,7,'authorization_role_bronze'),(15984,283,'settings'),(15985,283,'settings_saved'),(15986,283,'sponsor_btn_label'),(15987,283,'text_remove_from_list'),(15988,283,'usercredits_action_add_to_list'),(15989,283,'userlist'),(15990,283,'user_added'),(15991,283,'user_removed'),(15484,271,'user_list_location_sring'),(15485,271,'map_user_list_view_all_button_label'),(15486,271,'back_to_map'),(15766,281,'email_notifications_send_new_matches'),(15767,281,'email_notifications_send_new_matches_subject'),(15768,281,'email_txt_bottom'),(15769,281,'email_txt_head'),(15770,281,'latest'),(15771,281,'matches_index'),(15772,281,'most_compatible_first'),(15773,281,'newest_first'),(15774,281,'new_rule_form_success_message'),(16003,285,'upload_btn'),(16000,285,'not_enough_photo'),(15535,268,'age_range_incorrect'),(15536,268,'search_label_sex'),(15537,272,'and_more'),(15538,272,'consider_upgrading'),(15539,272,'upgrade'),(15540,272,'your_membership'),(15541,7,'questions_question_aboutme_label'),(15977,283,'label_add_btn_label'),(15976,283,'floatbox_text_remove_from_list'),(15975,283,'floatbox_text'),(15974,283,'floatbox_header_remove_from_list'),(15973,283,'floatbox_header'),(15853,7,'questions_question_31d5d3d7ff420e340cfe3f17c534eba3_value_4'),(15851,7,'questions_question_31d5d3d7ff420e340cfe3f17c534eba3_value_1'),(15852,7,'questions_question_31d5d3d7ff420e340cfe3f17c534eba3_value_2'),(15629,7,'questions_question_6c57ed6692ef576423d610a4ab559ed9_value_1'),(15630,7,'questions_question_6c57ed6692ef576423d610a4ab559ed9_value_2'),(15631,7,'questions_question_6c57ed6692ef576423d610a4ab559ed9_value_4'),(15632,7,'questions_question_6c57ed6692ef576423d610a4ab559ed9_value_8'),(15633,7,'questions_question_6c57ed6692ef576423d610a4ab559ed9_value_16'),(15635,7,'questions_question_6c57ed6692ef576423d610a4ab559ed9_value_64'),(15850,7,'questions_question_31d5d3d7ff420e340cfe3f17c534eba3_label'),(15827,7,'questions_question_23036b67a077fe7784c7cf4691a96fe3_value_1'),(15828,7,'questions_question_23036b67a077fe7784c7cf4691a96fe3_value_2'),(15683,7,'questions_question_fe9f091cbb3e6686aa014888f6250412_value_1'),(15684,7,'questions_question_fe9f091cbb3e6686aa014888f6250412_value_2'),(15685,7,'questions_question_fe9f091cbb3e6686aa014888f6250412_value_4'),(15783,1,'delete_content_warning'),(15784,1,'free_theme_request_text'),(15785,1,'manage_themes_theme_not_found'),(15786,1,'manage_themes_update_process_error'),(15787,1,'manage_themes_update_request_box_cap_label'),(15788,1,'manage_themes_update_success_message'),(15789,1,'manage_themes_up_to_date_message'),(15790,1,'questions_delete_question_parent_confirmation'),(15791,1,'themes_manage_invalid_license_key_error_message'),(15792,1,'theme_update_download_error'),(15793,1,'theme_update_not_available_error'),(15794,1,'theme_update_request_error'),(15842,7,'questions_question_6341ee69d879c97cb0c47507a557372c_label'),(15843,7,'questions_question_6341ee69d879c97cb0c47507a557372c_value_1'),(15844,7,'questions_question_6341ee69d879c97cb0c47507a557372c_value_2'),(15845,7,'questions_question_6341ee69d879c97cb0c47507a557372c_value_4'),(15846,7,'questions_question_6341ee69d879c97cb0c47507a557372c_value_8'),(15847,7,'questions_question_6341ee69d879c97cb0c47507a557372c_value_16'),(15848,7,'questions_question_6341ee69d879c97cb0c47507a557372c_value_32'),(15854,7,'questions_question_31d5d3d7ff420e340cfe3f17c534eba3_value_8'),(15855,7,'questions_question_31d5d3d7ff420e340cfe3f17c534eba3_value_16'),(15856,7,'questions_question_31d5d3d7ff420e340cfe3f17c534eba3_value_32'),(15860,7,'questions_question_match_31d5d3d7ff420e340cfe3f17c534eba3_label'),(15861,7,'questions_question_9f427b5a957edde93cc955fa13971799_description'),(18445,7,'questions_question_9f427b5a957edde93cc955fa13971799_label'),(15864,7,'authorization_role_silver'),(15865,7,'questions_account_type_8c103538900bda26f08d9ccd2aad61f8'),(15874,7,'questions_question_9221d78a4201eac23c972e1d4aa2cee6_label'),(15875,7,'questions_question_a023dd4e406571f6e805e52e5dd9b9ef_description'),(15876,7,'questions_question_a023dd4e406571f6e805e52e5dd9b9ef_label'),(15878,7,'questions_question_c441a8a9b955647cdf4c81562d39068a_label'),(15880,7,'questions_question_c5dc53f371fe6ba3001a7c7e31bd95fc_label'),(15886,7,'questions_question_match_36e39f917cbcf4fb10aa753186ced60d_label'),(15888,7,'questions_question_match_739a83996f701966485290779f4ff2b5_label'),(15890,7,'questions_question_match_a023dd4e406571f6e805e52e5dd9b9ef_label'),(15891,7,'questions_question_match_age_label'),(15893,7,'questions_question_match_c5dc53f371fe6ba3001a7c7e31bd95fc_label'),(15928,7,'questions_question_match_relationship_label'),(15896,7,'questions_section_47f3a94e6cfe733857b31116ce21c337_label'),(15897,7,'questions_section_a9073700994b20e339e21d061c44e5b0_label'),(15898,7,'questions_section_e46697c921740b10b1ac7223a14155b2_label'),(15899,7,'questions_section_location_label'),(15901,7,'questions_question_a69350b819c8dc1d926cba6b58451f5f_label'),(15902,7,'questions_question_a69350b819c8dc1d926cba6b58451f5f_value_1'),(15903,7,'questions_question_a69350b819c8dc1d926cba6b58451f5f_value_2'),(15904,7,'questions_question_a69350b819c8dc1d926cba6b58451f5f_value_4'),(15905,7,'questions_question_a69350b819c8dc1d926cba6b58451f5f_value_8'),(15906,7,'questions_question_a69350b819c8dc1d926cba6b58451f5f_value_16'),(15907,7,'questions_question_a69350b819c8dc1d926cba6b58451f5f_value_32'),(15908,7,'questions_question_a69350b819c8dc1d926cba6b58451f5f_value_64'),(15909,7,'questions_question_a69350b819c8dc1d926cba6b58451f5f_value_128'),(15911,7,'questions_question_match_a69350b819c8dc1d926cba6b58451f5f_label'),(15912,7,'questions_question_a69350b819c8dc1d926cba6b58451f5f_value_256'),(15913,7,'questions_question_6ed883b3412cab27014a0b68ea32f269_description'),(15914,7,'questions_question_6ed883b3412cab27014a0b68ea32f269_label'),(15916,7,'questions_question_118af0f3559b872c87467a5a89edf03e_label'),(15917,7,'questions_question_118af0f3559b872c87467a5a89edf03e_value_1'),(15918,7,'questions_question_118af0f3559b872c87467a5a89edf03e_value_2'),(15919,7,'questions_question_118af0f3559b872c87467a5a89edf03e_value_4'),(15920,7,'questions_question_118af0f3559b872c87467a5a89edf03e_value_8'),(15921,7,'questions_question_118af0f3559b872c87467a5a89edf03e_value_16'),(15922,7,'questions_question_118af0f3559b872c87467a5a89edf03e_value_32'),(15923,7,'questions_question_118af0f3559b872c87467a5a89edf03e_value_64'),(15924,7,'questions_question_118af0f3559b872c87467a5a89edf03e_value_128'),(15925,7,'questions_question_118af0f3559b872c87467a5a89edf03e_value_256'),(15926,7,'questions_question_118af0f3559b872c87467a5a89edf03e_value_512'),(15930,7,'questions_question_match_2b29f145d9d1128a3f57d3af6798fc85_label'),(15932,7,'questions_question_match_118af0f3559b872c87467a5a89edf03e_label'),(15933,7,'questions_question_aboutme_description'),(15993,7,'local_page_title_page_99448870'),(15995,7,'local_page_content_page_99448870'),(16002,285,'to_album_btn'),(16001,285,'photo_album_name'),(16007,247,'dashboard_menu_item_label'),(16008,247,'preferences_legend'),(16009,247,'schedule_title'),(16010,247,'settings_page_heading'),(16011,247,'settings_page_title'),(16012,281,'this_is_unimportant'),(16014,286,'add_category'),(16015,286,'add_template'),(16016,286,'admin_page_heading'),(16017,286,'auth_action_label_send_gift'),(16018,286,'auth_group_label'),(16019,286,'btn_add'),(16020,286,'btn_save'),(16021,286,'btn_send'),(16022,286,'by'),(16023,286,'categories'),(16024,286,'category'),(16025,286,'category_added'),(16026,286,'category_deleted'),(16027,286,'category_list'),(16028,286,'category_not_deleted'),(16029,286,'category_title'),(16030,286,'choose_friends'),(16031,286,'cmp_widget_gifts_count'),(16032,286,'confirm_delete_gifts'),(16033,286,'confirm_template_delete'),(16034,286,'delete_content'),(16035,286,'delete_content_desc'),(16036,286,'delete_content_warning'),(16037,286,'email_notifications_section_label'),(16038,286,'email_notifications_send_gift'),(16039,286,'email_notifications_setting_send_gift'),(16040,286,'existing_gifts'),(16041,286,'feed_activity_gift_string_comment'),(16042,286,'feed_activity_gift_string_like'),(16043,286,'feed_activity_owner_gift_string_comment'),(16044,286,'feed_activity_sender_gift_like'),(16045,286,'feed_content_gift'),(16046,286,'feed_string'),(16047,286,'file_type_not_allowed'),(16048,286,'gifts'),(16049,286,'gift_by'),(16050,286,'gift_deleted'),(16051,286,'gift_image'),(16052,286,'gift_not_selected'),(16053,286,'gift_not_sent'),(16054,286,'gift_price'),(16055,286,'gift_sent'),(16056,286,'gift_sent_to'),(16057,286,'message'),(16058,286,'meta_description_user_gifts'),(16059,286,'meta_description_view_gift'),(16060,286,'meta_description_view_gift_msg'),(16061,286,'meta_title_my_gifts'),(16062,286,'meta_title_user_gifts'),(16063,286,'meta_title_view_gift'),(16064,286,'meta_title_view_gift_msg'),(16065,286,'my_gifts'),(16066,286,'my_gifts_quick_link'),(16067,286,'not_authenticated'),(16068,286,'not_authorized'),(16069,286,'no_gifts'),(16070,286,'no_image_selected'),(16071,286,'no_users_selected'),(16072,286,'page_title_uninstall'),(16073,286,'plugin_set_for_uninstall'),(16074,286,'private_gift'),(16075,286,'private_gift_note'),(16076,286,'profile_toolbar_item_send_gift'),(16077,286,'send_gift'),(16078,286,'send_gift_to'),(16079,286,'send_multiple_gifts_error'),(16080,286,'send_private'),(16081,286,'send_private_gift'),(16082,286,'send_return_gift'),(16083,286,'send_this_gift'),(16084,286,'template_added'),(16085,286,'template_list'),(16086,286,'template_not_added'),(16087,286,'template_updated'),(16088,286,'uncategorized'),(16089,286,'uninstall_inprogress'),(16090,286,'uninstall_inprogress_desc'),(16091,286,'usercredits_action_send_virtual_gift'),(16092,286,'user_gifts'),(16093,7,'questions_question_birthday_label_presentation_age'),(16094,287,'questions_question_sex_label'),(16120,1,'sidebar_menu_mobile'),(16121,7,'accept'),(16122,7,'authorization_role_admin'),(16127,7,'authorization_role_ekip_yesi'),(16128,7,'authorization_role_ewrwe'),(16129,7,'authorization_role_gold'),(16133,7,'authorization_role_ms_test'),(16135,7,'authorization_role_silver1'),(16137,7,'cannot_delete_admin_user_msg'),(16138,7,'desktop_version_menu_item'),(16139,7,'ignore'),(16140,7,'index_menu_item'),(16144,7,'local_page_content_page_81959573'),(16155,7,'local_page_title_page_81959573'),(16158,7,'mobile_disabled_item_message'),(16159,7,'mobile_notifications_console_empty'),(16160,7,'mobile_version_menu_item'),(16161,7,'openwack'),(16167,7,'page_81959573'),(16169,7,'questions_account_type_7f23216f76dfbd9e7f6dacd58ea58beb'),(16178,7,'questions_question_0fe69011e890106732951b49d131490c_label'),(16179,7,'questions_question_0fe69011e890106732951b49d131490c_value_1'),(16180,7,'questions_question_0fe69011e890106732951b49d131490c_value_2'),(16181,7,'questions_question_0fe69011e890106732951b49d131490c_value_4'),(16182,7,'questions_question_0fe69011e890106732951b49d131490c_value_8'),(16214,7,'questions_question_44e544653804655d52235ac14aaa10fb_description'),(16223,7,'questions_question_5eab269060488cd69d49fbe31c9cb0a1_label'),(16235,7,'questions_question_96c41d906ac020757eae6a0ba339e398_label'),(16236,7,'questions_question_96c41d906ac020757eae6a0ba339e398_value_1'),(16237,7,'questions_question_96c41d906ac020757eae6a0ba339e398_value_2'),(16238,7,'questions_question_96c41d906ac020757eae6a0ba339e398_value_4'),(16239,7,'questions_question_96c41d906ac020757eae6a0ba339e398_value_8'),(16270,7,'test'),(16271,7,'wackwall'),(16272,288,'about'),(16273,288,'admin_nav_adding_message'),(16274,288,'admin_nav_bottom_section_label'),(16275,288,'admin_nav_default_menu_name'),(16276,288,'admin_nav_default_page_content'),(16277,288,'admin_nav_default_page_title'),(16278,288,'admin_nav_hidden_section_label'),(16279,288,'admin_nav_item_content_field'),(16280,288,'admin_nav_item_label_field'),(16281,288,'admin_nav_item_title_field'),(16282,288,'admin_nav_new_item_label'),(16283,288,'admin_nav_settings_fb_title'),(16284,288,'admin_nav_top_section_label'),(16285,288,'admin_widgets_hidden_section_label'),(16286,288,'admin_widgets_main_section_label'),(16287,288,'mobile_admin_navigation'),(16288,288,'mobile_admin_pages_dashboard'),(16289,288,'mobile_admin_pages_index'),(16290,288,'mobile_admin_pages_profile'),(16291,288,'mobile_pages_dashboard'),(16292,288,'page_default_heading'),(16293,288,'page_default_title'),(16294,288,'right_sidebar_guest_heading'),(16295,288,'sign_out'),(16296,288,'view_profile'),(16297,288,'widgets_admin_dashboard_heading'),(16298,288,'widgets_admin_index_heading'),(16299,288,'widgets_admin_profile_heading'),(16300,1,'notification_themes_to_update'),(16301,288,'page_is_not_available'),(19374,287,'admin_bottom_text'),(16303,287,'admin_license_info_cap'),(16304,287,'check_btn_label'),(16305,287,'form_enter_key'),(16306,287,'info_brand_label'),(16307,287,'info_created_label'),(16308,287,'info_dir_label'),(16309,287,'info_domain_label'),(16310,287,'info_expires_label'),(16311,287,'info_ip_label'),(16312,287,'info_lkey_label'),(16313,287,'info_name_label'),(19375,287,'invalid_key_text'),(16315,287,'invalid_license_key'),(16316,287,'license_key_valid'),(16317,287,'ucarousel_settings_list'),(16318,287,'ucarousel_settings_list_featured'),(16319,287,'ucarousel_settings_list_latest'),(16320,287,'ucarousel_settings_list_online'),(16321,287,'ucarousel_widget_title'),(16322,287,'validation_failed'),(16323,274,'action'),(16324,274,'buy_more'),(16325,274,'ccbill_subaccount_label'),(16326,274,'date'),(16327,274,'earn_credits'),(16328,274,'history'),(16329,274,'select_account_type'),(16330,274,'view_more'),(16331,12,'choose_album'),(16332,12,'create_album'),(16334,12,'mobile_choose_photo'),(16335,12,'mobile_photo'),(16336,12,'mobile_replace_photo'),(16337,268,'age_range_incorrect_values'),(16338,191,'usercredits_action_read_message'),(16339,247,'config_day_desc'),(16340,247,'config_day_label'),(16341,247,'config_hour_desc'),(16342,247,'config_hour_label'),(16343,247,'config_page_heading'),(16344,247,'config_page_title'),(16345,247,'config_saved_message'),(16346,247,'config_title'),(16347,247,'schedule_daily'),(16348,247,'schedule_weekly'),(16361,271,'events_browse_page_title'),(16362,271,'events_map_label'),(16363,271,'event_browse_page_heading'),(16372,1,'error_ftp_function_is_not_available'),(16373,1,'error_invalid_credentials_provided'),(19515,1,'sidebar_menu_item_pages_manage'),(16375,1,'input_settings_attch_ext_list_desc'),(16376,1,'input_settings_attch_ext_list_label'),(16377,1,'input_settings_attch_max_upload_size_label'),(16378,1,'manage_plugin_cant_add_duplicate_key_error'),(16379,1,'mobile_settings_mobile_context_disable_desc'),(16380,1,'mobile_settings_mobile_context_disable_label'),(19514,1,'sidebar_menu_pages'),(16382,1,'possible_values_disable_message'),(16383,1,'questions_account_type_was_updated'),(16384,1,'questions_add_account_type_title'),(16385,1,'questions_add_edit_type_title'),(16386,1,'questions_add_profile_question_title'),(16387,1,'questions_add_question_button'),(16388,1,'questions_add_section_button'),(16389,1,'questions_admin_add_new_values'),(16390,1,'questions_delete_account_type_confirmation'),(16391,1,'questions_edit_account_type_title'),(16392,1,'questions_edit_profile_question_title'),(16393,1,'questions_matched_question_values'),(16394,1,'questions_page_description'),(16395,1,'questions_possible_values_label'),(16396,1,'questions_save_account_type'),(16397,1,'question_menu_account_types'),(16398,1,'question_menu_properties'),(16399,1,'question_possible_values_label'),(16400,1,'themes_cant_delete_active_theme'),(16401,1,'themes_cant_delete_default_theme'),(16402,1,'themes_choose_delete_button_label'),(16403,1,'themes_choose_delete_confirm_msg'),(16404,1,'themes_delete_success_message'),(16405,1,'user_input_settings_attachments'),(16407,7,'authorization_action_promotion'),(16408,7,'authorization_limited_permissions'),(16455,7,'avatar_back_profile_edit'),(16456,7,'base+questions_add_account_type'),(16457,7,'base_document_auth_failed_heading'),(16458,7,'btn_label_send'),(16459,7,'comment_load_more_label'),(16460,7,'complete_profile'),(16461,7,'complete_profile_info'),(16462,7,'complete_your_profile_page_heading'),(16463,7,'complite_profile'),(16464,7,'continue_button'),(16465,7,'empty_comment_error_msg'),(16466,7,'feed_activity_avatar_string_like_own'),(16467,7,'feed_activity_avatar_string_own'),(18439,7,'required_profile_questions'),(18440,288,'mobile_admin_settings'),(18441,7,'questions_account_type_808aa8ca354f51c5a3868dad5298cd72'),(18442,7,'questions_account_type_8cc28eaddb382d7c6a94aeea9ec029fb'),(18443,287,'preview_match_sex_values'),(18444,287,'preview_sex_values'),(18446,283,'add_to_list'),(18447,283,'auth_group_label'),(18448,274,'disable'),(18449,274,'enable'),(18450,274,'product_id'),(18451,274,'user_received_credits'),(18452,274,'user_spent_credits'),(18453,274,'credits_history_page_heading'),(18454,272,'add_paid_plan'),(18455,272,'add_trial_plan'),(18456,272,'after_deleting_membership'),(18457,272,'create_membership_plan'),(18458,272,'days_left'),(18459,272,'delete'),(18460,272,'delete_membership'),(18461,272,'edit_membership'),(18462,272,'for_account_type'),(18463,272,'manage_membership_plans'),(18464,272,'period_required'),(19773,272,'plan_struct_recurring'),(18466,272,'product_id'),(18467,272,'select_auth_role'),(18468,272,'set'),(18469,272,'set_membership'),(18470,272,'set_period'),(18471,272,'trial'),(19771,272,'months'),(18473,272,'trial_used_error'),(18474,272,'user_membership_updated'),(18475,12,'admin_menu_view'),(18476,12,'album_my_photos'),(18477,12,'album_name'),(18478,12,'album_quota_exceeded'),(18479,12,'are_you_sure'),(18480,12,'check_all'),(18481,12,'choose_existing_or_create'),(18482,12,'close_alert'),(18483,12,'cover_original'),(18484,12,'cover_preview'),(18485,12,'crop_photo_title'),(18486,12,'delete_photo'),(18487,12,'delete_selected'),(18488,12,'dnd_not_support'),(18489,12,'dnd_support'),(18490,12,'done'),(18491,12,'download_accept_label'),(18492,12,'download_photo'),(18493,12,'drop_here'),(18494,12,'edit_cover_label'),(18495,12,'effects'),(18496,12,'effect_fade'),(18497,12,'effect_slide'),(18498,12,'error_cant_write'),(18499,12,'error_extension'),(18500,12,'error_form_size'),(18501,12,'error_ini_size'),(18502,12,'error_no_file'),(18503,12,'error_no_tmp_dir'),(18504,12,'error_partial'),(18505,12,'feed_move_photo_descriptions'),(18506,12,'feed_single_description'),(18507,12,'menu_albums'),(18508,12,'menu_explore'),(18509,12,'menu_my_photos'),(18510,12,'menu_photos'),(18511,12,'move_to_album'),(18512,12,'move_to_new_album'),(18513,12,'newsfeed_album'),(18514,12,'newsfeed_album_error_msg'),(18515,12,'no_items'),(18516,12,'permission_exceeded'),(18517,12,'photo_success_moved'),(18518,12,'play_pause'),(18519,12,'please_wait'),(18520,12,'rating'),(18521,12,'rating_total'),(18522,12,'rating_your'),(18523,12,'save_as_avatar'),(18524,12,'save_as_cover'),(18525,12,'search_invitation'),(18526,12,'search_result_empty'),(18527,12,'select_one_photo_warning'),(18528,12,'set_as_album_cover'),(18529,12,'set_as_cover_label'),(18530,12,'show_by'),(18531,12,'slideshow_interval'),(18532,12,'slideshow_settings'),(18533,12,'to_small_cover_img'),(18534,12,'type_error'),(18535,271,'auto_fill_location_on_search'),(18537,271,'distanse_units'),(18539,271,'kms'),(18540,271,'miles'),(18541,268,'admin_empty_position'),(18542,268,'admin_settings_description'),(18549,191,'about_hour'),(18550,191,'about_hours'),(18551,191,'about_minute'),(18552,191,'about_month'),(18553,191,'about_year'),(18554,191,'admin_settings_title'),(18555,191,'ago'),(18556,191,'attachment'),(18557,191,'auth_action_label_chat'),(18558,191,'auth_action_label_read_chat_message'),(18559,191,'auth_action_label_read_message_alt'),(18560,191,'auth_action_label_reply_to_chat_message'),(18561,191,'auth_action_label_reply_to_message'),(18562,191,'auth_action_label_reply_to_message_alt'),(18563,191,'auth_action_label_send_chat_message'),(18564,191,'auth_action_label_send_message_alt'),(18565,191,'auth_action_label_use_chat'),(18566,191,'a_day'),(18567,191,'change_privacy_settings'),(18568,191,'chat'),(18569,191,'chat_message_empty'),(18570,191,'chat_subject_prefix'),(18571,191,'click_to_read_messages'),(18572,191,'confirm_conversation_delete'),(18573,191,'confirm_delete_im'),(18574,191,'conversations'),(18575,191,'conversation_empty'),(18576,191,'conversation_item_list_empty'),(18577,191,'conversation_not_found'),(18578,191,'days'),(18579,191,'delete_chat'),(18580,191,'delete_chat_desc'),(18581,191,'delete_content_warning'),(18582,191,'delete_conversation_title'),(19683,191,'close_new_message_window_confirmation'),(18585,191,'enable_sound_label'),(18586,191,'find_contact'),(18587,191,'friends_online'),(18588,191,'from_now'),(18589,191,'general_settings_title'),(18590,191,'label_btn_chat'),(18591,191,'label_btn_mail'),(18592,191,'label_btn_mailchat'),(18593,191,'label_btn_new_message'),(18594,191,'label_invitation_conversation_search'),(18595,191,'last_message_sent'),(18596,191,'less_than_minute'),(18597,191,'load_earlier'),(18598,191,'mail_subject_prefix'),(18599,191,'mark_unread_conversation_title'),(18600,191,'messages_console_title'),(18601,191,'message_was_not_authorized'),(18602,191,'minutes'),(18603,191,'months'),(18604,191,'msg_settings_saved'),(18605,191,'new_message'),(18606,191,'new_message_count'),(18607,191,'new_message_title'),(18608,191,'no_contacts_online'),(18609,191,'others_online'),(18610,191,'page_heading_messages'),(18611,191,'page_title_uninstall'),(18612,191,'plugin_configuration_notice'),(18613,191,'plugin_installation_notice'),(18614,191,'plugin_set_for_uninstall'),(18615,191,'privacy_action_invite_to_chat'),(18616,191,'read_message_permission_denied'),(18617,191,'read_the_message'),(18618,191,'recipient_is_required'),(18619,191,'reply_to_message_permission_denied'),(18620,191,'save_btn'),(18621,191,'send'),(18622,191,'send_message'),(18623,191,'send_message_failed'),(18624,191,'send_message_permission_denied'),(18625,191,'settings'),(18626,191,'settings_desc_show_all_members'),(18627,191,'settings_friends_only_label'),(18628,191,'settings_label_active_mode_list'),(18629,191,'settings_label_show_all_members'),(18630,191,'settings_saved'),(18631,191,'show_all_users'),(18632,191,'show_online_only'),(18633,191,'status_invisible_label'),(18634,191,'subject_is_required'),(18635,191,'switch_to_chat_mode'),(18636,191,'text_message_invitation'),(18637,191,'uninstall_inprogress'),(18638,191,'uninstall_inprogress_desc'),(18639,191,'usercredits_action_read_chat_message'),(18640,191,'usercredits_action_reply_to_chat_message'),(18641,191,'usercredits_action_reply_to_message'),(18642,191,'usercredits_action_send_chat_message'),(18643,191,'userlist'),(18644,191,'user_is_deleted'),(18645,191,'user_is_not_approved'),(18646,191,'user_is_not_authorized_chat'),(18647,191,'user_is_not_authorized_read_messages'),(18648,191,'user_is_not_verified'),(18649,191,'user_is_offline'),(18650,191,'user_is_online'),(18651,191,'user_is_suspended'),(18652,191,'user_is_unreachable'),(18653,191,'user_not_found'),(18654,191,'user_offline'),(18655,191,'user_settings_link'),(18656,191,'user_settings_submit_label'),(18657,191,'user_settings_title'),(18658,191,'user_went_offline'),(18659,191,'use_chat'),(18660,191,'use_chat_permission_denied'),(18661,191,'warning_user_privacy_friends_only'),(18662,191,'years'),(18663,281,'account_types_checkbox_content'),(18664,281,'admin_rules_create_match_question'),(18665,281,'admin_rules_manage_create_desc'),(18666,281,'admin_rules_manage_create_other'),(18667,281,'admin_rules_manage_matched_questions'),(18668,281,'admin_rules_manage_match_questions'),(18669,281,'admin_rules_manage_question_property'),(18670,281,'admin_rules_title_properties'),(18671,281,'btn_label_remove'),(18672,281,'matchmaking_preferences'),(18673,281,'match_question_lang_prefix'),(18674,281,'no_questions'),(18675,281,'preferences_invitation'),(18676,281,'preferences_page_heading'),(18677,281,'preferences_page_title'),(18678,281,'questions_general_label'),(18679,281,'view_match_section_label'),(18680,285,'save_settings_btn_label'),(18681,285,'settings_btn_label'),(18682,285,'settings_saved_message'),(18683,285,'source_album_label'),(18684,285,'source_all_label'),(18685,285,'not_enough_photo_tip'),(18686,285,'settings_album_invitation'),(18687,285,'settings_album_not_enough_photos'),(18688,285,'settings_album_required'),(18690,7,'questions_add_account_type'),(18692,289,'activity'),(18693,289,'email_html_bottom'),(18694,289,'email_html_description'),(18695,289,'email_html_head'),(18696,289,'email_notify_subject'),(18697,289,'error_message_not_in_range'),(18698,289,'general_heading_title'),(18699,289,'general_menu_item_label'),(18700,289,'latest'),(18701,289,'list_headint_title'),(18702,289,'marked_notify_message'),(18703,289,'mark_toolbar_label'),(18704,289,'notify_interval_desc'),(18705,289,'notify_interval_label'),(18706,289,'notify_settings_section_label'),(18707,289,'online'),(18708,289,'quick_link_index'),(18709,289,'remainderinterval_10'),(18710,289,'remainderinterval_20'),(18711,289,'remainderinterval_30'),(18712,289,'remainderinterval_dont_send'),(18713,289,'settings_saved'),(18714,289,'submit_label'),(18715,289,'unmarked_notify_message'),(18716,289,'unmark_toolbar_label'),(18717,289,'view_all'),(18718,289,'view_more_label'),(18719,289,'widget_title'),(18720,289,'widget_user_count_label'),(18721,290,'accept_request'),(18722,290,'accept_wink_msg'),(18723,290,'console_winks_title'),(18724,290,'console_wink_accepted_your_item'),(18725,290,'console_wink_accept_item'),(18726,290,'console_wink_wait_item'),(18727,290,'ignore_request'),(18728,290,'msg_accept_request'),(18729,290,'msg_ignore_request'),(18730,290,'not_in_interact_error_msg'),(18731,290,'send_message'),(18732,290,'winked_back_msg'),(18733,290,'wink_back_label'),(18734,290,'wink_back_message'),(18735,290,'wink_back_message_owner'),(18736,290,'wink_double_sent_error'),(18737,290,'wink_label'),(18738,290,'wink_sent_error'),(18739,290,'wink_sent_label'),(18740,290,'wink_sent_success_msg'),(18741,291,'admin_index_heading'),(18742,291,'admin_index_property_id_save_error_message'),(18743,291,'admin_index_property_id_save_success_message'),(18744,291,'admin_notification_text'),(18745,291,'admin_settings_section_label'),(18746,291,'admin_settings_web_property_id_desc'),(18747,291,'admin_settings_web_property_id_label'),(18748,291,'admin_sidebar_menu_label'),(18749,292,'admin_dept_heading'),(18750,292,'admin_dept_title'),(18751,292,'after_install_notification'),(18752,292,'bottom_menu_item'),(18753,292,'form_add_dept_submit'),(18754,292,'form_label_captcha'),(18755,292,'form_label_from'),(18756,292,'form_label_message'),(18757,292,'form_label_subject'),(18758,292,'form_label_submit'),(18759,292,'form_label_to'),(18760,292,'index_page_heading'),(18761,292,'index_page_title'),(18762,292,'label_invitation_email'),(18763,292,'label_invitation_label'),(18764,292,'message_sent'),(18765,292,'no_department'),(18767,1,'questions_cant_delete_last_account_type'),(18768,1,'themes_admin_list_cap_title'),(18769,7,'comments_see_more_label'),(18770,7,'no_items'),(18771,7,'or'),(18774,7,'questions_admin_add_new_values'),(18775,7,'questions_edit_description_label_title'),(18776,7,'questions_edit_question_label_title'),(18777,7,'questions_edit_question_value_title'),(18873,7,'submit_attachment_not_loaded'),(18874,288,'admin_nav_item_type_external'),(18875,288,'admin_nav_item_type_field'),(18876,288,'admin_nav_item_type_local'),(18877,288,'admin_nav_item_url_field'),(18878,288,'mobile_join_promo'),(18879,287,'photo_filter_section_label'),(18880,287,'photo_setting_matching_desc'),(18881,287,'photo_setting_matching_label'),(18882,287,'soft_version'),(18883,287,'speedmatch_mutual_message'),(18884,283,'floatbox_text_simple'),(18885,283,'yes_btn_label'),(18886,274,'pack_purchase_notification_html'),(18887,274,'pack_purchase_notification_subject'),(18888,274,'pack_purchase_notification_text'),(18889,272,'admin_menu_settings'),(18890,272,'admin_page_heading_settings'),(18891,272,'notifications'),(18892,272,'plan_expired_notification_html'),(18893,272,'plan_expired_notification_subject'),(18894,272,'plan_expired_notification_text'),(18895,272,'plan_expires_notification_html'),(18896,272,'plan_expires_notification_subject'),(18897,272,'plan_expires_notification_text'),(18898,272,'plan_expires_today_notification_html'),(18899,272,'plan_expires_today_notification_subject'),(18900,272,'plan_expires_today_notification_text'),(18901,272,'plan_purchase_notification_html'),(18902,272,'plan_purchase_notification_subject'),(18903,272,'plan_purchase_notification_text'),(18904,272,'plan_renewed_notification_html'),(18905,272,'plan_renewed_notification_subject'),(18906,272,'plan_renewed_notification_text'),(18907,272,'remind_expiration'),(18908,272,'settings_updated'),(18909,12,'auth_edit_permissions'),(18910,12,'menu_most_discussed'),(18911,12,'meta_title_photo_most_discussed'),(18912,12,'comment_count'),(18913,268,'days_ago'),(18914,268,'distance'),(19674,268,'mobile_no_users_found'),(18916,268,'general_settings'),(18917,268,'hide_user_activity'),(18918,268,'kms'),(18919,268,'latest'),(18920,268,'load_earlier_profiles'),(18921,268,'match_compatibility'),(19677,268,'quick_search_button_label'),(19675,268,'mobile_no_users_txt'),(18924,268,'miles'),(18925,268,'order_distance'),(18926,268,'order_latest_activity'),(19676,268,'new_search'),(18928,268,'order_recently_joined'),(18929,268,'quick_search_settings'),(18930,268,'recently_joined'),(18931,268,'save'),(18932,268,'settings_saved'),(18933,268,'sort_setting'),(18934,268,'user_list'),(18935,268,'user_list_join_date'),(18936,268,'view_settings'),(18937,268,'with_photo'),(18938,191,'api_read_the_message'),(18939,191,'messages_email_notifications_new_chat_message'),(18940,191,'messages_email_notifications_new_message'),(18941,191,'messages_email_notifications_section_label'),(18942,191,'message_invitation'),(18943,191,'new_message_to'),(18944,290,'wink_back_email_html_content'),(18945,290,'wink_back_email_subject'),(18946,290,'wink_back_email_text_content'),(18947,290,'wink_email_notifications_new_message'),(18948,290,'wink_send_email_html_content'),(19409,290,'wink_send_email_subject'),(18950,290,'wink_send_email_text_content'),(18994,1,'manage_plugins_add_size_error_message'),(18995,1,'manage_themes_add_empty_field_error_message'),(18996,1,'questions_delete_section_confirmation_with_move_questions'),(18997,1,'set_suspend_message_label'),(18998,7,'auth_group_label'),(18999,7,'avatar_changed'),(19000,7,'avatar_choose_from_library'),(19001,7,'avatar_drop_single_image'),(19002,7,'avatar_has_been_approved'),(19003,7,'avatar_image_too_small'),(19004,7,'avatar_pending_approval'),(19005,7,'avatar_update_string'),(19006,7,'back'),(19007,7,'check_all_to'),(19008,7,'comment_added_string'),(19009,7,'comment_content_label'),(19010,7,'content_avatars_label'),(19011,7,'content_avatar_label'),(19012,7,'content_comments_label'),(19013,7,'content_comment_label'),(19014,7,'content_profiles_label'),(19015,7,'content_profile_label'),(19016,7,'crop_avatar_failed'),(19017,7,'drag_image_or_browse'),(19018,7,'drop_image_here'),(19019,7,'flagged_time'),(19020,7,'input_settings_avatar_max_upload_size_label'),(19073,7,'moderation_action'),(19074,7,'moderation_delete_confirmation'),(19075,7,'moderation_delete_multiple_confirmation'),(19076,7,'moderation_feedback_delete'),(19077,7,'moderation_feedback_delete_multiple'),(19078,7,'moderation_feedback_unflag'),(19079,7,'moderation_feedback_unflag_multiple'),(19080,7,'moderation_flags_item_string'),(19081,7,'moderation_no_items'),(19082,7,'moderation_no_items_warning'),(19083,7,'moderation_panel'),(19084,7,'moderation_reason'),(19085,7,'moderation_reporter'),(19086,7,'moderation_tools'),(19103,7,'pending_approval'),(19357,7,'questions_question_password_description'),(19362,7,'set_suspend_message_label'),(19454,7,'suspend_floatbox_title'),(19364,7,'suspend_notification_html'),(19365,7,'suspend_notification_subject'),(19366,7,'suspend_notification_text'),(19367,7,'unflag'),(19368,7,'welcome_letter_template_html'),(19369,7,'welcome_letter_template_text'),(19370,7,'welcome_widget_content'),(19371,7,'welcome_widget_legend'),(19372,7,'welcome_widget_title'),(19373,237,'ads_label'),(19456,287,'welcome_letter_template_text'),(19455,287,'welcome_letter_template_html'),(19378,272,'date_time_in_hours'),(19379,272,'date_time_in_minutes'),(19380,272,'date_time_in_one_hour'),(19381,272,'date_time_in_one_minute'),(19382,272,'date_time_tomorrow'),(19383,12,'add_photos'),(19384,12,'approve_photo'),(19385,12,'content_add_string'),(19386,12,'content_edited_string'),(19387,12,'content_group_label'),(19388,12,'content_photo_label'),(19389,12,'meta_description_photo_most_discussed'),(19390,12,'pending_approval'),(19391,12,'photos_uploaded_pending_approval'),(19392,12,'photo_uploaded_pending_approval'),(19393,191,'actions'),(19394,191,'bulk_delete_conversations_btn'),(19395,191,'bulk_mark_as_read_btn'),(19396,191,'bulk_mark_unread_btn'),(19397,191,'bulk_options'),(19398,191,'can_not_display_entitytype_message'),(19399,191,'check_all'),(19400,191,'feedback_send_message_interval_exceed'),(19401,191,'settings_label_send_message_interval'),(19402,191,'settings_label_send_message_interval_seconds'),(19403,191,'write_reply'),(19406,247,'setup_page_heading'),(19407,247,'setup_page_title'),(19408,285,'setting_fb_title'),(19423,1,'add_password'),(19447,1,'change_password'),(19452,7,'join_index_new_to_site'),(19457,287,'welcome_widget_content'),(19461,271,'country_restriction_description'),(19462,271,'country_restriction_label'),(19464,271,'no_country_restriction'),(19465,271,'widget_map_title'),(19466,271,'widget_settings_map_center_lat'),(19467,271,'widget_settings_map_center_lng'),(19468,271,'widget_settings_map_height'),(19469,271,'widget_settings_map_zoom'),(19470,191,'wink_conversation_subject'),(19471,7,'ws_error_video'),(19472,7,'invalid_file_type_acceptable_file_types_jpg_png_gif'),(19473,7,'ws_video_text_label'),(19501,1,'smtp_test_connection_failed'),(19503,1,'permissions'),(19504,1,'sidebar_menu_item_content_settings'),(19505,1,'sidebar_menu_item_general'),(19506,1,'sidebar_menu_item_manage_pages'),(19507,1,'sidebar_menu_item_page_settings'),(19508,1,'sidebar_menu_item_smtp_settings'),(19509,1,'sidebar_menu_item_special_pages'),(19510,1,'sidebar_menu_item_themes'),(19511,1,'sidebar_menu_item_themes_customize'),(19512,1,'sidebar_menu_main'),(19522,1,'heading_page_settings'),(19532,1,'manage_plugins_available_box_cap_label'),(19533,1,'manage_plugins_add_box_cap_label'),(19534,1,'page_title_available_plugins'),(19535,1,'page_title_add_new_plugin'),(19536,1,'page_title_mobile_menus'),(19537,1,'heading_mobile_settings'),(19538,1,'mobile_settings_tabe_heading'),(19539,1,'admin_dashboard'),(19540,1,'admin_password'),(19541,1,'permissions_index_save'),(19542,1,'permission_global_privacy_settings_success_message'),(19543,1,'question_settings_updated'),(19544,1,'site_password'),(19545,1,'splash_screen_page_heading'),(19546,1,'splash_screen_page_title'),(19547,1,'splash_screen_submit_success_message'),(19548,1,'all_files'),(19549,1,'copy_url'),(19550,1,'delete_image'),(19551,1,'undefined_action'),(19552,1,'not_enough_params'),(19553,1,'no_photo_selected'),(19554,1,'select_mode'),(19555,1,'delete_selected'),(19556,1,'exit_select_mode'),(19557,1,'period'),(19558,1,'all_time'),(19559,1,'title'),(19560,1,'url'),(19561,1,'date'),(19562,1,'size'),(19563,1,'filesize'),(19564,1,'upload_date'),(19565,1,'confirm_delete_images'),(19566,1,'no_items'),(19567,1,'album'),(19568,1,'confirm_delete'),(19569,1,'describe_photo'),(19570,1,'dnd_not_support'),(19571,1,'dnd_support'),(19572,1,'drop_here'),(19573,1,'error_cant_write'),(19574,1,'error_extension'),(19575,1,'error_form_size'),(19576,1,'error_ini_size'),(19577,1,'error_no_file'),(19578,1,'error_no_tmp_dir'),(19579,1,'error_partial'),(19580,1,'mark_featured'),(19581,1,'not_all_photos_uploaded'),(19582,1,'no_photo_uploaded'),(19583,1,'of'),(19584,1,'pending_approval'),(19585,1,'photos_uploaded'),(19586,1,'photo_upload_error'),(19587,1,'please_wait'),(19588,1,'rating_total'),(19589,1,'rating_your'),(19590,1,'remove_from_featured'),(19591,1,'size_limit'),(19592,1,'slideshow_interval'),(19593,1,'tb_edit_photo'),(19594,1,'type_error'),(19595,1,'widget_content_statistics'),(19596,1,'widget_content_statistics_default_content_group'),(19597,1,'site_statistics_today_period'),(19598,1,'site_statistics_yesterday_period'),(19599,1,'site_statistics_last_7_days_period'),(19600,1,'site_statistics_last_30_days_period'),(19601,1,'site_statistics_last_year_period'),(19602,1,'site_statistics_default_period'),(19603,1,'widget_user_statistics'),(19604,1,'site_statistics_user_registrations'),(19605,1,'site_statistics_user_logins'),(19606,1,'statistics_amount_for_period'),(19607,1,'site_statistics_finance_transactions'),(19608,1,'site_statistics_finance_transactions_amount'),(19609,1,'widget_finance_statistics'),(19610,1,'statistics_history'),(19611,1,'statistics_browse_users'),(19612,1,'item_license_request_box_cap_label'),(19613,1,'item_update_request_platform_update_warning'),(19614,1,'license_form_back_label'),(19615,1,'license_form_button_label'),(19616,1,'license_request_text'),(19617,288,'menu_item_dashboard'),(19618,1,'site_password_letter_subject'),(19619,1,'site_password_letter_template_html'),(19620,1,'site_password_letter_template_text'),(19621,287,'mobile_experience_widget_title'),(19622,287,'ios_label'),(19623,287,'android_label'),(19624,287,'banners_label'),(19625,287,'show_first_label'),(19626,287,'app_title'),(19627,287,'app_author'),(19628,287,'app_button_label'),(19629,287,'promo_image'),(19630,287,'promo_image_deleted'),(19631,287,'promo_image_upload_success'),(19632,287,'promo_image_upload_error'),(19633,6,'mobile_terms_of_use_title'),(19634,6,'mobile_terms_of_use'),(19635,6,'mobile_terms_of_use_content'),(19636,287,'speedmatch_subject'),(19637,287,'turquoise_index_join'),(19638,287,'turquoise_index_join_text'),(19695,287,'turquoise_index_mobile'),(19641,283,'label_add_yourself_to_hotlist'),(19642,283,'label_remove_yourself_from_hotlist'),(19665,274,'usercredits_action_buy_credits'),(19644,274,'cost_of_actions'),(19645,274,'history_grant_by_user'),(19646,274,'history_grant_to_user'),(19647,274,'save'),(19648,274,'settings'),(19664,274,'settings_saved'),(19651,274,'usercredits_action_grant_by_user'),(19652,274,'usercredits_action_grant_to_user'),(19653,274,'usercredits_action_set_by_admin'),(19654,274,'widget_credit_statistics'),(19655,274,'statistics_credit_purchased'),(19656,274,'statistics_credit_spent'),(19657,274,'statistics_browse_history'),(19658,274,'purchase_history'),(19659,274,'user'),(19660,274,'credit_pack'),(19661,274,'amount'),(19662,274,'history_empty'),(19666,274,'actions_description'),(19667,261,'ocsguests_menu_item'),(19668,12,'album_description'),(19671,271,'distance_validator_error'),(19672,271,'browse_users_page_heading'),(19673,271,'events_widget_label'),(19678,268,'mobile_menu_item_search'),(19679,268,'order_match_compatibitity'),(19680,268,'match_compatibitity'),(19681,268,'match_compatibitity_description'),(19682,268,'distance_description'),(19684,191,'silent_mode_off'),(19685,191,'silent_mode_on'),(19686,191,'read_chat_message_permission_denied'),(19687,191,'reply_to_chat_message_permission_denied'),(19688,191,'send_chat_message_permission_denied'),(19796,191,'send_message_promoted'),(19797,191,'reply_to_message_promoted'),(19798,191,'send_chat_message_promoted'),(19693,281,'matches_mobile_index'),(19694,290,'accept_or_ignore'),(19696,287,'turquoise_index_match'),(19697,1,'captcha_settings'),(19698,1,'display_captcha_label'),(19699,7,'edit_profile_warning'),(19700,7,'moderation_user_update'),(19701,7,'message_label'),(19702,7,'subject_label'),(19703,7,'send_message_to_email'),(19704,7,'write_message'),(19705,7,'save_and_approve'),(19706,7,'message_send'),(19707,7,'invalid_user'),(19708,7,'empty_subject'),(19709,7,'empty_message'),(19710,7,'delete_user_feedback'),(19711,7,'message_invitation'),(19712,1,'admin_password_html'),(19928,298,'save_btn_label'),(19927,298,'register_app_success'),(19737,1,'invalid _license_item_notification'),(19759,1,'mail_template_admin_invalid_license_content_text'),(19754,1,'changelog_heading'),(19760,1,'mail_template_admin_invalid_license_subject'),(19741,1,'manage_plugins_add_license_label'),(19926,298,'register_app_failed'),(19744,1,'plugins_manage_license_key_check_success'),(19923,298,'login_success_msg'),(19746,1,'questions_infinite_possible_values_description'),(19747,1,'questions_infinite_possible_values_label'),(19748,1,'questions_values_should_not_be_empty'),(19922,298,'join_success_msg'),(19750,7,'authorization_role_grey'),(19751,7,'sing_in_to_flag'),(19752,7,'questions_question_presentation_fselect_label'),(19753,7,'themes_item_add_success_message'),(19758,1,'mail_template_admin_invalid_license_content_html'),(19756,1,'url_copied'),(19757,1,'press_ctrl_c'),(19765,274,'credits_opportunity'),(19762,274,'payment_method'),(19763,274,'subscribe_page_heading_mobile'),(19764,274,'your_selection'),(19767,274,'pack_title'),(19768,274,'payment_provider'),(19769,274,'proceed'),(19770,274,'subscribe_page_heading'),(19774,272,'plan_struct_trial'),(19775,272,'trial_granted'),(19777,272,'memberships'),(19778,272,'membership_and_credits'),(19779,272,'payment_method'),(19780,272,'payment_provider'),(19781,272,'plan_struct'),(19782,272,'proceed'),(19783,272,'subscribe_page_heading_mobile'),(19784,272,'your_selection'),(19785,271,'auto_fill_location_on_search_description'),(19786,271,'bing'),(19787,271,'bing_api_key_description'),(19788,271,'bing_api_key_label'),(19789,271,'distanse_units_description'),(19790,271,'google'),(19791,271,'map_provider_label'),(19792,268,'search_options'),(19793,268,'enable_username_search'),(19794,268,'username'),(19795,268,'search_by_username'),(19799,191,'reply_to_chat_message_promoted'),(19800,281,'distance_from_my_location_label'),(19801,281,'location'),(19802,294,'console_for_approval'),(19921,298,'join_incorrect_username'),(19920,298,'join_incomplete'),(19919,298,'join_dublicate_email_msg'),(19915,298,'connect_mobile_btn_label'),(19914,298,'connect_btn_label'),(19913,298,'configuration_settings_saved'),(19912,298,'configuration_fields_suggest'),(19911,298,'configuration_fields_questions_label'),(19910,298,'configuration_fields_legend'),(19909,298,'configuration_fields_fbfields_label'),(19908,298,'app_reset_title'),(19907,298,'app_reset_success_msg'),(19906,298,'app_reset_failed_msg'),(19905,298,'app_reset_desc'),(19904,298,'app_remove_app_title'),(19903,298,'app_remove_app_desc'),(19902,298,'app_register_title'),(19901,298,'app_edit_title'),(19900,298,'app_edit_desc'),(19899,298,'application_configuration_title'),(19898,298,'admin_sidebar_menu_label'),(19897,298,'admin_configuration_required_notification'),(19896,298,'access_settings_app_id_label'),(19895,298,'access_settings_api_secret_label'),(19838,296,'account_number'),(19839,296,'account_settings'),(19840,296,'available'),(19841,296,'btn_save'),(19842,296,'cc_form_name'),(19843,296,'ck_form_name'),(19844,296,'config_page_heading'),(19845,296,'continue'),(19846,296,'datalink_password'),(19847,296,'datalink_username'),(19848,296,'dp_form_name'),(19849,296,'ed_form_name'),(19850,296,'gateway_title'),(19851,296,'payment_option_cc'),(19852,296,'payment_option_ck'),(19853,296,'payment_option_dp'),(19854,296,'payment_option_ed'),(19855,296,'plugin_configuration_notice'),(19856,296,'recurring_supported'),(19857,296,'salt'),(19858,296,'salt_desc'),(19859,296,'select_payment_option'),(19860,296,'settings_updated'),(19861,296,'subaccount_number'),(19862,296,'supported_currencies'),(19863,297,'comments'),(19864,297,'enter_password'),(19865,297,'enter_password_label'),(19866,297,'individual_friends_error'),(19867,297,'install_error'),(19868,297,'mismatch_password'),(19869,297,'or_choose_from_list'),(19870,297,'password'),(19871,297,'password_protected'),(19872,297,'password_protected_photo'),(19873,297,'password_protection'),(19874,297,'privacy_all_friends_label'),(19875,297,'privacy_individual_friends_label'),(19876,297,'privacy_label'),(19877,297,'privacy_password_label'),(19878,297,'privacy_public_label'),(19879,297,'protect_album_with_password'),(19880,297,'rate_error_msg'),(19881,297,'search_user_placeholder'),(19882,297,'selected_title'),(19883,297,'submit'),(19884,297,'to_view_photo'),(19885,297,'your_password'),(19925,298,'register_app_desc'),(19924,298,'menu_item_configuration_settings'),(19918,298,'join_activity_string'),(19917,298,'heading_configuration'),(19916,298,'feed_user_join'),(19894,298,'access_settings_api_key_label'),(19929,7,'invalid_csrf_token_error_message'),(19930,7,'blocked_users_browse_page_heading'),(19931,7,'my_blocked_users'),(19932,1,'check_updates'),(19933,1,'check_updates_success_message'),(19934,1,'check_updates_fail_error_message'),(19935,1,'manage_theme_activate_invalid_license_key'),(19936,1,'check_license_invalid_server_responce_err_msg'),(19938,287,'validate_license'),(19939,287,'validation_success'),(19940,287,'validation_failed_tech');
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_language_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_language_prefix`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_language_prefix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_language_prefix` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prefix` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `prefix` (`prefix`)
) ENGINE=MyISAM AUTO_INCREMENT=299 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_language_prefix`
--

LOCK TABLES `%%TBL-PREFIX%%base_language_prefix` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_language_prefix` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_language_prefix` VALUES (1,'admin','Admin'),(274,'usercredits','User Credits'),(273,'billingpaypal','PayPal'),(6,'ow_custom','Custom'),(7,'base','BASE'),(11,'nav','Navigation'),(12,'photo','Photo'),(191,'mailbox','Mailbox'),(272,'membership','Membership'),(237,'ads','Advertisement'),(247,'notifications','Email Notifications'),(294,'moderation','Premoderation'),(261,'ocsguests','Who viewed me'),(285,'pcgallery','Profile Cover Gallery'),(268,'usearch','User Search'),(281,'matchmaking','Matchmaking'),(271,'googlelocation','Google Map Location'),(283,'hotlist','Hot List'),(286,'virtualgifts','Virtual Gifts'),(287,'skadate','Skadate'),(288,'mobile','Mobile'),(289,'bookmarks','Bookmarks'),(290,'winks','Winks'),(291,'ganalytics','Google Analytics'),(292,'contactus','Contact Us'),(298,'fbconnect','Facebook Connect'),(296,'billingccbill','CCBill'),(297,'protectedphotos','Password protected photos');
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_language_prefix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_language_value`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_language_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_language_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `languageId` int(11) NOT NULL DEFAULT '0',
  `keyId` int(11) NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyId` (`keyId`,`languageId`)
) ENGINE=MyISAM AUTO_INCREMENT=79927 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_language_value`
--

LOCK TABLES `%%TBL-PREFIX%%base_language_value` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_language_value` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_language_value` VALUES (53,1,1603,'You are editing'),(54,1,1604,'Check <a href=\"languages/mod\">other languages</a>'),(55,1,1605,'Add New Text'),(56,1,1606,'Go'),(57,1,1607,'Search results for keyword: <i><b>{$keyword}</i></b>'),(58,1,1608,'Search'),(59,1,1609,'Original value: {$label} ({$tag})'),(60,1,1610,'Translation: {$label} ({$tag})'),(61,1,1611,'Delete'),(62,1,1612,'Custom keys'),(63,1,1613,'Save this page'),(64,1,1614,'Section'),(65,1,1615,'All Sections'),(66,1,1616,'Missing text'),(67,1,1617,'Drag\'n\'drop'),(68,1,1618,'Language order to display on site. The first language will be set as  default one on the site.'),(69,1,1619,'There should be at least one active language.'),(70,1,1620,'Empty'),(71,1,1621,'Missing keys'),(72,1,1622,'Active languages'),(73,1,1623,'Language'),(74,1,1624,'Edit'),(75,1,1625,'Clone'),(76,1,1626,'Deactivate'),(77,1,1627,'Activate'),(78,1,1628,'Delete'),(10331,1,3793,'View all user albums'),(132,1,1682,'Here you can upload the file that contains a language for one plugin ( <b>.XML</b> file) or several languages for plugins ( <b>.ZIP</b> file).'),(133,1,1683,'Add New Language (Language Pack)'),(134,1,1684,'Select what you would like to import from this language package.'),(135,1,1685,'Check all languages for all plugins'),(136,1,1686,'Import selected'),(137,1,1687,'Export languages'),(138,1,1688,'You can export/backup any languages for any plugins you have installed on your site.'),(139,1,1689,'Export'),(140,1,1690,'Select items you would like  to export from all languages and plugins'),(141,1,1691,'Export selected'),(142,1,1692,'Show:'),(143,1,1693,'Edit Language'),(144,1,1694,'Available Languages'),(145,1,1695,'Key'),(146,1,1696,'Text in {$label} ( {$tag} )'),(147,1,1697,'Add'),(148,1,1698,'Language File:'),(149,1,1699,'Inactive Languages'),(150,1,1700,'Clone language'),(151,1,1701,'Language'),(152,1,1702,'Add new text'),(153,1,1703,'Example: <b>English</b>'),(154,1,1704,'Are you sure?'),(155,1,1705,'ISO tag\r\n<a class=\"ow_lbutton ow_red\" target=\"_blank\" href=\"http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements\">?</a>'),(156,1,1706,'<p class=\"ow_smallmargin\">You need to enter language code that corresponds to <a href=\"http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements\">Alpha-2 ISO language tags</a>.</p>\r\nExample: <b>en-US</b> or <b>en-GB-custom</b>.'),(158,1,1708,'Add'),(159,1,1709,'No values with <i><b>{$keyword}</i></b> keyword'),(160,1,1710,'No values'),(161,1,1711,'Go'),(162,1,1712,'default'),(163,1,1713,'Sorry, the key already exists'),(191,1,1741,'February'),(192,1,1742,'August'),(193,1,1743,'September'),(195,1,1745,'All'),(196,1,1746,'Archive'),(197,1,1747,'Are you sure?'),(202,1,1752,'Comments'),(204,1,1754,'By'),(205,1,1755,'More'),(218,1,1768,'Flag'),(219,1,1769,'Edit'),(220,1,1770,'Delete'),(223,1,1773,'Approve'),(224,1,1774,'Disapprove'),(260,1,1810,'Browse Photos'),(261,1,1811,'Featured'),(262,1,1812,'Latest'),(263,1,1813,'Top Rated'),(264,1,1814,'Browse by tags'),(265,1,1815,'General'),(266,1,1816,'Upload Settings'),(267,1,1817,'View Settings'),(268,1,1818,'Limits'),(14260,1,4064,'Photo file size cannot be greater than <b>{$size}</b>Mb'),(270,1,1820,'The photo cannot be uploaded if the size limit is exceeded. The possible limit is <b><i>0.5</i></b> Mb'),(271,1,1821,'The photo size to display on page'),(272,1,1822,'The photo size to display on page'),(273,1,1823,'Browsing lists of photos and photo albums'),(274,1,1824,'Keep this number reasonably big'),(275,1,1825,'Keep this number reasonably big'),(14261,1,4065,'Photo upload error'),(277,1,1827,'Maximum file size'),(278,1,1828,'Main image size'),(279,1,1829,'Preview image size'),(280,1,1830,'Photos per page'),(281,1,1831,'Maximum number of photos per album'),(282,1,1832,'Maximum number of photos for user'),(283,1,1833,'Save'),(284,1,1834,'Settings updated'),(285,1,1835,'Album'),(286,1,1836,'Photo'),(287,1,1837,'You cannot view the page content due to limited permissions'),(288,1,1838,'Mark as Featured'),(289,1,1839,'Remove from Featured'),(290,1,1840,'{$user}\'s photo albums'),(291,1,1841,'albums by'),(292,1,1842,'No photo found'),(293,1,1843,'Tag search'),(294,1,1844,'Tag search result for:'),(295,1,1845,'No albums'),(296,1,1846,'{$total} photos'),(297,1,1847,'Album by'),(298,1,1848,'updated'),(299,1,1849,'comments'),(300,1,1850,'Added'),(301,1,1851,'Previous photo'),(302,1,1852,'Next photo'),(303,1,1853,'Photo'),(304,1,1854,'of'),(305,1,1855,'Avatar is a graphic picture/photo of a reduced size displayed for your profile.'),(306,1,1856,'Your Avatar'),(307,1,1857,'Upload new avatar'),(308,1,1858,'Crop Avatar'),(309,1,1859,'Choose an area of your avatar for cropping with the help of mouse cursor. The cropping result will be displayed on the right. Once you are satisfied with the result click the \"Apply crop\" button.'),(310,1,1860,'Your avatar picture'),(311,1,1861,'Apply crop'),(70329,1,16369,'Invalid FTP attributes! Can\'t connect to provided host.'),(313,1,1863,'Preview'),(314,1,1864,'Upload'),(315,1,1865,'Pic #{$number}'),(316,1,1866,'Description'),(317,1,1867,'Tags'),(318,1,1868,'Comma-separated'),(319,1,1869,'Add short description about these photos'),(320,1,1870,'Upload'),(322,1,1872,'You have exceeded the limit of {$limit} photos'),(323,1,1873,'{$count} photos uploaded'),(335,1,1885,'Upload photos'),(336,1,1886,'User Roles'),(337,1,1887,'Language'),(76298,1,19531,'Installed Plugins'),(340,1,1890,'Activate'),(341,1,1891,'Save'),(1038,1,2582,'{$count} emails were sent'),(343,1,1893,'This theme doesn\'t have any customization settings.'),(344,1,1894,'The image is not valid'),(345,1,1895,'User photo'),(346,1,1896,'File type not allowed'),(347,1,1897,'Choose Theme'),(348,1,1898,'Password should have less than 15 characters'),(349,1,1899,'Password should have more than 4 characters'),(350,1,1900,'Please enter a valid password'),(351,1,1901,'Sorry, this email is already used'),(352,1,1902,'Please, enter a valid email address'),(353,1,1903,'Please, enter a valid username'),(354,1,1904,'Available Themes'),(76269,1,19502,''),(356,1,1906,'Sorry, this username already exists'),(365,1,1915,'Photo status changed'),(366,1,1916,'Are you sure you want to delete this photo?'),(368,1,1918,'Delete'),(369,1,1919,'Today'),(370,1,1920,'Save'),(371,1,1921,'Update successful'),(372,1,1922,'{$site_name} Admin Page'),(373,1,1923,'{$site_name} Admin'),(376,1,1926,'{$title}'),(377,1,1927,'My Profile'),(378,1,1928,'Main'),(379,1,1929,'Photo updated'),(380,1,1930,'{$site_name} - Find dates here!'),(381,1,1931,'{$site_name}'),(382,1,1932,'{$site_name} community'),(383,1,1933,'online dating, free dating site.'),(69893,1,15933,'Things that people should know about you. A brief, easy-going, and slightly humorous summary works best.'),(385,1,1935,'Settings'),(76299,1,19532,'Plugins to Install'),(387,1,1937,'Appearance'),(388,1,1938,'Users'),(389,1,1939,'Plugins'),(390,1,1940,'Sign In'),(392,1,1942,'Edit Theme'),(393,1,1943,'Edit CSS'),(394,1,1944,'Save'),(395,1,1945,'(Server limit: {$value})'),(398,1,1948,'Browse by Tags'),(399,1,1949,'Moderators'),(400,1,1950,'Global Privacy Settings'),(401,1,1951,'Photo'),(402,1,1952,'Forum'),(403,1,1953,'Existing CSS Styles (read only)'),(404,1,1954,'Image has been deleted'),(405,1,1955,'Image has not been uploaded'),(406,1,1956,'Image has been uploaded'),(407,1,1957,'Upload'),(408,1,1958,'Delete'),(409,1,1959,'URL'),(410,1,1960,'Image Preview'),(411,1,1961,'Images List'),(412,1,1962,'Upload Image'),(413,1,1963,'Account Type'),(620,1,2170,'Tagline'),(415,1,1965,'Theme Customization'),(416,1,1966,'Author URL'),(417,1,1967,'Author'),(418,1,1968,'Pages:'),(420,1,1970,'Admin'),(421,1,1971,'within 1 minute'),(422,1,1972,'1 minute ago'),(423,1,1973,'{$minutes} minutes ago'),(424,1,1974,'Members'),(425,1,1975,'Edit photo'),(426,1,1976,'Compatibility'),(427,1,1977,'Add New'),(428,1,1978,'Version'),(932,1,2476,'Description'),(10345,1,3807,'Privacy & Permissions'),(442,1,1992,'Add'),(443,1,1993,'The Wall'),(444,1,1994,'Upload'),(445,1,1995,'Available formats for Avatar uploading are <span class=\"ow_txt_value\">JPG</span>/<span class=\"ow_txt_value\">GIF</span>/<span class=\"ow_txt_value\">PNG</span>'),(448,1,1998,'Change avatar'),(449,1,1999,'No section'),(450,1,2000,'Add new account type'),(458,1,2008,'Continue'),(459,1,2009,'Join'),(69675,1,15715,'delete to test'),(69823,1,15863,'town/district/zip'),(463,1,2013,'Photo'),(464,1,2014,'Video'),(465,1,2015,'Error occurred while processing your request'),(466,1,2016,'Error occurred while posting comment'),(467,1,2017,'No comments'),(468,1,2018,'Delete'),(469,1,2019,'one hour ago'),(470,1,2020,'{$hours} hours ago'),(471,1,2021,'Yesterday'),(472,1,2022,'at'),(473,1,2023,'Photo - Plugin Settings'),(475,1,2025,'Sep'),(476,1,2026,'Jan'),(477,1,2027,'Feb'),(478,1,2028,'Mar'),(479,1,2029,'Apr'),(480,1,2030,'May'),(481,1,2031,'Jun'),(482,1,2032,'Jul'),(483,1,2033,'Aug'),(484,1,2034,'Oct'),(485,1,2035,'Nov'),(486,1,2036,'Dec'),(487,1,2037,'Graphics'),(488,1,2038,'CSS'),(489,1,2039,'Theme Settings'),(490,1,2040,'Photo album saved'),(491,1,2041,'Repeat password'),(492,1,2042,'Password'),(493,1,2043,'Email'),(494,1,2044,'Profile Questions'),(495,1,2045,'Edit Album'),(496,1,2046,'Delete Album'),(497,1,2047,'Username'),(498,1,2048,'Are you sure you want to delete this photo album?'),(850,1,2397,'General User'),(501,1,2051,'Privacy & Permissions'),(508,1,2058,'Customize this page'),(509,1,2059,'Change Avatar'),(510,1,2060,'Edit my profile'),(511,1,2061,'Page not found'),(512,1,2062,'Sorry, this document doesn\'t exist.'),(515,1,2065,'View all'),(514,1,2064,'{$total} albums total'),(516,1,2066,'December'),(520,1,2070,'Latest'),(521,1,2071,'Featured'),(522,1,2072,'Finish customizing'),(523,1,2073,'Reset'),(524,1,2074,'Custom text/HTML'),(525,1,2075,'Dashboard'),(526,1,2076,'Available widgets'),(527,1,2077,'Overview'),(528,1,2078,'User Dashboard'),(529,1,2079,'User Profile'),(530,1,2080,'Join Now'),(531,1,2081,'Manage Plugins'),(532,1,2082,'Guest'),(1067,1,2611,'You have been successfully unsubscribed.\r\n<br />\r\nThank you.'),(535,1,2085,'Edit'),(536,1,2086,'Delete'),(538,1,2088,'Content (text/HTML)'),(539,1,2089,'Photos'),(543,1,2093,'Convert new line to <br />'),(546,1,2096,'Video'),(547,1,2097,'Add Video'),(548,1,2098,'View Video'),(549,1,2099,'Photo'),(550,1,2100,'View photo'),(551,1,2101,'Upload photo'),(552,1,2102,'Comment photo'),(553,1,2103,'The content owner can delete comments'),(554,1,2104,'Basic permissions'),(555,1,2105,'Write on comment walls'),(556,1,2106,'The author can delete wall comments'),(557,1,2107,'Back to site'),(558,1,2108,'General widget settings'),(559,1,2109,'Title'),(560,1,2110,'Show title'),(561,1,2111,'Icon'),(562,1,2112,'Wrap in box'),(563,1,2113,'Freeze'),(564,1,2114,'<span class=\"ow_mild_green\">Drag\'n\'drop</span> items to the page sample below to add features or custom components.'),(565,1,2115,'<span class=\"ow_mild_red\">Red items</span> are \"frozen\". Frozen items\' positions are fixed and can not be moved or edited by user. They always occupy the upper positions in containers.'),(566,1,2116,'You can let users customize this page components. However they will not be able to change page layout.'),(567,1,2117,'Are you sure you want to delete this widget?'),(568,1,2118,'Allow users to customize this page'),(569,1,2119,'Number of photos to show'),(572,1,2122,'Settings'),(580,1,2130,'Admin'),(575,1,2125,'Number of comments to show'),(576,1,2126,'Display mode'),(577,1,2127,'With paging'),(578,1,2128,'Full list'),(581,1,2131,'Oops, no profiles'),(582,1,2132,'Online'),(584,1,2134,'Customize this page'),(585,1,2135,'Birthday'),(590,1,2140,'My Photo Albums'),(76293,1,19526,'Manage pages'),(592,1,2142,'Browse Users'),(593,1,2143,'Main Settings'),(594,1,2144,'Profile Details'),(595,1,2145,'RSS'),(596,1,2146,'Item count'),(597,1,2147,'URL'),(598,1,2148,'Enter valid URL'),(707,1,2257,'Are you sure you want to delete this question?\r\n\r\nATTENTION: IT WILL PERMANENTLY DELETE ANSWERS FOR THIS QUESTION IN USER PROFILES.'),(605,1,2155,'Join our fast-growing community. Find new friends, date up, share photo and video.\r\nEnjoy!'),(76291,1,19524,'Themes'),(612,1,2162,'Basic'),(46644,1,9873,'User Settings'),(614,1,2164,'Choose account type'),(615,1,2165,'Should contain only latin letters and digits.'),(616,1,2166,'Should be valid'),(617,1,2167,'Join our community'),(618,1,2168,'Site Installation'),(619,1,2169,'Site Name'),(621,1,2171,'Short, catchy, one-string description of your site.'),(622,1,2172,'Description'),(623,1,2173,'Please write a couple of sentences to describe your site.'),(624,1,2174,'Time Settings'),(625,1,2175,'TimeZone'),(626,1,2176,'Use relative date/time'),(627,1,2177,'\"Yesterday, 5:31\" instead of \"June 1 \'09, 5:31\"'),(628,1,2178,'Gender'),(629,1,2179,'&nbsp;'),(630,1,2180,'Male'),(631,1,2181,'Female'),(632,1,2182,'Account type'),(633,1,2183,'Yes'),(634,1,2184,'No'),(635,1,2185,'Settings have been updated'),(636,1,2186,'No content'),(637,1,2187,'Titles only'),(638,1,2188,'Basic'),(10350,1,3812,'Recently active'),(646,1,2196,'User Roles'),(650,1,2200,'No value'),(657,1,2207,'Blogs'),(658,1,2208,'Add comments'),(664,1,2214,'Add some info about yourself here'),(665,1,2215,'About Me'),(666,1,2216,'Description updated'),(667,1,2217,'Browse Users'),(668,1,2218,'No users'),(669,1,2219,'Check all'),(670,1,2220,'Selected:'),(681,1,2231,'Joined'),(682,1,2232,'User'),(683,1,2233,'Select'),(684,1,2234,'Write here...'),(685,1,2235,'{$count} user(s) deleted'),(686,1,2236,'Are you sure you want to delete selected users?'),(706,1,2256,'Question has been deleted'),(16894,1,4514,'Dashboard'),(1011,1,2555,'Send'),(719,1,2269,'Username/Email'),(720,1,2270,'Rate'),(721,1,2271,'Section has been deleted'),(883,1,2427,'Basic'),(775,1,2324,'Account type has been added'),(1262,1,2791,'Who can join:'),(758,1,2307,'Edit'),(759,1,2308,'Delete'),(1261,1,2790,'Remove rights for \'Admin\' from this moderator before you can remove them completely.'),(779,1,2328,'Profile Questions'),(763,1,2312,'Enter your email'),(764,1,2313,'Your email address'),(765,1,2314,'Account type has been deleted'),(766,1,2315,'New password for your account'),(20357,1,6052,'Reset code for new password'),(780,1,2329,'Add Question'),(781,1,2330,'Edit Account Types'),(816,1,2365,'Settings'),(784,1,2333,'You are not allowed to write comment'),(785,1,2334,'Text'),(69086,1,15127,'Single choice (radiobutton)'),(788,1,2337,'Extended text'),(789,1,2338,'Yes/No'),(790,1,2339,'Multiple choice'),(791,1,2340,'Date'),(792,1,2341,'URL'),(793,1,2342,'Password'),(992,1,2536,'Add new account type'),(1116,1,2654,'Verification email successfully sent'),(1117,1,2655,'Suspend'),(1118,1,2656,'Suspend'),(1119,1,2657,'Profile suspended'),(1121,1,2659,'Profiles suspended'),(1122,1,2660,'<center>Sorry your account is suspended. Please contact site administrator.</center>'),(817,1,2366,'If you have many profile questions it may be helpful to view sections as tabs on profile view page.'),(806,1,2355,'Blogs'),(807,1,2356,'Links'),(1263,1,2792,'Anyone'),(818,1,2367,'View sections as tabs'),(819,1,2368,'Add a blog post'),(821,1,2370,'View'),(825,1,2374,'Save'),(826,1,2375,'User data updated'),(827,1,2376,'Profile Edit'),(843,1,2390,'Edit section name'),(834,1,2381,'Dashboard'),(76284,1,19517,'Profile questions'),(836,1,2383,'Active Plugins'),(837,1,2384,'Inactive Plugins'),(838,1,2385,'Settings'),(839,1,2386,'Deactivate'),(840,1,2387,'Activate'),(841,1,2388,'Uninstall'),(842,1,2389,'Install'),(844,1,2391,'Edit question value'),(845,1,2392,'Edit question name'),(846,1,2393,'Edit question description'),(847,1,2394,'All account types'),(848,1,2395,'Edit account type name'),(849,1,2396,'\"{$plugin}\" plugin successfully installed'),(72649,1,18689,'Add account type'),(70328,1,16368,'Default Role'),(1041,1,2585,'To unsubscribe from this mailing list please click here: {$link}'),(1040,1,2584,'<br />\r\n<br />\r\nTo unsubscribe from this mailing list please <a href=\"{$link}\" >click here</a>'),(1037,1,2581,'Rate successful'),(1104,1,2642,'Real name'),(1010,1,2554,'Email Verification'),(880,1,2425,'Invalid username or email'),(881,1,2426,'Invalid password'),(885,1,2429,'Question'),(886,1,2430,'Short description if necessary'),(887,1,2431,'Authentication success, please wait...'),(892,1,2436,'© Copyright {$site_name}'),(924,1,2468,'Cloned'),(925,1,2469,'Profile Questions'),(1264,1,2793,'By my invitation only'),(928,1,2472,'Language'),(929,1,2473,'Showing questions for account type'),(930,1,2474,'New section'),(931,1,2475,'Question'),(933,1,2477,'For account type'),(934,1,2478,'Select an appropriate account type for the question <i>only</i> if it doesn\'t fit other types.</b> E.g.: <b><i>Gender</i></b> corresponds to <b><i>Single</i></b> but doesn\'t fit <b><i>Couple</i></b>.'),(935,1,2479,'Section'),(936,1,2480,'Answer type'),(1215,1,2744,'Social software'),(70327,1,16367,'Add new values: <span class=\"ow_small ow_highlight\">Separate by comma</span>'),(942,1,2486,'Add up to 31 values. Field values are stored in a specific way in the database to greatly speed up profiles binary search.'),(943,1,2487,'Columns count'),(944,1,2488,'Required'),(945,1,2489,'The form will not submit if the user doesn\'t enter valid answer for this question'),(946,1,2490,'On <b>Sign Up</b>'),(947,1,2491,'The question should be on the registration page'),(948,1,2492,'On <b>Profile Edit</b>'),(949,1,2493,'The question should be available for user to edit'),(950,1,2494,'On <b>Profile View</b>'),(951,1,2495,'The question should be shown on profile view page'),(952,1,2496,'The question should be used for User Search'),(953,1,2497,'On <b>Search</b>'),(954,1,2498,'Save and Add New'),(1039,1,2583,'Edit Role'),(957,1,2501,'Question has been added'),(960,1,2504,'Question updated'),(961,1,2505,'OR'),(72726,1,18766,'Supports HTML'),(72727,1,18767,'You can\'t delete this account type. At least 1 account type must be on the site.'),(962,1,2506,'Are you sure?'),(967,1,2511,'Extra meta tags for your page\'s header section.'),(969,1,2513,'Question description'),(971,1,2515,'Existing values'),(972,1,2516,'Drag\'n\'drop to rearrange'),(973,1,2517,'Add new question values'),(974,1,2518,'Question was not updated'),(975,1,2519,'Question was not updated'),(978,1,2522,'Add values (one per line)'),(979,1,2523,'You can add up to 31 values'),(1207,1,2736,'Page content'),(981,1,2525,'Add'),(76287,1,19520,'General'),(987,1,2531,'No value'),(985,1,2529,'Question does not exist'),(989,1,2533,'Add {$count} question value(s)'),(997,1,2541,'Section has been added'),(996,1,2540,'Account type has been added'),(998,1,2542,'Here you can change information added by users about themselves. You can change, rearrange, and add new profile questions.'),(999,1,2543,'<span class=\"ow_highlight\">Drag\'n\'drop</span> questions and sections to change their order.'),(1000,1,2544,'Add New Question'),(1001,1,2545,'Profile Question Sections'),(1002,1,2546,'If you have a lot of profile questions you may want to divide them into sections. You might have the following sections \"<b><i>Basic info</i></b>\", \"<b><i>Contacts</i></b>\", \"<b><i>Interests</i></b>\", so on and so forth.'),(1003,1,2547,'New section'),(1005,1,2549,'Are you sure you want to delete this section?'),(1012,1,2556,'Dear {$username},<br />\r\n<br />\r\nThank you for registering at {$site_name}! Now you need to verify your email by <a href=\"{$url}\">clicking here</a><br />\r\n<br />\r\nAlternatively you can insert this code at the <a href=\"{$verification_page_url}\">verification page</a>: {$code}<br />\r\n<br />\r\nThank you,<br />\r\n{$site_name} administration'),(1013,1,2557,'Dear {$username},\r\n\r\nThank you for registering at {$site_name}! Now you need to verify your email by clicking this link: {$url}\r\n\r\nAlternatively you can insert this code at the verification page {$verification_page_url} : \r\n{$code}\r\n\r\nThank you,\r\n{$site_name} administration'),(1014,1,2558,'Email address confirmed'),(1015,1,2559,'Add'),(1016,1,2560,''),(1017,1,2561,'You have {$count} new messages'),(1018,1,2562,'Language'),(1020,1,2564,'<p>\r\nPlease confirm your email address.<br />Click \"Send\" button to receive a letter with the confirmation code to your email address.\r\n</p>\r\n<p>\r\n<b>If you don\'t receive email</b> please add <i>{$site_email}</i> to your whitelist/address book/contact list.\r\n</p>'),(1021,1,2565,'Sorry, email address not confirmed.<br/> Most likely:<br/> \r\n<br/> \r\n1) Confirmation link you have used is incorrect. Pleasecopy the correct URL and insert it into the address bar.\r\n<br/><br/>\r\n2) Confirmation URL expired as it hasn\'t been used within 5 days. Please send confirmation request again.'),(1024,1,2568,'Edit'),(1025,1,2569,'Add'),(1026,1,2570,'Ignore unsubscribe preference'),(1027,1,2571,'HTML'),(1028,1,2572,'Text'),(1029,1,2573,'Email body'),(1030,1,2574,'Subject'),(1031,1,2575,'Email format'),(1032,1,2576,'User selection'),(1033,1,2577,'<b>Total:</b> <i>{$count}</i> active members'),(1034,1,2578,'Preview'),(1035,1,2579,'Compose Email'),(1036,1,2580,'Start Mailing'),(1044,1,2588,'Role Name:'),(1045,1,2589,'New role added'),(1051,1,2595,'Please, select at least one role'),(1049,1,2593,'Unsubscribe'),(1050,1,2594,'Role(s) deleted'),(1055,1,2599,'User Role'),(1056,1,2600,'# of Users'),(1057,1,2601,'default'),(1058,1,2602,'Check all | Selected:'),(1059,1,2603,'Delete'),(1060,1,2604,'Are you sure?'),(1061,1,2605,'Go to <a href=\"{$url}\">permissions page</a> to set which features are allowed for specific user roles.'),(1065,1,2609,'Free'),(1068,1,2612,'Unsubscription failed. \r\n<br />\r\nPlease make sure you entered unsubscribe link correctly.'),(1069,1,2613,'Mass Mailing'),(1074,1,2615,'User photo'),(1075,1,2616,'Captcha'),(1079,1,2620,'You can use the following variables:'),(6072,1,2850,'User Customization'),(1085,1,2626,'Display Settings'),(1086,1,2627,'Avatar Settings'),(1087,1,2628,'User settings updated'),(1088,1,2629,'Avatar image<br /> crop size'),(1089,1,2630,'Big avatar image<br /> crop size'),(1091,1,2632,'Show profile name as:'),(1092,1,2633,'Normally you would need to choose between <b><i>Username</i></b> (traditional) and a real name (as on Facebook). This is a site-wide setting.'),(1093,1,2634,'Shown in all listings. You will also need to change your theme CSS.'),(1094,1,2635,'Shown on profile page'),(1123,1,2661,'Profile re-activated'),(1124,1,2662,'Re-activate'),(1214,1,2743,'Reset'),(1206,1,2735,'Visible For'),(6099,1,2877,'No users'),(1163,1,2698,'Looking for'),(1164,1,2699,''),(1296,1,2823,'Comment video'),(1203,1,2732,'Menu Name'),(1287,1,2815,'<center>No items</center>'),(1129,1,2667,'User Dashboard'),(1130,1,2668,'User Profile Settings'),(1202,1,2731,'Visible for'),(1201,1,2730,'Open in a new window'),(1132,1,2670,'Registration successful'),(1133,1,2671,'<center>Suspended user</center>'),(1134,1,2672,'Please fill the form properly'),(1135,1,2673,'{$username}'),(1136,1,2674,'{$username}'),(1137,1,2675,'My profile'),(1138,1,2676,'My profile'),(1139,1,2677,'Are you sure you want to reset your customizations?'),(1142,1,2680,'Are you sure you want to delete this image?'),(1170,1,2702,'Male'),(1171,1,2703,'Female'),(1176,1,2707,'Here for'),(1177,1,2708,''),(1198,1,2727,'Menu name'),(1199,1,2728,'URL'),(1200,1,2729,'You need to sign in to comment'),(1194,1,2723,'Fun'),(1195,1,2724,'Whatever'),(1196,1,2725,'Dating'),(1197,1,2726,'Friendship'),(1208,1,2737,'Guests'),(1209,1,2738,'Registered Members'),(1210,1,2739,'Menu Name'),(1211,1,2740,'Page Content'),(1212,1,2741,'Page Address'),(69952,1,15992,'Privacy policy'),(1218,1,2747,'Image Preview'),(1295,1,2822,'Mass Mailing'),(1255,1,2784,'Permissions successfully updated'),(6082,1,2860,'Add New'),(1254,1,2783,'Privacy & Permissions'),(1256,1,2785,'User not found'),(1257,1,2786,'Moderator has been added'),(1260,1,2789,'User removed from moderators'),(1259,1,2788,'{$username} is already a moderator'),(1105,1,2643,'First name and Last name'),(1205,1,2734,'URL'),(1204,1,2733,'Page Title'),(1265,1,2794,'Who can invite:'),(1266,1,2795,'All users'),(1267,1,2796,'Admin only'),(1269,1,2798,'Mandatory member approve'),(1270,1,2799,'Moderators will approve all members manually <b>before</b> letting them in'),(1271,1,2800,'Guests can view the site'),(1272,1,2801,'Yes'),(1273,1,2802,'No'),(1275,1,2804,'With password:'),(1276,1,2805,'If not <b>\'Yes\'</b> will override all other permission settings'),(1297,1,2824,'The content owner can delete comments'),(1279,1,2807,'User'),(1281,1,2809,'Add New Moderator'),(1282,1,2810,'Username'),(10328,1,3790,'Number of users who reported this content'),(1284,1,2812,'Make Moderator'),(1219,1,2748,'My Profile'),(4993,1,2834,'Go to <a href=\"{$url}\">role management page</a> to create/edit/delete user roles.'),(4984,1,2825,'Are you sure you want to suspend selected user(s)?'),(4986,1,2827,'The content owner can delete comments'),(4988,1,2829,'Browse Users'),(4989,1,2830,'\"{$plugin}\" plugin activated'),(4990,1,2831,'\"{$plugin}\" plugin deactivated'),(4994,1,2835,'You can\'t view this page due to limited permissions'),(6065,1,2844,'Required'),(6066,1,2845,'The Wall'),(6067,1,2846,'Avatar'),(6068,1,2847,'Email verification'),(6063,1,2842,'You are not allowed to upload photo'),(6064,1,2843,'Oops, looks like you don\'t have enough permissions'),(6061,1,2840,'Photo Albums'),(6058,1,2837,'The number of Photo Albums'),(6059,1,2838,'Show Photo Albums\' titles'),(6090,1,2868,'123'),(6091,1,2869,''),(69495,1,15535,'Please fill correct age range'),(6094,1,2872,''),(6098,1,2876,'Values updated'),(6102,1,2880,'Site Email'),(6103,1,2881,'Email address from which your users will receive notifications and mass mailing.'),(6106,1,2884,'Latest Activity'),(6117,1,2895,'January'),(6121,1,2899,'User marked as featured'),(6122,1,2900,'User removed from featured'),(6123,1,2901,'Mark as featured'),(6124,1,2902,'Remove from featured'),(6125,1,2903,'Friends'),(6126,1,2904,'Add Friend'),(6128,1,2906,'Please choose image file'),(6129,1,2907,'Photo deleted'),(6130,1,2908,'Photo NOT deleted'),(7434,1,3294,'Hi,\r\n\r\nWe invite you to join our website - {$site_name}.\r\nPlease join here: {$url}\r\n\r\nAdministration\r\n{$site_url}'),(7431,1,3291,'Invitations successfully sent'),(7430,1,3290,'You should enter at least one email address'),(7429,1,3289,'Please enter max {$limit} emails'),(7428,1,3288,'Invite'),(7427,1,3287,'Enter list of emails (max 50, one email per line)'),(7426,1,3286,'Invite new members'),(7425,1,3285,'Invite new members'),(7424,1,3284,'With splash screen you can explicitly ask your members if they agree to enter your website.'),(7432,1,3292,'Invitation to {$site_name}'),(7433,1,3293,'<p>\r\nHi,\r\n</p>\r\n<p>\r\nWe invite you to join our website - {$site_name}.<br />\r\nPlease register <a href=\"{$url}\">here</a>\r\n</p>\r\nAdministration<br />\r\n{$site_url}'),(7423,1,3283,'Enable'),(50894,1,10878,'Conversation has been marked as unread'),(50893,1,10877,'Conversation has been marked as read'),(9887,1,3349,'or sign in with'),(47078,1,10307,''),(7400,1,3260,'Leave'),(76296,1,19529,'Splash screen'),(7401,1,3261,'Splash Screen'),(7393,1,3253,'Enter'),(7392,1,3252,'By entering this website you certify that you are at least 18 years old.'),(7391,1,3251,'Where visitors go if choose to leave'),(7390,1,3250,'\'Leave\' URL'),(7389,1,3249,'Custom button label to enter the site'),(7388,1,3248,'\'Enter\' button label'),(7387,1,3247,'Splash screen content. Supports HTML.'),(7386,1,3246,'Text/HTML'),(76226,1,19459,'Description'),(7384,1,3244,'»'),(7383,1,3243,'Next'),(7382,1,3242,'Previous'),(7381,1,3241,'«'),(7380,1,3240,'Invalid password'),(7379,1,3239,'Redirecting...'),(7378,1,3238,'Enter'),(7377,1,3237,'Sorry, site is closed for public view.'),(7376,1,3236,'Enter Password'),(76295,1,19528,'Maintenance Page'),(10366,1,3828,'Users'),(9883,1,3345,'Moderator Panel'),(9884,1,3346,'Approve users'),(7414,1,3274,'Sorry, site registration is closed'),(7372,1,3232,'OR'),(7371,1,3231,'Sign in with'),(7370,1,3230,'Register your profile'),(9891,1,3353,'User approved'),(76297,1,19530,'User Profile'),(50883,1,10867,'Mailbox'),(50882,1,10866,'Someone sends me a new message'),(50881,1,10865,'New <a href=\"{$conversationUrl}\" >message</a> from <a href=\"{$userUrl}\">{$userName}</a>'),(50880,1,10864,'{$count} conversation(s) deleted'),(9886,1,3348,'Mandatory user approve'),(50884,1,10868,'Enable file attachments'),(50885,1,10869,'File attachments disabled'),(50886,1,10870,'General Settings'),(50887,1,10871,'Inbox'),(7335,1,3116,'y.o.'),(69082,1,15123,'Examples:<br />\n<i>97304</i><br />\n<i>Berlin, Germany</i><br />\n<i>Silicon Valley, USA</i>.<br /><br />\n\nDon\'t enter your exact home address or just a country name.'),(7327,1,3108,'November'),(7326,1,3107,'October'),(7324,1,3105,'June'),(7325,1,3106,'July'),(7323,1,3104,'May'),(7321,1,3102,'April'),(7320,1,3101,'March'),(7319,1,3100,'SMTP test success. You can start sending emails using this connection.'),(7318,1,3099,'Test connection'),(7315,1,3096,'Test SMTP connection'),(7317,1,3098,'Make sure you test your SMTP connection before you start sending emails using it. Otherwise, your site may stop sending emails at all.'),(7316,1,3097,'Off'),(7309,1,3090,'SMTP connection security type'),(7308,1,3089,'Secure connection'),(7307,1,3088,'Password'),(7306,1,3087,'Username'),(7305,1,3086,'Host:Port'),(7304,1,3085,'Please do not enable if you don\'t know what you are doing. Your site may stop sending emails!'),(7303,1,3084,'Enable'),(7302,1,3083,'SMTP'),(7301,1,3082,'SMTP settings updated'),(7300,1,3081,'Are you sure you want to delete this user?'),(7297,1,3078,'Delete confirmation'),(7296,1,3077,'Delete'),(43372,1,9399,'visible to guests only'),(7287,1,3068,'qqqq'),(7289,1,3070,'qqq'),(7291,1,3072,'qqq'),(7285,1,3066,'aaa'),(7281,1,3062,'Value is incorrect or greater than server limit'),(10396,1,3858,'Installed Plugins'),(7275,1,3056,'Delete user content'),(76294,1,19527,'Special pages'),(7272,1,3053,'day/month/year'),(7271,1,3052,'month/day/year'),(7270,1,3051,'Date format'),(7268,1,3049,'Please, enter verification code.'),(7267,1,3048,'Submit'),(7269,1,3050,'Invalid verification code'),(7265,1,3046,'Code'),(7264,1,3045,'Are you sure you want to delete your profile?'),(7260,1,3041,'Delete Profile'),(7259,1,3040,'Edit Profile Details'),(7258,1,3039,'Delete profile'),(7257,1,3038,'Delete'),(7255,1,3036,'sfdaf'),(7253,1,3034,'2q3r3'),(7256,1,3037,'Cancel'),(7251,1,3032,'sdfsdfsdf'),(7249,1,3030,'8aaxaxa'),(7246,1,3027,'sdfsdf'),(7244,1,3025,'sdf'),(7242,1,3023,'sdffsdf'),(7237,1,3018,'whoohaa'),(7248,1,3029,'8aaxaxa'),(7235,1,3016,'whoohaa'),(7240,1,3021,'sdfsd'),(7231,1,3012,'Guests are not allowed to rate'),(7230,1,3011,'Contact Importer'),(56821,1,13538,'Account has been removed'),(7216,1,2997,'Join'),(7142,1,2923,'Change Password'),(7143,1,2924,'Old password'),(7144,1,2925,'New password'),(7145,1,2926,'Repeat new password'),(7146,1,2927,'Password changed'),(7147,1,2928,'Password not changed'),(7151,1,2932,'<a href=\"{$userUrl}\">{$user}</a> changed their avatar.'),(7153,1,2934,'<a href=\"{$userUrl}\">{$user}</a> joined our site!'),(7154,1,2935,'<a href=\"{$userUrl}\"><img src=\"{$avatarUrl}\" alt=\"{$user}\"></a>'),(7155,1,2936,'<a href=\"{$userUrl}\">{$user}</a> edited their profile details'),(7177,1,2958,'Are you sure you want to reset your profile customization?'),(7212,1,2993,'Re-activate'),(7213,1,2994,'Selected users have been re-activated'),(7214,1,2995,'Selected user(s) re-activated'),(50888,1,10872,'My mailbox - {$site_name}'),(50889,1,10873,'Keep Unread'),(50890,1,10874,'Mailbox'),(50891,1,10875,'Mark as Read'),(50892,1,10876,'Mark as Unread'),(46459,1,9690,'no items'),(46460,1,9691,'Subscribe to newsletter'),(46462,1,9693,'display'),(69695,1,15735,'Rules'),(10589,1,4051,'Please enter password'),(10588,1,4050,'Day'),(10587,1,4049,'Month'),(10585,1,4047,'Are you sure you want to delete comment?'),(10586,1,4048,'Year'),(10584,1,4046,'You can\'t rate your own content'),(10583,1,4045,'You are not allowed to delete photo albums'),(10581,1,4043,'You are not authorized to search users'),(10582,1,4044,'Search users'),(10577,1,4039,'to'),(10578,1,4040,'(Age Range)'),(10576,1,4038,'from'),(10573,1,4035,'Back to search from'),(10572,1,4034,'Search'),(10570,1,4032,'Main Search'),(10554,1,4016,'Thursday'),(10555,1,4017,'Friday'),(10556,1,4018,'Saturday'),(10557,1,4019,'Please enter valid license key'),(10558,1,4020,'Search'),(10559,1,4021,'Search by Name'),(10560,1,4022,'User Search'),(10552,1,4014,'Tuesday'),(10553,1,4015,'Wednesday'),(10550,1,4012,'Sunday'),(10551,1,4013,'Monday'),(10548,1,4010,'Are you sure you want to update <i>\'{$name}\'</i> plugin from version <b>{$oldVersion}</b> to <b>{$newVersion}</b>? The plugin is commercial, to update it please enter license key and press \'Update\' button.'),(10544,1,4006,'Update'),(10543,1,4005,'Back to plugin list'),(10542,1,4004,'License Key'),(10540,1,4002,'Someone comments on my photo'),(10539,1,4001,'<a href=\"{$userUrl}\">{$userName}</a> commented on your <a href=\"{$photoUrl}\">photo</a>.'),(10525,1,3987,'Invalid params for FTP login provided'),(10526,1,3988,'Payment provider does not support site active currency (<b>{$currency}</b>)'),(55032,1,11749,'a'),(10494,1,3956,'Pay securely with'),(10491,1,3953,'No'),(10490,1,3952,'Yes'),(10489,1,3951,'Are you sure you want to update <i>\'{$name}\'</i> plugin from version <b>{$oldVersion}</b> to <b>{$newVersion}</b>?'),(10488,1,3950,'Plugin update request'),(10483,1,3945,'No payment gateways activated'),(10473,1,3935,'Preview'),(10474,1,3936,'Fullsize'),(10475,1,3937,'Align'),(10476,1,3938,'None'),(10477,1,3939,'Left'),(10478,1,3940,'Center'),(10479,1,3941,'Right'),(10480,1,3942,'Insert into post'),(10481,1,3943,'Update'),(10471,1,3933,'URL'),(10472,1,3934,'remove'),(10470,1,3932,'hide'),(10469,1,3931,'show'),(10468,1,3930,'Gallery'),(10467,1,3929,'From URL'),(10466,1,3928,'Choose File'),(10465,1,3927,'File size limit is'),(10462,1,3924,'Image URL'),(10463,1,3925,'Insert'),(10464,1,3926,'Acceptable file types:'),(10461,1,3923,'Rich text user input'),(10460,1,3922,'Maximum file size'),(10459,1,3921,'Allow picture upload'),(10456,1,3918,'Upload'),(10440,1,3902,'\"{$plugin}\" deleted'),(10430,1,3892,'Remember me'),(10425,1,3887,'Host'),(10426,1,3888,'Forgot Password'),(14322,1,4126,'Birthdays'),(10416,1,3878,'Connection failed, please check host and port details'),(10413,1,3875,'Port'),(10411,1,3873,'Enter'),(10412,1,3874,'FTP access needed to complete the operation'),(10409,1,3871,'Login'),(10410,1,3872,'Password'),(10408,1,3870,'Upload'),(10407,1,3869,'Enter Attributes'),(10406,1,3868,'FTP Attributes'),(10405,1,3867,'\"{$plugin}\" plugin successfully uninstalled'),(10404,1,3866,'Delete'),(76283,1,19516,'Privacy'),(10403,1,3865,'Are you sure you want completely delete plugin `{$pluginName}`'),(10402,1,3864,'Plugin not found'),(10400,1,3862,'Currency'),(10399,1,3861,'Finance'),(10398,1,3860,'Add New'),(10397,1,3859,'Available Plugins'),(10392,1,3854,'The information on changing and confirming your new password sent to your email'),(55043,1,11760,'Cancel'),(55044,1,11761,'Please confirm you do not want to receive mass mailing from this site.'),(10389,1,3851,'Dashboard'),(10390,1,3852,'Theme changed'),(10383,1,3845,'Back'),(10381,1,3843,'Submit'),(10382,1,3844,'Add Item'),(10373,1,3835,'User Roles'),(10374,1,3836,'User Roles'),(10375,1,3837,'Moderators'),(10372,1,3834,'Global Privacy'),(10371,1,3833,'Back to user roles'),(10370,1,3832,'User role: {$role}'),(10368,1,3830,'Flagged content'),(76292,1,19525,'Customize'),(10367,1,3829,'For approval'),(10378,1,3840,'Photo'),(10358,1,3820,'Activity:'),(10359,1,3821,'Online now'),(10360,1,3822,'Album deleted'),(10361,1,3823,'User search result for: \"<b>{$for}</b>\"'),(10357,1,3819,'unapproved'),(10356,1,3818,'unverified'),(10355,1,3817,'suspended'),(10354,1,3816,'Status'),(10353,1,3815,'Unapproved'),(10352,1,3814,'Unverified'),(10351,1,3813,'Suspended'),(10346,1,3808,'Maintenance page'),(20387,1,6082,'123'),(10312,1,3774,'flag'),(10309,1,3771,'Offence'),(10310,1,3772,'Illegal'),(10311,1,3773,'Flag this as...'),(10166,1,3628,'Zimbabwe'),(10165,1,3627,'Zambia'),(10164,1,3626,'South Africa'),(10163,1,3625,'Yemen'),(10162,1,3624,'Samoa'),(10160,1,3622,'Vanuatu'),(10161,1,3623,'Wallis And Futuna'),(10158,1,3620,'Virgin Islands, U.s.'),(10159,1,3621,'Viet Nam'),(10157,1,3619,'Virgin Islands, British'),(10156,1,3618,'Venezuela'),(10155,1,3617,'Saint Vincent And The Grenadines'),(10154,1,3616,'Holy See (vatican City State)'),(10153,1,3615,'Uzbekistan'),(10152,1,3614,'United States'),(10151,1,3613,'Uruguay'),(10147,1,3609,'United Republic Of Tanzania'),(10148,1,3610,'Uganda'),(10149,1,3611,'Ukraine'),(10150,1,3612,'United States Minor Outlying Islands'),(10146,1,3608,'Taiwan'),(10143,1,3605,'Tunisia'),(10144,1,3606,'Turkey'),(10145,1,3607,'Tuvalu'),(10142,1,3604,'Trinidad And Tobago'),(10141,1,3603,'Tonga'),(10140,1,3602,'Timor-leste'),(10139,1,3601,'Turkmenistan'),(10138,1,3600,'Tokelau'),(10137,1,3599,'Tajikistan'),(10133,1,3595,'Turks And Caicos Islands'),(10134,1,3596,'Chad'),(10135,1,3597,'Togo'),(10136,1,3598,'Thailand'),(10132,1,3594,'Syrian Arab Republic'),(10131,1,3593,'Seychelles'),(10130,1,3592,'Swaziland'),(10129,1,3591,'Sweden'),(10128,1,3590,'Slovenia'),(10127,1,3589,'Slovakia'),(10126,1,3588,'Suriname'),(10123,1,3585,'Saint Pierre And Miquelon'),(10124,1,3586,'Serbia'),(10125,1,3587,'Sao Tome And Principe'),(10121,1,3583,'San Marino'),(10122,1,3584,'Somalia'),(70326,1,16366,'Add'),(10120,1,3582,'El Salvador'),(10116,1,3578,'Singapore'),(10117,1,3579,'South Georgia And The South Sandwich Islands'),(10118,1,3580,'Solomon Islands'),(10119,1,3581,'Sierra Leone'),(10115,1,3577,'Senegal'),(43379,1,9406,'You are not allowed to view profiles'),(10114,1,3576,'Sudan'),(10113,1,3575,'Serbia And Montenegro'),(10112,1,3574,'Saudi Arabia'),(10111,1,3573,'Rwanda'),(55034,1,11751,'d'),(10110,1,3572,'Russian Federation'),(10109,1,3571,'Romania'),(10108,1,3570,'Reunion'),(10107,1,3569,'Qatar'),(10106,1,3568,'French Polynesia'),(10105,1,3567,'Palestinian Territory, Occupied'),(10104,1,3566,'Paraguay'),(10103,1,3565,'Portugal'),(10102,1,3564,'Democratic People\'s Republic Of Korea'),(10101,1,3563,'Puerto Rico'),(10100,1,3562,'Poland'),(10099,1,3561,'Papua New Guinea'),(10098,1,3560,'Palau'),(10097,1,3559,'Philippines'),(10096,1,3558,'Peru'),(10095,1,3557,'Panama'),(10094,1,3556,'Pakistan'),(55035,1,11752,'c'),(10093,1,3555,'Oman'),(10092,1,3554,'New Zealand'),(10091,1,3553,'Nauru'),(10090,1,3552,'Nepal'),(10089,1,3551,'Norway'),(55050,1,11767,'Unblock'),(10087,1,3549,'Niue'),(10088,1,3550,'Netherlands'),(10203,1,3665,'Sorry, a page with this address already exists'),(10086,1,3548,'Nicaragua'),(10085,1,3547,'Nigeria'),(10084,1,3546,'Norfolk Island'),(10319,1,3781,'No photo'),(10082,1,3544,'New Caledonia'),(10083,1,3545,'Niger'),(10081,1,3543,'Namibia'),(10315,1,3777,'You\'ve already flagged this'),(10080,1,3542,'Mayotte'),(10078,1,3540,'Malawi'),(10079,1,3541,'Malaysia'),(10077,1,3539,'Mauritius'),(10330,1,3792,'My Dashboard'),(10076,1,3538,'Martinique'),(10075,1,3537,'Montserrat'),(10074,1,3536,'Mauritania'),(10073,1,3535,'Mozambique'),(10329,1,3791,'Flag deleted'),(10072,1,3534,'Northern Mariana Islands'),(10068,1,3530,'Malta'),(10069,1,3531,'Myanmar'),(10070,1,3532,'Montenegro'),(10071,1,3533,'Mongolia'),(10067,1,3529,'Mali'),(10065,1,3527,'Marshall Islands'),(10066,1,3528,'The Former Yugoslav Republic Of Macedonia'),(10064,1,3526,'Mexico'),(10063,1,3525,'Maldives'),(10062,1,3524,'Madagascar'),(10061,1,3523,'Republic Of Moldova'),(10060,1,3522,'Monaco'),(10059,1,3521,'Morocco'),(10058,1,3520,'Saint Martin'),(10057,1,3519,'Macao'),(10054,1,3516,'Lithuania'),(10055,1,3517,'Luxembourg'),(10056,1,3518,'Latvia'),(10053,1,3515,'Lesotho'),(10052,1,3514,'Sri Lanka'),(10049,1,3511,'Libyan Arab Jamahiriya'),(10051,1,3513,'Liechtenstein'),(10050,1,3512,'Saint Lucia'),(10048,1,3510,'Liberia'),(10047,1,3509,'Lebanon'),(10046,1,3508,'Lao People\'s Democratic Republic'),(10045,1,3507,'Kuwait'),(10044,1,3506,'Republic Of Korea'),(10043,1,3505,'Saint Kitts And Nevis'),(10337,1,3799,'Recently uploaded photos'),(10042,1,3504,'Kiribati'),(10041,1,3503,'Cambodia'),(10040,1,3502,'Kyrgyzstan'),(10039,1,3501,'Kenya'),(10038,1,3500,'Kazakhstan'),(10037,1,3499,'Japan'),(10036,1,3498,'Jordan'),(10035,1,3497,'Jersey'),(10336,1,3798,'Forum'),(10034,1,3496,'Jamaica'),(10033,1,3495,'Italy'),(10032,1,3494,'Israel'),(10341,1,3803,'Are you sure you want to delete full-size photos?'),(10031,1,3493,'Iceland'),(10030,1,3492,'Iraq'),(56152,1,12869,'Add Theme'),(10029,1,3491,'Islamic Republic Of Iran'),(10026,1,3488,'India'),(10027,1,3489,'British Indian Ocean Territory'),(10028,1,3490,'Ireland'),(10025,1,3487,'Isle Of Man'),(10024,1,3486,'Indonesia'),(10023,1,3485,'Hungary'),(10343,1,3805,'View full-size'),(43373,1,9400,'visible to members only'),(10022,1,3484,'Haiti'),(10021,1,3483,'Croatia'),(10020,1,3482,'Honduras'),(10340,1,3802,'Delete full-size photos ({$count})'),(10019,1,3481,'Hong Kong'),(10342,1,3804,'Photos deleted'),(10018,1,3480,'Guyana'),(10017,1,3479,'Guam'),(10016,1,3478,'French Guiana'),(55051,1,11768,'Profile blocked'),(10015,1,3477,'Guatemala'),(10014,1,3476,'Greenland'),(10013,1,3475,'Grenada'),(20388,1,6083,'12'),(20389,1,6084,'321'),(10012,1,3474,'Greece'),(10011,1,3473,'Equatorial Guinea'),(10010,1,3472,'Guinea-bissau'),(10006,1,3468,'Gibraltar'),(10007,1,3469,'Guinea'),(10009,1,3471,'Gambia'),(10008,1,3470,'Guadeloupe'),(10005,1,3467,'Ghana'),(10002,1,3464,'United Kingdom'),(10004,1,3466,'Guernsey'),(10003,1,3465,'Georgia'),(9998,1,3460,'France'),(9999,1,3461,'Faroe Islands'),(10000,1,3462,'Federated States Of Micronesia'),(10001,1,3463,'Gabon'),(9997,1,3459,'Falkland Islands (malvinas)'),(20386,1,6081,'21312'),(9996,1,3458,'Fiji'),(9995,1,3457,'Finland'),(9994,1,3456,'Ethiopia'),(9993,1,3455,'Estonia'),(9992,1,3454,'Spain'),(9991,1,3453,'Eritrea'),(9990,1,3452,'Egypt'),(9989,1,3451,'Ecuador'),(10273,1,3735,'Search by name'),(9988,1,3450,'Algeria'),(9987,1,3449,'Dominican Republic'),(9986,1,3448,'Denmark'),(9985,1,3447,'Dominica'),(9979,1,3441,'Cuba'),(9980,1,3442,'Cayman Islands'),(9981,1,3443,'Cyprus'),(9982,1,3444,'Czech Republic'),(9983,1,3445,'Germany'),(9984,1,3446,'Djibouti'),(69335,1,15375,'Plans has been updated'),(9978,1,3440,'Costa Rica'),(9976,1,3438,'Comoros'),(9977,1,3439,'Cape Verde'),(9974,1,3436,'Cook Islands'),(9975,1,3437,'Colombia'),(9972,1,3434,'The Democratic Republic Of The Congo'),(9973,1,3435,'Congo'),(9971,1,3433,'Cameroon'),(9970,1,3432,'Cote D\'ivoire'),(9969,1,3431,'China'),(9968,1,3430,'Chile'),(9967,1,3429,'Switzerland'),(9966,1,3428,'Canada'),(9964,1,3426,'Botswana'),(9965,1,3427,'Central African Republic'),(9963,1,3425,'Bouvet Island'),(9962,1,3424,'Bhutan'),(9961,1,3423,'Brunei Darussalam'),(9960,1,3422,'Barbados'),(9959,1,3421,'Brazil'),(9958,1,3420,'Bolivia'),(9957,1,3419,'Bermuda'),(9956,1,3418,'Belize'),(9955,1,3417,'Belarus'),(9954,1,3416,'Bosnia And Herzegovina'),(9953,1,3415,'Bahamas'),(9952,1,3414,'Bahrain'),(9951,1,3413,'Bulgaria'),(9949,1,3411,'Burkina Faso'),(9950,1,3412,'Bangladesh'),(9948,1,3410,'Benin'),(9947,1,3409,'Belgium'),(9946,1,3408,'Burundi'),(9945,1,3407,'Azerbaijan'),(9944,1,3406,'Austria'),(9943,1,3405,'Australia'),(9941,1,3403,'French Southern Territories'),(9942,1,3404,'Antigua And Barbuda'),(9940,1,3402,'Antarctica'),(9939,1,3401,'American Samoa'),(9938,1,3400,'Armenia'),(9937,1,3399,'Argentina'),(9936,1,3398,'United Arab Emirates'),(9935,1,3397,'Netherlands Antilles'),(9934,1,3396,'Andorra'),(43374,1,9401,'View profiles'),(9933,1,3395,'Albania'),(9932,1,3394,'Anguilla'),(10308,1,3770,'SPAM'),(9931,1,3393,'Angola'),(9930,1,3392,'Afghanistan'),(9929,1,3391,'Aruba'),(9921,1,3383,'Maintenance mode changed'),(9919,1,3381,'Maintenance message'),(9920,1,3382,'HTML allowed'),(9918,1,3380,'<p>This will render your site inaccessible and show everyone maintenance message.</p>\r\n<b>You will still be able to sign in as admin here: <a href=\"{$site_url}sign-in\">{$site_url}sign-in</a></b>'),(9917,1,3379,'Disable your site and put up the maintenance page.'),(43435,1,9462,'Base'),(76285,1,19518,'Main'),(9912,1,3374,'<h1 class=\"ow_stdmargin ow_ic_gear_wheel\">Under maintenance.</h1>\r\nSorry, the site is undergoing planned maintenance. We\'ll be back soon.'),(76286,1,19519,'User Roles'),(9909,1,3371,'Maintenance Page'),(69336,1,15376,'Plan has been added'),(10314,1,3776,'Flag accepted'),(69085,1,15126,'Date (Birthdate)'),(69083,1,15124,'Location'),(56784,1,13501,'Range'),(10318,1,3780,'Add new'),(9894,1,3356,'<p>\r\nDear {$user_name},\r\n</p>\r\n<p>\r\nWe are glad to let you know that your account on <a href=\"{$site_url}\">{$site_name}</a> has been approved. Now you can sign in here: <a href=\"{$site_url}\">{$site_url}</a>\r\n</p>\r\n<p>\r\nWe hope you enjoy our site to the fullest.\r\n</p>\r\n<p>\r\nThank you,<br />\r\nAdministration<br />\r\n<a href=\"{$site_url}\">{$site_name}</a>\r\n</p>'),(50904,1,10888,'Hello {$username},\r\n\r\nYou have received a new message from {$sendername} on {$site_name}.\r\n\r\nGo to {$replyUrl} to reply to this message. \r\n\r\nSincerely, {$site_name} administration'),(50902,1,10886,'New message from {$sendername}'),(50903,1,10887,'Hello {$username},<br/>\r\n<br/>\r\nYou have received a new message from {$sendername} on {$site_name}.<br/>\r\n<br/>\r\nGo to <a href=\"{$replyUrl}\">{$replyUrl}</a> to reply to this message. <br/>\r\n<br/>\r\nSincerely, {$site_name} administration'),(50898,1,10882,'{$count} conversation(s) marked as unread'),(50899,1,10883,'Mb'),(50900,1,10884,'new'),(50901,1,10885,'You have {$count} new message(s)!'),(50897,1,10881,'Failed to mark conversation as unread'),(17041,1,4661,'Platform update request'),(17042,1,4662,'Are you sure you want to update platform from version <b>{$oldVersion}</b> to <b>{$newVersion}</b>?{$info}'),(50911,1,10895,'All'),(50910,1,10894,'Selected'),(50909,1,10893,'You do not have enough permissions to read this message.'),(50908,1,10892,'Value is incorrect or greater than server limit.'),(50907,1,10891,'Before you continue sending messages let\'s make sure you are a human. Please confirm the security code below:'),(50906,1,10890,'Permission denied'),(50905,1,10889,'No messages'),(9893,1,3355,'Dear {$user_name},\r\n\r\nWe are glad to let you know that your account on {$site_name} has been approved. Now you can sign in here: {$site_url}\r\n\r\nWe hope you enjoy our site to the fullest.\r\n\r\nThank you,\r\nAdministration\r\n{$site_name}\r\n{$site_url}'),(9892,1,3354,'Your account has been approved'),(17097,1,4717,'No'),(50875,1,10859,'Delete'),(50876,1,10860,'Are you sure you want to delete selected conversation(s)?'),(50877,1,10861,'Delete Conversation'),(50878,1,10862,'Delete'),(50879,1,10863,'Conversation has been deleted'),(9889,1,3351,'Approve'),(9890,1,3352,'Updated'),(9846,1,3308,'User Roles'),(9847,1,3309,'Change Role'),(9885,1,3347,'<center>Your account is pending approval</center>'),(14301,1,4105,'Photo'),(55033,1,11750,'s'),(14299,1,4103,'<a href=\"{$userUrl}\">{$userName}</a> commented on <a href=\"{$profileUrl}\">your profile</a>.'),(14297,1,4101,'Cancel'),(14298,1,4102,'Someone comments on my profile'),(14296,1,4100,'ok'),(14283,1,4087,'Are you sure you want to uninstall the plugin?'),(14286,1,4090,'Please sign in'),(14287,1,4091,'or'),(14274,1,4078,'Please enter valid password (min 3 symbols)'),(14267,1,4071,'No photos were uploaded because of excessive size or wrong format'),(14266,1,4070,'Some photos were not uploaded because of excessive size or wrong format'),(14324,1,4128,'Verify'),(14327,1,4131,'You need to verify this email address. We sent verification message upon saving but you may want to send it again.'),(14325,1,4129,'Send verification email'),(14326,1,4130,'Email already verified'),(14328,1,4132,'Verify email'),(14329,1,4133,'Hello,\r\n\r\nSomeone (probably you) set this email address as the official email address of {$site_name} ({$site_url}) website.\r\n\r\nTo complete this process you need to verify this email address by opening the following URL: {$url}\r\n\r\nAlternatively you can open this URL: {$verification_page_url} and paste there the following code: {$code}\r\n\r\nIf you didn\'t try to do that safely ignore this message and your email will not be used.\r\n\r\nThank you,\r\nAdministration\r\n{$site_name}\r\n{$site_url}'),(14330,1,4134,'<p>\r\nHello,\r\n</p>\r\n<p>\r\nSomeone (probably you) set this email address as the official email address of <a href=\"{$site_url}\">{$site_name}</a> website.\r\n</p>\r\n<p>\r\nTo complete this process you need to verify this email address by opening the following URL: <a href=\"{$url}\">{$url}</a>\r\n</p>\r\n<p>\r\nAlternatively you can open <a href=\"{$verification_page_url}\">this URL</a> and paste there the following code: <b>{$code}</b>\r\n</p>\r\n<p>\r\nIf you didn\'t try to do that safely ignore this message and your email will not be used.\r\n</p>\r\n<p>\r\nThank you,<br />\r\nAdministration<br />\r\n{$site_name}<br />\r\n{$site_url}\r\n</p>'),(16978,1,4598,'Deleted'),(16975,1,4595,'Plugin uninstall error'),(14336,1,4140,'Tomorrow'),(14341,1,4145,'Plugin uninstall request'),(14342,1,4146,'Are you sure you want to uninstall \'{$name}\' plugin?'),(14343,1,4147,'Uninstall photo plugin'),(14345,1,4149,'Captcha validator error!'),(14346,1,4150,'Warning'),(14347,1,4151,'Before uninstalling photo plugin we have to remove all existing user photo content. This may take awhile. That is why we will put the site to \"maintenance mode\" and activate it back upon completing the uninstall.'),(14348,1,4152,'Delete content and uninstall plugin'),(14350,1,4154,'Are you sure you want to remove ALL user photos?'),(14351,1,4155,'In progress'),(14352,1,4156,'Please wait while all photo content is being removed. This make take awhile depending on the number of photos on your site.'),(43378,1,9405,'Exclusive questions'),(69334,1,15374,'Plans has been deleted'),(69333,1,15373,'Plans'),(69332,1,15372,'Period'),(57214,1,13931,'Add Banner'),(57215,1,13932,'HTML code for advertisement, for example Google Adsense'),(57216,1,13933,'Code'),(20385,1,6080,'12321'),(20384,1,6079,'213'),(69362,1,15402,'Merchant account settings'),(20378,1,6073,'Post jobs'),(19881,1,5576,'Next time you\'ll be able to start mass mailing not earlier than in <b>{$hours}</b> hours.'),(69363,1,15403,'available'),(69364,1,15404,'Save'),(69365,1,15405,'Merchant business ID'),(69366,1,15406,'PayPal configuration'),(69367,1,15407,'PayPal'),(69368,1,15408,'<a href=\"{$url}\">PayPal plugin</a> requires additional configuration'),(69369,1,15409,'Recurring payments'),(69681,1,15721,'delete to test'),(69680,1,15720,'delete to test'),(20151,1,5846,'Hello {$username}, enter your new password below:'),(20152,1,5847,'Submit'),(20153,1,5848,'New password'),(20154,1,5849,'Repeat password'),(20156,1,5851,'Values in \'password\' and \'repeat password\' fields should beequal'),(20157,1,5852,'Password length should be between {$min} and {$max} symbols'),(20158,1,5853,'Your password successfully changed'),(55037,1,11754,'d'),(57240,1,13957,'Advertisement'),(57239,1,13956,'Advertisement'),(57218,1,13935,'Countries'),(57219,1,13936,'Add'),(57220,1,13937,'Label'),(57221,1,13938,'Add Banner'),(57222,1,13939,'{$count} banner(s)'),(57223,1,13940,'Banner added'),(57224,1,13941,'Banner deleted'),(57225,1,13942,'Banner edited'),(57226,1,13943,'Are you sure you want to delete the banner?'),(57227,1,13944,'Delete'),(57228,1,13945,'Edit'),(57229,1,13946,'Edit'),(57230,1,13947,'Banner List'),(57231,1,13948,'Banner list changed'),(57232,1,13949,'Global'),(57233,1,13950,'Please assign ads to appropriate places and pages'),(57234,1,13951,'Manage banners'),(57235,1,13952,'Banner placement'),(57236,1,13953,'Hide Ads'),(57237,1,13954,'Advertisement'),(57238,1,13955,'Edit'),(16243,1,4164,'Date validator error!'),(16244,1,4165,'Float validator error!'),(16245,1,4166,'Int validator error!'),(16246,1,4167,'Alphanumeric validator error!'),(16247,1,4168,'Url validator error!'),(16248,1,4169,'Email validator error!'),(16249,1,4170,'RegExp validator error!'),(16250,1,4171,'String validator error!'),(16900,1,4520,'Plugin updates available: <b>{$count}</b>. <a href=\"{$link}\">View</a>'),(16898,1,4518,'Sign Out'),(16899,1,4519,'Platform update available. <a href=\"{$link}\">Update </a>'),(16896,1,4516,'My Profile'),(43396,1,9423,'Submit'),(16895,1,4515,'Preferences'),(16897,1,4517,'Mailbox'),(16881,1,4500,'Photo plugin uninstall initiated.'),(56185,1,12902,'Reset code already sent. Please try again in 10 minutes.'),(20138,1,5833,'There is no user with this email address'),(20137,1,5832,'Type the email address you used at registration.'),(57241,1,13958,'Advertisement'),(20101,1,5796,'Membership'),(69308,1,15348,'Permissions'),(69309,1,15349,'Add membership'),(69310,1,15350,'Add'),(69311,1,15351,'Add new plan'),(69312,1,15352,'Add role'),(69313,1,15353,'Browse users by membership'),(69314,1,15354,'Memberships'),(69315,1,15355,'Subscribe page'),(69316,1,15356,'Membership configuration'),(69317,1,15357,'Browse users by membership'),(69318,1,15358,'Paid Membership'),(69319,1,15359,'Checkout'),(69320,1,15360,'Choose plan'),(69321,1,15361,'Create at least 1 plan for this membership'),(69322,1,15362,'days'),(69323,1,15363,'Delete selected'),(69324,1,15364,'Displaying members with'),(69325,1,15365,'Expires'),(69326,1,15366,'Membership'),(69327,1,15367,'Membership has been added'),(69328,1,15368,'My membership'),(69329,1,15369,'No plans added'),(69330,1,15370,'Select at least one plan'),(69331,1,15371,'Select at least one membership'),(19427,1,5124,'When turned on users will have to verify email addresses before accessing the site.'),(19428,1,5125,'Email Settings'),(19429,1,5126,'Confirm email'),(20150,1,5845,'To reset password you just need to enter your email address, get our reset code and use it to change your old password.'),(20149,1,5844,'Create new password'),(20146,1,5841,'Reset password request'),(20147,1,5842,'Please enter valid reset code'),(20148,1,5843,'Reset your password'),(20145,1,5840,'Submit'),(20142,1,5837,'Forgot password'),(20143,1,5838,'Enter your reset code'),(20144,1,5839,'Type in the reset code sent to you. Then you can enter a new password.'),(76543,1,19776,'Membership info'),(76540,1,19773,'{$price} {$currency} per {$period} {$periodUnits} (recurring)'),(69340,1,15380,'<a href=\"{$url}\">Paid Membership</a> plugin should be configured to work properly. <br />You need to create at least one membership type with at least one plan.'),(19242,1,4939,'Plugin successfully updated'),(19069,1,4766,'My profile'),(19070,1,4767,'Finance'),(19073,1,4770,'Finance'),(19072,1,4769,'Sorry, this username is restricted'),(19075,1,4772,'Restricted Usernames'),(19076,1,4773,'Restricted Usernames'),(19077,1,4774,'Add restricted username'),(19078,1,4775,'Username'),(19079,1,4776,'Add'),(19080,1,4777,'Restricted Usernames List'),(19086,1,4783,'Username successfully added'),(19088,1,4785,'The source code of \'<i>{$name}</i>\' plugin was updated. Need to update plugin DB.'),(19089,1,4786,'Update'),(19096,1,4793,'Payment gateway not found or is inactive'),(19113,1,4810,'Information about order was not found'),(19114,1,4811,'Failed to initialize order'),(19135,1,4832,'Plugin'),(19145,1,4842,'Time'),(19146,1,4843,'Amount'),(19157,1,4854,'Details'),(19158,1,4855,'Gateway'),(19159,1,4856,'Transaction ID'),(19160,1,4857,'Statistics'),(19171,1,4868,'Year Range'),(19172,1,4869,'(Year Range)'),(19173,1,4870,'unavailable'),(19174,1,4871,'Your order has been canceled'),(19175,1,4872,'An error occured during your order processing'),(19176,1,4873,'Your order has been completed successfully'),(19177,1,4874,'Your order has been verified'),(19178,1,4875,'Your order is being processed'),(19209,1,4906,'Pay securely with {$gateway}'),(19210,1,4907,'Your order status'),(20355,1,6050,'Dear {$username},\r\n<br />\r\nYou requested to reset your password. Follow this link ({$resetUrl}) to change your password.\r\n<br />\r\nIf the link doesn\'t work, please enter the code manually here ({$requestUrl}). Code: {$code}\r\n<br />\r\nIf you didn\'t request password reset, please ignore this email.\r\n<br /><br />\r\nThank you,\r\n{$site_name}<br />'),(20353,1,6048,'The content owner can delete comments'),(20350,1,6045,'<b>We recommend against making username field editable, because changing username will result in changing the profile URL.</b>'),(20356,1,6051,'Dear {$username},\r\n\r\nYou requested to reset your password. Follow this link ({$resetUrl}) to change your password.\r\n\r\nIf the link doesn\'t work, please enter the code manually here ({$requestUrl}). Code: {$code}\r\n\r\nIf you didn\'t request password reset, please ignore this email.\r\n\r\nThank you,\r\n{$site_name}'),(20351,1,6046,'Market'),(20352,1,6047,'Comment posted jobs'),(69973,1,16013,'Search'),(20325,1,6020,'Installation'),(20326,1,6021,'Troubleshooting'),(20327,1,6022,'Plugin Development'),(20328,1,6023,'Theme Design'),(20329,1,6024,'Consulting'),(20703,1,6158,'The content owner can delete comments'),(20704,1,6159,'View Links'),(20700,1,6155,'Links'),(20701,1,6156,'Write on comment wall'),(20702,1,6157,'Add a link'),(69747,1,15787,'Theme update request'),(56702,1,13419,'commented on their photo'),(43269,1,9296,'Admin'),(43268,1,9295,'Search users'),(43267,1,9294,'Delete comment by content owner'),(43258,1,9285,'Add new role'),(43259,1,9286,'User role permissions'),(75809,1,19042,'grey'),(43270,1,9297,'Edit types'),(46836,1,10065,'Advanced upload'),(43264,1,9291,'Add comments'),(46835,1,10064,'Enable advanced upload'),(43266,1,9293,'{$count} values'),(43466,1,9493,'Submit'),(43348,1,9375,'Question'),(43350,1,9377,'Type'),(43354,1,9381,'Theme Info'),(43355,1,9382,'Values'),(69337,1,15377,'Are you sure you want to delete selected plans?'),(43359,1,9386,'Here you can view existing pages and menu items on your site. These are your own custom pages and those activated by plugins. <span class=\"ow_highlight\">Drag\'n\'drop</span> items across menus to change their location.'),(43360,1,9387,'Main Menu'),(43361,1,9388,'Require'),(43362,1,9389,'Bottom Menu'),(43363,1,9390,'Hidden Pages'),(43364,1,9391,'Sign up'),(43365,1,9392,'Here are pages that actually exist but are not shown on the site. <span class=\"ow_highlight\">Drag\'n\'drop</span> here those items that you want to hide.'),(43366,1,9393,'Edit'),(69679,1,15719,'delete to test'),(43368,1,9395,'View'),(43369,1,9396,'Item'),(43370,1,9397,'visible to everyone'),(43371,1,9398,'Search'),(43445,1,9472,'Platform version <b>{$version}</b> (build {$build})'),(43442,1,9469,'Activity'),(43440,1,9467,'online now'),(23349,1,6301,'Spaces are not allowed'),(60803,1,14102,'User avatar change'),(60804,1,14103,'Ouch, that\'s a long text! Try to be a little more compact, under {$maxLength} symbols.'),(69375,1,15415,'Add'),(69376,1,15416,'Add new pack'),(69840,1,15880,'I can help others with'),(51589,1,11573,'Can\'t unzip downloaded archive'),(25807,1,6823,'Plugin is uploaded and ready for installation'),(55052,1,11769,'Profile unblocked'),(37391,1,9251,'Tag Search'),(69789,1,15829,'Brown'),(25765,1,6781,'Send Private Message'),(25764,1,6780,'Read incoming message'),(25763,1,6779,'Mailbox'),(50929,1,10913,'The uploaded file exceeds the max upload filesize.'),(50930,1,10914,'File {$file_name} :'),(50931,1,10915,'Upload file not found!'),(50932,1,10916,'No file was uploaded.'),(50933,1,10917,'Missing a temporary folder.'),(50934,1,10918,'Max upload attachment size'),(50935,1,10919,'Send private message'),(50936,1,10920,'You can write your reply here...'),(50937,1,10921,'You do not have enough permissions to write  messages.'),(25698,1,6714,'You should select user(s) to continue'),(50928,1,10912,'A PHP extension stopped the file upload. PHP does not provide a way to ascertain which extension caused the file upload to stop.'),(50927,1,10911,'The uploaded file was only partially uploaded.'),(50926,1,10910,'File upload fail!'),(50925,1,10909,'The file extention is not allowed.'),(50923,1,10907,'Delete file fail!'),(50924,1,10908,'Delete file success!'),(50922,1,10906,'Too many files uploaded!'),(50921,1,10905,'Failed to write file to disk.'),(50920,1,10904,'To'),(50917,1,10901,'Settings updated'),(50918,1,10902,'Subject'),(50919,1,10903,'Text'),(50916,1,10900,'Sent messages - {$site_name}'),(50913,1,10897,'Sent'),(50912,1,10896,'Send'),(25680,1,6696,'edited their profile details'),(25681,1,6697,'joined our site!'),(36714,1,8574,'Send gift'),(36713,1,8573,'Virtual Gifts'),(25654,1,6678,'Total: <b>{$count}</b> users'),(25653,1,6677,'Unfortunately you reset code is invalid or expired. Please follow the <a href=\"{$url}\">link</a> and try to reset it again.'),(25651,1,6675,'Expired reset code'),(25650,1,6674,'Disable JavaScript'),(25649,1,6673,'Enable JavaScript'),(55049,1,11766,'Block'),(25647,1,6671,'changed their avatar'),(37169,1,9029,'Newsfeed'),(37170,1,9030,'Allow comments'),(50866,1,10850,'between'),(50867,1,10851,'Check now'),(50868,1,10852,'Compose Message'),(50869,1,10853,'Showing {$showing} messages of {$total}total, {$new} new'),(69361,1,15401,'About my match'),(36804,1,8664,'User Credits'),(69402,1,15442,'Packs have been updated'),(46463,1,9694,'display and set required'),(36056,1,7916,'Add event'),(36057,1,7917,'View event'),(36058,1,7918,'Comment events'),(46458,1,9689,'Settings not changed'),(46457,1,9688,'Settings changed'),(46456,1,9687,'Mass Mailing'),(55040,1,11757,'d'),(25547,1,6571,'Forbidden'),(25546,1,6570,'Page not found'),(25545,1,6569,'You don\'t have permission to access the page.'),(25544,1,6568,'Forbidden'),(37128,1,8988,'View topic'),(37129,1,8989,'Create/Edit topic'),(55038,1,11755,'d'),(55039,1,11756,'d'),(37196,1,9056,'Recently uploaded photos by members of {$site_name}.'),(37195,1,9055,'Latest photos - {$site_name}'),(35552,1,7429,'No users'),(69839,1,15879,''),(69401,1,15441,'Here you can configure how users purchase credits. Create packs of <b>X</b> credits for the price of <b>Y</b>{$default_currency}.'),(69400,1,15440,'Credit packs for purchase'),(69399,1,15439,'Pack'),(69398,1,15438,'No credit packs'),(69397,1,15437,'No actions'),(25492,1,6516,'{$username} <span class=\"ow_small\">{$status}</span>'),(46452,1,9683,'My Preferences'),(37133,1,8993,'Label on avatar'),(37134,1,8994,'Yes'),(37135,1,8995,'No'),(37136,1,8996,'Display role label on avatar'),(46837,1,10066,'Simple upload'),(46839,1,10068,'View my photo albums'),(37127,1,8987,'Forum'),(25474,1,6498,'Submit'),(25473,1,6497,'#count# users selected'),(69810,1,15850,'Smoking'),(37137,1,8997,'Label color'),(37139,1,8999,'Role updated'),(69837,1,15877,''),(69838,1,15878,'Favorite books'),(69836,1,15876,'Sport Activities'),(25465,1,6489,'No users'),(25463,1,6487,'Default avatar deleted'),(50857,1,10841,'New message has been added'),(50856,1,10840,'Send'),(25453,1,6477,'Change'),(25454,1,6478,'Cancel'),(30740,1,7218,'Can\'t install plugin with empty key'),(69691,1,15731,'test for deactivate'),(69692,1,15732,'test for deactivate'),(25462,1,6486,'Are sure you want to delete default avatar image?'),(25449,1,6473,'Change to override theme default avatar image'),(51593,1,11577,'To what URL should this link go:'),(69830,1,15870,'zxczx'),(69829,1,15869,'zxc'),(72405,1,18445,'About the person I want to meet'),(69824,1,15864,'Silver'),(69825,1,15865,'Private'),(69826,1,15866,'fffffffffff'),(69827,1,15867,'fffffffffff'),(69828,1,15868,'zsczxc'),(50858,1,10842,'Mailbox - Plugin Settings'),(69380,1,15420,'Choose credit pack'),(69381,1,15421,'Credits'),(69382,1,15422,'Credit balance'),(69383,1,15423,'Succesfully granted {$amount} credits'),(69384,1,15424,'Error. Please, try again with a correct integer value.'),(69385,1,15425,'Credits balance updated'),(69386,1,15426,'Receiving credits'),(69387,1,15427,'<a href=\"{$userUrl}\">{$userName}</a> granted you {$amount} credits. Congratulations!'),(69388,1,15428,'Credits'),(69389,1,15429,'Someone grants me credits'),(69390,1,15430,'Get more credits'),(55042,1,11759,'Confirm'),(69760,1,15800,'Black'),(69731,1,15771,'My Matches'),(69732,1,15772,'most compatible first'),(69733,1,15773,'newest first'),(69790,1,15830,'Gray'),(69791,1,15831,'Green'),(69792,1,15832,'Hazel'),(25382,1,6406,'Users'),(37130,1,8990,'Subscribe to forum topics'),(25354,1,6378,'View all ({$count})'),(25353,1,6377,'Theme custom CSS edited'),(25352,1,6376,'Invalid FTP attributes! Provided user doesn\'t have permissions to overwrite files.'),(69820,1,15860,'Smoking'),(69821,1,15861,'Write what you want to see in the other person to make things click. Try to take it easy, don\'t just put your list of requirements. You are not shopping, this scares good people off.'),(69816,1,15856,'Very often'),(69819,1,15859,''),(69815,1,15855,'Often'),(69813,1,15853,'Rarely'),(69814,1,15854,'Socially'),(25342,1,6366,'Default avatar image'),(69696,1,15736,'Settings'),(69697,1,15737,'Matchmaking'),(25239,1,6306,'Mark email verified'),(25241,1,6308,'Selected user(s) emails are verified'),(47345,1,10574,'Fullsize limit'),(47346,1,10575,'All photos larger than this size (X or Y) will be resized down to this limit for storage.'),(27933,1,6890,'You don\'t have available plugins here.'),(47077,1,10306,'custom page'),(37349,1,9209,'<span class=\"ow_small\">Total: <b>{$avgScore}</b></span> (<span class=\"ow_outline\">{$ratesCount}</span> rates)'),(37348,1,9208,'Your rate:'),(37313,1,9173,'Daily login'),(37314,1,9174,'User join'),(37315,1,9175,'Search users'),(37316,1,9176,'Write on comment wall'),(55006,1,11723,'Billing gateway products binding'),(37308,1,9168,'Add photo'),(37309,1,9169,'Comment photo'),(69688,1,15728,'test for deactivate'),(37279,1,9139,'Photo'),(37280,1,9140,'View photo'),(37281,1,9141,'Upload photo'),(37282,1,9142,'Comment photo'),(37283,1,9143,'The content owner can delete comments'),(46464,1,9695,'hide'),(37273,1,9133,'User Roles'),(46455,1,9686,'Save'),(37269,1,9129,'Actions'),(46465,1,9696,'Describe this photo'),(76181,1,19414,'Pending Approval'),(76180,1,19413,'Edited: {$time}'),(76179,1,19412,'Added: {$time}'),(76178,1,19411,'Premoderation'),(76177,1,19410,'Premoderation'),(46466,1,9697,'Add tags'),(76184,1,19417,'{$count} {$content} have been approved'),(76182,1,19415,'Settings saved'),(76183,1,19416,'{$content} has been approved'),(76185,1,19418,'For approve'),(76186,1,19419,'added new {$content}'),(76187,1,19420,'edited their {$content}'),(76188,1,19421,'Premoderation'),(76189,1,19422,'Type of Content'),(37246,1,9106,'Checkout'),(43390,1,9417,'Please enter tag'),(47347,1,10576,'Enable advanced Adobe Flash uploader to let users choose any number of files, resize, rotate photos before upload'),(69798,1,15838,'Athletic'),(43375,1,9402,'Legend'),(43376,1,9403,'or'),(43377,1,9404,'Account type'),(69806,1,15846,'Socially'),(69807,1,15847,'Often'),(69808,1,15848,'Very often'),(69801,1,15841,''),(69802,1,15842,'Drinking'),(69803,1,15843,'Never'),(69804,1,15844,'Quit'),(51312,1,11296,'Please enter comment message'),(69799,1,15839,'A little plump'),(69800,1,15840,'Big and lovely'),(51328,1,11312,'Basic'),(51327,1,11311,'Profile question settings'),(51326,1,11310,'View all questions'),(69391,1,15431,'Grant'),(37211,1,9071,'{$number} photos by {$displayName}.'),(37210,1,9070,'{$albumName} (photo album by {$displayName}) - {$site_name}'),(37209,1,9069,'Photo albums by {$displayName} - {$albums}, and others.'),(37208,1,9068,'{$displayName}\'s photo albums - {$site_name}'),(37207,1,9067,'Upload photos - {$site_name}'),(37206,1,9066,'{$title} - photo tagged as {$tags}.'),(37205,1,9065,'{$title} - photo at {$site_name}'),(37204,1,9064,'Browse photos by tags: {$topTags}, and others.'),(37203,1,9063,'Browse photos by tags - {$site_name}'),(37202,1,9062,'View photos tagged as \'{$tag}\'.'),(37201,1,9061,'\'{$tag}\' photos - {$site_name}'),(37200,1,9060,'Most highly rated photos uploaded by members of {$site_name}.'),(37199,1,9059,'Top rated photos - {$site_name}'),(37198,1,9058,'Featured photos uploaded by members of {$site_name}.'),(37197,1,9057,'Featured photos - {$site_name}'),(30826,1,7304,'Language/language pack imported'),(30824,1,7302,'Empty or invalid language pack. Please select valid one and try again.'),(50865,1,10849,'Mailbox'),(30741,1,7219,'Errors occurred while installing plugin \"{$plugin}\". Please uninstall it and try again.'),(69378,1,15418,'User credits'),(69379,1,15419,'Buy credits'),(51595,1,11579,'No favicon. Check it to enable.'),(35651,1,7528,'Join Date'),(35652,1,7529,''),(35968,1,7828,'Oxwall cron script is not active. Please add it to cron jobs list ({$path}).'),(69835,1,15875,'Your sport activities'),(69834,1,15874,'Music'),(69833,1,15873,''),(69831,1,15871,'zxczx'),(69832,1,15872,'zxczx'),(69796,1,15836,'Slim'),(69742,1,15782,'Are you sure you want to update <i>\'{$name}\'</i> theme from version <b>{$oldVersion}</b> to <b>{$newVersion}</b>? The theme is commercial, to update it please enter license key and press \'Update\' button.'),(69743,1,15783,'Warning'),(69744,1,15784,'Are you sure you want to update <i>\'{$name}\'</i> theme from version <b>{$oldVersion}</b> to <b>{$newVersion}</b>?'),(69753,1,15793,'Theme update is not available at that moment'),(69752,1,15792,'Invalid or empty update pack archive'),(69749,1,15789,'Theme is up to date'),(69750,1,15790,'Are you sure you want to delete this question?\r\n\r\nATTENTION: IT WILL PERMANENTLY DELETE ANSWERS FOR THIS QUESTION IN USER PROFILES.\r\n\r\nThis question also has a dependent question(s) {$questions}. IT WILL BE REMOVED WITH ALL PROFILE INFO AS WELL.'),(69751,1,15791,'Please enter valid license key'),(69373,1,15413,'Actions'),(76430,1,19663,'Allow users to grant credits to each other'),(69377,1,15417,'User Credits configuration'),(51590,1,11574,'Text to display:'),(36055,1,7915,'Events'),(75781,1,19014,'Users'),(75782,1,19015,'Profile'),(75783,1,19016,'Crop avatar failed.'),(75784,1,19017,'Drag & drop image here or click to browse'),(75785,1,19018,'Drop image here'),(75786,1,19019,'Flagged: {$time}'),(75787,1,19020,'Maximum upload avatar size'),(75788,1,19021,'sdffsdf'),(75789,1,19022,'whoohaa'),(75790,1,19023,'dsfsdfs\r\nsdfsfsdfsd\r\nsdfsdfsdf'),(75791,1,19024,'qqq'),(47059,1,10288,'Insert HTML'),(47060,1,10289,'{$site_name} registration'),(50859,1,10843,'and'),(47024,1,10253,'View more'),(47029,1,10258,'Describe your photos'),(47030,1,10259,'NO'),(47031,1,10260,'PROCEED WITH UPLOADING PHOTOS?'),(47032,1,10261,'PROCESSING'),(47033,1,10262,'UPLOADING'),(47034,1,10263,'COMPLETE'),(47035,1,10264,'UPLOAD'),(47036,1,10265,'ADD PHOTOS'),(47037,1,10266,'Bold'),(47038,1,10267,'Italic'),(47039,1,10268,'Underline'),(47040,1,10269,'Insert Ordered List'),(47041,1,10270,'Insert Unordered List'),(47042,1,10271,'Insert Link'),(47043,1,10272,'Insert Image'),(47044,1,10273,'Insert Video'),(47045,1,10274,'Insert HTML'),(47046,1,10275,'Show/Hide HTML Source View'),(47052,1,10281,'Photo'),(47053,1,10282,'Add'),(47054,1,10283,'Insert'),(47055,1,10284,'Please fill `label` and `url` fields to insert the link'),(47056,1,10285,'Insert video'),(47058,1,10287,'Enter video code please'),(54914,1,11631,'Can\'t upload archive by FTP'),(69412,1,15452,'Losing credits'),(76533,1,19766,'Credit rewards'),(76534,1,19767,'<b>{$credits}</b> credits for <b>{$curr} {$price}</b>'),(55007,1,11724,'Product'),(55053,1,11770,'User roles'),(55008,1,11725,'Gateway product ID'),(47540,1,10746,'<a href=\"{$userUrl}\">{$user}</a> uploaded new <a href=\"{$url}\">photo</a>.'),(47541,1,10747,'<a href=\"{$userUrl}\">{$user}</a> added {$count} photos to <a href=\"{$albumUrl}\">{$albumName}</a> album'),(47542,1,10748,'<a href=\"{$commentorUrl}\">{$commentor}</a> commented on <a href=\"{$ownerUrl}\">{$owner}</a>\'s <a href=\"{$url}\">photo</a>'),(47536,1,10742,'test'),(47537,1,10743,'mmm'),(47530,1,10736,''),(47531,1,10737,'custom page'),(47532,1,10738,'Test installation on XAMP'),(47533,1,10739,'mmm'),(47528,1,10734,'custom page'),(47529,1,10735,''),(47524,1,10730,'test'),(47525,1,10731,'custom page'),(47526,1,10732,''),(47527,1,10733,'mmm'),(47523,1,10729,'test'),(47522,1,10728,''),(47521,1,10727,'dsfsdfs\r\nsdfsfsdfsd\r\nsdfsdfsdf'),(47520,1,10726,'Make \'Photo Upload\' a required field on Join Page.'),(47517,1,6886,''),(47518,1,6887,''),(47519,1,10725,'Make \'Photo Upload\' a required field'),(47516,1,6885,''),(47514,1,6883,''),(47515,1,6884,''),(47513,1,6882,''),(47512,1,6881,''),(47507,1,6875,''),(47508,1,6877,''),(47509,1,6878,''),(47510,1,6879,''),(47511,1,6880,''),(47501,1,6869,''),(47502,1,10723,''),(47503,1,10724,''),(47504,1,6872,''),(47505,1,6873,''),(47506,1,6874,''),(61076,1,14375,'Admin Dashboard'),(47491,1,10719,''),(47492,1,6876,''),(47493,1,6241,''),(47494,1,6242,''),(47495,1,6861,'Hour'),(47496,1,6862,'Minute'),(47497,1,6865,''),(47498,1,10720,''),(47499,1,10721,''),(47500,1,10722,''),(61083,1,14382,'Avatar size'),(61081,1,14380,''),(61082,1,14381,''),(61077,1,14376,'Manage Pages'),(61078,1,14377,'Manage Plugins'),(61079,1,14378,'Edit Theme'),(61080,1,14379,'Manage Users'),(47464,1,10692,'Groups'),(47463,1,10691,'The author can delete wall comments'),(47462,1,10690,'Create groups'),(47461,1,10689,'Create/Edit topic'),(47459,1,2238,''),(47460,1,10688,'Write on comment wall'),(47449,1,10678,'jjj'),(47450,1,10679,'<meta>custom meta</meta>'),(47451,1,10680,'jjj'),(47458,1,10687,'Dear {$username},\r\n\r\nYou requested to reset your password. Here\'s your new password: {$password}\r\n\r\nFeel free to log in to your account at {$site_url} and change your password again if necessary.\r\n\r\nThank you,\r\n{$site_name}'),(47447,1,10676,'Please provide valid image in ico format'),(47446,1,10675,'uploaded {$number} new photos to <a href=\"{$albumUrl}\">{$albumName}</a> album'),(47445,1,10674,'and {$moreCount} more'),(47456,1,10685,'User Settings'),(47440,1,10669,'Check if you don\'t want to allow people to add rich media (like photo and video) in comments throughout the site.'),(47457,1,10686,'Dear {$username},<br />\r\n<br />\r\nYou requested to reset your password. Here\'s your new password: <b>{$password}</b><br />\r\n<br />\r\nFeel free to log in to your account at <a href=\"{$site_url}\">{$site_url}</a> and change your password again if necessary.<br />\r\n<br />\r\nThank you,<br />\r\n{$site_name}'),(57190,1,13907,'No Content'),(61127,1,14428,'Unsubscribe code expired'),(57192,1,13909,'Allow profile wall posts'),(56561,1,13278,'Avatars folder is missing or not writable.'),(56562,1,13279,'The max reasonable big avatar size is {$max}px'),(56563,1,13280,'The max reasonable avatar size is {$max}px'),(47397,1,10626,'View my presence on site'),(47435,1,10664,'Disable custom HTML'),(47394,1,10623,'List domains from which you allow to embed videos or put iframes. These should be sites that provide embed code for videos or valid content which you entrust. One domain per line.'),(47436,1,10665,'Check if you don\'t want to allow users write HTML code in posts (like blogs and forums). Recommended for security reasons.'),(47437,1,10666,'Disable rich media'),(47438,1,10667,'Check if you don\'t want to allow people to add rich media (like photo and video) in posts (like blogs and forums).'),(47390,1,10619,'Content input'),(47389,1,10618,'General'),(47385,1,10614,'Profile wall comments'),(47384,1,10613,'Embed your video code here:'),(47383,1,10612,'Your html code:'),(76290,1,19523,'SMTP'),(47381,1,10610,'Allowed resources list'),(76220,1,19453,'Invalid range'),(47380,1,10609,'Maximum upload file size'),(47378,1,10607,'Rich media settings'),(47376,1,10605,'Content comments'),(47439,1,10668,'Disable rich media'),(47373,1,10602,'Text content'),(50914,1,10898,'Sent'),(47372,1,10601,'User input settings'),(50915,1,10899,'Compose reply'),(50870,1,10854,'Conversation'),(50871,1,10855,'{$conversation_title} - {$site_name}'),(50872,1,10856,'Send Private Message'),(50873,1,10857,'Message NOT sent'),(50860,1,10844,'delete'),(50861,1,10845,'Attachments'),(50862,1,10846,'Attach files'),(50863,1,10847,'Read incoming message'),(50864,1,10848,'Send Private Message'),(69754,1,15794,'Theme not found'),(47352,1,10581,'User profile edit'),(47351,1,10580,'New user registration'),(47349,1,10578,'More'),(47079,1,10308,'custom page'),(50895,1,10879,'Failed to mark conversation as read'),(50896,1,10880,'{$count} conversation(s) marked as read'),(61113,1,14414,'Here\'s the latest activity on <a href=\"{$site_url}\"> {$site_name}</a> related to you:'),(75792,1,19025,'sfdaf'),(75793,1,19026,'sdfsdf'),(75794,1,19027,'sdfsdfsdf'),(75795,1,19028,'qqqq'),(75796,1,19029,'ppp'),(75797,1,19030,'custom page'),(75798,1,19031,'custom page'),(75799,1,19032,'asdasdasdas\r\ndasdasdsadsa\r\ndsadasdsa'),(75800,1,19033,'base+local_page_content_page_61525903'),(75801,1,19034,'tttt'),(75802,1,19035,'mmm'),(75803,1,19036,'jjj'),(75804,1,19037,'dsfsdfdsfdsfdsfdsfdsf'),(75805,1,19038,'mmm'),(75806,1,19039,'test'),(75807,1,19040,'test2'),(61279,1,14580,'This text can\'t be longer than {$max_symbols_count} symbols'),(61110,1,14411,'Notifications'),(69182,1,15222,'Map'),(61112,1,14413,'Talk soon,<br />\r\n{$site_name}, administration<br />\r\n{$site_url}'),(61126,1,14427,'Unsubscribe from all notifications'),(61119,1,14420,'Save'),(69178,1,15218,'Automatically (if you don\'t show up on the site for 2 days)'),(69179,1,15219,'Also send by email'),(69181,1,15221,'Profile Details'),(61117,1,14418,'Dear {$userName},\r\nHere\'s the latest activity on {$site_name} related to you:'),(61116,1,14417,'Talk soon,\r\n{$site_name}, administration\r\n{$site_url}'),(46655,1,9884,'Website icon in .ico format (16x16px)'),(61115,1,14416,'Latest activity on {$site_name}'),(61114,1,14415,'Dear {$userName},'),(46654,1,9883,'Favicon'),(46652,1,9881,'Custom tail code'),(46653,1,9882,'Code added to HTML document right before closing &lt;/BODY&gt; tag (custom Javascript).'),(46651,1,9880,'Code added to HTML document head area (custom Javascript/CSS or META info).'),(46649,1,9878,'Settings saved'),(46650,1,9879,'Custom head code'),(46648,1,9877,'An error occurred while saving data, please try again'),(76289,1,19522,'Page settings'),(46645,1,9874,'Page settings'),(46643,1,9872,'User Settings'),(46642,1,9871,'Error downloading platform update'),(46641,1,9870,'View my profile'),(69411,1,15451,'If value is positive credits will be received, if negative - lost'),(69410,1,15450,'Credits ({$credits})'),(69407,1,15447,'Price'),(69408,1,15448,'Price in credits'),(69409,1,15449,'Grant credits'),(46679,1,9908,'values'),(46680,1,9909,'Edit Language'),(46681,1,9910,'RTL'),(46682,1,9911,'Check it if you need \"right to left\" text direction'),(46683,1,9912,'Language edited, please wait...'),(46684,1,9913,'Language edit failed, please try again'),(61128,1,14429,'You have been successfully unsubscribed'),(50874,1,10858,'Message sent'),(69689,1,15729,'test for deactivate'),(69690,1,15730,'test for deactivate'),(46468,1,9699,'Add description'),(46467,1,9698,'No photo selected'),(46336,1,9567,'Use military time'),(46337,1,9568,'Roles'),(46461,1,9692,'Uncheck this box to stop receiving mass-mailing'),(55011,1,11728,'aaaa'),(55012,1,11729,'aaa2'),(55013,1,11730,'33'),(55014,1,11731,'44'),(55015,1,11732,'aaa'),(55016,1,11733,'sss'),(55017,1,11734,'a'),(55018,1,11735,'ddd'),(61129,1,14430,'Are you sure you want to unsubscribe from these notifications?'),(61130,1,14431,'Unsubscribe from this type of notifications'),(46309,1,9540,'I agree with <a target=\'blank\' href=\'{$site_url}terms-of-use\' >terms of use</a>'),(70324,1,16364,'Order'),(46310,1,9541,'Terms of use'),(46308,1,9539,'Terms of use'),(46311,1,9542,'Terms of use'),(46303,1,9534,'Let users upload avatar on registration'),(46301,1,9532,'Require users to agree to terms of use on registration'),(46300,1,9531,'Registration'),(46299,1,9530,'Enable \'Terms of use\' checkbox'),(46313,1,9544,'<p class=\"ow_smallmargin\">\r\nWelcome to our website. If you continue to browse and use this website, you are agreeing to comply with and be bound by the following terms and conditions of use, which together with our privacy policy govern our relationship with you in relation to this website. If you disagree with any part of these terms and conditions, please do not use our website.\r\n</p>\r\n<p class=\"ow_stdmargin\">\r\nThe term \'website\' or \'us\' or \'we\' refers to the owner of the website. The term \'user\' refers to the website visitor.\r\n </p>\r\n<p class=\"ow_smallmargin\">\r\nThe use of this website is subject to the following terms of use:\r\n </p>\r\n<ul class=\"ow_stdmargin ow_regular\">\r\n<li class=\"ow_smallmargin\">\r\nThe content of the pages of this website is for user’s general information and use only. It is subject to change without notice.\r\n </li>\r\n<li class=\"ow_smallmargin\">\r\nUser acknowledges that neither we nor any third parties provide any warranties while the user is using this website for any particular purpose. We expressly exclude liability for any possible harm to the fullest extent permitted by law.\r\n </li>\r\n<li class=\"ow_smallmargin\">\r\nUser’s use of any information or materials on this website is entirely at their own risk, for which we shall not be liable. It shall be user’s own responsibility to ensure that any products, services or information available through this website meet user’s specific requirements.\r\n </li>\r\n<li class=\"ow_smallmargin\">\r\nThis website contains material that may be owned by or licensed to us. This material includes, but is not limited to the design, layout, look, appearance and graphics. Reproduction is prohibited other than upon receiving explicit permission.\r\n </li>\r\n<li class=\"ow_smallmargin\">\r\nUnauthorised use of this website may give rise to a claim for damages and/or be a criminal offence.\r\n </li>\r\n<li class=\"ow_smallmargin\">\r\nThis website may also include links to other websites. These links are provided for user’s convenience to provide further information. They do not signify that we endorse said website(s). We have no responsibility for the content of the linked website(s).\r\n </li>\r\n<li class=\"ow_smallmargin\">\r\nUser agrees not to submit illegal content to this website, and agree to warn website owners after seeing other users doing it.\r\n</li>\r\n</ul>'),(46297,1,9528,'Avatar upload'),(69759,1,15799,'Appearance'),(46291,1,9522,'Clone language'),(46275,1,9506,'werwrw'),(46276,1,9507,'wer'),(46277,1,9508,'wr'),(46278,1,9509,'wer'),(46279,1,9510,'ew'),(46280,1,9511,'r'),(46281,1,9512,'w'),(46263,1,9494,'Users'),(46264,1,9495,'Count'),(50850,1,10834,'ppp'),(50849,1,10833,'ppp'),(50848,1,10832,'ppp'),(50847,1,10831,'ppp'),(50855,1,10839,'sdfsdfsdfsdf1333'),(68600,1,14641,'grey'),(54918,1,11635,'(Server limit {$value} Mb)'),(54912,1,11629,'base+local_page_content_page_61525903'),(54909,1,11626,'123'),(54910,1,11627,'base+local_page_title_page_61525903'),(54911,1,11628,'base+local_page_meta_tags_page_61525903'),(51594,1,11578,'Open in new window'),(51334,1,11318,'<span class=\"ow_highlight\">Drag\'n\'drop</span> items to the page to add features or custom components.\n            These are items activated by <a href=\"{$pluginsUrl}\">plugins</a>. If you want an element to stay on all pages put it to the sidebar.'),(51333,1,11317,'Items visibility:\r\n            <span class=\"ow_mild_green ow_small\" style=\"border: 1px solid rgb(204, 204, 204); padding: 1px 3px;\">users only</span>\r\n            <span class=\"ow_mild_red ow_small\" style=\"border: 1px solid rgb(204, 204, 204); padding: 1px 3px;\">guests only</span>\r\n            <span class=\"ow_small\" style=\"border: 1px solid rgb(204, 204, 204); padding: 1px 3px;\">everyone</span>'),(51329,1,11313,'Theme CSS'),(51330,1,11314,'View all pages/menus'),(50963,1,10947,'sf'),(50962,1,10946,'fa'),(50960,1,10944,'asf'),(50961,1,10945,'as'),(50958,1,10942,'asf'),(50959,1,10943,'as'),(50955,1,10939,'safdas'),(50950,1,10934,'File upload fail!'),(50957,1,10941,'asfasf'),(50956,1,10940,'asfas'),(50949,1,10933,'A PHP extension stopped the file upload. PHP does not provide a way to ascertain which extension caused the file upload to stop.'),(50948,1,10932,'Failed to write file to disk'),(50945,1,10929,'The uploaded file was only partially uploaded.'),(50946,1,10930,'No file was uploaded.'),(50947,1,10931,'Missing a temporary folder.'),(50943,1,10927,'attachment'),(50944,1,10928,'The uploaded file exceeds the max upload filesize.'),(50942,1,10926,'Add video'),(50941,1,10925,'Attach photo'),(50938,1,10922,'you'),(50939,1,10923,'Add'),(50940,1,10924,'Attach video'),(50851,1,10835,'Found: <b>{$count}</b> users'),(50852,1,10836,'Search by'),(69405,1,15445,'Pack list'),(54984,1,11701,'Move topics into hidden sections'),(69370,1,15410,'Sandbox mode'),(54994,1,11711,'Value is incorrect or greater than server limit.'),(55004,1,11721,'Mark email unverified'),(55005,1,11722,'Selected user(s) emails are marked unverified'),(55056,1,11773,'Sorry, this user chooses not to interact with you'),(57194,1,13911,'Username has been removed from restricted list'),(55459,1,12176,'Follow this <a href=\"{$url}\">link</a> to disable maintenance mode'),(55463,1,12180,'Are you sure you want to block this user? <br /><br /> This will cancel and prevent all interaction with you.'),(55464,1,12181,'Block confirmation'),(61084,1,14383,'Big avatar size'),(56149,1,12866,'Pull data from other services'),(56150,1,12867,'Back to search form'),(56151,1,12868,'Show and store full-size photos'),(56153,1,12870,'Add new theme'),(56154,1,12871,'Add new theme'),(56155,1,12872,'Theme successfully added'),(56156,1,12873,'Can\'t upload theme, theme directory `{$dir}` already exists'),(56157,1,12874,'Can\'t extract theme archive'),(56158,1,12875,'Please upload valid theme archive file'),(56178,1,12895,'Invalid or empty update pack archive'),(56179,1,12896,'Plugin is up to date'),(56180,1,12897,'Can\'t update plugin'),(56181,1,12898,'Plugin not found'),(56182,1,12899,'Can\'t extract plugin archive files'),(75811,1,19044,'base+local_page_meta_tags_page_61525903'),(56184,1,12901,'Invalid plugin archive'),(57217,1,13934,'Choose which countries this ad should be shown to. if no countries selected the ad will be global.'),(56608,1,13325,'commented on {$user}\'s joining our site'),(56609,1,13326,'liked that {$user} joined our site'),(56610,1,13327,'Disapprove'),(56611,1,13328,'Approve'),(56616,1,13333,'Selected user(s) were disapproved'),(56617,1,13334,'Selected user(s) were approved'),(56618,1,13335,'commented on {$user}\'s photo'),(56619,1,13336,'liked {$user}\'s photo'),(56625,1,13342,'liked {$user}\'s new avatar'),(56626,1,13343,'commented on {$user}\'s new avatar'),(69746,1,15786,'Can\'t update theme'),(69745,1,15785,'Theme not found'),(69183,1,15223,'Search Result'),(61123,1,14424,'Settings not changed'),(61122,1,14423,'Change preferences and frequency of these notifications'),(61120,1,14421,'Save'),(61121,1,14422,'Settings changed'),(56668,1,13385,'You have already received reset code today. Please try again in 24 hours.'),(56669,1,13386,'The file extention is not allowed.'),(56696,1,13413,'Change Image'),(56697,1,13414,'Choose image'),(68747,1,14788,'Enter tags here...'),(56952,1,13669,'Sort by'),(69698,1,15738,'Matchmaking rules'),(60812,1,14111,'Invalid ISO tag.'),(60813,1,14112,'Language cloning failed'),(69371,1,15411,'Settings has been updated'),(57110,1,13827,'rtttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt'),(57111,1,13828,'eyrtyetrwau'),(57112,1,13829,'eewiura'),(69372,1,15412,'Supported currencies'),(57115,1,13832,'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq'),(57116,1,13833,'qqqqqqqqqqqqqqqqqqqqqqq'),(57117,1,13834,'3333333333'),(57122,1,13839,'Width must be a valid integer between {$min} and {$max}'),(57123,1,13840,'Height must be a valid integer between {$min} and {$max}'),(57124,1,13841,'Tags'),(57126,1,13843,'Quick Links'),(69805,1,15845,'Rarely'),(57195,1,13912,'Username is already in the restricted list'),(57177,1,13894,'mmm'),(57178,1,13895,'mmm'),(57179,1,13896,''),(57180,1,13897,'mmm'),(68743,1,14784,'Restrict view'),(60971,1,14270,'test local'),(60970,1,14269,'Deleted user'),(60839,1,14138,'Language deleted.'),(60840,1,14139,'Language activated.'),(60841,1,14140,'Language deactivated.'),(60972,1,14271,'Invisible'),(60810,1,14109,'You cannot flag your own content'),(60809,1,14108,''),(60808,1,14107,'grey'),(60807,1,14106,'grey'),(60806,1,14105,'grey'),(60805,1,14104,'Invalid URL'),(60974,1,14273,'htru'),(60975,1,14274,'grey'),(60976,1,14275,''),(60977,1,14276,''),(60978,1,14277,'You can\'t delete a site moderator.'),(60980,1,14279,'General'),(60982,1,14281,'<div class=\"ow_console_mailbox_cont\" target=\"_blank\">\r\n        <div class=\"ow_console_mailbox_title\"><a target=\"_blank\" href=\"{$userUrl}\">{$displayName}</a></div>\r\n        <div class=\"ow_console_mailbox_txt\">\r\n            {$text}\r\n        </div>\r\n    </div>'),(60983,1,14282,'Mailbox'),(60984,1,14283,'View All'),(61335,1,14636,'YES'),(61086,1,14409,'Store full-size photos'),(61090,1,14384,'Welcome to our community!<br /><br />\r\nBefore proceeding you need to register your profile and become our member.'),(61091,1,14385,'Invitations'),(61092,1,14386,'Sign up'),(61093,1,14387,'Delete comment'),(61094,1,14388,'Delete user'),(61095,1,14389,'Account was removed<br />\r\nGo back to <a href=\"{$site_url}\">site</a>'),(61096,1,14390,'Account has been removed'),(61097,1,14391,'Chat Now'),(69966,1,16006,'No matches found.<br />Please <a href=\"{$profileEditUrl}\">complete your profile</a> to find great matches.'),(69965,1,16005,'No people found.<br />Please try a <a href=\"{$searchUrl}\">different search</a> for more results.'),(69964,1,16004,'SkaDate Dating Software'),(68601,1,14642,'Invalid plugin key - `{$key}` provided.'),(68602,1,14643,'You can\'t delete an account type while it still has exclusive profile quesitons.'),(68603,1,14644,'You can\'t delete default account type.'),(68607,1,14648,'You still need to setup the cron job. <a href=\"{$helpUrl}\">Learn more</a>'),(69403,1,15443,'Credit pack has been added'),(69404,1,15444,'Pack has been deleted'),(68612,1,14653,'sadas'),(68613,1,14654,'asdas'),(68614,1,14655,'asdasd'),(69084,1,15125,'Date (Age)'),(68616,1,14657,'Comment here...'),(68744,1,14785,'Visible for user roles'),(69353,1,15393,''),(69671,1,15711,'Lifestyle'),(69298,1,15338,'Location - Plugin Settings'),(69299,1,15339,'API Key'),(69300,1,15340,'<b>This is not required field.</b>\r\n<br/><br/>\r\nAll Google Maps API applications* should load the Maps API using an API key.<br/><br/> Using an API key enables you to monitor your application\'s Maps API usage, and ensures that Google can contact you about your application if necessary.<br/><br/>\r\nFollow this <a href=\"https://developers.google.com/maps/documentation/javascript/tutorial\">link</a> to read more information'),(69301,1,15341,'Invalid API key'),(69288,1,15328,'Age'),(69286,1,15326,'Search for particular users in our community.'),(69285,1,15325,'You are no longer following {$displayName}'),(69284,1,15324,'User unblocked'),(69283,1,15323,'Friendship cancelled'),(69282,1,15322,'Quick Search'),(69281,1,15321,'online only'),(69280,1,15320,'You are now following {$displayName}'),(69279,1,15319,'User blocked'),(69278,1,15318,'Advanced Search'),(69277,1,15317,'Friend request was sent'),(69276,1,15316,'You need to sign in to unfollow users'),(72508,1,18548,'Unfollow'),(69274,1,15314,'You need to sign in to unblock users'),(72507,1,18547,'Unblock'),(69272,1,15312,'You need to sign in to remove friends'),(72506,1,18546,'Remove from friends'),(69270,1,15310,'You need to sign in to follow users'),(72504,1,18544,'Block'),(69268,1,15308,'You need to sign in to block users'),(72505,1,18545,'Follow'),(69266,1,15306,'You need to sign in to add friends'),(72503,1,18543,'Add friend'),(69262,1,15302,'Tennis'),(69260,1,15300,'Basketball'),(69261,1,15301,'Volleyball'),(69259,1,15299,'Football'),(69788,1,15828,'Blue'),(69787,1,15827,'Amber'),(69256,1,15296,'Users who celebrate their birthdays.'),(69797,1,15837,'Average'),(69254,1,15294,'The list of our participants: get to know your mates.'),(69255,1,15295,'Look who\'s online now.'),(69817,1,15857,''),(69702,1,15742,'Compatibility weight for this rule'),(69250,1,15290,'Red'),(69249,1,15289,'Brown'),(69248,1,15288,'Blond'),(69246,1,15286,'&nbsp;'),(69247,1,15287,'Hair color'),(69818,1,15858,'Drinking'),(69703,1,15743,'Create matching question'),(69704,1,15744,'User\'s feature'),(69705,1,15745,'No changes were made'),(69706,1,15746,'Add New Rule'),(69707,1,15747,'Coefficient'),(69708,1,15748,'Question 2'),(69709,1,15749,'Question 1'),(69710,1,15750,'once a day'),(69711,1,15751,'once in 3 days'),(69712,1,15752,'never'),(69713,1,15753,'once a week'),(69714,1,15754,'Send new matches to users by email'),(69715,1,15755,'Add'),(69716,1,15756,'Delete'),(69717,1,15757,'Edit'),(69718,1,15758,'Save'),(69719,1,15759,'Compatibility'),(69720,1,15760,'Compatibility with you'),(69721,1,15761,'Settings saved'),(69722,1,15762,'Are you sure you want to delete this rule?\r\n\r\nTHIS WILL ALSO DELETE THE MATCHING QUESTION WITH ALL PROFILE INFO. THIS OPERATION IS IRREVERSIBLE.'),(69723,1,15763,'Talk soon,<br />\r\n{$site_name}, administration<br />\r\n{$site_url}'),(69724,1,15764,'Here are your latest matches on <a href=\"{$site_url}\"> {$site_name}</a> :'),(69725,1,15765,'Dear {$userName},'),(69726,1,15766,'New matches for <a href=\"{$userUrl}\">{$userName}</a>'),(69727,1,15767,'New matches for you'),(69728,1,15768,'Talk soon,\r\n{$site_name}, administration\r\n{$site_url}'),(69729,1,15769,'Dear {$userName},\r\nHere are your latest matches on {$site_name}:'),(69730,1,15770,'Latest'),(70325,1,16365,'Translation'),(69186,1,15226,'Upload new photos to {$site_name}.'),(69185,1,15225,'The public profile of {$username} at {$site_name}.'),(76173,1,19406,'Mail Notifications'),(69735,1,15775,'Matchmaking rule edit failed, please try again'),(69734,1,15774,'New matchmaking rule has been created successfully'),(69392,1,15432,'Credits to give:'),(69393,1,15433,'Buy credits - {$site_name}'),(69394,1,15434,'My credits'),(69395,1,15435,'My Credits'),(69396,1,15436,'You do not have enough credits to <b>{$actionTitle}</b>. <a href=\"{$getCreditsUrl}\">Get more credits</a>'),(69097,1,15138,'Viewed me:'),(69096,1,15137,'Recently viewed me'),(69087,1,15128,'Single Choice - Optimized (Faster results, limited values)'),(69302,1,15342,'General Settings'),(69089,1,15130,'Settings'),(69090,1,15131,'Limit number of guests to'),(69091,1,15132,'month(s)'),(69092,1,15133,'Sorry, no guests here'),(69093,1,15134,'Who viewed me plugin configuration'),(69094,1,15135,'Settings updated'),(69095,1,15136,'Store user visits data for'),(68959,1,15000,'liked their photo'),(69748,1,15788,'Theme successfully updated'),(68965,1,15006,'Immediately'),(68966,1,15007,'Automatically'),(68967,1,15008,'Never'),(69180,1,15220,'Photo Gallery'),(68971,1,15012,'Moderation'),(69303,1,15343,'kms from'),(69304,1,15344,'Map'),(69305,1,15345,'miles from'),(69306,1,15346,'Settings updated'),(69307,1,15347,'Map'),(69341,1,15381,'Price'),(69342,1,15382,'Recurring'),(69343,1,15383,'User role for this membership'),(69344,1,15384,'Show on subscribe page'),(69345,1,15385,'Subscribe'),(69346,1,15386,'Subscribe'),(69347,1,15387,'Memberships has been deleted'),(69348,1,15388,'Membership list'),(69349,1,15389,'Are you sure you want to delete selected memberships?'),(69350,1,15390,'Membership info'),(69351,1,15391,'Membership has been updated'),(69352,1,15392,'VIP'),(69413,1,15453,'Credit rewards'),(69414,1,15454,'Setup'),(69928,1,15968,'Hot List'),(69929,1,15969,'Are you hot, too?'),(69930,1,15970,'Add to Hot List'),(69931,1,15971,'Number of users in the list'),(69932,1,15972,'<b>Hot List</b> requires  <a href=\"http://www.oxwall.org/store/item/53\" target=\"_blank\">User Credits</a> plugin'),(69933,1,15973,'Stand out from the crowd'),(69934,1,15974,'Remove'),(69935,1,15975,'Do you want to add yourself to the Hot List?<br/><br/>It costs {$amount} credits.'),(69936,1,15976,'Are you sure you want to remove yourself from the Hot List? <br/>You will not be reimbursed for that.'),(69937,1,15977,'Buy'),(69938,1,15978,'Add to Hot List'),(69939,1,15979,'Days in Hot List'),(69940,1,15980,'Be the first in the Hot List!'),(69941,1,15981,'Remove'),(69942,1,15982,'Save'),(69943,1,15983,'Remove yourself from Hot List'),(69944,1,15984,'Settings'),(69945,1,15985,'Settings saved'),(69946,1,15986,'Yes'),(69947,1,15987,'You are already in the Hot List.\r\n<br /><br/>\r\nIf you want to remove your profile from Hot List, click the button below.'),(69948,1,15988,'Add your profile to the Hot List'),(69444,1,15484,'{$location}'),(69445,1,15485,'View All ({$count})'),(69446,1,15486,'Back to map'),(69736,1,15776,'Matchmaking rule has been updated successfully'),(69737,1,15777,'Top'),(69738,1,15778,'This will delete all match profile questions and profile info associated with them. THIS OPERATION IS IRREVERSIBLE.'),(69740,1,15780,'Back to theme list'),(69741,1,15781,'License Key'),(69496,1,15536,'I am'),(69497,1,15537,'and more...'),(69498,1,15538,'Consider upgrading for more benefits:'),(69499,1,15539,'Upgrade'),(69500,1,15540,'Your membership'),(69501,1,15541,'About me'),(69678,1,15718,'delete to test'),(69677,1,15717,'delete to test'),(69676,1,15716,'delete to test'),(69668,1,15708,'test to delete'),(69793,1,15833,'Other'),(69794,1,15834,''),(69795,1,15835,'Body type'),(69667,1,15707,'test to delete'),(69665,1,15705,'test to delete'),(69666,1,15706,'test to delete'),(69664,1,15704,'test to delete'),(69663,1,15703,'test to delete'),(69951,1,15991,'You have been removed from Hot List'),(69950,1,15990,'You are in the Hot List now!'),(69949,1,15989,'Hot List'),(69591,1,15631,'Socially'),(69589,1,15629,'Never'),(69590,1,15630,'Rarely'),(69811,1,15851,'Never'),(69812,1,15852,'Quit'),(69592,1,15632,'Often'),(69593,1,15633,'Very often'),(69674,1,15714,'delete to test'),(69595,1,15635,'Quit'),(69809,1,15849,''),(69701,1,15741,'Matchmaking rule has been removed successfully'),(69700,1,15740,'Select'),(69699,1,15739,'Matchmaking settings'),(69786,1,15826,'Eye color'),(69643,1,15683,'None'),(69644,1,15684,'Socially'),(69645,1,15685,'Heavily'),(69662,1,15702,'test to delete'),(69785,1,15825,''),(69841,1,15881,'ddd'),(69842,1,15882,'ddd'),(69843,1,15883,'test2'),(69844,1,15884,'test2'),(69845,1,15885,''),(69846,1,15886,'My match\'s Your hair color'),(69847,1,15887,''),(69848,1,15888,'My match\'s eee'),(69849,1,15889,''),(69850,1,15890,'My match\'s Sport Activities'),(69851,1,15891,'Match\'s desired age'),(69852,1,15892,''),(69853,1,15893,'My match\'s I can help others with'),(69887,1,15927,''),(69888,1,15928,'Should search for'),(69856,1,15896,'Interests'),(69857,1,15897,'Education'),(69858,1,15898,'test'),(69859,1,15899,'Location'),(69860,1,15900,''),(69861,1,15901,'Favorite way to spend time'),(69862,1,15902,'Books'),(69863,1,15903,'Clubs'),(69864,1,15904,'Friends'),(69865,1,15905,'Music'),(69866,1,15906,'Nightlife'),(69867,1,15907,'Internet'),(69868,1,15908,'Outdoor'),(69869,1,15909,'Sports'),(69870,1,15910,''),(69871,1,15911,'Favorite way to spend time'),(69872,1,15912,'Other'),(69873,1,15913,'Describe your lifestyle and favorite activities.'),(69874,1,15914,'In my own words'),(69875,1,15915,''),(69876,1,15916,'Ethnicity'),(69877,1,15917,'Arab'),(69878,1,15918,'African'),(69879,1,15919,'African American'),(69880,1,15920,'Asian'),(69881,1,15921,'Caucasian (white)'),(69882,1,15922,'Indian'),(69883,1,15923,'Mixed'),(69884,1,15924,'Native American'),(69885,1,15925,'Other'),(69886,1,15926,'Hispanic'),(69889,1,15929,''),(69890,1,15930,'Body type'),(69891,1,15931,''),(69892,1,15932,'Ethnicity'),(69953,1,15993,'Privacy Policy'),(69896,1,15936,'test to delete'),(69897,1,15937,'test to delete'),(69898,1,15938,'test to delete'),(69899,1,15939,'test to delete'),(69900,1,15940,'test to delete'),(69901,1,15941,'test to delete'),(69902,1,15942,'test to delete'),(69954,1,15994,''),(69955,1,15995,'<p class=\"ow_smallmargin\">\r\nThank you for visiting our website. This privacy policy tells you how we use personal information collected at this website. Please read this privacy policy before using the website or submitting any personal information. By using this website, you are accepting the practices described in this privacy policy. These practices may be changed, but any changes will be posted and will only apply to activities and information on a going forward, not retroactive basis. You are encouraged to review the privacy policy whenever you visit the site to keep track of the policy changes and make sure that you understand howany personal information you provide will be used.\r\n</p>\r\n<p class=\"ow_stdmargin\"> \r\nNote: the privacy practices set forth in this privacy policy are for this website only. If you link to other websites, please review the privacy policies posted at those websites.\r\n</p>\r\n\r\n<h2 class=\"ow_smallmargin\">Collection of Information</h2>\r\n \r\n<p class=\"ow_stdmargin\">\r\nWe collect personally identifiable information, like names, email addresses, etc., when voluntarily submitted by our visitors. This information is only used to fulfill your specific request, and to sign you up for our service mailing list, unless you give us permission to use it in other manners.\r\n</p>\r\n\r\n<h2 class=\"ow_smallmargin\">Cookie/Tracking Technology</h2>\r\n \r\n<p class=\"ow_stdmargin\">\r\nThis website may use cookie and tracking technology depending on the features offered. Cookie and tracking technology are useful for gathering information such as browser type and operating system, tracking the number of visitors to the website, and understanding how visitors use the website. Cookies can also help customize the website for visitors. Personal information cannot be collected via cookies and other tracking technology, however, if you previously providedpersonally identifiable information, cookies may be tied to such information. Aggregate cookie and tracking information may be shared with third parties.\r\n</p>\r\n\r\n<h2 class=\"ow_smallmargin\">Distribution of Information</h2>\r\n \r\n<p class=\"ow_stdmargin\">\r\nWe may share information with governmental agencies or other companies assisting us in fraud prevention or investigation. We may do so when: (1) permitted or required by law; or, (2) trying to protect against or prevent actual or potential fraud or unauthorized transactions; or, (3) investigating fraud which has already taken place. The information is not provided to these companies for marketing purposes.\r\n</p>\r\n\r\n<h2 class=\"ow_smallmargin\">Commitment to Data Security</h2>\r\n \r\n<p class=\"ow_stdmargin\">\r\nYour personally identifiable information is kept secure. Only authorized employees, agents and contractors (who have agreed to keep information secure and confidential) have access to this information. All emails and newsletters from this website allow you to opt out of further mailings.\r\n</p>\r\n\r\n<h2 class=\"ow_smallmargin\">Privacy Contact Information</h2>\r\n \r\n<p class=\"ow_stdmargin\">\r\nIf you have any questions, concerns, or comments about our privacy policy you may contact us using means provided on this website. We reserve the right to make changes to this policy. Any changes to this policy will be posted.\r\n</p>'),(69907,1,15947,'test to delete'),(69908,1,15948,'test to delete'),(69909,1,15949,'test to delete'),(69910,1,15950,'test to delete'),(69911,1,15951,'test to delete'),(69912,1,15952,'test to delete'),(69913,1,15953,'test to delete'),(69914,1,15954,'test to delete'),(69915,1,15955,'test to delete'),(69920,1,15960,'test to delete'),(69921,1,15961,'test to delete'),(69922,1,15962,'test to delete'),(69923,1,15963,'test to delete'),(69924,1,15964,'test to delete'),(69925,1,15965,'test to delete'),(69961,1,16001,'Photos of me'),(69960,1,16000,'Add at least 7 photos to your profile'),(69962,1,16002,'View album'),(69963,1,16003,'Upload photos'),(69967,1,16007,'Email Notifications'),(69968,1,16008,'Here you can choose which real time notifications will be delivered by email if you don\'t show up on the site for 2 days.'),(69969,1,16009,'Email Notifications'),(69970,1,16010,'Email Notifications'),(69971,1,16011,'Email Notifications'),(69972,1,16012,'this is unimportant'),(69974,1,16014,'Add category'),(69975,1,16015,'Add new template'),(69976,1,16016,'Virtual Gifts plugin configuration'),(69977,1,16017,'Send gift'),(69978,1,16018,'Virtual Gifts'),(69979,1,16019,'Add'),(69980,1,16020,'Save'),(69981,1,16021,'Send'),(69982,1,16022,'by <a href=\"{$senderUrl}\">{$sender}</a>'),(69983,1,16023,'Gift categories'),(69984,1,16024,'Category'),(69985,1,16025,'Gift category has been added'),(69986,1,16026,'Category has been deleted'),(69987,1,16027,'Category list'),(69988,1,16028,'Please delete this category gifts first'),(69989,1,16029,'Category title:'),(69990,1,16030,'Choose friends'),(69991,1,16031,'Gifts count'),(69992,1,16032,'Are you sure you want to remove ALL user gifts?'),(69993,1,16033,'Are you sure you want to delete this gift template?'),(69994,1,16034,'Delete content and uninstall plugin'),(69995,1,16035,'Before uninstalling gifts plugin we have to remove all existing user gifts content. This may take awhile. That is why we will put the site to \"maintenance mode\" and activate it back upon completing the uninstall.'),(69996,1,16036,'Warning'),(69997,1,16037,'Gifts'),(69998,1,16038,'<a href=\"{$senderUrl}\">{$senderName}</a> sent you a <a href=\"{$giftUrl}\">gift</a>.'),(69999,1,16039,'Someone sends me a gift'),(70000,1,16040,'Existing gifts'),(70001,1,16041,'commented on {$sender}\'s gift to {$recipient}'),(70002,1,16042,'liked {$sender}\'s gift to {$recipient}'),(70003,1,16043,'commented on their gift to {$recipient}'),(70004,1,16044,'liked their gift to {$recipient}'),(70005,1,16045,'Virtual gifts'),(70006,1,16046,'granted <a href=\"{$recipientUrl}\">{$recipientName}</a> a gift!'),(70007,1,16047,'Selected image file type is not allowed'),(70008,1,16048,'Gifts'),(70009,1,16049,'Gift by {$userName}'),(70010,1,16050,'Gift deleted'),(70011,1,16051,'Gift image'),(70012,1,16052,'Please select a gift'),(70013,1,16053,'Gift has not been sent'),(70014,1,16054,'Gift price'),(70015,1,16055,'Gift has been sent'),(70016,1,16056,'Gift was sent to {$count} user(s)'),(70017,1,16057,'Message'),(70018,1,16058,'These virtual gifts were received by {$recipient} on {$site_name}.'),(70019,1,16059,'This is a virtual gift for {$recipient} from {$sender}.'),(70020,1,16060,'{$message} - This is a virtual gift for {$recipient} from {$sender}.'),(70021,1,16061,'My gifts - {$site_name}'),(70022,1,16062,'{$recipient}\'s virtual gifts - {$site_name}'),(70023,1,16063,'Virtual gift for {$recipient} - {$site_name}'),(70024,1,16064,'{$message} - Virtual gift for {$recipient} - {$site_name}'),(70025,1,16065,'My gifts'),(70026,1,16066,'My Gifts'),(70027,1,16067,'You need to sign in to send gifts'),(70028,1,16068,'You do not have enough permissions to send gifts'),(70029,1,16069,'You have not received any gift yet'),(70030,1,16070,'No image file selected'),(70031,1,16071,'No users selected'),(70032,1,16072,'Uninstall virtual gifts plugin'),(70033,1,16073,'Virtual gifts plugin uninstall initiated.'),(70034,1,16074,'Private gift'),(70035,1,16075,'This gift is visible to you and {$username} only'),(70036,1,16076,'Send gift'),(70037,1,16077,'Send gift'),(70038,1,16078,'Send gift to {$user}'),(70039,1,16079,'Gift price is {$price} credits. Your current balance is {$balance} credits. You do not have enough credits to send gifts to selected friends'),(70040,1,16080,'Send private gift'),(70041,1,16081,'Send private gift <span class=\"ow_small\">(visible to <b>{$user}</b> only)</span>'),(70042,1,16082,'Send a gift in return'),(70043,1,16083,'Send this gift to friends'),(70044,1,16084,'Template has been added'),(70045,1,16085,'Gift list'),(70046,1,16086,'Template has not been added'),(70047,1,16087,'Template has been updated'),(70048,1,16088,'Not in category'),(70049,1,16089,'In progress'),(70050,1,16090,'Please wait while all gifts content is being removed. This make take awhile depending on the number of gifts on your site.'),(70051,1,16091,'Send virtual gifts'),(70052,1,16092,'Gifts received by {$user}'),(70053,1,16093,'Age'),(70054,1,16094,'I am'),(70055,1,16095,''),(70056,1,16096,''),(70057,1,16097,''),(70058,1,16098,''),(70059,1,16099,''),(70060,1,16100,''),(70061,1,16101,''),(70062,1,16102,''),(70063,1,16103,''),(70064,1,16104,''),(70065,1,16105,''),(70066,1,16106,''),(70067,1,16107,''),(70068,1,16108,''),(70069,1,16109,''),(70070,1,16110,''),(70071,1,16111,''),(70072,1,16112,''),(70073,1,16113,''),(70074,1,16114,''),(70075,1,16115,''),(70076,1,16116,''),(70077,1,16117,''),(70078,1,16118,''),(70079,1,16119,''),(70080,1,16120,'Mobile'),(70081,1,16121,'Accept'),(70082,1,16122,'admin'),(70083,1,16123,''),(70084,1,16124,''),(70085,1,16125,''),(70086,1,16126,''),(70087,1,16127,'Ekip üyesi'),(70088,1,16128,'ewrwe'),(70089,1,16129,'Gold'),(70090,1,16130,''),(70091,1,16131,''),(70092,1,16132,''),(70093,1,16133,'Staff'),(70094,1,16134,''),(70095,1,16135,'Silver'),(70096,1,16136,''),(70097,1,16137,'First you should remove this user from site moderators'),(70098,1,16138,'Desktop version'),(70099,1,16139,'Ignore'),(70100,1,16140,'Main'),(70101,1,16141,'asdasdasdas\r\ndasdasdsadsa\r\ndsadasdsa'),(70102,1,16142,'tttt'),(70103,1,16143,'dsfsdfdsfdsfdsfdsfdsf'),(70104,1,16144,'<p class=\"ow_smallmargin\">\r\nThank you for visiting our website. This privacy policy tells you how we use personal information collected at this website. Please read this privacy policy before using the website or submitting any personal information. By using the website, you are accepting the practices described in this privacy policy. These practices may be changed, but any changes will be posted and will only apply to activities and information on a going forward, not retroactive basis. You are encouraged to review the privacy policy whenever you visit the site to keep track of the policy changes and make sure that you understand how any personal information you provide will be used.\r\n</p>\r\n<p class=\"ow_stdmargin\">\r\nNote: the privacy practices set forth in this privacy policy are for this website only. If you link to other websites, please review the privacy policies posted at those websites.\r\n</p>\r\n<h2 class=\"ow_smallmargin\">Collection of Information</h2>\r\n<p class=\"ow_stdmargin\">\r\nWe collect personally identifiable information, like names, email addresses, etc., when voluntarily submitted by our visitors. This information is only used to fulfill your specific request and to sign you up for our service mailing list, unless you give us permission to use it in other manners.\r\n</p>\r\n<h2 class=\"ow_smallmargin\">Cookie/Tracking Technology</h2>\r\n<p class=\"ow_stdmargin\">\r\nThis website may use cookie and tracking technology depending on the features offered. Cookie and tracking technology are useful for gathering information such as browser type and operating system, tracking the number of visitors to the website, and understanding how visitors use the website. Cookies can also help customize the website for visitors. Personal information cannot be collected via cookies and other tracking technology, however, if you previously provided personally identifiable information, cookies may be tied to such information. Aggregate cookie and tracking information may be shared with third parties.\r\n</p>\r\n<h2 class=\"ow_smallmargin\">Distribution of Information</h2>\r\n<p class=\"ow_stdmargin\">\r\nWe may share information with governmental agencies or other companies assisting us in fraud prevention or investigation. We may do so when: (1) permitted or required by law; or, (2) trying to protect against or prevent actualor potential fraud or unauthorized transactions; or, (3) investigating fraud which has already taken place. The information is not provided to these companies for marketing purposes.\r\n</p>\r\n<h2 class=\"ow_smallmargin\">Commitment to Data Security</h2>\r\n<p class=\"ow_stdmargin\">\r\nYour personally identifiable information is kept secure. Only authorized employees, agents and contractors (who have agreed to keep information secure and confidential) have access to this information. All emails and newsletters from this website allow you to opt out of further mailings.\r\n</p>\r\n<h2 class=\"ow_smallmargin\">Privacy Contact Information</h2>\r\n<p class=\"ow_stdmargin\">\r\nIf you have any questions, concerns, or comments about our privacy policy you may contact us using means provided on this website.\r\n</p>\r\n<p>\r\nWe reserve the right to make changes to this policy. Any changes to this policy will be posted.\r\n</p>'),(70105,1,16145,'test'),(70106,1,16146,'test2'),(70107,1,16147,''),(70108,1,16148,'tttt'),(70109,1,16149,'zsfsdf'),(70110,1,16150,'Test'),(70111,1,16151,'test2'),(70112,1,16152,'asdas'),(70113,1,16153,'ttttt'),(70114,1,16154,'test'),(70115,1,16155,'Privacy Policy'),(70116,1,16156,'Test'),(70117,1,16157,'test2'),(70118,1,16158,'This is not available on mobile yet. Try <a href=\"{$url}\">desktop version</a>.'),(70119,1,16159,'No items'),(70120,1,16160,'Mobile version'),(70121,1,16161,'Community software'),(70122,1,16162,'test'),(70123,1,16163,'ssd'),(70124,1,16164,'greyyyyyyyyyy'),(70125,1,16165,'testtttt google'),(70126,1,16166,'greyyyy'),(70127,1,16167,'Privacy Policy'),(70128,1,16168,'test11'),(70129,1,16169,'Premium'),(70130,1,16170,''),(70131,1,16171,'test1'),(70132,1,16172,'test test test'),(70133,1,16173,'test'),(70134,1,16174,'test'),(70135,1,16175,'gggggggggggggggg'),(70136,1,16176,'ggggggggggg'),(70137,1,16177,'test'),(70138,1,16178,'Sport activities'),(70139,1,16179,'Football'),(70140,1,16180,'Tennis'),(70141,1,16181,'Basketball'),(70142,1,16182,'Volleyball'),(70143,1,16183,''),(70144,1,16184,'test1'),(70145,1,16185,'test1'),(70146,1,16186,'test1'),(70147,1,16187,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_005k5lkdq003j'),(70148,1,16188,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00m1hx374y74i'),(70149,1,16189,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_010oe8waiptt8'),(70150,1,16190,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_003xmy34mtb9c'),(70151,1,16191,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00ihn5nsdp2r9'),(70152,1,16192,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00vwxvjmr5a9s'),(70153,1,16193,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_003ck3g1b6lm1'),(70154,1,16194,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00cypqeqcadzf'),(70155,1,16195,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00q0058hevpmo'),(70156,1,16196,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_006rngprmwtfq'),(70157,1,16197,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00nagx77iqme6'),(70158,1,16198,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_004hziyvvm60m'),(70159,1,16199,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00kx0gbo90gha'),(70160,1,16200,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00w9l1hmbsny1'),(70161,1,16201,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_003i6k43iirlc'),(70162,1,16202,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00flmxylqngl0'),(70163,1,16203,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00rrwp3uk6mxk'),(70164,1,16204,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_007t6jmeijnr4'),(70165,1,16205,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00oe2jhlq5p5p'),(70166,1,16206,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00555xm9c9saw'),(70167,1,16207,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00kzr82wg6std'),(70168,1,16208,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00z5ykql2x2or'),(70169,1,16209,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_003oylo4fgdij'),(70170,1,16210,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00hd1g5xozff1'),(70171,1,16211,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00ru7zbfdcjqz'),(70172,1,16212,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00cghoahyrs2p'),(70173,1,16213,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00p7h97i4d6e5'),(70174,1,16214,'Match age desc'),(70176,1,16216,''),(70177,1,16217,''),(70178,1,16218,'qwe'),(70179,1,16219,'qwe'),(70180,1,16220,''),(70181,1,16221,''),(70182,1,16222,''),(70183,1,16223,'Hair'),(70188,1,16228,'eee'),(70189,1,16229,'eee'),(70190,1,16230,''),(70191,1,16231,''),(70192,1,16232,'fdbfbfd'),(70193,1,16233,'bfbdf'),(70194,1,16234,''),(70195,1,16235,'Match Sport activities'),(70196,1,16236,'Football'),(70197,1,16237,'Tennis'),(70198,1,16238,'Basketball'),(70199,1,16239,'Volleyball'),(70200,1,16240,'test1'),(70201,1,16241,'test1'),(70202,1,16242,'112'),(70203,1,16243,'12312'),(70204,1,16244,'123123'),(70205,1,16245,'12312312'),(70206,1,16246,'dddd'),(70207,1,16247,'dddd'),(70211,1,16251,''),(70212,1,16252,''),(70213,1,16253,''),(70214,1,16254,'test'),(70215,1,16255,''),(70216,1,16256,'1'),(70217,1,16257,''),(70227,1,16267,''),(70230,1,16270,'test'),(70231,1,16271,'Create community site'),(70232,1,16272,'About'),(70233,1,16273,'Adding...'),(70234,1,16274,'Bottom menu'),(70235,1,16275,'New Menu item'),(70236,1,16276,'Content'),(70237,1,16277,'Page Title'),(70238,1,16278,'Hidden'),(70239,1,16279,'HTML Content'),(70240,1,16280,'Menu label'),(70241,1,16281,'Title'),(70242,1,16282,'New page'),(70243,1,16283,'Settings'),(70244,1,16284,'Top menu'),(70245,1,16285,'Hidden'),(70246,1,16286,'Content'),(70247,1,16287,'Menus'),(70248,1,16288,'Dashboard'),(70249,1,16289,'Index'),(70250,1,16290,'Profile'),(70251,1,16291,'My Dashboard'),(70252,1,16292,'{$site_name}'),(70253,1,16293,'{$site_name}'),(70254,1,16294,'Please Sign In'),(70255,1,16295,'Sign Out'),(70256,1,16296,'View My Profile'),(70257,1,16297,'Mobile dashboard page'),(70258,1,16298,'Mobile index page'),(70259,1,16299,'Mobile profile page'),(70260,1,16300,'Theme updates available: <b>{$count}</b>. <a href=\"{$link}\">View</a>'),(70261,1,16301,'This page can not be opened in mobile version, please visit <a href=\"{$url}\">desktop version</a> of this site'),(70263,1,16303,'License info'),(70264,1,16304,'Validate'),(70265,1,16305,'Enter license key'),(70266,1,16306,'Branding Removal'),(70267,1,16307,'Created'),(70268,1,16308,'Valid Directory'),(70269,1,16309,'Valid Domain'),(70270,1,16310,'Expires'),(70271,1,16311,'Valid IP'),(70272,1,16312,'License Key'),(70273,1,16313,'Registered To'),(76223,1,19456,'Welcome to {$site_name}! Thanks for joining us. Here are some quick links that you need to find your way around:\r\n    - Main page: {$site_url} - welcome!\r\n    - Upload photos: {$site_url}photo/viewlist/latest - you are guaranteed to receive no response without photos;\r\n    - Change profile details: {$site_url}profile/edit - again, people will only engage if they get some impression of you. Invest time in your profile;\r\n    - Change matchmaking settings: {$site_url}matches/preferences -change how your matches are calculated based on profile info;\r\n    - Look who\'s in: {$site_url}users/search\r\nWe are eager to send many dates your way!\r\n\r\n{$site_name} administration {$site_url}'),(70275,1,16315,'Invalid License Key'),(70276,1,16316,'License key validation failed'),(70277,1,16317,'Users'),(70278,1,16318,'Featured'),(70279,1,16319,'Latest'),(70280,1,16320,'Online'),(70281,1,16321,'User Carousel'),(70282,1,16322,'License key is invalid. Check the license key for typos and try again. Contact support team in case of repeated failure.'),(70283,1,16323,'Action'),(70284,1,16324,'Buy more'),(70285,1,16325,'User credits sub-account number'),(70286,1,16326,'Date'),(70287,1,16327,'Earn credits'),(70288,1,16328,'History'),(70289,1,16329,'Select account type'),(70290,1,16330,'View more'),(70291,1,16331,'Choose album'),(70292,1,16332,'Create album'),(70293,1,16333,''),(70294,1,16334,'Choose photo'),(70295,1,16335,'Photo'),(70296,1,16336,'Replace photo'),(70297,1,16337,'Please fill age range from {$min} to {$max}'),(70298,1,16338,'Read private message'),(70299,1,16339,'Day of the week when weekly summaries are sent'),(70300,1,16340,'Day'),(70301,1,16341,'Hour of the day when daily and weekly summaries are sent'),(70302,1,16342,'Hour'),(70303,1,16343,'Email Notifications'),(70304,1,16344,'Email Notifications'),(70305,1,16345,'Settings saved'),(70306,1,16346,'Schedule Settings'),(70307,1,16347,'Daily'),(70308,1,16348,'Weekly'),(70309,1,16349,''),(70316,1,16356,''),(70317,1,16357,''),(70320,1,16360,''),(70321,1,16361,'Browseevents'),(70322,1,16362,'Map'),(70323,1,16363,'Browse events'),(70330,1,16370,'Invalid FTP attributes! Empty username or password provided.'),(70331,1,16371,'Invalid FTP attributes! Empty host provided.'),(70332,1,16372,'Can\'t complete operation. Function `ftp_connect` is not available.'),(70333,1,16373,'FTP login error! Failed authentication, please check provided username and password.'),(76282,1,19515,'Manage pages'),(70335,1,16375,'File types permitted for upload. Enter one type per line, format: xxx'),(70336,1,16376,'Allowed extensions'),(70337,1,16377,'Maximum upload file size'),(70338,1,16378,'Can\'t add plugin. Duplicate plugin key error.'),(70339,1,16379,'&nbsp;'),(70340,1,16380,'Disable site mobile version'),(76281,1,19514,'Pages'),(70342,1,16382,'You can\'t change values set in this question'),(70343,1,16383,'Account type has been updated'),(70344,1,16384,'Add Account Type'),(70345,1,16385,'Edit Account Type'),(70346,1,16386,'Add New Question'),(70347,1,16387,'Add Question'),(70348,1,16388,'Add Section'),(70349,1,16389,'Add new values'),(70350,1,16390,'WAIT! Are you sure you want to delete this account type?\r\n\r\nRemember: Users with this account:\r\n1) will lose profile information associated to this account type;\r\n2) will not be able to use the site until they sign in, choose a different account type, and enter necessary information.'),(70351,1,16391,'Edit Account Type'),(70352,1,16392,'Edit Profile Question'),(70353,1,16393,'This question is matched with <a href=\"{$url}\" class=\"parent_question_link\" parentId=\"{$parentId}\">{$label}</a>'),(70354,1,16394,'Here you can change information added by users about themselves.<br>\r\nYou can change, rearrange, and add new profile questions.'),(70355,1,16395,'Possible values'),(70356,1,16396,'Save'),(70357,1,16397,'Account Types'),(70358,1,16398,'Properties'),(70359,1,16399,'Possible Values'),(70360,1,16400,'You can`t delete active theme'),(70361,1,16401,'You can\'t delete default theme'),(70362,1,16402,'Delete'),(70363,1,16403,'Are you sure you want to delete `#theme#` theme?'),(70364,1,16404,'Theme deleted'),(70365,1,16405,'File attachments'),(70366,1,16406,''),(70367,1,16407,'Please {$alternatives} to {$action}.'),(70368,1,16408,'Limited permissions'),(70369,1,16409,''),(70370,1,16410,''),(70371,1,16411,''),(70372,1,16412,''),(70373,1,16413,''),(70374,1,16414,''),(70375,1,16415,''),(70376,1,16416,''),(70377,1,16417,''),(70378,1,16418,''),(70379,1,16419,''),(70380,1,16420,''),(70381,1,16421,''),(70382,1,16422,''),(70383,1,16423,''),(70384,1,16424,''),(70385,1,16425,''),(70386,1,16426,''),(70387,1,16427,''),(70388,1,16428,''),(70389,1,16429,''),(70390,1,16430,''),(70391,1,16431,''),(70392,1,16432,''),(70393,1,16433,''),(70394,1,16434,''),(70395,1,16435,''),(70396,1,16436,''),(70397,1,16437,''),(70398,1,16438,''),(70399,1,16439,''),(70400,1,16440,''),(70401,1,16441,''),(70402,1,16442,''),(70403,1,16443,''),(70404,1,16444,''),(70405,1,16445,''),(70406,1,16446,''),(70407,1,16447,''),(70408,1,16448,''),(70409,1,16449,''),(70410,1,16450,''),(70411,1,16451,''),(70412,1,16452,''),(70413,1,16453,''),(70414,1,16454,''),(70415,1,16455,'Back to Profile'),(70416,1,16456,'Add New'),(70417,1,16457,'Limited permissions'),(70418,1,16458,'Send'),(70419,1,16459,'more comments'),(70420,1,16460,'Complete profile'),(70421,1,16461,'You need to enter required values.'),(70422,1,16462,'Complete your profile'),(70423,1,16463,'Complite profile'),(70424,1,16464,'Continue'),(70425,1,16465,'Empty comment'),(70426,1,16466,'liked their new avatar'),(70427,1,16467,'commented on their new avatar'),(70428,1,16468,''),(70429,1,16469,''),(70430,1,16470,''),(70431,1,16471,''),(70432,1,16472,''),(70433,1,16473,''),(70434,1,16474,''),(70435,1,16475,''),(70436,1,16476,''),(70437,1,16477,''),(70438,1,16478,''),(70439,1,16479,''),(70440,1,16480,''),(70441,1,16481,''),(70442,1,16482,''),(70443,1,16483,''),(70444,1,16484,''),(70445,1,16485,''),(70446,1,16486,''),(70447,1,16487,''),(70448,1,16488,''),(70449,1,16489,''),(70450,1,16490,''),(70451,1,16491,''),(70452,1,16492,''),(70453,1,16493,''),(70454,1,16494,''),(70455,1,16495,''),(70456,1,16496,''),(70457,1,16497,''),(70458,1,16498,''),(70459,1,16499,''),(70460,1,16500,''),(70461,1,16501,''),(70462,1,16502,''),(70463,1,16503,''),(70464,1,16504,''),(70465,1,16505,''),(70466,1,16506,''),(70467,1,16507,''),(70468,1,16508,''),(70469,1,16509,''),(70470,1,16510,''),(70471,1,16511,''),(70472,1,16512,''),(70473,1,16513,''),(70474,1,16514,''),(70475,1,16515,''),(70476,1,16516,''),(70477,1,16517,''),(70478,1,16518,''),(70479,1,16519,''),(70480,1,16520,''),(70481,1,16521,''),(70482,1,16522,''),(70483,1,16523,''),(70484,1,16524,''),(70485,1,16525,''),(70486,1,16526,''),(70487,1,16527,''),(70488,1,16528,''),(70489,1,16529,''),(70490,1,16530,''),(70491,1,16531,''),(70492,1,16532,''),(70493,1,16533,''),(70494,1,16534,''),(70495,1,16535,''),(70496,1,16536,''),(70497,1,16537,''),(70498,1,16538,''),(70499,1,16539,''),(70500,1,16540,''),(70501,1,16541,''),(70502,1,16542,''),(70503,1,16543,''),(70504,1,16544,''),(70505,1,16545,''),(70506,1,16546,''),(70507,1,16547,''),(70508,1,16548,''),(70509,1,16549,''),(70510,1,16550,''),(70511,1,16551,''),(70512,1,16552,''),(70513,1,16553,''),(70514,1,16554,''),(70515,1,16555,''),(70516,1,16556,''),(70517,1,16557,''),(70518,1,16558,''),(70519,1,16559,''),(70520,1,16560,''),(70521,1,16561,''),(70522,1,16562,''),(70523,1,16563,''),(70524,1,16564,''),(70525,1,16565,''),(70526,1,16566,''),(70527,1,16567,''),(70528,1,16568,''),(70529,1,16569,''),(70530,1,16570,''),(70531,1,16571,''),(70532,1,16572,''),(70533,1,16573,''),(70534,1,16574,'No items'),(70535,1,16575,'or'),(70536,1,16576,''),(70537,1,16577,''),(70538,1,16578,''),(70539,1,16579,''),(70540,1,16580,''),(70541,1,16581,''),(70542,1,16582,''),(70543,1,16583,''),(70544,1,16584,''),(70545,1,16585,''),(70546,1,16586,''),(70547,1,16587,''),(70548,1,16588,''),(70549,1,16589,''),(70550,1,16590,''),(70551,1,16591,''),(70552,1,16592,''),(70553,1,16593,''),(70554,1,16594,''),(70555,1,16595,''),(70556,1,16596,''),(70557,1,16597,''),(70558,1,16598,''),(70559,1,16599,''),(70560,1,16600,''),(70561,1,16601,''),(70562,1,16602,''),(70563,1,16603,''),(70564,1,16604,''),(70565,1,16605,''),(70566,1,16606,''),(70567,1,16607,''),(70568,1,16608,''),(70569,1,16609,''),(70570,1,16610,''),(70571,1,16611,''),(70572,1,16612,''),(70573,1,16613,''),(70574,1,16614,''),(70575,1,16615,''),(70576,1,16616,''),(70577,1,16617,''),(70578,1,16618,''),(70579,1,16619,''),(70580,1,16620,''),(70581,1,16621,''),(70582,1,16622,''),(70583,1,16623,''),(70584,1,16624,''),(70585,1,16625,''),(70586,1,16626,''),(70587,1,16627,''),(70588,1,16628,''),(70589,1,16629,''),(70590,1,16630,''),(70591,1,16631,''),(70592,1,16632,''),(70593,1,16633,''),(70594,1,16634,''),(70595,1,16635,''),(70596,1,16636,''),(70597,1,16637,''),(70598,1,16638,''),(70599,1,16639,''),(70600,1,16640,''),(70601,1,16641,''),(70602,1,16642,''),(70603,1,16643,''),(70604,1,16644,''),(70605,1,16645,''),(70606,1,16646,''),(70607,1,16647,''),(70608,1,16648,''),(70609,1,16649,''),(70610,1,16650,''),(70611,1,16651,''),(70612,1,16652,'asdasd'),(70613,1,16653,''),(70614,1,16654,''),(70615,1,16655,''),(70616,1,16656,''),(70617,1,16657,'Add New'),(70618,1,16658,'Add new values'),(70619,1,16659,'Edit Question Description'),(70620,1,16660,'Edit Question Label'),(70621,1,16661,'Edit Question Value'),(70622,1,16662,''),(70623,1,16663,''),(70624,1,16664,''),(70625,1,16665,''),(70626,1,16666,''),(70627,1,16667,''),(70628,1,16668,''),(70629,1,16669,''),(70630,1,16670,''),(70631,1,16671,''),(70632,1,16672,''),(70633,1,16673,''),(70634,1,16674,''),(70635,1,16675,''),(70636,1,16676,''),(70637,1,16677,''),(70638,1,16678,''),(70639,1,16679,''),(70640,1,16680,''),(70641,1,16681,''),(70642,1,16682,''),(70643,1,16683,''),(70644,1,16684,''),(70645,1,16685,''),(70646,1,16686,''),(70647,1,16687,''),(70648,1,16688,''),(70649,1,16689,''),(70650,1,16690,''),(70651,1,16691,''),(70652,1,16692,''),(70653,1,16693,''),(70654,1,16694,''),(70655,1,16695,''),(70656,1,16696,''),(70657,1,16697,''),(70658,1,16698,''),(70659,1,16699,''),(70660,1,16700,''),(70661,1,16701,''),(70662,1,16702,''),(70663,1,16703,''),(70664,1,16704,''),(70665,1,16705,''),(70666,1,16706,''),(70667,1,16707,''),(70668,1,16708,''),(70669,1,16709,''),(70670,1,16710,''),(70671,1,16711,''),(70672,1,16712,''),(70673,1,16713,''),(70674,1,16714,''),(70675,1,16715,''),(70676,1,16716,''),(70677,1,16717,''),(70678,1,16718,''),(70679,1,16719,''),(70680,1,16720,''),(70681,1,16721,''),(70682,1,16722,''),(70683,1,16723,''),(70684,1,16724,''),(70685,1,16725,''),(70686,1,16726,''),(70687,1,16727,''),(70688,1,16728,''),(70689,1,16729,''),(70690,1,16730,''),(70691,1,16731,''),(70692,1,16732,''),(70693,1,16733,''),(70694,1,16734,''),(70695,1,16735,''),(70696,1,16736,''),(70697,1,16737,''),(70698,1,16738,''),(70699,1,16739,''),(70700,1,16740,''),(70701,1,16741,''),(70702,1,16742,''),(70703,1,16743,''),(70704,1,16744,''),(70705,1,16745,''),(70706,1,16746,''),(70707,1,16747,''),(70708,1,16748,''),(70709,1,16749,''),(70710,1,16750,''),(70711,1,16751,''),(70712,1,16752,''),(70713,1,16753,''),(70714,1,16754,''),(70715,1,16755,''),(70716,1,16756,''),(70717,1,16757,''),(70718,1,16758,''),(70719,1,16759,''),(70720,1,16760,''),(70721,1,16761,''),(70722,1,16762,''),(70723,1,16763,''),(70724,1,16764,''),(70725,1,16765,''),(70726,1,16766,''),(70727,1,16767,''),(70728,1,16768,''),(70729,1,16769,''),(70730,1,16770,''),(70731,1,16771,''),(70732,1,16772,''),(70733,1,16773,''),(70734,1,16774,''),(70735,1,16775,''),(70736,1,16776,''),(70737,1,16777,''),(70738,1,16778,''),(70739,1,16779,''),(70740,1,16780,''),(70741,1,16781,''),(70742,1,16782,''),(70743,1,16783,''),(70744,1,16784,''),(70745,1,16785,''),(70746,1,16786,''),(70747,1,16787,''),(70748,1,16788,''),(70749,1,16789,''),(70750,1,16790,''),(70751,1,16791,''),(70752,1,16792,''),(70753,1,16793,''),(70754,1,16794,''),(70755,1,16795,''),(70756,1,16796,''),(70757,1,16797,''),(70758,1,16798,''),(70759,1,16799,''),(70760,1,16800,''),(70761,1,16801,''),(70762,1,16802,''),(70763,1,16803,''),(70764,1,16804,''),(70765,1,16805,''),(70766,1,16806,''),(70767,1,16807,''),(70768,1,16808,'aaa'),(70769,1,16809,'bbb'),(70770,1,16810,'111'),(70771,1,16811,'nnn'),(70772,1,16812,''),(70773,1,16813,''),(70774,1,16814,''),(70775,1,16815,''),(70776,1,16816,''),(70777,1,16817,''),(70778,1,16818,''),(70779,1,16819,''),(70780,1,16820,''),(70781,1,16821,''),(70782,1,16822,''),(70783,1,16823,''),(70784,1,16824,''),(70785,1,16825,''),(70786,1,16826,''),(70787,1,16827,''),(70788,1,16828,''),(70789,1,16829,''),(70790,1,16830,''),(70791,1,16831,''),(70792,1,16832,''),(70793,1,16833,''),(70794,1,16834,''),(70795,1,16835,''),(70796,1,16836,''),(70797,1,16837,''),(70798,1,16838,''),(70799,1,16839,''),(70800,1,16840,''),(70801,1,16841,''),(70802,1,16842,''),(70803,1,16843,''),(70804,1,16844,''),(70805,1,16845,''),(70806,1,16846,''),(70807,1,16847,''),(70808,1,16848,''),(70809,1,16849,''),(70810,1,16850,''),(70811,1,16851,''),(70812,1,16852,''),(70813,1,16853,''),(70814,1,16854,''),(70815,1,16855,''),(70816,1,16856,''),(70817,1,16857,''),(70818,1,16858,''),(70819,1,16859,''),(70820,1,16860,''),(70821,1,16861,''),(70822,1,16862,''),(70823,1,16863,''),(70824,1,16864,''),(70825,1,16865,''),(70826,1,16866,''),(70827,1,16867,''),(70828,1,16868,''),(70829,1,16869,''),(70830,1,16870,''),(70831,1,16871,''),(70832,1,16872,''),(70833,1,16873,''),(70834,1,16874,''),(70835,1,16875,''),(70836,1,16876,''),(70837,1,16877,''),(70838,1,16878,''),(70839,1,16879,''),(70840,1,16880,''),(70841,1,16881,''),(70842,1,16882,''),(70843,1,16883,''),(70844,1,16884,''),(70845,1,16885,''),(70846,1,16886,''),(70847,1,16887,''),(70848,1,16888,''),(70849,1,16889,''),(70850,1,16890,''),(70851,1,16891,''),(70852,1,16892,''),(70853,1,16893,''),(70854,1,16894,''),(70855,1,16895,''),(70856,1,16896,''),(70857,1,16897,''),(70858,1,16898,''),(70859,1,16899,''),(70860,1,16900,''),(70861,1,16901,''),(70862,1,16902,''),(70863,1,16903,''),(70864,1,16904,''),(70865,1,16905,''),(70866,1,16906,''),(70867,1,16907,''),(70868,1,16908,''),(70869,1,16909,''),(70870,1,16910,''),(70871,1,16911,''),(70872,1,16912,''),(70873,1,16913,''),(70874,1,16914,''),(70875,1,16915,''),(70876,1,16916,''),(70877,1,16917,''),(70878,1,16918,''),(70879,1,16919,''),(70880,1,16920,''),(70881,1,16921,''),(70882,1,16922,''),(70883,1,16923,''),(70884,1,16924,''),(70885,1,16925,''),(70886,1,16926,''),(70887,1,16927,''),(70888,1,16928,''),(70889,1,16929,''),(70890,1,16930,''),(70891,1,16931,''),(70892,1,16932,''),(70893,1,16933,''),(70894,1,16934,''),(70895,1,16935,''),(70896,1,16936,''),(70897,1,16937,''),(70898,1,16938,''),(70899,1,16939,''),(70900,1,16940,''),(70901,1,16941,''),(70902,1,16942,''),(70903,1,16943,''),(70904,1,16944,''),(70905,1,16945,''),(70906,1,16946,''),(70907,1,16947,''),(70908,1,16948,''),(70909,1,16949,''),(70910,1,16950,''),(70911,1,16951,''),(70912,1,16952,''),(70913,1,16953,''),(70914,1,16954,''),(70915,1,16955,''),(70916,1,16956,''),(70917,1,16957,''),(70918,1,16958,''),(70919,1,16959,''),(70920,1,16960,''),(70921,1,16961,''),(70922,1,16962,''),(70923,1,16963,''),(70924,1,16964,''),(70925,1,16965,''),(70926,1,16966,''),(70927,1,16967,''),(70928,1,16968,''),(70929,1,16969,''),(70930,1,16970,''),(70931,1,16971,''),(70932,1,16972,''),(70933,1,16973,''),(70942,1,16982,''),(70943,1,16983,''),(70944,1,16984,''),(70945,1,16985,''),(70946,1,16986,''),(70947,1,16987,''),(70948,1,16988,''),(70949,1,16989,''),(70950,1,16990,''),(70951,1,16991,''),(70952,1,16992,''),(70953,1,16993,''),(70954,1,16994,''),(70955,1,16995,''),(70956,1,16996,''),(70957,1,16997,''),(70958,1,16998,''),(70959,1,16999,''),(70960,1,17000,''),(70961,1,17001,''),(70962,1,17002,''),(70963,1,17003,''),(70964,1,17004,''),(70965,1,17005,''),(70966,1,17006,''),(70967,1,17007,''),(70968,1,17008,''),(70969,1,17009,''),(70970,1,17010,''),(70971,1,17011,''),(70972,1,17012,''),(70973,1,17013,''),(70974,1,17014,''),(70975,1,17015,''),(70976,1,17016,''),(70977,1,17017,''),(70978,1,17018,''),(70979,1,17019,''),(70980,1,17020,''),(70981,1,17021,''),(70982,1,17022,''),(70983,1,17023,''),(70984,1,17024,''),(70985,1,17025,''),(70986,1,17026,''),(70987,1,17027,''),(70988,1,17028,''),(70989,1,17029,''),(70990,1,17030,''),(70991,1,17031,''),(70992,1,17032,''),(70993,1,17033,''),(70994,1,17034,''),(70995,1,17035,''),(70996,1,17036,''),(70997,1,17037,''),(70998,1,17038,''),(70999,1,17039,''),(71000,1,17040,''),(71001,1,17041,''),(71002,1,17042,''),(71003,1,17043,''),(71004,1,17044,''),(71005,1,17045,''),(71006,1,17046,''),(71007,1,17047,''),(71008,1,17048,''),(71009,1,17049,''),(71010,1,17050,''),(71015,1,17055,''),(71016,1,17056,''),(71017,1,17057,''),(71018,1,17058,''),(71019,1,17059,''),(71020,1,17060,''),(71021,1,17061,''),(71022,1,17062,''),(71023,1,17063,''),(71024,1,17064,''),(71025,1,17065,''),(71026,1,17066,''),(71027,1,17067,''),(71028,1,17068,''),(71029,1,17069,''),(71030,1,17070,''),(71031,1,17071,''),(71032,1,17072,''),(71033,1,17073,''),(71034,1,17074,''),(71035,1,17075,''),(71036,1,17076,''),(71037,1,17077,''),(71038,1,17078,''),(71039,1,17079,''),(71040,1,17080,''),(71041,1,17081,''),(71042,1,17082,''),(71043,1,17083,''),(71044,1,17084,''),(71045,1,17085,''),(71046,1,17086,''),(71047,1,17087,''),(71048,1,17088,''),(71049,1,17089,''),(71050,1,17090,''),(71051,1,17091,''),(71052,1,17092,''),(71053,1,17093,''),(71054,1,17094,''),(71055,1,17095,''),(71056,1,17096,''),(71057,1,17097,''),(71058,1,17098,''),(71059,1,17099,''),(71060,1,17100,''),(71061,1,17101,''),(71062,1,17102,''),(71063,1,17103,''),(71064,1,17104,''),(71065,1,17105,''),(71066,1,17106,''),(71067,1,17107,''),(71068,1,17108,''),(71069,1,17109,''),(71070,1,17110,''),(71071,1,17111,''),(71072,1,17112,''),(71073,1,17113,''),(71074,1,17114,''),(71075,1,17115,''),(71076,1,17116,''),(71077,1,17117,''),(71078,1,17118,''),(71079,1,17119,''),(71080,1,17120,''),(71081,1,17121,''),(71082,1,17122,''),(71083,1,17123,''),(71084,1,17124,''),(71085,1,17125,''),(71086,1,17126,''),(71087,1,17127,''),(71088,1,17128,''),(71089,1,17129,''),(71090,1,17130,''),(71092,1,17132,'eee'),(71093,1,17133,'vvv'),(71094,1,17134,'ddd'),(71095,1,17135,'ggg'),(71096,1,17136,''),(71097,1,17137,''),(71098,1,17138,''),(71099,1,17139,''),(71100,1,17140,''),(71101,1,17141,''),(71102,1,17142,''),(71103,1,17143,''),(71104,1,17144,''),(71105,1,17145,''),(71106,1,17146,''),(71107,1,17147,''),(71108,1,17148,''),(71109,1,17149,''),(71110,1,17150,''),(71111,1,17151,''),(71112,1,17152,''),(71113,1,17153,''),(71114,1,17154,''),(71115,1,17155,''),(71116,1,17156,''),(71117,1,17157,''),(71118,1,17158,''),(71119,1,17159,''),(71120,1,17160,''),(71121,1,17161,''),(71122,1,17162,''),(71123,1,17163,''),(71124,1,17164,''),(71125,1,17165,''),(71126,1,17166,''),(71127,1,17167,''),(71128,1,17168,''),(71129,1,17169,''),(71130,1,17170,''),(71131,1,17171,''),(71132,1,17172,''),(71133,1,17173,''),(71134,1,17174,''),(71135,1,17175,''),(71136,1,17176,''),(71137,1,17177,''),(71138,1,17178,''),(71139,1,17179,''),(71140,1,17180,''),(71141,1,17181,''),(71142,1,17182,''),(71143,1,17183,''),(71144,1,17184,''),(71145,1,17185,''),(71146,1,17186,''),(71147,1,17187,''),(71148,1,17188,''),(71149,1,17189,''),(71150,1,17190,''),(71151,1,17191,''),(71152,1,17192,''),(71153,1,17193,''),(71154,1,17194,''),(71155,1,17195,''),(71156,1,17196,''),(71157,1,17197,''),(71158,1,17198,''),(71159,1,17199,''),(71160,1,17200,''),(71161,1,17201,''),(71162,1,17202,''),(71163,1,17203,''),(71164,1,17204,''),(71165,1,17205,''),(71166,1,17206,''),(71167,1,17207,''),(71168,1,17208,''),(71169,1,17209,''),(71170,1,17210,''),(71171,1,17211,''),(71172,1,17212,''),(71173,1,17213,''),(71174,1,17214,''),(71175,1,17215,''),(71176,1,17216,''),(71177,1,17217,''),(71178,1,17218,''),(71179,1,17219,''),(71180,1,17220,''),(71181,1,17221,''),(71182,1,17222,''),(71183,1,17223,''),(71184,1,17224,''),(71185,1,17225,''),(71186,1,17226,''),(71187,1,17227,''),(71188,1,17228,''),(71189,1,17229,''),(71190,1,17230,''),(71191,1,17231,''),(71192,1,17232,''),(71193,1,17233,''),(71194,1,17234,''),(71195,1,17235,''),(71196,1,17236,''),(71197,1,17237,''),(71198,1,17238,''),(71199,1,17239,''),(71200,1,17240,''),(71201,1,17241,''),(71202,1,17242,''),(71203,1,17243,''),(71204,1,17244,''),(71205,1,17245,''),(71206,1,17246,''),(71207,1,17247,''),(71208,1,17248,''),(71209,1,17249,''),(71210,1,17250,''),(71211,1,17251,''),(71212,1,17252,''),(71213,1,17253,''),(71214,1,17254,''),(71215,1,17255,''),(71216,1,17256,''),(71217,1,17257,''),(71218,1,17258,''),(71219,1,17259,''),(71220,1,17260,''),(71221,1,17261,''),(71222,1,17262,''),(71223,1,17263,''),(71224,1,17264,''),(71225,1,17265,''),(71226,1,17266,''),(71227,1,17267,''),(71228,1,17268,''),(71229,1,17269,''),(71230,1,17270,''),(71231,1,17271,''),(71232,1,17272,''),(71233,1,17273,''),(71234,1,17274,''),(71235,1,17275,''),(71236,1,17276,''),(71237,1,17277,''),(71238,1,17278,''),(71239,1,17279,''),(71240,1,17280,''),(71241,1,17281,''),(71242,1,17282,''),(71243,1,17283,''),(71244,1,17284,''),(71245,1,17285,''),(71246,1,17286,''),(71247,1,17287,''),(71248,1,17288,''),(71249,1,17289,''),(71250,1,17290,''),(71251,1,17291,''),(71252,1,17292,''),(71253,1,17293,''),(71254,1,17294,''),(71255,1,17295,''),(71256,1,17296,''),(71257,1,17297,''),(71258,1,17298,''),(71259,1,17299,''),(71260,1,17300,''),(71261,1,17301,''),(71262,1,17302,''),(71263,1,17303,''),(71264,1,17304,''),(71265,1,17305,''),(71266,1,17306,''),(71267,1,17307,''),(71268,1,17308,''),(71269,1,17309,''),(71270,1,17310,''),(71271,1,17311,''),(71272,1,17312,''),(71273,1,17313,''),(71274,1,17314,''),(71275,1,17315,''),(71276,1,17316,''),(71277,1,17317,''),(71278,1,17318,''),(71279,1,17319,''),(71280,1,17320,''),(71281,1,17321,''),(71282,1,17322,''),(71283,1,17323,''),(71284,1,17324,''),(71285,1,17325,''),(71286,1,17326,''),(71287,1,17327,''),(71288,1,17328,''),(71289,1,17329,''),(71290,1,17330,''),(71291,1,17331,''),(71292,1,17332,''),(71293,1,17333,''),(71294,1,17334,''),(71295,1,17335,''),(71296,1,17336,''),(71297,1,17337,''),(71298,1,17338,''),(71299,1,17339,''),(71300,1,17340,''),(71301,1,17341,''),(71302,1,17342,''),(71303,1,17343,''),(71304,1,17344,''),(71305,1,17345,''),(71306,1,17346,''),(71307,1,17347,''),(71308,1,17348,''),(71309,1,17349,''),(71310,1,17350,''),(71311,1,17351,''),(71312,1,17352,''),(71313,1,17353,''),(71314,1,17354,''),(71315,1,17355,''),(71316,1,17356,''),(71317,1,17357,''),(71318,1,17358,''),(71319,1,17359,''),(71320,1,17360,''),(71321,1,17361,''),(71322,1,17362,''),(71323,1,17363,''),(71324,1,17364,''),(71325,1,17365,''),(71326,1,17366,''),(71327,1,17367,''),(71328,1,17368,''),(71329,1,17369,''),(71330,1,17370,''),(71331,1,17371,''),(71332,1,17372,''),(71333,1,17373,''),(71334,1,17374,''),(71335,1,17375,''),(71336,1,17376,''),(71337,1,17377,''),(71338,1,17378,''),(71339,1,17379,''),(71340,1,17380,''),(71341,1,17381,''),(71342,1,17382,''),(71343,1,17383,''),(71344,1,17384,''),(71345,1,17385,''),(71346,1,17386,''),(71347,1,17387,''),(71348,1,17388,''),(71349,1,17389,''),(71350,1,17390,''),(71351,1,17391,''),(71352,1,17392,''),(71353,1,17393,''),(71354,1,17394,''),(71355,1,17395,''),(71356,1,17396,''),(71357,1,17397,''),(71358,1,17398,''),(71359,1,17399,''),(71360,1,17400,''),(71361,1,17401,''),(71362,1,17402,''),(71363,1,17403,''),(71364,1,17404,''),(71365,1,17405,''),(71366,1,17406,''),(71367,1,17407,''),(71368,1,17408,''),(71369,1,17409,''),(71370,1,17410,''),(71371,1,17411,''),(71372,1,17412,''),(71373,1,17413,''),(71374,1,17414,''),(71375,1,17415,''),(71376,1,17416,''),(71377,1,17417,''),(71378,1,17418,''),(71379,1,17419,''),(71380,1,17420,''),(71381,1,17421,''),(71382,1,17422,''),(71383,1,17423,''),(71384,1,17424,''),(71385,1,17425,''),(71386,1,17426,''),(71387,1,17427,''),(71388,1,17428,''),(71389,1,17429,''),(71390,1,17430,''),(71391,1,17431,''),(71392,1,17432,''),(71393,1,17433,''),(71394,1,17434,''),(71395,1,17435,''),(71396,1,17436,''),(71397,1,17437,''),(71398,1,17438,''),(71399,1,17439,''),(71400,1,17440,''),(71401,1,17441,''),(71402,1,17442,''),(71403,1,17443,''),(71404,1,17444,''),(71405,1,17445,''),(71406,1,17446,''),(71407,1,17447,''),(71408,1,17448,''),(71409,1,17449,''),(71410,1,17450,''),(71411,1,17451,''),(71412,1,17452,''),(71413,1,17453,'1'),(71414,1,17454,'2'),(71415,1,17455,'6'),(71416,1,17456,'3'),(71417,1,17457,'7'),(71418,1,17458,''),(71419,1,17459,''),(71420,1,17460,''),(71421,1,17461,''),(71422,1,17462,''),(71423,1,17463,''),(71424,1,17464,''),(71425,1,17465,''),(71426,1,17466,''),(71427,1,17467,''),(71428,1,17468,''),(71429,1,17469,''),(71430,1,17470,''),(71431,1,17471,''),(71432,1,17472,''),(71433,1,17473,''),(71434,1,17474,''),(71435,1,17475,''),(71436,1,17476,''),(71437,1,17477,''),(71438,1,17478,''),(71439,1,17479,''),(71440,1,17480,''),(71441,1,17481,''),(71442,1,17482,''),(71443,1,17483,''),(71444,1,17484,''),(71445,1,17485,''),(71446,1,17486,''),(71447,1,17487,''),(71448,1,17488,''),(71449,1,17489,''),(71450,1,17490,''),(71451,1,17491,''),(71452,1,17492,''),(71453,1,17493,''),(71454,1,17494,''),(71455,1,17495,''),(71456,1,17496,''),(71457,1,17497,''),(71458,1,17498,''),(71459,1,17499,''),(71460,1,17500,''),(71461,1,17501,''),(71462,1,17502,''),(71463,1,17503,''),(71464,1,17504,''),(71465,1,17505,''),(71466,1,17506,'asdasd'),(71467,1,17507,'asdasdasdasd11'),(71468,1,17508,'asdasd1'),(71469,1,17509,''),(71470,1,17510,''),(71471,1,17511,''),(71472,1,17512,''),(71473,1,17513,''),(71474,1,17514,''),(71475,1,17515,''),(71476,1,17516,''),(71477,1,17517,''),(71478,1,17518,''),(71479,1,17519,''),(71480,1,17520,''),(71481,1,17521,''),(71482,1,17522,''),(71483,1,17523,''),(71484,1,17524,''),(71485,1,17525,''),(71486,1,17526,''),(71487,1,17527,''),(71488,1,17528,''),(71489,1,17529,''),(71490,1,17530,''),(71491,1,17531,''),(71492,1,17532,''),(71493,1,17533,''),(71494,1,17534,''),(71495,1,17535,''),(71496,1,17536,''),(71497,1,17537,''),(71498,1,17538,''),(71499,1,17539,''),(71500,1,17540,''),(71501,1,17541,''),(71502,1,17542,''),(71503,1,17543,''),(71504,1,17544,''),(71505,1,17545,''),(71506,1,17546,''),(71507,1,17547,''),(71508,1,17548,''),(71509,1,17549,''),(71510,1,17550,''),(71511,1,17551,''),(71512,1,17552,''),(71513,1,17553,''),(71514,1,17554,''),(71515,1,17555,''),(71516,1,17556,''),(71517,1,17557,''),(71518,1,17558,''),(71519,1,17559,''),(71520,1,17560,''),(71521,1,17561,''),(71522,1,17562,''),(71523,1,17563,''),(71524,1,17564,''),(71525,1,17565,''),(71526,1,17566,''),(71527,1,17567,''),(71528,1,17568,''),(71529,1,17569,''),(71530,1,17570,''),(71531,1,17571,''),(71532,1,17572,''),(71533,1,17573,''),(71534,1,17574,''),(71535,1,17575,''),(71536,1,17576,''),(71537,1,17577,''),(71538,1,17578,''),(71539,1,17579,''),(71540,1,17580,''),(71541,1,17581,''),(71542,1,17582,''),(71543,1,17583,''),(71544,1,17584,''),(71545,1,17585,''),(71546,1,17586,''),(71547,1,17587,''),(71548,1,17588,''),(71549,1,17589,''),(71550,1,17590,''),(71551,1,17591,''),(71552,1,17592,''),(71553,1,17593,''),(71554,1,17594,''),(71555,1,17595,''),(71556,1,17596,''),(71557,1,17597,''),(71558,1,17598,''),(71559,1,17599,''),(71560,1,17600,''),(71561,1,17601,''),(71562,1,17602,''),(71563,1,17603,''),(71564,1,17604,''),(71565,1,17605,''),(71566,1,17606,''),(71567,1,17607,''),(71568,1,17608,''),(71569,1,17609,''),(71570,1,17610,''),(71571,1,17611,''),(71572,1,17612,''),(71573,1,17613,''),(71574,1,17614,''),(71575,1,17615,''),(71576,1,17616,''),(71577,1,17617,''),(71578,1,17618,''),(71579,1,17619,''),(71580,1,17620,''),(71581,1,17621,''),(71582,1,17622,''),(71583,1,17623,''),(71584,1,17624,''),(71585,1,17625,''),(71586,1,17626,''),(71587,1,17627,''),(71588,1,17628,''),(71589,1,17629,''),(71590,1,17630,''),(71591,1,17631,''),(71592,1,17632,''),(71593,1,17633,''),(71594,1,17634,''),(71595,1,17635,''),(71596,1,17636,''),(71597,1,17637,''),(71598,1,17638,''),(71599,1,17639,''),(71600,1,17640,''),(71601,1,17641,''),(71602,1,17642,''),(71603,1,17643,''),(71604,1,17644,''),(71605,1,17645,''),(71606,1,17646,''),(71607,1,17647,''),(71608,1,17648,''),(71609,1,17649,''),(71610,1,17650,''),(71611,1,17651,''),(71612,1,17652,''),(71613,1,17653,''),(71614,1,17654,''),(71615,1,17655,''),(71616,1,17656,''),(71617,1,17657,''),(71618,1,17658,''),(71619,1,17659,''),(71620,1,17660,''),(71621,1,17661,''),(71622,1,17662,''),(71623,1,17663,''),(71624,1,17664,''),(71625,1,17665,''),(71626,1,17666,''),(71627,1,17667,''),(71628,1,17668,''),(71629,1,17669,''),(71630,1,17670,''),(71631,1,17671,''),(71632,1,17672,''),(71633,1,17673,''),(71634,1,17674,''),(71635,1,17675,''),(71636,1,17676,''),(71637,1,17677,''),(71638,1,17678,''),(71639,1,17679,''),(71640,1,17680,''),(71641,1,17681,''),(71642,1,17682,''),(71643,1,17683,''),(71644,1,17684,''),(71645,1,17685,''),(71646,1,17686,''),(71647,1,17687,''),(71648,1,17688,''),(71649,1,17689,''),(71650,1,17690,''),(71651,1,17691,''),(71652,1,17692,''),(71653,1,17693,''),(71654,1,17694,''),(71655,1,17695,''),(71656,1,17696,''),(71657,1,17697,''),(71658,1,17698,''),(71659,1,17699,''),(71660,1,17700,''),(71661,1,17701,''),(71662,1,17702,''),(71663,1,17703,''),(71664,1,17704,''),(71665,1,17705,''),(71666,1,17706,''),(71667,1,17707,''),(71668,1,17708,''),(71669,1,17709,''),(71670,1,17710,''),(71671,1,17711,''),(71672,1,17712,''),(71673,1,17713,''),(71674,1,17714,''),(71675,1,17715,''),(71676,1,17716,''),(71677,1,17717,''),(71678,1,17718,''),(71679,1,17719,''),(71680,1,17720,''),(71681,1,17721,''),(71682,1,17722,''),(71683,1,17723,''),(71684,1,17724,''),(71685,1,17725,''),(71686,1,17726,''),(71687,1,17727,''),(71688,1,17728,''),(71689,1,17729,''),(71690,1,17730,''),(71691,1,17731,''),(71692,1,17732,''),(71693,1,17733,''),(71694,1,17734,''),(71695,1,17735,''),(71696,1,17736,''),(71697,1,17737,''),(71698,1,17738,''),(71699,1,17739,''),(71700,1,17740,''),(71701,1,17741,''),(71702,1,17742,''),(71703,1,17743,''),(71704,1,17744,''),(71705,1,17745,''),(71706,1,17746,''),(71707,1,17747,''),(71708,1,17748,''),(71709,1,17749,''),(71710,1,17750,''),(71711,1,17751,''),(71712,1,17752,''),(71713,1,17753,''),(71714,1,17754,''),(71715,1,17755,''),(71716,1,17756,''),(71717,1,17757,''),(71718,1,17758,''),(71719,1,17759,''),(71720,1,17760,''),(71721,1,17761,''),(71722,1,17762,''),(71723,1,17763,''),(71724,1,17764,''),(71725,1,17765,''),(71726,1,17766,''),(71727,1,17767,''),(71728,1,17768,''),(71729,1,17769,''),(71730,1,17770,''),(71731,1,17771,''),(71732,1,17772,''),(71733,1,17773,''),(71734,1,17774,''),(71735,1,17775,''),(71736,1,17776,''),(71737,1,17777,''),(71738,1,17778,''),(71739,1,17779,''),(71740,1,17780,''),(71741,1,17781,''),(71742,1,17782,''),(71743,1,17783,''),(71744,1,17784,''),(71745,1,17785,''),(71746,1,17786,''),(71747,1,17787,''),(71748,1,17788,''),(71749,1,17789,''),(71750,1,17790,''),(71751,1,17791,''),(71752,1,17792,''),(71753,1,17793,''),(71754,1,17794,''),(71755,1,17795,''),(71756,1,17796,''),(71757,1,17797,''),(71758,1,17798,''),(71759,1,17799,''),(71760,1,17800,''),(71761,1,17801,''),(71762,1,17802,''),(71763,1,17803,''),(71764,1,17804,''),(71765,1,17805,''),(71766,1,17806,''),(71767,1,17807,''),(71768,1,17808,''),(71769,1,17809,''),(71770,1,17810,''),(71771,1,17811,''),(71772,1,17812,''),(71773,1,17813,''),(71774,1,17814,''),(71775,1,17815,''),(71776,1,17816,''),(71777,1,17817,''),(71778,1,17818,''),(71779,1,17819,''),(71780,1,17820,''),(71781,1,17821,''),(71782,1,17822,''),(71783,1,17823,''),(71784,1,17824,''),(71785,1,17825,''),(71786,1,17826,''),(71787,1,17827,''),(71788,1,17828,''),(71789,1,17829,''),(71790,1,17830,''),(71791,1,17831,''),(71792,1,17832,''),(71793,1,17833,''),(71794,1,17834,''),(71795,1,17835,''),(71796,1,17836,''),(71797,1,17837,''),(71798,1,17838,''),(71799,1,17839,''),(71800,1,17840,''),(71801,1,17841,''),(71802,1,17842,''),(71803,1,17843,''),(71804,1,17844,''),(71805,1,17845,''),(71806,1,17846,''),(71807,1,17847,''),(71808,1,17848,''),(71809,1,17849,''),(71810,1,17850,''),(71811,1,17851,''),(71812,1,17852,''),(71813,1,17853,''),(71814,1,17854,''),(71815,1,17855,''),(71816,1,17856,''),(71817,1,17857,''),(71818,1,17858,''),(71819,1,17859,''),(71820,1,17860,''),(71821,1,17861,''),(71822,1,17862,''),(71823,1,17863,''),(71824,1,17864,''),(71825,1,17865,''),(71826,1,17866,''),(71827,1,17867,''),(71828,1,17868,''),(71829,1,17869,''),(71830,1,17870,''),(71831,1,17871,''),(71832,1,17872,''),(71833,1,17873,''),(71834,1,17874,''),(71835,1,17875,''),(71836,1,17876,''),(71837,1,17877,''),(71838,1,17878,''),(71839,1,17879,''),(71840,1,17880,''),(71841,1,17881,''),(71842,1,17882,''),(71843,1,17883,''),(71844,1,17884,''),(71845,1,17885,''),(71846,1,17886,''),(71847,1,17887,''),(71848,1,17888,''),(71849,1,17889,''),(71850,1,17890,''),(71851,1,17891,''),(71852,1,17892,''),(71853,1,17893,''),(71854,1,17894,''),(71855,1,17895,''),(71856,1,17896,''),(71857,1,17897,''),(71858,1,17898,''),(71859,1,17899,''),(71860,1,17900,''),(71861,1,17901,''),(71862,1,17902,''),(71863,1,17903,''),(71864,1,17904,''),(71865,1,17905,''),(71866,1,17906,''),(71867,1,17907,''),(71868,1,17908,''),(71869,1,17909,''),(71870,1,17910,''),(71871,1,17911,''),(71872,1,17912,''),(71873,1,17913,''),(71874,1,17914,''),(71875,1,17915,''),(71876,1,17916,''),(71877,1,17917,''),(71878,1,17918,''),(71879,1,17919,''),(71880,1,17920,''),(71881,1,17921,''),(71882,1,17922,''),(71883,1,17923,''),(71884,1,17924,''),(71885,1,17925,''),(71886,1,17926,''),(71887,1,17927,''),(71888,1,17928,''),(71889,1,17929,''),(71890,1,17930,''),(71891,1,17931,'444'),(71892,1,17932,'6'),(71893,1,17933,'4'),(71894,1,17934,''),(71895,1,17935,''),(71896,1,17936,''),(71897,1,17937,''),(71898,1,17938,''),(71899,1,17939,''),(71900,1,17940,''),(71901,1,17941,''),(71902,1,17942,''),(71903,1,17943,''),(71904,1,17944,''),(71905,1,17945,''),(71906,1,17946,''),(71907,1,17947,''),(71908,1,17948,''),(71909,1,17949,''),(71910,1,17950,''),(71911,1,17951,''),(71912,1,17952,''),(71913,1,17953,''),(71914,1,17954,''),(71915,1,17955,''),(71916,1,17956,''),(71917,1,17957,''),(71918,1,17958,''),(71919,1,17959,''),(71920,1,17960,''),(71921,1,17961,''),(71922,1,17962,''),(71923,1,17963,''),(71924,1,17964,''),(71925,1,17965,''),(71926,1,17966,''),(71927,1,17967,''),(71928,1,17968,''),(71929,1,17969,''),(71930,1,17970,''),(71931,1,17971,''),(71932,1,17972,''),(71933,1,17973,''),(71934,1,17974,''),(71935,1,17975,''),(71936,1,17976,''),(71937,1,17977,''),(71938,1,17978,''),(71939,1,17979,''),(71940,1,17980,''),(71941,1,17981,''),(71942,1,17982,''),(71943,1,17983,''),(71944,1,17984,''),(71945,1,17985,''),(71946,1,17986,''),(71947,1,17987,''),(71948,1,17988,''),(71949,1,17989,''),(71950,1,17990,''),(71951,1,17991,''),(71952,1,17992,''),(71953,1,17993,''),(71954,1,17994,''),(71955,1,17995,''),(71956,1,17996,''),(71957,1,17997,''),(71958,1,17998,''),(71959,1,17999,''),(71960,1,18000,''),(71961,1,18001,''),(71962,1,18002,''),(71963,1,18003,''),(71964,1,18004,''),(71965,1,18005,'aa'),(71966,1,18006,'ee'),(71970,1,18010,''),(71971,1,18011,''),(71972,1,18012,''),(71973,1,18013,''),(71974,1,18014,''),(71975,1,18015,''),(71976,1,18016,''),(71977,1,18017,''),(71978,1,18018,''),(71979,1,18019,''),(71980,1,18020,''),(71981,1,18021,''),(71982,1,18022,''),(71985,1,18025,''),(71986,1,18026,''),(71987,1,18027,''),(71988,1,18028,''),(71989,1,18029,''),(71990,1,18030,''),(71991,1,18031,''),(71992,1,18032,''),(71993,1,18033,''),(71994,1,18034,''),(71995,1,18035,''),(71996,1,18036,''),(71997,1,18037,''),(71998,1,18038,''),(71999,1,18039,''),(72000,1,18040,''),(72001,1,18041,''),(72002,1,18042,''),(72003,1,18043,''),(72004,1,18044,''),(72005,1,18045,''),(72006,1,18046,''),(72007,1,18047,''),(72008,1,18048,''),(72009,1,18049,''),(72010,1,18050,''),(72011,1,18051,''),(72012,1,18052,''),(72013,1,18053,''),(72014,1,18054,''),(72015,1,18055,''),(72016,1,18056,''),(72017,1,18057,''),(72018,1,18058,''),(72019,1,18059,''),(72020,1,18060,''),(72021,1,18061,''),(72022,1,18062,''),(72023,1,18063,''),(72024,1,18064,''),(72025,1,18065,''),(72026,1,18066,''),(72027,1,18067,''),(72028,1,18068,''),(72029,1,18069,''),(72030,1,18070,''),(72031,1,18071,''),(72032,1,18072,''),(72033,1,18073,''),(72034,1,18074,''),(72035,1,18075,''),(72036,1,18076,''),(72037,1,18077,''),(72038,1,18078,''),(72039,1,18079,''),(72040,1,18080,''),(72041,1,18081,''),(72042,1,18082,''),(72043,1,18083,''),(72044,1,18084,''),(72045,1,18085,''),(72046,1,18086,''),(72047,1,18087,''),(72048,1,18088,''),(72049,1,18089,''),(72050,1,18090,''),(72051,1,18091,''),(72052,1,18092,''),(72053,1,18093,''),(72054,1,18094,''),(72055,1,18095,''),(72056,1,18096,''),(72057,1,18097,''),(72058,1,18098,''),(72059,1,18099,''),(72060,1,18100,''),(72061,1,18101,''),(72062,1,18102,''),(72063,1,18103,''),(72064,1,18104,''),(72065,1,18105,''),(72066,1,18106,''),(72067,1,18107,''),(72068,1,18108,''),(72069,1,18109,''),(72070,1,18110,''),(72071,1,18111,''),(72072,1,18112,''),(72073,1,18113,''),(72074,1,18114,''),(72075,1,18115,''),(72076,1,18116,''),(72077,1,18117,''),(72078,1,18118,''),(72079,1,18119,''),(72080,1,18120,''),(72081,1,18121,''),(72082,1,18122,''),(72083,1,18123,''),(72084,1,18124,''),(72085,1,18125,''),(72086,1,18126,''),(72087,1,18127,''),(72088,1,18128,''),(72089,1,18129,''),(72090,1,18130,''),(72091,1,18131,''),(72092,1,18132,''),(72093,1,18133,''),(72094,1,18134,''),(72095,1,18135,''),(72096,1,18136,''),(72097,1,18137,''),(72098,1,18138,''),(72099,1,18139,''),(72100,1,18140,''),(72101,1,18141,''),(72102,1,18142,''),(72103,1,18143,''),(72104,1,18144,''),(72105,1,18145,''),(72106,1,18146,''),(72107,1,18147,''),(72108,1,18148,''),(72109,1,18149,''),(72110,1,18150,''),(72111,1,18151,''),(72112,1,18152,''),(72113,1,18153,''),(72114,1,18154,''),(72115,1,18155,''),(72116,1,18156,''),(72117,1,18157,''),(72118,1,18158,''),(72119,1,18159,'q'),(72120,1,18160,'i'),(72121,1,18161,'t'),(72122,1,18162,'w'),(72123,1,18163,'o'),(72124,1,18164,'y'),(72125,1,18165,'e'),(72126,1,18166,'p'),(72127,1,18167,'u'),(72128,1,18168,'r'),(72129,1,18169,''),(72130,1,18170,''),(72131,1,18171,''),(72132,1,18172,''),(72133,1,18173,''),(72134,1,18174,''),(72135,1,18175,''),(72136,1,18176,''),(72137,1,18177,''),(72138,1,18178,''),(72139,1,18179,''),(72140,1,18180,''),(72141,1,18181,''),(72142,1,18182,''),(72143,1,18183,''),(72144,1,18184,''),(72145,1,18185,''),(72146,1,18186,''),(72147,1,18187,''),(72148,1,18188,''),(72149,1,18189,''),(72150,1,18190,''),(72151,1,18191,''),(72152,1,18192,''),(72153,1,18193,''),(72154,1,18194,''),(72155,1,18195,''),(72156,1,18196,''),(72157,1,18197,''),(72158,1,18198,''),(72159,1,18199,''),(72160,1,18200,''),(72161,1,18201,''),(72162,1,18202,''),(72163,1,18203,''),(72164,1,18204,''),(72165,1,18205,''),(72166,1,18206,''),(72167,1,18207,''),(72168,1,18208,''),(72169,1,18209,''),(72170,1,18210,''),(72171,1,18211,''),(72172,1,18212,''),(72173,1,18213,''),(72174,1,18214,''),(72175,1,18215,''),(72176,1,18216,''),(72177,1,18217,''),(72178,1,18218,''),(72179,1,18219,''),(72180,1,18220,''),(72181,1,18221,''),(72182,1,18222,''),(72183,1,18223,''),(72184,1,18224,''),(72185,1,18225,''),(72186,1,18226,''),(72187,1,18227,''),(72188,1,18228,''),(72189,1,18229,''),(72190,1,18230,''),(72191,1,18231,''),(72192,1,18232,''),(72193,1,18233,''),(72194,1,18234,''),(72195,1,18235,''),(72196,1,18236,''),(72197,1,18237,''),(72198,1,18238,''),(72199,1,18239,''),(72200,1,18240,''),(72201,1,18241,''),(72202,1,18242,''),(72203,1,18243,''),(72204,1,18244,''),(72205,1,18245,''),(72206,1,18246,''),(72207,1,18247,''),(72208,1,18248,''),(72209,1,18249,''),(72210,1,18250,''),(72211,1,18251,''),(72212,1,18252,''),(72213,1,18253,''),(72214,1,18254,''),(72215,1,18255,''),(72216,1,18256,''),(72217,1,18257,''),(72218,1,18258,''),(72219,1,18259,''),(72220,1,18260,''),(72221,1,18261,''),(72222,1,18262,''),(72223,1,18263,''),(72224,1,18264,''),(72225,1,18265,''),(72226,1,18266,''),(72227,1,18267,''),(72228,1,18268,''),(72229,1,18269,''),(72230,1,18270,''),(72231,1,18271,''),(72232,1,18272,''),(72233,1,18273,''),(72234,1,18274,''),(72235,1,18275,''),(72236,1,18276,''),(72237,1,18277,''),(72238,1,18278,''),(72239,1,18279,''),(72240,1,18280,''),(72241,1,18281,''),(72242,1,18282,''),(72243,1,18283,''),(72244,1,18284,''),(72245,1,18285,''),(72246,1,18286,''),(72247,1,18287,''),(72248,1,18288,''),(72249,1,18289,''),(72250,1,18290,''),(72251,1,18291,''),(72252,1,18292,''),(72253,1,18293,''),(72254,1,18294,''),(72255,1,18295,''),(72256,1,18296,''),(72257,1,18297,''),(72258,1,18298,''),(72259,1,18299,''),(72260,1,18300,''),(72261,1,18301,''),(72262,1,18302,''),(72263,1,18303,''),(72264,1,18304,''),(72265,1,18305,''),(72266,1,18306,''),(72267,1,18307,''),(72268,1,18308,''),(72269,1,18309,'test'),(72270,1,18310,'test'),(72271,1,18311,''),(72272,1,18312,''),(72273,1,18313,''),(72274,1,18314,''),(72275,1,18315,''),(72276,1,18316,''),(72277,1,18317,''),(72278,1,18318,''),(72279,1,18319,''),(72280,1,18320,''),(72281,1,18321,''),(72282,1,18322,''),(72283,1,18323,''),(72284,1,18324,''),(72285,1,18325,''),(72286,1,18326,''),(72287,1,18327,''),(72288,1,18328,''),(72289,1,18329,''),(72290,1,18330,''),(72291,1,18331,''),(72292,1,18332,''),(72293,1,18333,''),(72294,1,18334,''),(72295,1,18335,''),(72296,1,18336,''),(72297,1,18337,''),(72298,1,18338,''),(72299,1,18339,''),(72300,1,18340,''),(72301,1,18341,''),(72302,1,18342,''),(72303,1,18343,''),(72304,1,18344,''),(72305,1,18345,''),(72306,1,18346,''),(72307,1,18347,''),(72308,1,18348,''),(72309,1,18349,''),(72310,1,18350,''),(72311,1,18351,''),(72312,1,18352,''),(72313,1,18353,''),(72314,1,18354,''),(72315,1,18355,''),(72316,1,18356,''),(72317,1,18357,''),(72318,1,18358,''),(72319,1,18359,''),(72320,1,18360,''),(72321,1,18361,''),(72322,1,18362,''),(72323,1,18363,''),(72324,1,18364,''),(72325,1,18365,''),(72326,1,18366,''),(72327,1,18367,''),(72328,1,18368,''),(72329,1,18369,''),(72330,1,18370,''),(72331,1,18371,''),(72332,1,18372,''),(72333,1,18373,''),(72334,1,18374,''),(72335,1,18375,''),(72336,1,18376,''),(72337,1,18377,''),(72338,1,18378,''),(72339,1,18379,''),(72340,1,18380,''),(72341,1,18381,''),(72342,1,18382,''),(72343,1,18383,''),(72344,1,18384,''),(72345,1,18385,''),(72346,1,18386,''),(72347,1,18387,''),(72348,1,18388,''),(72349,1,18389,''),(72350,1,18390,''),(72351,1,18391,''),(72352,1,18392,''),(72353,1,18393,''),(72354,1,18394,''),(72355,1,18395,''),(72356,1,18396,''),(72357,1,18397,''),(72358,1,18398,''),(72359,1,18399,''),(72360,1,18400,''),(72361,1,18401,''),(72362,1,18402,''),(72363,1,18403,''),(72364,1,18404,''),(72365,1,18405,''),(72366,1,18406,''),(72367,1,18407,''),(72368,1,18408,''),(72369,1,18409,'5'),(72370,1,18410,'4'),(72371,1,18411,''),(72372,1,18412,''),(72373,1,18413,''),(72374,1,18414,''),(72375,1,18415,''),(72376,1,18416,''),(72377,1,18417,''),(72378,1,18418,''),(72379,1,18419,''),(72380,1,18420,''),(72381,1,18421,'aaa'),(72382,1,18422,''),(72383,1,18423,''),(72384,1,18424,''),(72385,1,18425,''),(72386,1,18426,''),(72387,1,18427,''),(72388,1,18428,''),(72389,1,18429,''),(72390,1,18430,''),(72391,1,18431,''),(72392,1,18432,''),(72393,1,18433,''),(72394,1,18434,''),(72395,1,18435,''),(72396,1,18436,''),(72397,1,18437,''),(72398,1,18438,''),(72399,1,18439,'Required profile questions'),(72400,1,18440,'Settings'),(72401,1,18441,'Male'),(72402,1,18442,'Female'),(72403,1,18443,'All account types on the site'),(72404,1,18444,'User\'s current account type'),(72406,1,18446,'Add your profile to the Hot List'),(72407,1,18447,'Hot List'),(72408,1,18448,'Disable'),(72409,1,18449,'Enable'),(72410,1,18450,'Product ID'),(72411,1,18451,'You received {$amount} credit(s).'),(72412,1,18452,'You spent {$amount} credit(s).'),(72413,1,18453,'Credits history'),(72414,1,18454,'Add paid-for plan'),(72415,1,18455,'Add trial plan'),(72416,1,18456,'After deleting membership users will get:'),(72417,1,18457,'Select user role for new membership and create at least 1 plan:'),(72418,1,18458,'{$days} days left (current)'),(72419,1,18459,'Delete'),(72420,1,18460,'Delete membership'),(72421,1,18461,'Edit membership'),(72422,1,18462,'Showing memberships for account type'),(72423,1,18463,'Add, edit or remove plans for <b>{$membership}</b> membership:'),(72424,1,18464,'Membership period is required'),(72426,1,18466,'Product ID'),(72427,1,18467,'Select Role'),(72428,1,18468,'Set'),(72429,1,18469,'Set Membership:'),(72430,1,18470,'Set Period:'),(72431,1,18471,'Trial'),(76538,1,19771,'month(s)'),(76544,1,19777,'Memberships'),(72433,1,18473,'Trial membership can be used only once'),(72434,1,18474,'User membership has been updated'),(72435,1,18475,'View settings'),(72436,1,18476,'My Photos'),(72437,1,18477,'Album Name'),(72438,1,18478,'You have exceeded the limit of {$limit} photos in album'),(72439,1,18479,'Are you sure?'),(72440,1,18480,'Check all'),(72441,1,18481,'Choose existing Album or create new one'),(72442,1,18482,'Are you sure you want to cancel photo upload?'),(72443,1,18483,'Original cover'),(72444,1,18484,'Preview cover'),(72445,1,18485,'Crop album cover'),(72446,1,18486,'Delete'),(72447,1,18487,'Delete Selected'),(72448,1,18488,'Click to browse photos'),(72449,1,18489,'Drag & Drop photos here or click to browse'),(72450,1,18490,'Done'),(72451,1,18491,'Allow users download photos'),(72452,1,18492,'Download'),(72453,1,18493,'Drop photos to start upload'),(72454,1,18494,'Edit Cover'),(72455,1,18495,'Effects'),(72456,1,18496,'fade'),(72457,1,18497,'slide'),(72458,1,18498,'Failed to write file to disk'),(72459,1,18499,'A PHP extension stopped the file upload. PHP does not provide a way to ascertain which extension caused the file upload to stop; examining the list of loaded extensions with phpinfo() may help'),(72460,1,18500,'The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form'),(72461,1,18501,'The uploaded file exceeds the upload_max_filesize directive in php.ini'),(72462,1,18502,'No file was uploaded'),(72463,1,18503,'Missing a temporary folder'),(72464,1,18504,'The uploaded file was only partially uploaded'),(72465,1,18505,'uploaded <a href=\"{$albumUrl}\"> {$number}</a> new photos'),(72466,1,18506,'uploaded {$number} new photo to <a href=\"{$albumUrl}\">{$albumName}</a> album'),(72467,1,18507,'Albums'),(72468,1,18508,'Explore'),(72469,1,18509,'My photos'),(72470,1,18510,'Photos'),(72471,1,18511,'Move to Album'),(72472,1,18512,'Move photos to new album'),(72473,1,18513,'Newsfeed Photos'),(72474,1,18514,'You can\'t create or upload photo to album with this name.'),(72475,1,18515,'No items'),(72476,1,18516,'You only had enough credits to upload {$uploaded} photos out of {$count}. Buy more credits to upload the rest'),(72477,1,18517,'Photo(s) successfully moved'),(72478,1,18518,'Play/Pause'),(72479,1,18519,'Please wait while previously photo is being uploaded'),(72480,1,18520,'Rating'),(72481,1,18521,'(Total {$count})'),(72482,1,18522,'(Total {$count}. Yours is {$score})'),(72483,1,18523,'Save as Avatar'),(72484,1,18524,'Save as Album Cover'),(72485,1,18525,'Search text, @username or #hashtag'),(72486,1,18526,'No items found'),(72487,1,18527,'Select only 1 photo to set the cover'),(72488,1,18528,'Set as album cover'),(72489,1,18529,'Set as Album Cover'),(72490,1,18530,'Show'),(72491,1,18531,'Slideshow time:&nbsp;'),(72492,1,18532,'Settings'),(72493,1,18533,'This photo is too small to be set as the album cover. Minimum size is 330x330'),(72494,1,18534,'Invalid file type: {$name}'),(72495,1,18535,'Auto fill location on search'),(72496,1,18536,''),(72497,1,18537,'Distanse Units'),(72498,1,18538,''),(72499,1,18539,'kilometers'),(72500,1,18540,'miles'),(72501,1,18541,'Empty'),(72502,1,18542,'<p style=\"margin-bottom: 32px;\">Manage quick search widget. Questions below are common for all account types on the site<br>\n	<span class=\"ow_highlight\">Drag\'n\'Drop</span> questions into Quick Search layout to add<br>\n	<span class=\"ow_highlight\">Drag\'n\'Drop</span> questions outside of widget to delete from Quick Search</p>'),(72509,1,18549,'about an hour'),(72510,1,18550,'about %d hours'),(72511,1,18551,'about a minute'),(72512,1,18552,'about a month'),(72513,1,18553,'about a year'),(72514,1,18554,'Messages Settings'),(72515,1,18555,'ago'),(72516,1,18556,'Attachment'),(72517,1,18557,'Allow chat'),(72518,1,18558,'Read chat messages'),(72519,1,18559,'Read messages'),(72520,1,18560,'Continue chat dialog'),(72521,1,18561,'Continue mail dialog'),(72522,1,18562,'Continue dialog'),(72523,1,18563,'Start chat dialog'),(72524,1,18564,'Start dialog'),(72525,1,18565,'Use Chat'),(72526,1,18566,'a day'),(72527,1,18567,'Change your Messages privacy here'),(72528,1,18568,'Chat'),(72529,1,18569,'Message text is empty'),(72530,1,18570,'...'),(72531,1,18571,'Click here to read messages'),(72532,1,18572,'Are you sure?'),(72533,1,18573,'Are you sure you want to remove Messages?'),(72534,1,18574,'Conversations'),(72535,1,18575,'You have not conversation yet'),(72536,1,18576,'Your conversation list is empty'),(72537,1,18577,'Conversation not found'),(72538,1,18578,'%d days'),(72539,1,18579,'Delete chat'),(72540,1,18580,'Before uninstalling Messages plugin we have to remove all existing users\' chat content. This may take awhile.'),(72541,1,18581,'Warning'),(72542,1,18582,'Delete history'),(76450,1,19683,'Do you want to close the new message box?'),(72545,1,18585,'Enable sounds'),(72546,1,18586,'Find Contact'),(72547,1,18587,'Online friends'),(72548,1,18588,'from now'),(72549,1,18589,'General Settings'),(72550,1,18590,'Chats'),(72551,1,18591,'Mails'),(72552,1,18592,'Mails + Chat'),(72553,1,18593,'New message'),(72554,1,18594,'Search'),(72555,1,18595,'Last message sent'),(72556,1,18596,'less than a minute'),(72557,1,18597,'Load Earlier Messages'),(72558,1,18598,'Subject: '),(72559,1,18599,'Mark as unread'),(72560,1,18600,'Messages'),(72561,1,18601,'Message was not authorized'),(72562,1,18602,'%d minutes'),(72563,1,18603,'%d months'),(72564,1,18604,'Settings saved'),(72565,1,18605,'*** New Message ***'),(72566,1,18606,'{$count} new'),(72567,1,18607,'New message'),(72568,1,18608,'No friends online'),(72569,1,18609,'Others'),(72570,1,18610,'Messages'),(72571,1,18611,'Uninstall Messages plugin'),(72572,1,18612,'The <i>Messages</i> plugin is being installed. Time for completing the installation depends on the number of users and cron schedule. <br />Installed so far: {$percents}%'),(72573,1,18613,'The <i>Messages</i> plugin is being installed. Time for completing the installation depends on the number of users and cron schedule. <br />Installed so far: {$percents}%'),(72574,1,18614,'\'Messages\' plugin uninstall initiated.'),(72575,1,18615,'Who can invite me to chat'),(72576,1,18616,'You do not have enough permissions to read messages.'),(72577,1,18617,'Read the message'),(72578,1,18618,'Recipient is not selected'),(72579,1,18619,'You do not have enough permissions to reply to messages.'),(72580,1,18620,'Save settings'),(72581,1,18621,'Send'),(72582,1,18622,'Send Message'),(72583,1,18623,'Failed to send message:'),(72584,1,18624,'You do not have enough permissions to write  messages.'),(72585,1,18625,'Installation'),(72586,1,18626,'Really bad idea for big sites'),(72587,1,18627,'Friends Only Mode'),(72588,1,18628,'Choose messages mode'),(72589,1,18629,'Show all members in chat userlist'),(72590,1,18630,'Settings saved'),(72591,1,18631,'Show all users'),(72592,1,18632,'Show only online users'),(72593,1,18633,'Invisible for all'),(72594,1,18634,'Subject is empty'),(72595,1,18635,'Open in chat'),(72596,1,18636,'Text Message'),(72597,1,18637,'In progress'),(72598,1,18638,'The <i>Messages</i> plugin is being uninstalled. Time for completing the uninstallation depends on the number of users and cron schedule. <br />Uninstalled so far: {$percents}%'),(72599,1,18639,'Read chat messages'),(72600,1,18640,'Continue chat dialog'),(72601,1,18641,'Continue mail dialog'),(72602,1,18642,'Start chat dialog'),(72603,1,18643,'User List'),(72604,1,18644,'User you are trying to contact is deleted.'),(72605,1,18645,'User you are trying to contact is not approved.'),(72606,1,18646,'\'{$username}\' is not authorized to use chat'),(72607,1,18647,'User is not authorized to read messages'),(72608,1,18648,'User you are trying to contact is not verified.'),(72609,1,18649,'[username] has gone offline'),(72610,1,18650,'[username] is now online'),(72611,1,18651,'User you are trying to contact is suspended.'),(72612,1,18652,'User you are trying to contact is suspended.'),(72613,1,18653,'User not found'),(72614,1,18654,'Offline'),(72615,1,18655,'Settings'),(72616,1,18656,'Save settings'),(72617,1,18657,'Messages Settings'),(72618,1,18658,'{$displayname} went offline'),(72619,1,18659,'Use Chat'),(72620,1,18660,'You do not have enough permissions to use chat.'),(72621,1,18661,'{$displayname} only accepts chat requests from friends'),(72622,1,18662,'%d years'),(72623,1,18663,'Match Questions can\'t be signed to account types'),(72624,1,18664,'Create new match question'),(72625,1,18665,'To add a question to the matchmaking algorithm just set its weight rate <div class=\"coefficients_cont clearfix\" style=\"display:inline-block; vertical-align: middle; padding: 0 4px;\"> \r\n<a id=\"532abdbd8fa7f_item_1\" class=\"coefficient_item active\" href=\"javascript://\">&nbsp;</a> \r\n<a id=\"532abdbd8fa7f_item_2\" class=\"coefficient_item active\" href=\"javascript://\">&nbsp;</a> \r\n<a id=\"532abdbd8fa7f_item_3\" class=\"coefficient_item active\" href=\"javascript://\">&nbsp;</a> \r\n<a id=\"532abdbd8fa7f_item_4\" class=\"coefficient_item\" href=\"javascript://\">&nbsp;</a> \r\n<a id=\"532abdbd8fa7f_item_5\" class=\"coefficient_item\" href=\"javascript://\">&nbsp;</a> \r\n</div>\r\n below'),(72626,1,18666,'Other'),(72627,1,18667,'Matched Questions'),(72628,1,18668,'Manage Match Questions'),(72629,1,18669,'{$accountTypeName} only'),(72630,1,18670,'Special notes'),(72631,1,18671,'Remove'),(72632,1,18672,'Matchmaking Preferences'),(72633,1,18673,'My match\'s {$questionLabel}'),(72634,1,18674,'No questions'),(72635,1,18675,'Here you can specify some details of the person you are looking for. Just remember, you are not in a grocery store, being too demanding is counterproductive. People are not sets of features.'),(72636,1,18676,'Matchmaking Preferences'),(72637,1,18677,'Matchmaking Preferences'),(72638,1,18678,'General'),(72639,1,18679,'View all'),(72640,1,18680,'Save'),(72641,1,18681,'Settings'),(72642,1,18682,'Gallery settings updated'),(72643,1,18683,'Set photos from album'),(72644,1,18684,'Set all your photos'),(72645,1,18685,'<a href=\"javascript://\" id=\"{$id}\">Add</a> at least 7 photos to yourprofile'),(72646,1,18686,'Select album'),(72647,1,18687,'Choose album that contains at least 7 photos'),(72648,1,18688,'Please select album'),(72650,1,18690,'Add account type'),(72652,1,18692,'Activity:'),(72653,1,18693,'Talk soon,<br />\r\n{$site_name}, administration<br />\r\n{$site_url}'),(72654,1,18694,'Your bookmarks are waiting for you, visit their pages and learn something new on <a href=\"{$site_url}\">My Dating site</a>'),(72655,1,18695,'Dear {$username},'),(72656,1,18696,'These people are waiting for you'),(72657,1,18697,'Not in range'),(72658,1,18698,'Bookmarks - plugin settings'),(72659,1,18699,'General'),(72660,1,18700,'Latest'),(72661,1,18701,'My bookmarks'),(72662,1,18702,'Saved to <a href=\"{$bookmarksListURL}\">Bookmarks</a>'),(72663,1,18703,'Bookmark'),(72664,1,18704,'If a user doesn\'t return to the site within a period of time, send them a reminder letter about their bokmarks.'),(72665,1,18705,'Reminder letter'),(72666,1,18706,'Notification Settings'),(72667,1,18707,'Online'),(72668,1,18708,'My bookmarks'),(72669,1,18709,'after 10 days'),(72670,1,18710,'after 20 days'),(72671,1,18711,'after 30 days'),(72672,1,18712,'Don\'t send'),(72673,1,18713,'Settings successfully saved'),(72674,1,18714,'Save'),(72675,1,18715,'Removed from <a href=\"{$bookmarksListURL}\">Bookmarks</a>'),(72676,1,18716,'Remove bookmark'),(72677,1,18717,'View all'),(72678,1,18718,'View more'),(72679,1,18719,'Bookmarks'),(72680,1,18720,'Count'),(72681,1,18721,'Accept'),(72682,1,18722,'Your wink has been accepted.'),(72683,1,18723,'Winks'),(72684,1,18724,'<a href=\"{$userUrl}\">{$displayName}</a> accepted your wink!'),(72685,1,18725,'<a href=\"{$userUrl}\">{$displayName}</a> winked back at you!'),(72686,1,18726,'<a href=\"{$userUrl}\">{$displayName}</a> winked at you!'),(72687,1,18727,'Ignore'),(72688,1,18728,'Request accepted'),(72689,1,18729,'Request ignored'),(72690,1,18730,'Sorry, this user chooses not to interact with you'),(72691,1,18731,'Send message'),(72692,1,18732,'You winked back.'),(72693,1,18733,'wink back'),(72694,1,18734,'winked at you, showing their interest. Wink back or send a message in return.'),(72695,1,18735,'winked back at you. Send a message in return.'),(72696,1,18736,'Wink has already been sent. You can only send a wink in 7 days again'),(72697,1,18737,'Wink'),(72698,1,18738,'Wink send error'),(72699,1,18739,'Wink sent'),(72700,1,18740,'Wink successfully sent'),(72701,1,18741,'Google Analytics management'),(72702,1,18742,'Please submit valid value'),(72703,1,18743,'Parameters updated'),(72704,1,18744,'<i>Google Analytics</i> plugin should be configured to work properly. <a href=\"{$link}\">Go to settings page.</a>'),(72705,1,18745,'Parameters'),(72706,1,18746,'This is how Google Analytics identifies your site. <a href=\"http://www.google.com/analytics/learn/setupchecklist.html\">Read more</a>'),(72707,1,18747,'Web Property ID'),(72708,1,18748,'Google Analytics'),(72709,1,18749,'Contact us: Departments'),(72710,1,18750,'Contact us: Departments'),(72711,1,18751,'Please <a href=\'{$url}\'>create</a> at least one department for the contact page.'),(72712,1,18752,'Contact Us'),(72713,1,18753,'Add new'),(72714,1,18754,'Secure image'),(72715,1,18755,'Your e-mail'),(72716,1,18756,'Message'),(72717,1,18757,'Subject'),(72718,1,18758,'Send'),(72719,1,18759,'To'),(72720,1,18760,'Contact us'),(72721,1,18761,'Contact us'),(72722,1,18762,'email'),(72723,1,18763,'label'),(72724,1,18764,'Your message has been sent. {$dept} will reply shortly. Thank you.'),(72725,1,18765,'There is no such department'),(72728,1,18768,'Admin dashboard themes'),(72729,1,18769,'See more'),(72730,1,18770,'No items'),(72731,1,18771,'or'),(72732,1,18772,'asdasd'),(72733,1,18773,'Standard'),(72734,1,18774,'Add new values'),(72735,1,18775,'Edit Question Description'),(72736,1,18776,'Edit Question Label'),(72737,1,18777,'Edit Question Value'),(72738,1,18778,'aaaaaaaaaaaaaa'),(72739,1,18779,'asdasd1111111111111111'),(72740,1,18780,'1'),(72741,1,18781,'11'),(72742,1,18782,'21'),(72743,1,18783,'8'),(72744,1,18784,'18'),(72745,1,18785,'28'),(72746,1,18786,'5'),(72747,1,18787,'15'),(72748,1,18788,'25'),(72749,1,18789,'2'),(72750,1,18790,'12'),(72751,1,18791,'22'),(72752,1,18792,'9'),(72753,1,18793,'19'),(72754,1,18794,'6'),(72755,1,18795,'16'),(72756,1,18796,'26'),(72757,1,18797,'3'),(72758,1,18798,'13'),(72759,1,18799,'23'),(72760,1,18800,'10'),(72761,1,18801,'20'),(72762,1,18802,'7'),(72763,1,18803,'17'),(72764,1,18804,'27'),(72765,1,18805,'4'),(72766,1,18806,'14'),(72767,1,18807,'24'),(72768,1,18808,'aaaaaaaaa'),(72769,1,18809,'asdsadasd'),(72770,1,18810,'1'),(72771,1,18811,'11'),(72772,1,18812,'21'),(72773,1,18813,'31'),(72774,1,18814,'8'),(72775,1,18815,'18'),(72776,1,18816,'28'),(72777,1,18817,'5'),(72778,1,18818,'15'),(72779,1,18819,'25'),(72780,1,18820,'2'),(72781,1,18821,'12'),(72782,1,18822,'22'),(72783,1,18823,'9'),(72784,1,18824,'19'),(72785,1,18825,'29'),(72786,1,18826,'6'),(72787,1,18827,'16'),(72788,1,18828,'26'),(72789,1,18829,'3'),(72790,1,18830,'13'),(72791,1,18831,'23'),(72792,1,18832,'10'),(72793,1,18833,'20'),(72794,1,18834,'30'),(72795,1,18835,'7'),(72796,1,18836,'17'),(72797,1,18837,'27'),(72798,1,18838,'4'),(72799,1,18839,'14'),(72800,1,18840,'24'),(72801,1,18841,'bbbbb bbbbb'),(72802,1,18842,'bbbbb'),(72803,1,18843,'1'),(72804,1,18844,'11'),(72805,1,18845,'21'),(72806,1,18846,'8'),(72807,1,18847,'18'),(72808,1,18848,'28'),(72809,1,18849,'5'),(72810,1,18850,'15'),(72811,1,18851,'25'),(72812,1,18852,'2'),(72813,1,18853,'12'),(72814,1,18854,'22'),(72815,1,18855,'9'),(72816,1,18856,'19'),(72817,1,18857,'29'),(72818,1,18858,'6'),(72819,1,18859,'16'),(72820,1,18860,'26'),(72821,1,18861,'3'),(72822,1,18862,'13'),(72823,1,18863,'23'),(72824,1,18864,'10'),(72825,1,18865,'20'),(72826,1,18866,'7'),(72827,1,18867,'17'),(72828,1,18868,'27'),(72829,1,18869,'4'),(72830,1,18870,'14'),(72831,1,18871,'24'),(72832,1,18872,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_1s5imcyo0dxha'),(72833,1,18873,'Photo is still uploading'),(72834,1,18874,'External'),(72835,1,18875,'Page type'),(72836,1,18876,'Local'),(72837,1,18877,'Url'),(72838,1,18878,'Join our fast-growing community. Find new friends, date up, share photo and video.\nEnjoy!'),(72839,1,18879,'Filter settings'),(72840,1,18880,'Only for logged in users'),(72841,1,18881,'Only show photos of users matching my \"Looking for\" setting'),(72842,1,18882,'{$skadate_version} ({$skadate_build}). Platform version: {$oxwall_version} ({$oxwall_build})'),(72843,1,18883,'Congratulations! You have a new SpeedMatch connection. Now strike a conversation with {$username}.'),(72844,1,18884,'Do you want to add yourself to the Hot List?'),(72845,1,18885,'Yes'),(72846,1,18886,'<p>This is to confirm that you just bought {$credits} credits for {$price} {$currency}. It\'s exciting what you can do with them in our community!</p>\r\n<p>Thank you for your purchase and have a good day!</p>\r\n<p>Sincerely,<br />\r\n{$site_name} team</p>'),(72847,1,18887,'{$credits} credits purchase'),(72848,1,18888,'This is to confirm that you just bought {$credits} credits for {$price} {$currency}. It\'s exciting what you can do with them in our community!\r\n\r\nThank you for your purchase and have a good day!\r\n\r\nSincerely,\r\n{$site_name} team'),(72849,1,18889,'Settings'),(72850,1,18890,'Membership configuration'),(72851,1,18891,'Notifications'),(72852,1,18892,'<p>Hi {$name},</p>\r\n<p>We are letting you know that your {$membership} membership just expired but don\'t let that stop you! You are warmly invited to extend your membership to stay connected in our community and enjoy all of its benefits!</p>\r\n<p>And of course, if you have any questions or concerns, just let us know! We are eagerly willing to help you in any way possible!</p>\r\n<p>Sincerely,<br />\r\n{$site_name} team</p>'),(72853,1,18893,'Your membership has expired'),(72854,1,18894,'Hi {$name},\r\n\r\nWe are letting you know that your {$membership} membership just expired but don\'t let that stop you! You are warmly invited to extend your membership to stay connected in our community and enjoy all of its benefits!\r\n\r\nAnd of course, if you have any questions or concerns, just let us know! We are eagerly willing to help you in any way possible!\r\n\r\nSincerely,\r\n{$site_name} team'),(72855,1,18895,'<p>Hello there {$name},</p>\r\n<p>We hope you enjoy being a part of our community as much as we do. Here\'s a friendly reminder that your {$membership} membership expires in {$days} days, so it may be a good idea to check your preferred payment method to make sure you stay connected.</p>\r\n<p>If you have any concernsor questions, just let us know, we are always there to help!</p>\r\n<p>Sincerely,<br />\r\n{$site_name} team</p>'),(72856,1,18896,'Your membership expires in {$days} days'),(72857,1,18897,'Hello there {$name},\r\n\r\nWe hope you enjoy being a part of our community as much as we do. Here\'s a friendly reminder that your {$membership} membership expires in {$days} days, so it may be a good idea to check your preferred payment method to make sure you stay connected.\r\n\r\nIf you have any concerns or questions, just let us know, we are always there to help!\r\n\r\nSincerely,\r\n{$site_name} team'),(72858,1,18898,'<p>Hi {$name},</p>\r\n<p>We hope you enjoy being a part of our community as much as we do. Here\'s a friendly reminder that your {$membership} membership expires in 24 hours, so it may be a good idea to check your preferred payment method to make sure you stay connected.</p>\r\n<p>If you don’t have a recurring membership set up, you are encouraged to do that to ensure smooth and uninterrupted premium experience that {$membership} membership provides.</p>\r\n<p>If you have any concerns or questions, just let us know, we are always there to help!</p>\r\n<p>Sincerely,<br />\r\n{$site_name} team</p>'),(72859,1,18899,'Your membership expires in 24 hours'),(72860,1,18900,'Hi {$name},\r\n\r\nWe hope you enjoy being a part of our community as much as we do. Here\'s a friendly reminder that your {$membership} membership expires in 24 hours, so it may be a good idea to check your preferred paymentmethod to make sure you stay connected.\r\n\r\nIf you don’t have a recurring membership set up, you are encouraged to do that to ensure smooth and uninterrupted premium experience that {$membership} membership provides.\r\n\r\nIf you have any concerns or questions, just let us know, we are always there to help!\r\n\r\nSincerely,\r\n{$site_name} team'),(72861,1,18901,'<p>Hi {$name},</p>\r\n<p>Thanks for upgrading! We hope you will enjoy the benefits of your new membership at our site, which will last until {$expirationDate}. If you have any questions, feel free to ask, we are always there for your convenience.</p>\r\n<p>Sincerely,<br />\r\n{$site_name} team</p>'),(72862,1,18902,'Successful upgrade to {$membership} membership level'),(72863,1,18903,'Hi {$name},\r\n\r\nThanks for upgrading! We hope you will enjoy the benefits of your new membership at our site, which will last until {$expirationDate}. If you have any questions, feel free to ask, we are always there for your convenience.\r\n\r\nSincerely,\r\n{$site_name} team'),(72864,1,18904,'<p>Hi there {$name},</p>\r\n<p>Your {$membership} membership has just been renewed, since you have a recurring {$membership} membership set up at our site. Thank you for being a part of our community!</p>\r\n<p>And of course, if you have feedback, or any questions/concerns, just let us know!</p>\r\n<p>Sincerely,</br />\r\n{$site_name} team</p>'),(72865,1,18905,'Your membership has been renewed'),(72866,1,18906,'Hi there {$name},\r\n\r\nYour {$membership} membership has just been renewed, since you have a recurring {$membership} membership set up at our site. Thank you for being a part of our community!\r\n\r\nAnd of course, if you have feedback, or any questions/concerns, just let us know!\r\n\r\nSincerely,\r\n{$site_name} team'),(72867,1,18907,'Remind users by email that membership expires in'),(72868,1,18908,'Settings updated'),(72869,1,18909,'You cannot edit the photo content due to limited permissions'),(72870,1,18910,'Most Discussed'),(72871,1,18911,'Most Discussed photos - {$site_name}'),(72872,1,18912,'Comments:'),(72873,1,18913,'days'),(72874,1,18914,'Distance'),(76441,1,19674,'No people found. Please try a different search for more results.'),(72876,1,18916,'General Settings'),(72877,1,18917,'Hide user activity after'),(72878,1,18918,'kms'),(72879,1,18919,'Latest activity'),(72880,1,18920,'Load earlier profiles'),(72881,1,18921,'Compatibility'),(72884,1,18924,'miles'),(72885,1,18925,'Distance'),(72886,1,18926,'Latest Activity'),(76442,1,19675,'No people found. Please try a different search for more results.'),(72888,1,18928,'Recently Joined'),(72889,1,18929,'Quick Search Settings'),(72890,1,18930,'Recently joined'),(72891,1,18931,'Save'),(72892,1,18932,'Settings was saved.'),(72893,1,18933,'Sort Settings'),(72894,1,18934,'User List'),(72895,1,18935,'Join Date'),(72896,1,18936,'View Settings'),(72897,1,18937,'with photo'),(72898,1,18938,'Read message (use credits)'),(72899,1,18939,'Someone sends me a new chat message'),(72900,1,18940,'Someone sends me a new mail message'),(72901,1,18941,'Messages'),(72902,1,18942,'Message'),(72903,1,18943,'New message to'),(72904,1,18944,'<img src=\"{$src}\" title=\"{$displayname}\">\r\n<br />\r\n<a href=\"{$url}\">{$displayname}</a> <a href=\"{$conversation_url}\">winked back</a> at you.'),(72905,1,18945,'{$displayname} Winked back at me'),(72906,1,18946,'<img src=\"{$src}\" title=\"{$displayname}\">\r\n<a href=\"{$url}\">{$displayname}</a> <a href=\"{$conversation_url}\">winked back</a> at you.'),(72907,1,18947,'Someone winked at me'),(72908,1,18948,'<img src=\"{$src}\" title=\"{$displayname}\"><br />\r\n<a href=\"{$url}\">{$displayname}</a> <a href=\"{$home_url}\">winked</a> at you.'),(76176,1,19409,'{$displayname} Winked at you'),(72910,1,18950,'<img src=\"{$src}\" title=\"{$displayname}\"> <a href=\"{$url}\">{$displayname}</a> <a href=\"{$home_url}\">winked</a> at you.'),(75808,1,19041,'ppp'),(75759,1,18992,'Suspend Users'),(75760,1,18993,'Avatar file size limit'),(75761,1,18994,'The file size is greater than server limit: {$limit} Mb.'),(75762,1,18995,'Invalid theme archive'),(75763,1,18996,'Are you sure you want to delete this section?\r\n\r\nAll profile questions belonging to this section will be moved to the \"{$sectionName}\" section.'),(75764,1,18997,'Please provide a reason for suspending the member.'),(75765,1,18998,'Users'),(75766,1,18999,'Avatar has been changed'),(75767,1,19000,'or choose from your library'),(75768,1,19001,'You can drop only 1 image to this area'),(75769,1,19002,'Avatar has been approved'),(75770,1,19003,'This photo is too small to be set as avatar. <br />Minimum size is {$width}px x {$height}px'),(75771,1,19004,'Avatar is pending approval'),(75772,1,19005,'changed their avatar'),(75773,1,19006,'Back'),(75774,1,19007,'Check all to'),(75775,1,19008,'commented on {$content}'),(75776,1,19009,'comment on {$content}'),(75777,1,19010,'Avatars'),(75778,1,19011,'Avatar'),(75779,1,19012,'Comments'),(75780,1,19013,'Comment'),(75810,1,19043,'custom page'),(76172,1,19405,'Mail Notifications'),(76171,1,19404,'Mail Notifications'),(76141,1,19374,'If you are planning to move your SkaDate Dating Software to a new location then you will need to get your license reissued. See <a href=\"https://hello.skadate.com/docs/manuals/licensing\" target=\"_blank\">https://hello.skadate.com/docs/manuals/licensing</a> for more info...'),(76142,1,19375,'Your license key appears to be invalid. This error can appear due to several reasons: <br /> - Changed site domain<br /> - Changed site IP address<br /> - Changed server path to the installed copy of SkaDate Dating Software<br /> <br /> To resolve this problem please reissue your license in SkaDate Customer Area by following this guide - <a href=\"https://hello.skadate.com/docs/manuals/licensing\" target=\"_blank\">https://hello.skadate.com/docs/manuals/licensing</a>. <br /> Once the key is reissued, click the \"Validate License\" button below.'),(75812,1,19045,'tttt'),(75813,1,19046,'<meta>custom meta</meta>'),(75814,1,19047,'zsfsdf'),(75815,1,19048,'Test'),(75816,1,19049,'test2'),(75817,1,19050,'sdfsd'),(75818,1,19051,'whoohaa'),(75819,1,19052,'test'),(75820,1,19053,'qqq'),(75821,1,19054,'2q3r3'),(75822,1,19055,'sdf'),(75823,1,19056,'8aaxaxa'),(75824,1,19057,'aaa'),(75825,1,19058,'ppp'),(75826,1,19059,'custom page'),(75827,1,19060,'grey'),(75828,1,19061,'custom page'),(75829,1,19062,'asdas'),(75830,1,19063,'Test installation on XAMP'),(75831,1,19064,'grey'),(75832,1,19065,'base+local_page_title_page_61525903'),(75833,1,19066,'ttttt'),(75834,1,19067,'mmm'),(75835,1,19068,'jjj'),(75836,1,19069,'test'),(75837,1,19070,'mmm'),(75838,1,19071,'Test'),(75839,1,19072,'test2'),(75840,1,19073,'Action'),(75841,1,19074,'Are you sure you want to delete this {$content}?'),(75842,1,19075,'Are you sure you want to delete {$count} {$content}?'),(75843,1,19076,'{$content} has been deleted'),(75844,1,19077,'{$count} {$content} have been deleted'),(75845,1,19078,'{$content} has been unflagged'),(75846,1,19079,'{$count} {$content} have been unflagged'),(75847,1,19080,'<a href=\"{$userUrl}\"><b>{$userName}\'s</b></a> {$content} has been flagged'),(75848,1,19081,'No items'),(75849,1,19082,'No items selected'),(75850,1,19083,'Moderator Panel'),(75851,1,19084,'Reason'),(75852,1,19085,'Reporter'),(75853,1,19086,'Moderation Tools'),(75854,1,19087,'test'),(75855,1,19088,'8aaxaxa'),(75856,1,19089,'ppp'),(75857,1,19090,'grey'),(75858,1,19091,'test'),(75859,1,19092,'test local'),(75860,1,19093,'ssd'),(75861,1,19094,'test'),(75862,1,19095,'grey'),(75863,1,19096,'htru'),(75864,1,19097,'123'),(75865,1,19098,'greyyyyyyyyyy'),(75866,1,19099,'mmm'),(75867,1,19100,'testtttt google'),(75868,1,19101,'greyyyy'),(75869,1,19102,'mmm'),(75870,1,19103,'Pending Approval'),(75871,1,19104,'asdasd'),(75872,1,19105,'Standard'),(75873,1,19106,'test11'),(75874,1,19107,'test1'),(75875,1,19108,'test test test'),(75876,1,19109,'test'),(75877,1,19110,'test'),(75878,1,19111,'gggggggggggggggg'),(75879,1,19112,'ggggggggggg'),(75880,1,19113,'sadas'),(75881,1,19114,'asdas'),(75882,1,19115,'asdasd'),(75883,1,19116,'aaa'),(75884,1,19117,'bbb'),(75885,1,19118,'111'),(75886,1,19119,'nnn'),(75887,1,19120,'test'),(75888,1,19121,'test1'),(75889,1,19122,'test1'),(75890,1,19123,'test1'),(75891,1,19124,'fffffffffff'),(75892,1,19125,'fffffffffff'),(75893,1,19126,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_005k5lkdq003j'),(75894,1,19127,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00m1hx374y74i'),(75895,1,19128,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_010oe8waiptt8'),(75896,1,19129,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_003xmy34mtb9c'),(75897,1,19130,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00ihn5nsdp2r9'),(75898,1,19131,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00vwxvjmr5a9s'),(75899,1,19132,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_003ck3g1b6lm1'),(75900,1,19133,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00cypqeqcadzf'),(75901,1,19134,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00q0058hevpmo'),(75902,1,19135,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_006rngprmwtfq'),(75903,1,19136,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00nagx77iqme6'),(75904,1,19137,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_004hziyvvm60m'),(75905,1,19138,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00kx0gbo90gha'),(75906,1,19139,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00w9l1hmbsny1'),(75907,1,19140,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_003i6k43iirlc'),(75908,1,19141,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00flmxylqngl0'),(75909,1,19142,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00rrwp3uk6mxk'),(75910,1,19143,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_007t6jmeijnr4'),(75911,1,19144,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00oe2jhlq5p5p'),(75912,1,19145,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00555xm9c9saw'),(75913,1,19146,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00kzr82wg6std'),(75914,1,19147,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00z5ykql2x2or'),(75915,1,19148,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_003oylo4fgdij'),(75916,1,19149,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00hd1g5xozff1'),(75917,1,19150,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00ru7zbfdcjqz'),(75918,1,19151,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00cghoahyrs2p'),(75919,1,19152,'http://comunidadriosdeaguaviva.ning.com/xn/detail/u_00p7h97i4d6e5'),(75929,1,19162,'qwe'),(75930,1,19163,'qwe'),(75931,1,19164,'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq'),(75932,1,19165,'qqqqqqqqqqqqqqqqqqqqqqq'),(75933,1,19166,'3333333333'),(75934,1,19167,'zsczxc'),(75935,1,19168,'zxc'),(75936,1,19169,'zxczx'),(75937,1,19170,'zxczx'),(75938,1,19171,'zxczx'),(75944,1,19177,'eee'),(75945,1,19178,'eee'),(75946,1,19179,'aaaa'),(75947,1,19180,'d'),(75948,1,19181,'ddd'),(75949,1,19182,'aaa'),(75950,1,19183,'d'),(75951,1,19184,'aaa2'),(75952,1,19185,'c'),(75953,1,19186,'a'),(75954,1,19187,'sss'),(75955,1,19188,'d'),(75956,1,19189,'33'),(75957,1,19190,'d'),(75958,1,19191,'s'),(75959,1,19192,'a'),(75960,1,19193,'44'),(75961,1,19194,'d'),(75965,1,19198,'fdbfbfd'),(75966,1,19199,'bfbdf'),(75967,1,19200,'rtttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt'),(75968,1,19201,'eyrtyetrwau'),(75969,1,19202,'eewiura'),(75970,1,19203,'213'),(75971,1,19204,'12'),(75972,1,19205,'12321'),(75973,1,19206,'321'),(75974,1,19207,'21312'),(75975,1,19208,'123'),(75976,1,19209,'werwrw'),(75977,1,19210,'ew'),(75978,1,19211,'wer'),(75979,1,19212,'r'),(75980,1,19213,'wr'),(75981,1,19214,'w'),(75982,1,19215,'wer'),(75983,1,19216,'test1'),(75984,1,19217,'test1'),(75985,1,19218,'112'),(75986,1,19219,'12312'),(75987,1,19220,'123123'),(75988,1,19221,'12312312'),(75989,1,19222,'dddd'),(75990,1,19223,'dddd'),(76001,1,19234,'123'),(76012,1,19245,'test'),(76013,1,19246,'1'),(76014,1,19247,'sdfsdfsdfsdf1333'),(76015,1,19248,'as'),(76016,1,19249,'asf'),(76017,1,19250,'safdas'),(76018,1,19251,'fa'),(76019,1,19252,'as'),(76020,1,19253,'asfas'),(76021,1,19254,'sf'),(76022,1,19255,'asf'),(76023,1,19256,'asfasf'),(76024,1,19257,'ddd'),(76025,1,19258,'ddd'),(76026,1,19259,'test2'),(76027,1,19260,'test2'),(76124,1,19357,'&nbsp;'),(76129,1,19362,'Please provide a reason for suspending the member.'),(76221,1,19454,'Suspend {$displayName}'),(76131,1,19364,'Dear {$realName},<br><br>\r\nWe are informing you that your account on {$site_name} has been suspended with the following reason given:<br>\r\n{$suspendReason}<br><br>\r\nThank you,<br>\r\n{$site_name} team'),(76132,1,19365,'Your account has been suspended'),(76133,1,19366,'Dear {$realName},\r\nWe are informing you that your account on {$site_name} has been suspended with the following reason given:\r\n{$suspendReason}\r\nThank you,\r\n{$site_name} team'),(76134,1,19367,'Unflag'),(76135,1,19368,'Welcome to <a href=\"{$site_url}\">{$site_name}</a>! Thanks for joining us. Here are some quick links that you need to find your way around:<br/><br/>\r\n- <a href=\"{$site_url}\">Main page</a><br/>\r\n- <a href=\"{$site_url}my-profile\">Change avatar</a><br/>\r\n- <a href=\"{$site_url}photo/viewlist/latest\">Upload Photos</a><br/>\r\n- <a href=\"{$site_url}profile/edit\">Change profile details</a><br/>\r\n- <a href=\"{$site_url}users\">Look who\'s in</a><br/><br/>\r\nFeel free to participate in our community!<br/><br/>\r\n<a href=\"{$site_url}\">{$site_name}</a> administration<br/>'),(76136,1,19369,'Welcome to {$site_name}! Thanks for joining us. Here are some quick links that you need to find your way around:\r\n\r\n- Main page: {$site_url}\r\n- Change avatar: {$site_url}my-profile\r\n- Upload photos: {$site_url}photo/viewlist/latest\r\n- Change profile details: {$site_url}profile/edit\r\n- Look who\'s in: {$site_url}users\r\n\r\nFeel free to participate in our community!\r\n\r\n{$site_name} administration\r\n\r\n{$site_url}'),(76137,1,19370,'<p>\r\nWelcome to our site! Here are a few quick links that you need to start your way around:\r\n</p>\r\n<ul class=\"ow_regular\">\r\n<li><a href=\"profile/avatar\" change_avatar>Change avatar</a></li>\r\n<li><a href=\"javascript://\" photo_upload>Upload photos</a></li>\r\n<li><a href=\"profile/edit\">Change profile details</a></li>\r\n<li><a href=\"my-profile\">Preview/rearrange my profile</a></li>\r\n<li><a href=\"users\">Look who\'s in</a></li>\r\n</ul>\r\n\r\n<p>\r\nFeel free to participate in our community!\r\n</p>'),(76138,1,19371,'photo_upload - Photo upload link\r\nchange_avatar - Change avatar link'),(76139,1,19372,'Welcome!'),(76140,1,19373,'advertisement'),(76222,1,19455,'Welcome to <a href=\"{$site_url}\">{$site_name}</a>! Thanks for joining us. Here are some quick links that you need to find your way around:<br/><br />\r\n    <a href=\"{$site_url}\">Main page</a> - welcome!<br/>\r\n    <a href=\"{$site_url}photo/viewlist/latest\">Upload photos</a> - you are guaranteed to receive no response without photos;<br/>\r\n    <a href=\"{$site_url}profile/edit\">Change profile details</a> - again, people will only engage if they get some impression of you. Invest time in your profile;<br/>\r\n    <a href=\"{$site_url}matches/preferences\">Change matchmaking settings</a> - change how your matches are calculated based on profile info;<br/>\r\n    <a href=\"{$site_url}users/search\">Look who\'s in</a><br/><br />\r\nWe are eager to send many dates your way!<br/><br />\r\n\r\n<a href=\"{$site_url}\">{$site_name}</a> administration<br/>'),(76145,1,19378,'in {$hours} hours'),(76146,1,19379,'in {$minutes} minutes'),(76147,1,19380,'in 1 hour'),(76148,1,19381,'in 1 minute'),(76149,1,19382,'tomorrow'),(76150,1,19383,'Add photos'),(76151,1,19384,'Approve'),(76152,1,19385,'added new photo'),(76153,1,19386,'edited their photo'),(76154,1,19387,'Photos'),(76155,1,19388,'photo'),(76156,1,19389,'Most Discussed photos uploaded by members of {$site_name}.'),(76157,1,19390,'<div class=\"ow_remark ow_smallmargin\">Pending Approval . . .</div>'),(76158,1,19391,'The {$count} photos will be available shortly, pending approval.'),(76159,1,19392,'The photo will be available shortly, pending approval.'),(76160,1,19393,'Actions'),(76161,1,19394,'Delete'),(76162,1,19395,'Mark as read'),(76163,1,19396,'Mark as unread'),(76164,1,19397,'Bulk options'),(76165,1,19398,'Can not display \"{$entityType}\" message.'),(76166,1,19399,'Check all'),(76167,1,19400,'Mass-messaging is blocked. You need to wait for {$send_message_interval} seconds before sending a message again.'),(76168,1,19401,'Allow to send messages once in'),(76169,1,19402,'seconds'),(76170,1,19403,'Write a reply...'),(76174,1,19407,'Mail Notifications'),(76175,1,19408,'Profile Gallery Settings'),(76190,1,19423,'Add password'),(76191,1,19424,''),(76192,1,19425,''),(76193,1,19426,''),(76194,1,19427,''),(76195,1,19428,''),(76196,1,19429,''),(76197,1,19430,''),(76198,1,19431,''),(76199,1,19432,''),(76200,1,19433,''),(76201,1,19434,''),(76202,1,19435,''),(76203,1,19436,''),(76204,1,19437,''),(76205,1,19438,''),(76206,1,19439,''),(76207,1,19440,''),(76208,1,19441,''),(76209,1,19442,''),(76210,1,19443,''),(76211,1,19444,''),(76212,1,19445,''),(76213,1,19446,''),(76214,1,19447,'Change password'),(76215,1,19448,''),(76216,1,19449,''),(76217,1,19450,''),(76218,1,19451,''),(76219,1,19452,'New to site?'),(76224,1,19457,'<p>\r\n\r\nWelcome to our site! Here are a few quick links that you need to start your way around:\r\n</p>\r\n<ul class=\"ow_regular\">\r\n<li><a href=\"profile/avatar\" change_avatar>Change avatar</a></li>\r\n<li><a href=\"javascript://\" photo_upload>Upload photos</a></li>\r\n<li><a href=\"profile/edit\">Change profile details</a></li>\r\n<li><a href=\"matches/preferences\">Change matchmaking settings</a></li>\r\n<li><a href=\"users\">Look who\'s in</a></li>\r\n</ul>\r\n<p>\r\nFeel free to participate in our community!\r\n</p>'),(76225,1,19458,''),(76227,1,19460,''),(76228,1,19461,'Select one country from the list to limit the search results.'),(76229,1,19462,'Country'),(76230,1,19463,''),(76231,1,19464,'All countries'),(76232,1,19465,'Map'),(76233,1,19466,'Latitude of map center'),(76234,1,19467,'Longitude of map center'),(76235,1,19468,'Map height (pixels)'),(76236,1,19469,'Map zoom ( values range form 0 to 17 )'),(76237,1,19470,'Wink'),(76238,1,19471,'This is not a video or video not found'),(76239,1,19472,'Invalid file type. Acceptable file types: JPG/PNG/GIF'),(76240,1,19473,'Add video link...'),(76241,1,19474,''),(76242,1,19475,''),(76243,1,19476,''),(76244,1,19477,''),(76245,1,19478,''),(76246,1,19479,''),(76247,1,19480,''),(76248,1,19481,''),(76249,1,19482,''),(76250,1,19483,''),(76251,1,19484,''),(76252,1,19485,''),(76253,1,19486,''),(76254,1,19487,''),(76255,1,19488,''),(76256,1,19489,''),(76257,1,19490,''),(76258,1,19491,''),(76259,1,19492,''),(76260,1,19493,''),(76261,1,19494,''),(76262,1,19495,''),(76263,1,19496,''),(76264,1,19497,''),(76265,1,19498,''),(76266,1,19499,''),(76267,1,19500,''),(76268,1,19501,'SMTP connection failed.'),(76270,1,19503,'Privacy'),(76271,1,19504,'Content settings'),(76272,1,19505,'General'),(76273,1,19506,'Manage pages'),(76274,1,19507,'Page settings'),(76275,1,19508,'SMTP'),(76276,1,19509,'Special pages'),(76277,1,19510,'Themes'),(76278,1,19511,'Customize'),(76279,1,19512,'Main'),(76288,1,19521,'Content settings'),(76300,1,19533,'Upload Plugin'),(76301,1,19534,'Available Plugins'),(76302,1,19535,'Add new'),(76303,1,19536,'Mobile menus'),(76304,1,19537,'Mobile Settings'),(76305,1,19538,'General'),(76306,1,19539,'Admin dashboard'),(76307,1,19540,'Site password: {$password}'),(76308,1,19541,'Save'),(76309,1,19542,'Settings saved'),(76310,1,19543,'Settings have been updated'),(76311,1,19544,'Site password'),(76312,1,19545,'Splash screen'),(76313,1,19546,'Splash screen settings'),(76314,1,19547,'Settings updated'),(76315,1,19548,'All files'),(76316,1,19549,'Copy URL'),(76317,1,19550,'Delete'),(76318,1,19551,'Undefined action'),(76319,1,19552,'Not enough params'),(76320,1,19553,'No photo selected'),(76321,1,19554,'Select mode'),(76322,1,19555,'Delete selected'),(76323,1,19556,'Exit select mode'),(76324,1,19557,'Period'),(76325,1,19558,'All time'),(76326,1,19559,'Title'),(76327,1,19560,'URL'),(76328,1,19561,'Date'),(76329,1,19562,'Size'),(76330,1,19563,'Filesize'),(76331,1,19564,'Upload date'),(76332,1,19565,'Are you sure you want to delete these photos?'),(76333,1,19566,'No items'),(76334,1,19567,'Album'),(76335,1,19568,'Are you sure you want to delete this photo?'),(76336,1,19569,'Description text...'),(76337,1,19570,'Click to browse photos'),(76338,1,19571,'Drag & Drop photos here or click to browse'),(76339,1,19572,'Drop photos to start upload'),(76340,1,19573,'Failed to write file to disk'),(76341,1,19574,'A PHP extension stopped the file upload. PHP does not provide a way to ascertain which extension caused the file upload to stop; examining the list of loaded extensions with phpinfo() may help'),(76342,1,19575,'The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form'),(76343,1,19576,'The uploaded file exceeds the upload_max_filesize directive in php.ini'),(76344,1,19577,'No file was uploaded'),(76345,1,19578,'Missing a temporary folder'),(76346,1,19579,'The uploaded file was only partially uploaded'),(76347,1,19580,'Mark as Featured'),(76348,1,19581,'Some photos were not uploaded because of excessive size or wrong format'),(76349,1,19582,'No photos were uploaded because of excessive size or wrong format'),(76350,1,19583,'of'),(76351,1,19584,'Pending Approval . . .'),(76352,1,19585,'{$count} photos uploaded'),(76353,1,19586,'Photo upload error'),(76354,1,19587,'Please wait while previously photo is being uploaded'),(76355,1,19588,'(Total {$count})'),(76356,1,19589,'(Total {$count}. Your is {$score})'),(76357,1,19590,'Remove from Featured'),(76358,1,19591,'Photo \"{$name}\" file size cannot be greater than <b>{$size}</b> Mb'),(76359,1,19592,'Slideshow time:&nbsp;'),(76360,1,19593,'Edit photo'),(76361,1,19594,'Invalid file type. {$name}'),(76362,1,19595,'Content statistics'),(76363,1,19596,'Default content group'),(76364,1,19597,'Today'),(76365,1,19598,'Yesterday'),(76366,1,19599,'Last 7 days'),(76367,1,19600,'Last 30 days'),(76368,1,19601,'Last year'),(76369,1,19602,'Default period'),(76370,1,19603,'User statistics'),(76371,1,19604,'Registrations'),(76372,1,19605,'Logins'),(76373,1,19606,'Amount for selected period'),(76374,1,19607,'Transactions'),(76375,1,19608,'Amount'),(76376,1,19609,'Finance statistics'),(76377,1,19610,'History'),(76378,1,19611,'Browse users'),(76379,1,19612,'Item license request'),(76380,1,19613,'Platform update is available and recommended before performing any item update!'),(76381,1,19614,'Back'),(76382,1,19615,'Submit'),(76383,1,19616,'To proceed please enter license key for item \"{$title}\"'),(76384,1,19617,'Dashboard'),(76385,1,19618,'{$site_name}:New Password Set'),(76386,1,19619,'New password is set for {$site_name}<br>\r\nYour new password is <b>{$password}</b><br>'),(76387,1,19620,'New password is set for {$site_name}\r\nYour new password is {$password}'),(76388,1,19621,'Mobile experience'),(76389,1,19622,'iOS'),(76390,1,19623,'Android'),(76391,1,19624,'Banners'),(76392,1,19625,'Show first'),(76393,1,19626,'Find My Date'),(76394,1,19627,'Skalfa LLC'),(76395,1,19628,'View'),(76396,1,19629,'Mobile Promo Image'),(76397,1,19630,'Image was deleted'),(76398,1,19631,'Image successfully uploaded'),(76399,1,19632,'Error on upload image.'),(76400,1,19633,'Terms of use'),(76401,1,19634,'Terms of use'),(76402,1,19635,'<p class=\"ow_smallmargin\">\nWelcome to our website. If you continue to browse and use this website, you are agreeing to comply with and be bound by the following terms and conditions of use, which together with our privacy policy govern our relationship with you in relation to this website. If you disagree with any part of these terms and conditions, please do not use our website.\n</p>\n<p class=\"ow_stdmargin\">\nThe term \'website\' or \'us\' or \'we\' refers to the owner of the website. The term \'user\' refers to the website visitor.\n </p>\n<p class=\"ow_smallmargin\">\nThe use of this website is subject to the following terms of use:\n </p>\n<ul class=\"ow_stdmargin ow_regular\">\n<li class=\"ow_smallmargin\">\nThe content of the pages of this website is for user’s general information and use only. It is subject to change without notice.\n </li>\n<li class=\"ow_smallmargin\">\nUser acknowledges that neither we nor any third parties provide any warranties while the user is using this website for any particular purpose. We expressly exclude liability for any possible harm to the fullest extent permitted by law.\n </li>\n<li class=\"ow_smallmargin\">\nUser’s use of any information or materials on this website is entirely at their own risk, for which we shall not be liable. It shall be user’s own responsibility to ensure that any products, services or information available through this website meet user’s specific requirements.\n </li>\n<li class=\"ow_smallmargin\">\nThis website contains material that may be owned by or licensed to us. This material includes, but is not limited to the design, layout, look, appearance and graphics. Reproduction is prohibited other than upon receiving explicit permission.\n </li>\n<li class=\"ow_smallmargin\">\nUnauthorised use of this website may give rise to a claim for damages and/or be a criminal offence.\n </li>\n<li class=\"ow_smallmargin\">\nThis website may also include links to other websites. These links are provided for user’s convenience to provide further information. They do not signify that we endorse said website(s). We have no responsibility for the content of the linked website(s).\n </li>\n<li class=\"ow_smallmargin\">\nUser agrees not to submit illegal content to this website, and agree to warn website owners after seeing other users doing it.\n</li>\n</ul>'),(76403,1,19636,'Speedmatch'),(76404,1,19637,'Easy to join'),(76405,1,19638,'Join our growing site, and meet dozens of singles today!'),(76462,1,19695,'<a href=\"mobile-version\">Mobile-friendly</a>'),(76408,1,19641,'Add yourself to Hot List'),(76409,1,19642,'Remove yourself from Hot List'),(76432,1,19665,'Credits pack'),(76411,1,19644,'Cost of actions'),(76412,1,19645,'Granted by <a href=\"{$url}\">{$displayName}</a>'),(76413,1,19646,'Granted to <a href=\"{$url}\">{$displayName}</a>'),(76414,1,19647,'Save'),(76415,1,19648,'Settings'),(76431,1,19664,'Settings were saved'),(76418,1,19651,'Grant by user'),(76419,1,19652,'Grant to user'),(76420,1,19653,'Updated by administration'),(76421,1,19654,'Credit statistics'),(76422,1,19655,'Purchased'),(76423,1,19656,'Spent'),(76424,1,19657,'Browse history'),(76425,1,19658,'Purchase history'),(76426,1,19659,'User'),(76427,1,19660,'Credit pack'),(76428,1,19661,'Amount'),(76429,1,19662,'History is empty'),(76433,1,19666,'Here you can configure what users receive and loose credits for.'),(76434,1,19667,'Guests'),(76435,1,19668,'{$desc} ({$count})'),(76436,1,19669,''),(76437,1,19670,''),(76438,1,19671,'Can\'t be more than {$distance} {$units}'),(76439,1,19672,'Browse users'),(76440,1,19673,'Location'),(76443,1,19676,'Different search'),(76444,1,19677,'Quick Search button text'),(76445,1,19678,'Search'),(76446,1,19679,'Match Compatibility'),(76447,1,19680,'Match compatibility'),(76448,1,19681,'Available if \"Matchmaking\" plugin is installed'),(76449,1,19682,'Available if \"Google Map Location\" plugin is installed'),(76451,1,19684,'Silent mode: Off'),(76452,1,19685,'Silent mode: On'),(76453,1,19686,'You do not have enough permissions to read this message.'),(76454,1,19687,'You do not have enough permissions to reply.'),(76455,1,19688,'You do not have enough permissions to write  messages.'),(76563,1,19796,'Please subscribe or buy credits to send messages'),(76564,1,19797,'Please subscribe or buy credits to reply to conversation'),(76565,1,19798,'Please subscribe or buy credits to send chat message'),(76567,1,19800,'Distance'),(76460,1,19693,'My Matches'),(76461,1,19694,'Accept or ignore:'),(76463,1,19696,'<a href=\"profile/matches\">Match algorithm</a>'),(76464,1,19697,'Captcha Settings'),(76465,1,19698,'Enable on Join form'),(76466,1,19699,'Note: Keep in mind that editing text fields will result in your profile being sent for approval. You will not be able to use the site during the approval process.'),(76467,1,19700,'Updated their profile. <a href=\"{$profileUrl}\">View profile</a>'),(76468,1,19701,'Message'),(76469,1,19702,'Subject'),(76470,1,19703,'Send message to email'),(76471,1,19704,'Write message'),(76472,1,19705,'Save and approve'),(76473,1,19706,'Message was sent'),(76474,1,19707,'User doesn\'t exist'),(76475,1,19708,'Empty email subject'),(76476,1,19709,'Empty message'),(76477,1,19710,'User has been deleted'),(76478,1,19711,'Message'),(76479,1,19712,'New password is set for {$sitename}<br>\n        Your new password is <b>{$password}</b><br>'),(76504,1,19737,'The license for the plugin/theme <a href=\"{$url}\">{$name}</a> you are trying to use is invalid.'),(76526,1,19759,'It appears that following plugins/themes obtained through Oxwall Store and installed on your website ({$siteURL}) have failed license verification check:\r\n\r\n{$itemList}\r\n\r\nTo continue using these plugins/themes, please make sure that all license keys for the listed plugins/themes are valid. Note that you may need to enter license keys manually in the Admin Panel: {$adminUrl}\r\n\r\nYou may find all licenses for purchased plugins/themes in your Oxwall Store account: http://www.oxwall.org/store/granted-list/plugin\r\n\r\nYou may also contact specific plugin/theme developers to obtain a new license key.\r\n\r\nIMPORTANT: After three consecutive unsuccessful license verification checks the plugin/theme may be deactivated.\r\n\r\nPlease note that all commercial third party plugins/themes sold through Oxwall Store are covered by Oxwall Store Commercial License (http://www.oxwall.org/store/oscl), and require a valid license key to operate.'),(76521,1,19754,'Here is the list of changes:'),(76508,1,19741,'Add License'),(76511,1,19744,'License key validated'),(76513,1,19746,'Add unlimited number of values. Field values are stored regularly, which might affects the speed of profiles search.'),(76514,1,19747,'Possible values'),(76515,1,19748,'The value should not be empty'),(76517,1,19750,'Grey'),(76518,1,19751,'You need to sign in to flag content'),(76519,1,19752,'Single Choice - Regular (Slower results, unlimited)'),(76520,1,19753,'Theme added'),(76525,1,19758,'It appears that following plugins/themes obtained through Oxwall Store and installed on your website ({$siteURL}) have failed license verification check:\r\n<br /><br />\r\n{$itemList}<br /><br />\r\nTo continue using these plugins/themes, please make sure that all license keys for the listed plugins/themes are valid. Note that you may need to enter license keys manually in the Admin Panel: {$adminUrl}\r\n<br /><br />\r\nYou may find all licenses for purchased plugins/themes in your Oxwall Store account: http://www.oxwall.org/store/granted-list/plugin\r\n<br /><br />\r\nYou may also contact specific plugin/theme developers to obtain a new license key.\r\n<br /><br />\r\nIMPORTANT: After three consecutive unsuccessful license verification checks the plugin/theme may be deactivated.\r\n<br /><br />\r\nPlease note that all commercial third party plugins/themes sold through Oxwall Store are covered by Oxwall Store Commercial License (http://www.oxwall.org/store/oscl), and require a valid license key to operate.\r\n<br />'),(76523,1,19756,'Url copied to clipboard'),(76524,1,19757,'Press \"Command+C\" to copy url'),(76527,1,19760,'Unlicensed Plugin/Theme Notice'),(76532,1,19765,'You can receive and spend credits for performing the following actions'),(76529,1,19762,'Payment method:'),(76530,1,19763,'Subscribe'),(76531,1,19764,'Your selection:'),(76535,1,19768,'Payment provider'),(76536,1,19769,'Proceed'),(76537,1,19770,'Subscribe'),(76541,1,19774,'{$period} {$periodUnits} of trial'),(76542,1,19775,'You\'ve been granted {$period} {$periodUnits} of trial membership'),(76545,1,19778,'Memberships & Credits'),(76546,1,19779,'Payment method'),(76547,1,19780,'Payment provider'),(76548,1,19781,'{$period} {$periodUnits} for {$currency} {$price}'),(76549,1,19782,'Proceed'),(76550,1,19783,'Subscribe'),(76551,1,19784,'Your selection'),(76552,1,19785,''),(76553,1,19786,'Bing'),(76554,1,19787,'Bing Maps require an API key to function properly. Please obtain the key <a href=\"https://msdn.microsoft.com/en-us/library/ff428642.aspx\">here</a>.\n\n<a href=\"https://msdn.microsoft.com/en-us/library/gg585136.aspx\">Click here</a> to learn more about Bing Maps.'),(76555,1,19788,'Bing Api Key'),(76556,1,19789,''),(76557,1,19790,'Google'),(76558,1,19791,'Map provider'),(76559,1,19792,'Search Options'),(76560,1,19793,'Enable search by Username'),(76561,1,19794,'Username'),(76562,1,19795,'Search by Username'),(76566,1,19799,'Please subscribe or buy credits to reply to chat message'),(76568,1,19801,'Location'),(76569,1,19802,'For Approve'),(79914,1,19928,'Save'),(79908,1,19922,'You have successfully logged in with your Facebook account'),(79907,1,19921,'Sorry, can\'t sign you in because your Facebook name contains non-latin characters ( for example $, %, ^, &, *, é, ŋ )'),(79898,1,19912,'Don\'t forget to review these settings whenever you change <a href=\"{$questionsUrl}\">profile questions</a>.'),(79899,1,19913,'Settings Updated'),(79900,1,19914,'Connect'),(79901,1,19915,'Log in with Facebook'),(79902,1,19916,'joined our site using their Facebook account!'),(79903,1,19917,'Facebook Connect'),(79904,1,19918,'<a href=\"{$userUrl}\">{$user}</a> joined our site using their Facebook account!'),(79888,1,19902,'Set up Facebook Connect'),(79885,1,19899,'Manage your Facebook Application'),(76605,1,19838,'Account number'),(76606,1,19839,'Merchant account settings'),(76607,1,19840,'available'),(76608,1,19841,'Save'),(76609,1,19842,'Credit card form name'),(76610,1,19843,'On-line check form name'),(76611,1,19844,'CCBill configuration'),(76612,1,19845,'Continue'),(76613,1,19846,'Data Link service password'),(76614,1,19847,'Data Link service username'),(76615,1,19848,'EU DirectPay form name'),(76616,1,19849,'EuroDebit form name'),(76617,1,19850,'CCBill'),(76618,1,19851,'CCBill credit card'),(76619,1,19852,'CCBill online/check pay'),(76620,1,19853,'CCBill EU DirectPay'),(76621,1,19854,'CCBill EuroDebit'),(76622,1,19855,'<a href=\"{$url}\">CCBill plugin</a> requires additional configuration'),(76623,1,19856,'Recurring payments'),(76624,1,19857,'Dynamic Pricing salt key'),(76625,1,19858,'Contact CCBill client support to receive the salt value'),(76626,1,19859,'Select payment method'),(76627,1,19860,'Settings has been updated'),(76628,1,19861,'Sub-account number'),(76629,1,19862,'Supported currencies'),(76630,1,19863,'Comments: {$count}'),(76631,1,19864,'Enter password'),(76632,1,19865,'Enter the password to see photos in \"{$albumName}\" album:'),(76633,1,19866,'Please select friends to share your album, or change album privacy settings'),(76634,1,19867,'Plugin \"Photo\" is required'),(76635,1,19868,'Invalid password'),(76636,1,19869,'Or choose from list'),(76637,1,19870,'Password'),(76638,1,19871,'Password protected'),(76639,1,19872,'Password protected photo'),(76640,1,19873,'Password protection'),(76641,1,19874,'All friends'),(76642,1,19875,'Individual friends'),(76643,1,19876,'Privacy: {$default}'),(76644,1,19877,'Password protected'),(76645,1,19878,'Public'),(76646,1,19879,'Protect album with password'),(76647,1,19880,'Rating is unavailable for password protected photos'),(76648,1,19881,'Enter name'),(76649,1,19882,'Selected'),(76650,1,19883,'Submit'),(76651,1,19884,'to view photo'),(76652,1,19885,'Your password'),(76653,32,16014,'Добавить категорию'),(76654,32,16015,'Добавить новый шаблон'),(76655,32,16016,'Настройка плагина Подарки'),(76656,32,16017,'Отправить подарок'),(76657,32,16018,'Подарки'),(76658,32,16019,'Добавить'),(76659,32,16020,'Сохранить'),(76660,32,16021,'Отправить'),(76661,32,16022,'от <a href=\"{$senderUrl}\">{$sender}</a>'),(76662,32,16023,'Категории подарков'),(76663,32,16024,'Категория'),(76664,32,16025,'Категория подарков добавлена'),(76665,32,16026,'Категория удалена'),(76666,32,16027,'Список категорий'),(76667,32,16028,'Пожалуйста, сначала удалите эту категорию подарков'),(76668,32,16029,'Название категории:'),(76669,32,16030,'Выбрать друзей'),(76670,32,16031,'Количество подарков'),(76671,32,16032,'Вы действительно хотите удалить ВСЕ подарки пользователя?'),(76672,32,16033,'Вы действительно хотите удалить этот шаблон подарка?'),(76673,32,16034,'Удалить контент и деактивировать плагин'),(76674,32,16035,'Перед деактивацией плагина Подарки, нужно удалить все существующие подарки пользователей. Процесс удаления может занять некоторое время. Поэтому мы активировали на сайте статус технического обслуживания и сайт будет активным после завершения процесса деактивации плагина.'),(76675,32,16036,'Предупреждение'),(76676,32,16037,'Подарки'),(76677,32,16038,'<a href=\"{$senderUrl}\">{$senderName}</a> отправил(а) вам <a href=\"{$giftUrl}\">подарок</a>.'),(76678,32,16039,'Кто-то отправляет мне подарок'),(76679,32,16040,'Существующие подарки'),(76680,32,16041,'прокомментировал(а) подарок {$sender} {$recipient}'),(76681,32,16042,'понравился подарок {$sender} {$recipient}'),(76682,32,16043,'прокомментировал подарок {$recipient}'),(76683,32,16044,'понравился подарок {$recipient}'),(76684,32,16045,'Подарки'),(76685,32,16046,'подарил <a href=\"{$recipientUrl}\">{$recipientName}</a> подарок!'),(76686,32,16047,'Выбранный тип изображения не разрешен'),(76687,32,16048,'Подарки'),(76688,32,16049,'Подарок {$userName}'),(76689,32,16050,'Подарок удален'),(76690,32,16051,'Изображение подарка'),(76691,32,16052,'Пожалуйста, выберите подарок'),(76692,32,16053,'Подарок не отправлен'),(76693,32,16054,'Цена подарка'),(76694,32,16055,'Подарок отправлен'),(76695,32,16056,'Подарок отправлен {$count} пользователям'),(76696,32,16057,'Сообщение'),(76697,32,16058,'Эти подарки получены {$recipient} на {$site_name}.'),(76698,32,16059,'Этот подарок для  {$recipient} от {$sender}.'),(76699,32,16060,'{$message} - Этот подарок для {$recipient} от {$sender}.'),(76700,32,16061,'Мои подарки - {$site_name}'),(76701,32,16062,'{$recipient} подарки - {$site_name}'),(76702,32,16063,'Подарок для {$recipient} - {$site_name}'),(76703,32,16064,'{$message} - Подарок для {$recipient} - {$site_name}'),(76704,32,16065,'Мои подарки'),(76705,32,16066,'Мои подарки'),(76706,32,16067,'Войдите, чтобы отправлять подарки'),(76707,32,16068,'Вы не можете отправлять подарки'),(76708,32,16069,'Вы еще не получили подарок'),(76709,32,16070,'Изображение не выбрано'),(76710,32,16071,'Пользователи не выбраны'),(76711,32,16072,'Деактивировать плагин Подарки'),(76712,32,16073,'Деакктивация плагина Подарки началась'),(76713,32,16074,'Приватный подарок'),(76714,32,16075,'Этот подарок показывается только вам и {$username}'),(76715,32,16076,'Отправить подарок'),(76716,32,16077,'Отправить подарок'),(76717,32,16078,'Отправить подарок {$user}'),(76718,32,16079,'Подарок стоит {$price} кредитов. У вас на балансе {$balance} кредитов. У вас недостаточно кредитов, чтобы отправлять подарки выбранным друзьям.'),(76719,32,16080,'Отправить приватный подарок'),(76720,32,16081,'Отправить приватный подарок <span class=\"ow_small\">(видимый только для <b>{$user}</b>)</span>'),(76721,32,16082,'Отправить ответный подарок'),(76722,32,16083,'Отправить подарок друзьям'),(76723,32,16084,'Шаблон добавлен'),(76724,32,16085,'Список подарков'),(76725,32,16086,'Шаблон не добавлен'),(76726,32,16087,'Шаблон добавлен'),(76727,32,16088,'Вне категории'),(76728,32,16089,'В процессе'),(76729,32,16090,'Пожалуйста, подождите пока все подарки удалятся. Процесс может занять время в зависимости от количества подарков на сайте.'),(76730,32,16091,'Отправить подарки'),(76731,32,16092,'Подарки получены {$user}'),(76732,32,1952,'Форум'),(76733,32,1951,'Фото'),(76734,32,1926,'{$title}'),(76735,32,1932,'{$site_name} сообщество'),(76736,32,1931,'{$site_name}'),(76737,32,1933,'знакоства онлайн, бесплатный сайт знакомств'),(76738,32,1930,'{$site_name} - Ищите знакомства!'),(76739,32,19634,'Правила пользования'),(76740,32,19635,'Правила пользования'),(76741,32,19633,'Правила пользования'),(76742,32,16364,'Заказать'),(76743,32,16365,'Перевод'),(76744,32,1622,'Активные языки'),(76745,32,16366,'Добавить'),(76746,32,1697,'Добавить'),(76747,32,1695,'Ключ'),(76748,32,1696,'Текст в  {$label} ( {$tag} )'),(76749,32,7302,'Пустой или недействительный пакет языка. Выберите верный пакет и попробуйте снова.'),(76750,32,1683,'Добавить новый язык (пакет языка)'),(76751,32,9285,'Добавить новую роль'),(76752,32,1605,'Добавить новый текст'),(76753,32,19423,'Добавить пароль'),(76754,32,16367,'Добавить новые значения: <span class=\"ow_small ow_highlight\">Через запятую</span>'),(76755,32,19518,'Главное'),(76756,32,19539,'Личный кабинет администратора'),(76757,32,19540,'Пароль на сайт: {$password}'),(76758,32,19712,'Новый пароль установлен для {$sitename}<br> Ваш новый пароль <b>{$password}</b><br>'),(76759,32,18992,'Заблокировать пользователей'),(76760,32,19567,'Альбом'),(76761,32,19548,'Все файлы'),(76762,32,1615,'Все секции'),(76763,32,19558,'Все время'),(76764,32,1704,'Вы уверены?'),(76765,32,9296,'Администрация'),(76766,32,1694,'Доступные языки'),(76767,32,8993,'Иконка на аватаре'),(76768,32,8997,'Цвет иконки'),(76769,32,3833,'Назад к ролям пользователей'),(76770,32,2107,'Назад на сайт'),(76771,32,15780,'Назад к списку тем'),(76772,32,1627,'Активировать'),(76773,32,1625,'Клонировать'),(76774,32,1626,'Деактивировать'),(76775,32,1628,'Удалить'),(76776,32,1624,'Редактировать'),(76777,32,9908,'значения'),(76778,32,19697,'Настройки капчи'),(76779,32,19447,'Сменить пароль'),(76780,32,1604,'Проверьте <a href=\"languages/mod\">другие языки</a>'),(76781,32,1703,'Пример: <b>Английский</b>'),(76782,32,1706,'<p class=\"ow_smallmargin\">Введите код языка, который соответствует <a href=\"http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements\">Alpha-2 ISO language tags</a>.</p>\nПример: <b>en-US</b> or <b>en-GB-custom</b>.'),(76783,32,1701,'Язык'),(76784,32,1708,'Добавить'),(76785,32,1705,'ISO тег\n<a class=\"ow_lbutton ow_red\" target=\"_blank\" href=\"http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements\">?</a>'),(76786,32,1700,'Клонировать язык'),(76787,32,9522,'Клонировать язык'),(76788,32,4004,'Лицензионный ключ'),(76789,32,4010,'Вы действительно хотите обновить плагин <i>\'{$name}\'</i> с версии <b>{$oldVersion}</b> на <b>{$newVersion}</b>? Плагин платный, чтобы обновить его, введите лицензионный ключ и нажмите кнопку \'Обновить\''),(76790,32,15781,'Лицензионный ключ'),(76791,32,15782,'Вы действительно хотите обновить <i>\'{$name}\'</i> тему с версии <b>{$oldVersion}</b> на <b>{$newVersion}</b>? Это платная тема, чтобы ее обновить, пожалуйста, введите лицензионный ключ и нажмите кнопку \'Обовить\'.'),(76792,32,6486,'Вы действительно хотите удалить аватар, выставленный по умолчанию?'),(76793,32,19568,'Вы действительно хотите удалить это фото?'),(76794,32,19565,'Вы действительно хотите удалить эти фото?'),(76795,32,2236,'Вы действительно хотите удалить выбранных пользователей?'),(76796,32,2825,'Вы действительно хотите заблокировать выбранных пользователей?'),(76797,32,14375,'Личный кабинет администратора'),(76798,32,14376,'Уравление страницами'),(76799,32,14377,'Управление плагинами'),(76800,32,14378,'Редактировать тему'),(76801,32,14379,'Управление пользователями'),(76802,32,19549,'Скопировать URL'),(76803,32,9871,'Ошибка при загрузке обновления платформы'),(76804,32,4717,'Нет'),(76805,32,11573,'Загруженный архив не разархивирован'),(76806,32,14648,'Вам нужно настроить cron job. <a href=\"{$helpUrl}\">Инструкции</a>'),(76807,32,6377,'Кастомные CSS стили темы изменены'),(76808,32,3862,'Валюта'),(76809,32,1612,'Индивидуальные ключи'),(76810,32,19561,'Дата'),(76811,32,1712,'по умолчанию'),(76812,32,6487,'Аватар, выставленный по умолчанию удален'),(76813,32,16368,'Роль по умолчанию'),(76814,32,1611,'Удалить'),(76815,32,1918,'Удалить'),(76816,32,15783,'Предупреждение'),(76817,32,19550,'Удалить'),(76818,32,19555,'Удалить выбранное'),(76819,32,19569,'Текст описания'),(76820,32,8996,'Отображать иконку роли на аватаре'),(76821,32,19698,'Добавить на форму регистрации'),(76822,32,19570,'Нажать для просмотра фото'),(76823,32,19571,'Перетащите фото или нажмите, чтобы загрузить'),(76824,32,19572,'Перетащить фото, чтобы начать подгрузку'),(76825,32,9909,'Редактировать язык'),(76826,32,1693,'Редактировать язык'),(76827,32,4130,'Электронный адрес уже подтвержден'),(76828,32,1620,'Пусто'),(76829,32,16369,'Неверные детали доступа по FTP! Не могу соединиться с хостом.'),(76830,32,19573,'Не удалось записать файл на диск'),(76831,32,16370,'Неверные детали доступа по FTP! Нет данных для имени, пароля.'),(76832,32,16371,'Неверные детали доступа по FTP! Нет данных для хоста.'),(76833,32,19574,'Расширение PHP прекратило подгрузку файла. PHP не предоставляет способ проверки какое расширение вызвало остановку подгрузки файла. Просмотрите список загружаемых типов файлов, используя phpinfo()'),(76834,32,19575,'Подгруженный файл превышает директиву MAX_FILE_SIZE указанную в HTML форме'),(76835,32,16372,'Не могу завершить операцию. Функция `ftp_connect` недоступна.'),(76836,32,19576,'Подгруженный файл превышает директиву upload_max_filesize указанную в php.ini'),(76837,32,16373,'Ошибка при логине по FTP! Проверьте имя, пароль.'),(76838,32,19577,'Файл не подгружен'),(76839,32,19578,'Отсуствует временная папка'),(76840,32,19579,'Файл подгрузился частично'),(76841,32,19556,'Выйти из режима'),(76842,32,1689,'Экспортировать'),(76843,32,1691,'Экспортировать выбранное'),(76844,32,1687,'Экспортировать языки'),(76845,32,1688,'Вы можете экспортировать/сохранить любые языки для любых плагинов, установленных на вашем сайте'),(76846,32,1690,'Выберите содержимое, которое нужно экспортировать из всех языков и плагинов'),(76847,32,14102,'Смена аватара пользователя'),(76848,32,10581,'Редактировать профиль пользователя'),(76849,32,10580,'Регистрация нового пользователя'),(76850,32,10614,'Комментарии стены профиля'),(76851,32,19563,'Размер файла'),(76852,32,3861,'Финансы'),(76853,32,10835,'Найдено: <b>{$count}</b> пользователей'),(76854,32,3951,'Вы действительно хотите обновить <i>\'{$name}\'</i> плагин с версии <b>{$oldVersion}</b> на <b>{$newVersion}</b>?'),(76855,32,15784,'Вы действительно хотите обновить <i>\'{$name}\'</i> тему с версии <b>{$oldVersion}</b> на <b>{$newVersion}</b>?'),(76856,32,1606,'Вперед'),(76857,32,2217,'Просмотр пользователей'),(76858,32,19523,'SMTP'),(76859,32,19520,'Общие'),(76860,32,19537,'Мобильные настройки'),(76861,32,19522,'Настройки страниц'),(76862,32,2469,'Вопросы профилей'),(76863,32,19521,'Настройки контента'),(76864,32,3832,'Роль пользователя: {$role}'),(76865,32,19519,'Роли пользователей'),(76866,32,9873,'Настройки пользователя'),(76867,32,1686,'Импортировать выбранное'),(76868,32,1682,'Здесь вы можете подгрузить файл, содержащий язык для одного плагина ( <b>.XML</b> file) или несколько языков для плагинов ( <b>.ZIP</b> file).'),(76869,32,1699,'Неактивные языкм'),(76870,32,16375,'Разрешенные типы файлов. Введите один тип на строке, формат: xxx'),(76871,32,16376,'Разрешенные типы файлов.'),(76872,32,16377,'Максимальный размер подгружаемых файлов'),(76873,32,18993,'Лимит файла аватара'),(76874,32,10669,'Активируйте если не хотите разрешать пользователям добавлять rich media (фото или видео) в комментарии на сайте.'),(76875,32,10668,'Отключить rich media'),(76876,32,10609,'Максимальный размер подгружаемых фото'),(76877,32,10623,'Список доменов, с которых вы разрешаете добавлять видео и iframes. Эти сайты должны предоставлять код для вставки видео или верный контент, которому вы доверяете. Один домен в строку.'),(76878,32,10610,'Список разрешенных ресурсов'),(76879,32,10665,'Активируйте если не хотите разрешать пользователям писать HTML код в постах (блоги и форумы). Рекомендуется в целях безопасности.'),(76880,32,10664,'Отключить кастомный HTML'),(76881,32,10667,'Активируйте если не хотите разрешать пользователям добавлять rich media (фото или видео) в посты (блоги и форумы).'),(76882,32,10666,'Отключить rich media'),(76883,32,19737,'Лицензия на плагин / тему <a href=\"{$url}\"> {$name}</a> которые вы пытаетесь использовать недействителен.'),(76884,32,3285,'Пригласить новых участников'),(76885,32,3286,'Пригласить новых участников'),(76886,32,3289,'Пожалуйста введите максимум {$limit} электронных адресов'),(76887,32,3290,'Вам нужно ввести минимум один электронный адрес'),(76888,32,3288,'Пригласить'),(76889,32,3291,'Приглашения отправлены успешно'),(76890,32,3287,'Введите список электронных адресов (максимум 50, 1 адрес на строке)'),(76891,32,19612,'Запрос на лицензию'),(76892,32,19613,'Доступен апдейт платформы и рекомендуется обновить платформу перед обновлением других плагинов!'),(76893,32,2231,'Зарегистрированные'),(76894,32,9528,'Подгрузить аватар'),(76895,32,9534,'Позволять пользователям подгружать аватар при регистрации'),(76896,32,9530,'Активировать галочку \'Правила пользования\''),(76897,32,9532,'Пользователи должны согласиться с правилами пользования'),(76898,32,9531,'Регистрация'),(76899,32,10725,'Сделать поле \'Добавить фото\' обязательным'),(76900,32,10726,'Сделать поле \'Добавить фото\' обязательным на странице регистрации'),(76901,32,1623,'Язык'),(76902,32,2472,'Язык'),(76903,32,2876,'Значения изменены'),(76904,32,14139,'Язык активирован.'),(76905,32,14140,'Язык деактивирован.'),(76906,32,14138,'Язык удален.'),(76907,32,9913,'Язык не изменен, пожалуйста попробуйте снова'),(76908,32,9912,'Язык редактируется, пожалуйста подождите...'),(76909,32,7304,'Язык/пакет языка заимпортирован'),(76910,32,9911,'Активируйте если нужно направление текста \"справа налево\"'),(76911,32,9910,'RTL'),(76912,32,1698,'Языковой файл:'),(76913,32,1685,'Выбрать все языковые файлы для всех плагинов'),(76914,32,19614,'Назад'),(76915,32,19615,'Указать'),(76916,32,4005,'Назад к списку плагинов'),(76917,32,4006,'Обновить'),(76918,32,19616,'Перед тем как продолжить, пожалуйста введите лицензионный ключ для \"{$title}\"'),(76919,32,3082,'Настройки SMTP изменены'),(76920,32,3098,'Убедитесь, что вы проверили соединение SMTP перед тем как использовать SMTP для отправки писем. В противном случае письма с сайта перестанут отправляться.'),(76921,32,3089,'Безопасное соединение'),(76922,32,3090,'Тип безопасности соединения SMTP'),(76923,32,3097,'Выключить'),(76924,32,3099,'Проверить соединение'),(76925,32,3096,'Проверить соединение SMTP'),(76926,32,3084,'Включить'),(76927,32,3085,'Пожалуйста не включайте если не разбираетесь в настройках. Отправка писем на сайте может сломаться!'),(76928,32,3086,'Хост:Порт'),(76929,32,3088,'Пароль'),(76930,32,3087,'Имя пользователя'),(76931,32,19758,'Здравствуйте,<br /> Проверка лицензии для {$itemList} плагина/темы на вашем сайте установленном на {$siteURL} не сработала.<br /> Пожалуйста проверьте верен ли лицензионный ключ плагина/темы. Возможно придется ввести его вручную в административной панели. Нажмите, чтобы продолжить: {$siteUrl}/admin/plugins <br /> Вы можете найти все купленные лицензии в вашем аккаунте на Oxwall Store: http://www.oxwall.org/store/granted-list/plugin <br /> Также вы можете связаться с разработчиком для получения нового лицензионного ключа для плагинов/тем. <br /> После 3 последовательных безуспешных проверок плагины/темы могут быть деактивированы. <br /> Примечание: все платные плагины/темы, продаваемые на Oxwall Store подпадают под Коммерческую Лицензию Oxwall Store (http://www.oxwall.org/store/oscl), и требуют валидный ключ для функционирования.<br /> Спасибо,<br /> Команда Oxwall'),(76932,32,19759,'Здравствуйте, Проверка лицензии для {$itemList} плагина/темы на вашем сайте установленном на {$siteURL} не сработала. Пожалуйста проверьте верен ли лицензионный ключ плагина/темы. Возможно придется ввести его вручную в административной панели. Нажмите, чтобы продолжить: {$siteUrl}/admin/plugins Вы можете найти все купленные лицензии в вашем аккаунте на Oxwall Store: http://www.oxwall.org/store/granted-list/plugin Также вы можете связаться с разработчиком для получения нового лицензионного ключа для плагинов/тем. После 3 последовательных безуспешных проверок плагины/темы могут быть деактивированы. Примечание: все платные плагины/темы, продаваемые на Oxwall Store подпадают под Коммерческую Лицензию Oxwall Store  (http://www.oxwall.org/store/oscl), и требуют валидный ключ для функционирования. Спасибо, Команда  Oxwall'),(76933,32,19760,'Нелицензированные Oxwall плагин / тема'),(76934,32,3380,'<p>Данная опция удалит ваш сайт из публичного доступа и будет показывать сообщение о технических работах.</p>\n<b>Вы сможете войти как администратор: <a href=\"{$site_url}sign-in\">{$site_url}войти</a></b>'),(76935,32,3379,'Деактивировать сайт и включить страницу технического обслуживания'),(76936,32,19527,'Особенные страницы'),(76937,32,3808,'Страница технического обслуживания'),(76938,32,19528,'Страница технического обслуживания'),(76939,32,3383,'Статус технического обслуживания изменен'),(76940,32,3382,'HTML разрешен'),(76941,32,3381,'Сообщение о техническом обслуживании'),(76942,32,3374,'<h1 class=\"ow_stdmargin ow_ic_gear_wheel\">На сайте ведутся технические работы.</h1>\nИзвините, мы проводим технические работы. Мы скоро будем онлайн.'),(76943,32,1970,'Админ'),(76944,32,2130,'Админ'),(76945,32,2185,'Настройки изменены'),(76946,32,2387,'Активировать'),(76947,32,2830,'\"{$plugin}\" плагин активирован'),(76948,32,2383,'Активные плагины'),(76949,32,19533,'Подгрузить плагин'),(76950,32,12901,'Неверный архив плагина'),(76951,32,11631,'Архив не подгружен по FTP'),(76952,32,19741,'Добавить лицензию'),(76953,32,18994,'Размер файла превышает лимит сервера: {$limit} Mb.'),(76954,32,19532,'Плагины для установки'),(76955,32,4661,'Запрос на обновление платформы'),(76956,32,4662,'Вы действительно хотите обновить платформу с версии <b>{$oldVersion}</b> на <b>{$newVersion}</b>?{$info}'),(76957,32,2386,'Деактивировать'),(76958,32,2831,'\"{$plugin}\" плагин активирован'),(76959,32,3866,'Удалить'),(76960,32,3865,'Вы действительно хотите удалить `{$pluginName}` плагин?'),(76961,32,3902,'\"{$plugin}\" удален'),(76962,32,3869,'Введите детали доступа'),(76963,32,2384,'Неактивные плагины'),(76964,32,2389,'Установить'),(76965,32,14642,'Предоставлен неверный ключ кода - `{$key}`'),(76966,32,2396,'\"{$plugin}\" успешно установлен'),(76967,32,4785,'Программный код плагина \'<i>{$name}</i>\' обновлен. Нужно обновить базу данных плагина.'),(76968,32,3864,'Плагин не найден'),(76969,32,2385,'Настройки'),(76970,32,2388,'Удалить'),(76971,32,4087,'Вы действительно хотите деинсталировать плагин?'),(76972,32,4595,'Ошибка деактивации плагина'),(76973,32,4145,'Запрос на деактивацию плагина'),(76974,32,3867,'\"{$plugin}\" успешно деинсталлирован'),(76975,32,3943,'Изменить'),(76976,32,12897,'Плагин не обновился'),(76977,32,3950,'Запрос на апдейт плагина'),(76978,32,4939,'Плагин успешно обновлен'),(76979,32,12896,'Плагин обновлен'),(76980,32,12899,'Файлы не извлечены из архива плагина'),(76981,32,16378,'Плагин не добавлен. Ошибка ключа плагина.'),(76982,32,18995,'Неверный архив темы'),(76983,32,15785,'Тема не найдена'),(76984,32,15786,'Тема не обновлена'),(76985,32,15787,'Запрос на обновление темы'),(76986,32,15788,'Тема успешно обновлена'),(76987,32,15789,'Тема актуальна'),(76988,32,12875,'Пожалуйста, подгрузите верный архив темы'),(76989,32,19580,'Отметить как популярное'),(76990,32,2613,'Массовая рассылка'),(76991,32,2573,'Текст письма'),(76992,32,2579,'Написать письмо'),(76993,32,2571,'HTML'),(76994,32,2575,'Формат письма'),(76995,32,2572,'Текст'),(76996,32,5576,'В следующий раз вы сможете отправить рассылку не ранее, чем через <b>{$hours}</b> часов.'),(76997,32,2620,'Вы можете использовать следующие переменные:'),(76998,32,2570,'Игнорировать опцию отказа от подписки'),(76999,32,2578,'Предварительный просмотр'),(77000,32,2582,'Отправлено {$count} писем'),(77001,32,2580,'Начать рассылку'),(77002,32,2574,'Тема'),(77003,32,2577,'<b>Всего:</b> <i>{$count}</i>активных участников'),(77004,32,2584,'<br />\n<br />\nЧтобы отписаться от рассылки, пожалуйста <a href=\"{$link}\" >нажмите сюда</a>'),(77005,32,2585,'Чтобы отписаться от рассылки, пожалуйста нажмите сюда: {$link}'),(77006,32,11770,'Роли пользователей'),(77007,32,2576,'Выбор пользователя'),(77008,32,2162,'Основные'),(77009,32,3083,'SMTP'),(77010,32,9874,'Настройки страницы'),(77011,32,3812,'Недавно активные'),(77012,32,3813,'Заблокированные'),(77013,32,3815,'Неактивные'),(77014,32,3814,'Неподтвержденные'),(77015,32,10601,'Настройки ввода пользователя'),(77016,32,2196,'Роли пользователей'),(77017,32,10685,'Настройки пользователя'),(77018,32,10619,'Вставка контента'),(77019,32,10618,'Общие'),(77020,32,1621,'Недостающие ключи'),(77021,32,1616,'Недостающий текст'),(77022,32,16379,'&nbsp;'),(77023,32,16380,'Отключить мобильную версию сайта'),(77024,32,19538,'Общее'),(77025,32,1713,'Извините, ключ уже существует'),(77026,32,2468,'Клонированный'),(77027,32,14112,'Язык не склонирован'),(77028,32,14111,'Неверный ISO тег.'),(77029,32,1619,'Минимум один язык должен быть активным.'),(77030,32,2676,'Мой профиль'),(77031,32,4520,'Обновления плагина: <b>{$count}</b>. <a href=\"{$link}\">Посмотреть</a>'),(77032,32,4519,'Обновление плагина. <a href=\"{$link}\">Обновить </a>'),(77033,32,16300,'Доступные обновления темы: <b>{$count}</b>. <a href=\"{$link}\">Просмотреть</a>'),(77034,32,19581,'Некоторые фото не были добавлены из-за большого размера или неверного формата.'),(77035,32,19552,'Недостаточно параметров'),(77036,32,19566,'Нет едигиц'),(77037,32,19553,'Фото не выбрано'),(77038,32,19582,'Некоторые фото не были добавлены из-за большого размера или неверного формата.'),(77039,32,2218,'Нет пользователей'),(77040,32,1710,'Нет значений'),(77041,32,19583,'&nbsp;'),(77042,32,9403,'или'),(77043,32,1609,'Оригинальное значение: {$label} ({$tag})'),(77044,32,2739,'Название меню'),(77045,32,2740,'Содержимое страницы'),(77046,32,9389,'Нижнее меню'),(77047,32,9392,'Это страницы, которые существуют, но не показываются на сайте. <span class=\"ow_highlight\">Перетащите</span> ссылки, которые вы хотите скрыть.'),(77048,32,9390,'Скрытые страницы'),(77049,32,9386,'Вы можете просмотреть существующие страницы и ссылки на сайте. Это ваши кастомные страницы и страницы активных плагинов.<span class=\"ow_highlight\">Перетащите</span> ссылки через меню для смены положения.'),(77050,32,9396,'Ссылка'),(77051,32,9397,'видимый для всех'),(77052,32,9399,'видимый только для гостей'),(77053,32,9402,'Легенда'),(77054,32,9400,'видимый только для участников'),(77055,32,9387,'Главное меню'),(77056,32,2727,'Название меню'),(77057,32,2728,'URL'),(77058,32,2730,'Открыть в новом окне'),(77059,32,2731,'Показывать для'),(77060,32,2732,'Название меню'),(77061,32,2736,'Содержимое страницы'),(77062,32,2733,'Название страницы'),(77063,32,2734,'URL'),(77064,32,2735,'Показывать для'),(77065,32,2737,'Гости'),(77066,32,2738,'Зарегистрированные пользователи'),(77067,32,2505,'или'),(77068,32,18766,'Поддерживает HTML'),(77069,32,2511,'Дополнительные мета теги для шапки страницы.'),(77070,32,19526,'Управлять страницами'),(77071,32,2741,'Адрес страницы'),(77072,32,1923,'Администрация {$site_name}'),(77073,32,1922,'Административная страница {$site_name}'),(77074,32,1617,'Перетащить'),(77075,32,1618,'Порядок расположения языка на сайте. Первый язык будет выставлен по умолчанию на сайте.'),(77076,32,10676,'Пожалуйста, предоставьте корректную картинку в формате ico'),(77077,32,9882,'Код, добавленный в HTML документ перед закрывающимся &lt;/BODY&gt; тегом (кастомный Javascript).'),(77078,32,9881,'Кастомный код'),(77079,32,9884,'Иконка сайта в формате .ico (16на16px)'),(77080,32,9883,'Иконка сайта'),(77081,32,9880,'Код, добавленный в заголовок HTML документа (кастомный Javascript/CSS или META информация).'),(77082,32,9879,'Код кастомного заголовка'),(77083,32,11579,'Нет иконки сайта. Проверьте ее, чтобы активировать.'),(77084,32,19535,'Добавить новый'),(77085,32,19534,'Доступные плагины'),(77086,32,4767,'Финансы'),(77087,32,19531,'Установленные плагины'),(77088,32,3868,'Детали доступа по FTP'),(77089,32,19536,'Меню мобильной версии'),(77090,32,19584,'На проверке...'),(77091,32,19557,'Период'),(77092,32,19503,'Приватность'),(77093,32,2588,'Название роли'),(77094,32,2569,'Добавить'),(77095,32,2604,'Вы уверены?'),(77096,32,2602,'Выбрать все | Выбранные:'),(77097,32,2601,'по умолчанию'),(77098,32,2603,'Удалить'),(77099,32,2583,'Редактировать роль'),(77100,32,2568,'Редактировать'),(77101,32,2790,'Удалите права для \"администратора\" у модератора перед удалением модератора'),(77102,32,2786,'Модератор добавлен'),(77103,32,2788,'{$username} уже является модератором'),(77104,32,2789,'Пользователь удален из списка модераторов'),(77105,32,2785,'Пользователь не найден'),(77106,32,2605,'Откройте <a href=\"{$url}\">страницу привилегий</a> для выбора функций, доступных для определенных ролей пользователей.'),(77107,32,2834,'Откройте <a href=\"{$url}\">страницу управления ролями</a> для создания/редактирования/удаления ролей пользователей.'),(77108,32,2805,'Если нет <b>\'Да\'</b> будет превалировать над всеми настройками лимитов'),(77109,32,1950,'Глобальные настройки приватности'),(77110,32,2796,'Только администратор'),(77111,32,2795,'Все пользователи'),(77112,32,2792,'Все'),(77113,32,2793,'Только по приглашению'),(77114,32,2800,'Гости могут просматривать сайт'),(77115,32,2798,'Обязательная проверка участников'),(77116,32,2799,'Модераторы будут вручную проверять всех участников <b>перед</b> тем как они смогут пользоваться сайтом'),(77117,32,2802,'Нет'),(77118,32,19541,'Сохранить'),(77119,32,3348,'Обязательная проверка пользователей'),(77120,32,2794,'Кто может приглашать:'),(77121,32,2791,'Кто может регистрироваться:'),(77122,32,2804,'С паролем:'),(77123,32,2801,'Да'),(77124,32,1949,'Модераторы'),(77125,32,2809,'Добавить нового модератора'),(77126,32,2807,'Пользователь'),(77127,32,2812,'Назначить модератором'),(77128,32,2810,'Имя пользователя'),(77129,32,2600,'# пользователей'),(77130,32,2783,'Приватность и привилегии'),(77131,32,2595,'Пожалуйста выберите минимум одну роль'),(77132,32,1886,'Роли пользователей'),(77133,32,2594,'Роль (и) добавлена (ы)'),(77134,32,9129,'Действия'),(77135,32,2589,'Новая роль добавлена'),(77136,32,8999,'Роль изменена'),(77137,32,2784,'Привилегии изменены успешно'),(77138,32,2599,'Роль пользователя'),(77139,32,4051,'Пожалуйста, введите пароль'),(77140,32,4078,'Пожалуйста, введите верный пароль (минимум 3 символа)'),(77141,32,19542,'Настройки сохранены'),(77142,32,19585,'{$count} фото подгружены'),(77143,32,19586,'Ошибка подгрузки фото'),(77144,32,19587,'Пожалуйста, подождите пока подгрузятся предыдущие фото'),(77145,32,4832,'Плагин'),(77146,32,3918,'Подгрузить'),(77147,32,3878,'Соединение прервано, пожалуйста, проверьте хост и порт'),(77148,32,3987,'Неверные детали доступа по FTP'),(77149,32,6376,'Неверные детали доступа по FTP! Пользователь не имеет прав на перезапись файлов.'),(77150,32,3887,'Хост'),(77151,32,3871,'Войти'),(77152,32,3872,'Пароль'),(77153,32,3875,'Порт'),(77154,32,3873,'Введите'),(77155,32,4019,'Пожалуйста, введите лицензионный ключ'),(77156,32,19744,'Проверка лицензионного ключа'),(77157,32,3874,'Для завершения операции нужны детали доступа по FTP'),(77158,32,6890,'У вас нет доступных плагинов'),(77159,32,4786,'Обновить'),(77160,32,4146,'Вы действительно хотите деактивировать плагин  \'{$name}\'?'),(77161,32,12895,'Неверный или пустой архив пакета обновления'),(77162,32,3953,'Нет'),(77163,32,12898,'Плагин не найден'),(77164,32,3952,'Да'),(77165,32,16382,'Вы не можете изменить значения для этого вопроса'),(77166,32,14643,'Вы не можете удалить тип аккаунта, так как к нему привязаны эксклюзивные вопросы.'),(77167,32,2473,'Показать вопросы для типа аккаунта'),(77168,32,2540,'Тип аккаунта добавлен'),(77169,32,2314,'Тип аккаунта удален'),(77170,32,16383,'Тип аккаунта изменен'),(77171,32,18689,'Добавить тип аккаунта'),(77172,32,16384,'Добавить тип аккаунта'),(77173,32,16385,'Изменить тип аккаунта'),(77174,32,2536,'Добавить новый тип аккаунта'),(77175,32,2544,'Добавить новый вопрос'),(77176,32,2559,'Добавить'),(77177,32,16386,'Добавить новый вопрос'),(77178,32,16387,'Добавить вопрос'),(77179,32,2501,'Вопрос добавлен'),(77180,32,2533,'Добавить {$count} значений вопросов'),(77181,32,2517,'Добавить новые значения для вопроса'),(77182,32,16388,'Добавить секцию'),(77183,32,2523,'Вы можете добавить до 31 значения'),(77184,32,2522,'Добавить значения (одно значение в строке)'),(77185,32,2525,'Добавить'),(77186,32,16389,'Добавить новые значения'),(77187,32,2516,'Перетащите для изменения положения'),(77188,32,2515,'Существующие значения'),(77189,32,2480,'Тип ответа'),(77190,32,14644,'Вы не можете удалить тип аккаунта, выставленный по умолчанию.'),(77191,32,18767,'Вы не можете удалить этот тип аккаунта. Минимум 1 тип аккаунта должен быть на сайте.'),(77192,32,2487,'Количество колонок'),(77193,32,4868,'Годы'),(77194,32,16390,'Вы действительно хотите удалить этот тип аккаунта?\n\nПомните: Пользователи с этим аккаунтом:\n1) потеряют информацию профиля, привязанную к этому типу аккаунта; \n2) не смогут пользоваться сайтом до тех пор пока не войдут на сайт, выберут другой тип аккаунта и введут необходимую информацию.'),(77195,32,2257,'Вы действительно хотите удалить этот вопрос?\n\nВНИМАНИЕ: ОТВЕТЫ НА ЭТОТ ВОПРОС БУДУТ УДАЛЕНЫ У ВСЕХ ПОЛЬЗОВАТЕЛЕЙ.'),(77196,32,15790,'Вы действительно хотите удалить этот вопрос?\n\nВНИМАНИЕ: ВСЕ ОТВЕТЫ НА ЭТОТ ВОПРОС БУДУТ НАВСЕГДА УДАЛЕНЫ У ПОЛЬЗОВАТЕЛЕЙ.\n\nУ этого вопроса есть зависимые вопросы {$questions}. ОНИ БУДУТ ТАКЖЕ УДАЛЕНЫ СО ВСЕЙ ИНФОРМАЦИЕЙ ПРОФИЛЯ.'),(77197,32,2549,'Вы действительно хотите удалить секцию?'),(77198,32,18996,'Вы действительно хотите удалить секцию? Все вопросы пользователей данной секции переместятся в секцию \"{$sectionName}\"'),(77199,32,9297,'Редактровать типы'),(77200,32,2395,'Редактировать название вопроса'),(77201,32,16391,'Редактировать тип аккаунта'),(77202,32,2506,'Вы уверены?'),(77203,32,16392,'Редактировать вопрос профиля'),(77204,32,2513,'Описание вопроса'),(77205,32,2393,'Редактировать описание вопроса'),(77206,32,2392,'Редактировать название вопроса'),(77207,32,2391,'Редактировать значение вопроса'),(77208,32,2390,'Редактировать название секции'),(77209,32,6045,'<b>Мы не рекоммендуем делать поле имя пользователя редактируемым, потому что смена имени приведет к смене URL пользователя.</b>'),(77210,32,2531,'Нет значения'),(77211,32,2478,'Выберите тип аккаунта для вопроса <i>только</i> если он не подходит для других вопросов. </b> Например: <b><i>Пол,</i></b> который соотвествует <b><i>Отдельному профилю</i></b> но не подходит<b><i>Паре</i></b>.'),(77212,32,2477,'Для типа аккаунта'),(77213,32,2543,'<span class=\"ow_highlight\">Перетащите</span> вопросы и секции для изменения их порядка.'),(77214,32,2542,'Вы можете изменить информацию пользователей о себе. Вы можете изменять, передвигать и добавлять новые вопросы профилей.'),(77215,32,19746,'Добавить неограниченное количество значений. Значения полей регулярно сохраняются, что может негативно сказываться на скорости поиска профилей.'),(77216,32,19747,'Возможные значения'),(77217,32,16393,'Этот вопрос привязан к <a href=\"{$url}\" class=\"parent_question_link\" parentId=\"{$parentId}\">{$label}</a>'),(77218,32,2474,'Новая секция'),(77219,32,2547,'Новая секция'),(77220,32,2493,'Пользователи не должны изменять этот вопрос'),(77221,32,2492,'На <b>странице редактирования профиля</b>'),(77222,32,2496,'Вопрос не должен использоваться для поиска'),(77223,32,2497,'На <b>странице поиска</b>'),(77224,32,2491,'Вопрос не должен показываться на странице регистрации'),(77225,32,2490,'На <b>странице регистрации</b>'),(77226,32,2495,'Вопрос не должен показываться на странице просмотра профиля'),(77227,32,2494,'На <b>странице просмотра профиля</b>'),(77228,32,16394,'Вы можете изменить информацию, добавленную пользователями о себе.<br>\nВы можете изменить, передвинуть, и добавить новые вопросы профилей.'),(77229,32,2486,'Вы можете добавить до 31 значения'),(77230,32,16395,'Возможные значения'),(77231,32,2545,'Секции вопросов профилей'),(77232,32,2476,'Описание'),(77233,32,2529,'Вопрос не существует'),(77234,32,2475,'Вопросы'),(77235,32,2479,'Секция'),(77236,32,2256,'Вопрос удален'),(77237,32,2519,'Вопрос не изменен'),(77238,32,2518,'Вопрос не изменен'),(77239,32,2489,'Форма не будет отправлена если пользователь не введет верный ответ на вопрос'),(77240,32,2488,'Обязательный'),(77241,32,16396,'Сохранить'),(77242,32,2498,'Сохранить и добавить'),(77243,32,2546,'Если у вас много вопросов профилей - вы можете разделить их по секциям. Можно добавить следующие секции \"<b><i>Основная информация</i></b>\", \"<b><i>Контакты</i></b>\", \"<b><i>Интересы</i></b>\", и т. д.'),(77244,32,2541,'Секция добавлена'),(77245,32,2271,'Секция удалена'),(77246,32,2504,'Вопрос изменен'),(77247,32,9293,'{$count} значения'),(77248,32,19748,'Значение не должно быть пустым'),(77249,32,9404,'Тип аккаунта'),(77250,32,9405,'Эксклюзивные вопросы'),(77251,32,9393,'Редактровать'),(77252,32,9375,'Вопрос'),(77253,32,9388,'Требовать'),(77254,32,9398,'Поиск'),(77255,32,9391,'Зарегистрироваться'),(77256,32,9377,'Тип'),(77257,32,9382,'Значения'),(77258,32,9395,'Просмотреть'),(77259,32,16397,'Типы аккаунтов'),(77260,32,16398,'Свойства'),(77261,32,16399,'Возможные значения'),(77262,32,19543,'Настройки изменены'),(77263,32,19588,'(Всего {$count})'),(77264,32,19589,'(В общем {$count}. Ваш {$score})'),(77265,32,19590,'Удалить из популярных'),(77266,32,4773,'Запрещенные имена'),(77267,32,4774,'Добавить запрещенное имя'),(77268,32,4776,'Добавить'),(77269,32,4777,'Список запрещенных имен'),(77270,32,4783,'Имя добавлено успешно'),(77271,32,13912,'Имя пользователя уже в списке запрещенных'),(77272,32,13911,'Имя пользователя удалено из списка запрещенных'),(77273,32,4775,'Имя пользователя'),(77274,32,1920,'Сохранить'),(77275,32,1613,'Сохранить эту страницу'),(77276,32,1608,'Поиск'),(77277,32,10836,'Поиск по'),(77278,32,3735,'Поиск по имени'),(77279,32,1709,'Нет значений с <i><b>{$keyword}</i></b>ключевым словом'),(77280,32,1607,'Результаты поиска для ключевого слова: <i><b>{$keyword}</i></b>'),(77281,32,1614,'Секция'),(77282,32,1684,'Выберите содержимое, которое нужно импортировать из данного пакета языка.'),(77283,32,19554,'Выбрать режим'),(77284,32,4129,'Отправить письмо для подтвеждения электронного адреса'),(77285,32,11711,'Значение неверно или превышает лимит сервера.'),(77286,32,9877,'Ошибка при сохранении данных, пожалуйста, попробуйте еще раз'),(77287,32,9878,'Настройки сохранены'),(77288,32,18997,'Пожалуйста, укажите причину блокировки пользователя.'),(77289,32,1692,'Показать:'),(77290,32,2075,'Личный кабинет'),(77291,32,1937,'Внешний вид'),(77292,32,11312,'Основное'),(77293,32,2077,'Обзор'),(77294,32,19504,'Настройки контента'),(77295,32,2038,'CSS'),(77296,32,4770,'Финансы'),(77297,32,2562,'Язык'),(77298,32,19505,'Общее'),(77299,32,2037,'Графика'),(77300,32,3371,'Страница технического обслуживания'),(77301,32,2143,'Основные настройки'),(77302,32,19506,'Управление страницами'),(77303,32,19515,'Управление страницами'),(77304,32,19507,'Натсройки страниц'),(77305,32,3834,'Глобальная приватность'),(77306,32,2051,'Приватность и привилегии'),(77307,32,3837,'Модераторы'),(77308,32,9568,'Роли'),(77309,32,3836,'Роли пользователей'),(77310,32,2355,'Блоги'),(77311,32,3011,'Импорт контактов'),(77312,32,3798,'Форум'),(77313,32,2356,'Ссылки'),(77314,32,2822,'Массовая рассылка'),(77315,32,2013,'Фото'),(77316,32,2014,'Видео'),(77317,32,2044,'Вопросы профилей'),(77318,32,4772,'Запрещенные имена'),(77319,32,3835,'Роли пользователей'),(77320,32,2039,'Настройки темы'),(77321,32,1887,'Язык'),(77322,32,19508,'SMTP'),(77323,32,19509,'Особые страницы'),(77324,32,3261,'Экран-заставка'),(77325,32,19510,'Темы'),(77326,32,19511,'Кастомизировать'),(77327,32,1897,'Выбрать тему'),(77328,32,1942,'Редактировать тему'),(77329,32,2142,'Просмотр пользователей'),(77330,32,9133,'Роли пользователей'),(77331,32,2078,'Личный кабинет пользователя'),(77332,32,2079,'Профиль пользователя'),(77333,32,9872,'Настройки пользователя'),(77334,32,19512,'Главная'),(77335,32,16120,'Мобильная версия'),(77336,32,19514,'Страницы'),(77337,32,11314,'Просмотреть страницы/ссылки'),(77338,32,1939,'Плагины'),(77339,32,3860,'Добавить'),(77340,32,3859,'Доступные плагины'),(77341,32,3858,'Установленные плагины'),(77342,32,2081,'Управление плагинами'),(77343,32,3807,'Приватность и ограничения'),(77344,32,11311,'Настройки вопросов профиля'),(77345,32,1935,'Настройки'),(77346,32,12869,'Добавить тему'),(77347,32,11313,'CSS темы'),(77348,32,1938,'Пользователи'),(77349,32,3349,'или войти через'),(77350,32,2172,'Описание'),(77351,32,2173,'Пожалуйста напишите пару предложений, описывающих ваш сайт.'),(77352,32,2880,'Электронный адрес сайта'),(77353,32,2881,'Электронный адрес, с которого пользователи сайта будут получать уведомления и массовую рассылку.'),(77354,32,4131,'Вам нужно подтвердить электронный адрес. Мы отправили письмо для подтвеждения электронного адреса, но вы возможно захотите отправить его снова.'),(77355,32,2168,'Установка сайта'),(77356,32,19544,'Пароль сайта'),(77357,32,19618,'{$site_name}: установка нового пароля'),(77358,32,19619,'Новый пароль установлен для {$site_name}<br> Ваш новый пароль <b>{$password}</b><br>'),(77359,32,19620,'Новый пароль установлен для {$site_name} Ваш новый пароль {$password}'),(77360,32,2177,'\"Вчера, 5:31\"вместо\" 1 июня \'09, 5:31\"'),(77361,32,19602,'Период по умолчанию'),(77362,32,19607,'Транзакции'),(77363,32,19608,'Сумма'),(77364,32,19600,'Последние 30 дней'),(77365,32,19599,'Последние 7 дней'),(77366,32,19601,'Последний год'),(77367,32,19597,'Сегодня'),(77368,32,19605,'Логины'),(77369,32,19604,'Ркгистрации'),(77370,32,19598,'Вчера'),(77371,32,2170,'Слоган'),(77372,32,2171,'Короткое, привлекательное описание вашего сайта в одну строку.'),(77373,32,2169,'Имя сайта'),(77374,32,19562,'Размер'),(77375,32,19591,'Размер \"{$name}\" фото не может превышать <b>{$size}</b> Mb'),(77376,32,19592,'Время слайд шоу:&nbsp;'),(77377,32,19501,'Соединение SMTP не установлено'),(77378,32,3100,'Проверка SMTP прошла успешно. Вы можете отправлять письма используя SMTP.'),(77379,32,9472,'Версия платформы <b>{$version}</b> (билд{$build})'),(77380,32,3248,'Название кнопки Войти'),(77381,32,3249,'Кастомное название кнопки для входа на сайт'),(77382,32,3253,'Войти'),(77383,32,3284,'Используя экран-заставку вы можете напрямую спросить участников согласны ли они войти на сайт.'),(77384,32,3283,'Включить'),(77385,32,3247,'Содержимое экрана-заставки. HTML разрешен'),(77386,32,3246,'Текст/HTML'),(77387,32,3252,'Входя на сайт вы подтверждаете, что вам минимум 18 лет.'),(77388,32,3260,'Покинуть'),(77389,32,3251,'Куда посетители должны быть направлены если выбирают покинуть сайт'),(77390,32,3250,'URL переадресации'),(77391,32,19545,'Экран-заставка'),(77392,32,19546,'Настройки экрана-заставки'),(77393,32,19529,'Экран-заставка'),(77394,32,19547,'Настройки обновлены'),(77395,32,19606,'Сумма для выбранного периода'),(77396,32,19611,'Просматривать пользователей'),(77397,32,19610,'История'),(77398,32,19593,'Редактировать фото'),(77399,32,12870,'Добавить новую тему'),(77400,32,12871,'Добавить новую тему'),(77401,32,18768,'Темы личного кабинета администрации'),(77402,32,16400,'Вы не можете удалить активную тему'),(77403,32,16401,'Вы не можете удалить тему по умолчанию'),(77404,32,1890,'Активировать'),(77405,32,16402,'Удалить'),(77406,32,16403,'Вы действительно хотите удалить `#theme#` тему?'),(77407,32,1904,'Доступные темы'),(77408,32,19524,'Темы'),(77409,32,16404,'Тема удалена'),(77410,32,12872,'Тема добавлена успешно'),(77411,32,15791,'Пожалуйста, введите верный лицензионный ключ'),(77412,32,2747,'Предварительный просмотр изображения'),(77413,32,19525,'Кастомизировать'),(77414,32,2743,'Сбросить'),(77415,32,12873,'Тема не подгружена, папка темы `{$dir}` уже существует'),(77416,32,12874,'Невозможно разархивировать тему'),(77417,32,3852,'Тема изменена'),(77418,32,1943,'Редактировать CSS'),(77419,32,1944,'Сохранить'),(77420,32,1953,'CSS стили (только для чтения)'),(77421,32,1954,'Изображение удалено'),(77422,32,2680,'Вы действительно хотите удалить изображение?'),(77423,32,1961,'Список изображений'),(77424,32,1958,'Удалить'),(77425,32,1960,'Предварительный просмотр'),(77426,32,1959,'URL'),(77427,32,1955,'Изображение не удалено'),(77428,32,1957,'Подгрузить'),(77429,32,1956,'Изображение добавлено'),(77430,32,1962,'Подгрузить изображение'),(77431,32,1967,'Автор'),(77432,32,1966,'URL автора'),(77433,32,9381,'Информация о теме'),(77434,32,1976,'Совместимость'),(77435,32,1978,'Версия'),(77436,32,1965,'Кастомизация темы'),(77437,32,1891,'Сохранить'),(77438,32,1893,'У этой темы нет настроек кастомизации.'),(77439,32,2677,'Вы действительно хотите сбросить свои настройки?'),(77440,32,15792,'Неверный или пустой архив пакета обновления'),(77441,32,15793,'Обновление темы временно недоступно'),(77442,32,15794,'Тема не найдена'),(77443,32,2175,'Временная зона'),(77444,32,2174,'Настройки времени'),(77445,32,19559,'Заголовок'),(77446,32,1702,'Добавить новый текст'),(77447,32,6678,'Всего: <b>{$count}</b> пользователей'),(77448,32,1610,'Перевод: {$label} ({$tag})'),(77449,32,19594,'Неверный тип файла: {$name}'),(77450,32,19551,'Неопределенное действие'),(77451,32,1921,'Изменение успешно'),(77452,32,19564,'Дата подгрузки'),(77453,32,19560,'URL'),(77454,32,2232,'Пользователь'),(77455,32,2627,'Настройки аватара'),(77456,32,2235,'{$count} пользователей удалено'),(77457,32,2626,'Настройки отображения'),(77458,32,11722,'Выбранный пользователь(и) отмечены неподтвержденными'),(77459,32,6308,'Электронные адреса выбранных пользователей подтверждены'),(77460,32,13334,'Выбранный(е) пользователь(и) активированы'),(77461,32,13333,'Выбранный(е) пользователь(и) отклонены'),(77462,32,2659,'Профиль заблокирован'),(77463,32,2995,'Выбранные пользователи активированы'),(77464,32,16405,'Приложения'),(77465,32,10605,'Комментарии контента'),(77466,32,10607,'Настройки Rich media'),(77467,32,10602,'Контент текста'),(77468,32,9286,'Ограничения роли пользователя'),(77469,32,3823,'Результат поиска для: \"<b>{$for}</b>\"'),(77470,32,6366,'Аватар по умолчанию'),(77471,32,6473,'Изменить, чтобы заменить аватар темы, выставленный по умолчанию'),(77472,32,14382,'Размер аватара'),(77473,32,2634,'Показать на всех списках. Вам также нужно изменить CSS вашей темы.'),(77474,32,13280,'Максимальный рекомендованный размер аватара {$max}px'),(77475,32,2629,'Размер вырезанного <br /> аватара'),(77476,32,14383,'Размер большого аватара'),(77477,32,2635,'Показать на странице профиля'),(77478,32,13279,'Максимальный рекомендованный размер большого аватара {$max}px'),(77479,32,2630,'Размер большого вырезанного <br /> аватара'),(77480,32,5126,'Подтвердить электронный адрес'),(77481,32,5124,'Если включена, пользователям придется подтверждать электронные адреса перед тем как заходить на сайт.'),(77482,32,2632,'Показать имя профиля как:'),(77483,32,2633,'Обычно вам придется выбирать между <b><i>Именем пользователя</i></b> (традиционным) и настоящим именем (как на Facebook). Эта настройка применится для всего сайта.'),(77484,32,5125,'Настройки почты'),(77485,32,19516,'Приватность'),(77486,32,19517,'Вопросы профилей'),(77487,32,2628,'Настройки юзера изменены'),(77488,32,3816,'Статус'),(77489,32,3817,'заблокированные'),(77490,32,3819,'неактивные'),(77491,32,3818,'неподтвержденные'),(77492,32,9567,'Использовать 24 часовой формат времени'),(77493,32,2176,'Использовать относительную дату/время'),(77494,32,4128,'Подтвердить'),(77495,32,7828,'Скрипт запланированных задач Oxwall неактивен. Пожалуйста, добавьте его к списку запланированных задач({$path}).'),(79923,1,19937,'{$pluginTitle} settings'),(79924,1,19938,'Validate license'),(79925,1,19939,'Skadate license key validated successfully'),(77497,32,19530,'Профиль пользователей'),(77498,32,19595,'Статистика контента'),(77499,32,19596,'Контент группы по умолчанию'),(77500,32,19609,'Статистика финансов'),(77501,32,19603,'Статистика пользователей'),(77502,32,1603,'Вы редактируете'),(77503,32,18749,'Контакты: Отделы'),(77504,32,18750,'Контакты: Отделы'),(77505,32,18751,'Пожалуйста, <a href=\'{$url}\'>создайте</a> минимум 1 отдел для страницы Контакты.'),(77506,32,18752,'Контакты'),(77507,32,18753,'Добавить новый'),(77508,32,18754,'Изображение с картинки'),(77509,32,18755,'Ваш электронный адрес'),(77510,32,18756,'Сообщение'),(77511,32,18757,'Тема:'),(77512,32,18758,'Отправить'),(77513,32,18759,'Кому'),(77514,32,18760,'Контакты'),(77515,32,18761,'Контакты'),(77516,32,18762,'письмо'),(77517,32,18763,'название'),(77518,32,18764,'Ваше сообщение отправлено. {$dept} скоро ответит. Спасибо.'),(77519,32,18765,'Данный отдел отсутствует'),(77520,32,18446,'Добавить профиль в VIP список'),(77521,32,15968,'VIP список'),(77522,32,15969,'Хотите попасть в VIP список?'),(77523,32,15970,'Добавить в VIP список'),(77524,32,18447,'VIP список'),(77525,32,15971,'Количество пользователей в в VIP списке'),(77526,32,15972,'<b>VIP список</b> требует <a href=\"http://www.oxwall.org/store/item/53\" target=\"_blank\">плагин Кредиты</a>'),(77527,32,15973,'Попасть в VIP список'),(77528,32,15974,'Удалить'),(77529,32,15975,'Хотите попасть в VIP список?<br/><br/>Услуга стоит {$amount} кредитов.'),(77530,32,15976,'Вы действительно хотите удалить себя из VIP списка? <br/>Это бесплатно.'),(77531,32,18884,'Хотите попасть в VIP список?'),(77532,32,15977,'Купить'),(77533,32,15978,'Добавить в VIP список'),(77534,32,19641,'Добавить себя в VIP список'),(77535,32,15979,'Дни в VIP списке'),(77536,32,15980,'Станьте первым в VIP списке'),(77537,32,15981,'Удалить'),(77538,32,19642,'Удалить себя из VIP списка'),(77539,32,15982,'Сохранить'),(77540,32,15983,'Удалить себя из VIP списка'),(77541,32,15984,'Настройки'),(77542,32,15985,'Настройки сохранены'),(77543,32,15986,'Да'),(77544,32,15987,'Вы уже в VIP списке.\n<br /><br/>\nЕсли вы хотите удалить свой профиль из VIP списка, нажмите на кнопку.'),(77545,32,15988,'Добавить свой профиль в VIP список'),(77546,32,15989,'VIP список'),(77547,32,15990,'Вы уже в VIP списке!'),(77548,32,15991,'Вы удалили себя из VIP списка.'),(77549,32,18885,'Да'),(77550,32,2216,'Описание изменено'),(77551,32,2215,'Обо мне'),(77552,32,2214,'Добавьте информацию о себе'),(77553,32,16121,'Принять'),(77554,32,3821,'Сейчас онлайн'),(77555,32,3820,'Активность:'),(77556,32,2884,'Последняя активность'),(77557,32,9291,'Добавить комментарии'),(77558,32,3081,'Вы действительно хотите удалить пользователя?'),(77559,32,13413,'Изменить изображение'),(77560,32,13414,'Выбрать изображение'),(77561,32,6406,'Пользователи'),(77562,32,1745,'Все'),(77563,32,1773,'Разрешить'),(77564,32,3346,'Активировать пользователей'),(77565,32,13328,'Активировать'),(77566,32,1746,'Архив'),(77567,32,1747,'Вы уверены?'),(77568,32,10926,'Добавить видео'),(77569,32,10927,'приложение'),(77570,32,10925,'Прикрепить фото'),(77571,32,10923,'Добавить'),(77572,32,10924,'Прикрепить видео'),(77573,32,2105,'Написать на стене комментариев'),(77574,32,2106,'Автор может удалить комментарии на стене'),(77575,32,4044,'Поиск пользователей'),(77576,32,2368,'Добавить блог пост'),(77577,32,2208,'Добавить комментарии'),(77578,32,2827,'Владелец контента может удалять комментарии'),(77579,32,2370,'Просмотреть'),(77580,32,7918,'Комментировать событие'),(77581,32,7916,'Добавить событие'),(77582,32,7917,'Просмотреть событие'),(77583,32,8989,'Создать/Редактировать тему'),(77584,32,11701,'Передвинуть темы в скрытые секции'),(77585,32,8990,'Подписаться на темы форума'),(77586,32,8988,'Просмотреть тему'),(77587,32,2904,'Добавить друга'),(77588,32,10688,'Написать комментарий на стене'),(77589,32,10689,'Создать/Редактировать тему'),(77590,32,10690,'Создать группы'),(77591,32,10691,'Автор может удалить комментарии на стене'),(77592,32,6157,'Добавить ссылку'),(77593,32,6156,'Оставить комментарий на стене'),(77594,32,6158,'Владелец контента может удалять комментарии'),(77595,32,6159,'Просмотреть ссылки'),(77596,32,6780,'Прочитать входящее сообщение'),(77597,32,6781,'Отправить личное сообщение'),(77598,32,6047,'Комментировать добавленные услуги'),(77599,32,6048,'Владелец контента может удалять комментарии'),(77600,32,6073,'Добавить услуги'),(77601,32,9030,'Разрешить комментарии'),(77602,32,2102,'Комментировать фото'),(77603,32,2103,'Владелец контента не может удалить комментарии'),(77604,32,2101,'Подгрузить фото'),(77605,32,2100,'Просмотреть фото'),(77606,32,16407,'Пожалуйста {$alternatives}, чтобы {$action}.'),(77607,32,2097,'Добавить видео'),(77608,32,2823,'Комментировать видео'),(77609,32,2824,'Владелец контента может удалять комментарии'),(77610,32,2098,'Просмотреть видео'),(77611,32,8574,'Отправить подарок'),(77612,32,2835,'Вы не можете просматривать страницу из-за ограничений вашего статуса'),(77613,32,2843,'Ой, кажется у вас ограниченный доступ'),(77614,32,3352,'Изменен'),(77615,32,3309,'Изменить роль'),(77616,32,2104,'Основные права'),(77617,32,2207,'Блоги'),(77618,32,7915,'События'),(77619,32,8987,'Форум'),(77620,32,2903,'Друзья'),(77621,32,10692,'Группы'),(77622,32,6155,'Ссылки'),(77623,32,6779,'Почта'),(77624,32,6046,'Рынок'),(77625,32,5796,'Тип участия'),(77626,32,9029,'Лента новостей'),(77627,32,2099,'Фото'),(77628,32,8664,'Кредиты'),(77629,32,2096,'Видео'),(77630,32,8573,'Подарки'),(77631,32,16408,'Недостаточные привилегии'),(77632,32,16122,'администратор'),(77633,32,15392,'VIP'),(77634,32,16127,'Ekip üyesi'),(77635,32,16128,'ewrwe'),(77636,32,16129,'Золотой'),(77637,32,19750,'Серый'),(77638,32,2082,'Гость'),(77639,32,16133,'Сотрудник'),(77640,32,15864,'Серебряный'),(77641,32,16135,'Серебряный'),(77642,32,2609,'Бесплатный'),(77643,32,3308,'Роли пользователей'),(77644,32,13909,'Разрешить посты стены профиля'),(77645,32,18998,'Пользователи'),(77646,32,2425,'Неверное имя пользователя или электронный адрес'),(77647,32,2426,'Неверный пароль'),(77648,32,2431,'Авторизация прошла успешно. Пожалуйста подождите...'),(77649,32,9401,'Просматривать профили'),(77650,32,2932,'<a href=\"{$userUrl}\">{$user}</a> изменил аватар.'),(77651,32,1861,'Вырезать'),(77652,32,1855,'Аватар - это изображение/фото отображаемое для вашего профиля'),(77653,32,16455,'Назад на профиль'),(77654,32,1994,'Подгрузить'),(77655,32,2059,'Изменить аватар'),(77656,32,18999,'Аватар изменен'),(77657,32,1998,'Сменить аватар'),(77658,32,19000,'или выберите из галереи'),(77659,32,2060,'Редактировать мой профиль'),(77660,32,1858,'Вырезать аватар'),(77661,32,1859,'Выберите область для вырезания вашего аватара, используя курсор мыши. Вырезанный аватар появится справа. Если вас устраивает вырезанный аватар, нажмите кнопку \"Вырезать\".'),(77662,32,1856,'Ваш аватар'),(77663,32,19001,'Вы можете перенести только 1 изображение в данную область'),(77664,32,6671,'сменил всой аватар'),(77665,32,19002,'Аватар активирован'),(77666,32,19003,'Фото слишком маленькое для аватара. <br />Минимальный размер {$width}px x {$height}px'),(77667,32,1857,'Подгрузить новый аватар'),(77668,32,19004,'Аватар ожидает проверку'),(77669,32,1860,'Ваш аватар'),(77670,32,1863,'Предварительный просмотр'),(77671,32,2906,'Пожалуйста выберите файл изображения'),(77672,32,19005,'сменил(а) аватар'),(77673,32,1995,'Доступные форматы для аватаров<span class=\"ow_txt_value\">JPG</span>/<span class=\"ow_txt_value\">GIF</span>/<span class=\"ow_txt_value\">PNG</span>'),(77674,32,6498,'Отправить'),(77675,32,6497,'выбрано #count# пользователей'),(77676,32,6714,'Вы должны выбрать пользователя, чтобы продолжить'),(77677,32,2846,'Аватар'),(77678,32,19006,'Назад'),(77679,32,16456,'Добавить новый'),(77680,32,6569,'У вас нет прав на доступ к странице.'),(77681,32,6568,'Отказано в доступе'),(77682,32,6571,'Отказано в доступе'),(77683,32,2062,'Извините, документ не существует'),(77684,32,2061,'Страница не найдена'),(77685,32,6570,'Страница не найдена'),(77686,32,16457,'Недостаточные привилегии'),(77687,32,14271,'Скрытый'),(77688,32,2997,'Зарегистрироваться'),(77689,32,4090,'Пожалуйста, войдите'),(77690,32,4091,'или'),(77691,32,14384,'Добро пожаловать в наше сообщество!<br /><br />\nПеред тем как продолжить, вам нужно зарегистрировать профиль и стать нашим участником.'),(77692,32,4843,'Сумма'),(77693,32,3988,'Платежная система не поддерживает валюту, установленную на сайте по умолчанию (<b>{$currency}</b>)'),(77694,32,4854,'Детали'),(77695,32,4855,'Система'),(77696,32,4793,'Платежная система не найдена или отсутствует'),(77697,32,11723,'Связь продуктов биллинговой системы'),(77698,32,4870,'недоступна'),(77699,32,3945,'Нет активных платежных систем'),(77700,32,4871,'Ваша покупка отменена'),(77701,32,4873,'Покупка успешно совершена'),(77702,32,4872,'Ошибка при обработке покупки'),(77703,32,4811,'Покупка не инициализирована'),(77704,32,4906,'Оплатить с помощью {$gateway}'),(77705,32,4875,'Покупка рассматривается'),(77706,32,4907,'Статус вашей покупки'),(77707,32,4874,'Покупка подтверждена'),(77708,32,3956,'Оплатить безопасно через'),(77709,32,11724,'Продукт'),(77710,32,11725,'ID продукта системы'),(77711,32,4810,'Информация о покупке не найдена'),(77712,32,4857,'Статистика'),(77713,32,4856,'ID транзакции'),(77714,32,12181,'Подтвердить блокирование'),(77715,32,16458,'Отправить'),(77716,32,1754,'От'),(77717,32,6478,'Отменить'),(77718,32,11760,'Отменить'),(77719,32,14277,'Вы не можете удалить модератора сайта.'),(77720,32,16137,'Сначала нужно удалить этого пользователя из модераторов'),(77721,32,6477,'Изменить'),(77722,32,2923,'Изменить пароль'),(77723,32,2928,'Пароль не изменен'),(77724,32,2925,'Новый пароль'),(77725,32,2924,'Старый пароль'),(77726,32,2926,'Введите новый пароль еще раз'),(77727,32,2927,'Пароль изменен'),(77728,32,9106,'Оплатить'),(77729,32,2219,'Выбрать все'),(77730,32,19007,'Отметить все'),(77731,32,1977,'Добавить'),(77732,32,2125,'Количество отображаемых комментариев'),(77733,32,2126,'Режим отображения'),(77734,32,2128,'Полный список'),(77735,32,2127,'С номерами страниц'),(77736,32,2333,'Вы не можете оставлять комментарии'),(77737,32,2729,'Вам нужно войти на сайт, чтобы оставить комментарий'),(77738,32,1752,'Комментарии'),(77739,32,18769,'Смотреть еще'),(77740,32,2845,'Стена'),(77741,32,19008,'прокомментировал(а)'),(77742,32,2016,'Ошибка при добавлении комментария'),(77743,32,2015,'Ошибка при обработке вашего запроса'),(77744,32,1992,'Добавить'),(77745,32,1993,'Стена'),(77746,32,19009,'прокомментировал (а) {$content}'),(77747,32,4047,'Вы действительно хотите удалить комментарий?'),(77748,32,2018,'Удалить'),(77749,32,14657,'Добавьте комментарий...'),(77750,32,16459,'больше комментариев'),(77751,32,2017,'Нет комментариев'),(77752,32,11296,'Пожалуйста, введите комментарий'),(77753,32,6378,'Просмотреть все  ({$count})'),(77754,32,16460,'Заполнить профиль'),(77755,32,16461,'Введите обязательные значения.'),(77756,32,16462,'Заполните свой профиль'),(77757,32,16463,'Заполнить профиль'),(77758,32,2860,'Добавить'),(77759,32,2269,'Имя пользователя/Электронный адрес'),(77760,32,9694,'отобразить и сделать обязательным'),(77761,32,9693,'отбразить'),(77762,32,9695,'скрыть'),(77763,32,11759,'Подтвердить'),(77764,32,4101,'Отменить'),(77765,32,4100,'хорошо'),(77766,32,14385,'Приглашения'),(77767,32,4514,'Личный кабинет'),(77768,32,4517,'Почта'),(77769,32,4515,'Настройки'),(77770,32,4516,'Мой профиль'),(77771,32,4518,'Выйти'),(77772,32,14386,'Регистрация'),(77773,32,19010,'Аватары'),(77774,32,19011,'Аватар'),(77775,32,19012,'Комментарии'),(77776,32,19013,'Комментарий'),(77777,32,19014,'Пользователи'),(77778,32,19015,'Профиль'),(77779,32,14387,'Удалить комментарий'),(77780,32,14388,'Удалить пользователя'),(77781,32,16464,'Продолжить'),(77782,32,2436,'© Все права защищены. {$site_name}'),(77783,32,19016,'Аватар не вырезан.'),(77784,32,2088,'Содержимое (текстt/HTML)'),(77785,32,2074,'Кастомный текст/HTML'),(77786,32,2093,'Перейти на новую строку <br />'),(77787,32,13907,'Нет контента'),(77788,32,3851,'Личный кабинет'),(77789,32,3792,'Мой личный кабинет'),(77790,32,2022,'в'),(77791,32,6861,'Час'),(77792,32,6862,'Минута'),(77793,32,2020,'{$hours} часов назад'),(77794,32,1973,'{$minutes} минут назад'),(77795,32,2026,'Янв'),(77796,32,2034,'Окт'),(77797,32,2035,'Ноя'),(77798,32,2036,'Дек'),(77799,32,2027,'Фев'),(77800,32,2028,'Мар'),(77801,32,2029,'Апр'),(77802,32,2030,'Май'),(77803,32,2031,'Июнь'),(77804,32,2032,'Июль'),(77805,32,2033,'Авг'),(77806,32,2025,'Сен'),(77807,32,2019,'час назад'),(77808,32,1972,'минуту назад'),(77809,32,1919,'Сегодня'),(77810,32,4140,'Завтра'),(77811,32,4012,'Воскресенье'),(77812,32,4013,'Понедельник'),(77813,32,4014,'Вторник'),(77814,32,4015,'Среда'),(77815,32,4016,'Четверг'),(77816,32,4017,'Пятница'),(77817,32,4018,'Суббота'),(77818,32,1971,'через минуту'),(77819,32,2021,'Вчера'),(77820,32,4050,'День'),(77821,32,1770,'Удалить'),(77822,32,14269,'Удаленный пользователь'),(77823,32,9294,'Удалить комментарий владельца контента'),(77824,32,3041,'Удалить профиль'),(77825,32,3037,'Отменить'),(77826,32,3045,'Вы действительно хотите удалить профиль?'),(77827,32,3078,'Удалить подтверждение'),(77828,32,3056,'Удалить контент пользователя'),(77829,32,3038,'Удалить'),(77830,32,19710,'Пользователь удален'),(77831,32,3039,'Удалить пользователя'),(77832,32,14389,'Аккаунт удален<br />\nВернуться на <a href=\"{$site_url}\">сайт</a>'),(77833,32,16138,'Полная версия'),(77834,32,1774,'Отклонить'),(77835,32,13327,'Отклонить'),(77836,32,19017,'Перетащите фото или нажмите, чтобы загрузить'),(77837,32,19018,'Перетащите фото сюда'),(77838,32,1769,'Редактировать'),(77839,32,2936,'<a href=\"{$userUrl}\">{$user}</a> изменил детали своего профиля'),(77840,32,2374,'Сохранить'),(77841,32,2376,'Редактировать профиль'),(77842,32,3040,'Редактировать детали профиля'),(77843,32,19699,'Примечание: Имейте в виду, что редактирование текстовых полей приведет вашего профиля приведет к дополнительной проверке. Вы не сможете пользоваться сайтом в процессе проверки.'),(77844,32,12866,'Перенести данные с других сервисов'),(77845,32,2375,'Информация пользователя изменена'),(77846,32,4102,'Кто-то комментирует мой профиль'),(77847,32,2565,'Извините, электронный адрес не подтвержден.<br/> Возможно:<br/> \n<br/> \n1) Ссылка для подтверждения неверная. Пожалуйста скопируйте верную ссылку и вставьте в адресную строку.\n<br/><br/>\n2) Ссылка для подтвеждения недействительна, так как ее не использовали в течении 5 дней. Пожалуйста отправьте запрос на подтверждение еще раз.'),(77848,32,2558,'Электронный адрес подтвержден'),(77849,32,3049,'Пожалуйста введите код подтверждения'),(77850,32,2554,'Подтверждение электронного адреса'),(77851,32,3050,'Неверный код подтверждения'),(77852,32,2564,'\"<p>\nПожалуйста подтвердите электронный адрес.<br />Нажмите кнопку \"Отправить\" для получения письма с кодом подтверждения на свой электронный адрес.\n</p>\n<p>\n<b>Если вы не получили письмо,</b> пожалуйста добавьте <i>{$site_email}</i> в белый список .\n</p>\"'),(77853,32,2555,'Отправить'),(77854,32,2847,'Подтверждение электронного адреса'),(77855,32,2556,'Здравствуйте {$username},<br />\n<br />\nБлагодарим за регистрацию на {$site_name}! Чтобы подтвердить свой электронный адрес <a href=\"{$url}\">нажмите</a><br />\n<br />\nВы также можете вставить код <a href=\"{$verification_page_url}\">на страницу подтверждения</a>: {$code}<br />\n<br />\nСпасибо,<br />\nАдминистрация {$site_name}'),(77856,32,2557,'Здравствуйте {$username},\n\nБлагодарим за регистрацию на {$site_name}! Чтобы подтвердить свой электронный адрес нажмите на ссылку: {$url}\n\nВы также можете вставить код на страницу подтверждения {$verification_page_url} : \n{$code}\n\nСпасибо,\nАдминистрация {$site_name}'),(77857,32,3046,'Код'),(77858,32,3048,'Отправить'),(77859,32,2654,'Письмо для подтвеждения электронного адреса отправлено успешно'),(77860,32,16465,'Пустой комментарий'),(77861,32,2815,'<center>Пусто</center>'),(77862,32,19709,'Пустое сообщение'),(77863,32,19708,'Пустая тема сообщения'),(77864,32,6489,'Нет пользователей'),(77865,32,7429,'Нет пользователей'),(77866,32,13343,'прокомментировал(а) новый аватар {$user}'),(77867,32,13342,'понравился новый аватар {$user}'),(77868,32,16466,'нравится новый аватар'),(77869,32,16467,'прокомментировал(а) новый аватар'),(77870,32,13325,'прокомментировал регистрацию {$user} на нашем сайте'),(77871,32,13326,'нравится регистрация {$user} на нашем сайте'),(77872,32,6696,'изменил детали своего профиля'),(77873,32,6697,'зарегистрировался на сайте!'),(77874,32,1768,'Отметить'),(77875,32,3830,'Контент, на который пожаловались'),(77876,32,19019,'Отмечен: {$time}'),(77877,32,3791,'Репорт удален'),(77878,32,3790,'Количество пользователей, зарепортивших этот контент'),(77879,32,3776,'Репорт принят'),(77880,32,3777,'Вы уже репортили это'),(77881,32,3773,'Зарепортить как...'),(77882,32,3774,'отметить'),(77883,32,3772,'Нелегальный'),(77884,32,3771,'Нарушение'),(77885,32,14109,'Вы не можете зарепортить свой контент'),(77886,32,3770,'Спам'),(77887,32,2312,'Введите свой электронный адрес'),(77888,32,13385,'Вы уже получили код сброса. Пожалуйста, попробуйте снова через 24 часа.'),(77889,32,2313,'Ваш электронный адрес'),(77890,32,5832,'Введите элетронный адрес используемый при регистрации.'),(77891,32,5837,'Забыл пароль'),(77892,32,5845,'Для смены пароля вам нужно ввести ваш адрес электронной почты, получить код и использовать его для замены старого пароля.'),(77893,32,3888,'Забыл пароль'),(77894,32,10686,'Здравствуйте {$username},<br />\n<br />\nВы просили сбросить пароль. Вот ваш новый пароль: <b>{$password}</b><br />\n<br />\nВы можете войти на свою учетную запись <a href=\"{$site_url}\">{$site_url}</a> и изменить пароль снова если нужно.<br />\n<br />\nСпасибо,<br />\n{$site_name}'),(77895,32,10687,'Здравствуйте {$username},\n\nВы просили сбросить пароль. Вот ваш новый пароль: {$password}\n\nВы можете войти на свою учетную запись <a href=\"{$site_url}\">{$site_url}</a> и изменить пароль снова если нужно.\n\nСпасибо,\n{$site_name}'),(77896,32,2315,'Новый пароль для вашей учетной записи'),(77897,32,5833,'Пользователя с таким электронным адресом не существует'),(77898,32,12902,'Код сброса уже отправлен. Пожалуйста, попробуйте снова через 10 минут.'),(77899,32,1711,'Вперед'),(77900,32,3854,'Информация об изменении и подтверждении вашего нового пароля оправлена на вашу электронную почту.'),(77901,32,4040,'(Возраст)'),(77902,32,2234,'Введите'),(77903,32,4038,'от'),(77904,32,2233,'Выбрать'),(77905,32,9423,'Отправить'),(77906,32,9493,'Отправить'),(77907,32,4039,'до'),(77908,32,4869,'(Годы)'),(77909,32,2672,'Пожалуйста заполните форму верно'),(77910,32,4167,'Алфавитно-цифровая проверка неверна!'),(77911,32,4149,'Код введен неверно!'),(77912,32,4164,'Дата неверна!'),(77913,32,4169,'Неверный электронный адрес!'),(77914,32,4165,'Ошибка подтверждения float!'),(77915,32,4166,'Ошибка подтверждения int!'),(77916,32,19453,'Неверный диапазон'),(77917,32,4170,'Неверное регулярное выражение!'),(77918,32,2844,'Обязательно'),(77919,32,4171,'Строка неверна!'),(77920,32,4168,'Неверный Url!'),(77921,32,3829,'На проверку'),(77922,32,3391,'Аруба'),(77923,32,3392,'Афганистан'),(77924,32,3393,'Ангола'),(77925,32,3394,'Ангилья'),(77926,32,3395,'Албания'),(77927,32,3396,'Андорра'),(77928,32,3397,'Нидерландские Антильские острова'),(77929,32,3398,'Объединенные Арабские Эмираты'),(77930,32,3399,'Аргентина'),(77931,32,3400,'Армения'),(77932,32,3401,'Американское Самоа'),(77933,32,3402,'Антарктика'),(77934,32,3403,'Французские Южные Территории'),(77935,32,3404,'Антигуа и Барбуда'),(77936,32,3405,'Австралия'),(77937,32,3406,'Австрия'),(77938,32,3407,'Азербайджан'),(77939,32,3408,'Бурунди'),(77940,32,3409,'Бельгия'),(77941,32,3410,'Бенин'),(77942,32,3411,'Буркина-Фасо'),(77943,32,3412,'Бангладеш'),(77944,32,3413,'Болгария'),(77945,32,3414,'Бахрейн'),(77946,32,3415,'Багамские острова'),(77947,32,3416,'Босния и Герцеговина'),(77948,32,3417,'Беларусь'),(77949,32,3418,'Белиз'),(77950,32,3419,'Бермудские острова'),(77951,32,3420,'Боливия'),(77952,32,3421,'Бразилия'),(77953,32,3422,'Барбадос'),(77954,32,3423,'Бруней Даруссалам'),(77955,32,3424,'Бутан'),(77956,32,3425,'Остров Буве'),(77957,32,3426,'Ботсвана'),(77958,32,3427,'Центральная Африканская Республика'),(77959,32,3428,'Канада'),(77960,32,3429,'Швейцария'),(77961,32,3430,'Чили'),(77962,32,3431,'Китай'),(77963,32,3432,'Кот-д\' Ивуар'),(77964,32,3433,'Камерун'),(77965,32,3434,'Демократическая Республика Конго'),(77966,32,3435,'Конго'),(77967,32,3436,'Острова Кука'),(77968,32,3437,'Колумбия'),(77969,32,3438,'Коморские острова'),(77970,32,3439,'Кабо-Верде'),(77971,32,3440,'Коста-Рика'),(77972,32,3441,'Куба'),(77973,32,3442,'Острова Кайман'),(77974,32,3443,'Кипр'),(77975,32,3444,'Чехия'),(77976,32,3445,'Германия'),(77977,32,3446,'Джибути'),(77978,32,3447,'Остров Доминика'),(77979,32,3448,'Дания'),(77980,32,3449,'Доминиканская Республика'),(77981,32,3450,'Аджир'),(77982,32,3451,'Эквадор'),(77983,32,3452,'Египет'),(77984,32,3453,'Эритрея'),(77985,32,3454,'Испания'),(77986,32,3455,'Эстония'),(77987,32,3456,'Эфиопия'),(77988,32,3457,'Финляндия'),(77989,32,3458,'Фиджи'),(77990,32,3459,'Фолклендские острова'),(77991,32,3460,'Франция'),(77992,32,3461,'Фарерские острова'),(77993,32,3462,'Федеративные Штаты Микронезии'),(77994,32,3463,'Габон'),(77995,32,3464,'Великобритания'),(77996,32,3465,'Грузия'),(77997,32,3466,'Гернси'),(77998,32,3467,'Гана'),(77999,32,3468,'Гибралтар'),(78000,32,3469,'Гвинея'),(78001,32,3470,'Гваделупа'),(78002,32,3471,'Гамбия'),(78003,32,3472,'Гвинея-Бисау'),(78004,32,3473,'Экваториальная Гвинея'),(78005,32,3474,'Греция'),(78006,32,3475,'Гренада'),(78007,32,3476,'Гренландия'),(78008,32,3477,'Гватемала'),(78009,32,3478,'Французская Гвиана'),(78010,32,3479,'Гуам'),(78011,32,3480,'Гайана'),(78012,32,3481,'Гонконг'),(78013,32,3482,'Гондурас'),(78014,32,3483,'Хорватия'),(78015,32,3484,'Гаити'),(78016,32,3485,'Венгрия'),(78017,32,3486,'Индонезия'),(78018,32,3487,'Остров Мэн'),(78019,32,3488,'Индия'),(78020,32,3489,'Британская территория в Индийском океане'),(78021,32,3490,'Ирландия'),(78022,32,3491,'Исламская Республика Иран'),(78023,32,3492,'Ирак'),(78024,32,3493,'Исландия'),(78025,32,3494,'Израиль'),(78026,32,3495,'Италия'),(78027,32,3496,'Ямайка'),(78028,32,3497,'Джерси'),(78029,32,3498,'Иордания'),(78030,32,3499,'Япония'),(78031,32,3500,'Казахстан'),(78032,32,3501,'Кения'),(78033,32,3502,'Кыргызстан'),(78034,32,3503,'Камбоджа'),(78035,32,3504,'Кирибати'),(78036,32,3505,'Сент-Китс и Невис'),(78037,32,3506,'Республика Корея'),(78038,32,3507,'Кувейт'),(78039,32,3508,'Лаосская Народно-Демократическая Республика'),(78040,32,3509,'Ливан'),(78041,32,3510,'Либерия'),(78042,32,3511,'Ливийская Арабская Джамахирия'),(78043,32,3512,'Сент-Люсия'),(78044,32,3513,'Лихтенштейн'),(78045,32,3514,'Шри-Ланка'),(78046,32,3515,'Лесото'),(78047,32,3516,'Литва'),(78048,32,3517,'Люксембург'),(78049,32,3518,'Латвия'),(78050,32,3519,'Макао'),(78051,32,3520,'Сен-Мартен'),(78052,32,3521,'Марокко'),(78053,32,3522,'Монако'),(78054,32,3523,'Республика Молдова'),(78055,32,3524,'Мадагаскар'),(78056,32,3525,'Мальдивы'),(78057,32,3526,'Мексика'),(78058,32,3527,'Маршалловы острова'),(78059,32,3528,'Бывшая югославская Республика Македония'),(78060,32,3529,'Мали'),(78061,32,3530,'Мальта'),(78062,32,3531,'Мьянма'),(78063,32,3532,'Монтенегро'),(78064,32,3533,'Монголия'),(78065,32,3534,'Северные Марианские острова'),(78066,32,3535,'Мозамбик'),(78067,32,3536,'Мавритания'),(78068,32,3537,'Монтсеррат'),(78069,32,3538,'Мартиника'),(78070,32,3539,'Маврикий'),(78071,32,3540,'Малави'),(78072,32,3541,'Малайзия'),(78073,32,3542,'Майотта'),(78074,32,3543,'Намибия'),(78075,32,3544,'Новая Каледония'),(78076,32,3545,'Нигер'),(78077,32,3546,'остров Норфолк'),(78078,32,3547,'Нигерия'),(78079,32,3548,'Никарагуа'),(78080,32,3549,'Ниуэ'),(78081,32,3550,'Нидерланды'),(78082,32,3551,'Норвегия'),(78083,32,3552,'Непал'),(78084,32,3553,'Науру'),(78085,32,3554,'Новая Зеландия'),(78086,32,3555,'Оман'),(78087,32,3556,'Пакистан'),(78088,32,3557,'Панама'),(78089,32,3558,'Перу'),(78090,32,3559,'Филиппины'),(78091,32,3560,'Палау'),(78092,32,3561,'Папуа - Новая Гвинея'),(78093,32,3562,'Польша'),(78094,32,3563,'Пуэрто Рико'),(78095,32,3564,'Корейская Народно-Демократическая Республика'),(78096,32,3565,'Португалия'),(78097,32,3566,'Парагвай'),(78098,32,3567,'Палестина'),(78099,32,3568,'Французская Полинезия'),(78100,32,3569,'Катар'),(78101,32,3570,'Реюньон'),(78102,32,3571,'Румыния'),(78103,32,3572,'Россия'),(78104,32,3573,'Руанда'),(78105,32,3574,'Саудовская Аравия'),(78106,32,3575,'Сербия и Черногория'),(78107,32,3576,'Судан'),(78108,32,3577,'Сенегал'),(78109,32,3578,'Сингапур'),(78110,32,3579,'Южная Георгия и Южные Сандвичевы острова'),(78111,32,3580,'Соломоновы Острова'),(78112,32,3581,'Сьерра-Леоне'),(78113,32,3582,'Сальвадор'),(78114,32,3583,'Сан-Марино'),(78115,32,3584,'Сомали'),(78116,32,3585,'Сен-Пьер и Микелон'),(78117,32,3586,'Сербия'),(78118,32,3587,'Сан-Томе и Принсипи'),(78119,32,3588,'Суринам'),(78120,32,3589,'Словакия'),(78121,32,3590,'Словения'),(78122,32,3591,'Швеция'),(78123,32,3592,'Свазиленд'),(78124,32,3593,'Сейшельские Острова'),(78125,32,3594,'Сирийская Арабская Республика'),(78126,32,3595,'Теркс и Кайкос'),(78127,32,3596,'Чад'),(78128,32,3597,'Того'),(78129,32,3598,'Тайланд'),(78130,32,3599,'Таджикистан'),(78131,32,3600,'Токелау'),(78132,32,3601,'Туркменистан'),(78133,32,3602,'Восточный Тимор'),(78134,32,3603,'Тонга'),(78135,32,3604,'Тринидад и Тобаго'),(78136,32,3605,'Тунис'),(78137,32,3606,'Турция'),(78138,32,3607,'Тувалу'),(78139,32,3608,'Тайвань'),(78140,32,3609,'Объединённая Республика Танзания'),(78141,32,3610,'Уганда'),(78142,32,3611,'Украина'),(78143,32,3612,'Малые Удалённые Острова США'),(78144,32,3613,'Уругвай'),(78145,32,3614,'США'),(78146,32,3615,'Узбекистан'),(78147,32,3616,'Ватикан'),(78148,32,3617,'Сент-Винсент и Гренадины'),(78149,32,3618,'Венесуэла'),(78150,32,3619,'Виргинские острова, Великобритания'),(78151,32,3620,'Виргинские острова, США'),(78152,32,3621,'Вьетнам'),(78153,32,3622,'Вануату'),(78154,32,3623,'Уоллис и Футуна'),(78155,32,3624,'Самоа'),(78156,32,3625,'Йемен'),(78157,32,3626,'Южная Африка'),(78158,32,3627,'Замбия'),(78159,32,3628,'Зимбабве'),(78160,32,16139,'Игнорировать'),(78161,32,16140,'Главное'),(78162,32,19020,'Максимальный размер аватара'),(78163,32,19472,'Неверный тип файла. Разрешенные типы файлов: JPG/PNG/GIF'),(78164,32,19707,'Пользователь не существует'),(78165,32,2934,'<a href=\"{$userUrl}\">{$user}</a> зарегистрировался на нашем сайте!'),(78166,32,2935,'<a href=\"{$userUrl}\"><img src=\"{$avatarUrl}\" alt=\"{$user}\"></a>'),(78167,32,3231,'Войти через'),(78168,32,1901,'Извините, этот электронный адрес уже используется'),(78169,32,1902,'Пожалуйста, введите верный электронный адрес'),(78170,32,1900,'Пожалуйста, введите верный пароль'),(78171,32,1898,'Пароль не должен превышать 15 символов'),(78172,32,1899,'Пароль должен превышать 4 символа'),(78173,32,1896,'Тип файла не разрешен'),(78174,32,1906,'Извините, это имя пользователя уже существует'),(78175,32,1903,'Пожалуйста, введите верное имя пользователя'),(78176,32,4769,'Извините, но это имя запрещено'),(78177,32,3230,'Зарегистрируйте свой профиль'),(78178,32,2167,'Присоединяйтесь к нашему сообществу.'),(78179,32,2080,'Зарегистрироваться сейчас'),(78180,32,19452,'Еще не зарегистрированы?'),(78181,32,3274,'Извините, регистрация закрыта'),(78182,32,3232,'или'),(78183,32,2155,'Присоединяйтесь к нашему быстро растущему сообществу. Находите новых друзей, знакомьтесь, делитесь фото и видео. Наслаждайтесь!'),(78184,32,2008,'Продолжить'),(78185,32,2009,'Регистрация'),(78186,32,2670,'Регистрация завершена успешно'),(78187,32,9544,'<p class=\"ow_smallmargin\">\nДобро пожаловать на наш сайт. Если вы продолжаете пользоваться сайтом, вы соглашаетесь со следующими правилами пользования, которые вместе с политикой сайта управляют нашими отношениями и вашими отношениями с сайтом. Если вы не согласны с какими-либо правилами, пожалуйста, не пользуйтесь сайтом.\n</p>\n<p class=\"ow_stdmargin\">\nТермин \'сайт\' или \'нас\' или \'мы\' относится к владельцу сайта. Термин \'пользователь\' относится к посетителю сайта.\n </p>\n<p class=\"ow_smallmargin\">\nИспользование сайта основано на следующих правилах пользования:\n </p>\n<ul class=\"ow_stdmargin ow_regular\">\n<li class=\"ow_smallmargin\">\nСодержание страниц сайта предназначено только для общей информации и использования. Оно подлежит изменению без предварительного уведомления.\n </li>\n<li class=\"ow_smallmargin\">\nПользователь признает, что ни мы ни какие-либо третьи лица не предоставляют гарантии пока пользователь использует сайт для определенных целей. Мы исключаем ответственность за возможный ущерб в степени разрешенной законом. \n </li>\n<li class=\"ow_smallmargin\">\nПользователи используют информацию и материалы сайта под свою ответственность, мы не отвечаем за это.\nПользователь несет ответственность за то, что продукты, услуги или информация доступная на сайте отвечает требованиям пользователям.\n </li>\n<li class=\"ow_smallmargin\">\nДанный сайт содержит материалы, которые могут принадлежать нам. Этот материал включает, но не ограничивается дизайном, внешним видом, структурой и графикой. Копирование запрещено и разрешено только с разрешения.\n </li>\n<li class=\"ow_smallmargin\">\nНесанкционированное использование этого сайта может стать поводом иска на предмет ущерба или правонарушения.\n </li>\n<li class=\"ow_smallmargin\">\nДанный сайт может также содержать ссылки на другие сайты. Эти ссылки предоставляются для информации пользователям. Они не означают, что мы одобряем упомянутые сайты. Мы не отвечаем за контент сайтов, упомянутых на сайте.\n </li>\n<li class=\"ow_smallmargin\">\nПользователь соглашается не размещать нелегальный контент на сайте, и соглашается предупреждать владельцев сайта если заметят, что другие пользователи размещают нелегальный контент.\n</li>\n</ul>'),(78188,32,16144,'<p class=\"ow_smallmargin\">\nБлагодарим вас за посещение сайта. Эта политика конфиденциальности расскажет вам, как мы используем личную информацию, собранную на этом сайте. Пожалуйста, прочитайте эту политику конфиденциальности перед использованием Сайта или предоставляя личную информацию. Используя этот сайт, вы принимаете правила, описанные в настоящей политике конфиденциальности. Эти практики могут быть изменены, но все изменения будут размещены и будут применяться только к деятельности и информации в будущем. Вам предлагается ознакомиться с политикой конфиденциальности, когда вы посещаете сайт для отслеживания изменений в политике и убедитесь, что вы понимаете как будет использоваться личная информация, которую вы предоставили.\n</p>\n<p class=\"ow_stdmargin\"> \nПримечание: правила конфиденциальности, изложенные в настоящей политике конфиденциальности, предназначены только для этого сайта. Если вы ссылаетесь на сайты, пожалуйста, ознакомьтесь с политикой конфиденциальности, размещенной на этих сайтах.\n</p>\n\n<h2 class=\"ow_smallmargin\">Collection of Information</h2>\n \n<p class=\"ow_stdmargin\">\nМы собираем личную информацию, такую как имена, адреса электронной почты и т.д., добровольно представленных нашими посетителями. Эта информация используется только для выполнения вашего конкретного запроса, и подписку вас на нашу почтовую рассылку услуг, если вы не даете нам разрешение на использование ее другими способами.\n</p>\n\n<h2 class=\"ow_smallmargin\">Куки/Технология отслеживания</h2>\n \n<p class=\"ow_stdmargin\">\nЭтот сайт может использовать куки и технологии отслеживания в зависимости от возможностей, предлагаемых. Куки и технологии отслеживания полезны для сбора информации, такие как тип браузера и операционной системы, отслеживает количество посетителей на сайт, и понимание того, как пользователи используют сайт. Куки также могут помочь настроить сайт для посетителей. Личная информация не может быть собрана с помощью куки и другой технологии отслеживания, однако, если вы предварительно личную информацию, куки могут быть привязаны к такой информации. Куки и информация отслеживания может быть передана третьим лицам.\n</p>\n\n<h2 class=\"ow_smallmargin\">Distribution of Information</h2>\n \n<p class=\"ow_stdmargin\">\nМы можем делиться информацией с государственными органами или другими компаниями помогают нам в предотвращении мошенничества или расследования. Мы можем сделать это, когда: (1) разрешено или требуется по закону; или, (2) пытается защитить или предотвратить действительное или потенциальное мошенничество или несанкционированные сделки; или, (3) расследование мошенничества, которое уже имело место. Информация не предоставляется этим компаниям в маркетинговых целях. \n</p>\n\n<h2 class=\"ow_smallmargin\">Приверженность безопасности данных</h2>\n \n<p class=\"ow_stdmargin\">\nВаша личная информация хранится в безопасности. Только авторизованные сотрудники, агенты и подрядчики (которые согласились держать информацию в секрете) имеют доступ к этой информации. Все письма и информационные бюллетени с этого сайта позволят вам отказаться от дальнейших рассылок.\n</p>\n\n<h2 class=\"ow_smallmargin\">Конфиденциальность Контактной информации</h2>\n \n<p class=\"ow_stdmargin\">\nЕсли у вас есть вопросы, проблемы, или комментарии о нашей политике конфиденциальности, вы можете связаться с нами, используя средства, предоставляемые на этом сайте. Мы оставляем за собой право вносить изменения в этой политике. Любые изменения в этой политике будут размещены.\n</p>'),(78189,32,15995,'<p class=\"ow_smallmargin\">\nБлагодарим вас за посещение сайта. Эта политика конфиденциальности расскажет вам, как мы используем личную информацию, собранную на этом сайте. Пожалуйста, прочитайте эту политику конфиденциальности перед использованием Сайта или предоставляя личную информацию. Используя этот сайт, вы принимаете правила, описанные в настоящей политике конфиденциальности. Эти практики могут быть изменены, но все изменения будут размещены и будут применяться только к деятельности и информации в будущем. Вам предлагается ознакомиться с политикой конфиденциальности, когда вы посещаете сайт для отслеживания изменений в политике и убедитесь, что вы понимаете как будет использоваться личная информация, которую вы предоставили.\n</p>\n<p class=\"ow_stdmargin\"> \nПримечание: правила конфиденциальности, изложенные в настоящей политике конфиденциальности, предназначены только для этого сайта. Если вы ссылаетесь на сайты, пожалуйста, ознакомьтесь с политикой конфиденциальности, размещенной на этих сайтах.\n</p>\n\n<h2 class=\"ow_smallmargin\">Collection of Information</h2>\n \n<p class=\"ow_stdmargin\">\nМы собираем личную информацию, такую как имена, адреса электронной почты и т.д., добровольно представленных нашими посетителями. Эта информация используется только для выполнения вашего конкретного запроса, и подписку вас на нашу почтовую рассылку услуг, если вы не даете нам разрешение на использование ее другими способами.\n</p>\n\n<h2 class=\"ow_smallmargin\">Куки/Технология отслеживания</h2>\n \n<p class=\"ow_stdmargin\">\nЭтот сайт может использовать куки и технологии отслеживания в зависимости от возможностей, предлагаемых. Куки и технологии отслеживания полезны для сбора информации, такие как тип браузера и операционной системы, отслеживает количество посетителей на сайт, и понимание того, как пользователи используют сайт. Куки также могут помочь настроить сайт для посетителей. Личная информация не может быть собрана с помощью куки и другой технологии отслеживания, однако, если вы предварительно личную информацию, куки могут быть привязаны к такой информации. Куки и информация отслеживания может быть передана третьим лицам.\n</p>\n\n<h2 class=\"ow_smallmargin\">Distribution of Information</h2>\n \n<p class=\"ow_stdmargin\">\nМы можем делиться информацией с государственными органами или другими компаниями помогают нам в предотвращении мошенничества или расследования. Мы можем сделать это, когда: (1) разрешено или требуется по закону; или, (2) пытается защитить или предотвратить действительное или потенциальное мошенничество или несанкционированные сделки; или, (3) расследование мошенничества, которое уже имело место. Информация не предоставляется этим компаниям в маркетинговых целях. \n</p>\n\n<h2 class=\"ow_smallmargin\">Приверженность безопасности данных</h2>\n \n<p class=\"ow_stdmargin\">\nВаша личная информация хранится в безопасности. Только авторизованные сотрудники, агенты и подрядчики (которые согласились держать информацию в секрете) имеют доступ к этой информации. Все письма и информационные бюллетени с этого сайта позволят вам отказаться от дальнейших рассылок.\n</p>\n\n<h2 class=\"ow_smallmargin\">Конфиденциальность Контактной информации</h2>\n \n<p class=\"ow_stdmargin\">\nЕсли у вас есть вопросы, проблемы, или комментарии о нашей политике конфиденциальности, вы можете связаться с нами, используя средства, предоставляемые на этом сайте. Мы оставляем за собой право вносить изменения в этой политике. Любые изменения в этой политике будут размещены.\n</p>'),(78190,32,9542,'Правила пользования'),(78191,32,16155,'Политика сайта'),(78192,32,15993,'Политика сайта'),(78193,32,3293,'<p>\nЗдравствуйте,\n</p>\n<p>\nМы приглашаем вас зарегистрироваться на сайте - {$site_name}.<br />\nПожалуйста, зарегистрируйтесь <a href=\"{$url}\">здесь</a>\n</p>\nАдминистрация<br />\n{$site_url}'),(78194,32,3294,'Здравствуйте,\n\nМы приглашаем вас зарегистрироваться на сайте - {$site_name}.\nПожалуйста, зарегистрируйтесь здесь: {$url}\n\nАдминистрация\n{$site_url}'),(78195,32,3292,'Приглашение на {$site_name}'),(78196,32,12176,'Пройдите по ссылке <a href=\"{$url}\">link</a> чтобы отключить статус технического обслуживания.'),(78197,32,1928,'Главное'),(78198,32,1927,'Мой профиль'),(78199,32,6823,'Плагин подгружен и готов к установке'),(78200,32,7218,'Невозможно установить плагин с пустым ключом'),(78201,32,7219,'Ошибки при установке плагина \"{$plugin}\". Пожалуйста, деактивируйте его и установите снова.'),(78202,32,11721,'Отметить электронный адрес как неподтвержденный'),(78203,32,6306,'Отметить электронный адрес подтвержденным'),(78204,32,2593,'Отписаться'),(78205,32,11761,'Пожалуйста, подтвердите, что вы не хотите получать массовую рассылку с данного сайта.'),(78206,32,2612,'Вы не отписались. \n<br />\nПожалуйста проверьте верна ли ссылка отписки.'),(78207,32,2611,'Вы отписались успешно.\n<br />\nСпасибо.'),(78208,32,11635,'(Лимит сервера {$value} Mb)'),(78209,32,4598,'Удален'),(78210,32,19711,'Сообщение'),(78211,32,19701,'Сообщение'),(78212,32,19706,'Сообщение отправлено'),(78213,32,16158,'Еще не доступно но мобильной версии. Попробуйте<a href=\"{$url}\">полную версию</a>.'),(78214,32,16159,'Нет уведомлений'),(78215,32,16160,'Мобильная версия'),(78216,32,19073,'Действие'),(78217,32,19074,'Вы действительно хотите удалить {$content}?'),(78218,32,19075,'Вы действительно хотите удалить {$count} {$content}?'),(78219,32,19076,'{$content} удален'),(78220,32,19077,'{$count} {$content} удалены'),(78221,32,19078,'{$content} отмечен'),(78222,32,19079,'{$count} {$content} не отмечено'),(78223,32,19080,'<a href=\"{$userUrl}\"><b>{$userName}\'s</b></a> {$content}отмечено'),(78224,32,19081,'Нет на проверку'),(78225,32,19082,'Ничего не выбрано'),(78226,32,19083,'Панель модератора'),(78227,32,19084,'Причина'),(78228,32,19085,'Репортер'),(78229,32,19086,'Инструменты проверки'),(78230,32,19700,'обновил свой профиль. <a href=\"{$profileUrl}\"> Посмотреть профиль </a>'),(78231,32,3345,'Панель модератора'),(78232,32,4049,'Месяц'),(78233,32,2895,'Январь'),(78234,32,3107,'Октябрь'),(78235,32,3108,'Ноябрь'),(78236,32,2066,'Декабрь'),(78237,32,1741,'Февраль'),(78238,32,3101,'Март'),(78239,32,3102,'Апрель'),(78240,32,3104,'Май'),(78241,32,3105,'Июнь'),(78242,32,3106,'Июль'),(78243,32,1742,'Август'),(78244,32,1743,'Сентябрь'),(78245,32,1755,'Больше'),(78246,32,3937,'Выровнять'),(78247,32,3940,'По центру'),(78248,32,3934,'удалить'),(78249,32,3936,'Полный размер'),(78250,32,3932,'скрыть'),(78251,32,3942,'Вставить в пост'),(78252,32,3939,'Слева'),(78253,32,3938,'Нет'),(78254,32,3933,'URL'),(78255,32,3935,'Предварительный просмотр'),(78256,32,3941,'Справа'),(78257,32,3931,'показать'),(78258,32,4766,'Мой профиль'),(78259,32,2748,'Мой профиль'),(78260,32,2675,'Мой профиль'),(78261,32,2561,'У вас {$count} новых сообщений'),(78262,32,8995,'Нет'),(78263,32,9462,'Базовый'),(78264,32,1894,'Изображение не верно'),(78265,32,13278,'Папка аватаров отсутствует или не найдена.'),(78266,32,18770,'Пусто'),(78267,32,16161,'Социальная сеть'),(78268,32,18771,'или'),(78269,32,9541,'Правила пользования'),(78270,32,3844,'Добавить ссылку'),(78271,32,3843,'Отправить'),(78272,32,3845,'Назад'),(78273,32,1968,'Страницы:'),(78274,32,14104,'Неверный URL'),(78275,32,16004,'Программное обеспечение для знакомств'),(78276,32,16167,'Политика сайта'),(78277,32,15992,'Политика сайта'),(78278,32,3241,'«'),(78279,32,3244,'»'),(78280,32,3243,'Следующий'),(78281,32,3242,'Предыдущий'),(78282,32,3236,'Ввести пароль'),(78283,32,3240,'Неверный пароль'),(78284,32,3238,'Войти'),(78285,32,3239,'Переадресация...'),(78286,32,3237,'Извините, сайт недоступен для просмотра.'),(78287,32,19103,'На проверке'),(78288,32,9683,'Мои настройки'),(78289,32,9692,'Отключить галочку, чтобы не получать массовую рассылку'),(78290,32,9691,'Подписаться на рассылку'),(78291,32,14279,'Общее'),(78292,32,9690,'пусто'),(78293,32,9689,'Настройки не изменены'),(78294,32,9688,'Настройки изменены'),(78295,32,9687,'Массовая рассылка'),(78296,32,9686,'Сохранить'),(78297,32,10626,'Видеть мое присутствие на сайте'),(78298,32,9870,'Просмотреть мой профиль'),(78299,32,4103,'<a href=\"{$userUrl}\">{$userName}</a> добавил(а) комментарий к <a href=\"{$profileUrl}\">вашему профилю</a>.'),(78300,32,15012,'Модерация'),(78301,32,3351,'Активировать'),(78302,32,3077,'Удалить'),(78303,32,15225,'Публичный профиль {$username} на {$site_name}.'),(78304,32,2674,'{$username}'),(78305,32,2673,'{$username}'),(78307,32,16169,'VIP'),(78308,32,18441,'Мужчина'),(78309,32,15865,'Частный'),(78310,32,18442,'Женщина'),(78311,32,2394,'Добавить типы аккаунтов'),(78313,32,2397,'Общий пользователь'),(78314,32,2324,'Тип аккаунта добавлен'),(78315,32,18690,'Добавить тип аккаунта'),(78316,32,2000,'Добавить новый тип аккаунта'),(78317,32,18774,'Добавить новые значения'),(78318,32,2308,'Удалить'),(78319,32,2430,'Краткое описание'),(78320,32,2307,'Редактировать'),(78321,32,2429,'Вопрос'),(78322,32,3116,'лет'),(78323,32,2184,'Нет'),(78324,32,2183,'Да'),(78325,32,3053,'день/месяц/год'),(78326,32,3051,'Формат даты'),(78327,32,3052,'месяц/день/год'),(78328,32,2366,'Если у вас много вопросов профилей, будет удобнее просматривать секции как вкладки на странице просмотра профиля.'),(78329,32,2367,'Просматривать секции как вкладки'),(78330,32,18775,'Редактировать описание вопроса'),(78331,32,18776,'Редактировать название вопроса'),(78332,32,18777,'Редактировать значение вопроса'),(78333,32,2200,'Нет значений'),(78334,32,2329,'Добавить вопрос'),(78335,32,2330,'Редактировать типы аккаунтов'),(78336,32,2328,'Вопросы профилей'),(78337,32,2365,'Настройки'),(78338,32,1999,'Нет секции'),(78339,32,16178,'Спорт'),(78340,32,16179,'Футбол'),(78341,32,16180,'Теннис'),(78342,32,16181,'Баскетбол'),(78343,32,16182,'Воллейбол'),(78344,32,15916,'Национальность'),(78345,32,15917,'Араб'),(78346,32,15924,'Индеец'),(78347,32,15921,'Европеец'),(78348,32,15918,'Африканец'),(78349,32,15925,'Другое'),(78350,32,15922,'Индус'),(78351,32,15919,'Афроамериканец'),(78352,32,15926,'Испанец'),(78353,32,15923,'Метис'),(78354,32,15920,'Азиат'),(78355,32,15826,'Цвет глаз'),(78356,32,15827,'Янтарный'),(78357,32,15831,'Зеленый'),(78358,32,15828,'Голубой'),(78359,32,15832,'Светло-коричневый'),(78360,32,15829,'Карий'),(78361,32,15833,'Другой'),(78362,32,15830,'Серый'),(78363,32,15835,'Телосложение'),(78364,32,15836,'Стройное'),(78365,32,15840,'Полное'),(78366,32,15837,'Среднее'),(78367,32,15838,'Спортивное'),(78368,32,15839,'Плотное'),(78369,32,15850,'Курение'),(78370,32,15851,'Никогда'),(78371,32,15855,'Часто'),(78372,32,15852,'Бросаю'),(78373,32,15856,'Очень часто'),(78374,32,15853,'Редко'),(78375,32,15854,'В компании'),(78376,32,15286,'&nbsp;'),(78377,32,15287,'Цвет волос'),(78378,32,15288,'Блондин(ка)'),(78379,32,15289,'Брюнет(ка)'),(78380,32,15290,'Рыжий(ая)'),(78381,32,15800,'Черный'),(78382,32,16214,'Информация избранника о себе'),(78383,32,16223,'Волосы'),(78384,32,15842,'Употребление алкоголя'),(78385,32,15843,'Никогда'),(78386,32,15847,'Часто'),(78387,32,15844,'Бросаю'),(78388,32,15848,'Очень часто'),(78389,32,15845,'Редко'),(78390,32,15846,'В компании'),(78391,32,15629,'Никогда'),(78392,32,15633,'Очень часто'),(78393,32,15630,'Редко'),(78394,32,15631,'В компании'),(78395,32,15635,'Бросаю'),(78396,32,15632,'Часто'),(78397,32,15913,'Опишите свой стиль жизни и любимые занятия.'),(78398,32,15914,'Своими словами'),(78399,32,15874,'Музыка'),(78400,32,16235,'Спорт избранника'),(78401,32,16236,'Футбол'),(78402,32,16237,'Теннис'),(78403,32,16238,'Баскетбол'),(78404,32,16239,'Воллейбол'),(78405,32,15861,'Напишите то, что хотите видеть в другом человеке, чтобы все совпало. Постарайтесь не усложнять, избегайте списка требований. Вы не в магазине, это отпугивает отличных кандидатов.'),(78406,32,18445,'О человеке, которого я хочу встретить'),(78407,32,15875,'Каким видом спорта занимаетесь'),(78408,32,15876,'Вид спорта'),(78409,32,15299,'Футбол'),(78410,32,15300,'Баскетбол'),(78411,32,15301,'Волейбол'),(78412,32,15302,'Теннис'),(78413,32,15901,'Любимое занятие'),(78414,32,15902,'Книги'),(78415,32,15909,'Спорт'),(78416,32,15906,'Ночная жизнь'),(78417,32,15903,'Клубы'),(78418,32,15912,'Другое'),(78419,32,15907,'Интернет'),(78420,32,15904,'Друзья'),(78421,32,15908,'Природа'),(78422,32,15905,'Музыка'),(78423,32,15933,'Что люди должны знать о вас. Краткое, простое и забавное описание работает лучше всего.'),(78424,32,15541,'Обо мне'),(78425,32,2164,'Выбрать тип аккаунта'),(78426,32,2182,'Тип аккаунта'),(78427,32,1963,'Тип аккаунта'),(78428,32,2135,'День рождения'),(78429,32,16093,'Возраст'),(78430,32,15878,'Любимые книги'),(78431,32,15880,'Могу помогать другим с'),(78432,32,6020,'Установка'),(78433,32,6024,'Консультирование'),(78434,32,6021,'Выявление неисправностей'),(78435,32,6022,'Разработка плагина'),(78436,32,6023,'Дизайн темы'),(78437,32,2166,'Должен быть верным'),(78438,32,2043,'Электронный адрес'),(78439,32,15683,'Не важно'),(78440,32,15684,'В компании'),(78441,32,15685,'Часто'),(78442,32,15123,'Примеры:<br />\n<i>97304</i><br />\n<i><Берлин, Германия</i><br />\n<i>Силиконовая Долина, США</i>.<br /><br />\n\nНе указывайте точный домашний адрес или только название страны.'),(78443,32,15124,'Местоположение'),(78444,32,7528,'Дата регистрации'),(78445,32,15932,'Национальность'),(78446,32,15930,'Телосложение'),(78447,32,15860,'Курение'),(78448,32,15886,'Цвет волос вашего избранника'),(78449,32,15858,'Употребление алкоголя'),(78450,32,15888,'My match\'s eee'),(78451,32,15890,'Виды спорта моего избранника'),(78452,32,15911,'Любимое занятие'),(78453,32,15891,'Возраст избранника'),(78454,32,15893,'Я могу помогать другим с моего избранника'),(78455,32,15928,'Искать'),(78456,32,2698,'Ищу'),(78457,32,2702,'Мужчину'),(78458,32,2703,'Женщину'),(78459,32,19357,'&nbsp;'),(78460,32,2042,'Пароль'),(78461,32,15125,'Дата (Возраст)'),(78462,32,15126,'Дата (День рождения)'),(78463,32,2338,'Да/Нет'),(78464,32,2340,'Дата'),(78465,32,19752,'Single Choice - Regular (Медленные результаты, неограниченный)'),(78466,32,2339,'Несколько значений'),(78467,32,2342,'Пароль'),(78468,32,15127,'Выбор одного значения (селективная кнопка)'),(78469,32,13501,'Разница'),(78470,32,15128,'Выбор одного значения  (ниспадающее меню)'),(78471,32,2337,'Расширенный текст'),(78472,32,2334,'Тест'),(78473,32,2341,'URL'),(78474,32,2643,'Имя и фамилия'),(78475,32,2642,'Настоящее имя'),(78476,32,2707,'Ищу'),(78477,32,2723,'Развлечение'),(78478,32,2724,'Не важно'),(78479,32,2725,'Знакомство'),(78480,32,2726,'Дружбу'),(78481,32,2041,'Введите пароль еще раз'),(78482,32,2179,'&nbsp;'),(78483,32,2178,'Пол'),(78484,32,2180,'Мужчина'),(78485,32,2181,'Женщина'),(78486,32,2165,'Должен состоять только из букв и цифр.'),(78487,32,2047,'Имя пользователя'),(78488,32,1895,'Фото пользователя'),(78489,32,9540,'Я согласен с <a target=\'blank\' href=\'{$site_url}terms-of-use\' >правилами пользования</a>'),(78490,32,15799,'Внешний вид'),(78491,32,15896,'Интересы'),(78492,32,15711,'Стиль жизни'),(78493,32,15897,'Образование'),(78494,32,15401,'О моем избраннике'),(78495,32,2616,'Символы с картинки'),(78496,32,15898,'test'),(78497,32,2427,'Основное'),(78498,32,15899,'Местоположение'),(78499,32,9539,'Правила пользования'),(78500,32,2615,'Фото юзера'),(78501,32,13843,'Быстрые ссылки'),(78502,32,2270,'Оценить'),(78503,32,3012,'Гости не могут оценивать'),(78504,32,4046,'Вы не можете оценивать свой контент'),(78505,32,2581,'Оценка добавлена успешно'),(78506,32,18439,'Обязательные вопросы профиля'),(78507,32,5844,'Новый пароль'),(78508,32,6675,'Сбросить истекший код'),(78509,32,6677,'К сожалению, ваш код недействителен или истек. Пройдите по ссылке <a href=\"{$url}\">ссылке</a> и попробуйте сбросить код снова.'),(78510,32,5848,'Новый пароль'),(78511,32,5846,'Здравствуйте {$username}, введите новый пароль:'),(78512,32,5843,'Сменить пароль'),(78513,32,5852,'Длина пароля должна быть от {$min} до {$max} символов'),(78514,32,6050,'Здравствуйте {$username},\n<br />\nВы просили сменить пароль. Нажмите на ссылку ({$resetUrl}) для смены пароля.\n<br />\nЕсли ссылка не работает, введите код вручную ({$requestUrl}). Код: {$code}\n<br />\nЕсли вы не просили сменить пароль, проигнорируйте это письмо.\n<br /><br />\nСпасибо,\n{$site_name}<br />'),(78515,32,6051,'Здравствуйте {$username},\n\nВы просили сменить пароль. Нажмите на ссылку ({$resetUrl}) для смены пароля.\n\nЕсли ссылка не работает, введите код вручную ({$requestUrl}). Код: {$code}\n\nЕсли вы не просили сменить пароль, проигнорируйте это письмо.\n\nСпасибо,\n{$site_name}'),(78516,32,6052,'Сбросить код для нового пароля'),(78517,32,5851,'Значения в полях \'пароль\' и \'повторить пароль\' должны быть одинаковыми'),(78518,32,5849,'Повторить пароль'),(78519,32,5838,'Вставьте код'),(78520,32,5839,'Введите код, отправленный вам. Далее вы сможете ввести новый пароль.'),(78521,32,5841,'Запрос на смену пароля'),(78522,32,5842,'Пожалуйста, введите верный код'),(78523,32,5840,'Отправить'),(78524,32,5847,'Отправить'),(78525,32,5853,'Ваш пароль успешно изменен'),(78526,32,2146,'Количество элементов'),(78527,32,2145,'RSS'),(78528,32,2187,'Только заголовки'),(78529,32,2148,'Введите верный URL'),(78530,32,2147,'URL'),(78531,32,19705,'Сохранить и утвердить'),(78532,32,9295,'Поиск пользователей'),(78533,32,19703,'Отправить сообщение по электронной почте'),(78534,32,19362,'Пожалуйста, укажите причину блокирования участника.'),(78535,32,11310,'Просмотреть все вопросы'),(78536,32,3892,'Запомнить меня'),(78537,32,1940,'Вход'),(78538,32,19751,'Вы должны войти в систему, чтобы помечать содержание'),(78539,32,4132,'Подтвердить электронный адрес'),(78540,32,4134,'<p>\nЗдравствуйте,\n</p>\n<p>\nКто-то (вероятно, вы) указали данный электронный адрес как официальный адрес сайта <a href=\"{$site_url}\">{$site_name}</a>.\n</p>\n<p>\nДля завершения процедуры вам нужно подтвердить электронный адрес, нажав на ссылку: <a href=\"{$url}\">{$url}</a>\n</p>\n<p>\nВы также можете открыть ссылку <a href=\"{$verification_page_url}\">this URL</a> и вставить код: <b>{$code}</b>\n</p>\n<p>\nЕсли вы не регистрировались на этом сайте, проигнорируйте это письмо и ваш электронный адрес не будет использован.\n</p>\n<p>\nСпасибо,<br />\nАдминистрация<br />\n{$site_name}<br />\n{$site_url}\n</p>'),(78541,32,4133,'Здравствуйте,\n\nКто-то (вероятно, вы) указали данный электронный адрес как официальный адрес сайта {$site_name} ({$site_url}).\n\nДля завершения процедуры вам нужно подтвердить электронный адрес, пройдя по ссылке: {$url}\n\nВы также можете открыть ссылку: {$verification_page_url} и вставить код: {$code}\n\nЕсли вы не регистрировались на этом сайте, проигнорируйте это письмо и ваш электронный адрес не будет использован.\n\nСпасибо,\nАдминистрация\n{$site_name}\n{$site_url}'),(78542,32,2744,'Социальное программное обеспечение'),(78543,32,13669,'Сортировать по'),(78544,32,19702,'Тема'),(78545,32,18873,'Фото подгружается'),(78546,32,2660,'<center>Извините, ваш аккаунт заблокирован. Пожалуйста, свяжитесь с администрацией сайта.</center>'),(78547,32,19454,'Заблокировать $displayName}'),(78548,32,19364,'Здравствуйте{$realName},<br><br> Мы сообщаем, чтоваш аккаунт на {$site_name} был заблокирован по следующей причине:<br> {$suspendReason}<br><br> Спасибо,<br> {$site_name} Администрация'),(78549,32,19365,'Ваш аккаунт заблокирован'),(78550,32,19366,'Здравствуйте{$realName}, Мы сообщаем, что ваш аккаунт на {$site_name} был заблокирован по следующей причине: {$suspendReason} Спасибо, {$site_name} Администрация'),(78551,32,2655,'Заблокировать'),(78552,32,13841,'Теги'),(78553,32,14788,'Введите теги...'),(78554,32,1948,'Просмотр по тегам'),(78555,32,9251,'Поиск по тегам'),(78556,32,9417,'Пожалуйста, введите тег'),(78557,32,16270,'test'),(78558,32,14580,'Этот текст не может превышать {$max_symbols_count} символов'),(78559,32,3921,'Разрешить добавление изображения'),(78560,32,3928,'Выбрать файл'),(78561,32,3929,'С URL'),(78562,32,3930,'Галерея'),(78563,32,3927,'Лимит размера файла:'),(78564,32,3926,'Разрешенные типы файлов:'),(78565,32,3924,'URL изображения'),(78566,32,3925,'Вставить'),(78567,32,3922,'Максимальный размер файла'),(78568,32,3923,'Окно для ввода текста'),(78569,32,19753,'Тема добавлена'),(78570,32,4842,'Время'),(78571,32,9209,'<span class=\"ow_small\">Всего: <b>{$avgScore}</b></span> (<span class=\"ow_outline\">{$ratesCount}</span> rates)'),(78572,32,19367,'Удалить отметку'),(78573,32,3665,'Извините, страница с таким адресом уже существует'),(78574,32,2993,'Активировать снова'),(78575,32,3870,'Подгрузить'),(78576,32,10932,'Файл не записан на диск'),(78577,32,13386,'Расширение файла не разрешено.'),(78578,32,10934,'Файл не подгрузился!'),(78579,32,10929,'Файл подгрузился неполностью.'),(78580,32,10933,'Расширение PHP прекратило подгрузку файла. PHP не предоставляет способ проверки какое расширение вызвало остановку подгрузки файла.'),(78581,32,10928,'Подгруженный файл превышает максимальный размер файла.'),(78582,32,10930,'Файл не подгружен.'),(78583,32,10931,'Отсутствует временная папка.'),(78584,32,9176,'Добавить комментарий на стене'),(78585,32,9173,'Ежедневный визит'),(78586,32,9175,'Поиск пользователей'),(78587,32,9174,'Регистрация пользователя'),(78588,32,3828,'Пользователи'),(78589,32,2829,'Просмотр пользователей'),(78590,32,15296,'Пользователи, празднующие день рождения.'),(78591,32,15294,'Список наших участников: познакомьтесь со своими избранниками.'),(78592,32,15295,'Посмотреть кто онлайн.'),(78593,32,15326,'Искать пользователей в нашем сообществе.'),(78594,32,1974,'Участники'),(78595,32,2901,'Отметить как популярный'),(78596,32,2902,'Удалить из популярных'),(78597,32,3353,'Пользователь активирован'),(78598,32,3356,'<p>\nЗдравствуйте {$user_name},\n</p>\n<p>\nМы рады сообщить, что ваш аккаунт на <a href=\"{$site_url}\">{$site_name}</a> активирован. Вы можете войти: <a href=\"{$site_url}\">{$site_url}</a>\n</p>\n<p>\nНадеемся вам понравится наш сайт.\n</p>\n<p>\nСпасибо,<br />\nАдминистрация<br />\n<a href=\"{$site_url}\">{$site_name}</a>\n</p>'),(78599,32,3354,'Ваш аккаунт активирован'),(78600,32,3355,'Здравствуйте {$user_name},\n\nМы рады сообщить, что ваш аккаунт на {$site_name} активирован. Вы можете войти: {$site_url}\n\nНадеемся вам понравится наш сайт.\n\nСпасибо,\nАдминистрация\n{$site_name}\n{$site_url}'),(78601,32,11766,'Блокировать'),(78602,32,12180,'Вы действительно хотите заблокировать этого пользователя? <br /><br /> Это действие отменит и прекратит любое общение с вами.'),(78603,32,11773,'Извините, этот пользователь выбрал не общаться с вами'),(78604,32,13538,'Аккаунт удален'),(78605,32,14390,'Аккаунт удален'),(78606,32,2899,'Пользователь отмечен как популярный'),(78607,32,2994,'Выбранные пользователи были активированы'),(78608,32,11768,'Профиль заблокирован'),(78609,32,2657,'Профиль заблокирован'),(78610,32,11769,'Профиль разблокирован'),(78611,32,2661,'Профиль разблокирован'),(78612,32,2900,'Пользователь удален из списка популярных'),(78613,32,9469,'Активность'),(78614,32,14391,'Пообщаться'),(78615,32,4126,'Дни рождения'),(78616,32,2071,'Популярные'),(78617,32,2070,'Последние'),(78618,32,2132,'Онлайн'),(78619,32,9467,'сейчас онлайн'),(78620,32,2131,'Увы, нет профилей'),(78621,32,9495,'Количество'),(78622,32,9494,'Пользователи'),(78623,32,2877,'Нет пользователей'),(78624,32,6516,'{$username} <span class=\"ow_small\">{$status}</span>'),(78625,32,2671,'<center>Заблокированный пользователь</center>'),(78626,32,4043,'Вы не можете искать пользователей'),(78627,32,12867,'Назад к форме поиска'),(78628,32,4035,'Назад к форме поиска'),(78629,32,4021,'Поиск по имени'),(78630,32,4032,'Основной поиск'),(78631,32,4034,'Поиск'),(78632,32,4022,'Поиск пользователя'),(78633,32,4020,'Поиск'),(78634,32,2656,'Заблокировать'),(78635,32,11767,'Разблокировать'),(78636,32,2662,'Разблокировать'),(78637,32,2065,'Просмотреть все'),(78638,32,2144,'Детали профиля'),(78639,32,10253,'Смотреть еще'),(78640,32,2188,'Основные'),(78641,32,9406,'Вам не разрешено просматривать профили'),(78642,32,16271,'Создать социальный сайт'),(78643,32,3347,'<center>Ваш аккаунт проверяется</center>'),(78644,32,10289,'регистрация {$site_name}'),(78645,32,19368,'Добро пожаловать на сайт <a href=\"{$site_url}\">{$site_name}</a>! Спасибо за регистрацию. Вот необходимые ссылки:<br/><br/> - <a href=\"{$site_url}\">Главная страница</a><br/> - <a href=\"{$site_url}my-profile\">Сменить аватар</a><br/> - <a href=\"{$site_url}photo/viewlist/latest\">Подгрузить фото</a><br/> - <a href=\"{$site_url}profile/edit\">Изменить детали профиля</a><br/> - <a href=\"{$site_url}users\">Кто на сайте</a><br/><br/> <br/><br/> <a href=\"{$site_url}\">{$site_name}</a> Администрация<br/>'),(78646,32,19369,'Добро пожаловать на сайт {$site_name}!  Спасибо за регистрацию. Вот необходимые ссылки: - Главная страница: {$site_url} - Сменить аватар: {$site_url}my-profile - Подгрузить фото: {$site_url}photo/viewlist/latest - Изменить детали профиля: {$site_url}profile/edit - Кто на сайте: {$site_url}users {$site_name} Администрация{$site_url}'),(78647,32,19370,'<p> \"Добро пожаловать на сайт! Вот необходимые ссылки: </p> <ul class=\"ow_regular\"> <li><a href=\"profile/avatar\" change_avatar>Сменить аватар</a></li> <li><a href=\"javascript://\" photo_upload>Подгрузить фото</a></li> <li><a href=\"profile/edit\">Изменить детали профиля</a></li> <li><a href=\"my-profile\">Изменить профиль</a></li> <li><a href=\"users\">Кто на сайте</a></li> </ul> <p>  </p>'),(78648,32,19371,'photo_upload - Ссылка на добавление фото change_avatar - Изменить ссылку на аватар'),(78649,32,19372,'Добро пожаловать!'),(78650,32,6301,'Пробелы запрещены'),(78651,32,2086,'Удалить'),(78652,32,2085,'Редактировать'),(78653,32,2850,'Кастомизация пользователя'),(78654,32,2667,'Личный кабинет пользователя'),(78655,32,2115,'<span class=\"ow_mild_red\">Красные элементы</span> \"неподвижны\". Положение неподвижных элементов зафиксировано и пользователь не может изменять или редактировать их. Неподвижные элементы всегда занимают верхние позиции в контейнерах.'),(78656,32,2668,'Настройки профиля пользователя'),(78657,32,2114,'<span class=\"ow_mild_green\">Перетащить</span> элементы на образец страницы ниже для добавления функций или кастомных компонентов.'),(78658,32,2118,'Разрешить пользователям кастомизировать эту страницу'),(78659,32,2116,'Вы можете разрешить пользователям кастомизировать компоненты на страницах. Однако они не смогут менять дизайн страницы.'),(78660,32,11318,'<span class=\"ow_highlight\">Перетащить</span> ссылки на страницу для добавления функций или кастомных компонентов.\n            Эти ссылки активируются <a href=\"{$pluginsUrl}\">плагинами</a>. Если вы хотите, чтобы элемент остался на всех страницах, поместите его в боковую панель.'),(78661,32,11317,'Показывать ссылки:\n            <span class=\"ow_mild_green ow_small\" style=\"border: 1px solid rgb(204, 204, 204); padding: 1px 3px;\">только пользователям</span>\n            <span class=\"ow_mild_red ow_small\" style=\"border: 1px solid rgb(204, 204, 204); padding: 1px 3px;\">только гостям</span>\n            <span class=\"ow_small\" style=\"border: 1px solid rgb(204, 204, 204); padding: 1px 3px;\">всем</span>'),(78662,32,2058,'Кастомизировать страницу'),(78663,32,2134,'Кастомизировать страницу'),(78664,32,14785,'Показывать для всех пользователей'),(78665,32,2113,'Неподвижный'),(78666,32,2111,'Иконка'),(78667,32,14784,'Ограничить просмотр'),(78668,32,2110,'Показать заголовок'),(78669,32,2109,'Заголовок'),(78670,32,2112,'Обернутый в рамку'),(78671,32,2117,'Вы действительно хотите удалить этот виджет?'),(78672,32,6674,'Отключить JavaScript'),(78673,32,6673,'Включить JavaScript'),(78674,32,2108,'Общие настройки виджета'),(78675,32,2122,'Настройки'),(78676,32,2072,'Завершить кастомизацию'),(78677,32,2186,'Нет контента'),(78678,32,2381,'Личный кабинет'),(78679,32,2073,'Сбросить'),(78680,32,2958,'Вы действительно хотите удалить кастомизацию своего профиля?'),(78681,32,2076,'Доступные виджеты'),(78682,32,2220,'Выбранные:'),(78683,32,19704,'Написать сообщение'),(78684,32,10282,'Добавить'),(78685,32,10266,'Жирный'),(78686,32,10274,'Вставить HTML'),(78687,32,10272,'Вставить картинку'),(78688,32,10267,'Курсив'),(78689,32,10271,'Вставить ссылку'),(78690,32,10578,'Больше'),(78691,32,10269,'Вставить пронумерованный список'),(78692,32,10275,'Показать/Скрыть просмотр источника HTML'),(78693,32,10268,'Подчеркнутый'),(78694,32,10270,'Вставить непронумерованный список'),(78695,32,10273,'Вставить видео'),(78696,32,19471,'Данный файл не является видео файлом или видео не найдено'),(78697,32,10288,'Вставить HTML'),(78698,32,10612,'Ваш html сод:'),(78699,32,10283,'Вставить'),(78700,32,10284,'Пожалуйста, заполните поля `название` и `url` для вставки ссылки'),(78701,32,11578,'Открыть в новом окне'),(78702,32,11574,'Показывать текст:'),(78703,32,11577,'Ссылка должна вести на URL:'),(78704,32,10287,'Пожалуйста, вставьте код видео'),(78705,32,10285,'Вставить видео'),(78706,32,10613,'Вставьте код видео:'),(78707,32,19473,'Добавить ссылку на видео...'),(78708,32,4048,'Год'),(78709,32,8994,'Да'),(78710,32,9208,'Ваша оценка:'),(78711,32,18663,'Вопросы для подбора избранников не могут относится к типам аккаунтов'),(78712,32,15735,'Правила'),(78713,32,15736,'Настройки'),(78714,32,15737,'Поиск избранника'),(78715,32,15738,'Правила поиска избранника'),(78716,32,15739,'Настройки поиска избранника'),(78717,32,15740,'Выбрать'),(78718,32,18664,'Создать новый вопрос для подбора избранников'),(78719,32,15741,'Правило поиска избранника успешно удалено'),(78720,32,15742,'Значимость совместимости для данного правила'),(78721,32,15743,'Создать вопрос для поиска избранника'),(78722,32,15744,'Функция пользователя'),(78723,32,18665,'Чтобы добавить вопрос для алгоритма подбора избранников, просто выставьте категории веса<div class=\"coefficients_cont clearfix\" style=\"display:inline-block; vertical-align: middle; padding: 0 4px;\"> \n<a id=\"532abdbd8fa7f_item_1\" class=\"coefficient_item active\" href=\"javascript://\">&nbsp;</a> \n<a id=\"532abdbd8fa7f_item_2\" class=\"coefficient_item active\" href=\"javascript://\">&nbsp;</a> \n<a id=\"532abdbd8fa7f_item_3\" class=\"coefficient_item active\" href=\"javascript://\">&nbsp;</a> \n<a id=\"532abdbd8fa7f_item_4\" class=\"coefficient_item\" href=\"javascript://\">&nbsp;</a> \n<a id=\"532abdbd8fa7f_item_5\" class=\"coefficient_item\" href=\"javascript://\">&nbsp;</a> \n</div>\n внизу'),(78724,32,18666,'Другое'),(78725,32,18667,'Вопросы для подбора избранников'),(78726,32,18668,'Управление вопросами для подбора избранников'),(78727,32,18669,'только {$accountTypeName}'),(78728,32,15745,'Изменения не применены'),(78729,32,15746,'Добавить новое правило'),(78730,32,15747,'Коэффициент'),(78731,32,15748,'Вопрос 2'),(78732,32,18670,'Особые заметки'),(78733,32,15749,'Вопрос 1'),(78734,32,15750,'один раз в день'),(78735,32,15751,'раз в 3 дня'),(78736,32,15752,'никогда'),(78737,32,15753,'раз в неделю'),(78738,32,15754,'Отправлять новые анкеты пользователей по почте'),(78739,32,15755,'Добавить'),(78740,32,15756,'Удалить'),(78741,32,15757,'Редактировать'),(78742,32,18671,'Удалить'),(78743,32,15758,'Сохранить'),(78744,32,15759,'Совместимость'),(78745,32,15760,'Совместимость с вами'),(78746,32,15761,'Настройки сохранены'),(78747,32,15762,'Вы действительно хотите удалить это правило?\n\nВСЕ ВОПРОСЫ ДЛЯ ПОИСКА ИЗБРАННИКОВ СО ВСЕЙ ИНФОРМАЦИЕЙ ПРОФИЛЯ БУДУТ УДАЛЕНЫ. ЭТА ОПЕРАЦИЯ НЕОБРАТИМА.'),(78748,32,19800,'Расстояние'),(78749,32,15763,'До скорого,<br />\nАдминистрация сайта {$site_name}<br />\n{$site_url}'),(78750,32,15764,'Последние избранники для вас <a href=\"{$site_url}\"> {$site_name}</a> :'),(78751,32,15765,'Здравствуйте {$userName},'),(78752,32,15766,'Новые избранники для <a href=\"{$userUrl}\">{$userName}</a>'),(78753,32,15767,'Новые избранники для вас'),(78754,32,15768,'До скорого,\nАдминистрация сайта {$site_name}\n{$site_url}'),(78755,32,15769,'Здравствуйте {$userName},\nНовые избранники для вас на {$site_name}:'),(78756,32,15770,'Последние'),(78757,32,15771,'Мои избранники'),(78758,32,19693,'Мои избранники'),(78759,32,18672,'Настройки подбора избранников'),(78760,32,18673,'{$questionLabel} моего избранника'),(78761,32,15772,'по совместимости'),(78762,32,15773,'по дате регистрации'),(78763,32,15774,'Новое правило для поиска избранника добавлено успешно'),(78764,32,16006,'Избранники не найдены.<br />Пожалуйста, <a href=\"{$profileEditUrl}\">заполните свой профиль,</a> чтобы найти идеальных избранников.'),(78765,32,18674,'Нет вопросов'),(78766,32,18675,'Вы можете указать детали человека, которого вы ищете. Помните, вы не в магазине, чтобы быть слишком придирчивым. Люди - не набор функций.'),(78767,32,18676,'Настройки подбора избранников'),(78768,32,18677,'Настройки подбора избранников'),(78769,32,18678,'Общие'),(78770,32,15775,'Правило для поиска избранника не изменено, пожалуйста, попробуйте снова'),(78771,32,15776,'Правило для поиска избранника успешно изменено'),(78772,32,16012,'неважно'),(78773,32,15777,'Лучшие'),(78774,32,15778,'Все вопросы профилей и информация, связанная с ними будут удалены. ЭТА ОПЕРАЦИЯ НЕОБРАТИМА.'),(78775,32,18679,'Просмотреть все'),(78776,32,19374,'Если вы хотите перенести систему Skadate в новое место, вам нужно заново сгенерировать лицензионный ключ. Смотрите <a href=\"https://hello.skadate.com/docs/manuals/licensing\" target=\"_blank\">https://hello.skadate.com/docs/manuals/licensing</a> более подробную информацию...'),(78777,32,16303,'Информация о лицензии'),(78778,32,19623,'Android'),(78779,32,19627,'Skalfa LLC'),(78780,32,19628,'Просмотр'),(78781,32,19626,'Найти избранника'),(78782,32,19624,'Банера'),(78783,32,16304,'Подтвердить'),(78784,32,16305,'Ввести лицензионный ключ'),(78785,32,16306,'Удаление брендинга'),(78786,32,16307,'Создан'),(78787,32,16308,'Верная директория'),(78788,32,16309,'Верный домен'),(78789,32,16310,'Истекает'),(78790,32,16311,'Верный IP'),(78791,32,16312,'Лицензионный ключ'),(78792,32,16313,'Зарегистрирован на'),(78793,32,19375,'Ваш лицензионный ключ недействителен. Ошибка возникает по нескольким причинам:\r\n<br />\r\n- Смена домена<br />\r\n- Смена IP адреса<br />\r\n- Смена пути path SkaDate <br />\r\n<br />\r\nЧтобы решить проблему, сгенерируйте лицензию в вашей клиентской зоне, следуя инструкциям - https://hello.skadate.com/docs/faq/miscellaneous/invalid-licence-key.\r\n<br />\r\nПосле генерации ключа, нажмите кнопку \"Подтвердить\"'),(78794,32,16315,'Неверный лицензионный ключ'),(78795,32,19622,'iOS'),(78796,32,16316,'Лицензионный ключ не валидирован'),(78797,32,19621,'Мобильный виджет'),(78798,32,18879,'Фильтровать настройки'),(78799,32,18880,'Только для залогиненных пользователей'),(78800,32,18881,'Показывать только пользователям, соотвествующим настройке \"Кого ищу\"'),(78801,32,18443,'Все типы аккаунтов на сайте'),(78802,32,18444,'текущий тип аккаунта пользователя'),(78803,32,19629,'Изображение для мобильной версии'),(78804,32,19630,'Изображение удалено'),(78805,32,19632,'Ошибка при подгрузке изображения'),(78806,32,19631,'Изображение добавлено успешно'),(78807,32,16094,'Я'),(78808,32,19625,'Показывать первым'),(78809,32,18882,'{$skadate_version} ({$skadate_build}). Версия платформы: {$oxwall_version} ({$oxwall_build})'),(78810,32,18883,'Поздравляем! У вас новый контакт. Начните общение с {$username}.'),(78811,32,19636,'Быстрые знакомства'),(78812,32,19637,'Легкая регистрация'),(78813,32,19638,'Регистрируйтесь на сайте и встречайте множество пользователей сегодня!'),(78814,32,19696,'<a href=\"profile/matches\">Алгоритм подбора избранника</a>'),(78815,32,19695,'<a href=\"mobile-version\">Совместим с мобильной версией</a>'),(78816,32,16317,'Пользователи'),(78817,32,16318,'Популярные'),(78818,32,16319,'Последние'),(78819,32,16320,'Онлайн'),(78820,32,16321,'Карусель пользователей'),(78821,32,16322,'Ошибка валидации'),(78822,32,19455,'Добро пожаловать на сайт <a href=\"\"{$site_url}\"\">{$site_name}</a>! Спасибо за регистрацию. Вот необходимые ссылки:<br/><br />\r\n\r\n- <a href=\"\"{$site_url}\"\">Main page</a> - Добро пожаловать!<br/>\r\n- <a href=\"\"{$site_url}photo/upload/index\"\">Upload photos</a> - вы получите _отрицательный_ ответ без фото;<br/>\r\n- <a href=\"\"{$site_url}profile/edit\"\">Изменить детали профиля</a> - еще раз, люди обратятся к вам если у них будет некоторое впечатление о вас. Потратьте время на заполнение профиля;<br/>\r\n- Измените настройки поиска избранника: {$site_url}matches/preferences -измените алгоритм подсчета ваших избранников на основании информации вашего профиля;<br/>  <a href=\"\"{$site_url}users/search\"\">Кто на сайте</a><br/><br />\r\n\r\nНам не терпится отправить вам интересных партнеров!<br/><br />\r\n\r\nАдминистрация <a href=\"\"{$site_url}\"\">{$site_name}</a><br/>'),(78823,32,19456,'Добро пожаловать на сайт {$site_name}! Спасибо за регистрацию. Вот необходимые ссылки:\r\n\r\n- Главная страница: {$site_url} - Добро пожаловать!\r\n- Подгрузить фото: {$site_url}photo/upload/index - вы получите _отрицательный_ ответ без фото;\r\n- Изменить детали профиля: {$site_url}profile/edit - - еще раз, люди обратятся к вам если у них будет некоторое впечатление о вас. Потратьте время на заполнение профиля;\r\n- Измените настройки поиска избранника: {$site_url}matches/preferences -измените алгоритм подсчета ваших избранников на основании информации вашего профиля; - Кто на сайте: {$site_url}users/search\r\n\r\nНам не терпится отправить вам интересных партнеров!\r\n\r\nАдминистрация {$site_name}\r\n{$site_url}'),(78824,32,19457,'Добро пожаловать на сайт! Вот необходимые ссылки: </p> <ul class=\"ow_regular\"> <li><a href=\"profile/avatar\" change_avatar>Изменить аватар</a></li> <li><a href=\"javascript://\" photo_upload>Добавить фото</a></li> <li><a href=\"profile/edit\">Изменить детали профиля</a></li> <li><a href=\"matches/preferences\">Изменить Настройки поиска избранника </a></li> <li><a href=\"users\">Кто на сайте</a></li> </ul> <p> Участвуйте в нашем сообществе! </p>'),(78825,32,18549,'около часа'),(78826,32,18550,'около %d часов'),(78827,32,18551,'около минуты'),(78828,32,18552,'около месяца'),(78829,32,18553,'около года'),(78830,32,19393,'Действия'),(78831,32,10840,'Отправить'),(78832,32,10841,'Новое сообщение добавлено'),(78833,32,10842,'Почта - Настройки плагина'),(78834,32,18554,'Настройки сообщений'),(78835,32,18555,'назад'),(78836,32,10843,'и'),(78837,32,18938,'Читать сообщения (использовать кредиты)'),(78838,32,10844,'удалить'),(78839,32,18556,'Приложение'),(78840,32,10845,'Приложения'),(78841,32,10846,'Прикрепить файлы'),(78842,32,18557,'Разрешить чат'),(78843,32,18558,'Прочитать сообщения чата'),(78844,32,10847,'Прочитать входящее сообщение'),(78845,32,18559,'Прочитать сообщения'),(78846,32,18560,'Продолжить диалог чата'),(78847,32,18561,'Продолжить диалог письма'),(78848,32,18562,'Продолжить диалог'),(78849,32,18563,'Начать диалог чата'),(78850,32,10848,'Отправить личное сообщение'),(78851,32,18564,'Начать диалог'),(78852,32,18565,'Использовать чат'),(78853,32,10849,'Почта'),(78854,32,18566,'день'),(78855,32,10850,'между'),(78856,32,19394,'Удалить'),(78857,32,19395,'Отметить как прочитанное'),(78858,32,19396,'Отметить как непрочитанное'),(78859,32,19397,'Массовые опции'),(78860,32,19398,'Сообщение \"{$entityType}\" не отображается'),(78861,32,18567,'Изменить настройки приватности сообщений тут'),(78862,32,18568,'Чат'),(78863,32,18569,'Пустой текст сообщения'),(78864,32,18570,'...'),(78865,32,19399,'Отметить все'),(78866,32,10851,'Проверить сейчас'),(78867,32,18571,'Нажмите, чтобы прочитать сообщения'),(78868,32,19683,'Вы хотите закрыть окошко сообщения?'),(78869,32,10852,'Написать сообщение'),(78870,32,18572,'Вы уверены?'),(78871,32,18573,'Вы действительно хотите удалить сообщения?'),(78872,32,14281,'<div class=\"ow_console_mailbox_cont\" target=\"_blank\">\n        <div class=\"ow_console_mailbox_title\"><a target=\"_blank\" href=\"{$userUrl}\">{$displayName}</a></div>\n        <div class=\"ow_console_mailbox_txt\">\n            {$text}\n        </div>\n    </div>'),(78873,32,18574,'Диалоги'),(78874,32,10853,'Показать {$showing} сообщений {$total}всего, {$new} новых'),(78875,32,18575,'У вас нет диалогов'),(78876,32,18576,'Ваш диалог пуст'),(78877,32,10854,'Диалог'),(78878,32,10855,'{$conversation_title} - {$site_name}'),(78879,32,18577,'Диалог не найден'),(78880,32,10856,'Отправить личное сообщение'),(78881,32,10857,'Сообщение НЕ отправлено'),(78882,32,10858,'Сообщение отправлено'),(78883,32,18578,'%d дней'),(78884,32,10859,'Удалить'),(78885,32,18579,'Удалить чат'),(78886,32,18580,'Перед деактивацией плагина Сообщения, нужно удалить все существующие чаты пользователей. Процесс удаления может занять некоторое время.'),(78887,32,10860,'Вы действительно хотите удалить выбранные диалоги?'),(78888,32,18581,'Предупреждение'),(78889,32,10861,'Удалить диалог'),(78890,32,10862,'Удалить'),(78891,32,10863,'Диалог удален'),(78892,32,18582,'Удалить историю'),(78893,32,10864,'{$count} диалог(ов) удалено'),(78894,32,10865,'Новое<a href=\"{$conversationUrl}\" >сообщение</a> от<a href=\"{$userUrl}\">{$userName}</a>'),(78895,32,10866,'Кто-то отправил мне новое сообщение'),(78896,32,10867,'Почта'),(78897,32,10868,'Включить приложения файла'),(78898,32,18585,'Включить звуки'),(78899,32,19400,'Массовая рассылка заблокирована. Вам нужно подождать {$send_message_interval} секунд перед отправкой нового сообщения.'),(78900,32,10869,'Приложения файлов отключены'),(78901,32,18586,'Найти контакт'),(78902,32,18587,'Друзья онлайн'),(78903,32,18588,'с этого момента'),(78904,32,10870,'Общие настройки'),(78905,32,18589,'Общие настройки'),(78906,32,10871,'Входящие'),(78907,32,10872,'Моя почта - {$site_name}'),(78908,32,10873,'Оставить непрочитанные'),(78909,32,18590,'Чаты'),(78910,32,18591,'Письма'),(78911,32,18592,'Письма + Чат'),(78912,32,18593,'Новое сообщение'),(78913,32,18594,'Поиск'),(78914,32,18595,'Последнее отправленное сообщение'),(78915,32,18596,'менее чем через минуту'),(78916,32,18597,'Загрузить предыдущие сообщения'),(78917,32,10874,'Почта'),(78918,32,14282,'Почта'),(78919,32,18598,'Тема:'),(78920,32,10875,'Отметить как прочитанное'),(78921,32,10876,'Отметить как непрочитанное'),(78922,32,10877,'Диалог отмечен как прочитанный'),(78923,32,10878,'Диалог отмечен как непрочитанный'),(78924,32,10879,'Диалог не отмечен как прочитанный'),(78925,32,10880,'{$count} диалог(и) отмеченные как прочитанные'),(78926,32,18599,'Отметить как непрочитанное'),(78927,32,10881,'Диалог не отмечен как непрочитанный'),(78928,32,10882,'{$count} диалог(и) отмеченные как непрочитанные'),(78929,32,10883,'Mb'),(78930,32,18600,'Сообщения'),(78931,32,18939,'Кто-то отправляет мне новое сообщение в чате'),(78932,32,18940,'Кто-то отправляет мне новое сообщение по почте'),(78933,32,18941,'Сообщения'),(78934,32,18942,'Сообщение'),(78935,32,14103,'Ой, какой длинный текст! Попробуйте сократить до {$maxLength} символов.'),(78936,32,18601,'Сообщение не авторизовано'),(78937,32,18602,'%d минут'),(78938,32,18603,'%d месяцев'),(78939,32,18604,'Настройки сохранены'),(78940,32,10884,'новый'),(78941,32,18605,'*** Новое сообщение ***'),(78942,32,18606,'{$count} новых'),(78943,32,10885,'У вас {$count} новых сообщения(й)!'),(78944,32,18607,'Новое сообщение'),(78945,32,18943,'Новое сообщение'),(78946,32,10886,'Новое сообщение от {$sendername}'),(78947,32,10887,'Здравствуйте {$username},<br/>\n<br/>\nВы получили новое сообщение от {$sendername} на {$site_name}.<br/>\n<br/>\nПосетите <a href=\"{$replyUrl}\">{$replyUrl}</a> чтобы ответить новое сообщение. <br/>\n<br/>\nС уважением, администрация {$site_name}'),(78948,32,10888,'Здравствуйте {$username},\n\nВы получили новое сообщение от {$sendername} на {$site_name}.\n\nПосетите{$replyUrl} чтобы ответить новое сообщение. \n\nС уважением, администрация {$site_name}'),(78949,32,18608,'Нет друзей онлайн'),(78950,32,10889,'Нет сообщений'),(78951,32,18609,'Другие'),(78952,32,18610,'Сообщения'),(78953,32,18611,'Деактивировать плагин Сообщения'),(78954,32,10890,'Нет доступа'),(78955,32,10891,'Перед тем как вы отправите сообщения, подтвердите, что вы человек. Пожалуйста, введите код:'),(78956,32,10892,'Значение неверно или превышает лимит сервера.'),(78957,32,18612,'Плагин <i>Сообщения</i> устанавливается. Время завершения установки зависит от количества пользователей и запуска планировщика задач.<br />Установлено: {$percents}%'),(78958,32,18613,'Плагин <i>Сообщения</i> устанавливается. Время завершения установки зависит от количества пользователей и запуска планировщика задач.<br />Установлено: {$percents}%'),(78959,32,18614,'Началася деактивация плагина Сообщения.'),(78960,32,18615,'Кто может пригласить меня в чат'),(78961,32,19686,'Вы не можете прочитать на сообщение.'),(78962,32,18616,'У вас недостаточно кредитов, чтобы читать сообщения.'),(78963,32,10893,'У вас нет привилегий на прочтение сообщения.'),(78964,32,18617,'Прочитать сообщения'),(78965,32,18618,'Получатель не выбран'),(78966,32,19687,'Вы не можете ответить на сообщение.'),(78967,32,19799,'Пожалуйста, купите тип участия или купите кредиты, чтобы ответить на сообщение чата'),(78968,32,18619,'У вас недостаточно привилегий, чтобы отвечать на сообщения.'),(78969,32,19797,'Пожалуйста, купите тип участия или купите кредиты,  чтобы ответить на разговор'),(78970,32,18620,'Сохранить настройки'),(78971,32,10894,'Выбранные'),(78972,32,10895,'Все'),(78973,32,18621,'Отправить'),(78974,32,10896,'Отправить'),(78975,32,19688,'Вы не можете отправлять сообщения.'),(78976,32,19798,'Пожалуйста, купите тип участия или купите кредиты, чтобы отправить чат сообщение'),(78977,32,18622,'Отправить сообщение'),(78978,32,18623,'Сообщение не отправлено:'),(78979,32,18624,'У вас недостаточно привилегий, чтобы писать сообщения.'),(78980,32,19796,'Пожалуйста, купите тип участия или купите кредиты для отправки сообщений'),(78981,32,10897,'Отправленные'),(78982,32,10898,'Отправленные'),(78983,32,10899,'Составить ответ'),(78984,32,10900,'Отправленные сообщения - {$site_name}'),(78985,32,18625,'Установка'),(78986,32,18626,'Плохая идея для больших сайтов'),(78987,32,18627,'Режим только для друзей'),(78988,32,18628,'Выбрать режим сообщений'),(78989,32,19401,'Разрешить отправлять сообщения каждые'),(78990,32,19402,'секунд'),(78991,32,18629,'Показать всех пользователей в списке участников чата'),(78992,32,18630,'Настройки сохранены'),(78993,32,10901,'Настройки изменены'),(78994,32,18631,'Показать всех пользователей'),(78995,32,18632,'Показать только онлайн пользователей'),(78996,32,19684,'\"Без звука\" выключен'),(78997,32,19685,'\"Без звука\" включен'),(78998,32,18633,'Невидимый для всех'),(78999,32,10902,'Тема'),(79000,32,18634,'Нет темы'),(79001,32,18635,'Открыть в чате'),(79002,32,10903,'Текст'),(79003,32,18636,'Текст сообщения'),(79004,32,10904,'Кому'),(79005,32,18637,'В прогрессе'),(79006,32,18638,'Плагин <i>Сообщения</i> деактивируется. Время завершения деактивации зависит от количества пользователей и запуска планировщика задач.<br />Деактивировано: {$percents}%'),(79007,32,10905,'Не записано на диск.'),(79008,32,10906,'Слишком много файлов подгружено!'),(79009,32,10907,'Файл не удален!'),(79010,32,10908,'Файл удален!'),(79011,32,10909,'Тип файла не разрешен.'),(79012,32,10910,'Файл не подгружен!'),(79013,32,10911,'Файл подгрузился неполностью.'),(79014,32,10912,'Расширение PHP прекратило подгрузку файла. PHP не предоставляет способ проверки какое расширение вызвало остановку подгрузки файла.'),(79015,32,10913,'Подгруженный файл превышает максимальный размер файла.'),(79016,32,10914,'{$file_name} файл:'),(79017,32,10915,'Файл подгрузки не найден!'),(79018,32,10916,'Файл не подгружен.'),(79019,32,10917,'Отсутствует временная папка.'),(79020,32,10918,'Максимальный размер приложения'),(79021,32,18639,'Читать сообщения чата'),(79022,32,16338,'Прочитать личное сообщение'),(79023,32,18640,'Продолжить диалог чата'),(79024,32,18641,'Продолжить диалог сообщения'),(79025,32,18642,'Начать диалог чата'),(79026,32,10919,'Отправить личное сообщение'),(79027,32,18643,'Список пользователей'),(79028,32,18644,'Пользователь, с которым вы пытаетесь связаться удален.'),(79029,32,18645,'Пользователь, с которым вы пытаетесь связаться неактивен.'),(79030,32,18646,'{$username} не может пользоваться чатом'),(79031,32,18647,'Пользователь не может читать сообщения'),(79032,32,18648,'Пользователь, с которым вы пытаетесь связаться не подтвержден.'),(79033,32,18649,'[username] не онлайн'),(79034,32,18650,'[username] онлайн'),(79035,32,18651,'Пользователь, с которым вы пытаетесь связаться неактивен.'),(79036,32,18652,'Пользователь, с которым вы пытаетесь связаться неактивен.'),(79037,32,18653,'Пользователь не найден'),(79038,32,18654,'Оффлайн'),(79039,32,18655,'Настройки'),(79040,32,18656,'Сохранить настройки'),(79041,32,18657,'Нстройки сообщений'),(79042,32,18658,'{$displayname} не на сайте'),(79043,32,18659,'Использовать чат'),(79044,32,18660,'У вас недостаточно привилегий, чтобы пользоваться чатом.'),(79045,32,14283,'Просмотреть все'),(79046,32,18661,'{$displayname} принимает запросы на чат только от друзей'),(79047,32,19470,'Подмигивание'),(79048,32,10920,'Вы можете написать ответ тут...'),(79049,32,10921,'У вас недостаточно привилегий для написания сообщений.'),(79050,32,19403,'Написать ответ...'),(79051,32,18662,'%d лет'),(79052,32,10922,'вы'),(79053,32,19838,'Номер счета'),(79054,32,19839,'Настройки счета'),(79055,32,19840,'доступен'),(79056,32,19841,'Сохранить'),(79057,32,19842,'Название формы кредитной карты'),(79058,32,19843,'Название формы онлайн проверки'),(79059,32,19844,'Настройка CCBill'),(79060,32,19845,'Продолжить'),(79061,32,19846,'Пароль сервиса Data Link'),(79062,32,19847,'Имя пользователя Data Link'),(79063,32,19848,'Имя формы EU DirectPay'),(79064,32,19849,'Имя формы EuroDebit'),(79065,32,19850,'CCBill'),(79066,32,19851,'Кредитная карта CCBill'),(79067,32,19852,'Оплата онлайн CCBill'),(79068,32,19853,'CCBill EU DirectPay'),(79069,32,19854,'CCBill EuroDebit'),(79070,32,19855,'<a href=\"{$url}\">плагин CCBill </a> нуждается в дополнительной настройке'),(79071,32,19856,'Периодические платежи'),(79072,32,19857,'Соль ключа динамических цен'),(79073,32,19858,'Свяжитесь с технической поддержкой CCBill для получения значения соли'),(79074,32,19859,'Выбрать способ оплаты'),(79075,32,19860,'Настройки изменены'),(79076,32,19861,'Номер субсчета'),(79077,32,19862,'Ноддерживаемые валюты'),(79078,32,18741,'Управление Google Analytics'),(79079,32,18742,'Пожалуйста, укажите верное значение'),(79080,32,18743,'Параметры изменены'),(79081,32,18744,'<i>Google Analytics</i> плагин должен быть настроен для корректной работы. <a href=\"{$link}\">Пройдите на страницу настройки.</a>'),(79082,32,18745,'Параметры'),(79083,32,18746,'Так Google Analytics идентифицирует ваш сайт.<a href=\"http://www.google.com/analytics/learn/setupchecklist.html\">Больше информации</a>'),(79084,32,18747,'Web Property ID'),(79085,32,18748,'Google Analytics'),(79086,32,16323,'Действие'),(79087,32,15413,'Действия'),(79088,32,19666,'Вы можете настроить за что пользователи получают и тратят кредиты.'),(79089,32,15415,'Добавить'),(79090,32,15416,'Добавить новый пакет'),(79091,32,15417,'Настройка кредитов'),(79092,32,19663,'Разрешить пользователям давать кредиты друг другу'),(79093,32,19661,'Количество'),(79094,32,15418,'Кредиты'),(79095,32,15419,'Купить кредиты'),(79096,32,16324,'Купить еще'),(79097,32,16325,'Номер субаккаунта кредитов'),(79098,32,15420,'Выбрать пакет кредитов'),(79099,32,19644,'Стоимость действий'),(79100,32,15421,'Кредиты'),(79101,32,15422,'Баланс кредитов'),(79102,32,15423,'Успешно дано {$amount} кредитов'),(79103,32,15424,'Ошибка. Пожалуйста, попробуйте снова с верным значением integer.'),(79104,32,18453,'История кредитов'),(79105,32,15425,'Баланс кредитов изменен'),(79106,32,19660,'Пакет кредитов'),(79107,32,16326,'Дата'),(79108,32,18448,'Отключить'),(79109,32,15426,'Получать кредиты'),(79110,32,16327,'Заработать кредиты'),(79111,32,15427,'<a href=\"{$userUrl}\">{$userName}</a> дал вам {$amount} кредитов. Поздравляем!'),(79112,32,15428,'Кредиты'),(79113,32,15429,'Кто-то дает мне кредиты'),(79114,32,18449,'Включить'),(79115,32,15430,'Получить больше кредитов'),(79116,32,15431,'Дать'),(79117,32,15432,'Дать кредиты:'),(79118,32,16328,'История'),(79119,32,19662,'История пуста'),(79120,32,19645,'Подарен <a href=\"{$url}\">{$displayName}</a>'),(79121,32,19646,'Подарен <a href=\"{$url}\">{$displayName}</a>'),(79122,32,15433,'Купить кредиты - {$site_name}'),(79123,32,15434,'Мои кредиты'),(79124,32,15435,'Мои кредиты'),(79125,32,15436,'У вас недостаточно кредитов, чтобы <b>{$actionTitle}</b>. <a href=\"{$getCreditsUrl}\">Получить больше кредитов</a>'),(79126,32,15437,'Нет действий'),(79127,32,15438,'Нет пакетов кредитов'),(79128,32,15439,'Пакет'),(79129,32,15440,'Пакеты кредитов на продажу'),(79130,32,15441,'Вы можете настроить как пользователи будут покупать кредиты. Создайте пакеты <b>X</b> кредитов за <b>Y</b>{$default_currency}.'),(79131,32,15442,'Пакеты изменены'),(79132,32,15443,'Пакет кредитов добавлен'),(79133,32,15444,'Пакет удален'),(79134,32,15445,'Список пакетов'),(79135,32,18886,'<p>Подтверждение того, что вы купили {$credits} кредиты за {$price} {$currency}. Вы можете сделать многое, используя кредиты!</p>\n<p>Спасибо за покупку! Желаем хорошего дня!</p>\n<p>С уважением,<br />\nКомманда {$site_name} </p>'),(79136,32,18887,'покупка {$credits} кредитов'),(79137,32,18888,'Подтверждение того, что вы купили {$credits} кредиты за {$price} {$currency}. Вы можете сделать многое, используя кредиты!\n\nСпасибо за покупку! Желаем хорошего дня!\n\nС уважением,\nКомманда {$site_name}'),(79138,32,19767,'Пакет кредитов: <b>{$credits}</b> кредитов за<b>{$curr} {$price}</b>.'),(79139,32,15447,'Цена'),(79140,32,15448,'Цена в кредитах'),(79141,32,18450,'ID продукта'),(79142,32,15449,'Дать кредиты'),(79143,32,15450,'Кредиты ({$credits})'),(79144,32,19658,'История покупок'),(79145,32,19647,'Сохранить'),(79146,32,16329,'Выбрать тип аккаунта'),(79147,32,19648,'Настройки'),(79148,32,19664,'Настройки сохранены'),(79149,32,15451,'Если значение положительное - кредиты будут прибавлены, если отрицательное - кредиты будут сниматься'),(79150,32,15452,'Тратить кредиты'),(79151,32,19657,'История просмотров'),(79152,32,19655,'Куплены'),(79153,32,19656,'Потрачены'),(79154,32,15453,'Отданные кредиты'),(79155,32,15454,'Настройка'),(79156,32,19659,'Пользователь'),(79157,32,19665,'Пакет кредитов'),(79158,32,19651,'Подарен пользователем'),(79159,32,19652,'Подарен пользователю'),(79160,32,19653,'Обновлен администрацией'),(79161,32,18451,'Вы получили {$amount} кредитов.'),(79162,32,18452,'Вы потратили {$amount} кредитов.'),(79163,32,16330,'Смотреть еще'),(79164,32,19654,'Статистика кредитов'),(79912,1,19926,'Application setup failed. Please check your App ID and Application Secret.'),(79913,1,19927,'Facebook Connect has been successfully configured. Enjoy!'),(79909,1,19923,'You have successfully logged in with your Facebook account'),(79910,1,19924,'Settings'),(79911,1,19925,'<p>\r\nFollow these 2 simple steps to enable Facebook Connect on your site:\r\n</p>\r\n<ul class=\"ow_regular ow_stdmargin\">\r\n<li>\r\n<b><a href=\"http://www.facebook.com/developers/createapp.php\" target=\"_blank\">Create application</a></b> and set a name for it. It should be your social network name so users remember that they signed up.\r\n</li>\r\n<li>You will be given <b>App ID</b> and <b>App Secret</b>. Copy them to the form below and you are all set!\r\n</li>\r\n</ul>\r\nAfter that Facebook Connect will be ready to use!'),(79906,1,19920,'Seems there are some problems with connection to Facebook. Please, try again later.'),(79905,1,19919,'Sorry, looks like this email is already used'),(79889,1,19903,'Start configuration from scratch'),(79890,1,19904,'Remove Facebook Application'),(79891,1,19905,'Return your Application’s settings to default'),(79892,1,19906,'Application reset failed. Please try again.'),(79893,1,19907,'Your Application has been reset.'),(79894,1,19908,'Repair Facebook Application'),(79895,1,19909,'Facebook profile info'),(79896,1,19910,'When users sign in using Facebook Connect their profile information is pulled out of Facebook. Later they can also sync their profiles. Here you need to set what info you want to sync. This works for text info only.'),(79897,1,19911,'Profile questions'),(79886,1,19900,'Customize your Facebook App’s URLs, icon, name, and more'),(79887,1,19901,'Edit your Facebook Application'),(79884,1,19898,'Facebook Connect'),(79883,1,19897,'<a href=\"{$href}\">Facebook Connect</a> requires configuration'),(79882,1,19896,'App ID'),(79880,1,19894,'API key'),(79881,1,19895,'App Secret'),(79206,32,15402,'Настройки платежного счета'),(79207,32,15403,'доступный'),(79208,32,15404,'Сохранить'),(79209,32,15405,'ID делового счета'),(79210,32,15406,'Настройка PayPal'),(79211,32,15407,'PayPal'),(79212,32,15408,'<a href=\"{$url}\">плагин PayPal </a> требует дополнительной настройки'),(79213,32,15409,'Периодические оплаты'),(79214,32,15410,'Тестовый режим'),(79215,32,15411,'Настройки изменены'),(79216,32,15412,'Поддерживаемые валюты'),(79217,32,16000,'Добавьте минимум 7 фото на ваш профиль'),(79218,32,18685,'<a href=\"javascript://\" id=\"{$id}\">Добавить</a> минимум 7 фото в ваш профиль'),(79219,32,16001,'Мои фото'),(79220,32,18680,'Сохранить'),(79221,32,18686,'Выбрать альбом'),(79222,32,18687,'Выберите альбом, состоящий минимум из 7 фото'),(79223,32,18688,'Пожалуйста, выберите альбом'),(79224,32,18681,'Настройки'),(79225,32,18682,'Настройки галереи изменены'),(79226,32,19408,'Настройки галереи профиля'),(79227,32,18683,'Установить фото из альбомов'),(79228,32,18684,'Установить все фото'),(79229,32,16002,'Просмотреть альбом'),(79230,32,16003,'Подгрузить фото'),(79231,32,15338,'Местоположение - настройки плагина'),(79232,32,15339,'Ключ API'),(79233,32,15340,'<b>Это необязательное поле.</b>\n<br/><br/>\nВсе приложения Google карты API* должны загружать карты API используя ключ API.<br/><br/> Использование ключа API позволяет вам следить за использованием приложений карты API, и подтверждает, что Google может связываться с нами по поводу вашего приложения при необходимости.<br/><br/>\nПройдите по <a href=\"https://developers.google.com/maps/documentation/javascript/tutorial\">ссылке</a> для более подробной информации'),(79234,32,15341,'Неверный ключ API'),(79235,32,18535,'Заполнять местоположение на поиске автоматически'),(79236,32,15486,'Назад к карте'),(79237,32,19786,'Bing'),(79238,32,19787,'Bing Maps требуют ключ API, чтобы функционировать должным образом. Пожалуйста, получите ключ <a href=\"https://msdn.microsoft.com/en-us/library/ff428642.aspx\"> здесь </a>. <a href=\"https://msdn.microsoft.com/en-us/library/gg585136.aspx\"> Нажмите</a>, чтобы узнать больше о Bing Maps.'),(79239,32,19788,'Ключ  Bing Api'),(79240,32,19672,'Просмотр пользователей'),(79241,32,19461,'Выберите страну из списка для получения более точных результатов поиска.'),(79242,32,19462,'Страна'),(79243,32,19671,'Не может быть больше чем {$distance} {$units}'),(79244,32,18537,'Единицы измерения расстояния'),(79245,32,16361,'Просмотреть события'),(79246,32,16362,'Карта'),(79247,32,19673,'Местоположение'),(79248,32,16363,'Просмотреть события'),(79249,32,15342,'Общие настройки'),(79250,32,19790,'Google'),(79251,32,15863,'город/район/почтовый индекс'),(79252,32,18539,'километры'),(79253,32,15343,'км от'),(79254,32,15344,'Карта'),(79255,32,19791,'Поставщик карт'),(79256,32,15485,'Просмотреть все ({$count})'),(79257,32,18540,'мили'),(79258,32,15345,'миль от'),(79259,32,19464,'Все страны'),(79260,32,15346,'Настройки изменены'),(79261,32,15347,'Карта'),(79262,32,15484,'{$location}'),(79263,32,19465,'Карта'),(79264,32,19466,'Широта центра карты'),(79265,32,19467,'Долгота центра карты'),(79266,32,19468,'Высота карты (в пикселях)'),(79267,32,19469,'Масштаб карты (значения от 0 до 17)'),(79268,32,1827,'Максимальный размер файла'),(79269,32,1820,'Фото не подгружается если превышен лимит размера. Максимальный лимит <b><i>0.5</i></b> Mb'),(79270,32,10746,'<a href=\"{$userUrl}\">{$user}</a> добавил(а) <a href=\"{$url}\">фото</a>.'),(79271,32,10747,'<a href=\"{$userUrl}\">{$user}</a> добавил(а) {$count} фото в <a href=\"{$albumUrl}\">{$albumName}</a> альбом'),(79272,32,9699,'Добавить описание'),(79273,32,3780,'Добавить'),(79274,32,19383,'Добавить фото'),(79275,32,9697,'Добавить теги'),(79276,32,2023,'Фото - Настройки плагина'),(79277,32,1815,'Общие'),(79278,32,18475,'Просмотреть настройки'),(79279,32,10065,'Улучшенная подгрузка'),(79280,32,10259,'НЕТ'),(79281,32,10265,'ДОБАВИТЬ ФОТО'),(79282,32,10263,'ЗАВЕРШЕНА'),(79283,32,10260,'ПРОДОЛЖИТЬ ПОДГРУЗКУ ФОТО?'),(79284,32,10576,'Активировать улучшенную подгрузку Adobe Flash, чтобы пользователи могли выбрать любое количество файлов, менять размер, поворачивать фото перед подгрузкой'),(79285,32,10261,'ОБРАБОТКА'),(79286,32,10264,'ПОДГРУЗИТЬ'),(79287,32,10262,'ПОДГРУЗКА'),(79288,32,14636,'ДА'),(79289,32,1835,'Альбом'),(79290,32,1841,'альбомы'),(79291,32,1847,'Альбом'),(79292,32,3822,'Альбом удален'),(79293,32,4045,'Вы не можете удалять альбомы'),(79294,32,19459,'Описание'),(79295,32,19668,'{$desc} ({$count})'),(79296,32,18476,'Мои фото'),(79297,32,18477,'Название альбома'),(79298,32,1831,'Максимальное количество фото в альбоме'),(79299,32,1824,'Не выставляйте слишком большое значение'),(79300,32,18478,'Вы превысили лимит {$limit} фото в альбоме'),(79301,32,1848,'изменен'),(79302,32,19384,'Активировать'),(79303,32,18479,'Вы уверены?'),(79304,32,9142,'Комментировать фото'),(79305,32,9143,'Владелец контента может удалять комментарии'),(79306,32,9141,'Подгрузить фото'),(79307,32,9140,'Просмотреть фото'),(79308,32,18909,'Вы не можете редактировать фото контент из-за недостаточных привилегий'),(79309,32,9139,'Фото'),(79310,32,2842,'Вы не можете подгрузить фото'),(79311,32,1837,'Вы не можете просматривать страницу из-за ограничений вашего статуса'),(79312,32,1833,'Сохранить'),(79313,32,1870,'Подгрузить'),(79314,32,18480,'Отметить все'),(79315,32,16331,'Выбрать альбом'),(79316,32,18481,'Выбрать альбом или создать новый'),(79317,32,18482,'Вы действительно хотите отменить подгрузку фото?'),(79318,32,2837,'Количество альбомов'),(79319,32,2838,'Показать название альбомов'),(79320,32,2119,'Количество отображаемых фото'),(79321,32,1849,'комментарии'),(79322,32,10748,'<a href=\"{$commentorUrl}\">{$commentor}</a> прокомментировал(а) <a href=\"{$ownerUrl}\">{$owner}</a>\'s <a href=\"{$url}\">фото</a>'),(79323,32,18912,'Комментарии:'),(79324,32,1916,'Вы действительно хотите удалить это фото?'),(79325,32,2048,'Вы действительно хотите удалить этот альбом?'),(79326,32,4154,'Вы действительно хотите удалить ВСЕ фото пользователя?'),(79327,32,19385,'добавил(а) новое фото'),(79328,32,19386,'изменил(а) фото'),(79329,32,19387,'Фото'),(79330,32,19388,'фото'),(79331,32,18483,'Оригинальная обложка'),(79332,32,18484,'Обложка преварительного просмотра'),(79333,32,16332,'Создать альбом'),(79334,32,18485,'Вырезать обложку альбома'),(79335,32,2046,'Удалить альбом'),(79336,32,4152,'Удалить контент и деактивировать плагин'),(79337,32,4151,'Перед деактивацией плагина Фото, нужно удалить все существующие фото пользователей. Процесс удаления может занять некоторое время. Поэтому мы активировали на сайте статус технического обслуживания и сайт будет активным после завершения процесса деактивации плагина.'),(79338,32,4150,'Преупреждение'),(79339,32,3803,'Вы действительно хотите удалить полноразмерные фото?'),(79340,32,3802,'Удалить полноразмерные фото ({$count})'),(79341,32,18486,'Удалить'),(79342,32,18487,'Удалить выбранное'),(79343,32,9696,'Описать фото'),(79344,32,10258,'Опишите свои фото'),(79345,32,1866,'Описание'),(79346,32,1869,'Добавить короткое описание фотографий'),(79347,32,18488,'Нажать для просмотра фото'),(79348,32,18489,'Перетащите фото или нажмите, чтобы загрузить'),(79349,32,18490,'Готово'),(79350,32,18491,'Разрешить пользователям скачивать фото'),(79351,32,18492,'Скачать'),(79352,32,18493,'Перетащить фото, чтобы начать подгрузку'),(79353,32,2045,'Редактировать альбом'),(79354,32,18494,'Редактировать обложку'),(79355,32,18495,'Эффекты'),(79356,32,18496,'Затемнение'),(79357,32,18497,'Слайд'),(79358,32,4001,'<a href=\"{$userUrl}\">{$userName}</a> добавил(а) комментарий к вашему <a href=\"{$photoUrl}\">фото</a>.'),(79359,32,4105,'Фото'),(79360,32,4002,'<a href=\"{$userUrl}\">{$userName}</a> добавил(а) комментарий к вашему <a href=\"{$photoUrl}\">фото</a>.'),(79361,32,10064,'Активировать улучшенную подгрузку'),(79362,32,18498,'Файл не записан на диск'),(79363,32,18499,'Расширение PHP прекратило подгрузку файла. PHP не предоставляет способ проверки какое расширение вызвало остановку подгрузки файла. Просмотрите список загружаемых типов файлов, используя phpinfo()'),(79364,32,18500,'Подгруженный файл превышает директиву MAX_FILE_SIZE указанную в HTML форме'),(79365,32,18501,'Подгруженный файл превышает директиву upload_max_filesize указанную в php.ini'),(79366,32,18502,'Файл не подгружен'),(79367,32,18503,'Отсутствует временная папка'),(79368,32,18504,'Добавленный файл подгрузился неполностью'),(79369,32,15000,'понравилось фото'),(79370,32,13419,'прокомментировал(а) фото'),(79371,32,13335,'прокомментировал(а) фото {$user}'),(79372,32,13336,'понравилось фото {$user}'),(79373,32,10281,'Фото'),(79374,32,10674,'и {$moreCount} более'),(79375,32,18505,'подгрузил(а)<a href=\"{$albumUrl}\"> {$number}</a> новые фото'),(79376,32,10675,'подгрузил {$number} новые фото в альбом <a href=\"{$albumUrl}\">{$albumName}</a> альбом'),(79377,32,18506,'подгрузил(а) {$number} новые фото в <a href=\"{$albumUrl}\">{$albumName}</a> альбом'),(79378,32,3062,'Значение неверно или превышает лимит сервера'),(79379,32,3840,'Фото'),(79380,32,10574,'Ограничение на полноразмерое изображение'),(79381,32,10575,'Все фото, превышающие размер (X или Y) будут уменьшены в размерах до данного лимита для хранения.'),(79382,32,13840,'Высота должна быть верной между {$min} и {$max}'),(79383,32,1828,'Размер основного изображения'),(79384,32,1821,'Размер фото на странице'),(79385,32,1838,'Отметить как популярное'),(79386,32,18507,'Альбомы'),(79387,32,18508,'Искать'),(79388,32,1811,'Популярные'),(79389,32,1812,'Последние'),(79390,32,18910,'Самые обсуждаемые'),(79391,32,18509,'Мои фото'),(79392,32,18510,'Фото'),(79393,32,1814,'Просмотр по тегам'),(79394,32,1813,'Топовые'),(79395,32,9058,'Популярные фото, добавленные пользователями - {$site_name}.'),(79396,32,9056,'Недавно добавленные фото пользователей {$site_name}.'),(79397,32,19389,'Самые обсуждаемые фото пользователей {$site_name}.'),(79398,32,9064,'Просмотреть фото по тегам: {$topTags}, и другие.'),(79399,32,9062,'Просмотреть фото, отмеченные \'{$tag}\'.'),(79400,32,9060,'Лучшие фото пользователей - {$site_name}.'),(79401,32,15226,'Подгрузить фото на {$site_name}.'),(79402,32,9071,'{$number} фото {$displayName}.'),(79403,32,9069,'Альбомы {$displayName} - {$albums}, и другие.'),(79404,32,9066,'{$title} - фото,отмеченные {$tags}.'),(79405,32,9057,'Популярные фото - {$site_name}'),(79406,32,9055,'Последние фото - {$site_name}'),(79407,32,18911,'Самые обсуждаемые фото - {$site_name}'),(79408,32,9063,'Просмотреть фото по тегам - {$site_name}'),(79409,32,9061,'{$tag}\' фото - {$site_name}'),(79410,32,9059,'Лучшие фото - {$site_name}'),(79411,32,9067,'Подгрузить фото - {$site_name}'),(79412,32,9070,'{$albumName} (альбомы {$displayName}) - {$site_name}'),(79413,32,9068,'альбомы {$displayName} - {$site_name}'),(79414,32,9065,'{$title} - фото на сайте {$site_name}'),(79415,32,16334,'Выбрать фото'),(79416,32,16335,'Фото'),(79417,32,16336,'Заменить фото'),(79418,32,18511,'Перенести в альбом'),(79419,32,18512,'Перенести в новый альбом'),(79420,32,2140,'Мои фото альбомы'),(79421,32,18513,'Фото ленты'),(79422,32,18514,'Вы не можете создать или подгрузить фото в альбом с такми названием.'),(79423,32,1852,'Следующее фото'),(79424,32,4070,'Некоторые фото не были добавлены из-за большого размера или неверного формата.'),(79425,32,1845,'Нет альбомов'),(79426,32,18515,'Пусто'),(79427,32,3781,'Нет фото'),(79428,32,1842,'Нет фото'),(79429,32,9698,'Нет выбранных фото'),(79430,32,4071,'Фото не были добавлены из-за большого размера или неверного формата.'),(79431,32,1854,'от'),(79432,32,1810,'Фото'),(79433,32,4147,'Деактивировать плагин фото'),(79434,32,1840,'альбомы пользователя {$user}'),(79435,32,19390,'<div class=\"ow_remark ow_smallmargin\">На проверке . . .</div>'),(79436,32,18516,'Количество ваших кредитов позволяет подгрузить {$uploaded} фото из {$count}. Купите кредиты, чтобы подгружать больше фото'),(79437,32,1830,'Фото на странице'),(79438,32,1823,'Списки просмотра фото и альбомов'),(79439,32,1836,'Фото'),(79440,32,3804,'Фото удалены'),(79441,32,1846,'{$total} фото'),(79442,32,1873,'подгружено {$count} фото'),(79443,32,19391,'{$count} фото на проверке, скоро будут доступны.'),(79444,32,1850,'Добавлен'),(79445,32,2040,'Альбом сохранен'),(79446,32,2907,'Фото удалено'),(79447,32,1853,'Фото'),(79448,32,2089,'Фото'),(79449,32,2908,'Фото НЕ удалено'),(79450,32,18517,'Фото перенесены успешно'),(79451,32,1929,'Фото изменено'),(79452,32,19392,'Фото на проверке, скоро будет доступно.'),(79453,32,4065,'Ошибка при подгрузке фото'),(79454,32,1865,'Pic #{$number}'),(79455,32,18518,'Играть/Остановить'),(79456,32,18519,'Пожалуйста, подождите пока подгрузятся предыдущие фото'),(79457,32,4500,'Запущен процесс деактивации плагина фото.'),(79458,32,1829,'Размер изображения предварительного просмотра'),(79459,32,1822,'Размер фото на странице'),(79460,32,1851,'Предыдущее фото'),(79461,32,10068,'Просмотреть мои альбомы'),(79462,32,1818,'Ограничения'),(79463,32,1872,'Вы превысили разрешенное количество фотографий {$limit}'),(79464,32,18520,'Оценка'),(79465,32,18521,'(Общая {$count})'),(79466,32,18522,'(Общая {$count}. Ваша оценка {$score})'),(79467,32,3799,'Недавно подгруженные фото'),(79468,32,1839,'Удалить из популярных'),(79469,32,18523,'Сохранить как аватар'),(79470,32,18524,'Сохранить как обложку альбома'),(79471,32,18525,'Искать текст, @имя пользователя or #хэштег'),(79472,32,18526,'Ничего не найдено'),(79473,32,18527,'Выберите только 1 фото, чтобы установить обложку'),(79474,32,1834,'Настройки изменены'),(79475,32,18528,'Выставить как обложку альбома'),(79476,32,18529,'Выставить как обложку альбома'),(79477,32,18530,'Показать'),(79478,32,10066,'Простая подгрузка'),(79479,32,4064,'Размер фото не должен превышать <b>{$size}</b>Mb'),(79480,32,18531,'Время слайдшоу:&nbsp;'),(79481,32,18532,'Настройки'),(79482,32,1915,'Статус фото изменен'),(79483,32,14409,'Хранить полноразмерные фото'),(79484,32,12868,'Показать и хранить полноразмерные фото'),(79485,32,1867,'Теги'),(79486,32,1868,'Через запятую'),(79487,32,1843,'Поиск по тегам'),(79488,32,1844,'Результат поиска по тегам для:'),(79489,32,1975,'Редактировать фото'),(79490,32,2064,'{$total} альбомов'),(79491,32,18533,'Фото слишком маленькое для обложки альбома. Минимальный размер 330x330'),(79492,32,18534,'Неверный тип файла: {$name}'),(79493,32,4155,'В процессе'),(79494,32,4156,'Пожалуйста, подождите пока все фото удалятся. Процесс может занять время в зависимости от количества фото на сайте.'),(79495,32,1864,'Подгрузить'),(79496,32,1945,'(Лимит сервера: {$value})'),(79497,32,1885,'Подгрузить фото'),(79498,32,1816,'Настройки подгрузки'),(79499,32,9169,'Комментировать фото'),(79500,32,9168,'Добавить фото'),(79501,32,2840,'Альбомы'),(79502,32,1832,'Максимальное количество фото участника'),(79503,32,1825,'Не выставляйте слишком большое значение'),(79504,32,3805,'Просмотреть в полном размере'),(79505,32,1817,'Настройки просмотра'),(79506,32,3793,'Просмотреть все альбомы пользователя'),(79507,32,13839,'Ширина должна быть верной между {$min} и {$max}'),(79508,32,19694,'Принять или игнорировать:'),(79509,32,18721,'Принять'),(79510,32,18722,'Ваше подмигивание принято.'),(79511,32,18723,'Подмигивания'),(79512,32,18724,'<a href=\"{$userUrl}\">{$displayName}</a> принял(а) ваше подмигивание!'),(79513,32,18725,'<a href=\"{$userUrl}\">{$displayName}</a> подмигнул(а) вам!'),(79514,32,18726,'<a href=\"{$userUrl}\">{$displayName}</a> подмигнул(а) вам!'),(79515,32,18727,'Игнорировать'),(79516,32,18728,'Запрос принят'),(79517,32,18729,'Запрос отклонен'),(79518,32,18730,'Измвините, этот пользователь не желает общаться с вами'),(79519,32,18731,'Отправить сообщение'),(79520,32,18732,'Вы подмигнули.'),(79521,32,18944,'<img src=\"{$src}\" title=\"{$displayname}\">\n<br />\n<a href=\"{$url}\">{$displayname}</a> <a href=\"{$conversation_url}\">подмигнул</a> вам.'),(79522,32,18945,'{$displayname} подмигнул мне'),(79523,32,18946,'<img src=\"{$src}\" title=\"{$displayname}\">\n<a href=\"{$url}\">{$displayname}</a> <a href=\"{$conversation_url}\">подмигнул</a> вам.'),(79524,32,18733,'подмигнуть'),(79525,32,18734,'подмигнул вам, проявляя свой интерес. Подмигните или отправьте сообщение.'),(79526,32,18735,'подмигнул вам. Подмигните или отправьте сообщение.'),(79527,32,18736,'Подмигивание отправлено. Вы сможете снова подмигнуть через 7 дней.'),(79528,32,18947,'Кто-то подмигнул мне'),(79529,32,18737,'Подмигнуть'),(79530,32,18948,'<img src=\"{$src}\" title=\"{$displayname}\"><br />\n<a href=\"{$url}\">{$displayname}</a> <a href=\"{$home_url}\">подмигнул</a> вам.'),(79531,32,19409,'{$displayname} подмигнул вам'),(79532,32,18950,'<img src=\"{$src}\" title=\"{$displayname}\"> <a href=\"{$url}\">{$displayname}</a> <a href=\"{$home_url}\">подмигнул</a> вам.'),(79533,32,18738,'Ошибка при отправке подмигивания'),(79534,32,18739,'Подмигивание отправлено'),(79535,32,18740,'Вы успешно подмигнули'),(79536,32,15130,'Настройки'),(79537,32,15131,'Ограничить количество гостей до'),(79538,32,15132,'месяц(ев)'),(79539,32,15133,'Извините, гостей нет'),(79540,32,19667,'Гости'),(79541,32,15134,'Настройка плагина Мои гости'),(79542,32,15135,'Настройки изменены'),(79543,32,15136,'Хранить данные о посещениях в течении'),(79544,32,15137,'Недавно просмотрели меня'),(79545,32,15138,'Просмотрели меня:'),(79546,32,15348,'Разрешения'),(79547,32,15349,'Добавить тип участия'),(79548,32,15350,'Добавить'),(79549,32,18454,'Добавить платный тариф'),(79550,32,15351,'Добавить новый план'),(79551,32,15352,'Добавить роль'),(79552,32,18455,'Добавить пробный тариф'),(79553,32,15353,'Просмотр пользователей по типу участия'),(79554,32,15354,'Типы участия'),(79555,32,18889,'Настройки'),(79556,32,15355,'Подписка'),(79557,32,15356,'Настройка типа участия'),(79558,32,18890,'Управление типами участия'),(79559,32,15357,'Просмотр пользователей по типу участия'),(79560,32,18456,'После удаления типа участия, участники получат:'),(79561,32,15537,'и более...'),(79562,32,15358,'Платный тип участия'),(79563,32,15359,'Оплатить'),(79564,32,15360,'Выбрать план'),(79565,32,15538,'Расширьте свой тип участия для получения больших привилегий:'),(79566,32,18457,'Выберите роль пользователя для нового типа участия и создайте минимум 1 план:'),(79567,32,15361,'Создайте минимум 1 план для этого типа участия'),(79568,32,19378,'через {$hours} часов'),(79569,32,19379,'через {$minutes} минут'),(79570,32,19380,'через 1 час'),(79571,32,19381,'через минуту'),(79572,32,19382,'завтра'),(79573,32,15362,'дней'),(79574,32,18458,'осталось {$days} дней (текущий)'),(79575,32,18459,'Удалить'),(79576,32,18460,'Удалить тип участия'),(79577,32,15363,'Удалить выбранные'),(79578,32,15364,'Показать пользователей с'),(79579,32,18461,'Редактировать тип участия'),(79580,32,15365,'Истекает'),(79581,32,18462,'Показать типы участия для типа аккаунта'),(79582,32,18463,'Добавить, редактировать или удалить тарифы для<b>{$membership}</b> типа участия:'),(79583,32,15366,'Тип участия'),(79584,32,15367,'Тип участия добавлен'),(79585,32,19771,'месяцы'),(79586,32,15368,'Мой тип участия'),(79587,32,18891,'Уведомления'),(79588,32,15369,'Планы не добавлены'),(79589,32,15370,'Выберите минимум один план'),(79590,32,15371,'Выберите минимум один тип участия'),(79591,32,15372,'Период'),(79592,32,18464,'Добавить, редактировать или удалить тарифы для <b>{$membership}</b> типа участия:'),(79593,32,15373,'Планы'),(79594,32,15374,'Планы удалены'),(79595,32,15375,'Планы изменены'),(79596,32,15376,'План добавлен'),(79597,32,15377,'Вы действительно хотите удалить выбранные планы?'),(79598,32,18892,'<p>Здравствуйте {$name},</p>\n<p>Сообщаем, что ваш {$membership} тип участия истек, но это не должно вас останавливать! С радостью приглашаем вас продлить тип участия, чтобы оставаться в нашем сообществе и пользоваться всеми привилегиями!</p>\n<p>Если у вас есть вопросы, просто дайте нам знать! Мы всегда готовы вам помочь!</p>\n<p>С уважением,<br />\nкоманда {$site_name}</p>'),(79599,32,18893,'Ваш тип участия истек'),(79600,32,18894,'Здравствуйте {$name},\n\nСообщаем, что ваш {$membership} тип участия истек, но это не должно вас останавливать! С радостью приглашаем вас продлить тип участия, чтобы оставаться в нашем сообществе и пользоваться всеми привилегиями!\n\nЕсли у вас есть вопросы, просто дайте нам знать! Мы всегда готовы вам помочь!\n\nС уважением,\nкоманда {$site_name}'),(79601,32,18895,'<p>Здравствуйте {$name},</p>\n<p>Надеемся вам нравится быть частью нашего сообщества. Вот дружеское напоминание о том, что {$membership} тип участия истекает через {$days} дней, будет здорово если вы проверите удобный для вас способ оплаты, чтобы быть с нами.</p>\n<p>если у вас есть вопросы  - обращайтесь, мы рады помочь!</p>\n<p>С уважением,<br />\nкоманда {$site_name}</p>'),(79602,32,18896,'Ваш тип участия истекает через {$days} дней'),(79603,32,18897,'Здравствуйте{$name},\n\nНадеемся вам нравится быть частью нашего сообщества. Вот дружеское напоминание о том, что {$membership} тип участия истекает через {$days} дней, будет здорово если вы проверите удобный для вас способ оплаты, чтобы быть с нами.\n\nЕсли у вас есть вопросы  - обращайтесь, мы рады помочь!\n\nС уважением,\nкоманда {$site_name}'),(79604,32,18898,'<p>Здравствуйте{$name},</p>\n<p>Надеемся вам нравится быть частью нашего сообщества. Вот дружеское напоминание о том, что ваш {$membership} тип участия истекает через 24 часа, будет здорово если вы проверите удобный для вас способ оплаты, чтобы быть с нами.</p>\n<p>Если у вас не настроена периодическая оплата, вы можете дегко ее настроить для обеспечения постоянного и непрерывного премиум доступа, предоставляемого{$membership} типом участия.</p>\n<p>Если у вас есть вопросы  - обращайтесь, мы рады помочь!</p>\n<p>С уважением,<br />\nкоманда{$site_name}</p>'),(79605,32,18899,'Ваш тип участия истекает через 24 часа'),(79606,32,18900,'Здравствуйте{$name},\n\nНадеемся вам нравится быть частью нашего сообщества. Вот дружеское напоминание о том, что ваш {$membership} тип участия истекает через 24 часа, будет здорово если вы проверите удобный для вас способ оплаты, чтобы быть с нами.\n\nЕсли у вас не настроена периодическая оплата, вы можете дегко ее настроить для обеспечения постоянного и непрерывного премиум доступа, предоставляемого {$membership} типом участия.\n\nЕсли у вас есть вопросы  - обращайтесь, мы рады помочь!\n\nС уважением,\nкоманда{$site_name}'),(79607,32,18901,'<p>Здравствуйте {$name},</p>\n<p>Спасибо за продление типа участия! Мы надеемся вы наслаждаетесь привилегиями вашего нового типа участия на нашем сайте, который продлится до{$expirationDate}. Пожалуйста, обращайтесь к нам если у вас есть вопросы, мы всегда готовы вам помочь.</p>\n<p>С уважением,<br />\nкоманда{$site_name}</p>'),(79608,32,18902,'Успешное продление {$membership} типа участия'),(79609,32,18903,'Здравствуйте {$name},\n\nСпасибо за продление типа участия! Мы надеемся вы наслаждаетесь привилегиями вашего нового типа участия на нашем сайте, который продлится до{$expirationDate}. Пожалуйста, обращайтесь к нам если у вас есть вопросы, мы всегда готовы вам помочь.\n\nС уважением,\nкоманда{$site_name}'),(79610,32,18904,'<p>Здравствуйте {$name},</p>\n<p>Ваш {$membership} тип участия обновлен, так как у вас есть периодический {$membership} тип участия настроен на нашем сайте. Спасибо за ваше участие в нашем сообществе!</p>\n<p>И конечно, если у вас есть идеи, вопросы/пожелания, просто сообщите нам!</p>\n<p>С уважением,</br />\nкоманда {$site_name}</p>'),(79611,32,18905,'Ваш тип участия возобновлен'),(79612,32,18906,'Здравствуйте{$name},\n\nВаш {$membership} тип участия обновлен, так как у вас есть периодический {$membership} тип участия настроен на нашем сайте. Спасибо за ваше участие в нашем сообществе!\nИ конечно, если у вас есть идеи, вопросы/пожелания, просто сообщите нам!\nС уважением,\nкоманда{$site_name}'),(79613,32,19781,'{$period} {$periodUnits} - {$price} {$currency}'),(79614,32,19773,'{$price} {$currency} за {$period} {$periodUnits} (повторяющееся)'),(79615,32,19774,'{$period} {$periodUnits} пробного типа участия'),(79616,32,15380,'<a href=\"{$url}\">Платный тип участия</a> плагин должен быть настроен для корректной работы. <br />Вам нужно создать минимум один тип участия с минимум одним планом.'),(79617,32,15381,'Цена'),(79618,32,18466,'ID продукта'),(79619,32,15382,'Периодический'),(79620,32,18907,'Напомнить пользователям по почте о том, что их тип участия истекает через'),(79621,32,18467,'Выбрать роль'),(79622,32,15383,'Роль пользователя для данного типа участия'),(79623,32,18468,'Установить'),(79624,32,18908,'Настройки изменены'),(79625,32,18469,'Установить тип участия:'),(79626,32,18470,'Установить период:'),(79627,32,15384,'Показывать на странице подписки'),(79628,32,15385,'Подписка'),(79629,32,15386,'Подписка'),(79630,32,18471,'Пробный'),(79631,32,19775,'Вы получили {$period} {$periodUnits} пробного типа участия'),(79632,32,18473,'Пробный тип участия может использоваться только один раз'),(79633,32,15387,'Тип участия удален'),(79634,32,15388,'Список типов участия'),(79635,32,15389,'Вы действительно хотите удалить выбранные типы участия?'),(79636,32,15390,'Информация о типе участия'),(79637,32,15391,'Тип участия удален'),(79638,32,15539,'Подписаться'),(79639,32,18474,'Тип участия изменен'),(79640,32,15540,'Ваш тип участия'),(79641,32,18543,'Добавить друга'),(79642,32,15306,'Войдите, чтобы добавлять друзей'),(79643,32,18544,'Блокировать'),(79644,32,15308,'Войдите, чтобы блокировать пользователей'),(79645,32,18545,'Следовать'),(79646,32,15310,'Войдите, чтобы следовать за пользователями'),(79647,32,18546,'Удалить из друзей'),(79648,32,15312,'Войдите, чтобы удалять друзей'),(79649,32,18547,'Активировать'),(79650,32,15314,'Войдите, чтобы разблокировать пользователей'),(79651,32,18548,'Не следовать'),(79652,32,15316,'Войдите, чтобы не следовать за пользователями'),(79653,32,15317,'Запрос на дружбу отправлен'),(79654,32,18541,'Пусто'),(79655,32,18542,'<p style=\"margin-bottom: 32px;\">управлять виджетом быстрый поиск. Вопросы являются общими для всех типов аккаунтов на сайте<br>\n        <span class=\"ow_highlight\">Перетащите</span> в схему быстрого поиска для добавления<br>\n        <span class=\"ow_highlight\">Перетащите/span> вопросы вне виджета для удаления из быстрого поиска </p>'),(79656,32,15318,'Расширенный поиск'),(79657,32,15328,'Возраст'),(79658,32,15535,'Пожалуйста, заполните верный возраст'),(79659,32,16337,'Пожалуйста, заполните возраст от {$min} до {$max}'),(79660,32,15319,'Пользователь заблокирован'),(79661,32,18913,'дней'),(79662,32,18914,'Расстояние'),(79663,32,19682,'Доступно если установлен плагин \"Google карта\"'),(79664,32,19793,'Включить поиск по имени пользователя'),(79665,32,15320,'Вы следуете за {$displayName}'),(79666,32,18916,'Общие настройки'),(79667,32,18917,'Скрывать активность пользователя через'),(79668,32,18918,'км'),(79669,32,18919,'Последняя активность'),(79670,32,18920,'Загрузить ранние профили'),(79671,32,15222,'Карта'),(79672,32,18921,'Совместимость'),(79673,32,19680,'Совместимость избранников'),(79674,32,19681,'Доступно если установлен плагин \"Подбор избранников\"'),(79675,32,16013,'Поиск'),(79676,32,18924,'мили'),(79677,32,19678,'Поиск'),(79678,32,19674,'Избранники не найдены. Пожалуйста, попробуйте новый поиск, чтобы найти больше пользователей.'),(79679,32,19675,'Избранники не найдены. Пожалуйста, попробуйте новый поиск, чтобы найти больше пользователей.'),(79680,32,19676,'Новый поиск'),(79681,32,16005,'Люди не найдены.<br />Попробуйте <a href=\"{$searchUrl}\">другой поиск</a> для больших результатов.'),(79682,32,15321,'только онлайн'),(79683,32,18925,'Расстояние'),(79684,32,18926,'Последняя активность'),(79685,32,19679,'Совместимость избранников'),(79686,32,18928,'Недавно зарегистрированный'),(79687,32,15220,'Фото галерея'),(79688,32,15221,'Детали профиля'),(79689,32,15322,'Быстрый поиск'),(79690,32,19677,'Текст кнопки Быстрого поиска'),(79691,32,18929,'Настройки быстрого поиска'),(79692,32,18930,'Недавно зарегистрированный'),(79693,32,15323,'Дружба отменена'),(79694,32,18931,'Сохранить'),(79695,32,19795,'Поиск по имени пользователя'),(79696,32,15536,'Я'),(79697,32,19792,'Настройки поиска'),(79698,32,15223,'Результат поиска'),(79699,32,18932,'Настройки сохранены.'),(79700,32,18933,'Сортировать настройки'),(79701,32,15324,'Пользователь разблокирован'),(79702,32,15325,'Вы больше не следуете за {$displayName}'),(79703,32,19794,'Имя пользователя'),(79704,32,18934,'Список пользователей'),(79705,32,18935,'Дата регистрации'),(79706,32,18936,'Просмотреть настройки'),(79707,32,18937,'с фото'),(79708,32,16272,'О'),(79709,32,16273,'Добавляю...'),(79710,32,16274,'Нижнее меню'),(79711,32,16275,'Новая кнопка'),(79712,32,16276,'Контент'),(79713,32,16277,'Название страницы'),(79714,32,16278,'Скрытая'),(79715,32,16279,'HTML контент'),(79716,32,16280,'Название кнопки'),(79717,32,16281,'Название'),(79718,32,18874,'Внешняя'),(79719,32,18875,'Тип страницы'),(79720,32,18876,'Локальная'),(79721,32,18877,'Url'),(79722,32,16282,'Новая страница'),(79723,32,16283,'Настройки'),(79724,32,16284,'Верхнее меню'),(79725,32,16285,'Скрытая'),(79726,32,16286,'Контент'),(79727,32,19617,'Личный кабинет'),(79728,32,16287,'Кнопки'),(79729,32,16288,'Личный кабинет'),(79730,32,16289,'Индексная'),(79731,32,16290,'Профиль'),(79732,32,18440,'Настройки'),(79733,32,18878,'Присоединяйтесь к нашему быстро растущему сообществу. Находите новых друзей, знакомьтесь, делитесь фото и видео. Наслаждайтесь!'),(79734,32,16291,'Мой личный кабинет'),(79735,32,16292,'{$site_name}'),(79736,32,16293,'{$site_name}'),(79737,32,16301,'Эта страница недоступна на мобильной версии, пожалуйста, посетите <a href=\"{$url}\">полную версию</a> сайта'),(79738,32,16294,'Пожалуйста, войдите'),(79739,32,16295,'Выйти'),(79740,32,16296,'Просмотреть мой профиль'),(79741,32,16297,'Личный кабинет мобильной версии'),(79742,32,16298,'Индексная страница мобильной версии'),(79743,32,16299,'Страница профиля мобильной версии'),(79744,32,19410,'Предварительная проверка'),(79745,32,19411,'Предварительная проверка'),(79746,32,19412,'Добавлено: {$time}'),(79747,32,19413,'Изменено: {$time}'),(79748,32,19802,'Для проверки'),(79749,32,19414,'На проверке'),(79750,32,19415,'Настройки сохранены'),(79751,32,19416,'{$content} активирован'),(79752,32,19417,'{$count} {$content} активированы'),(79753,32,19418,'На проверку'),(79754,32,19419,'добавил(а) новый {$content}'),(79755,32,19420,'изменил(а){$content}'),(79756,32,19421,'Предварительная проверка'),(79757,32,19422,'Тип контента'),(79758,32,13931,'Добавить баннер'),(79759,32,13932,'HTML код для рекламы, например, Google Adsense'),(79760,32,13933,'Код'),(79761,32,13934,'Выберите для каких стран должна показываться эта реклама. Если не выбрана страна, реклама будет показываться для всех стран.'),(79762,32,13935,'Страны'),(79763,32,13936,'Добавить'),(79764,32,13937,'Название'),(79765,32,13938,'Добавить баннер'),(79766,32,13939,'{$count} банер(ов)'),(79767,32,13940,'Баннер добавлен'),(79768,32,13941,'Баннер удален'),(79769,32,13942,'Баннер изменен'),(79770,32,13943,'Вы действительно хотите удалить баннер?'),(79771,32,13944,'Удалить'),(79772,32,13945,'Редактировать'),(79773,32,13946,'Редактировать'),(79774,32,13947,'Список баннеров'),(79775,32,19373,'реклама'),(79776,32,13948,'Список баннеров изменен'),(79777,32,13949,'Глобальная'),(79778,32,13950,'Пожалуйста, распределите баннера по соответствующим местам и страницам'),(79779,32,13951,'Управлять баннерами'),(79780,32,13952,'Размещение баннеров'),(79781,32,13953,'Прятать рекламу'),(79782,32,13954,'Реклама'),(79783,32,13955,'Редактировать'),(79784,32,13956,'Реклама'),(79785,32,13957,'Реклама'),(79786,32,13958,'Реклама'),(79787,32,19863,'Комментарии: {$count}'),(79788,32,19864,'Введите пароль'),(79789,32,19865,'Введите пароль для просмотра фото в \"{$albumName}\" альбоме:'),(79790,32,19866,'Выберите друзей, чтобы поделиться альбомом, или измените настройки приватности альбома'),(79791,32,19867,'Необходим плагин \"Фото\"'),(79792,32,19868,'Неверный пароль'),(79793,32,19869,'Или выберите из списка'),(79794,32,19870,'Пароль'),(79795,32,19871,'Защищено паролем'),(79796,32,19872,'Фото защищено паролем'),(79797,32,19873,'Защита паролем'),(79798,32,19874,'Все друзья'),(79799,32,19875,'Индивидуальные друзья'),(79800,32,19876,'Конфиденциальность: {$default}'),(79801,32,19877,'Защищен паролем'),(79802,32,19878,'Публичный'),(79803,32,19879,'Защитить альбом паролем'),(79804,32,19880,'Оценка недоступна для фото защищенных паролем'),(79805,32,19881,'Введите имя'),(79806,32,19882,'Выбранный'),(79807,32,19883,'Отправить'),(79808,32,19884,'просмотреть фото'),(79809,32,19885,'Ваш пароль'),(79810,32,18692,'Активность:'),(79811,32,18693,'До скорого,<br />\nадминистрация {$site_name}<br />\n{$site_url}'),(79812,32,18694,'Ваши избранные участники ждут вас, посетите их страницы, чтобы узнать новое на <a href=\"{$site_url}\">Моем сайте знакомств</a>'),(79813,32,18695,'Здравствуйте {$username},'),(79814,32,18696,'Эти люди ждут вас'),(79815,32,18697,'Вне критерия'),(79816,32,18698,'Избранные - настройки плагина'),(79817,32,18699,'Общие'),(79818,32,18700,'Последние'),(79819,32,18701,'Мои избранные'),(79820,32,18702,'Сохранено в <a href=\"{$bookmarksListURL}\">Избранные</a>'),(79821,32,18703,'Добавить в избранное'),(79822,32,18704,'Если пользователь не вернется на сайт некоторое время, отправить напоминание в письме об их избранных.'),(79823,32,18705,'Письмо с напоминанием'),(79824,32,18706,'Настройи уведомлений'),(79825,32,18707,'Онлайн'),(79826,32,18708,'Мои избранные'),(79827,32,18709,'через 10 дней'),(79828,32,18710,'через 20 дней'),(79829,32,18711,'через 30 дней'),(79830,32,18712,'Не отправлять'),(79831,32,18713,'Настройки сохранены успешно'),(79832,32,18714,'Сохранить'),(79833,32,18715,'Удалить из <a href=\"{$bookmarksListURL}\">Избранных</a>'),(79834,32,18716,'Удалить из избранных'),(79835,32,18717,'Прсмотреть все'),(79836,32,18718,'Смотреть еще'),(79837,32,18719,'Избранные'),(79838,32,18720,'Количество'),(79839,32,16339,'День недели, когда отправлять еженедельные сводки'),(79840,32,16340,'День'),(79841,32,16341,'Время, когда отправлять еженедельные и ежедневные сводки'),(79842,32,16342,'Время'),(79843,32,16343,'Уведомления'),(79844,32,16344,'Уведомления'),(79845,32,16345,'Настройки сохранены'),(79846,32,15219,'Отправлять автоматически по почте'),(79847,32,16346,'Настройки планировщика'),(79848,32,14411,'Уведомления'),(79849,32,19404,'Уведомления'),(79850,32,19405,'Уведомления'),(79851,32,16007,'Уведомления'),(79852,32,14413,'До скорого,<br />\n{$site_name}, администрация<br />\n{$site_url}'),(79853,32,14414,'Последняя активность <a href=\"{$site_url}\"> {$site_name}</a> для вас:'),(79854,32,14415,'Здравствуйте {$userName},'),(79855,32,14416,'Последняя активность на {$site_name}'),(79856,32,14417,'До скорого,\n{$site_name}, администрация\n{$site_url}'),(79857,32,14418,'Здравствуйте {$userName},\nПоследняя активность на {$site_name} для вас:'),(79858,32,16008,'Вы можете выбрать какие уведомления, которые будут отправляться по почте, если вы не зайдете на сайт в течении 2 дней.'),(79859,32,14420,'Сохранить'),(79860,32,14421,'Сохранить'),(79861,32,15007,'Автоматически'),(79862,32,15218,'Автоматически (если вы не заходите на сайт 2 дня)'),(79863,32,16347,'Ежедневно'),(79864,32,15006,'Немедленно'),(79865,32,15008,'Никогда'),(79866,32,16009,'Уведомления'),(79867,32,16348,'Еженедельно'),(79868,32,14422,'Настройки сохранены'),(79869,32,14423,'Изменить настройки и частоту отправки уведомлений'),(79870,32,14424,'Настройки не изменены'),(79871,32,16010,'Уведомления'),(79872,32,16011,'Уведомления'),(79873,32,19406,'Уведомления'),(79874,32,19407,'Уведомления'),(79875,32,14427,'Отписаться от всех уведомлений'),(79876,32,14428,'Код отписки истек'),(79877,32,14429,'Вы успешно отписались'),(79878,32,14430,'Вы действительно хотите отписаться от этих уведомлений?'),(79879,32,14431,'Отписаться от уведомлений данного типа'),(79915,1,19929,'CSRF token is invalid or expired'),(79916,1,19930,'Browse Blocked Users'),(79917,1,19931,'Blocked Users'),(79918,1,19932,'Check Updates'),(79919,1,19933,'Your site is now synchronized with the remote update serer'),(79920,1,19934,'Unable to connect to the remote server'),(79921,1,19935,'The license key is empty or invalid'),(79922,1,19936,'The server returned an invalid or unrecognized response'),(79926,1,19940,'Cannot connect to remote server. Please contact support team for assistance.');
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_language_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_log`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `key` varchar(100) DEFAULT NULL,
  `timeStamp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_log`
--

LOCK TABLES `%%TBL-PREFIX%%base_log` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_login_cookie`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_login_cookie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_login_cookie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `cookie` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `cookie` (`cookie`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_login_cookie`
--

LOCK TABLES `%%TBL-PREFIX%%base_login_cookie` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_login_cookie` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_login_cookie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_mail`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipientEmail` varchar(100) NOT NULL,
  `senderEmail` varchar(100) NOT NULL,
  `senderName` varchar(100) NOT NULL,
  `subject` text NOT NULL,
  `textContent` text NOT NULL,
  `htmlContent` text,
  `sentTime` int(11) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '1',
  `senderSuffix` int(11) NOT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='utf8_general_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_mail`
--

LOCK TABLES `%%TBL-PREFIX%%base_mail` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_mass_mailing_ignore_user`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_mass_mailing_ignore_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_mass_mailing_ignore_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_mass_mailing_ignore_user`
--

LOCK TABLES `%%TBL-PREFIX%%base_mass_mailing_ignore_user` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_mass_mailing_ignore_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_mass_mailing_ignore_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_media_panel_file`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_media_panel_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_media_panel_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `userId` int(11) NOT NULL,
  `data` text NOT NULL,
  `stamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_media_panel_file`
--

LOCK TABLES `%%TBL-PREFIX%%base_media_panel_file` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_media_panel_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_media_panel_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_menu_item`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_menu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_menu_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prefix` varchar(110) NOT NULL DEFAULT '',
  `key` varchar(150) NOT NULL DEFAULT '',
  `documentKey` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(70) NOT NULL DEFAULT '',
  `order` int(11) DEFAULT NULL,
  `routePath` varchar(255) DEFAULT NULL,
  `externalUrl` varchar(255) DEFAULT NULL,
  `newWindow` tinyint(1) DEFAULT '0',
  `visibleFor` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`,`prefix`),
  KEY `documentKey` (`documentKey`)
) ENGINE=MyISAM AUTO_INCREMENT=513 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_menu_item`
--

LOCK TABLES `%%TBL-PREFIX%%base_menu_item` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_menu_item` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_menu_item` VALUES (23,'base','main_menu_index','','main',2,'base_index',NULL,0,1),(479,'base','page_6820666','page_6820666','bottom',4,NULL,'http://www.skadate.com/',1,3),(478,'base','page_99448870','page_99448870','bottom',3,NULL,NULL,NULL,3),(24,'base','main_menu_my_profile','','hidden',1,'base_member_profile',NULL,0,2),(100,'admin','sidebar_menu_item_user_dashboard','','admin_pages',4,'admin_pages_user_dashboard',NULL,NULL,3),(41,'base','users_main_menu_item','','hidden',2,'users',NULL,NULL,3),(497,'base','mobile_version_menu_item','','bottom',1,'base.mobile_version',NULL,NULL,3),(170,'admin','sidebar_menu_item_plugin_mass_mailing','','admin_users',6,'admin_massmailing',NULL,NULL,3),(101,'admin','sidebar_menu_item_user_profile','','admin_pages',3,'admin_pages_user_profile',NULL,NULL,3),(97,'admin','sidebar_menu_main','','admin',1,'admin_default',NULL,NULL,3),(58,'admin','sidebar_menu_item_themes_customize','','admin_appearance',2,'admin_themes_edit',NULL,NULL,3),(73,'admin','sidebar_menu_item_themes','','admin_appearance',1,'admin_themes_choose',NULL,NULL,3),(74,'admin','sidebar_menu_item_pages_manage','','admin_pages',1,'admin_pages_main',NULL,NULL,3),(96,'admin','sidebar_menu_item_settings_language','','admin_settings',5,'admin_settings_language',NULL,NULL,3),(107,'admin','sidebar_menu_item_users','','admin_users',1,'admin_users_browse',NULL,NULL,3),(109,'admin','sidebar_menu_item_general','','admin_settings',1,'admin_settings_main',NULL,NULL,3),(115,'admin','sidebar_menu_item_questions','','admin_users',4,'questions_index',NULL,0,3),(120,'admin','sidebar_menu_item_dev_langs','','admin_dev',1,'admin_developer_tools_language',NULL,NULL,3),(211,'base','base_join_menu_item','','main',3,'base_join',NULL,NULL,1),(308,'admin','sidebar_menu_plugins_add','','admin_plugins',3,'admin_plugins_add',NULL,0,2),(268,'admin','sidebar_menu_item_special_pages','','admin_pages',2,'admin_pages_maintenance',NULL,0,2),(498,'ow_custom','mobile_terms_of_use','mobile_terms_of_use','mobile_bottom',2,'mobile_terms_of_use',NULL,NULL,3),(307,'admin','sidebar_menu_plugins_available','','admin_plugins',2,'admin_plugins_available',NULL,NULL,2),(495,'admin','sidebar_menu_item_smtp_settings','','admin_settings',6,'admin_settings_mail',NULL,NULL,3),(300,'admin','sidebar_menu_item_permission_moders','','admin_users',2,'admin_permissions_moderators',NULL,0,2),(304,'base','dashboard','','main',1,'base_member_dashboard',NULL,NULL,2),(306,'admin','sidebar_menu_plugins_installed','','admin_plugins',1,'admin_plugins_installed',NULL,NULL,2),(340,'admin','sidebar_menu_item_dashboard_finance','','admin',2,'admin_finance',NULL,0,3),(341,'admin','sidebar_menu_item_restricted_usernames','','admin_users',5,'admin_restrictedusernames',NULL,0,3),(415,'admin','sidebar_menu_item_user_settings','','admin_settings',2,'admin_settings_user',NULL,0,3),(405,'admin','sidebar_menu_item_users_roles','','admin_users',3,'admin_user_roles',NULL,0,3),(411,'base','page-119658','page-119658','bottom',2,NULL,NULL,NULL,3),(510,'membership','subscribe_page_heading_mobile','','mobile_top',9,'membership_subscribe',NULL,NULL,2),(492,'photo','photo','','main',7,'view_photo_list',NULL,NULL,3),(508,'matchmaking','matches_mobile_index','','mobile_top',8,'matchmaking_members_page',NULL,NULL,2),(481,'mobile','mobile_admin_navigation','','admin_mobile',1,'mobile.admin.navigation',NULL,NULL,3),(482,'mobile','mobile_admin_pages_index','','admin_mobile',2,'mobile.admin.pages.index',NULL,NULL,3),(483,'mobile','mobile_admin_pages_dashboard','','admin_mobile',3,'mobile.admin.pages.dashboard',NULL,NULL,3),(496,'mobile','mobile_pages_dashboard','','mobile_top',3,'base_member_dashboard',NULL,NULL,2),(485,'base','desktop_version_menu_item','','mobile_bottom',1,'base.desktop_version',NULL,NULL,3),(487,'base','index_menu_item','','mobile_top',1,'base_index',NULL,NULL,3),(488,'photo','mobile_photo','','mobile_top',2,'photo_list_index',NULL,NULL,3),(489,'mobile','mobile_admin_settings','','admin_mobile',4,'mobile.admin_settings',NULL,NULL,2),(491,'contactus','bottom_menu_item','','bottom',5,'contactus.index',NULL,NULL,3),(493,'admin','sidebar_menu_item_content_settings','','admin_settings',3,'admin_settings_user_input',NULL,NULL,3),(494,'admin','sidebar_menu_item_page_settings','','admin_settings',4,'admin_settings_page',NULL,NULL,3),(499,'ocsguests','ocsguests_menu_item','','mobile_top',4,'ocsguests_list',NULL,NULL,2),(511,'usearch','menu_item_search','','main',11,'users-search',NULL,NULL,3),(507,'matchmaking','matches_index','','main',9,'matchmaking_members_page',NULL,NULL,2),(509,'membership','subscribe_page_heading','','main',10,'membership_subscribe',NULL,NULL,2),(512,'usearch','mobile_menu_item_search','','mobile_top',10,'users-search',NULL,NULL,3);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_menu_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_place`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `editableByUser` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_place`
--

LOCK TABLES `%%TBL-PREFIX%%base_place` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_place` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_place` VALUES (1,'dashboard',0),(2,'index',0),(3,'profile',0),(4,'group',0),(5,'mobile.index',0),(6,'mobile.dashboard',0),(7,'admin.dashboard',0);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_place_entity_scheme`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_place_entity_scheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_place_entity_scheme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placeId` int(11) DEFAULT NULL,
  `schemeId` int(11) DEFAULT NULL,
  `entityId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`entityId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_place_entity_scheme`
--

LOCK TABLES `%%TBL-PREFIX%%base_place_entity_scheme` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_place_entity_scheme` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_place_entity_scheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_place_scheme`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_place_scheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_place_scheme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placeId` int(11) DEFAULT NULL,
  `schemeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_place_scheme`
--

LOCK TABLES `%%TBL-PREFIX%%base_place_scheme` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_place_scheme` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_place_scheme` VALUES (1,1,2),(2,2,2),(3,3,1),(4,4,1);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_place_scheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_plugin`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `module` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `developerKey` varchar(255) DEFAULT NULL,
  `isSystem` tinyint(1) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `adminSettingsRoute` varchar(255) DEFAULT NULL,
  `uninstallRoute` varchar(255) DEFAULT NULL,
  `build` int(11) NOT NULL DEFAULT '0',
  `update` tinyint(1) NOT NULL DEFAULT '0',
  `licenseKey` varchar(255) DEFAULT NULL,
  `licenseCheckTimestamp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`),
  UNIQUE KEY `module` (`module`),
  KEY `licenseCheckTimestamp` (`licenseCheckTimestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=838 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_plugin`
--

LOCK TABLES `%%TBL-PREFIX%%base_plugin` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_plugin` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_plugin` VALUES (1,'Base OW plugin','Description','base','base','',1,1,NULL,NULL,1,0,NULL,NULL),(3,'Admin Panel','Admin Panel','admin','admin','',1,1,NULL,NULL,1,0,NULL,NULL),(804,'Advertisement','Simple banner ad management with geo-targeting','advertisement','ads','e547ebcf734341ec11911209d93a1054',0,1,'ads.admin_settings_index',NULL,10400,0,NULL,NULL),(800,'SkaDate System Tools','This is the backend service plugin for SkaDate. Do not deactivate or uninstall. This plugin must only be used for licensed SkaDate websites.','skadate','skadate','99d6bdd5bb6468beaf118c4664dd92ff',0,1,'skadate.settigns','skadate.uninstall',10600,0,NULL,NULL),(812,'Hot List','Allows users to buy a place in the hot list with credits. This plugin must only to be used on licensed SkaDate websites.','hotlist','hotlist','99d6bdd5bb6468beaf118c4664dd92ff',0,1,'hotlist-admin-settings',NULL,10600,0,NULL,NULL),(387,'User Credits','Allow users to earn, purchase and spend user credits','user_credits','usercredits','99d6bdd5bb6468beaf118c4664dd92ff',0,1,'usercredits.admin',NULL,10600,0,NULL,NULL),(385,'PayPal Billing','Accept payments from users with PayPal payment provider','billing_paypal','billingpaypal','99d6bdd5bb6468beaf118c4664dd92ff',0,1,'billing_paypal_admin',NULL,10600,0,NULL,NULL),(388,'Who Viewed Me','Displays guests visited user profile','ocs_guests','ocsguests','c36f83152f203c5a947a3fb053e4bc24',0,1,'ocsguests.admin',NULL,9623,0,NULL,NULL),(381,'Paid Membership','Customizable paid membership levels for accepting membership subscriptions','membership','membership','99d6bdd5bb6468beaf118c4664dd92ff',0,1,'membership_admin',NULL,10600,0,NULL,NULL),(382,'Photo','Allow users to upload photos with tags, rates, and comments','photo','photo','e547ebcf734341ec11911209d93a1054',0,1,'photo_admin_config','photo_uninstall',10600,0,NULL,NULL),(378,'Location Maps','This plugin allows users to add their Google Maps or Bing Maps location in profile details.\n        Plugin compatible with Oxwall 1.7.3 and upper\n    ','google_map_location','googlelocation','8697bdc9467df91a82092e3f1ffd199f',0,1,'googlelocation_admin',NULL,80,0,NULL,NULL),(376,'User Search','Implements quick and advanced search interfaces for dating sites. This plugin must only be used on licensed SkaDate websites.','usearch','usearch','99d6bdd5bb6468beaf118c4664dd92ff',0,1,'usearch.admin_general_setting',NULL,10600,0,NULL,NULL),(374,'Messages','Unified messaging plugin for private on-site communication','mailbox','mailbox','e547ebcf734341ec11911209d93a1054',0,1,'mailbox_admin_config',NULL,10600,0,NULL,NULL),(810,'Matchmaking','Allows to calculate compatibility score between users based on profile information. You can modify the rules to change the matching algorithm. This plugin must only be used on licensed SkaDate websites.','matchmaking','matchmaking','99d6bdd5bb6468beaf118c4664dd92ff',0,1,'matchmaking_admin_rules','matchmaking_uninstall',10600,0,NULL,NULL),(824,'Activity notifications','Real-time and email notifications about site activity','notifications','notifications','e547ebcf734341ec11911209d93a1054',0,1,NULL,NULL,8710,0,NULL,NULL),(825,'Virtual Gifts','Allow users to send private and public virtual gifts','virtual_gifts','virtualgifts','e547ebcf734341ec11911209d93a1054',0,1,'virtual_gifts_templates','virtual_gifts_uninstall',10400,0,NULL,NULL),(826,'Profile Cover Gallery','Shows a beautiful photo gallery on user profile. This plugin must only be used on licensed SkaDate websites.','pcgallery','pcgallery','99d6bdd5bb6468beaf118c4664dd92ff',0,1,NULL,NULL,10600,0,NULL,NULL),(827,'Bookmarks','Allow users to bookmark profiles for further contact. Help them never miss their match.','bookmarks','bookmarks','99d6bdd5bb6468beaf118c4664dd92ff',0,1,'bookmarks.admin',NULL,10600,0,NULL,NULL),(828,'Winks','Allow users to wink at each other to increase the number of contacts for monetization.','winks','winks','99d6bdd5bb6468beaf118c4664dd92ff',0,1,NULL,NULL,10600,0,NULL,NULL),(829,'Google Analytics','Track your site visitor statistics with Google Analytics','google_analytics','ganalytics','e547ebcf734341ec11911209d93a1054',0,1,'ganalytics_admin',NULL,8710,0,NULL,NULL),(830,'Contact Us','\"Contact us\" page with the ability to choose departments (email addresses)','contactus','contactus','e547ebcf734341ec11911209d93a1054',0,1,'contactus.admin',NULL,9900,0,NULL,NULL),(833,'Premoderation','Moderation tools','premoderation','moderation','99d6bdd5bb6468beaf118c4664dd92ff',0,1,'moderation.admin',NULL,10600,0,NULL,NULL),(837,'Facebook Connect','Allow users to join, sign in, and synchronize profile info using their Facebook accounts','fbconnect','fbconnect','e547ebcf734341ec11911209d93a1054',0,1,'fbconnect_configuration_settings',NULL,10200,0,NULL,NULL),(835,'CCBill Billing','Accept payments from users with CCBill payment provider','billing_ccbill','billingccbill','99d6bdd5bb6468beaf118c4664dd92ff',0,1,'billing_ccbill_admin',NULL,10600,0,NULL,NULL),(836,'Private photo albums','The plugin allows site users to lock their photo albums, making them private and available only to friends or users with designated photo album passwords.','protectedphotos','protectedphotos','99d6bdd5bb6468beaf118c4664dd92ff',0,1,NULL,NULL,10600,0,NULL,NULL);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_preference`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_preference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) NOT NULL,
  `defaultValue` text NOT NULL,
  `sectionName` varchar(100) NOT NULL,
  `sortOrder` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`),
  KEY `sortOrder` (`sortOrder`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_preference`
--

LOCK TABLES `%%TBL-PREFIX%%base_preference` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_preference` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_preference` VALUES (1,'mass_mailing_subscribe','true','general',1),(14,'mailbox_create_conversation_display_capcha','0','general',1),(13,'mailbox_create_conversation_stamp','0','general',1),(22,'im_user_settings_enable_sound','1','im',0),(24,'ajaxim_user_settings_enable_sound','1','ajaxim',0),(12,'newsfeed_generate_action_set_timestamp','0','general',10000),(15,'send_wellcome_letter','0','general',99),(25,'matchmaking_lastmatch_userid','0','matchmaking',0),(26,'profile_details_update_stamp','0','general',1),(27,'mailbox_user_settings_enable_sound','1','general',1),(28,'mailbox_user_settings_show_online_only','0','general',1),(29,'pcgallery_source','all','general',1),(30,'pcgallery_album','0','general',1),(31,'base_questions_changes_list','[]','general',100),(32,'timeZoneSelect','null','general',1),(33,'matchmaking_distance_from_my_location','10','matchmaking',1),(34,'fbconnect_user_credits','0','general',1);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_preference_data`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_preference_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_preference_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) NOT NULL,
  `userId` int(11) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`userId`,`key`),
  KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_preference_data`
--

LOCK TABLES `%%TBL-PREFIX%%base_preference_data` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_preference_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_preference_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_preference_section`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_preference_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_preference_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `sortOrder` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_preference_section`
--

LOCK TABLES `%%TBL-PREFIX%%base_preference_section` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_preference_section` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_preference_section` VALUES (1,'general',1),(13,'im',0),(15,'ajaxim',0),(17,'matchmaking',0);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_preference_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_question`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sectionName` varchar(32) DEFAULT NULL,
  `accountTypeName` varchar(32) DEFAULT NULL,
  `type` enum('text','select','datetime','boolean','multiselect','fselect') DEFAULT NULL,
  `presentation` enum('text','textarea','select','date','location','checkbox','multicheckbox','radio','url','password','age','birthdate','range','fselect') DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `onJoin` tinyint(1) NOT NULL DEFAULT '0',
  `onEdit` tinyint(1) NOT NULL DEFAULT '0',
  `onSearch` tinyint(1) NOT NULL DEFAULT '0',
  `onView` tinyint(1) NOT NULL DEFAULT '0',
  `base` tinyint(1) NOT NULL DEFAULT '0',
  `removable` tinyint(1) NOT NULL DEFAULT '1',
  `columnCount` int(11) NOT NULL DEFAULT '1',
  `sortOrder` int(11) NOT NULL DEFAULT '0',
  `custom` varchar(2048) DEFAULT '',
  `parent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `sectionId` (`sectionName`)
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_question`
--

LOCK TABLES `%%TBL-PREFIX%%base_question` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_question` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_question` VALUES (112,'relationship','f90cde5913235d172603cc4e7b9726e3',NULL,'multiselect','multicheckbox',1,1,1,1,1,0,1,1,7,'[]',''),(167,'6341ee69d879c97cb0c47507a557372c','683bffc1ac46b8bd0c840a3526cce25b',NULL,'select','radio',1,1,1,1,1,0,1,2,3,'[]',NULL),(81,'password','f90cde5913235d172603cc4e7b9726e3',NULL,'text','password',1,1,0,0,0,1,0,1,2,'[]',''),(104,'realname','f90cde5913235d172603cc4e7b9726e3',NULL,'text','text',1,1,1,0,1,0,0,0,3,'[]',''),(94,'sex','f90cde5913235d172603cc4e7b9726e3',NULL,'select','select',1,0,0,0,1,0,0,1,4,'[]',''),(82,'email','f90cde5913235d172603cc4e7b9726e3',NULL,'text','text',1,1,1,0,0,1,0,1,1,'[]',''),(111,'match_sex','f90cde5913235d172603cc4e7b9726e3',NULL,'multiselect','multicheckbox',1,1,1,1,1,0,1,1,5,'[]','sex'),(92,'birthdate','f90cde5913235d172603cc4e7b9726e3',NULL,'datetime','age',1,1,1,1,1,0,0,0,8,'{\"year_range\":{\"from\":1930,\"to\":1992}}',''),(80,'username','f90cde5913235d172603cc4e7b9726e3',NULL,'text','text',1,1,0,0,0,1,0,1,0,'[]',''),(119,'joinStamp','f90cde5913235d172603cc4e7b9726e3',NULL,'select','date',0,0,0,0,0,1,0,0,11,'[]',''),(172,'a69350b819c8dc1d926cba6b58451f5f','683bffc1ac46b8bd0c840a3526cce25b',NULL,'multiselect','multicheckbox',1,1,1,1,1,0,1,2,0,'[]',NULL),(168,'31d5d3d7ff420e340cfe3f17c534eba3','683bffc1ac46b8bd0c840a3526cce25b',NULL,'select','radio',1,1,1,1,1,0,1,2,2,'[]',NULL),(165,'23036b67a077fe7784c7cf4691a96fe3','1c39c2d13da6947108873e2896c31c51',NULL,'select','radio',1,1,1,1,1,0,1,2,3,'[]',NULL),(140,'36e39f917cbcf4fb10aa753186ced60d','1c39c2d13da6947108873e2896c31c51',NULL,'select','radio',1,1,1,1,1,0,1,1,2,'[]',NULL),(185,'googlemap_location','location','','text','text',0,1,1,1,1,0,0,1,0,NULL,NULL),(136,'aboutme','f90cde5913235d172603cc4e7b9726e3',NULL,'text','textarea',1,1,1,0,1,0,0,1,10,'',NULL),(176,'match_relationship','about_my_match',NULL,'multiselect','multicheckbox',0,0,0,0,1,0,1,1,1,'[]','relationship'),(173,'match_a69350b819c8dc1d926cba6b58451f5f','about_my_match',NULL,'multiselect','multicheckbox',0,0,0,0,1,0,1,2,2,'[]','a69350b819c8dc1d926cba6b58451f5f'),(177,'match_2b29f145d9d1128a3f57d3af6798fc85','about_my_match',NULL,'multiselect','multicheckbox',0,0,0,0,1,0,1,1,3,'[]','2b29f145d9d1128a3f57d3af6798fc85'),(169,'match_6341ee69d879c97cb0c47507a557372c','about_my_match',NULL,'multiselect','multicheckbox',0,0,0,0,1,0,1,2,5,'[]','6341ee69d879c97cb0c47507a557372c'),(170,'match_31d5d3d7ff420e340cfe3f17c534eba3','about_my_match',NULL,'multiselect','multicheckbox',0,0,0,0,1,0,1,2,4,'[]','31d5d3d7ff420e340cfe3f17c534eba3'),(171,'9f427b5a957edde93cc955fa13971799','f90cde5913235d172603cc4e7b9726e3',NULL,'text','textarea',0,0,1,0,1,0,1,1,12,'[]',NULL),(166,'2b29f145d9d1128a3f57d3af6798fc85','1c39c2d13da6947108873e2896c31c51',NULL,'select','radio',1,1,1,1,1,0,1,1,1,'[]',NULL),(175,'118af0f3559b872c87467a5a89edf03e','1c39c2d13da6947108873e2896c31c51',NULL,'select','radio',1,1,1,1,1,0,1,2,0,'[]',NULL),(174,'6ed883b3412cab27014a0b68ea32f269','683bffc1ac46b8bd0c840a3526cce25b',NULL,'text','textarea',0,1,1,0,1,0,1,1,1,'[]',NULL),(178,'match_118af0f3559b872c87467a5a89edf03e','about_my_match',NULL,'multiselect','multicheckbox',0,0,0,0,1,0,1,2,6,'[]','118af0f3559b872c87467a5a89edf03e'),(142,'match_age','f90cde5913235d172603cc4e7b9726e3',NULL,'text','range',1,1,1,0,1,0,0,1,9,'[]',NULL);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_question_account_type`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_question_account_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_question_account_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `sortOrder` int(11) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_question_account_type`
--

LOCK TABLES `%%TBL-PREFIX%%base_question_account_type` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_question_account_type` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_question_account_type` VALUES (60,'808aa8ca354f51c5a3868dad5298cd72',0,12),(61,'8cc28eaddb382d7c6a94aeea9ec029fb',2,12);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_question_account_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_question_config`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_question_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_question_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionPresentation` enum('text','textarea','select','date','location','checkbox','multicheckbox','radio','url','password','age','birthdate') NOT NULL DEFAULT 'text',
  `name` varchar(255) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `presentationClass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_question_config`
--

LOCK TABLES `%%TBL-PREFIX%%base_question_config` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_question_config` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_question_config` VALUES (1,'date','year_range','','YearRange'),(2,'age','year_range','','YearRange'),(3,'birthdate','year_range','','YearRange');
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_question_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_question_data`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_question_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_question_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionName` varchar(255) NOT NULL DEFAULT '',
  `userId` int(11) NOT NULL DEFAULT '0',
  `textValue` text NOT NULL,
  `intValue` int(11) NOT NULL DEFAULT '0',
  `dateValue` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`userId`,`questionName`),
  KEY `fieldName` (`questionName`),
  KEY `intValue` (`intValue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_question_data`
--

LOCK TABLES `%%TBL-PREFIX%%base_question_data` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_question_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_question_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_question_section`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_question_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_question_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `sortOrder` int(11) NOT NULL DEFAULT '1',
  `isHidden` int(11) NOT NULL DEFAULT '0',
  `isDeletable` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sectionName` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_question_section`
--

LOCK TABLES `%%TBL-PREFIX%%base_question_section` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_question_section` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_question_section` VALUES (34,'f90cde5913235d172603cc4e7b9726e3',0,0,0),(40,'about_my_match',4,0,0),(41,'683bffc1ac46b8bd0c840a3526cce25b',2,0,1),(42,'1c39c2d13da6947108873e2896c31c51',1,0,1);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_question_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_question_to_account_type`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_question_to_account_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_question_to_account_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountType` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `questionName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq` (`questionName`,`accountType`)
) ENGINE=MyISAM AUTO_INCREMENT=189 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_question_to_account_type`
--

LOCK TABLES `%%TBL-PREFIX%%base_question_to_account_type` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_question_to_account_type` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_question_to_account_type` VALUES (96,'808aa8ca354f51c5a3868dad5298cd72','password'),(105,'808aa8ca354f51c5a3868dad5298cd72','email'),(114,'808aa8ca354f51c5a3868dad5298cd72','username'),(117,'808aa8ca354f51c5a3868dad5298cd72','joinStamp'),(186,'8cc28eaddb382d7c6a94aeea9ec029fb','relationship'),(93,'808aa8ca354f51c5a3868dad5298cd72','6341ee69d879c97cb0c47507a557372c'),(99,'808aa8ca354f51c5a3868dad5298cd72','realname'),(102,'808aa8ca354f51c5a3868dad5298cd72','sex'),(108,'808aa8ca354f51c5a3868dad5298cd72','match_sex'),(111,'808aa8ca354f51c5a3868dad5298cd72','birthdate'),(120,'808aa8ca354f51c5a3868dad5298cd72','a69350b819c8dc1d926cba6b58451f5f'),(123,'808aa8ca354f51c5a3868dad5298cd72','31d5d3d7ff420e340cfe3f17c534eba3'),(126,'808aa8ca354f51c5a3868dad5298cd72','23036b67a077fe7784c7cf4691a96fe3'),(129,'808aa8ca354f51c5a3868dad5298cd72','36e39f917cbcf4fb10aa753186ced60d'),(187,'808aa8ca354f51c5a3868dad5298cd72','googlemap_location'),(135,'808aa8ca354f51c5a3868dad5298cd72','aboutme'),(138,'808aa8ca354f51c5a3868dad5298cd72','match_relationship'),(141,'808aa8ca354f51c5a3868dad5298cd72','match_a69350b819c8dc1d926cba6b58451f5f'),(144,'808aa8ca354f51c5a3868dad5298cd72','match_2b29f145d9d1128a3f57d3af6798fc85'),(147,'808aa8ca354f51c5a3868dad5298cd72','match_6341ee69d879c97cb0c47507a557372c'),(150,'808aa8ca354f51c5a3868dad5298cd72','match_31d5d3d7ff420e340cfe3f17c534eba3'),(153,'808aa8ca354f51c5a3868dad5298cd72','9f427b5a957edde93cc955fa13971799'),(156,'808aa8ca354f51c5a3868dad5298cd72','2b29f145d9d1128a3f57d3af6798fc85'),(159,'808aa8ca354f51c5a3868dad5298cd72','118af0f3559b872c87467a5a89edf03e'),(162,'808aa8ca354f51c5a3868dad5298cd72','6ed883b3412cab27014a0b68ea32f269'),(165,'808aa8ca354f51c5a3868dad5298cd72','match_118af0f3559b872c87467a5a89edf03e'),(168,'808aa8ca354f51c5a3868dad5298cd72','match_age'),(97,'8cc28eaddb382d7c6a94aeea9ec029fb','password'),(106,'8cc28eaddb382d7c6a94aeea9ec029fb','email'),(115,'8cc28eaddb382d7c6a94aeea9ec029fb','username'),(118,'8cc28eaddb382d7c6a94aeea9ec029fb','joinStamp'),(185,'808aa8ca354f51c5a3868dad5298cd72','relationship'),(94,'8cc28eaddb382d7c6a94aeea9ec029fb','6341ee69d879c97cb0c47507a557372c'),(100,'8cc28eaddb382d7c6a94aeea9ec029fb','realname'),(103,'8cc28eaddb382d7c6a94aeea9ec029fb','sex'),(109,'8cc28eaddb382d7c6a94aeea9ec029fb','match_sex'),(112,'8cc28eaddb382d7c6a94aeea9ec029fb','birthdate'),(121,'8cc28eaddb382d7c6a94aeea9ec029fb','a69350b819c8dc1d926cba6b58451f5f'),(124,'8cc28eaddb382d7c6a94aeea9ec029fb','31d5d3d7ff420e340cfe3f17c534eba3'),(127,'8cc28eaddb382d7c6a94aeea9ec029fb','23036b67a077fe7784c7cf4691a96fe3'),(130,'8cc28eaddb382d7c6a94aeea9ec029fb','36e39f917cbcf4fb10aa753186ced60d'),(188,'8cc28eaddb382d7c6a94aeea9ec029fb','googlemap_location'),(136,'8cc28eaddb382d7c6a94aeea9ec029fb','aboutme'),(139,'8cc28eaddb382d7c6a94aeea9ec029fb','match_relationship'),(142,'8cc28eaddb382d7c6a94aeea9ec029fb','match_a69350b819c8dc1d926cba6b58451f5f'),(145,'8cc28eaddb382d7c6a94aeea9ec029fb','match_2b29f145d9d1128a3f57d3af6798fc85'),(148,'8cc28eaddb382d7c6a94aeea9ec029fb','match_6341ee69d879c97cb0c47507a557372c'),(151,'8cc28eaddb382d7c6a94aeea9ec029fb','match_31d5d3d7ff420e340cfe3f17c534eba3'),(154,'8cc28eaddb382d7c6a94aeea9ec029fb','9f427b5a957edde93cc955fa13971799'),(157,'8cc28eaddb382d7c6a94aeea9ec029fb','2b29f145d9d1128a3f57d3af6798fc85'),(160,'8cc28eaddb382d7c6a94aeea9ec029fb','118af0f3559b872c87467a5a89edf03e'),(163,'8cc28eaddb382d7c6a94aeea9ec029fb','6ed883b3412cab27014a0b68ea32f269'),(166,'8cc28eaddb382d7c6a94aeea9ec029fb','match_118af0f3559b872c87467a5a89edf03e'),(169,'8cc28eaddb382d7c6a94aeea9ec029fb','match_age');
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_question_to_account_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_question_value`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_question_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_question_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionName` varchar(255) DEFAULT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  `sortOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `questionName` (`questionName`,`value`)
) ENGINE=MyISAM AUTO_INCREMENT=569 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_question_value`
--

LOCK TABLES `%%TBL-PREFIX%%base_question_value` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_question_value` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_question_value` VALUES (335,'d68489df439fe45427e305a0e2dbe349',1,0),(336,'d68489df439fe45427e305a0e2dbe349',2,1),(305,'4971fc7002dca728f9a7f2a417c5284e',32,0),(304,'28f881c609c933f6b1719cdf6dcf4cab',8,3),(303,'28f881c609c933f6b1719cdf6dcf4cab',4,2),(302,'28f881c609c933f6b1719cdf6dcf4cab',2,1),(301,'28f881c609c933f6b1719cdf6dcf4cab',1,0),(300,'490d035a492be91d7bf9589f881e2d22',4,2),(299,'490d035a492be91d7bf9589f881e2d22',2,1),(298,'490d035a492be91d7bf9589f881e2d22',1,0),(297,'4971fc7002dca728f9a7f2a417c5284e',16,6),(296,'4971fc7002dca728f9a7f2a417c5284e',8,8),(295,'4971fc7002dca728f9a7f2a417c5284e',4,7),(294,'4971fc7002dca728f9a7f2a417c5284e',2,1),(334,'4971fc7002dca728f9a7f2a417c5284e',1,5),(292,'92947e48441284286fe8a7b175f34a6e',32,5),(291,'92947e48441284286fe8a7b175f34a6e',16,4),(290,'92947e48441284286fe8a7b175f34a6e',8,3),(289,'92947e48441284286fe8a7b175f34a6e',4,2),(288,'92947e48441284286fe8a7b175f34a6e',2,1),(287,'92947e48441284286fe8a7b175f34a6e',1,0),(307,'4971fc7002dca728f9a7f2a417c5284e',128,2),(337,'d68489df439fe45427e305a0e2dbe349',4,2),(309,'4971fc7002dca728f9a7f2a417c5284e',512,4),(310,'sex',1,0),(311,'sex',2,2),(312,'28f881c609c933f6b1719cdf6dcf4cab',16,4),(313,'28f881c609c933f6b1719cdf6dcf4cab',32,5),(314,'28f881c609c933f6b1719cdf6dcf4cab',64,6),(315,'28f881c609c933f6b1719cdf6dcf4cab',128,7),(316,'28f881c609c933f6b1719cdf6dcf4cab',256,8),(317,'28f881c609c933f6b1719cdf6dcf4cab',512,9),(318,'28f881c609c933f6b1719cdf6dcf4cab',1024,10),(319,'5d32f746a541b97f18a957ad5856318e',1,0),(320,'5d32f746a541b97f18a957ad5856318e',2,1),(321,'5d32f746a541b97f18a957ad5856318e',4,2),(322,'5d32f746a541b97f18a957ad5856318e',8,3),(323,'5d32f746a541b97f18a957ad5856318e',16,4),(324,'5d32f746a541b97f18a957ad5856318e',32,5),(325,'5d32f746a541b97f18a957ad5856318e',64,6),(326,'5d32f746a541b97f18a957ad5856318e',128,7),(327,'ab9fc810a1938e599b7d084efea97d91',1,0),(328,'ab9fc810a1938e599b7d084efea97d91',2,1),(329,'ab9fc810a1938e599b7d084efea97d91',4,2),(330,'ab9fc810a1938e599b7d084efea97d91',8,3),(333,'4971fc7002dca728f9a7f2a417c5284e',256,3),(338,'1e615090f832c4fbee805ded8e9ced08',1,0),(339,'1e615090f832c4fbee805ded8e9ced08',2,1),(340,'1e615090f832c4fbee805ded8e9ced08',4,2),(341,'f8f4c260c54166c8fcf79057fd85aec0',1,0),(342,'f8f4c260c54166c8fcf79057fd85aec0',2,1),(343,'f8f4c260c54166c8fcf79057fd85aec0',4,2),(347,'match_sex',2,1),(346,'match_sex',1,0),(356,'relationship',1,0),(357,'relationship',2,1),(358,'relationship',4,2),(359,'relationship',8,3),(360,'9ce3cf807fd94892c8c7bb75dc2af60d',1,0),(361,'9ce3cf807fd94892c8c7bb75dc2af60d',2,1),(362,'9ce3cf807fd94892c8c7bb75dc2af60d',4,2),(364,'9ce3cf807fd94892c8c7bb75dc2af60d',16,4),(365,'9ce3cf807fd94892c8c7bb75dc2af60d',32,5),(366,'9ce3cf807fd94892c8c7bb75dc2af60d',64,6),(367,'9ce3cf807fd94892c8c7bb75dc2af60d',128,7),(368,'9ce3cf807fd94892c8c7bb75dc2af60d',256,8),(369,'9ce3cf807fd94892c8c7bb75dc2af60d',512,9),(370,'9ce3cf807fd94892c8c7bb75dc2af60d',1024,10),(371,'9ce3cf807fd94892c8c7bb75dc2af60d',2048,11),(372,'9ce3cf807fd94892c8c7bb75dc2af60d',4096,12),(373,'9ce3cf807fd94892c8c7bb75dc2af60d',8192,13),(374,'9ce3cf807fd94892c8c7bb75dc2af60d',16384,14),(375,'9ce3cf807fd94892c8c7bb75dc2af60d',32768,15),(376,'9ce3cf807fd94892c8c7bb75dc2af60d',65536,16),(377,'9ce3cf807fd94892c8c7bb75dc2af60d',131072,17),(378,'9ce3cf807fd94892c8c7bb75dc2af60d',262144,18),(379,'9ce3cf807fd94892c8c7bb75dc2af60d',524288,19),(380,'9ce3cf807fd94892c8c7bb75dc2af60d',1048576,20),(381,'9ce3cf807fd94892c8c7bb75dc2af60d',2097152,21),(382,'9ce3cf807fd94892c8c7bb75dc2af60d',4194304,22),(383,'9ce3cf807fd94892c8c7bb75dc2af60d',8388608,23),(384,'9ce3cf807fd94892c8c7bb75dc2af60d',16777216,24),(385,'9ce3cf807fd94892c8c7bb75dc2af60d',33554432,25),(386,'9ce3cf807fd94892c8c7bb75dc2af60d',67108864,26),(387,'9ce3cf807fd94892c8c7bb75dc2af60d',134217728,27),(388,'9ce3cf807fd94892c8c7bb75dc2af60d',268435456,28),(389,'9ce3cf807fd94892c8c7bb75dc2af60d',536870912,29),(390,'9ce3cf807fd94892c8c7bb75dc2af60d',1073741824,30),(392,'8100f639e8becdefa741e05f0de73a15',1,0),(393,'8100f639e8becdefa741e05f0de73a15',2,1),(394,'d37d41b71a78dfb62b379d0aa7bd3ba5',1,0),(395,'c5dc53f371fe6ba3001a7c7e31bd95fc',1,0),(396,'c5dc53f371fe6ba3001a7c7e31bd95fc',2,1),(397,'c5dc53f371fe6ba3001a7c7e31bd95fc',4,2),(398,'c5dc53f371fe6ba3001a7c7e31bd95fc',8,3),(399,'c5dc53f371fe6ba3001a7c7e31bd95fc',16,4),(400,'7f2450f06779439551c75a8566c4070e',1,0),(401,'7f2450f06779439551c75a8566c4070e',2,1),(402,'7f2450f06779439551c75a8566c4070e',4,2),(403,'7f2450f06779439551c75a8566c4070e',8,3),(404,'7f2450f06779439551c75a8566c4070e',16,4),(405,'7f2450f06779439551c75a8566c4070e',32,5),(406,'7fbd88047415229961f4d2aac620fe25',1,0),(407,'7fbd88047415229961f4d2aac620fe25',2,1),(408,'7fbd88047415229961f4d2aac620fe25',4,2),(409,'7fbd88047415229961f4d2aac620fe25',8,3),(410,'7fbd88047415229961f4d2aac620fe25',16,4),(411,'7fbd88047415229961f4d2aac620fe25',32,5),(412,'7fbd88047415229961f4d2aac620fe25',64,6),(436,'739a83996f701966485290779f4ff2b5',1,4),(437,'739a83996f701966485290779f4ff2b5',2,2),(438,'739a83996f701966485290779f4ff2b5',4,1),(417,'d8aa20d67fbb6c6864e46c474d0bde10',1,0),(418,'d8aa20d67fbb6c6864e46c474d0bde10',2,1),(419,'d8aa20d67fbb6c6864e46c474d0bde10',4,2),(420,'d8aa20d67fbb6c6864e46c474d0bde10',8,3),(421,'d8aa20d67fbb6c6864e46c474d0bde10',16,4),(422,'d8aa20d67fbb6c6864e46c474d0bde10',32,5),(423,'d8aa20d67fbb6c6864e46c474d0bde10',64,6),(424,'d8aa20d67fbb6c6864e46c474d0bde10',128,7),(425,'d8aa20d67fbb6c6864e46c474d0bde10',256,8),(426,'d8aa20d67fbb6c6864e46c474d0bde10',512,9),(442,'739a83996f701966485290779f4ff2b5',64,0),(443,'739a83996f701966485290779f4ff2b5',128,7),(439,'739a83996f701966485290779f4ff2b5',8,3),(440,'739a83996f701966485290779f4ff2b5',16,5),(441,'739a83996f701966485290779f4ff2b5',32,6),(444,'739a83996f701966485290779f4ff2b5',256,8),(445,'739a83996f701966485290779f4ff2b5',512,9),(446,'739a83996f701966485290779f4ff2b5',1024,10),(447,'739a83996f701966485290779f4ff2b5',2048,11),(448,'739a83996f701966485290779f4ff2b5',4096,12),(449,'739a83996f701966485290779f4ff2b5',8192,13),(450,'739a83996f701966485290779f4ff2b5',16384,14),(451,'739a83996f701966485290779f4ff2b5',32768,15),(452,'7747d430cc0be5d22223baf1082b34c9',1,0),(453,'7747d430cc0be5d22223baf1082b34c9',2,1),(454,'7747d430cc0be5d22223baf1082b34c9',4,2),(455,'55c95a36e50b0d7a795fb1caa8a8e520',1,0),(456,'55c95a36e50b0d7a795fb1caa8a8e520',2,1),(457,'55c95a36e50b0d7a795fb1caa8a8e520',4,2),(458,'07f4c1294598ea15ae43fafdefbc6919',1,0),(459,'07f4c1294598ea15ae43fafdefbc6919',2,1),(460,'07f4c1294598ea15ae43fafdefbc6919',4,2),(461,'557256153cd10f5f711ac4ee14a7b675',1,0),(462,'557256153cd10f5f711ac4ee14a7b675',2,1),(463,'557256153cd10f5f711ac4ee14a7b675',4,2),(464,'36e39f917cbcf4fb10aa753186ced60d',1,0),(465,'36e39f917cbcf4fb10aa753186ced60d',2,1),(466,'36e39f917cbcf4fb10aa753186ced60d',4,2),(467,'a023dd4e406571f6e805e52e5dd9b9ef',1,0),(468,'a023dd4e406571f6e805e52e5dd9b9ef',2,1),(469,'a023dd4e406571f6e805e52e5dd9b9ef',4,2),(470,'a023dd4e406571f6e805e52e5dd9b9ef',8,3),(471,'6c57ed6692ef576423d610a4ab559ed9',1,0),(472,'6c57ed6692ef576423d610a4ab559ed9',2,2),(473,'6c57ed6692ef576423d610a4ab559ed9',4,3),(474,'6c57ed6692ef576423d610a4ab559ed9',8,4),(475,'6c57ed6692ef576423d610a4ab559ed9',16,5),(488,'318a9d7f980857acc64bf286980023fa',1,0),(477,'6c57ed6692ef576423d610a4ab559ed9',64,1),(478,'fe9f091cbb3e6686aa014888f6250412',1,0),(479,'fe9f091cbb3e6686aa014888f6250412',2,1),(480,'fe9f091cbb3e6686aa014888f6250412',4,2),(481,'8920548393766bd58ccf5255a4650a1c',1,0),(482,'8920548393766bd58ccf5255a4650a1c',2,1),(483,'8920548393766bd58ccf5255a4650a1c',4,2),(484,'8920548393766bd58ccf5255a4650a1c',8,3),(485,'8920548393766bd58ccf5255a4650a1c',16,4),(486,'8920548393766bd58ccf5255a4650a1c',32,5),(487,'8920548393766bd58ccf5255a4650a1c',64,6),(489,'318a9d7f980857acc64bf286980023fa',2,1),(490,'318a9d7f980857acc64bf286980023fa',4,2),(491,'318a9d7f980857acc64bf286980023fa',8,3),(492,'318a9d7f980857acc64bf286980023fa',16,4),(493,'318a9d7f980857acc64bf286980023fa',32,5),(494,'318a9d7f980857acc64bf286980023fa',64,6),(495,'318a9d7f980857acc64bf286980023fa',128,7),(496,'54a436b5983d07a9a7f14e7b3469d6bf',1,0),(497,'54a436b5983d07a9a7f14e7b3469d6bf',2,1),(498,'54a436b5983d07a9a7f14e7b3469d6bf',4,2),(499,'54a436b5983d07a9a7f14e7b3469d6bf',8,3),(500,'54a436b5983d07a9a7f14e7b3469d6bf',16,4),(501,'36e39f917cbcf4fb10aa753186ced60d',8,3),(502,'23036b67a077fe7784c7cf4691a96fe3',1,0),(503,'23036b67a077fe7784c7cf4691a96fe3',2,1),(504,'23036b67a077fe7784c7cf4691a96fe3',4,2),(505,'23036b67a077fe7784c7cf4691a96fe3',8,3),(506,'23036b67a077fe7784c7cf4691a96fe3',16,4),(507,'23036b67a077fe7784c7cf4691a96fe3',32,5),(508,'23036b67a077fe7784c7cf4691a96fe3',64,6),(509,'2b29f145d9d1128a3f57d3af6798fc85',1,0),(510,'2b29f145d9d1128a3f57d3af6798fc85',2,1),(511,'2b29f145d9d1128a3f57d3af6798fc85',4,2),(512,'2b29f145d9d1128a3f57d3af6798fc85',8,3),(513,'2b29f145d9d1128a3f57d3af6798fc85',16,4),(514,'6341ee69d879c97cb0c47507a557372c',1,0),(515,'6341ee69d879c97cb0c47507a557372c',2,1),(516,'6341ee69d879c97cb0c47507a557372c',4,2),(517,'6341ee69d879c97cb0c47507a557372c',8,3),(518,'6341ee69d879c97cb0c47507a557372c',16,4),(519,'6341ee69d879c97cb0c47507a557372c',32,5),(520,'31d5d3d7ff420e340cfe3f17c534eba3',1,0),(521,'31d5d3d7ff420e340cfe3f17c534eba3',2,1),(522,'31d5d3d7ff420e340cfe3f17c534eba3',4,2),(523,'31d5d3d7ff420e340cfe3f17c534eba3',8,3),(524,'31d5d3d7ff420e340cfe3f17c534eba3',16,4),(525,'31d5d3d7ff420e340cfe3f17c534eba3',32,5),(526,'a69350b819c8dc1d926cba6b58451f5f',1,0),(527,'a69350b819c8dc1d926cba6b58451f5f',2,1),(528,'a69350b819c8dc1d926cba6b58451f5f',4,2),(529,'a69350b819c8dc1d926cba6b58451f5f',8,3),(530,'a69350b819c8dc1d926cba6b58451f5f',16,4),(531,'a69350b819c8dc1d926cba6b58451f5f',32,5),(532,'a69350b819c8dc1d926cba6b58451f5f',64,6),(533,'a69350b819c8dc1d926cba6b58451f5f',128,7),(534,'a69350b819c8dc1d926cba6b58451f5f',256,8),(535,'118af0f3559b872c87467a5a89edf03e',1,2),(536,'118af0f3559b872c87467a5a89edf03e',2,0),(537,'118af0f3559b872c87467a5a89edf03e',4,1),(538,'118af0f3559b872c87467a5a89edf03e',8,3),(539,'118af0f3559b872c87467a5a89edf03e',16,4),(540,'118af0f3559b872c87467a5a89edf03e',32,6),(541,'118af0f3559b872c87467a5a89edf03e',64,7),(542,'118af0f3559b872c87467a5a89edf03e',128,8),(543,'118af0f3559b872c87467a5a89edf03e',256,9),(544,'118af0f3559b872c87467a5a89edf03e',512,5),(545,'56508bd5788d594447617f79468077ab',1,0),(546,'56508bd5788d594447617f79468077ab',2,1),(547,'56508bd5788d594447617f79468077ab',4,2),(548,'56508bd5788d594447617f79468077ab',8,3),(549,'56508bd5788d594447617f79468077ab',16,4),(550,'56508bd5788d594447617f79468077ab',32,5),(551,'56508bd5788d594447617f79468077ab',64,6),(552,'22f11d24f879ee993282851b397db389',1,0),(553,'22f11d24f879ee993282851b397db389',2,1),(554,'22f11d24f879ee993282851b397db389',4,2),(555,'22f11d24f879ee993282851b397db389',8,3),(556,'22f11d24f879ee993282851b397db389',16,4),(557,'22f11d24f879ee993282851b397db389',32,5),(558,'22f11d24f879ee993282851b397db389',64,6),(559,'22f11d24f879ee993282851b397db389',128,7),(560,'22f11d24f879ee993282851b397db389',256,8),(561,'5eeeb3d3f4a1f54ad46cc204f76b6fbc',1,0),(562,'5eeeb3d3f4a1f54ad46cc204f76b6fbc',2,1),(563,'5eeeb3d3f4a1f54ad46cc204f76b6fbc',4,2),(564,'5eeeb3d3f4a1f54ad46cc204f76b6fbc',8,3),(565,'5eeeb3d3f4a1f54ad46cc204f76b6fbc',16,4),(566,'5eeeb3d3f4a1f54ad46cc204f76b6fbc',32,5);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_question_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_rate`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_rate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entityType` varchar(255) NOT NULL,
  `entityId` int(10) unsigned NOT NULL,
  `userId` int(10) unsigned NOT NULL,
  `score` int(10) unsigned NOT NULL,
  `timeStamp` int(10) unsigned NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `entityType` (`entityType`),
  KEY `entityId` (`entityId`),
  KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_rate`
--

LOCK TABLES `%%TBL-PREFIX%%base_rate` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_remote_auth`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_remote_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_remote_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `userId` int(11) NOT NULL,
  `remoteId` varchar(50) NOT NULL,
  `timeStamp` int(11) NOT NULL,
  `custom` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_remote_auth`
--

LOCK TABLES `%%TBL-PREFIX%%base_remote_auth` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_remote_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_remote_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_restricted_usernames`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_restricted_usernames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_restricted_usernames` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_restricted_usernames`
--

LOCK TABLES `%%TBL-PREFIX%%base_restricted_usernames` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_restricted_usernames` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_restricted_usernames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_scheme`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_scheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_scheme` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `rightCssClass` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `leftCssClass` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `cssClass` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_scheme`
--

LOCK TABLES `%%TBL-PREFIX%%base_scheme` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_scheme` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_scheme` VALUES (1,'ow_superwide','ow_supernarrow','ow_scheme_enew'),(2,'ow_wide','ow_narrow','ow_scheme_nw'),(3,'ow_column','ow_column','ow_scheme_equal'),(4,'ow_narrow','ow_wide','ow_scheme_wn'),(5,'ow_supernarrow','ow_superwide','ow_scheme_ewen');
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_scheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_search`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timeStamp` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `timeStamp` (`timeStamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_search`
--

LOCK TABLES `%%TBL-PREFIX%%base_search` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_search_entity`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_search_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_search_entity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entityType` varchar(50) NOT NULL,
  `entityId` int(10) unsigned NOT NULL,
  `text` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `timeStamp` int(10) unsigned NOT NULL,
  `activated` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `entity` (`entityType`,`entityId`),
  KEY `status` (`status`,`activated`,`timeStamp`),
  FULLTEXT KEY `entityText` (`text`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_search_entity`
--

LOCK TABLES `%%TBL-PREFIX%%base_search_entity` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_search_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_search_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_search_entity_tag`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_search_entity_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_search_entity_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entityTag` varchar(50) NOT NULL,
  `searchEntityId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `searchEntityId` (`searchEntityId`),
  KEY `entityTag` (`entityTag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_search_entity_tag`
--

LOCK TABLES `%%TBL-PREFIX%%base_search_entity_tag` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_search_entity_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_search_entity_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_search_result`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_search_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_search_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `searchId` int(11) NOT NULL DEFAULT '0',
  `userId` int(11) NOT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `searchResult` (`searchId`,`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_search_result`
--

LOCK TABLES `%%TBL-PREFIX%%base_search_result` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_search_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_search_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_site_statistic`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_site_statistic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_site_statistic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entityType` varchar(50) NOT NULL,
  `entityId` int(10) unsigned NOT NULL,
  `entityCount` int(10) unsigned NOT NULL DEFAULT '1',
  `timeStamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entity` (`entityType`,`timeStamp`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_site_statistic`
--

LOCK TABLES `%%TBL-PREFIX%%base_site_statistic` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_site_statistic` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_site_statistic` VALUES (1,'user_login',1,1,1461817297),(2,'user_login',1,1,1462259905),(3,'user_login',1,1,1462422995),(4,'user_login',1,1,1462424537),(5,'user_login',1,1,1463380814);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_site_statistic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_tag`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `label` (`label`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_tag`
--

LOCK TABLES `%%TBL-PREFIX%%base_tag` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_theme`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `customCss` text,
  `mobileCustomCss` text,
  `customCssFileName` varchar(255) DEFAULT NULL,
  `sidebarPosition` enum('left','right','none') NOT NULL,
  `licenseCheckTimestamp` int(10) unsigned DEFAULT NULL,
  `developerKey` varchar(255) DEFAULT NULL,
  `build` int(11) NOT NULL DEFAULT '0',
  `update` tinyint(4) NOT NULL DEFAULT '0',
  `licenseKey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`key`),
  KEY `licenseCheckTimestamp` (`licenseCheckTimestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=1608 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_theme`
--

LOCK TABLES `%%TBL-PREFIX%%base_theme` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_theme` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%base_theme` VALUES (1554,'trend','Trend','{\"name\":\"Trend\",\"key\":\"trend\",\"version\":\"1.0\",\"compatibility\":\"1.5 and higher\",\"description\":\"The original \\\"Trend\\\" theme for SkaDate Dating Software.\",\"author\":\"Skalfa\",\"authorEmail\":\"info@skalfa.com\",\"authorUrl\":\"http:\\/\\/www.skalfa.com\\/\",\"developerKey\":\"99d6bdd5bb6468beaf118c4664dd92ff\",\"build\":10400,\"copyright\":\"(C) 2014 Skalfa LLC. All rights reserved.\",\"license\":\"SEL\",\"licenseUrl\":\"http:\\/\\/www.skadate.com\\/sel.pdf\",\"sidebarPosition\":\"right\",\"masterPages\":{\"base_index_page\":\"index\"}}',NULL,NULL,NULL,'right',NULL,'99d6bdd5bb6468beaf118c4664dd92ff',10400,0,NULL),(1555,'tenderness','Tenderness','{\"name\":\"Tenderness\",\"key\":\"tenderness\",\"version\":\"1.0\",\"compatibility\":\"1.5 and higher\",\"description\":\"The original \\\"Tenderness\\\" theme for SkaDate Dating Software.\",\"author\":\"Skalfa\",\"authorEmail\":\"info@skalfa.com\",\"authorUrl\":\"http:\\/\\/www.skalfa.com\\/\",\"developerKey\":\"99d6bdd5bb6468beaf118c4664dd92ff\",\"build\":10400,\"copyright\":\"(C) 2014 Skalfa LLC. All rights reserved.\",\"license\":\"SEL\",\"licenseUrl\":\"http:\\/\\/www.skadate.com\\/sel.pdf\",\"sidebarPosition\":\"right\",\"masterPages\":{\"base_index_page\":\"index\"}}',NULL,NULL,NULL,'right',NULL,'99d6bdd5bb6468beaf118c4664dd92ff',10400,0,NULL),(1556,'gentle','Gentle','{\"name\":\"Gentle\",\"key\":\"gentle\",\"version\":\"1.0\",\"compatibility\":\"1.5 and higher\",\"description\":\"The original \\\"Gentle\\\" theme for SkaDate Dating Software.\",\"author\":\"Skalfa\",\"authorEmail\":\"info@skalfa.com\",\"authorUrl\":\"http:\\/\\/www.skalfa.com\\/\",\"developerKey\":\"99d6bdd5bb6468beaf118c4664dd92ff\",\"build\":10400,\"copyright\":\"(C) 2014 Skalfa LLC. All rights reserved.\",\"license\":\"SEL\",\"licenseUrl\":\"http:\\/\\/www.skadate.com\\/sel.pdf\",\"sidebarPosition\":\"right\",\"masterPages\":{\"base_index_page\":\"index\"}}',NULL,NULL,NULL,'right',NULL,'99d6bdd5bb6468beaf118c4664dd92ff',10400,0,NULL),(1558,'morning','Morning','{\"name\":\"Morning\",\"key\":\"morning\",\"version\":\"1.0\",\"compatibility\":\"1.5 and higher\",\"description\":\"The original \\\"Morning\\\" theme for SkaDate Dating Software.\",\"author\":\"Skalfa\",\"authorEmail\":\"info@skalfa.com\",\"authorUrl\":\"http:\\/\\/www.skalfa.com\\/\",\"developerKey\":\"99d6bdd5bb6468beaf118c4664dd92ff\",\"build\":10400,\"copyright\":\"(C) 2014 Skalfa LLC. All rights reserved.\",\"license\":\"SEL\",\"licenseUrl\":\"http:\\/\\/www.skadate.com\\/sel.pdf\",\"sidebarPosition\":\"right\",\"masterPages\":{\"base_index_page\":\"index\"}}',NULL,NULL,NULL,'right',NULL,'99d6bdd5bb6468beaf118c4664dd92ff',10400,0,NULL),(1559,'friends','Friends','{\"name\":\"Friends\",\"key\":\"friends\",\"version\":\"1.0\",\"compatibility\":\"1.5 and higher\",\"description\":\"The original \\\"Friends\\\" theme for SkaDate Dating Software.\",\"author\":\"Skalfa\",\"authorEmail\":\"info@skalfa.com\",\"authorUrl\":\"http:\\/\\/www.skalfa.com\\/\",\"developerKey\":\"99d6bdd5bb6468beaf118c4664dd92ff\",\"build\":10400,\"copyright\":\"(C) 2014 Skalfa LLC. All rights reserved.\",\"license\":\"SEL\",\"licenseUrl\":\"http:\\/\\/www.skadate.com\\/sel.pdf\",\"sidebarPosition\":\"right\",\"masterPages\":{\"base_index_page\":\"index\"}}',NULL,NULL,NULL,'right',NULL,'99d6bdd5bb6468beaf118c4664dd92ff',10400,0,NULL),(1560,'sweet','Sweet','{\"name\":\"Sweet\",\"key\":\"sweet\",\"version\":\"1.0\",\"compatibility\":\"1.5 and higher\",\"description\":\"The original \\\"Sweet\\\" theme for SkaDate Dating Software.\",\"author\":\"Skalfa\",\"authorEmail\":\"info@skalfa.com\",\"authorUrl\":\"http:\\/\\/www.skalfa.com\\/\",\"developerKey\":\"99d6bdd5bb6468beaf118c4664dd92ff\",\"build\":10400,\"copyright\":\"(C) 2014 Skalfa LLC. All rights reserved.\",\"license\":\"SEL\",\"licenseUrl\":\"http:\\/\\/www.skadate.com\\/sel.pdf\",\"sidebarPosition\":\"right\",\"masterPages\":{\"base_index_page\":\"index\"}}',NULL,NULL,NULL,'right',NULL,'99d6bdd5bb6468beaf118c4664dd92ff',10400,0,NULL),(1606,'simplicity','Simplicity','{\"name\":\"Simplicity\",\"key\":\"simplicity\",\"version\":\"1.0\",\"compatibility\":\"1.7 and higher\",\"description\":\"The Simplicity theme\",\"author\":\"Oxwall Foundation\",\"authorEmail\":\"themes@oxwall.org\",\"authorUrl\":\"http:\\/\\/www.oxwall.org\\/foundation\",\"developerKey\":\"e547ebcf734341ec11911209d93a1054\",\"build\":10400,\"copyright\":\"(C) 2012 Oxwall Foundation. All rights reserved.\",\"license\":\"The BSD License\",\"licenseUrl\":\"http:\\/\\/www.opensource.org\\/licenses\\/bsd-license.php\",\"sidebarPosition\":\"none\"}',NULL,NULL,NULL,'none',NULL,'e547ebcf734341ec11911209d93a1054',10400,0,NULL),(1607,'turquoise','Turquoise','{\"name\":\"Turquoise\",\"key\":\"turquoise\",\"version\":\"1.0\",\"compatibility\":\"1.7 and higher\",\"description\":\"The original \\\"Turquoise theme\\\" for Skadate Dating Software\",\"author\":\"Skalfa\",\"authorEmail\":\"info@skalfa.com\",\"authorUrl\":\"http:\\/\\/www.skalfa.com\",\"developerKey\":\"99d6bdd5bb6468beaf118c4664dd92ff\",\"build\":10400,\"copyright\":\"(C) 2014 Skalfa LLC. All rights reserved.\",\"license\":\"SEL\",\"licenseUrl\":\"http:\\/\\/www.skadate.com\\/sel.pdf\",\"sidebarPosition\":\"right\",\"masterPages\":{\"base_index_page\":\"index\"}}',NULL,NULL,NULL,'right',NULL,'99d6bdd5bb6468beaf118c4664dd92ff',10400,0,NULL);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_theme_content`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_theme_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_theme_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `themeId` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `themeId` (`themeId`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_theme_content`
--

LOCK TABLES `%%TBL-PREFIX%%base_theme_content` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_theme_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_theme_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_theme_control`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_theme_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_theme_control` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribute` varchar(255) NOT NULL,
  `selector` text NOT NULL,
  `defaultValue` text NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'text',
  `themeId` int(10) unsigned NOT NULL,
  `key` varchar(255) NOT NULL DEFAULT '',
  `section` text NOT NULL,
  `label` text NOT NULL,
  `description` text,
  `mobile` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`key`),
  KEY `themeId` (`themeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_theme_control`
--

LOCK TABLES `%%TBL-PREFIX%%base_theme_control` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_theme_control` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_theme_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_theme_control_value`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_theme_control_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_theme_control_value` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `themeControlKey` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `themeId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `themeControlKey` (`themeControlKey`,`themeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_theme_control_value`
--

LOCK TABLES `%%TBL-PREFIX%%base_theme_control_value` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_theme_control_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_theme_control_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_theme_image`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_theme_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_theme_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) DEFAULT NULL,
  `addDatetime` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dimensions` varchar(20) DEFAULT NULL,
  `filesize` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_theme_image`
--

LOCK TABLES `%%TBL-PREFIX%%base_theme_image` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_theme_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_theme_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_theme_master_page`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_theme_master_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_theme_master_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `themeId` int(11) NOT NULL,
  `documentKey` varchar(255) NOT NULL,
  `masterPage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `themeId` (`themeId`),
  KEY `documentKey` (`documentKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_theme_master_page`
--

LOCK TABLES `%%TBL-PREFIX%%base_theme_master_page` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_theme_master_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_theme_master_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_user`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL DEFAULT '',
  `joinStamp` int(11) NOT NULL DEFAULT '0',
  `activityStamp` int(11) NOT NULL DEFAULT '0',
  `accountType` varchar(32) NOT NULL DEFAULT '',
  `emailVerify` tinyint(2) NOT NULL DEFAULT '0',
  `joinIp` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`),
  KEY `accountType` (`accountType`),
  KEY `joinStamp` (`joinStamp`),
  KEY `activityStamp` (`activityStamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='utf8_general_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_user`
--

LOCK TABLES `%%TBL-PREFIX%%base_user` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_user_auth_token`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_user_auth_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_user_auth_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `timeStamp` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`userId`,`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_user_auth_token`
--

LOCK TABLES `%%TBL-PREFIX%%base_user_auth_token` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_user_auth_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_user_auth_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_user_block`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_user_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_user_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `blockedUserId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId_blockedUserId` (`userId`,`blockedUserId`),
  KEY `userId` (`userId`),
  KEY `blockedUserId` (`blockedUserId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_user_block`
--

LOCK TABLES `%%TBL-PREFIX%%base_user_block` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_user_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_user_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_user_disapprove`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_user_disapprove`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_user_disapprove` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_user_disapprove`
--

LOCK TABLES `%%TBL-PREFIX%%base_user_disapprove` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_user_disapprove` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_user_disapprove` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_user_featured`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_user_featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_user_featured` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 MIN_ROWS=20;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_user_featured`
--

LOCK TABLES `%%TBL-PREFIX%%base_user_featured` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_user_featured` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_user_featured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_user_online`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_user_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_user_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `activityStamp` int(11) NOT NULL,
  `context` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_user_online`
--

LOCK TABLES `%%TBL-PREFIX%%base_user_online` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_user_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_user_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_user_reset_password`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_user_reset_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_user_reset_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `code` varchar(150) NOT NULL,
  `expirationTimeStamp` int(11) NOT NULL,
  `updateTimeStamp` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_user_reset_password`
--

LOCK TABLES `%%TBL-PREFIX%%base_user_reset_password` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_user_reset_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_user_reset_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_user_status`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_user_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_user_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_user_status`
--

LOCK TABLES `%%TBL-PREFIX%%base_user_status` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_user_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_user_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_user_suspend`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_user_suspend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_user_suspend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_user_suspend`
--

LOCK TABLES `%%TBL-PREFIX%%base_user_suspend` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_user_suspend` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_user_suspend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%base_vote`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%base_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%base_vote` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(11) unsigned NOT NULL,
  `entityId` int(11) unsigned NOT NULL,
  `entityType` varchar(255) NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `timeStamp` int(11) unsigned NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `entityId` (`entityId`),
  KEY `entityType` (`entityType`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%base_vote`
--

LOCK TABLES `%%TBL-PREFIX%%base_vote` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%base_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%bookmarks_mark`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%bookmarks_mark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%bookmarks_mark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `markUserId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`userId`,`markUserId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%bookmarks_mark`
--

LOCK TABLES `%%TBL-PREFIX%%bookmarks_mark` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%bookmarks_mark` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%bookmarks_mark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%bookmarks_notify_log`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%bookmarks_notify_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%bookmarks_notify_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`userId`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%bookmarks_notify_log`
--

LOCK TABLES `%%TBL-PREFIX%%bookmarks_notify_log` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%bookmarks_notify_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%bookmarks_notify_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%contactus_department`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%contactus_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%contactus_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%contactus_department`
--

LOCK TABLES `%%TBL-PREFIX%%contactus_department` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%contactus_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%contactus_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%fbconnect_field`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%fbconnect_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%fbconnect_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(50) NOT NULL,
  `fbField` varchar(100) NOT NULL,
  `converter` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%fbconnect_field`
--

LOCK TABLES `%%TBL-PREFIX%%fbconnect_field` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%fbconnect_field` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%fbconnect_field` VALUES (1,'realname','name','FBCONNECT_FC_TextFieldConverter'),(2,'username','name','FBCONNECT_FC_Username'),(3,'email','email','FBCONNECT_FC_TextFieldConverter'),(4,'picture_small','pic_square','FBCONNECT_FC_Picture'),(5,'picture_big','pic_big','FBCONNECT_FC_Picture');
/*!40000 ALTER TABLE `%%TBL-PREFIX%%fbconnect_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%file_temporary`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%file_temporary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%file_temporary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `addDatetime` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%file_temporary`
--

LOCK TABLES `%%TBL-PREFIX%%file_temporary` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%file_temporary` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%file_temporary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%googlelocation_data`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%googlelocation_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%googlelocation_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entityId` int(11) NOT NULL,
  `entityType` enum('user','event') NOT NULL,
  `countryCode` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `lat` decimal(15,4) NOT NULL,
  `lng` decimal(15,4) NOT NULL,
  `northEastLat` decimal(15,4) NOT NULL,
  `northEastLng` decimal(15,4) NOT NULL,
  `southWestLat` decimal(15,4) NOT NULL,
  `southWestLng` decimal(15,4) NOT NULL,
  `json` text NOT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `entityId` (`entityId`,`entityType`),
  KEY `lan_lng` (`lat`,`lng`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%googlelocation_data`
--

LOCK TABLES `%%TBL-PREFIX%%googlelocation_data` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%googlelocation_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%googlelocation_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%hotlist_user`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%hotlist_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%hotlist_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `timestamp` int(10) NOT NULL,
  `expiration_timestamp` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%hotlist_user`
--

LOCK TABLES `%%TBL-PREFIX%%hotlist_user` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%hotlist_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%hotlist_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%mailbox_attachment`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%mailbox_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%mailbox_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `messageId` int(11) NOT NULL,
  `hash` varchar(13) NOT NULL,
  `fileName` varchar(255) NOT NULL,
  `fileSize` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `messageId` (`messageId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%mailbox_attachment`
--

LOCK TABLES `%%TBL-PREFIX%%mailbox_attachment` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%mailbox_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%mailbox_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%mailbox_conversation`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%mailbox_conversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%mailbox_conversation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `initiatorId` int(10) NOT NULL DEFAULT '0',
  `interlocutorId` int(10) NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `read` tinyint(3) NOT NULL DEFAULT '1' COMMENT 'bitmap, values: 0 - none, 1 - read by initiator, 2 - read by interlocutor, 3 - read all',
  `deleted` tinyint(3) NOT NULL DEFAULT '0' COMMENT 'bitmap, values: 0 - none, 1 - deleted by initiator, 2 - deleted by interlocutor.',
  `viewed` tinyint(3) NOT NULL DEFAULT '1' COMMENT 'bitmap, is user viewed conversation in console, values: 0 - none, 1 - viewed by initiator, 2 - viewed by interlocutor, 3 - viewed all',
  `notificationSent` tinyint(3) NOT NULL DEFAULT '0' COMMENT 'int flag, was notification about this letter sent to user',
  `createStamp` int(10) DEFAULT '0',
  `initiatorDeletedTimestamp` int(10) NOT NULL DEFAULT '0',
  `interlocutorDeletedTimestamp` int(10) NOT NULL DEFAULT '0',
  `lastMessageId` int(11) NOT NULL,
  `lastMessageTimestamp` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `initiatorId` (`initiatorId`),
  KEY `interlocutorId` (`interlocutorId`),
  KEY `lastMessageTimestamp` (`lastMessageTimestamp`),
  KEY `subject` (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%mailbox_conversation`
--

LOCK TABLES `%%TBL-PREFIX%%mailbox_conversation` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%mailbox_conversation` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%mailbox_conversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%mailbox_file_upload`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%mailbox_file_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%mailbox_file_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entityId` varchar(32) NOT NULL,
  `filePath` varchar(2048) NOT NULL,
  `fileName` varchar(255) NOT NULL,
  `fileSize` int(10) NOT NULL DEFAULT '0',
  `timestamp` int(10) NOT NULL DEFAULT '0',
  `userId` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`,`userId`),
  KEY `entityId` (`entityId`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%mailbox_file_upload`
--

LOCK TABLES `%%TBL-PREFIX%%mailbox_file_upload` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%mailbox_file_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%mailbox_file_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%mailbox_last_message`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%mailbox_last_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%mailbox_last_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `conversationId` int(10) NOT NULL DEFAULT '0',
  `initiatorMessageId` int(10) NOT NULL DEFAULT '0',
  `interlocutorMessageId` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `conversationId` (`conversationId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%mailbox_last_message`
--

LOCK TABLES `%%TBL-PREFIX%%mailbox_last_message` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%mailbox_last_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%mailbox_last_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%mailbox_message`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%mailbox_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%mailbox_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `conversationId` int(10) NOT NULL DEFAULT '0',
  `timeStamp` bigint(10) NOT NULL DEFAULT '0',
  `senderId` int(10) NOT NULL DEFAULT '0',
  `recipientId` int(10) NOT NULL DEFAULT '0',
  `text` mediumtext NOT NULL,
  `recipientRead` tinyint(4) NOT NULL DEFAULT '0',
  `isSystem` tinyint(4) NOT NULL DEFAULT '0',
  `wasAuthorized` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `senderId` (`senderId`),
  KEY `recipientId` (`recipientId`),
  KEY `conversationId` (`conversationId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%mailbox_message`
--

LOCK TABLES `%%TBL-PREFIX%%mailbox_message` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%mailbox_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%mailbox_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%mailbox_user_last_data`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%mailbox_user_last_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%mailbox_user_last_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `data` longtext,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%mailbox_user_last_data`
--

LOCK TABLES `%%TBL-PREFIX%%mailbox_user_last_data` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%mailbox_user_last_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%mailbox_user_last_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%matchmaking_question_match`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%matchmaking_question_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%matchmaking_question_match` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionName` varchar(255) NOT NULL,
  `matchQuestionName` varchar(255) NOT NULL,
  `coefficient` int(11) NOT NULL,
  `match_type` enum('exact','range') NOT NULL DEFAULT 'exact',
  `required` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%matchmaking_question_match`
--

LOCK TABLES `%%TBL-PREFIX%%matchmaking_question_match` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%matchmaking_question_match` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%matchmaking_question_match` VALUES (1,'sex','match_sex',5,'exact',1),(2,'birthdate','match_age',5,'exact',1),(7,'31d5d3d7ff420e340cfe3f17c534eba3','match_31d5d3d7ff420e340cfe3f17c534eba3',3,'exact',0),(6,'6341ee69d879c97cb0c47507a557372c','match_6341ee69d879c97cb0c47507a557372c',2,'exact',0),(8,'a69350b819c8dc1d926cba6b58451f5f','match_a69350b819c8dc1d926cba6b58451f5f',4,'exact',0),(9,'relationship','match_relationship',5,'exact',0),(10,'2b29f145d9d1128a3f57d3af6798fc85','match_2b29f145d9d1128a3f57d3af6798fc85',3,'exact',0),(11,'118af0f3559b872c87467a5a89edf03e','match_118af0f3559b872c87467a5a89edf03e',2,'exact',0);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%matchmaking_question_match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%matchmaking_sent_matches`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%matchmaking_sent_matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%matchmaking_sent_matches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `match_userId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `match_userId` (`match_userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%matchmaking_sent_matches`
--

LOCK TABLES `%%TBL-PREFIX%%matchmaking_sent_matches` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%matchmaking_sent_matches` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%matchmaking_sent_matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%membership_plan`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%membership_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%membership_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeId` int(11) NOT NULL,
  `price` float(9,3) NOT NULL,
  `period` int(11) NOT NULL,
  `recurring` tinyint(1) NOT NULL DEFAULT '0',
  `periodUnits` varchar(20) NOT NULL DEFAULT 'days',
  PRIMARY KEY (`id`),
  KEY `typeId` (`typeId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%membership_plan`
--

LOCK TABLES `%%TBL-PREFIX%%membership_plan` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%membership_plan` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%membership_plan` VALUES (1,1,19.000,30,1,'days'),(5,1,99.000,365,1,'days'),(4,1,49.000,90,1,'days');
/*!40000 ALTER TABLE `%%TBL-PREFIX%%membership_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%membership_type`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%membership_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%membership_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `accountTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  KEY `accountTypeId` (`accountTypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%membership_type`
--

LOCK TABLES `%%TBL-PREFIX%%membership_type` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%membership_type` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%membership_type` VALUES (1,34,53),(5,34,60),(6,34,61);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%membership_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%membership_user`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%membership_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%membership_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `expirationStamp` int(11) NOT NULL,
  `recurring` tinyint(1) NOT NULL DEFAULT '0',
  `trial` tinyint(1) DEFAULT '0',
  `expirationNotified` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%membership_user`
--

LOCK TABLES `%%TBL-PREFIX%%membership_user` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%membership_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%membership_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%membership_user_trial`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%membership_user_trial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%membership_user_trial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `planId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `startStamp` int(11) NOT NULL,
  `expirationStamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%membership_user_trial`
--

LOCK TABLES `%%TBL-PREFIX%%membership_user_trial` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%membership_user_trial` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%membership_user_trial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%moderation_entity`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%moderation_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%moderation_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entityType` varchar(100) NOT NULL,
  `entityId` int(11) NOT NULL,
  `data` text NOT NULL,
  `timeStamp` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entityType` (`entityType`,`entityId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%moderation_entity`
--

LOCK TABLES `%%TBL-PREFIX%%moderation_entity` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%moderation_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%moderation_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%notifications_notification`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%notifications_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%notifications_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entityType` varchar(255) NOT NULL,
  `entityId` varchar(64) NOT NULL,
  `action` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `pluginKey` varchar(255) NOT NULL,
  `timeStamp` int(11) NOT NULL,
  `viewed` int(11) NOT NULL DEFAULT '0',
  `sent` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `data` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entityType` (`entityType`,`entityId`,`userId`),
  KEY `timeStamp` (`timeStamp`),
  KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%notifications_notification`
--

LOCK TABLES `%%TBL-PREFIX%%notifications_notification` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%notifications_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%notifications_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%notifications_rule`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%notifications_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%notifications_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `checked` tinyint(1) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key_userId` (`action`,`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%notifications_rule`
--

LOCK TABLES `%%TBL-PREFIX%%notifications_rule` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%notifications_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%notifications_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%notifications_schedule`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%notifications_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%notifications_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `schedule` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%notifications_schedule`
--

LOCK TABLES `%%TBL-PREFIX%%notifications_schedule` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%notifications_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%notifications_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%notifications_send_queue`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%notifications_send_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%notifications_send_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `timeStamp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%notifications_send_queue`
--

LOCK TABLES `%%TBL-PREFIX%%notifications_send_queue` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%notifications_send_queue` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%notifications_send_queue` VALUES (3,1,1463380922);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%notifications_send_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%notifications_unsubscribe`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%notifications_unsubscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%notifications_unsubscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `timeStamp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%notifications_unsubscribe`
--

LOCK TABLES `%%TBL-PREFIX%%notifications_unsubscribe` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%notifications_unsubscribe` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%notifications_unsubscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%ocsguests_guest`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%ocsguests_guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%ocsguests_guest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `guestId` int(11) NOT NULL,
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `visitTimestamp` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`userId`,`guestId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%ocsguests_guest`
--

LOCK TABLES `%%TBL-PREFIX%%ocsguests_guest` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%ocsguests_guest` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%ocsguests_guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%photo`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `albumId` int(11) NOT NULL,
  `description` text,
  `addDatetime` int(10) DEFAULT NULL,
  `status` enum('approval','approved','blocked') NOT NULL DEFAULT 'approved',
  `hasFullsize` tinyint(1) NOT NULL DEFAULT '1',
  `privacy` varchar(50) NOT NULL DEFAULT 'everybody',
  `hash` varchar(16) DEFAULT NULL,
  `uploadKey` varchar(32) DEFAULT NULL,
  `dimension` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `albumId` (`albumId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%photo`
--

LOCK TABLES `%%TBL-PREFIX%%photo` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%photo_album`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%photo_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%photo_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `entityType` varchar(50) DEFAULT 'user',
  `entityId` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `createDatetime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `userId` (`userId`),
  KEY `entityType` (`entityType`,`entityId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%photo_album`
--

LOCK TABLES `%%TBL-PREFIX%%photo_album` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%photo_album` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%photo_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%photo_album_cover`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%photo_album_cover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%photo_album_cover` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `albumId` int(10) unsigned NOT NULL,
  `hash` varchar(100) DEFAULT NULL,
  `auto` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `albumId` (`albumId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%photo_album_cover`
--

LOCK TABLES `%%TBL-PREFIX%%photo_album_cover` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%photo_album_cover` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%photo_album_cover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%photo_cache`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%photo_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%photo_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` int(11) NOT NULL,
  `data` text NOT NULL,
  `createTimestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%photo_cache`
--

LOCK TABLES `%%TBL-PREFIX%%photo_cache` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%photo_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%photo_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%photo_featured`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%photo_featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%photo_featured` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photoId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%photo_featured`
--

LOCK TABLES `%%TBL-PREFIX%%photo_featured` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%photo_featured` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%photo_featured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%photo_search_data`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%photo_search_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%photo_search_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entityTypeId` int(10) unsigned NOT NULL,
  `entityId` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%photo_search_data`
--

LOCK TABLES `%%TBL-PREFIX%%photo_search_data` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%photo_search_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%photo_search_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%photo_search_entity_type`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%photo_search_entity_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%photo_search_entity_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entityType` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entityType` (`entityType`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%photo_search_entity_type`
--

LOCK TABLES `%%TBL-PREFIX%%photo_search_entity_type` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%photo_search_entity_type` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%photo_search_entity_type` VALUES (1,'photo.album'),(2,'photo.photo');
/*!40000 ALTER TABLE `%%TBL-PREFIX%%photo_search_entity_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%photo_search_index`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%photo_search_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%photo_search_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entityTypeId` int(10) unsigned NOT NULL,
  `entityId` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entityTypeId` (`entityTypeId`,`entityId`),
  FULLTEXT KEY `content` (`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%photo_search_index`
--

LOCK TABLES `%%TBL-PREFIX%%photo_search_index` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%photo_search_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%photo_search_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%photo_temporary`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%photo_temporary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%photo_temporary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `addDatetime` int(11) NOT NULL,
  `hasFullsize` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%photo_temporary`
--

LOCK TABLES `%%TBL-PREFIX%%photo_temporary` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%photo_temporary` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%photo_temporary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%photo_update_tag`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%photo_update_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%photo_update_tag` (
  `entityTagId` int(10) unsigned NOT NULL,
  UNIQUE KEY `entityTagId` (`entityTagId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%photo_update_tag`
--

LOCK TABLES `%%TBL-PREFIX%%photo_update_tag` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%photo_update_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%photo_update_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%protectedphotos_accesses`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%protectedphotos_accesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%protectedphotos_accesses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `passwordId` int(10) unsigned NOT NULL,
  `userId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `passwordId` (`passwordId`,`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%protectedphotos_accesses`
--

LOCK TABLES `%%TBL-PREFIX%%protectedphotos_accesses` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%protectedphotos_accesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%protectedphotos_accesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%protectedphotos_passwords`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%protectedphotos_passwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%protectedphotos_passwords` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `albumId` int(10) unsigned NOT NULL,
  `privacy` varchar(128) NOT NULL,
  `meta` text,
  `password` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `albumId` (`albumId`),
  KEY `privacy` (`privacy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%protectedphotos_passwords`
--

LOCK TABLES `%%TBL-PREFIX%%protectedphotos_passwords` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%protectedphotos_passwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%protectedphotos_passwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%skadate_account_type_to_gender`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%skadate_account_type_to_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%skadate_account_type_to_gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountType` varchar(32) NOT NULL,
  `genderValue` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accountType` (`accountType`),
  UNIQUE KEY `genderValue` (`genderValue`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%skadate_account_type_to_gender`
--

LOCK TABLES `%%TBL-PREFIX%%skadate_account_type_to_gender` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%skadate_account_type_to_gender` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%skadate_account_type_to_gender` VALUES (1,'808aa8ca354f51c5a3868dad5298cd72',1),(2,'8cc28eaddb382d7c6a94aeea9ec029fb',2);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%skadate_account_type_to_gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%skadate_avatar`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%skadate_avatar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%skadate_avatar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatarId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `hash` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `avatarId` (`avatarId`,`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%skadate_avatar`
--

LOCK TABLES `%%TBL-PREFIX%%skadate_avatar` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%skadate_avatar` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%skadate_avatar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%skadate_current_location`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%skadate_current_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%skadate_current_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `latitude` decimal(12,8) NOT NULL,
  `longitude` decimal(12,8) NOT NULL,
  `updateTimestamp` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%skadate_current_location`
--

LOCK TABLES `%%TBL-PREFIX%%skadate_current_location` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%skadate_current_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%skadate_current_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%skadate_speedmatch_relation`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%skadate_speedmatch_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%skadate_speedmatch_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `oppUserId` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `addTimestamp` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `relation` (`userId`,`oppUserId`),
  KEY `oppUserId` (`oppUserId`),
  KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%skadate_speedmatch_relation`
--

LOCK TABLES `%%TBL-PREFIX%%skadate_speedmatch_relation` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%skadate_speedmatch_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%skadate_speedmatch_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%usercredits_action`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%usercredits_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%usercredits_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pluginKey` varchar(100) NOT NULL,
  `actionKey` varchar(100) NOT NULL,
  `isHidden` tinyint(1) NOT NULL DEFAULT '0',
  `settingsRoute` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `action` (`pluginKey`,`actionKey`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%usercredits_action`
--

LOCK TABLES `%%TBL-PREFIX%%usercredits_action` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%usercredits_action` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%usercredits_action` VALUES (1,'base','daily_login',0,NULL,1),(2,'base','user_join',0,NULL,1),(3,'base','search_users',0,NULL,1),(4,'base','add_comment',0,NULL,1),(5,'photo','add_photo',0,NULL,1),(6,'photo','add_comment',0,NULL,1),(7,'mailbox','send_message',0,NULL,1),(44,'hotlist','add_to_list',0,NULL,1),(45,'virtualgifts','template_1',1,NULL,1),(46,'virtualgifts','template_2',1,NULL,1),(47,'virtualgifts','template_3',1,NULL,1),(48,'virtualgifts','template_4',1,NULL,1),(49,'virtualgifts','template_5',1,NULL,1),(50,'virtualgifts','template_6',1,NULL,1),(51,'virtualgifts','template_7',1,NULL,1),(52,'virtualgifts','template_8',1,NULL,1),(53,'virtualgifts','template_9',1,NULL,1),(54,'virtualgifts','template_10',1,NULL,1),(55,'virtualgifts','template_11',1,NULL,1),(56,'virtualgifts','template_12',1,NULL,1),(57,'virtualgifts','template_13',1,NULL,1),(58,'virtualgifts','template_14',1,NULL,1),(59,'virtualgifts','template_15',1,NULL,1),(60,'mailbox','read_message',0,NULL,1),(61,'usercredits','buy_credits',1,NULL,1),(62,'usercredits','grant_by_user',1,NULL,1),(63,'usercredits','grant_to_user',1,NULL,1),(64,'usercredits','set_by_admin',1,NULL,1),(65,'mailbox','reply_to_message',0,NULL,1),(66,'mailbox','send_chat_message',0,NULL,1),(67,'mailbox','read_chat_message',0,NULL,1),(68,'mailbox','reply_to_chat_message',0,NULL,1),(69,'virtualgifts','send_virtual_gift',0,'virtual_gifts_templates',1);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%usercredits_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%usercredits_action_price`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%usercredits_action_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%usercredits_action_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actionId` int(11) NOT NULL,
  `accountTypeId` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `actionPrice` (`actionId`,`accountTypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%usercredits_action_price`
--

LOCK TABLES `%%TBL-PREFIX%%usercredits_action_price` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%usercredits_action_price` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%usercredits_action_price` VALUES (25,1,60,5,0),(26,2,60,10,0),(27,3,60,0,0),(28,4,60,0,0),(29,5,60,3,0),(30,6,60,0,0),(31,7,60,-10,0),(32,44,60,-20,0),(33,45,60,-5,0),(34,46,60,-5,0),(35,47,60,-5,0),(36,48,60,-5,0),(37,49,60,-5,0),(38,50,60,-5,0),(39,51,60,-5,0),(40,52,60,-5,0),(41,53,60,-5,0),(42,54,60,-5,0),(43,55,60,-5,0),(44,56,60,-5,0),(45,57,60,-5,0),(46,58,60,-5,0),(47,59,60,-5,0),(48,60,60,0,0),(49,1,61,5,0),(50,2,61,10,0),(51,3,61,0,0),(52,4,61,0,0),(53,5,61,3,0),(54,6,61,0,0),(55,7,61,-10,0),(56,44,61,-20,0),(57,45,61,-5,0),(58,46,61,-5,0),(59,47,61,-5,0),(60,48,61,-5,0),(61,49,61,-5,0),(62,50,61,-5,0),(63,51,61,-5,0),(64,52,61,-5,0),(65,53,61,-5,0),(66,54,61,-5,0),(67,55,61,-5,0),(68,56,61,-5,0),(69,57,61,-5,0),(70,58,61,-5,0),(71,59,61,-5,0),(72,60,61,0,0),(97,61,60,0,0),(98,61,61,0,0),(99,62,60,0,0),(100,62,61,0,0),(101,63,60,0,0),(102,63,61,0,0),(103,64,60,0,0),(104,64,61,0,0),(105,65,60,0,0),(106,65,61,0,0),(107,66,60,0,0),(108,66,61,0,0),(109,67,60,0,0),(110,67,61,0,0),(111,68,60,0,0),(112,68,61,0,0),(113,69,60,0,0),(114,69,61,0,0);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%usercredits_action_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%usercredits_balance`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%usercredits_balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%usercredits_balance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%usercredits_balance`
--

LOCK TABLES `%%TBL-PREFIX%%usercredits_balance` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%usercredits_balance` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%usercredits_balance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%usercredits_log`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%usercredits_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%usercredits_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `actionId` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `logTimestamp` int(11) NOT NULL DEFAULT '0',
  `additionalParams` varchar(2048) DEFAULT NULL,
  `groupKey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `actionId` (`actionId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%usercredits_log`
--

LOCK TABLES `%%TBL-PREFIX%%usercredits_log` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%usercredits_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%usercredits_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%usercredits_pack`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%usercredits_pack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%usercredits_pack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountTypeId` int(11) DEFAULT NULL,
  `credits` int(11) NOT NULL,
  `price` float(9,3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%usercredits_pack`
--

LOCK TABLES `%%TBL-PREFIX%%usercredits_pack` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%usercredits_pack` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%usercredits_pack` VALUES (1,53,100,20.000),(2,53,200,35.000),(3,53,500,50.000),(4,60,100,20.000),(5,60,200,35.000),(6,60,500,50.000),(7,61,100,20.000),(8,61,200,35.000),(9,61,500,50.000);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%usercredits_pack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%virtualgifts_category`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%virtualgifts_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%virtualgifts_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%virtualgifts_category`
--

LOCK TABLES `%%TBL-PREFIX%%virtualgifts_category` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%virtualgifts_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%virtualgifts_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%virtualgifts_template`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%virtualgifts_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%virtualgifts_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` int(11) DEFAULT NULL,
  `extension` varchar(10) NOT NULL,
  `uploadTimestamp` int(11) NOT NULL DEFAULT '0',
  `price` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `categoryId` (`categoryId`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%virtualgifts_template`
--

LOCK TABLES `%%TBL-PREFIX%%virtualgifts_template` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%virtualgifts_template` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%virtualgifts_template` VALUES (1,NULL,'jpg',1463552438,0),(2,NULL,'jpg',1463552438,0),(3,NULL,'jpg',1463552438,0),(4,NULL,'jpg',1463552438,0),(5,NULL,'jpg',1463552438,0),(6,NULL,'jpg',1463552438,0),(7,NULL,'jpg',1463552438,0),(8,NULL,'jpg',1463552438,0),(9,NULL,'jpg',1463552438,0),(10,NULL,'jpg',1463552438,0),(11,NULL,'jpg',1463552438,0),(12,NULL,'jpg',1463552438,0),(13,NULL,'jpg',1463552438,0),(14,NULL,'jpg',1463552438,0),(15,NULL,'jpg',1463552438,0);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%virtualgifts_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%virtualgifts_user_gift`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%virtualgifts_user_gift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%virtualgifts_user_gift` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `templateId` int(11) NOT NULL,
  `senderId` int(11) NOT NULL,
  `recipientId` int(11) NOT NULL,
  `sendTimestamp` int(11) NOT NULL,
  `message` text,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `senderId` (`senderId`),
  KEY `recipientId` (`recipientId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%virtualgifts_user_gift`
--

LOCK TABLES `%%TBL-PREFIX%%virtualgifts_user_gift` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%virtualgifts_user_gift` DISABLE KEYS */;
INSERT INTO `%%TBL-PREFIX%%virtualgifts_user_gift` VALUES (1,9,206,213,1371533376,'Hi, you are nice!',0);
/*!40000 ALTER TABLE `%%TBL-PREFIX%%virtualgifts_user_gift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `%%TBL-PREFIX%%winks_winks`
--

DROP TABLE IF EXISTS `%%TBL-PREFIX%%winks_winks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `%%TBL-PREFIX%%winks_winks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `partnerId` int(10) unsigned NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `status` enum('accept','ignore','wait') NOT NULL DEFAULT 'wait',
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `conversationId` int(10) unsigned NOT NULL DEFAULT '0',
  `winkback` tinyint(1) NOT NULL DEFAULT '0',
  `messageType` enum('chat','mail') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`userId`,`partnerId`),
  KEY `status` (`status`,`viewed`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `%%TBL-PREFIX%%winks_winks`
--

LOCK TABLES `%%TBL-PREFIX%%winks_winks` WRITE;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%winks_winks` DISABLE KEYS */;
/*!40000 ALTER TABLE `%%TBL-PREFIX%%winks_winks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-18 12:20:39
