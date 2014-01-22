-- MySQL dump 10.13  Distrib 5.1.70, for unknown-linux-gnu (x86_64)
--
-- Host: localhost    Database: thejsj_canada
-- ------------------------------------------------------
-- Server version	5.1.70-cll

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
-- Table structure for table `cms_additional_htmlblob_users`
--

DROP TABLE IF EXISTS `cms_additional_htmlblob_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_additional_htmlblob_users` (
  `additional_htmlblob_users_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `htmlblob_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`additional_htmlblob_users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_additional_htmlblob_users`
--

LOCK TABLES `cms_additional_htmlblob_users` WRITE;
/*!40000 ALTER TABLE `cms_additional_htmlblob_users` DISABLE KEYS */;
INSERT INTO `cms_additional_htmlblob_users` (`additional_htmlblob_users_id`, `user_id`, `htmlblob_id`) VALUES (1,1,2);
/*!40000 ALTER TABLE `cms_additional_htmlblob_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_additional_htmlblob_users_seq`
--

DROP TABLE IF EXISTS `cms_additional_htmlblob_users_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_additional_htmlblob_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_additional_htmlblob_users_seq`
--

LOCK TABLES `cms_additional_htmlblob_users_seq` WRITE;
/*!40000 ALTER TABLE `cms_additional_htmlblob_users_seq` DISABLE KEYS */;
INSERT INTO `cms_additional_htmlblob_users_seq` (`id`) VALUES (1);
/*!40000 ALTER TABLE `cms_additional_htmlblob_users_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_additional_users`
--

DROP TABLE IF EXISTS `cms_additional_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_additional_users` (
  `additional_users_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`additional_users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_additional_users`
--

LOCK TABLES `cms_additional_users` WRITE;
/*!40000 ALTER TABLE `cms_additional_users` DISABLE KEYS */;
INSERT INTO `cms_additional_users` (`additional_users_id`, `user_id`, `page_id`, `content_id`) VALUES (8,-2,NULL,61);
/*!40000 ALTER TABLE `cms_additional_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_additional_users_seq`
--

DROP TABLE IF EXISTS `cms_additional_users_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_additional_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_additional_users_seq`
--

LOCK TABLES `cms_additional_users_seq` WRITE;
/*!40000 ALTER TABLE `cms_additional_users_seq` DISABLE KEYS */;
INSERT INTO `cms_additional_users_seq` (`id`) VALUES (8);
/*!40000 ALTER TABLE `cms_additional_users_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_admin_bookmarks`
--

DROP TABLE IF EXISTS `cms_admin_bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_admin_bookmarks` (
  `bookmark_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bookmark_id`),
  KEY `index_admin_bookmarks_by_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_admin_bookmarks`
--

LOCK TABLES `cms_admin_bookmarks` WRITE;
/*!40000 ALTER TABLE `cms_admin_bookmarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_admin_bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_admin_bookmarks_seq`
--

DROP TABLE IF EXISTS `cms_admin_bookmarks_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_admin_bookmarks_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_admin_bookmarks_seq`
--

LOCK TABLES `cms_admin_bookmarks_seq` WRITE;
/*!40000 ALTER TABLE `cms_admin_bookmarks_seq` DISABLE KEYS */;
INSERT INTO `cms_admin_bookmarks_seq` (`id`) VALUES (0);
/*!40000 ALTER TABLE `cms_admin_bookmarks_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_admin_recent_pages`
--

DROP TABLE IF EXISTS `cms_admin_recent_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_admin_recent_pages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `access_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_admin_recent_pages`
--

LOCK TABLES `cms_admin_recent_pages` WRITE;
/*!40000 ALTER TABLE `cms_admin_recent_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_admin_recent_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_admin_recent_pages_seq`
--

DROP TABLE IF EXISTS `cms_admin_recent_pages_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_admin_recent_pages_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_admin_recent_pages_seq`
--

LOCK TABLES `cms_admin_recent_pages_seq` WRITE;
/*!40000 ALTER TABLE `cms_admin_recent_pages_seq` DISABLE KEYS */;
INSERT INTO `cms_admin_recent_pages_seq` (`id`) VALUES (0);
/*!40000 ALTER TABLE `cms_admin_recent_pages_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_adminlog`
--

DROP TABLE IF EXISTS `cms_adminlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_adminlog` (
  `timestamp` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_adminlog`
--

LOCK TABLES `cms_adminlog` WRITE;
/*!40000 ALTER TABLE `cms_adminlog` DISABLE KEYS */;
INSERT INTO `cms_adminlog` (`timestamp`, `user_id`, `username`, `item_id`, `item_name`, `action`) VALUES (1270237338,0,'',0,'File Manager','FileManager version 1.0.2 installed'),(1270237338,0,'',0,'Module Manager','Module version 1.3.3 installed.'),(1270237338,0,'',0,'nuSOAP','Installed'),(1270237339,0,'',0,'Theme Manager','Module version 1.1.1 installed.'),(1270237339,0,'',0,'TinyMCE WYSIWYG','Module version 2.6.5 installed.'),(1270237342,1,'admin',1,'admin','User Login'),(1270237370,1,'admin',15,'CSSMenu left + 1 column','Edited Template'),(1270237373,1,'admin',15,'CSSMenu left + 1 column','Edited Template'),(1270237375,1,'admin',15,'CSSMenu left + 1 column','Edited Template'),(1270237473,1,'admin',28,'User Defined Tags (4.2.2) -- 28','Deleted Content'),(1270237473,1,'admin',26,'Tags in the core (4.2.1) -- 26','Deleted Content'),(1270237473,1,'admin',25,'Tags (4.2) -- 25','Deleted Content'),(1270237473,1,'admin',50,'Module Manager (4.1.6) -- 50','Deleted Content'),(1270237473,1,'admin',43,'Search (4.1.5) -- 43','Deleted Content'),(1270237473,1,'admin',42,'TinyMCE (4.1.4) -- 42','Deleted Content'),(1270237473,1,'admin',41,'Theme Manager (4.1.3) -- 41','Deleted Content'),(1270237473,1,'admin',40,'Menu Manager (4.1.2) -- 40','Deleted Content'),(1270237473,1,'admin',39,'News (4.1.1) -- 39','Deleted Content'),(1270237473,1,'admin',20,'Modules (4.1) -- 20','Deleted Content'),(1270237473,1,'admin',24,'Default Extensions (4) -- 24','Deleted Content'),(1270237473,1,'admin',52,'ShadowMenu left + 1 column (3.7.3) -- 52','Deleted Content'),(1270237473,1,'admin',51,'ShadowMenu Tab + 2 columns (3.7.2) -- 51','Deleted Content'),(1270237473,1,'admin',54,'NCleanBlue (3.7.1) -- 54','Deleted Content'),(1270237473,1,'admin',55,'Higher End (3.7) -- 55','Deleted Content'),(1270237473,1,'admin',44,'Minimal template (3.6) -- 44','Deleted Content'),(1270237473,1,'admin',18,'CSSMenu left + 1 column (3.5) -- 18','Deleted Content'),(1270237473,1,'admin',16,'CSSMenu top + 2 columns (3.4) -- 16','Deleted Content'),(1270237473,1,'admin',22,'Top simple navigation + left subnavigation + 1 col','Deleted Content'),(1270237473,1,'admin',13,'Left simple navigation + 1 column (3.2) -- 13','Deleted Content'),(1270237473,1,'admin',49,'CMSMS tags in the templates (3.1) -- 49','Deleted Content'),(1270237473,1,'admin',19,'Default Templates Explained (3) -- 19','Deleted Content'),(1270237473,1,'admin',47,'Where do I get help? (2.8) -- 47','Deleted Content'),(1270237473,1,'admin',38,'Workflow (2.7) -- 38','Deleted Content'),(1270237473,1,'admin',45,'Event Manager (2.6) -- 45','Deleted Content'),(1270237473,1,'admin',46,'Extensions (2.5) -- 46','Deleted Content'),(1270237473,1,'admin',30,'Menu Manager (2.4) -- 30','Deleted Content'),(1270237473,1,'admin',29,'Content (2.3) -- 29','Deleted Content'),(1270237473,1,'admin',37,'Pages and navigation (2.2) -- 37','Deleted Content'),(1270237473,1,'admin',36,'Templates and stylesheets (2.1) -- 36','Deleted Content'),(1270237473,1,'admin',47,'Where do I get help? (2.8) -- 47','Deleted Content'),(1270237473,1,'admin',38,'Workflow (2.7) -- 38','Deleted Content'),(1270237473,1,'admin',45,'Event Manager (2.6) -- 45','Deleted Content'),(1270237473,1,'admin',46,'Extensions (2.5) -- 46','Deleted Content'),(1270237473,1,'admin',30,'Menu Manager (2.4) -- 30','Deleted Content'),(1270237473,1,'admin',29,'Content (2.3) -- 29','Deleted Content'),(1270237473,1,'admin',37,'Pages and navigation (2.2) -- 37','Deleted Content'),(1270237473,1,'admin',36,'Templates and stylesheets (2.1) -- 36','Deleted Content'),(1270237473,1,'admin',34,'How CMSMS Works (2) -- 34','Deleted Content'),(1270237791,1,'admin',33,'Navigation: CSSMenu - Vertical','Added Stylesheet Association'),(1270237841,1,'admin',33,'Navigation: CSSMenu - Vertical','Edited CSS'),(1270237987,1,'admin',22,'NCleanBlue','Edited Template'),(1270238129,1,'admin',19,'Minimal template','Edited Template'),(1270240447,1,'admin',22,'NCleanBlue','Edited Template'),(1270240468,1,'admin',22,'NCleanBlue','Edited Template'),(1270240469,1,'admin',22,'NCleanBlue','Edited Template'),(1270240556,1,'admin',49,'Layout: NCleanBlue','Edited CSS'),(1270240565,1,'admin',49,'Layout: NCleanBlue','Edited CSS'),(1270240869,1,'admin',15,'Home','Edited Content'),(1270240903,1,'admin',15,'Home','Edited Content'),(1270240995,1,'admin',56,'Content2','Added Content'),(1270241145,1,'admin',57,'Coneten #3','Added Content'),(1270241325,1,'admin',58,'Internal Page LInk','Added Content'),(1270241364,1,'admin',59,'Section Header #1','Added Content'),(1270241458,1,'admin',15,'Home','Edited Content'),(1270241498,1,'admin',15,'CSSMenu left + 1 column','Deleted Template'),(1270241498,1,'admin',16,'CSSMenu top + 2 columns','Deleted Template'),(1270241498,1,'admin',17,'Left simple navigation + 1 column','Deleted Template'),(1270241498,1,'admin',21,'ShadowMenu left + 1 column','Deleted Template'),(1270241498,1,'admin',20,'ShadowMenu Tab + 2 columns','Deleted Template'),(1270241498,1,'admin',18,'Top simple navigation + left subnavigation + 1 col','Deleted Template'),(1270241516,1,'admin',22,'NCleanBlue','Edited Template'),(1270241530,1,'admin',23,'Leadership Summer Camp','Copied Template'),(1270241644,1,'admin',23,'Leadership Summer Camp','Edited Template'),(1270241878,1,'admin',23,'Leadership Summer Camp','Edited Template'),(1270242287,1,'admin',23,'Leadership Summer Camp','Edited Template'),(1270242396,1,'admin',19,'Minimal template','Edited Template'),(1270242428,1,'admin',59,'Section Header #1 (1.4) -- 59','Deleted Content'),(1270242428,1,'admin',58,'Internal Page LInk (1.3) -- 58','Deleted Content'),(1270242428,1,'admin',57,'Coneten #3 (1.2) -- 57','Deleted Content'),(1270242428,1,'admin',56,'Content2 (1.1) -- 56','Deleted Content'),(1270242447,1,'admin',15,'Home','Edited Content'),(1270242504,1,'admin',19,'Minimal template','Edited Template'),(1270245701,1,'admin',15,'Home','Edited Content'),(1270246515,1,'admin',19,'Minimal template','Edited Template'),(1270246856,1,'admin',15,'Home','Edited Content'),(1270246886,1,'admin',24,'Leadership Summer Camp Template','Added Template'),(1270246891,1,'admin',23,'Leadership Summer Camp','Deleted Template'),(1270246951,1,'admin',15,'Home','Edited Content'),(1270247115,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270247183,1,'admin',60,'FAQ','Added Content'),(1270247842,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270248483,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270248544,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270248777,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270249183,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270249304,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270249392,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270249532,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270249579,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270249707,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270249743,1,'admin',15,'Home','Edited Content'),(1270249833,1,'admin',2,'JS','Added Global Content Block'),(1270249847,1,'admin',2,'JS','Edited Global Content Block'),(1270249883,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270250013,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270250472,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270251425,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270252671,1,'admin',60,'$(...).scrollTo( \'li:eq(faq)\', 800 );','Edited Content'),(1270252755,1,'admin',60,'FAQ','Edited Content'),(1270252789,1,'admin',60,'FAQ','Edited Content'),(1270252790,1,'admin',60,'FAQ','Edited Content'),(1270252845,1,'admin',60,'FAQ','Edited Content'),(1270253109,1,'admin',60,'FAQ','Edited Content'),(1270253161,1,'admin',60,'FAQ','Edited Content'),(1270253173,1,'admin',60,'$(...).scrollTo( \'li:eq(faq)\', 800 );','Edited Content'),(1270253214,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270253978,1,'admin',61,'Nuestra Filosofia','Added Content'),(1270254040,1,'admin',61,'Nuestra Filosofia','Edited Content'),(1270254070,1,'admin',61,'Nuestra Filosofia','Edited Content'),(1270254125,1,'admin',61,'Nuestra Filosofia','Edited Content'),(1270254128,1,'admin',61,'Nuestra Filosofia','Edited Content'),(1270254864,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270255050,1,'admin',61,'Nuestra Filosofia','Edited Content'),(1270256199,1,'admin',15,'Home','Edited Content'),(1270256592,1,'admin',15,'Home','Edited Content'),(1270256617,1,'admin',60,'$(...).scrollTo( \'li:eq(faq)\', 800 );','Edited Content'),(1270256642,1,'admin',61,'Nuestra Filosofia','Edited Content'),(1270256836,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270257098,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270257101,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270257159,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270257161,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270257255,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270257325,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270257344,1,'admin',60,'$(...).scrollTo( \'li:eq(faq)\', 800 );','Edited Content'),(1270257348,1,'admin',60,'$(...).scrollTo( \'li:eq(faq)\', 800 );','Edited Content'),(1270257657,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270257666,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270258152,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270258815,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270258829,1,'admin',60,'$(...).scrollTo( \'li:eq(faq)\', 800 );','Edited Content'),(1270259674,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270263442,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270263477,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270263564,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270263602,1,'admin',60,'$(...).scrollTo( \'li:eq(faq)\', 800 );','Edited Content'),(1270263607,1,'admin',60,'$(...).scrollTo( \'li:eq(faq)\', 800 );','Edited Content'),(1270263618,1,'admin',61,'Nuestra Filosofia','Edited Content'),(1270263620,1,'admin',61,'Nuestra Filosofia','Edited Content'),(1270263628,1,'admin',61,'Nuestra Filosofia','Edited Content'),(1270263699,1,'admin',60,'$(...).scrollTo( \'li:eq(faq)\', 800 );','Edited Content'),(1270263715,1,'admin',61,'Nuestra Filosofia','Edited Content'),(1270264231,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270267750,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270268011,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270322494,0,'',0,'admin','User Login Failed'),(1270322550,1,'admin',1,'admin','User Login'),(1270949731,0,'',0,'admin','User Login Failed'),(1270949737,0,'',0,'admin','User Login Failed'),(1270949898,1,'admin',1,'admin','User Login'),(1270950140,1,'admin',62,'Padres','Added Content'),(1270950175,1,'admin',62,'Padres','Edited Content'),(1270950205,1,'admin',63,'Staff','Added Content'),(1270950235,1,'admin',64,'Facilidades','Added Content'),(1270950273,1,'admin',65,'Camp Info','Added Content'),(1270950300,1,'admin',66,'Actividades','Added Content'),(1270950554,1,'admin',62,'Padres','Edited Content'),(1270950563,1,'admin',63,'Staff','Edited Content'),(1270950572,1,'admin',64,'Facilidades','Edited Content'),(1270950580,1,'admin',65,'Camp Info','Edited Content'),(1270950587,1,'admin',66,'Actividades','Edited Content'),(1270953487,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1270953569,1,'admin',67,'Galeria de Fotos','Added Content'),(1270954439,1,'admin',60,'$(...).scrollTo( \'li:eq(faq)\', 800 );','Edited Content'),(1271416334,1,'admin',1,'admin','User Login'),(1271416434,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1271416644,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1271417283,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1272244894,1,'admin',1,'admin','User Login'),(1272244948,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1272245452,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1272245508,1,'admin',15,'Home','Edited Content'),(1272245704,1,'admin',15,'Home','Edited Content'),(1272247383,1,'admin',24,'Leadership Summer Camp Template','Edited Template'),(1272247589,1,'admin',1,'admin','User Login'),(1272247639,1,'admin',2,'cesar','Added User'),(1272248293,2,'cesar',2,'cesar','User Login'),(1272248648,2,'cesar',2,'cesar','User Logout');
/*!40000 ALTER TABLE `cms_adminlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_content`
--

DROP TABLE IF EXISTS `cms_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content` (
  `content_id` int(11) NOT NULL,
  `content_name` varchar(255) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `hierarchy` varchar(255) DEFAULT NULL,
  `default_content` tinyint(4) DEFAULT NULL,
  `menu_text` varchar(255) DEFAULT NULL,
  `content_alias` varchar(255) DEFAULT NULL,
  `show_in_menu` tinyint(4) DEFAULT NULL,
  `collapsed` tinyint(4) DEFAULT NULL,
  `markup` varchar(25) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `cachable` tinyint(4) DEFAULT NULL,
  `id_hierarchy` varchar(255) DEFAULT NULL,
  `hierarchy_path` text,
  `prop_names` text,
  `metadata` text,
  `titleattribute` varchar(255) DEFAULT NULL,
  `tabindex` varchar(10) DEFAULT NULL,
  `accesskey` varchar(5) DEFAULT NULL,
  `last_modified_by` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`content_id`),
  KEY `index_content_by_content_alias_active` (`content_alias`,`active`),
  KEY `index_content_by_default_content` (`default_content`),
  KEY `index_content_by_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content`
--

LOCK TABLES `cms_content` WRITE;
/*!40000 ALTER TABLE `cms_content` DISABLE KEYS */;
INSERT INTO `cms_content` (`content_id`, `content_name`, `type`, `owner_id`, `parent_id`, `template_id`, `item_order`, `hierarchy`, `default_content`, `menu_text`, `content_alias`, `show_in_menu`, `collapsed`, `markup`, `active`, `cachable`, `id_hierarchy`, `hierarchy_path`, `prop_names`, `metadata`, `titleattribute`, `tabindex`, `accesskey`, `last_modified_by`, `create_date`, `modified_date`) VALUES (15,'Home','content',1,-1,24,1,'00001',1,'Home','hometo',1,1,'html',1,1,'15','hometo','target,pagedata,extra1,extra2,extra3,Textblock-2,image,searchable,disable_wysiwyg,image1,Galeria de Fotos,Nuestra Filosofia,Camp Info,Home,thumbnail,Galeria_de_Fotos,FAQ,Nuestra_Filosofia,Padres,Staff,Facilidades,Camp_Info,Actividades,js,content_en','','Home Page, shortcut key=1','','1',1,'2006-07-25 21:22:31','2010-04-25 20:35:04'),(60,'$(...).scrollTo( \'li:eq(faq)\', 800 );','pagelink',1,-1,24,2,'00002',0,'FAQ','faqto',1,NULL,'html',1,1,'60','faqto','target,image,thumbnail,extra2,extra3,page,params,extra1','','$(...).scrollTo( \'li:eq(faq)\', 800 );','','',1,'2010-04-02 17:26:23','2010-04-10 21:53:59'),(61,'Nuestra Filosofia','pagelink',1,-1,24,3,'00003',0,'Nuestra Filosofia','filosofiato',1,NULL,'html',1,1,'61','filosofiato','target,image,thumbnail,extra1,extra2,extra3,page,params','','title_attribute','tabin','acces',1,'2010-04-02 19:19:37','2010-04-02 22:01:55'),(62,'Padres','pagelink',1,-1,24,4,'00004',0,'Padres','padresto',1,NULL,'html',1,1,'62','padresto','target,image,thumbnail,extra1,extra2,extra3,page,params','','','','',1,'2010-04-10 20:42:19','2010-04-10 20:49:14'),(63,'Staff','pagelink',1,-1,24,5,'00005',0,'Staff','staffto',1,NULL,'html',1,1,'63','staffto','target,image,thumbnail,extra1,extra2,extra3,page,params','','','','',1,'2010-04-10 20:43:25','2010-04-10 20:49:23'),(64,'Facilidades','pagelink',1,-1,24,6,'00006',0,'Facilidades','facilidadesto',1,NULL,'html',1,1,'64','facilidadesto','target,image,thumbnail,extra1,extra2,extra3,page,params','','','','',1,'2010-04-10 20:43:55','2010-04-10 20:49:32'),(65,'Camp Info','pagelink',1,-1,24,7,'00007',0,'Camp Info','campinfoto',1,NULL,'html',1,1,'65','campinfoto','target,image,thumbnail,extra1,extra2,extra3,page,params','','','','',1,'2010-04-10 20:44:33','2010-04-10 20:49:40'),(66,'Actividades','pagelink',1,-1,24,8,'00008',0,'Actividades','actividadesto',1,NULL,'html',1,1,'66','actividadesto','target,image,thumbnail,extra1,extra2,extra3,page,params','','','','',1,'2010-04-10 20:45:00','2010-04-10 20:49:47'),(67,'Galeria de Fotos','pagelink',1,-1,24,9,'00009',0,'Galeria de Fotos','galeriato',1,NULL,'html',1,1,'67','galeriato','target,image,thumbnail,extra1,extra2,extra3,page,params','','','','',1,'2010-04-10 21:39:29','2010-04-10 21:39:29');
/*!40000 ALTER TABLE `cms_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_content_props`
--

DROP TABLE IF EXISTS `cms_content_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_props` (
  `content_id` int(11) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `prop_name` varchar(255) DEFAULT NULL,
  `param1` varchar(255) DEFAULT NULL,
  `param2` varchar(255) DEFAULT NULL,
  `param3` varchar(255) DEFAULT NULL,
  `content` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  KEY `index_content_props_by_content_id` (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_props`
--

LOCK TABLES `cms_content_props` WRITE;
/*!40000 ALTER TABLE `cms_content_props` DISABLE KEYS */;
INSERT INTO `cms_content_props` (`content_id`, `type`, `prop_name`, `param1`, `param2`, `param3`, `content`, `create_date`, `modified_date`) VALUES (31,'string','content_en',NULL,NULL,NULL,'asdf','2006-07-25 21:22:31','2006-07-25 21:22:31'),(32,'string','content_en',NULL,NULL,NULL,'asdf','2006-07-25 21:22:31','2006-07-25 21:22:31'),(15,'string','target','','','','',NULL,'2010-04-25 20:35:04'),(15,'string','pagedata','','','','',NULL,'2010-04-25 20:35:04'),(15,'string','extra1','','','','',NULL,'2010-04-25 20:35:04'),(15,'string','extra2','','','','',NULL,'2010-04-25 20:35:04'),(15,'string','extra3','','','','',NULL,'2010-04-25 20:35:04'),(15,'string','Textblock-2','','','','',NULL,'2010-04-25 20:35:04'),(15,'string','image','','','','-1',NULL,'2010-04-25 20:35:04'),(15,'string','searchable','','','','1',NULL,'2010-04-25 20:35:04'),(15,'string','disable_wysiwyg','','','','0',NULL,'2010-04-25 20:35:04'),(15,'string','image1','','','','uploads/images/logo1.gif',NULL,'2010-04-25 20:35:04'),(15,'string','Galeria de Fotos','','','','',NULL,'2010-04-25 20:35:04'),(15,'string','Nuestra Filosofia','','','','',NULL,'2010-04-25 20:35:04'),(15,'string','Camp Info','','','','',NULL,'2010-04-25 20:35:04'),(60,'string','target','','','','',NULL,'2010-04-10 21:53:59'),(60,'string','image','','','','-1',NULL,'2010-04-10 21:53:59'),(60,'string','thumbnail','','','','-1',NULL,'2010-04-10 21:53:59'),(15,'string','Home','','','','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sit  amet est ante, et accumsan diam. Cras vehicula sagittis mi, eget tempus  ante suscipit a. Sed tellus mauris, adipiscing nec dignissim a,  hendrerit a arcu. Vestibulum a magna vitae lorem pretium aliquet.﻿',NULL,'2010-04-25 20:35:04'),(60,'string','extra2','','','','',NULL,'2010-04-10 21:53:59'),(60,'string','extra3','','','','',NULL,'2010-04-10 21:53:59'),(60,'int','page','','','','15',NULL,'2010-04-10 21:53:59'),(60,'string','params','','','','#',NULL,'2010-04-10 21:53:59'),(61,'string','target','','','','',NULL,'2010-04-02 22:01:55'),(60,'string','extra1','','','','$(...).scrollTo( \'li:eq(faq)\', 800 );',NULL,'2010-04-10 21:53:59'),(61,'string','image','','','','logo1.gif',NULL,'2010-04-02 22:01:55'),(61,'string','thumbnail','','','','thumb_logo1.gif',NULL,'2010-04-02 22:01:55'),(61,'string','extra1','','','','extrapage',NULL,'2010-04-02 22:01:55'),(61,'string','extra2','','','','extrapage',NULL,'2010-04-02 22:01:55'),(61,'string','extra3','','','','extrapage',NULL,'2010-04-02 22:01:55'),(61,'int','page','','','','15',NULL,'2010-04-02 22:01:55'),(61,'string','params','','','','#',NULL,'2010-04-02 22:01:55'),(62,'string','target','','','','',NULL,'2010-04-10 20:49:14'),(62,'string','image','','','','-1',NULL,'2010-04-10 20:49:14'),(62,'string','thumbnail','','','','-1',NULL,'2010-04-10 20:49:14'),(62,'string','extra1','','','','',NULL,'2010-04-10 20:49:14'),(62,'string','extra2','','','','',NULL,'2010-04-10 20:49:14'),(62,'string','extra3','','','','',NULL,'2010-04-10 20:49:14'),(62,'int','page','','','','15',NULL,'2010-04-10 20:49:14'),(62,'string','params','','','','#',NULL,'2010-04-10 20:49:14'),(63,'string','target','','','','',NULL,'2010-04-10 20:49:23'),(63,'string','image','','','','-1',NULL,'2010-04-10 20:49:23'),(63,'string','thumbnail','','','','-1',NULL,'2010-04-10 20:49:23'),(63,'string','extra1','','','','',NULL,'2010-04-10 20:49:23'),(63,'string','extra2','','','','',NULL,'2010-04-10 20:49:23'),(63,'string','extra3','','','','',NULL,'2010-04-10 20:49:23'),(63,'int','page','','','','15',NULL,'2010-04-10 20:49:23'),(63,'string','params','','','','#',NULL,'2010-04-10 20:49:23'),(64,'string','target','','','','',NULL,'2010-04-10 20:49:32'),(64,'string','image','','','','-1',NULL,'2010-04-10 20:49:32'),(64,'string','thumbnail','','','','-1',NULL,'2010-04-10 20:49:32'),(64,'string','extra1','','','','',NULL,'2010-04-10 20:49:32'),(64,'string','extra2','','','','',NULL,'2010-04-10 20:49:32'),(64,'string','extra3','','','','',NULL,'2010-04-10 20:49:32'),(64,'int','page','','','','15',NULL,'2010-04-10 20:49:32'),(64,'string','params','','','','#',NULL,'2010-04-10 20:49:32'),(65,'string','target','','','','',NULL,'2010-04-10 20:49:40'),(65,'string','image','','','','-1',NULL,'2010-04-10 20:49:40'),(65,'string','thumbnail','','','','-1',NULL,'2010-04-10 20:49:40'),(65,'string','extra1','','','','',NULL,'2010-04-10 20:49:40'),(65,'string','extra2','','','','',NULL,'2010-04-10 20:49:40'),(65,'string','extra3','','','','',NULL,'2010-04-10 20:49:40'),(65,'int','page','','','','15',NULL,'2010-04-10 20:49:40'),(65,'string','params','','','','#',NULL,'2010-04-10 20:49:40'),(66,'string','target','','','','',NULL,'2010-04-10 20:49:47'),(66,'string','image','','','','-1',NULL,'2010-04-10 20:49:47'),(66,'string','thumbnail','','','','-1',NULL,'2010-04-10 20:49:47'),(66,'string','extra1','','','','',NULL,'2010-04-10 20:49:47'),(66,'string','extra2','','','','',NULL,'2010-04-10 20:49:47'),(66,'string','extra3','','','','',NULL,'2010-04-10 20:49:47'),(66,'int','page','','','','15',NULL,'2010-04-10 20:49:47'),(66,'string','params','','','','#',NULL,'2010-04-10 20:49:47'),(67,'string','target','','','','',NULL,'2010-04-10 21:39:29'),(67,'string','image','','','','-1',NULL,'2010-04-10 21:39:29'),(67,'string','thumbnail','','','','-1',NULL,'2010-04-10 21:39:29'),(67,'string','extra1','','','','',NULL,'2010-04-10 21:39:29'),(67,'string','extra2','','','','',NULL,'2010-04-10 21:39:29'),(67,'string','extra3','','','','',NULL,'2010-04-10 21:39:29'),(67,'int','page','','','','15',NULL,'2010-04-10 21:39:29'),(67,'string','params','','','','#',NULL,'2010-04-10 21:39:29'),(15,'string','thumbnail','','','','-1',NULL,'2010-04-25 20:35:04'),(15,'string','Galeria_de_Fotos','','','','Galeria',NULL,'2010-04-25 20:35:04'),(15,'string','FAQ','','','','FAQ',NULL,'2010-04-25 20:35:04'),(15,'string','Nuestra_Filosofia','','','','Nuestra Filosofia',NULL,'2010-04-25 20:35:04'),(15,'string','Padres','','','','Padres',NULL,'2010-04-25 20:35:04'),(15,'string','Staff','','','','Staff',NULL,'2010-04-25 20:35:04'),(15,'string','Facilidades','','','','Faciliades',NULL,'2010-04-25 20:35:04'),(15,'string','Camp_Info','','','','Camp Info',NULL,'2010-04-25 20:35:04'),(15,'string','Actividades','','','','Actividades',NULL,'2010-04-25 20:35:04'),(15,'string','js','','','','<script type=\"text/javascript\">// <![CDATA[\r\n            $(function() {\r\n                $(\'.clearfix a\').stop().animate({\'marginLeft\':\'-85px\'},1000);\r\n\r\n                $(\'.clearfix\').hover(\r\n                    function () {\r\n                        $(\'a\',$(this)).stop().animate({\'marginLeft\':\'-2px\'},200);\r\n                    },\r\n                    function () {\r\n                        $(\'a\',$(this)).stop().animate({\'marginLeft\':\'-85px\'},200);\r\n                    }\r\n                );\r\n            });\r\n// ]]></script>',NULL,'2010-04-25 20:35:04'),(15,'string','content_en','','','','<p>Congratulations! The installation worked. You now have a fully functional installation of CMS Made Simple and you are <em>almost</em> ready to start building your site.</p>\r\n<p>If you chose to install the default content, you will see numerous pages available to read.  You should read them thoroughly  as these default pages are devoted to showing you the basics of how to begin working with CMS Made Simple.  On these example pages, templates, and stylesheets many of the features of the default installation of CMS Made Simple are described and demonstrated. You can learn much about the power of CMS Made Simple by absorbing this information.</p>\r\n<p>To get to the Administration Console you have to login as the administrator (with the username/password you mentioned during the installation process) on your site at http://yourwebsite.com/cmsmspath/admin.  If this is your site click <a title=\"CMSMS Demo Admin Panel\" href=\"admin\">here</a> to login.</p>\r\n<p>Read about how to use CMS Made Simple in the {cms_selflink ext=\"http://wiki.cmsmadesimple.org/\" title=\"CMS Made Simple Documentation\" text=\"documentation\" target=\"_blank\"}. In case you need any help the community is always at your service, in the  {cms_selflink ext=\"http://forum.cmsmadesimple.org\" title=\"CMS Made Simple Forum\" text=\"forum\" target=\"_blank\"} or the {cms_selflink ext=\"http://www.cmsmadesimple.org/support/irc\" title=\"Information about the CMS Made Simple IRC channel\" text=\"IRC\" target=\"_blank\"}.</p>\r\n<h3>License</h3>\r\n<p>CMS Made Simple is released under the {cms_selflink ext=\"http://www.gnu.org/licenses/licenses.html#GPL\" title=\"General Public License\" text=\"GPL\" target=\"_blank\"} license and as such you don\'t have to leave a link back to us in these templates or on your site as much as we would like it.</p>\r\n<p>Some third party add-on modules may include additional license restrictions.</p>',NULL,'2010-04-25 20:35:04');
/*!40000 ALTER TABLE `cms_content_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_content_props_seq`
--

DROP TABLE IF EXISTS `cms_content_props_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_props_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_props_seq`
--

LOCK TABLES `cms_content_props_seq` WRITE;
/*!40000 ALTER TABLE `cms_content_props_seq` DISABLE KEYS */;
INSERT INTO `cms_content_props_seq` (`id`) VALUES (55);
/*!40000 ALTER TABLE `cms_content_props_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_content_seq`
--

DROP TABLE IF EXISTS `cms_content_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_seq`
--

LOCK TABLES `cms_content_seq` WRITE;
/*!40000 ALTER TABLE `cms_content_seq` DISABLE KEYS */;
INSERT INTO `cms_content_seq` (`id`) VALUES (67);
/*!40000 ALTER TABLE `cms_content_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_crossref`
--

DROP TABLE IF EXISTS `cms_crossref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_crossref` (
  `child_type` varchar(100) DEFAULT NULL,
  `child_id` int(11) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  KEY `index_crossref_by_child_type_child_id` (`child_type`,`child_id`),
  KEY `index_crossref_by_parent_type_parent_id` (`parent_type`,`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_crossref`
--

LOCK TABLES `cms_crossref` WRITE;
/*!40000 ALTER TABLE `cms_crossref` DISABLE KEYS */;
INSERT INTO `cms_crossref` (`child_type`, `child_id`, `parent_type`, `parent_id`, `create_date`, `modified_date`) VALUES ('global_content',1,'template',22,'2010-04-02 17:21:40','2010-04-02 17:21:40');
/*!40000 ALTER TABLE `cms_crossref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_css`
--

DROP TABLE IF EXISTS `cms_css`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_css` (
  `css_id` int(11) NOT NULL,
  `css_name` varchar(255) DEFAULT NULL,
  `css_text` text,
  `media_type` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`css_id`),
  KEY `index_css_by_css_name` (`css_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_css`
--

LOCK TABLES `cms_css` WRITE;
/*!40000 ALTER TABLE `cms_css` DISABLE KEYS */;
INSERT INTO `cms_css` (`css_id`, `css_name`, `css_text`, `media_type`, `create_date`, `modified_date`) VALUES (41,'Handheld','/*********************************************\r\nSample stylesheet for mobile and small screen handheld devices\r\n\r\nJust a simple layout suitable for smaller screens with less \r\nstyling cabapilities and minimal css\r\n\r\nNote: If you dont want to support mobile devices you can\r\nsafely remove this stylesheet.\r\n*********************************************/\r\n/* remove all padding and margins and set width to 100%. This should be default for handheld devices but its good to set these explicitly */\r\nbody {\r\nmargin:0;\r\npadding:0;\r\nwidth:100%;\r\n}\r\n\r\n/* hide accessibility noprint and definition */\r\n.accessibility,\r\n.noprint,\r\ndfn {\r\ndisplay:none;\r\n}\r\n\r\n/* dont want to download image for header so just set bg color */\r\ndiv#header,\r\ndiv#footer {\r\nbackground-color: #385C72;  \r\ncolor: #fff;\r\ntext-align:center;\r\n}\r\n\r\n/* text colors for header and footer */\r\ndiv#header a,\r\ndiv#footer a {\r\ncolor: #fff;\r\n}\r\n\r\n/* this doesnt look as nice, but takes less space */\r\ndiv#menu_vert ul li,\r\ndiv#menu_horiz ul li {\r\ndisplay:inline;\r\n}\r\n\r\n/* small border at the bottom to have some indicator */\r\ndiv#menu_vert ul,\r\ndiv#menu_horiz ul {\r\nborder-bottom:1px solid #fff;\r\n}\r\n\r\n/* save some space */\r\ndiv.breadcrumbs {\r\ndisplay:none;\r\n}','handheld','2006-07-25 21:22:32','2006-07-25 21:22:32'),(30,'Print','/*\r\nSections that are hidden when printing the page. We only want the content printed.\r\n*/\r\n\r\n\r\nbody {\r\ncolor: #000 !important; /* we want everything in black */\r\nbackground-color:#fff !important; /* on white background */\r\nfont-family:arial; /* arial is nice to read ;) */\r\nborder:0 !important; /* no borders thanks */\r\n}\r\n\r\n/* This affects every tag */\r\n* {\r\nborder:0 !important; /* again no borders on printouts */\r\n}\r\n\r\n/* \r\nno need for accessibility on printout. \r\nMark all your elements in content you \r\ndont want to get printed with class=\"noprint\"\r\n*/\r\n.accessibility,\r\n.noprint\r\n {\r\ndisplay:none !important; \r\n}\r\n\r\n/* \r\nremove all width constraints from content area\r\n*/\r\ndiv#content,\r\ndiv#main {\r\ndisplay:block !important;\r\nwidth:100% !important;\r\nborder:0 !important;\r\npadding:1em !important;\r\n}\r\n\r\n/* hide everything else! */\r\ndiv#header,\r\ndiv#header h1 a,\r\ndiv.breadcrumbs,\r\ndiv#search,\r\ndiv#footer,\r\ndiv#menu_vert,\r\ndiv#news,\r\ndiv.right49,\r\ndiv.left49,\r\ndiv#sidebar  {\r\n   display: none !important;\r\n}\r\n\r\nimg {\r\nfloat:none; /* this makes images couse a pagebreak if it doesnt fit on the page */\r\n}','print','2006-07-25 21:22:32','2006-07-25 21:22:32'),(31,'Accessibility and cross-browser tools','/* accessibility */\r\n/* menu links accesskeys */\r\nspan.accesskey {\r\n	text-decoration: none;\r\n}\r\n/* accessibility divs are hidden by default, text, screenreaders and such will show these */\r\n.accessibility, hr {\r\n/* position set so the rest can be set out side of visual browser viewport */\r\n	position: absolute;\r\n/* takes it out top side */\r\n	top: -999em;\r\n/* takes it out left side */\r\n	left: -999em;\r\n}\r\n/* definition tags are also hidden, these are also used for accessibility menu links */\r\ndfn {\r\n	position: absolute;\r\n	left: -1000px;\r\n	top: -1000px;\r\n	width: 0;\r\n	height: 0;\r\n	overflow: hidden;\r\n	display: inline;\r\n}\r\n/* end accessibility */\r\n/* wiki style external links */\r\n/* external links will have \"(external link)\" text added, lets hide it */\r\na.external span {\r\n	position: absolute;\r\n	left: -5000px;\r\n	width: 4000px;\r\n}\r\na.external {\r\n/* make some room for the image, css shorthand rules, read: first top padding 0 then right padding 12px then bottom then right */\r\n	padding: 0 12px 0 0;\r\n}\r\n/* colors for external links */\r\na.external:link {\r\n	color: #18507C;\r\n/* background image for the link to show wiki style arrow */\r\n	background: url(images/cms/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:visited {\r\n	color: #18507C;\r\n/* a different color can be used for visited external links */\r\n/* Set the last 0 to -100px to use that part of the external.gif image for different color for active links external.gif is actually 300px tall, we can use different positions of the image to simulate rollover image changes.*/\r\n	background: url(images/cms/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:hover {\r\n	color: #18507C;\r\n/* Set the last 0 to -200px to use that part of the external.gif image for different color on hover */\r\n	background: url(images/cms/external.gif) no-repeat 100% 0;\r\n	background-color: inherit;\r\n}\r\n/* end wiki style external links */\r\n/* clearing */\r\n/* clearfix is a hack for divs that hold floated elements. it will force the holding div to span all the way down to last floated item. We strongly recommend against using this as it is a hack and might not render correctly but it is included here for convenience. Do not edit if you dont know what you are doing*/\r\n.clearfix:after {\r\n	content: \".\";\r\n	display: block;\r\n	height: 0;\r\n	clear: both;\r\n	visibility: hidden;\r\n}\r\n.clear {\r\n	height: 0;\r\n	clear: both;\r\n	width: 90%;\r\n	visibility: hidden;\r\n}\r\n#main .clear {\r\n	height: 0;\r\n	clear: right;\r\n	width: 90%;\r\n	visibility: hidden;\r\n}\r\n* html>body .clearfix {\r\n	display: inline-block;\r\n	width: 100%;\r\n}\r\n* html .clear {\r\n/* Hides from IE-mac \\*/\r\n	height: 1%;\r\n	clear: right;\r\n	width: 90%;\r\n/* End hide from IE-mac */\r\n}\r\n/* end clearing */','screen','2006-07-25 21:22:32','2009-05-13 10:42:54'),(32,'Layout: Left sidebar + 1 column','/* browsers interpret margin and padding a little differently, we\'ll remove all default padding and margins and set them later on */\r\n* {\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n/*Set initial font styles*/\r\nbody {\r\n	text-align: left;\r\n	font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;\r\n	font-size: 75.01%;\r\n	line-height: 1em;\r\n}\r\n/*set font size for all divs, this overrides some body rules*/\r\ndiv {\r\n	font-size: 1em;\r\n}\r\n/*if img is inside \"a\" it would have borders, we don\'t want that*/\r\nimg {\r\n	border: 0;\r\n}\r\n/*default link styles*/\r\na, a:link a:active {\r\n/* set all links to have underline */\r\n	text-decoration: underline;\r\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\r\n	background-color: inherit;\r\n/* this is a bluish color, you change this for all default link colors */\r\n	color: #18507C;\r\n}\r\na:visited {\r\n/* keeps the underline */\r\n	text-decoration: underline;\r\n	background-color: inherit;\r\n/* a different color is used for visited links */\r\n	color: #18507C;\r\n}\r\na:hover {\r\n/* remove underline on hover */\r\n	text-decoration: none;\r\n	background-color: inherit;\r\n/* using a different color makes the hover obvious */\r\n	color: #385C72;\r\n}\r\n/*****************basic layout *****************/\r\nbody {\r\n	margin: 0;\r\n	padding: 0;\r\n/* default text color for entire site*/\r\n	color: #333;\r\n/* you can set your own image and background color here */\r\n	background: #f4f4f4 url(uploads/ngrey/body.png) repeat-x left top;\r\n}\r\ndiv#pagewrapper {\r\n/* min max width, IE wont understand these, so we will use java script magic in the <head> */\r\n	max-width: 99em;\r\n	min-width: 60em;\r\n/* now that width is set this centers wrapper */\r\n	margin: 0 auto;\r\n	background-color: #fefefe;\r\n	color: black;\r\n}\r\n/* header, we will hide h1 a text and replace it with an image, we assign a height for it so the image wont cut off */\r\ndiv#header {\r\n/* adjust according your image size */\r\n	height: 100px;\r\n	margin: 0;\r\n	padding: 0;\r\n/* you can set your own image here, will go behind h1 a image */\r\n	background: #f4f4f4 url(uploads/ngrey/bg_banner.png) repeat-x left top;\r\n/* border just the bottom */\r\n	border-bottom: 1px solid #D9E2E6;\r\n}\r\ndiv#header h1 a {\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/logoCMS.png) no-repeat left top;\r\n/* this will make the \"a\" link a solid shape */\r\n	display: block;\r\n/* adjust according your image size */\r\n	height: 100px;\r\n/* this hides the text */\r\n	text-indent: -999em;\r\n/* old firefox would have shown underline for the link, this explicitly hides it */\r\n	text-decoration: none;\r\n}\r\ndiv#header h1 {\r\n	margin: 0;\r\n	padding: 0;\r\n/*these keep IE6 from pushing the header to more than the set size*/\r\n	line-height: 0;\r\n	font-size: 0;\r\n/* this will keep IE6 from flickering on hover */\r\n	background: url(uploads/ngrey/logoCMS.png) no-repeat left top;\r\n}\r\ndiv#header h2 {\r\n/* this is where the site name is */\r\n	float: right;\r\n	line-height: 1.2em;\r\n/* this keeps IE6 from not showing the whole text */\r\n	font-size: 1.5em;\r\n/* keeps the size uniform */\r\n	margin: 35px 65px 0px 0px;\r\n/* adjust according your text size */\r\n	color: #f4f4f4;\r\n}\r\ndiv.crbk {\r\n/* sets all to 0 */\r\n	margin: 0;\r\n	padding: 0;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.breadcrumbs {\r\n/* CSS short hand rule first value is top then right, bottom and left */\r\n	padding: 1em 0em 1em 1em;\r\n/* its good to set font sizes to be relative, this way viewer can change his/her font size */\r\n	font-size: 90%;\r\n/* css shorthand rule will be opened to be \"0px 0px 0px 0px\" */\r\n	margin: 0px;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/mainleftup.gif) no-repeat left bottom;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n	font-weight: bold;\r\n}\r\ndiv#search {\r\n/* position for the search box */\r\n	float: right;\r\n/* enough width for the search input box */\r\n	width: 27em;\r\n	text-align: right;\r\n	padding: 0.5em 0 0.2em 0;\r\n	margin: 0 1em;\r\n}\r\n/* a class for Submit button for the search input box */\r\ninput.search-button {\r\n	border: none;\r\n	height: 22px;\r\n	width: 53px;\r\n	margin-left: 5px;\r\n	padding: 0px 2px 2px 0px;\r\n/* makes the hover cursor show, you can set your own cursor here */\r\n	cursor: pointer;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/search.gif) no-repeat center center;\r\n}\r\ndiv#content {\r\n/* some air above and under menu and content */\r\n	margin: 1.5em auto 2em 0;\r\n	padding: 0px;\r\n}\r\n/* this gets all the outside calls that were used on the div#main before  */\r\ndiv.back1 {\r\n/* this will give room for sidebar to be on the left side, make sure this number is bigger than sidebar width */\r\n	margin-left: 29%;\r\n/* and some air on the right */\r\n	margin-right: 2%;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\n/* this is an IE6 hack, you may see these through out the CSS */\r\n* html div.back1 {\r\n/* unlike other browser IE6 needs float:right and a width */\r\n	float: right;\r\n	width: 69%;\r\n/* and we take this out or it will stop at the bottom  */\r\n	margin-left: 0%;\r\n/* and some air on the right */\r\n	margin-right: 10px;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv.back2 {\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/mainleft1.gif) no-repeat left top;\r\n}\r\ndiv.back3 {\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv#main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n	padding: 10px 15px;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/rtup.gif) no-repeat right bottom;\r\n}\r\ndiv.back #main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n	padding: 10px 30px 1px 15px;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv.back {\r\n/* this will give room for sidebar to be on the left side, make sure this space is bigger than sidebar width */\r\n	margin-left: 29%;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv#sidebar {\r\n/* set sidebar left. Change to right, float: right; instead, but you will need to change the margins. */\r\n	float: left;\r\n/* sidebar width, if you change this change div.back and/or div.back1 margins */\r\n	width: 26%;\r\n/* FIX IE double margin bug */\r\n	display: inline;\r\n/* the 20px is on the bottom, insures space above footer if longer than content */\r\n	margin: 0px 0px 20px;\r\n	padding: 0px;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv#sidebara {\r\n	padding: 13px 15px 3px 0px;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebarb {\r\n	padding: 10px 10px 1px 0px;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.footback {\r\n/* keep footer below content and menu */\r\n	clear: both;\r\n/* this sets 10px on right to let the right image show, the balance 10px left on next div */\r\n	padding: 0px 10px 0px 0px;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/wfootrt.gif) no-repeat right top;\r\n}\r\ndiv#footer {\r\n/* this sets 10px on left to balance 10px right on last div */\r\n	padding: 0px 0px 0px 10px;\r\n/* color of text, the link color is set below */\r\n	color: #595959;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv.leftfoot {\r\n	float: left;\r\n	width: 30%;\r\n	margin-left: 20px\r\n}\r\ndiv#footer p {\r\n/* sets different font size from default */\r\n	font-size: 0.8em;\r\n/* some air for footer */\r\n	padding: 1.5em;\r\n/* centered text */\r\n	text-align: center;\r\n	margin: 0;\r\n}\r\ndiv#footer p a {\r\n/* footer link would be same color as default we want it same as footer text */\r\n	color: #595959;\r\n}\r\n/* as we hid all hr for accessibility we create new hr with div class=\"hr\" element */\r\ndiv.hr {\r\n	height: 1px;\r\n	padding: 1em;\r\n	border-bottom: 1px dotted black;\r\n	margin: 1em;\r\n}\r\n/* relational links under content */\r\ndiv.left49 {\r\n/* combined percentages of left+right equaling 100%  might lead to rounding error on some browser */\r\n	width: 70%;\r\n}\r\ndiv.right49 {\r\n	float: right;\r\n	width: 29%;\r\n/* set right to keep text on right */\r\n	text-align: right;\r\n}\r\n/********************CONTENT STYLING*********************/\r\n/* HEADINGS */\r\ndiv#content h1 {\r\n/* font size for h1 */\r\n	font-size: 2em;\r\n	line-height: 1em;\r\n	margin: 0;\r\n}\r\ndiv#content h2 {\r\n	color: #294B5F;\r\n/* font size for h2 the higher the h number the smaller the font size, most times */\r\n	font-size: 1.5em;\r\n	text-align: left;\r\n/* some air around the text */\r\n	padding-left: 0.5em;\r\n	padding-bottom: 1px;\r\n/* set borders around header */\r\n	border-bottom: 1px solid #899092;\r\n	border-left: 1.1em solid #899092;\r\n/* a larder than h1 line height */\r\n	line-height: 1.5em;\r\n/* and some air under the border */\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h3 {\r\n	color: #294B5F;\r\n	font-size: 1.3em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h4 {\r\n	color: #294B5F;\r\n	font-size: 1.2em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\ndiv#content h5 {\r\n	color: #294B5F;\r\n	font-size: 1.1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\nh6 {\r\n	color: #294B5F;\r\n	font-size: 1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\n/* END HEADINGS */\r\n/* TEXT */\r\np {\r\n/* default p font size, this is set different in some other divs */\r\n	font-size: 1em;\r\n/* some air around p elements */\r\n	margin: 0 0 1.5em 0;\r\n	line-height: 1.4em;\r\n	padding: 0;\r\n}\r\nblockquote {\r\n	border-left: 10px solid #ddd;\r\n	margin-left: 10px;\r\n}\r\nstrong, b {\r\n/* explicit setting for these */\r\n	font-weight: bold;\r\n}\r\nem, i {\r\n/* explicit setting for these */\r\n	font-style: italic;\r\n}\r\n/* Wrapping text in <code> tags. Makes CSS not validate */\r\ncode, pre {\r\n/* css-3 */\r\n	white-space: pre-wrap;\r\n/* Mozilla, since 1999 */\r\n	white-space: -moz-pre-wrap;\r\n/* Opera 4-6 */\r\n	white-space: -pre-wrap;\r\n/* Opera 7 */\r\n	white-space: -o-pre-wrap;\r\n/* Internet Explorer 5.5+ */\r\n	word-wrap: break-word;\r\n	font-family: \"Courier New\", Courier, monospace;\r\n	font-size: 1em;\r\n}\r\npre {\r\n/* black border for pre blocks */\r\n	border: 1px solid #000;\r\n/* set different from surroundings to stand out */\r\n	background-color: #ddd;\r\n	margin: 0 1em 1em 1em;\r\n	padding: 0.5em;\r\n	line-height: 1.5em;\r\n	font-size: 90%;\r\n}\r\n/* Separating the divs on the template explanation page */\r\ndiv.templatecode {\r\n	margin: 0 0 2.5em;\r\n}\r\n/* END TEXT */\r\n/* LISTS */\r\n/* lists in content need some margins to look nice */\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl {\r\n	font-size: 1.0em;\r\n	line-height: 1.4em;\r\n	margin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li {\r\n	margin: 0 0 0.25em 3em;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl {\r\n	margin-bottom: 2em;\r\n	padding-bottom: 1em;\r\n	border-bottom: 1px solid #c0c0c0;\r\n}\r\ndiv#main dl dt {\r\n	font-weight: bold;\r\n	margin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n	margin: 0 0 1em 1em;\r\n}\r\n/* END LISTS */','screen','2006-07-25 21:22:32','2009-05-10 14:06:00'),(33,'Navigation: CSSMenu - Vertical','/* Vertical menu for the CMS CSS Menu Module */\r\n/* by Alexander Endresen and mark and Nuno */\r\n/* The wrapper determines the width of the menu elements */\r\n#menuwrapper {\r\n/* just smaller than it\'s containing div */\r\n	width: 95%;\r\n	margin-left: 0px;\r\n/* room at bottom */\r\n	margin-bottom: 10px;\r\n}\r\n/* Unless you know what you do, do not touch this */\r\n#primary-nav, #primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style: none;\r\n	margin: 0px;\r\n	padding: 0px;\r\n/* make sure it fills out */\r\n	width: 100%;\r\n/* just a little bump */\r\n	margin-left: 1px;\r\n}\r\n#primary-nav ul {\r\n/* make the ul stay in place so when we hover it lets the drops go over the content below else it will push everything below out of the way */\r\n	position: absolute;\r\n/* just a little bump down for second level ul */\r\n	top: 5px;\r\n/* keeps the left side of this ul on the right side of the one it came out of */\r\n	left: 100%;\r\n/* keeps it hidden till hover event */\r\n	display: none;\r\n\r\nbackground-color: #ff0000;\r\n\r\n\r\n\r\n}\r\n#primary-nav ul ul {\r\n/* no bump down for third level ul */\r\n	top: 0px;\r\n}\r\n#primary-nav li {\r\n/* negative bottom margin pulls them together, images look like one border between */\r\n	margin-bottom: -1px;\r\n/* keeps within it\'s container */\r\n	position: relative;\r\n/* bottom padding pushes \"a\" up enough to show our image */\r\n	padding: 0px 0px 4px 0px;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/liup.gif) no-repeat right bottom;\r\n}\r\n#primary-nav li li {\r\n/* you can set your width here, if no width or set auto it will only be as wide as the text in it  */\r\n	width: 220px;\r\n	padding: 0px;\r\n/* removes first level li image */\r\n	background-image: none;\r\n}\r\n/* Styling the basic apperance of the menu \"a\" elements */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #595959;\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 0.8em 0.5em 0.5em 0.5em;\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* removes underline from default link setting */\r\n	text-decoration: none;\r\n/* you can set your own image here this is tall enough to cover text heavy links */\r\n	background: url(uploads/ngrey/libk.gif) no-repeat right top;\r\n}\r\nul#primary-nav a span {\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* pushes text to right */\r\n	padding-left: 1.5em;\r\n}\r\nul#primary-nav li a:hover {\r\n/* stops image flicker in some browsers */\r\n	background: url(uploads/ngrey/libk.gif) no-repeat right top;\r\n/* changes text color on hover */\r\n	color: #899092\r\n}\r\nul#primary-nav li li a:hover {\r\n/* you can set your own image here, second level \"a\" */\r\n	background:  url(uploads/ngrey/darknav.png) repeat-x left center;\r\n/* contrast color to image behind it */\r\n	color: #FFF\r\n}\r\nul#primary-nav li a.menuactive {\r\n/* black and bold to set it off from non active */\r\n	color: #000;\r\n	font-weight: bold;\r\n}\r\nul#primary-nav li li a.menuactive {\r\n/* contrast color to image behind it, set below */\r\n	color: #FFF;\r\n/* not bold as text color and image behind it set it off from non active */\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li ul a {\r\n/* insures alignment */\r\n	text-align: left;\r\n	margin: 0px;\r\n/* relative to it\'s container */\r\n	position: relative;\r\n/* more padding to left than default */\r\n	padding: 6px 3px 6px 15px;\r\n	font-weight: normal;\r\n/* darker than first level \"a\" */\r\n	color: #000;\r\n/* removes any borders that may have been set in first level */\r\n	border-top: 0 none;\r\n	border-right: 0 none;\r\n	border-left: 0 none;\r\n/* removes image set in first level \"a\" */\r\n	background: none;\r\n}\r\nul#primary-nav li ul {\r\n/* very lite grey color, by now you should know what the rest mean */\r\n	background: #F3F5F5;\r\n	margin: 0px;\r\n	padding: 0px;\r\n	position: absolute;\r\n	width: auto;\r\n	height: auto;\r\n	display: none;\r\n	position: absolute;\r\n	z-index: 999;\r\n	border-top: 1px solid #FFFFFF;\r\n	border-bottom: 1px solid #374B51;\r\n	/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n	opacity: 0.95;\r\n/* CSS 3 */\r\n}\r\n/* Fixes IE7 bug */\r\n#primary-nav li, #primary-nav li.menuparent {\r\n	min-height: 1em;\r\n}\r\n/* Styling the basic apperance of the second level active page elements (shows what page in the menu is being displayed) */\r\n#primary-nav li li.menuactive, #primary-nav li.menuactive.menuparenth li.menuactive {\r\n/* set your image here, dark grey image with white text set above*/\r\n	background:  url(uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuparent span {\r\n/* padding on left for image */\r\n	padding-left: 1.5em;\r\n/* down arrow to note it has children, left side of text */\r\n	background: url(uploads/ngrey/active.png) no-repeat left center;\r\n}\r\n#primary-nav li.menuparent:hover li.menuparent span {\r\n/* remove left padding as image is on right side of text */\r\n	padding-left: 0;\r\n/* right arrow to note it has children, right side of text */\r\n	background: url(uploads/ngrey/parent.png) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth li.menuparent span,\r\n#primary-nav li.menuparenth li.menuparenth span {\r\n/* same as above but this is for IE6, gif image as it can\'t handle transparent png */\r\n	padding-left: 0;\r\n	background: url(uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth span,\r\n#primary-nav li.menuparent:hover span,\r\n#primary-nav li.menuparent.menuactive span,\r\n#primary-nav li.menuparent.menuactiveh span, {\r\n/* right arrow to note hover */\r\n	background: url(uploads/ngrey/parent.png) no-repeat left center;\r\n}\r\n#primary-nav li li span,\r\n#primary-nav li.menuparent li span,\r\n#primary-nav li.menuparent:hover li span,\r\n#primary-nav li.menuparenth li span,\r\n#primary-nav li.menuparenth li.menuparenth li span,\r\n#primary-nav li.menuparent li.menuparent li span,\r\n#primary-nav li.menuparent li.menuparent:hover li span  {\r\n/* removes any images set above unless it\'s a parent or active parent */\r\n	background:  none;\r\n/* removes padding that is used for arrows */\r\n	padding-left: 0px;\r\n}\r\n/* IE6 flicker fix */\r\n#primary-nav li.menuh,\r\n#primary-nav li.mnuparenth,\r\n#primary-nav li.mnuactiveh {\r\n	background: url(uploads/ngrey/libk.gif) no-repeat right top;\r\n	color: #899092\r\n}\r\n#primary-nav li:hover li a {\r\n/* removes any images set above unless it\'s a parent or active parent */\r\n	background:  none;\r\n	color: #000;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE Hack, will cause the css to not validate */\r\n#primary-nav li,\r\n#primary-nav li.menuparenth {\r\n	_float: left;\r\n	_height: 1%;\r\n}\r\n#primary-nav li a {\r\n	_height: 1%;\r\n}\r\n/* BIG NOTE: I didn\'t do anything to these 2, never tested */\r\n#primary-nav li.sectionheader {\r\n	border-left: 1px solid #006699;\r\n	border-top: 1px solid #006699;\r\n	font-size: 130%;\r\n	font-weight: bold;\r\n	padding: 1.5em 0 0.8em 0.5em;\r\n	background-color: #fff;\r\n	margin: 0;\r\n	width: 100%;\r\n}\r\n/* separator */\r\n#primary-nav li hr.separator {\r\n	display: block;\r\n	height: 0.5em;\r\n	color: #abb0b6;\r\n	background-color: #abb0b6;\r\n	width: 100%;\r\n	border: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n	border-top: 1px solid #006699;\r\n	border-right: 1px solid #006699;\r\n}','screen','2006-07-25 21:22:32','2010-04-02 14:50:41'),(34,'Navigation: CSSMenu - Horizontal','/* by Alexander Endresen and mark and Nuno */\r\n#menu_vert {\r\n/* no margin/padding so it fills the whole div */\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n.clearb {\r\n/* needed for some browsers */\r\n	clear: both;\r\n}\r\n#menuwrapper {\r\n/* set the background color for the menu here */\r\n	background-color: #243135;\r\n/* IE6 Hack */\r\n	height: 1%;\r\n	width: auto;\r\n/* one border at the top */\r\n	border-top: 1px solid #3F565C;\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\nul#primary-nav, ul#primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\nul#primary-nav {\r\n/* pushes the menu div up to give room above for background color to show */\r\n	padding-top: 10px;\r\n/* keeps the first menu item off the left side */\r\n	padding-left: 10px;\r\n}\r\nul#primary-nav ul {\r\n/* make the ul stay in place so when we hover it lets the drops go over the content below else it will push everything below out of the way */\r\n	position: absolute;\r\n/* top being the bottom of the li it comes out of */\r\n	top: auto;\r\n/* keeps it hidden till hover event */\r\n	display: none;\r\n/* same size but different color for each border */\r\n	border-top: 1px solid #C8D3D7;\r\n	border-right: 1px solid #C8D3D7;\r\n	border-bottom: 1px solid #ADC0C7;\r\n	border-left: 1px solid #A5B9C0;\r\n}\r\nul#primary-nav ul ul {\r\n/* now we move the next level ul down from the top a little for distinction */\r\n	margin-top: 1px;\r\n/* pull it in on the left, helps us not lose the hover effect when going to next level */\r\n	margin-left: -1px;\r\n/* keeps the left side of this ul on the right side of the one it came out of */\r\n	left: 100%;\r\n/* sets the top of it inline with the li it came out of */\r\n	top: 0px;\r\n}\r\nul#primary-nav li {\r\n/* floating left will set menu items to line up left to right else they will stack top to bottom */\r\n	float: left;\r\n/* no margin/padding keeps them next to each other, the padding will be in the \"a\" */\r\n	margin: 0px;\r\n	padding: 0px;\r\n}\r\n#primary-nav li li {\r\n/* Set the width of the menu elements at second level. Leaving first level flexible. */\r\n	width: 220px;\r\n/* removes any left margin it may have picked up from the first li */\r\n	margin-left: 0px;\r\n/* keeps them tight to the one above, no missed hovers */\r\n	margin-top: -1px;\r\n/* removes the left float set in first li so these will stack from top down */\r\n	float: none;\r\n/* relative to the ul they are in */\r\n	position: relative;\r\n}\r\n/* set the \"a\" link look here */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #fff;\r\n/* pushes out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 12px 15px 15px;\r\n	display: block;\r\n/* sets no underline on links */\r\n	text-decoration: none;\r\n}\r\nul#primary-nav li a:hover {\r\n/* kind of obvious */\r\n	background-color: transparent;\r\n}\r\nul#primary-nav li li a:hover {\r\n/* this is set to #000, black, below so hover will be white text */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li a.menuactive {\r\n	color: #000;\r\n/* bold to set it off from non active */\r\n	font-weight: bold;\r\n/* set your image here */\r\n	background:  url(uploads/ngrey/nav.png) repeat-x left 0px;\r\n}\r\nul#primary-nav li a.menuactive:hover {\r\n	color: #000;\r\n/* keep it the same */\r\n	font-weight: bold;\r\n}\r\n#primary-nav li li a.menuparent span {\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* set your image here, right arrow, 98% over from the left, 100% or \'right\' puts it to far */\r\n	background:  url(uploads/ngrey/parent.png) no-repeat 98% center;\r\n}\r\n/* gif for IE6, as it can\'t handle transparent png */\r\n* html #primary-nav li li a.menuparent span {\r\n/* set your image here, right arrow, 98% over from the left, 100% or \'right\' puts it to far */\r\n	background:  url(uploads/ngrey/parent.gif) no-repeat 98% center;\r\n}\r\nul#primary-nav li ul a {\r\n/* insures alignment */\r\n	text-align: left;\r\n	margin: 0px;\r\n/* keeps it relative to it\'s container */\r\n	position: relative;\r\n/* less padding than first level no need for large links here */\r\n	padding: 6px 3px 6px 15px;\r\n/* if first level is set to bold this will reset this level */\r\n	font-weight: normal;\r\n/* first level is #FFF/white, we need black to contrast with light background */\r\n	color: #000;\r\n	border-top: 0 none;\r\n	border-right: 0 none;\r\n	border-left: 0 none;\r\n}\r\nul#primary-nav li ul {\r\n/* very lite grey color, by now you should know what the rest mean */\r\n	background: #F3F5F5;\r\n	margin: 0px;\r\n	padding: 0px;\r\n	position: absolute;\r\n	width: auto;\r\n	height: auto;\r\n	display: none;\r\n	position: absolute;\r\n	z-index: 999;\r\n	border-top: 1px solid #FFFFFF;\r\n	border-bottom: 1px solid #374B51;\r\n/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n	opacity: 0.95;\r\n/* CSS 3 */\r\n}\r\nul#primary-nav li ul ul {\r\n/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n	opacity: 95;\r\n/* CSS 3 */\r\n}\r\n/* Styling the appearance of menu items on hover */\r\n#primary-nav li:hover,\r\n#primary-nav li.menuh,\r\n#primary-nav li.menuparenth,\r\n#primary-nav li.menuactiveh {\r\n/* set your image here, dark grey image */\r\n	background:  url(uploads/ngrey/darknav.png) repeat-x left center;\r\n	color: #000\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE6 Hacks */\r\n#primary-nav li li {\r\n	float: left;\r\n	clear: both;\r\n}\r\n#primary-nav li li a {\r\n	height: 1%;\r\n}','screen','2006-07-25 21:22:32','2009-05-10 16:52:41'),(35,'Module: News','div#news {\r\n/* margin for the entire div surrounding the news items */\r\n	margin: 2em 0 1em 1em;\r\n/* border set here */\r\n	border: 1px solid #909799;\r\n/* sets it off from surroundings */\r\n	background: #f5f5f5;\r\n}\r\ndiv#news h2 {\r\n	line-height: 2em;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/darknav.png) repeat-x left center;\r\n	color: #f5f5f5;\r\n	border: none\r\n}\r\n.NewsSummary {\r\n/* padding for the news article summary */\r\n	padding: 0.5em 0.5em 1em;\r\n/* margin to the bottom of the news article summary */\r\n	margin: 0 0.5em 1em 0.5em;\r\n	border-bottom: 1px solid #ccc;\r\n}\r\n.NewsSummaryPostdate {\r\n/* smaller than default text size */\r\n	font-size: 90%;\r\n/* bold to set it off from text */\r\n	font-weight: bold;\r\n}\r\n.NewsSummaryLink {\r\n/* bold to set it off from text */\r\n	font-weight: bold;\r\n/* little more room at top */\r\n	padding-top: 0.2em;\r\n}\r\n.NewsSummaryCategory {\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n	margin: 5px 0;\r\n}\r\n.NewsSummaryAuthor {\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n	padding-bottom: 0.5em;\r\n}\r\n.NewsSummarySummary, .NewsSummaryContent {\r\n/* larger than default text */\r\n	line-height: 140%;\r\n}\r\n.NewsSummaryMorelink {\r\n	padding-top: 0.5em;\r\n}\r\n#NewsPostDetailDate {\r\n/* smaller text */\r\n	font-size: 90%;\r\n	margin-bottom: 5px;\r\n/* bold to set it off from text */\r\n	font-weight: bold;\r\n}\r\n#NewsPostDetailSummary {\r\n/* larger than default text */\r\n	line-height: 150%;\r\n}\r\n#NewsPostDetailCategory {\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n	border-top: 1px solid #ccc;\r\n	margin-top: 0.5em;\r\n	padding: 0.2em 0;\r\n}\r\n#NewsPostDetailContent {\r\n	margin-bottom: 15px;\r\n/* larger than default text */\r\n	line-height: 150%;\r\n}\r\n#NewsPostDetailAuthor {\r\n	padding-bottom: 1.5em;\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n}\r\n/* more divs, left unstyled, just so you know the IDs of them */ \r\n#NewsPostDetailTitle {\r\n}\r\n#NewsPostDetailHorizRule {\r\n}\r\n#NewsPostDetailPrintLink {\r\n}\r\n#NewsPostDetailReturnLink {\r\n}','screen','2006-07-25 21:22:32','2009-05-09 23:29:39'),(38,'Navigation: Simple - Horizontal','/********************MENU*********************/\r\n/* hack for IE6 */\r\n* html div#menu_horiz {\r\n/* hide ie/mac \\*/\r\n	height: 1%;\r\n/* end hide */\r\n}\r\ndiv#menu_horiz {\r\n/* background color for the entire menu row */\r\n	background-color: #243135;\r\n/* insure full width */\r\n	width: 100%;\r\n/* set height */\r\n	height: 49px;\r\n	margin: 0;\r\n}\r\ndiv#menu_horiz ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n	margin: 0;\r\n/* pushes the menu div up to give room above for background color to show */\r\n	padding-top: 10px;\r\n/* keeps the first menu item off the left side */\r\n	padding-left: 10px;\r\n}\r\n/* menu list items */\r\ndiv#menu_horiz li {\r\n/* makes the list horizontal */\r\n	float: left;\r\n/* remove any default bullets */\r\n	list-style: none;\r\n/* still no margin */\r\n	margin: 0;\r\n}\r\n/* the links, that is each list item */\r\ndiv#menu_horiz a {\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 12px 15px 15px 0px;\r\n/* still no margin */\r\n	margin: 0;\r\n/* removes default underline */\r\n	text-decoration: none;\r\n/* default link color */\r\n	color: #FFF;\r\n/* makes it hold a shape, IE has problems with this, fixed above */\r\n	display: block;\r\n}\r\n/* hover state for links */\r\ndiv#menu_horiz li a:hover {;\r\n/* set your image here, dark grey image with white text set above*/\r\n	background:  url(uploads/ngrey/nav.png) repeat-x left -50px;\r\n}\r\ndiv#menu_horiz a span {\r\n/* compensates for no left padding on the \"a\" */\r\n	padding-left: 15px;\r\n}\r\ndiv#menu_horiz li.parent a span {\r\n/* no left padding on the \"a\" we can set it here, it lets us use the span for an image */\r\n	padding-left: 20px;\r\n/* set your image here, down arrow to note it has children, left side of text */\r\n	background: url(uploads/ngrey/active.gif) no-repeat 0.3em center;\r\n}\r\ndiv#menu_horiz li.parent a:hover span {\r\n	padding-left: 20px;\r\n/* hover replaces default with right arrow image */\r\n	background: url(uploads/ngrey/parent.gif) no-repeat 0.3em center;\r\n}\r\ndiv#menu_horiz li.menuactive a span {\r\n	padding-left: 20px;\r\n/* menuactive replaces default with right arrow image */\r\n	background: url(uploads/ngrey/parent.gif) no-repeat 0.5em center;\r\n	color: #000;\r\n}\r\n/* active parent, that is the first level parent of a child page that is the current page */\r\ndiv#menu_horiz li.menuactive, div#menu_horiz li.menuactive a:hover {\r\n/* set your image here, light image with #000/black text set below*/\r\n	background:  url(uploads/ngrey/nav.png) repeat-x left 0px;\r\n	color: #000;\r\n}','screen','2006-07-25 21:22:32','2009-07-20 18:17:14'),(39,'Layout: Top menu + 2 columns','/* browsers interpret margin and padding a little differently, we\'ll remove all default padding and margins and set them later on */\r\n* {\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n/*Set initial font styles*/\r\nbody {\r\n	text-align: left;\r\n	font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;\r\n	font-size: 75.01%;\r\n	line-height: 1em;\r\n}\r\n/*set font size for all divs, this overrides some body rules*/\r\ndiv {\r\n	font-size: 1em;\r\n}\r\n/*if img is inside \"a\" it would have borders, we don\'t want that*/\r\nimg {\r\n	border: 0;\r\n}\r\n/*default link styles*/\r\n/* set all links to have underline and bluish color */\r\na, a:link a:active {\r\n	text-decoration: underline;\r\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\r\n	background-color: inherit;\r\n	color: #18507C;\r\n}\r\na:visited {\r\n	text-decoration: underline;\r\n	background-color: inherit;\r\n	color: #18507C;\r\n/* a different color can be used for visited links */\r\n}\r\n/* remove underline on hover and change color */\r\na:hover {\r\n	text-decoration: none;\r\n	background-color: inherit;\r\n	color: #385C72;\r\n}\r\n/*****************basic layout *****************/\r\nbody {\r\n	margin: 0;\r\n	padding: 0;\r\n/* default text color for entire site*/\r\n	color: #333;\r\n/* you can set your own image and background color here */\r\n	background: #f4f4f4 url(uploads/ngrey/body.png) repeat-x left top;\r\n}\r\ndiv#pagewrapper {\r\n/* min max width, IE wont understand these, so we will use java script magic in the <head> */\r\n	max-width: 99em;\r\n	min-width: 60em;\r\n/* now that width is set this centers wrapper */\r\n	margin: 0 auto;\r\n	background-color: #fefefe;\r\n	color: black;\r\n}\r\n/* header, we will hide h1 a text and replace it with an image, we assign a height for it so the image wont cut off */\r\ndiv#header {\r\n/* adjust according your image size */\r\n	height: 100px;\r\n	margin: 0;\r\n	padding: 0;\r\n	/* you can set your own image here, will go behind h1 a image */\r\n	background: #f4f4f4 url(uploads/ngrey/bg_banner.png) repeat-x left top;\r\n/* border just the bottom */\r\n	border-bottom: 1px solid #D9E2E6;\r\n}\r\ndiv#header h1 a {\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/logoCMS.png) no-repeat left top;\r\n/* this will make the \"a\" link a solid shape */\r\n	display: block;\r\n/* adjust according your image size */\r\n	height: 100px;\r\n/* this hides the text */\r\n	text-indent: -999em;\r\n/* old firefox would have shown underline for the link, this explicitly hides it */\r\n	text-decoration: none;\r\n}\r\ndiv#header h1 {\r\n	margin: 0;\r\n	padding: 0;\r\n/*these keep IE6 from pushing the header to more than the set size*/\r\n	line-height: 0;\r\n	font-size: 0;\r\n/* this will keep IE6 from flickering on hover */\r\n	background: url(uploads/ngrey/logoCMS.png) no-repeat left top;\r\n}\r\ndiv#header h2 {\r\n/* this is where the site name is */\r\n	float: right;\r\n	line-height: 1.2em;\r\n/* this keeps IE6 from not showing the whole text */\r\n	font-size: 1.5em;\r\n/* keeps the size uniform */\r\n	margin: 35px 65px 0px 0px;\r\n/* adjust according your text size */\r\n	color: #f4f4f4;\r\n}\r\ndiv.crbk {\r\n/* sets all to 0 */\r\n	margin: 0;\r\n	padding: 0;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.breadcrumbs {\r\n/* CSS short hand rule first value is top then right, bottom and left */\r\n	padding: 1em 0em 1em 1em;\r\n/* its good to set font sizes to be relative, this way viewer can change his/her font size */\r\n	font-size: 90%;\r\n/* css shorthand rule will be opened to be \"0px 0px 0px 0px\" */\r\n	margin: 0px;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/mainleftup.gif) no-repeat left bottom;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n	font-weight: bold;\r\n}\r\ndiv#search {\r\n/* position for the search box */\r\n	float: right;\r\n/* enough width for the search input box */\r\n	width: 27em;\r\n	text-align: right;\r\n	padding: 0.5em 0 0.2em 0;\r\n	margin: 0 1em;\r\n}\r\n/* a class for Submit button for the search input box */\r\ninput.search-button {\r\n	border: none;\r\n	height: 22px;\r\n	width: 53px;\r\n	margin-left: 5px;\r\n	padding: 0px 2px 2px 0px;\r\n/* makes the hover cursor show, you can set your own cursor here */\r\n	cursor: pointer;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/search.gif) no-repeat center center;\r\n}\r\ndiv#content {\r\n/* some air above and under menu and content */\r\n	margin: 1.5em auto 2em 0;\r\n	padding: 0px;\r\n}\r\n/* this gets all the outside calls that were used on the div#main before  */\r\ndiv.back1 {\r\n/* this will give room for sidebar to be on the left side, make sure this number is bigger than sidebar width */\r\n	margin-left: 29%;\r\n/* and some air on the right */\r\n	margin-right: 2%;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\n/* this is an IE6 hack, you may see these through out the CSS */\r\n* html div.back1 {\r\n/* unlike other browser IE6 needs float:right and a width */\r\n	float: right;\r\n	width: 69%;\r\n/* and we take this out or it will stop at the bottom  */\r\n	margin-left: 0%;\r\n/* and some air on the right */\r\n	margin-right: 10px;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv.back2 {\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/mainleft1.gif) no-repeat left top;\r\n}\r\ndiv.back3 {\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv#main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n	padding: 10px 15px;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/rtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebar {\r\n/* set sidebar left. Change to right, float: right; instead, but you will need to change the margins. */\r\n	float: left;\r\n/* sidebar width, if you change this change div.back and/or div.back1 margins */\r\n	width: 26%;\r\n/* FIX IE double margin bug */\r\n	display: inline;\r\n/* the 20px is on the bottom, insures space above footer if longer than content */\r\n	margin: 0px 0px 20px;\r\n	padding: 0px;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/mainrt.gif) no-repeat right top;\r\n}\r\ndiv#sidebarb {\r\n	padding: 10px 15px 10px 20px;\r\n/* this one is for sidebar with content and no menu */\r\n	background: url(uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebarb div#news {\r\n/* less margin surrounding the news, sidebarb has enough */\r\n	margin: 2em 0 1em 0em;\r\n}\r\ndiv#sidebara {\r\n	padding: 10px 15px 15px 0px;\r\n/* this one is for sidebar with menu and no content */\r\n	background: url(uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.footback {\r\n/* keep footer below content and menu */\r\n	clear: both;\r\n/* this sets 10px on right to let the right image show, the balance 10px left on next div */\r\n	padding: 0px 10px 0px 0px;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/wfootrt.gif) no-repeat right top;\r\n}\r\ndiv#footer {\r\n/* this sets 10px on left to balance 10px right on last div */\r\n	padding: 0px 0px 0px 10px;\r\n/* color of text, the link color is set below */\r\n	color: #595959;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv.leftfoot {\r\n	float: left;\r\n	width: 30%;\r\n	margin-left: 20px\r\n}\r\ndiv#footer p {\r\n/* sets different font size from default */\r\n	font-size: 0.8em;\r\n/* some air for footer */\r\n	padding: 1.5em;\r\n/* centered text */\r\n	text-align: center;\r\n	margin: 0;\r\n}\r\ndiv#footer p a {\r\n/* footer link would be same color as default we want it same as footer text */\r\n	color: #595959;\r\n}\r\n/* as we hid all hr for accessibility we create new hr with div class=\"hr\" element */\r\ndiv.hr {\r\n	height: 1px;\r\n	padding: 1em;\r\n	border-bottom: 1px dotted black;\r\n	margin: 1em;\r\n}\r\n/* relational links under content */\r\ndiv.left49 {\r\n/* combined percentages of left+right equaling 100%  might lead to rounding error on some browser */\r\n	width: 70%;\r\n}\r\ndiv.right49 {\r\n	float: right;\r\n	width: 29%;\r\n/* set right to keep text on right */\r\n	text-align: right;\r\n}\r\n/********************CONTENT STYLING*********************/\r\n/* HEADINGS */\r\ndiv#content h1 {\r\n/* font size for h1 */\r\n	font-size: 2em;\r\n	line-height: 1em;\r\n	margin: 0;\r\n}\r\ndiv#content h2 {\r\n	color: #294B5F;\r\n/* font size for h2 the higher the h number the smaller the font size, most times */\r\n	font-size: 1.5em;\r\n	text-align: left;\r\n/* some air around the text */\r\n	padding-left: 0.5em;\r\n	padding-bottom: 1px;\r\n/* set borders around header */\r\n	border-bottom: 1px solid #899092;\r\n	border-left: 1.1em solid #899092;\r\n/* a larder than h1 line height */\r\n	line-height: 1.5em;\r\n/* and some air under the border */\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h3 {\r\n	color: #294B5F;\r\n	font-size: 1.3em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h4 {\r\n	color: #294B5F;\r\n	font-size: 1.2em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\ndiv#content h5 {\r\n	color: #294B5F;\r\n	font-size: 1.1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\nh6 {\r\n	color: #294B5F;\r\n	font-size: 1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\n/* END HEADINGS */\r\n/* TEXT */\r\np {\r\n/* default p font size, this is set different in some other divs */\r\n	font-size: 1em;\r\n/* some air around p elements */\r\n	margin: 0 0 1.5em 0;\r\n	line-height: 1.4em;\r\n	padding: 0;\r\n}\r\nblockquote {\r\n	border-left: 10px solid #ddd;\r\n	margin-left: 10px;\r\n}\r\nstrong, b {\r\n/* explicit setting for these */\r\n	font-weight: bold;\r\n}\r\nem, i {\r\n/* explicit setting for these */\r\n	font-style: italic;\r\n}\r\n/* Wrapping text in <code> tags. Makes CSS not validate */\r\ncode, pre {\r\n/* css-3 */\r\n	white-space: pre-wrap;\r\n/* Mozilla, since 1999 */\r\n	white-space: -moz-pre-wrap;\r\n/* Opera 4-6 */\r\n	white-space: -pre-wrap;\r\n/* Opera 7 */\r\n	white-space: -o-pre-wrap;\r\n/* Internet Explorer 5.5+ */\r\n	word-wrap: break-word;\r\n	font-family: \"Courier New\", Courier, monospace;\r\n	font-size: 1em;\r\n}\r\npre {\r\n/* black border for pre blocks */\r\n	border: 1px solid #000;\r\n/* set different from surroundings to stand out */\r\n	background-color: #ddd;\r\n	margin: 0 1em 1em 1em;\r\n	padding: 0.5em;\r\n	line-height: 1.5em;\r\n	font-size: 90%;\r\n}\r\n/* Separating the divs on the template explanation page */\r\ndiv.templatecode {\r\n	margin: 0 0 2.5em;\r\n}\r\n/* END TEXT */\r\n/* LISTS */\r\n/* lists in content need some margins to look nice */\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl {\r\n	font-size: 1.0em;\r\n	line-height: 1.4em;\r\n	margin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li {\r\n	margin: 0 0 0.25em 3em;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl {\r\n	margin-bottom: 2em;\r\n	padding-bottom: 1em;\r\n	border-bottom: 1px solid #c0c0c0;\r\n}\r\ndiv#main dl dt {\r\n	font-weight: bold;\r\n	margin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n	margin: 0 0 1em 1em;\r\n}\r\n/* END LISTS */','screen','2006-07-25 21:22:32','2009-05-10 00:13:04'),(42,'Navigation: Simple - Vertical','/******************** MENU *********************/\n#menu_vert {\n	margin: 0;\n	padding: 0;\n}\n#menu_vert ul {\n/* remove any bullets */\n	list-style: none;\n/* margin/padding set in li */\n	margin: 0px;\n	padding: 0px;\n}\n#menu_vert ul ul {\n	margin: 0;\n/* padding right sets second level li in on right from first li */\n	padding: 0px 5px 0px 0px;\n/* replaces bottom of li.menuactive menuparent, looks like li below it, set in 5px more, is sitting on top of it */\n	background: transparent url(uploads/ngrey/liup.gif) no-repeat right -4px;\n}\n#menu_vert li {\n/* remove any bullets */\n	list-style: none;\n/* negative bottom margin pulls them together, images look like one border between */\n	margin: 0px 0px -1px;\n/* bottom padding pushes \"a\" up enough to show our image */\n	padding: 0px 0px 4px 0px;\n/* you can set your own image here */\n	background: transparent url(uploads/ngrey/liup.gif) no-repeat right bottom;\n}\n#menu_vert li.currentpage {\n	padding: 0px 0px 3px 0px;\n}\n#menu_vert li.menuactive {\n	margin: 0;\n	padding: 0px;\n/* replaced by image in ul ul */\n	background: none;\n}\n#menu_vert li.menuactive ul {\n	margin: 0;\n}\n#menu_vert li.activeparent {\n	margin: 0;\n	padding: 0px;\n}\n/* fix stupid IE6 bug with display:block; */\n* html #menu_vert li {\n	height: 1%;\n}\n* html #menu_vert li a {\n	height: 1%;\n}\n* html #menu_vert li hr {\n	height: 1%;\n}\n/** end fix **/\n/* first level links */\ndiv#menu_vert a {\n/* IE6 has problems with this, fixed above */\n	display: block;\n/* some air for it */\n	padding: 0.8em 0.3em 0.5em 1.5em;\n/* this will be link color for all levels */\n	color: #18507C;\n/* Fixes IE7 whitespace bug */\n	min-height: 1em;\n/* no underline for links */\n	text-decoration: none;\n/* you can set your own image here this is tall enough to cover text heavy links */\n	background: transparent url(uploads/ngrey/libk.gif) no-repeat right top;\n}\n/* next level links, more padding and smaller font */\ndiv#menu_vert ul ul a {\n	font-size: 90%;\n	padding: 0.8em 0.3em 0.5em 2.8em;\n}\n/* third level links, more padding */\ndiv#menu_vert ul ul ul a {\n	padding: 0.5em 0.3em 0.3em 3em;\n}\n/* hover state for all links */\ndiv#menu_vert a:hover {\n	background-color: transparent;\n	color: #595959;\n	text-decoration: underline;\n}\ndiv#menu_vert a.activeparent:hover {\n	color: #595959;\n}\n/* active parent, that is the first level parent of a child page that is the current page */\ndiv#menu_vert li.activeparent {\n/* you can set your own image here */\n	background: transparent url(uploads/ngrey/liup.gif) no-repeat right -65px;\n/* white to contrast with background image */\n	color: #fff;\n}\ndiv#menu_vert li.activeparent a.activeparent {\n/* you can set your own image here */\n	background: transparent url(uploads/ngrey/libk.gif) no-repeat right top;\n/* to contrast with background image */\n	color: #000;\n}\ndiv#menu_vert li a.parent {\n/* takes left padding out so span image has room on left */\n	padding-left: 0em;\n}\ndiv#menu_vert ul ul li a.parent {\n/* increased padding on left offsets it from one above */\n	padding-left: 0.9em;\n}\ndiv#menu_vert li a.parent span {\n	display: block;\n	margin: 0;\n/* adds left padding taken out of \"a.parent\" */\n	padding-left: 1.5em;\n/* arrow on left for pages with children, points down, you can set your own image here */\n	background: transparent url(uploads/ngrey/active.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.parent:hover {\n/* removes underline hover effect */\n	text-decoration: none;\n}\ndiv#menu_vert li a.parent:hover span {\n	display: block;\n	margin: 0;\n	padding-left: 1.5em;\n/* arrow on left for pages with children, points right for hover, you can set your own image here */\n	background: transparent url(uploads/ngrey/parent.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.menuactive.menuparent {\n/* sets it in a little more than a.parent */\n	padding-left: 0.35em;\n}\ndiv#menu_vert ul ul li a.menuactive.menuparent {\n/* sets it in a little more on next level */\n	padding-left: 0.99em;\n}\ndiv#menu_vert li a.menuactive.menuparent span {\n	display: block;\n	margin: 0;\n/* to contrast with non active pages */\n	font-weight: bold;\n	padding-left: 1.5em;\n/* arrow on left for active pages with children, points right, you can set your own image here */\n	background: transparent url(uploads/ngrey/parent.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.menuactive.menuparent:hover {\n	text-decoration: none;\n	color: #18507C;\n}\ndiv#menu_vert ul ul li a.activeparent {\n	color: #fff;\n}\n/* current pages in the default Menu Manager template are unclickable. This is for current page on first level */\ndiv#menu_vert ul h3 {\n	display: block;\n/* some air for it */\n	padding: 0.8em 0.5em 0.5em 1.5em;\n/* this will be link color for all levels */\n	color: #000;\n/* instead of the normal font size for <h3> */\n	font-size: 1em;\n/* as <h3> normally has some margin by default */\n	margin: 0;\n/* you can set your own image here, same as \"a\" */\n	background: transparent url(uploads/ngrey/libk.gif) no-repeat right top;\n}\n/* next level current pages, more padding, smaller font and no background color or bottom border */\ndiv#menu_vert ul ul h3 {\n	font-size: 90%;\n	padding: 0.8em 0.5em 0.5em 2.8em;\n/* you can set your own image here, same as \"a\" */\n	background: transparent url(uploads/ngrey/libk.gif) no-repeat right top;\n	color: #000;\n}\n/* current page on third level, more padding */\ndiv#menu_vert ul ul ul h3 {\n	padding: 0.6em 0.5em 0.2em 3em;\n}\n/* BIG NOTE: I didn\'t do anything to these, never tested */\n/* section header */\ndiv#menu_vert li.sectionheader {\n	border-right: none;\n	padding: 0.8em 0.5em 0.5em 1.5em;\n	background: transparent url(uploads/ngrey/libk.gif) no-repeat right top;\n	line-height: 1em;\n	margin: 0;\n        color: #18507C;\n        cursor:text;\n}\n/* separator */\ndiv#menu_vert .separator {\n	height: 1px !important;\n	margin-top: -1px;\n	margin-bottom: 0;\n	-padding: 2px 0 2px 0;\n	background-color: #000;\n	overflow: hidden !important;\n	line-height: 1px !important;\n	font-size: 1px;\n/* for ie */\n}\ndiv#menu_vert li.separator hr {\n	display: none;\n/* this is for accessibility */\n}','screen','2009-04-30 01:09:15','2009-07-23 00:17:42'),(43,'Navigation: ShadowMenu - Horizontal','/* by Alexander Endresen and mark */\r\n#menu_vert {\r\n/* no margin/padding so it fills the whole div */\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n.clearb {\r\n/* needed for some browsers */\r\n	clear: both;\r\n}\r\n#menuwrapper {\r\n/* set the background color for the menu here */\r\n	background-color: #243135;\r\n/* IE6 Hack */\r\n	height: 1%;\r\n	width: auto;\r\n/* one border at the top */\r\n	border-top: 1px solid #3F565C;\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\nul#primary-nav {\r\n	list-style-type: none;\r\n	margin: 0px;\r\n	padding-top: 10px;\r\n	padding-left: 10px;\r\n}\r\n#primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n/* sets width of second level ul to background image */\r\n	width: 210px;\r\n	margin: 0px;\r\n	padding: 0px;\r\n/* make the ul stay in place so when we hover it lets the drops go over the content instead of displacing it */\r\n	position: absolute;\r\n/* top being the bottom of the li it comes out of */\r\n	top: auto;\r\n/* keeps it hidden till hover event */\r\n	display: none;\r\n/* room at top for li so image top shows correct */\r\n	padding-top: 9px;\r\n/* set your image here, tall enough for the ul */\r\n	background: url(uploads/ngrey/ultopup.png) no-repeat left top;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav ul {\r\n	padding-top: 13px;\r\n	background: url(uploads/ngrey/ultopup.gif) no-repeat left top;\r\n}\r\n#primary-nav ul ul {\r\n/* insures no top margins */\r\n	margin-top: 0px;\r\n/* pulls the last ul back over the preceding ul */\r\n	margin-left: -1px;\r\n/* keeps the left side of this ul on the right side of the preceding ul */\r\n	left: 100%;\r\n/* negative margin pulls the left centered in li next to it */\r\n	top: -3px;\r\n/* set your image here, tall enough for the ul, this is the left arrow for third level ul */\r\n	background: url(uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav ul ul {\r\n	margin-top: 0px;\r\n	padding-left: 5px;\r\n	left: 100%;\r\n	top: -7px;\r\n/* IE6 gets gif as it can\'t handle transparent png */\r\n	background: url(uploads/ngrey/ultoprt.gif) no-repeat right top;\r\n}\r\n#primary-nav li {\r\n/* a little space to the left of each top level menu item */\r\n	margin-left: 5px;\r\n/* floating left will set menu items to line up left to right else they will stack top to bottom */\r\n	float: left;\r\n}\r\n#primary-nav li li {\r\n/* a little more space to the left of each menu item */\r\n	margin-left: 8px;\r\n/* keeps them tight to the one above, no missed hovers */\r\n	margin-top: -1px;\r\n/* removes the left float set in first li so these will stack from top down */\r\n	float: none;\r\n/* relative to the ul they are in */\r\n	position: relative;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav li li {\r\n	margin-left: 6px;\r\n/* helps hold it inside the ul */\r\n	width: 171px;\r\n}\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #fff;\r\n/* doing tab menus require a bit different padding, this will give room on right for image to show, adjust to width of your image */\r\n	padding: 0px 11px 0px 0px;\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* remove default \"a\" underline */\r\n	text-decoration: none;\r\n}\r\nul#primary-nav li a span {\r\n/* takes normal \"a\" padding minus some for right image */\r\n	padding: 12px 4px 12px 15px;\r\n/* makes it hold a shape */\r\n	display: block;\r\n}\r\nul#primary-nav li a:hover {\r\n/* kind of obvious */\r\n	background-color: transparent;\r\n}\r\nul#primary-nav li {\r\n/* set your image here */\r\n	background:  url(uploads/ngrey/navrttest.gif) no-repeat right -51px;\r\n}\r\nul#primary-nav li span {\r\n/* set your image here */\r\n	background:  url(uploads/ngrey/navlefttest.gif) repeat-x left -51px;\r\n/* set text color here also to insure color */\r\n	color: #fff;\r\n/* just to be sure */\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li li {\r\n/* remove any image set in first level li */\r\n	background:  none;\r\n}\r\nul#primary-nav li li span {\r\n/* remove any image set in first level li span */\r\n	background:  none;\r\n/* set text color here also to insure color */\r\n	color: #fff;\r\n/* just to be sure */\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li:hover,\r\nul#primary-nav li.menuh,\r\nul#primary-nav li.menuparenth {\r\n/* set hover image, right side */\r\n	background:  url(uploads/ngrey/navrttest.gif) no-repeat right 0px;\r\n}\r\nul#primary-nav li:hover span,\r\nul#primary-nav li.menuh span,\r\nul#primary-nav li.menuparenth span {\r\n/* set hover image, left side */\r\n	background:  url(uploads/ngrey/navlefttest.gif) repeat-x left 0px;\r\n/* change text color on hover */\r\n	color: #000;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks, the JS used for hover effect in IE6 puts class menuh on li, unless they have a class then just an \"h\" as seen above and below */\r\nul#primary-nav li li.menuh {\r\n	background:  none;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li span {\r\n	background:  none;\r\n	color: #000;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuparent span {\r\n/* gif for IE6, as it can\'t handle transparent png */\r\n	background:  url(uploads/ngrey/parent.gif) no-repeat right center;\r\n	color: #000\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuh span {\r\n	background:  none;\r\n	color: #FFF;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuparenth {\r\n	background:  none;\r\n	color: #FFF;\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li.menuactive a {\r\n/* set your image here for active tab right */\r\n	background:  url(uploads/ngrey/navrttest.gif) no-repeat right 0px;\r\n}\r\nul#primary-nav li a.menuactive span {\r\n/* set your image here for active tab left */\r\n	background:  url(uploads/ngrey/navlefttest.gif) repeat-x left 0px;\r\n/* non active is #FFF/white, we need #000/black to contrast with light background */\r\n	color: #000;\r\n/* bold to set it off from non active */\r\n	font-weight: bold;\r\n}\r\n#primary-nav li li a {\r\n/* second level padding, no image and not as big */\r\n	padding: 5px 10px;\r\n/* to keep it within li */\r\n	width: 165px;\r\n/* space between them */\r\n	margin: 5px;\r\n	background: none;\r\n}\r\n/* IE6 hacks to above code */\r\n* html #primary-nav li li a {\r\n	padding: 5px 10px;\r\n	width: 165px;\r\n	margin: 0px;\r\n	color: #000;\r\n}\r\n#primary-nav li li:hover {\r\n/* remove image set in first level */\r\n	background: none;\r\n}\r\n#primary-nav li li a:hover {\r\n/* set different image than first level */\r\n	background:  url(uploads/ngrey/darknav.png) repeat-x left center;\r\n/* we need #FFF/white to contrast with dark background */\r\n	color: #FFF;\r\n}\r\n#primary-nav li.menuparent li a:hover span {\r\n/* insures text color */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li:hover li a span {\r\n/* first level is #FFF/white, we need #000/black to contrast with light background */\r\n	color: #000;\r\n/* just to insure normal */\r\n	font-weight: normal;\r\n}\r\n#primary-nav li li.menuactive a.menuactive, #primary-nav li li.menuactive a.menuactive:hover {\r\n/* set your image here, lighter than hover */\r\n	background:  url(uploads/ngrey/nav.png) repeat-x left 0px;\r\n/* non active is #FFF/white, we need #000/black to contrast with light background */\r\n	color: #000;\r\n}\r\n#primary-nav li li.menuactive a.menuactive span {\r\n/* insures text color */\r\n	color: #000\r\n}\r\n#primary-nav li li.menuactive a.menuactive:hover span {\r\n/* insures text color */\r\n	color: #000;\r\n}\r\n/* IE6 hacks to above code */\r\n#primary-nav li li.menuparenth a.menuparent span {\r\n/* right arrow for menu parent, IE6 gif */\r\n	background:  url(uploads/ngrey/parent.gif) no-repeat right center;\r\n	color: #000\r\n}\r\n/* IE6 hacks to above code */\r\n#primary-nav li li.menuparenth a.menuparent:hover span {\r\n	color: #FFF\r\n}\r\n#primary-nav li li.menuparent a.menuparent span {\r\n/* right arrow for parent item */\r\n	background:  url(uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuactive li a:hover span {\r\n/* black text */\r\n	color: #000\r\n}\r\nul#primary-nav li li a.menuactive  span {\r\n/* remove image set in first level */\r\n	background:  none;\r\n	font-weight: normal;\r\n}\r\n#primary-nav li.menuactive li a {\r\n/* second level active link color */\r\n	color: #0587A9;\r\n	text-decoration: none;\r\n	background: none;\r\n}\r\n#primary-nav li.menuactive li a:hover {\r\n/* dark image for hover */\r\n	background:  url(uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuactive li a:hover span {\r\n/* white text to contrast with dark background image on hover */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li:hover li a span, ul#primary-nav li.menuparenth li a span {\r\n	padding: 0px;\r\n	background:  none;\r\n}\r\n/* this is a special li type from the menu template, used to hold the bottom image for ul set above */\r\n#primary-nav ul li.separator, #primary-nav .separator:hover {\r\n/* set same as ul */\r\n	width: 210px;\r\n/* height of image */\r\n	height: 9px;\r\n/* negative margin pulls it down to cover ul image */\r\n	margin: 0px 0px -8px;\r\n/* set your image here */\r\n	background: url(uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* same as above for next level to insure it shows correct */\r\n#primary-nav ul ul li.separator, #primary-nav ul ul li.separator:hover {\r\n	height: 9px;\r\n	margin: 0px 0px -8px;\r\n	background: url(uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* IE6 hacks */\r\n* html #primary-nav ul li.separator {\r\n	height: 2px;\r\n	background: url(uploads/ngrey/ulbtmrt.gif) no-repeat left bottom;\r\n}\r\n/* IE6 hacks */\r\n* html #primary-nav ul li.separatorh {\r\n	margin: 0px 0px -8px;\r\n	height: 2px;\r\n	background: url(uploads/ngrey/ultop.gif) no-repeat left top;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE Hacks */\r\n#primary-nav li li {\r\n	float: left;\r\n	clear: both;\r\n}\r\n#primary-nav li li a {\r\n	height: 1%;\r\n}','screen','2009-05-01 04:32:33','2009-07-20 18:18:21'),(45,'Navigation: ShadowMenu - Vertical','/* Vertical menu for the CMS CSS Menu Module */\r\n/* by Alexander Endresen and mark */\r\n#menuwrapper {\r\n/* just smaller than it\'s containing div */\r\n	width: 95%;\r\n	margin-left: 0px;\r\n/* room at bottom */\r\n	margin-bottom: 10px;\r\n}\r\n/* Unless you know what you do, do not touch this */\r\n#primary-nav, #primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style: none;\r\n	margin: 0px;\r\n	padding: 0px;\r\n/* make sure it fills out */\r\n	width: 100%;\r\n/* just a little bump */\r\n	margin-left: 1px;\r\n}\r\n#primary-nav li {\r\n/* negative bottom margin pulls them together, images look like one border between */\r\n	margin-bottom: -1px;\r\n/* keeps within it\'s container */\r\n	position: relative;\r\n/* bottom padding pushes \"a\" up enough to show our image */\r\n	padding: 0px 0px 4px 0px;\r\n/* you can set your own image here */\r\n	background: url(uploads/ngrey/liup.gif) no-repeat right bottom;\r\n}\r\n#primary-nav li li {\r\n/* you can set your width here, if no width or set auto it will only be as wide as the text in it  */\r\n	width: 190px;\r\n/* changes padding inherited from first level */\r\n	padding: 0px 10px;\r\n/* removes first level li image */\r\n	background-image: none;\r\n}\r\n/* Styling the basic appearance of the menu \"a\" elements */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #595959;\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 0.8em 0.5em 0.5em 0.5em;\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* removes underline from default link setting */\r\n	text-decoration: none;\r\n/* you can set your own image here this is tall enough to cover text heavy links */\r\n	background: url(uploads/ngrey/libk.gif) no-repeat right top;\r\n}\r\nul#primary-nav a span {\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* pushes text to right */\r\n	padding-left: 1.5em;\r\n}\r\nul#primary-nav li a:hover {\r\n/* stops image flicker in some browsers */\r\n	background: url(uploads/ngrey/libk.gif) no-repeat right top;\r\n/* changes text color on hover */\r\n	color: #899092\r\n}\r\nul#primary-nav li li a:hover {\r\n/* you can set your own image here, second level \"a\" */\r\n	background:  url(uploads/ngrey/darknav.png) repeat-x left center;\r\n/* contrast color to image behind it */\r\n	color: #FFF\r\n}\r\nul#primary-nav li a.menuactive {\r\n/* black and bold to set it off from non active */\r\n	color: #000;\r\n	font-weight: bold;\r\n}\r\nul#primary-nav li ul a {\r\n/* insure alignment */\r\n	text-align: left;\r\n	margin: 0px;\r\n/* relative to it\'s container */\r\n	position: relative;\r\n/* even padding all 4 sides */\r\n	padding: 6px;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors from here on */\r\n	color: #000;\r\n/* remove any background that may have been set in level above */\r\n	background: none;\r\n}\r\nul#primary-nav li ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n/* sets width of second level ul to background image */\r\n	width: 209px;\r\n	height: auto;\r\n/* negative margin pulls it over the parent ul */\r\n	margin: 0px 0px 0px -2px;\r\n/* top padding gives room for image shadow and pushes li down into image */\r\n	padding: 10px 0px 0px;\r\n/* make the ul stay in place so when we hover it lets the drops go over the content instead of displacing it */\r\n	position: absolute;\r\n/* keeps the left side of this ul on the right side of the preceding ul */\r\n	left: 100%;\r\n/* negative top pulls up so left arrow centered in li next to it */\r\n	top: -2px;\r\n	display: none;\r\n/* set your image here, tall enough for the ul, this is the left arrow for second ul and on */\r\n	background: url(uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n/* a lot of the same as above, minor changes */\r\nul#primary-nav li ul ul {\r\n	list-style-type: none;\r\n/* bit more negative left margin */\r\n	margin: 0px 0px 0px -8px;\r\n/* you can call a property twice but not a property:\'value\', this flat lines it */\r\n	padding: 0px;\r\n/* now we just change one with \'property\'-top:value */\r\n	padding-top: 10px;\r\n	position: absolute;\r\n	width: 209px;\r\n	height: auto;\r\n/* negative top pulls up so left arrow centered in li next to it, more on 3rd ul covers default drop increase */\r\n	top: -5px;\r\n	left: 100%;\r\n	display: none;\r\n/* set your image here */\r\n	background: url(uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n* html ul#primary-nav li ul {\r\n/* gif for IE6, as it can\'t handle transparent png */\r\n	background: url(uploads/ngrey/ultoprt.gif) no-repeat left top;\r\n}\r\n* html ul#primary-nav li ul ul {\r\n/* gif for IE6, as it can\'t handle transparent png */\r\n	background: url(uploads/ngrey/ultoprt.gif) no-repeat left top;\r\n}\r\n/* this is a special li type from the menu template, used to hold the bottom image for ul set above */\r\n#primary-nav ul li.separator, #primary-nav .separator:hover {\r\n/* set same as ul */\r\n	width: 209px;\r\n	padding: 0px;\r\n/* height of image */\r\n	height: 9px;\r\n/* negative margin pulls it down to cover ul image */\r\n	margin: 0px 0px -9px;\r\n/* set your image here */\r\n	background: url(uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* IE6 \'star html\' Hack */\r\n* html #primary-nav  li ul li.separator {\r\n	height: 2px;\r\n/* set your image here */\r\n	background: url(uploads/ngrey/ulbtmrt.gif) no-repeat left bottom;\r\n}\r\n/* Fixes IE7 bug*/\r\n#primary-nav li, #primary-nav li.menuparent {\r\n	min-height: 1em;\r\n}\r\n/* Styling the basic apperance of the active page elements (shows what page in the menu is being displayed) */\r\n#primary-nav li li.menuactive a.menuactive {\r\n/* contrast color to image behind it */\r\n	color: #FFF;\r\n/* not bold as text color and image behind it set it off from non active */\r\n	font-weight: normal;\r\n/* set your image here, dark grey image with white text set above*/\r\n	background:  url(uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuparent span {\r\n/* padding on left for image */\r\n	padding-left: 1.5em;\r\n/* down arrow to note it has children, left side of text */\r\n	background: url(uploads/ngrey/active.png) no-repeat left center;\r\n}\r\n#primary-nav li.menuparent:hover li.menuparent span {\r\n/* remove left padding as image is on right side of text */\r\n	padding-left: 0;\r\n/* right arrow to note it has children, right side of text */\r\n	background: url(uploads/ngrey/parent.png) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth li.menuparent span,\r\n#primary-nav li.menuparenth li.menuparenth span {\r\n/* same as above but this is for IE6, gif image as it can\'t handle transparent png */\r\n	padding-left: 0;\r\n	background: url(uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuparent:hover span,\r\n#primary-nav li.menuparent.menuactive span,\r\n#primary-nav li.menuparent.menuactiveh span,\r\n#primary-nav li.menuparenth span {\r\n/* right arrow on hover */\r\n	background: url(uploads/ngrey/parent.png) no-repeat left center;\r\n}\r\n#primary-nav li li span,\r\n#primary-nav li.menuparent li span,\r\n#primary-nav li.menuparent:hover li span,\r\n#primary-nav li.menuparenth li span,\r\n#primary-nav li.menuparenth li.menuparenth li span,\r\n#primary-nav li.menuparent li.menuparent li span,\r\n#primary-nav li.menuparent li.menuparent:hover li span {\r\n/* removes any images set above unless it\'s a parent or active parent */\r\n	background:  none;\r\n	padding-left: 0px;\r\n}\r\n/* Styling the appearance of menu items on hover */\r\n#primary-nav li:hover li a,\r\n#primary-nav li.menuh li a,\r\n#primary-nav li.menuparenth li a,\r\n#primary-nav li.menuactiveh li a {\r\n/* removes any images set above unless it\'s a parent or active parent */\r\n	background:  none;\r\n	color: #000;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE Hack, will cause the css to not validate */\r\n#primary-nav li, #primary-nav li.menuparenth {\r\n	_float: left;\r\n	_height: 1%;\r\n}\r\n#primary-nav li a {\r\n	_height: 1%;\r\n}\r\n/* BIG NOTE: I didn\'t do anything to these 2, never tested */\r\n#primary-nav li.sectionheader {\r\n	border-left: 1px solid #006699;\r\n	border-top: 1px solid #006699;\r\n	font-size: 130%;\r\n	font-weight: bold;\r\n	padding: 1.5em 0 0.8em 0.5em;\r\n	background-color: #fff;\r\n	margin: 0;\r\n	width: 100%;\r\n}\r\n/* separator */\r\n#primary-nav li hr.separator {\r\n	display: block;\r\n	height: 0.5em;\r\n	color: #abb0b6;\r\n	background-color: #abb0b6;\r\n	width: 100%;\r\n	border: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n	border-top: 1px solid #006699;\r\n	border-right: 1px solid #006699;\r\n}','screen','2009-05-02 00:20:03','2009-05-11 00:43:17'),(46,'Navigation: FatFootMenu','#footer ul {\r\n/* some margin is set in the footer padding */\r\n   margin: 0px;\r\n/* calling a specific side, left in this case */\r\n   margin-left: 5px;\r\n   padding: 0px;\r\n/* remove any default bullets, image used in li call */\r\n   list-style: none;\r\n}\r\n#footer ul li {\r\n/* remove any default bullets, image used for consistency */\r\n   list-style: none;\r\n/* float left to set first level li items across the top */\r\n   float:left;\r\n/* a little margin at top */\r\n   margin: 5px 0px 0px;\r\n/* padding all the way around */\r\n   padding: 5px;\r\n/* you can set your own image here, used for consistency */\r\n   background: url(uploads/ngrey/dot.gif) no-repeat left 10px;\r\n}\r\n#footer ul li a {\r\n/* this will make the \"a\" link a solid shape */\r\n   display:block;\r\n   margin: 2px 0px 4px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n/* set h3 to look like \"a\" */\r\n#footer li h3 {\r\n   font-weight:normal;\r\n   font-size:100%;\r\n   margin: 2px 0px 2px 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n/* set h3 to look like \"a\", less margin at this level */\r\n#footer li li h3 {\r\n   font-weight:normal;\r\n   font-size:100%;\r\n   margin: 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n#footer ul li li {\r\n/* remove any default bullets, image used for consistency */\r\n   list-style: none;\r\n/* remove float so they line up under top li */\r\n   float:none;\r\n/* less margin/padding */\r\n   margin: 0px;\r\n   padding: 0px 0px 0px 5px;\r\n/* you can set your own image here, used for consistency */\r\n   background: url(uploads/ngrey/dot.gif) no-repeat left 3px;\r\n}\r\n/* fix for IE6 */\r\n* html #footer ul li a {\r\n   margin: 2px 0px 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n* html #footer ul li li a {\r\n   margin: 0px 0px 0px;\r\n   padding: 0px 5px 0px 5px;\r\n}\r\n/* End fix for IE6 */\r\n#footer ul ul {\r\n/* remove float so they line up under top li */\r\n   float:none;\r\n/* a little margin to offset it */\r\n   margin: 0px 0px 0px 8px;\r\n   padding: 0;\r\n}\r\n#footer ul ul ul {\r\n/* remove float so they line up under li above it */\r\n   float:none;\r\n/* a little margin to offset it */\r\n   margin: 0px 0px 0px 8px;\r\n   padding: 0;\r\n}','screen','2009-05-02 15:05:04','2009-05-09 23:47:45'),(47,'ncleanbluecore','/*\r\n  @Nuno Costa [criacaoweb.net] Core CSS.\r\n  @Licensed under GPL and MIT.\r\n  @Status: Stable\r\n  @Version: 0.1-20090418\r\n  \r\n  @Contributors:\r\n  \r\n  --------------------------------------------------------------- \r\n*/\r\n/*----------- Global Containers ----------- */\r\n/* \r\n.core-wrap-100   =  width - 100% of Browser Fluid\r\n.core-wrap-960   =  width - 960px  - fixed\r\n.core-wrap-780   =  width - 780px  - fixed\r\n.custom-wrap-x   =  width -  custom   - declared in another css (your site css)\r\n*/\r\n.core-wrap-100 {\r\n	width: 100%;\r\n}\r\n.core-wrap-960 {\r\n	width: 960px;\r\n}\r\n.core-wrap-780 {\r\n	width: 780px;\r\n}\r\n.core-wrap-100,\r\n.core-wrap-960,\r\n.core-wrap-780,\r\n.custom-wrap-x {\r\n	margin-left: auto;\r\n	margin-right: auto;\r\n}\r\n/*----------- Global Float ----------- */\r\n.core-wrap-100  .core-float-left,\r\n.core-wrap-960  .core-float-left,\r\n.core-wrap-780  .core-float-left,\r\n.custom-wrap-x  .core-float-left {\r\n	float: left;\r\n	display: inline;\r\n}\r\n.core-wrap-100  .core-float-right,\r\n.core-wrap-960  .core-float-right,\r\n.core-wrap-780  .core-float-right,\r\n.custom-wrap-x  .core-float-right {\r\n	float: right;\r\n	display: inline;\r\n}\r\n/*----------- Global Center ----------- */\r\n.core-wrap-100   .core-center,\r\n.core-wrap-960   .core-center,\r\n.core-wrap-780   .core-center,\r\n.custom-wrap-x   .core-center {\r\n	margin-left: auto;\r\n	margin-right: auto;\r\n}','screen','2009-05-06 14:28:28','2009-05-11 02:35:43'),(48,'ncleanblueutils','/*\r\n  @Nuno Costa [criacaoweb.net] Utils CSS.\r\n  @Licensed under GPL2 and MIT.\r\n  @Status: Stable\r\n  @Version: 0.1-20090418\r\n  \r\n  @Contributors:\r\n        -  http://meyerweb.com/eric/tools/css/reset/index.html \r\n  \r\n  --------------------------------------------------------------- \r\n*/\r\n/* From: http://meyerweb.com/eric/tools/css/reset/index.html  (Original) */\r\n/* v1.0 | 20080212 */\r\nhtml, body, div, span, applet, object, iframe,\r\nh1, h2, h3, h4, h5, h6, p, blockquote, pre,\r\na, abbr, acronym, address, big, cite, code,\r\ndel, dfn, em, font, img, ins, kbd, q, s, samp,\r\nsmall, strike, strong, sub, sup, tt, var,\r\nb, u, i, center,\r\ndl, dt, dd, ol, ul, li,\r\nfieldset, form, label, legend,\r\ntable, caption, tbody, tfoot, thead, tr, th, td {\r\n	margin: 0;\r\n	padding: 0;\r\n	border: 0;\r\n	outline: 0;\r\n	font-size: 100%;\r\n	vertical-align: baseline;\r\n	background: transparent;\r\n}\r\n/*\r\nStantby for nowbody {\r\n	line-height: 1;\r\n}\r\n*/\r\nol, ul {\r\n	list-style: none;\r\n}\r\nblockquote, q {\r\n	quotes: none;\r\n}\r\nblockquote:before,\r\nblockquote:after,\r\nq:before, q:after {\r\n	content: \'\';\r\n	content: none;\r\n}\r\n/* remember to define focus styles! */\r\n:focus {\r\n	outline: 0;\r\n}\r\n/* remember to highlight inserts somehow! */\r\nins {\r\n	text-decoration: none;\r\n}\r\ndel {\r\n	text-decoration: line-through;\r\n}\r\n/* tables still need \'cellspacing=\"0\"\' in the markup */\r\ntable {\r\n	border-collapse: collapse;\r\n	border-spacing: 0;\r\n}\r\n/* ------- @Nuno Costa [criacaoweb.net] Utils CSS. ---------- */\r\n* {\r\n	font-weight: inherit;\r\n	font-style: inherit;\r\n	font-family: inherit;\r\n}\r\ndfn {\r\n	display: none;\r\n	overflow: hidden;\r\n}\r\n/* ----------- Clear Floated Elements ----------- */\r\nhtml body .util-clearb {\r\n	background: none;\r\n	border: 0;\r\n	clear: both;\r\n	display: block;\r\n	float: none;\r\n	font-size: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n	position: static;\r\n	overflow: hidden;\r\n	visibility: hidden;\r\n	width: 0;\r\n	height: 0;\r\n}\r\n/* ----------- Fix to Clear Floated Elements ----------- */\r\n.util-clearfix:after {\r\n	clear: both;\r\n	content: \'.\';\r\n	display: block;\r\n	visibility: hidden;\r\n	height: 0;\r\n}\r\n.util-clearfix {\r\n	display: inline-block;\r\n}\r\n* html .util-clearfix {\r\n	height: 1%;\r\n}\r\n.util-clearfix {\r\n	display: block;\r\n}','screen','2009-05-06 14:29:17','2009-05-11 02:38:10'),(49,'Layout: NCleanBlue','/*  \r\n@Nuno Costa [criacaoweb.net]\r\n@Since [cmsms 1.6]\r\n@Contributors: Mark and Dev-Team\r\n*/\r\nbody {\r\n/* default text for entire site */\r\n	font: normal 0.8em Tahoma, Verdana, Arial, Helvetica, sans-serif;\r\n/* default text color for entire site */\r\n	color: #3A3A36;\r\n/* you can set your own image and background color here */\r\n	background: #fff url(images/mapa.jpg) no-repeat scroll left top;\r\n}\r\n/* Mask helper  for browsers ZOOM, Rezise and Decrease */\r\n#ncleanblue {\r\n/* set to width of viewport */\r\n	width: auto;\r\n/* you can set your own image and background color here */\r\n	background: #fff url(uploads/NCleanBlue/bg__full.png) repeat-x scroll left top;\r\n}\r\n/* wiki style external links */\r\n/* external links will have \"(external link)\" text added, lets hide it */\r\na.external span {\r\n	position: absolute;\r\n	left: -5000px;\r\n	width: 4000px;\r\n}\r\na.external {\r\n/* make some room for the image, css shorthand rules, read: first top padding 0 then right padding 12px then bottom then right */\r\n	padding: 0 12px 0 0;\r\n}\r\n/* colors for external links */\r\na.external:link {\r\n	color: #679EBC;\r\n/* background image for the link to show wiki style arrow */\r\n	background: url(images/cms/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:visited {\r\n	color: #18507C;\r\n/* a different color can be used for visited external links */\r\n/* Set the last 0 to -100px to use that part of the external.gif image for different color for active links external.gif is actually 300px tall, we can use different positions of the image to simulate rollover image changes.*/\r\n	background: url(images/cms/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:hover {\r\n	color: #18507C;\r\n/* Set the last 0 to -200px to use that part of the external.gif image for different color on hover */\r\n	background: url(images/cms/external.gif) no-repeat 100% 0;\r\n	background-color: inherit;\r\n}\r\n/* end wiki style external links */\r\n/* hr and anything with the class of accessibility is hidden with CSS from visual browsers */\r\n.accessibility, hr {\r\n/* absolute lets us put it outside the viewport with the indents, the rest is to clear all defaults */\r\n	position: absolute;\r\n	top: -9999em;\r\n	left: -9999em;\r\n	background: none;\r\n	border: 0;\r\n	clear: both;\r\n	display: block;\r\n	float: none;\r\n	font-size: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n	overflow: hidden;\r\n	visibility: hidden;\r\n	width: 0;\r\n	height: 0;\r\n	border: none;\r\n}\r\n/* ------------ Standard  HTML elements and their default settings ------------ */\r\nb, strong{font-weight: bold;}i, em{	font-style: italic;}\r\np {\r\n	padding: 0;\r\n	margin-top: 0.5em;\r\n    margin-bottom: 1em;\r\n   text-align:left;\r\n}\r\nh1, h2, h3, h4, h5 {\r\n	line-height: 1.6em;\r\n	font-weight: normal;\r\n	width: auto;\r\n	font-family: \"Trebuchet MS\", Arial, Helvetica, sans-serif;\r\n}\r\n/*default link styles*/\r\na {\r\n	color: #679EBC;\r\n	text-decoration: none;\r\n	text-align: left;\r\n}\r\na:hover {\r\n	color: #3A6B85;\r\n}\r\na:active {\r\n	color: #3A6B85;\r\n}\r\na:visited {\r\n	color: #679EBC;\r\n}\r\ninput, textarea, select {\r\n	font-size: 0.95em;\r\n}\r\n/* ------------ Wrapper ------------ */\r\ndiv#pagewrapper {\r\n	font-size: 95%;\r\n	position: relative;\r\n	z-index: 1;\r\n}\r\n/* ------------ Header ------------ */\r\n#header {\r\n	height: 111px;\r\n	width: 960px;\r\n}\r\n#logo a {\r\n/* adjust according your image size */\r\n	height: 75px;\r\n	width: 215px;\r\n/* forces full link size */\r\n	display: block;\r\n/* this hides the text */\r\n	text-indent: -9999em;\r\n	margin-top: 0;\r\n	margin-left: 0;\r\n/* you can set your own image here, note size adjustments */\r\n	background: url(uploads/NCleanBlue/logo.png) no-repeat left top;\r\n}\r\n/* ------------ Header - Search ------------ */\r\ndiv#search {\r\n	width: 190px;\r\n	height: 28px;\r\n	margin-top: 31px;\r\n	margin-right: 20px;\r\n}\r\ndiv#search label {\r\n	text-indent: -9999em;\r\n	height: 0pt;\r\n	width: 0pt;\r\n	display: none;\r\n}\r\ndiv#search input.search-input {\r\n/* specific size for image, your image may need these adjusted */\r\n	width: 143px;\r\n	height: 17px;\r\n/* removes default borders, allows use of image */\r\n	border-style: none;\r\n/* text color */\r\n	color: #999;\r\n/* padding of text */\r\n	padding: 7px 0px 4px 10px;\r\n	float: left;\r\n/* set all font properties at once, weight, size, family */\r\n	font: bold 0.9em Arial, Helvetica, sans-serif;\r\n/* left input image, set your own here */\r\n	background: url(uploads/NCleanBlue/search.png) no-repeat left top;\r\n}\r\ndiv#search input.search-button {\r\n/* specific size for image, your image may need these adjusted */\r\n	width: 37px;\r\n	height: 28px;\r\n/* removes default borders, allows use of image */\r\n	border-style: none;\r\n/* hides text, image has text */\r\n	text-indent: -9999em;\r\n	float: left;\r\n	margin: 0;\r\n/* provides positive hover effect */\r\n	cursor: pointer;\r\n/* removes default size/height */\r\n	font-size: 0px;\r\n	line-height: 0px;\r\n/* submit button image, set your own here */\r\n	background: transparent url(uploads/NCleanBlue/search.png) no-repeat right top;\r\n}\r\n/* ------------ Content ------------ */\r\n#content {\r\n	width: auto;\r\n/* all text in #content will default align left, changed in other calls */\r\n	text-align: left;\r\n}\r\n#bar {\r\n	width: auto;\r\n	height: 40px;\r\n	padding-right: 1em;\r\n	padding-left: 1em;\r\n}\r\n.print {\r\n	margin-right: 75px;\r\n	margin-top: 10px;\r\n}\r\n#version {\r\n	width: 50px;\r\n	height: 31px;\r\n	position: absolute;\r\n	z-index: 5;\r\n	top: 130px;\r\n	right: -16px;\r\n	font-size: 1.6em;\r\n	font-weight: bold;\r\n	padding: 28px 15px;\r\n	color: #FFF;\r\n	text-align: center;\r\n	vertical-align: middle;\r\n	background:  url(uploads/NCleanBlue/version.png) no-repeat left top;\r\n}\r\n/* IE6 fixes */\r\n* html div#version {\r\n	top: 150px;\r\n}\r\n/* End IE6 fixes */\r\n/* Site Title */\r\nh1.title {\r\n	font-size: 1.8em;\r\n	color: #666666;\r\n	margin-bottom: 0.5em;\r\n}\r\n/* Breadcrumbs */\r\ndiv.breadcrumbs {\r\n	padding: 0.5em 0;\r\n	font-size: 80%;\r\n	margin: 0 1em;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n	font-weight: bold;\r\n}\r\n/* ------------ Side Bar (Left) ------------ */\r\n#left {\r\n	width: 250px;\r\n}\r\n/* Image that Represents the new CMS design */\r\n#left .screen {\r\n	margin: 10px 50px;\r\n}\r\n/* End  */\r\n.sbar-title {\r\n	font: bold 1.2em Arial, Helvetica, sans-serif;\r\n	color: #252523;\r\n}\r\n.sbar-top {\r\n	height: 20px;\r\n	width: auto;\r\n	padding: 10px;\r\n	background: url(uploads/NCleanBlue/bg__content.png) no-repeat left top;\r\n}\r\n.sbar-main {\r\n	width: auto;\r\n	border-right: 1px solid #E2E2E2;\r\n	border-left: 1px solid #E2E2E2;\r\n	background: #F0F0F0;\r\n}\r\nspan.sbar-bottom {\r\n	width: auto;\r\n	display: block;\r\n	height: 10px;\r\n	background: url(uploads/NCleanBlue/bg__content.png) no-repeat left bottom;\r\n}\r\n/* ------------ Main (Right) ------------ */\r\n#main {\r\n	width: 690px;\r\n}\r\n.main-top {\r\n	height: 15px;\r\n	width: auto;\r\n	background: url(uploads/NCleanBlue/bg__content.png) no-repeat right top;\r\n}\r\n.main-main {\r\n	width: auto;\r\n	border-right: 1px solid #E2E2E2;\r\n	border-left: 1px solid #E2E2E2;\r\n	background: #F0F0F0;\r\n	padding: 20px;\r\n	padding-top: 0px;\r\n}\r\n.main-bottom {\r\n	width: auto;\r\n	height: 41px;\r\n	background: url(uploads/NCleanBlue/bg__content.png) no-repeat right bottom;\r\n}\r\n.right49, .left49 {\r\n	font-size: 0.85em;\r\n	margin: 7px 5px 5px 10px;\r\n	font-weight: bold;\r\n}\r\n.left49 span {\r\n	display: block;\r\n	padding-top: 1px;\r\n}\r\n.left49 a {\r\n	font-weight: normal;\r\n}\r\n.right49 {\r\n	height: 28px;\r\n	width: 50px;\r\n	padding-right: 10px;\r\n	background: url(uploads/NCleanBlue/bull.png) no-repeat right top;\r\n}\r\n.right49 a, .right49 a:visited {\r\n	padding: 7px 4px;\r\n	display: block;\r\n	color: #000;\r\n	height: 15px;\r\n	background: url(uploads/NCleanBlue/bull.png) no-repeat  left top;\r\n}\r\n#main h2,\r\n#main h3,\r\n#main h4,\r\n#main h5,\r\n#main h6 {\r\n	font-size: 1.4em;\r\n	color: #301E12;\r\n}\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl,\r\n#footer ul,\r\n#footer ol {\r\n	line-height: 1em;\r\n	margin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul,\r\n#footer ul {\r\n	list-style: circle;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li,\r\n#footer ul li,\r\n#footer ol li {\r\n	padding: 2px 2px 2px 5px;\r\n	margin-left: 20px;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl dt {\r\n	font-weight: bold;\r\n	margin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n	margin: 0 0 1em 1em;\r\n}\r\ndiv#main dl {\r\n	margin-bottom: 2em;\r\n	padding-bottom: 1em;\r\n	border-bottom: 1px solid #c0c0c0;\r\n}\r\n/* ------------ Footer ------------ */\r\n#footer-wrapper {\r\n	min-height: 235px;\r\n	height: auto!important;\r\n	height: 235px;\r\n	width: auto;\r\n	margin-top: 5px;\r\n	text-align: center;\r\n	margin-right: 00px;\r\n	margin-left: 0px;\r\n	background: #7CA3B5 url(uploads/NCleanBlue/bg__footer.png) repeat-x left top;\r\n}\r\n#footer {\r\n	color: #FFF;\r\n	font-size: 0.8em;\r\n	min-height: 235px;\r\n	height: auto!important;\r\n	height: 235px;\r\n	background: #7CA3B5 url(uploads/NCleanBlue/bg__footer.png) repeat-x left top;\r\n}\r\n#footer .block {\r\n	width: 300px;\r\n	margin: 20px 10px 10px;\r\n}\r\n#footer .cms {\r\n	text-align: right;\r\n}\r\n/* ------------ Footer Links ------------ */\r\n#footer ul {\r\n	width: auto;\r\n	text-align: left;\r\n	margin-left: 50px;\r\n}\r\n#footer ul ul {\r\n	margin-left: 0px;\r\n}\r\n#footer ul li a {\r\n	color: #FFF;\r\n	display: block;\r\n	font-weight: normal;\r\n	margin-bottom: 0.5em;\r\n	text-decoration: none;\r\n}\r\n#footer a {\r\n	color: #DCEDF1;\r\n	text-decoration: underline;\r\n	font-weight: bold;\r\n}\r\n/* ------------ END LAYOUT ---------------*/\r\n/* ------------  Menu  ROOT  ------------ */\r\n.page-menu {\r\n	width: auto;\r\n	height: 35px;\r\n	margin: 3px 0 0 20px;\r\n}\r\n.menuwrapper {}\r\n\r\nul#primary-nav li hr.menu_separator{\r\n        position: relative;\r\n        visibility: hidden;\r\n        display:block;\r\n        width:5px;\r\n       	height: 32px;\r\n       	margin: 0px 5px 0px;\r\n}\r\n.page-menu ul#primary-nav {\r\n	height: 1%;\r\n	float: left;\r\n	list-style: none;\r\n	padding: 0;\r\n	margin: 0;\r\n}\r\n.page-menu ul#primary-nav li {\r\n	float: left;\r\n}\r\n.page-menu ul#primary-nav li a,\r\n.page-menu ul#primary-nav li a span {\r\n	display: block;\r\n	padding: 0 10px;\r\n	background-repeat: no-repeat;\r\n	background-image: url(uploads/NCleanBlue/tabs.gif);\r\n}\r\n.page-menu ul#primary-nav li a {\r\n	padding-left: 0;\r\n	color: #000;\r\n	font-weight: bold;\r\n	line-height: 2.15em;\r\n	text-decoration: none;\r\n	margin-left: 1px;\r\n	font-size: 0.85em;\r\n}\r\n.page-menu ul#primary-nav li a:hover,\r\n.page-menu ul#primary-nav li a:active {\r\n	color: #000;\r\n}\r\n.page-menu ul#primary-nav li a.menuactive,\r\n.page-menu ul#primary-nav li a:hover span {\r\n	color: #000;\r\n}\r\n.page-menu ul#primary-nav li a span {\r\n	padding-top: 6px;\r\n	padding-right: 0;\r\n	padding-bottom: 5px;\r\n}\r\n.page-menu ul#primary-nav li a.menuparenth,\r\n.page-menu ul#primary-nav li a.menuactive,\r\n.page-menu ul#primary-nav li a:hover,\r\n.page-menu ul#primary-nav li a:focus,\r\n.page-menu ul#primary-nav li a:active {\r\n	background-position: 100% -120px;\r\n}\r\n.page-menu ul#primary-nav li a {\r\n	background-position: 100% -80px;\r\n}\r\n.page-menu ul#primary-nav li a.menuactive span,\r\n.page-menu ul#primary-nav li a:hover span,\r\n.page-menu ul#primary-nav li a:focus span,\r\n.page-menu ul#primary-nav li a:active span {\r\n	background-position: 0 -40px;\r\n}\r\n.page-menu ul#primary-nav li a span {\r\n	background-position: 0 0;\r\n}\r\n.page-menu ul#primary-nav .sectionheader,\r\n.page-menu ul#primary-nav li a:link.menuactive,\r\n.page-menu ul#primary-nav li a:visited.menuactive {\r\n/* @ Opera, use pseudo classes otherwise it confuses cursor... */\r\n	cursor: text;\r\n}\r\n.page-menu ul#primary-nav li span,\r\n.page-menu ul#primary-nav li a,\r\n.page-menu ul#primary-nav li a:hover,\r\n.page-menu ul#primary-nav li a:focus,\r\n.page-menu ul#primary-nav li a:active {\r\n/* @ Opera, we need to be explicit again here now... */\r\n	cursor: pointer;\r\n}\r\n/* Additional IE specific bug fixes... */\r\n* html .page-menu ul#primary-nav {\r\n	display: inline-block;\r\n}\r\n*:first-child+html .page-menu ul#primary-nav {\r\n	display: inline-block;\r\n}\r\n/* --------------------  menu dropdow  -------------------------\r\n/* Unless you know what you do, do not touch this */\r\n/* Reset all ROOT menu styles. */\r\nul#primary-nav ul.unli li li a span,\r\nul#primary-nav ul.unli li a span,\r\nul#primary-nav .menuparent .unli .menuparent .unli li a span {\r\n	font-weight: normal;\r\n	background-image: none;\r\n	display: block;\r\n	padding-top: 0px;\r\n	padding-left: 0px;\r\n	padding-right: 0px;\r\n	padding-bottom: 0px;\r\n}\r\n#primary-nav {\r\n	margin: 0px;\r\n	padding: 0px;\r\n}\r\n#primary-nav ul {\r\n	list-style: none;\r\n	margin: -6px 0px 0px;\r\n	padding: 0px;\r\n/* Set the width of the menu elements at second level. Leaving first level flexible. */\r\n	width: 209px;\r\n}\r\n#primary-nav ul {\r\n	position: absolute;\r\n	z-index: 1001;\r\n	top: auto;\r\n	display: none;\r\n	padding-top: 9px;\r\n	background: url(uploads/NCleanBlue/ultop.png) no-repeat left top;\r\n}\r\n* html #primary-nav ul.unli {\r\n	padding-top: 12px;\r\n	background: url(uploads/NCleanBlue/ultop.gif) no-repeat left top;\r\n}\r\n#primary-nav ul.unli ul {\r\n	margin-left: -7px;\r\n	left: 100%;\r\n	top: 3px;\r\n}\r\n* html #primary-nav ul.unli ul {\r\n	margin-left: -0px;\r\n}\r\n#primary-nav li {\r\n	margin: 0px;\r\n	float: left;\r\n}\r\n#primary-nav li li {\r\n	margin-left: 7px;\r\n	margin-top: -1px;\r\n	float: none;\r\n	position: relative;\r\n}\r\n/* Styling the basic appearance of the menu elements */\r\nul#primary-nav ul hr.menu_separator{\r\n        position: relative;\r\n        visibility: visible;\r\n        display:block;\r\n        width:130px;\r\n       	height: 1px;\r\n       	margin: 2px 30px 2px;\r\n	padding: 0em;\r\n	border-bottom: 1px solid #ccc;\r\n	border-top-width: 0px;\r\n	border-right-width: 0px;\r\n	border-left-width: 0px;\r\n	border-top-style: none;\r\n	border-right-style: none;\r\n	border-left-style: none;\r\n}\r\n#primary-nav .separator,\r\n#primary-nav .separatorh {\r\n	height: 9px;\r\n	width: 209px;\r\n	margin: 0px 0px -8px;\r\n	background: url(uploads/NCleanBlue/ulbtm.png) no-repeat left bottom;\r\n}\r\n* html #primary-nav .separator {\r\n       z-index:-1;\r\n	background: url(uploads/NCleanBlue/ulbtm.gif) no-repeat left bottom;\r\n}\r\n*:first-child+html #primary-nav .separator {\r\n       z-index:-1;\r\n}\r\n#primary-nav ul.unli li a {\r\n	padding: 0px 10px;\r\n	width: 165px;\r\n	margin: 5px;\r\n	background-image: none;\r\n}\r\n* html #primary-nav ul.unli li a {\r\n	padding: 0px 10px 0px 5px;\r\n	width: 165px;\r\n	margin: 5px 0px;\r\n}\r\n#primary-nav li li a:hover {\r\n	background-color: #DBE7F2;\r\n}\r\n/* Styling the basic appearance of the active page elements (shows what page in the menu is being displayed) */\r\n#primary-nav li.menuactive li a {\r\n	text-decoration: none;\r\n	background: none;\r\n}\r\n#primary-nav ul.unli li.menuparenth,\r\n#primary-nav ul.unli a:hover,\r\n#primary-nav ul.unli a.menuactive {\r\n	background-color: #DBE7F2;\r\n}\r\n/* Styling the basic apperance of the menuparents - here styled the same on hover (fixes IE bug) */\r\n#primary-nav ul.unli li .menuparent,\r\n#primary-nav ul.unli li .menuparent:hover,\r\n#primary-nav ul.unli li .menuparent,\r\n#primary-nav .menuactive.menuparent .unli .menuactive.menuparent .menuactive.menuparent {\r\n	background-image: url(uploads/NCleanBlue/arrow.gif);\r\n	background-position: center right;\r\n	background-repeat: no-repeat;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited */\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul,\r\n#primary-nav li.menuparenth ul ul ul {\r\n	display: none;\r\n}\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul,\r\n#primary-nav ul ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE Hacks */\r\n#primary-nav li li {\r\n	float: left;\r\n	clear: both;\r\n}\r\n#primary-nav li li a {\r\n	height: 1%;\r\n}\r\n/*************** End Menu *****************/\r\n/* ------------ News Module ------------ */\r\n#news {\r\n	padding: 10px;\r\n}\r\n.NewsSummary {\r\n}\r\n.NewsSummaryPostdate,\r\n.NewsSummaryCategory,\r\n.NewsSummaryAuthor {\r\n	font-style: italic;\r\n	font-size: 0.8em;\r\n}\r\n.NewsSummaryLink {\r\n	margin: 2px 0;\r\n}\r\n.NewsSummaryContent {\r\n	margin: 10px 0;\r\n}\r\n.NewsSummaryMorelink {\r\n	margin: 5px 0 15px;\r\n}\r\n/* ------------ End News Module ------------ */','screen','2009-05-06 14:30:25','2010-04-02 15:36:05');
/*!40000 ALTER TABLE `cms_css` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_css_assoc`
--

DROP TABLE IF EXISTS `cms_css_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_css_assoc` (
  `assoc_to_id` int(11) DEFAULT NULL,
  `assoc_css_id` int(11) DEFAULT NULL,
  `assoc_type` varchar(80) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `assoc_order` int(11) DEFAULT NULL,
  KEY `index_css_assoc_by_assoc_to_id` (`assoc_to_id`),
  KEY `index_css_assoc_by_assoc_css_id` (`assoc_css_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_css_assoc`
--

LOCK TABLES `cms_css_assoc` WRITE;
/*!40000 ALTER TABLE `cms_css_assoc` DISABLE KEYS */;
INSERT INTO `cms_css_assoc` (`assoc_to_id`, `assoc_css_id`, `assoc_type`, `create_date`, `modified_date`, `assoc_order`) VALUES (22,48,'template','2009-05-06 14:31:08','2009-05-06 14:31:08',1),(22,47,'template','2009-05-06 14:31:14','2009-05-06 14:31:14',2),(22,49,'template','2009-05-06 14:31:20','2009-05-06 14:31:20',3);
/*!40000 ALTER TABLE `cms_css_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_css_seq`
--

DROP TABLE IF EXISTS `cms_css_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_css_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_css_seq`
--

LOCK TABLES `cms_css_seq` WRITE;
/*!40000 ALTER TABLE `cms_css_seq` DISABLE KEYS */;
INSERT INTO `cms_css_seq` (`id`) VALUES (49);
/*!40000 ALTER TABLE `cms_css_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_event_handler_seq`
--

DROP TABLE IF EXISTS `cms_event_handler_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_event_handler_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_event_handler_seq`
--

LOCK TABLES `cms_event_handler_seq` WRITE;
/*!40000 ALTER TABLE `cms_event_handler_seq` DISABLE KEYS */;
INSERT INTO `cms_event_handler_seq` (`id`) VALUES (10);
/*!40000 ALTER TABLE `cms_event_handler_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_event_handlers`
--

DROP TABLE IF EXISTS `cms_event_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_event_handlers` (
  `event_id` int(11) DEFAULT NULL,
  `tag_name` varchar(255) DEFAULT NULL,
  `module_name` varchar(160) DEFAULT NULL,
  `removable` int(11) DEFAULT NULL,
  `handler_order` int(11) DEFAULT NULL,
  `handler_id` int(11) NOT NULL,
  PRIMARY KEY (`handler_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_event_handlers`
--

LOCK TABLES `cms_event_handlers` WRITE;
/*!40000 ALTER TABLE `cms_event_handlers` DISABLE KEYS */;
INSERT INTO `cms_event_handlers` (`event_id`, `tag_name`, `module_name`, `removable`, `handler_order`, `handler_id`) VALUES (38,NULL,'Search',0,1,1),(40,NULL,'Search',0,1,2),(22,NULL,'Search',0,1,3),(24,NULL,'Search',0,1,4),(26,NULL,'Search',0,1,5),(30,NULL,'Search',0,1,6),(32,NULL,'Search',0,1,7),(34,NULL,'Search',0,1,8),(48,NULL,'Search',0,1,9),(53,NULL,'TinyMCE',0,1,10);
/*!40000 ALTER TABLE `cms_event_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_events`
--

DROP TABLE IF EXISTS `cms_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_events` (
  `originator` varchar(200) NOT NULL,
  `event_name` varchar(200) NOT NULL,
  `event_id` int(11) NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `originator` (`originator`),
  KEY `event_name` (`event_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_events`
--

LOCK TABLES `cms_events` WRITE;
/*!40000 ALTER TABLE `cms_events` DISABLE KEYS */;
INSERT INTO `cms_events` (`originator`, `event_name`, `event_id`) VALUES ('Core','LoginPost',1),('Core','LogoutPost',2),('Core','AddUserPre',3),('Core','AddUserPost',4),('Core','EditUserPre',5),('Core','EditUserPost',6),('Core','DeleteUserPre',7),('Core','DeleteUserPost',8),('Core','AddGroupPre',9),('Core','AddGroupPost',10),('Core','EditGroupPre',11),('Core','EditGroupPost',12),('Core','DeleteGroupPre',13),('Core','DeleteGroupPost',14),('Core','AddStylesheetPre',15),('Core','AddStylesheetPost',16),('Core','EditStylesheetPre',17),('Core','EditStylesheetPost',18),('Core','DeleteStylesheetPre',19),('Core','DeleteStylesheetPost',20),('Core','AddTemplatePre',21),('Core','AddTemplatePost',22),('Core','EditTemplatePre',23),('Core','EditTemplatePost',24),('Core','DeleteTemplatePre',25),('Core','DeleteTemplatePost',26),('Core','TemplatePreCompile',27),('Core','TemplatePostCompile',28),('Core','AddGlobalContentPre',29),('Core','AddGlobalContentPost',30),('Core','EditGlobalContentPre',31),('Core','EditGlobalContentPost',32),('Core','DeleteGlobalContentPre',33),('Core','DeleteGlobalContentPost',34),('Core','GlobalContentPreCompile',35),('Core','GlobalContentPostCompile',36),('Core','ContentEditPre',37),('Core','ContentEditPost',38),('Core','ContentDeletePre',39),('Core','ContentDeletePost',40),('Core','AddUserDefinedTagPre',41),('Core','AddUserDefinedTagPost',42),('Core','EditUserDefinedTagPre',43),('Core','EditUserDefinedTagPost',44),('Core','DeleteUserDefinedTagPre',45),('Core','DeleteUserDefinedTagPost',46),('Core','ModuleInstalled',47),('Core','ModuleUninstalled',48),('Core','ModuleUpgraded',49),('Core','ContentStylesheet',50),('Core','ContentPreCompile',51),('Core','ContentPostCompile',52),('Core','ContentPostRender',53),('Core','SmartyPreCompile',54),('Core','SmartyPostCompile',55),('Core','ChangeGroupAssignPre',56),('Core','ChangeGroupAssignPost',57),('News','NewsArticleAdded',58),('News','NewsArticleEdited',59),('News','NewsArticleDeleted',60),('News','NewsCategoryAdded',61),('News','NewsCategoryEdited',62),('News','NewsCategoryDeleted',63),('Search','SearchInitiated',64),('Search','SearchCompleted',65),('Search','SearchItemAdded',66),('Search','SearchItemDeleted',67),('Search','SearchAllItemsDeleted',68);
/*!40000 ALTER TABLE `cms_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_events_seq`
--

DROP TABLE IF EXISTS `cms_events_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_events_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_events_seq`
--

LOCK TABLES `cms_events_seq` WRITE;
/*!40000 ALTER TABLE `cms_events_seq` DISABLE KEYS */;
INSERT INTO `cms_events_seq` (`id`) VALUES (68);
/*!40000 ALTER TABLE `cms_events_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_group_perms`
--

DROP TABLE IF EXISTS `cms_group_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_group_perms` (
  `group_perm_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`group_perm_id`),
  KEY `index_group_perms_by_group_id_permission_id` (`group_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_group_perms`
--

LOCK TABLES `cms_group_perms` WRITE;
/*!40000 ALTER TABLE `cms_group_perms` DISABLE KEYS */;
INSERT INTO `cms_group_perms` (`group_perm_id`, `group_id`, `permission_id`, `create_date`, `modified_date`) VALUES (176,3,30,'2009-05-12 08:05:26','2009-05-12 08:05:26'),(177,3,25,'2009-05-12 08:05:26','2009-05-12 08:05:26'),(178,3,4,'2009-05-12 08:05:26','2009-05-12 08:05:26'),(179,3,31,'2009-05-12 08:05:26','2009-05-12 08:05:26'),(180,3,26,'2009-05-12 08:05:26','2009-05-12 08:05:26'),(181,3,22,'2009-05-12 08:05:26','2009-05-12 08:05:26'),(182,3,11,'2009-05-12 08:05:26','2009-05-12 08:05:26'),(183,3,32,'2009-05-12 08:05:26','2009-05-12 08:05:26'),(184,3,27,'2009-05-12 08:05:26','2009-05-12 08:05:26'),(185,3,24,'2009-05-12 08:05:26','2009-05-12 08:05:26'),(186,3,16,'2009-05-12 08:05:26','2009-05-12 08:05:26'),(187,2,44,'2009-05-12 08:05:26','2009-05-12 08:05:26'),(188,1,48,'2010-04-02 14:42:18','2010-04-02 14:42:18'),(189,2,48,'2010-04-02 14:42:18','2010-04-02 14:42:18');
/*!40000 ALTER TABLE `cms_group_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_group_perms_seq`
--

DROP TABLE IF EXISTS `cms_group_perms_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_group_perms_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_group_perms_seq`
--

LOCK TABLES `cms_group_perms_seq` WRITE;
/*!40000 ALTER TABLE `cms_group_perms_seq` DISABLE KEYS */;
INSERT INTO `cms_group_perms_seq` (`id`) VALUES (189);
/*!40000 ALTER TABLE `cms_group_perms_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_groups`
--

DROP TABLE IF EXISTS `cms_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_groups` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(25) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_groups`
--

LOCK TABLES `cms_groups` WRITE;
/*!40000 ALTER TABLE `cms_groups` DISABLE KEYS */;
INSERT INTO `cms_groups` (`group_id`, `group_name`, `active`, `create_date`, `modified_date`) VALUES (1,'Admin',1,'2006-07-25 21:22:32','2006-07-25 21:22:32'),(2,'Editor',1,'2006-07-25 21:22:32','2006-07-25 21:22:32'),(3,'Designer',1,'2006-07-25 21:22:32','2006-07-25 21:22:32');
/*!40000 ALTER TABLE `cms_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_groups_seq`
--

DROP TABLE IF EXISTS `cms_groups_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_groups_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_groups_seq`
--

LOCK TABLES `cms_groups_seq` WRITE;
/*!40000 ALTER TABLE `cms_groups_seq` DISABLE KEYS */;
INSERT INTO `cms_groups_seq` (`id`) VALUES (3);
/*!40000 ALTER TABLE `cms_groups_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_htmlblobs`
--

DROP TABLE IF EXISTS `cms_htmlblobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_htmlblobs` (
  `htmlblob_id` int(11) NOT NULL,
  `htmlblob_name` varchar(255) DEFAULT NULL,
  `html` text,
  `owner` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`htmlblob_id`),
  KEY `index_htmlblobs_by_htmlblob_name` (`htmlblob_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_htmlblobs`
--

LOCK TABLES `cms_htmlblobs` WRITE;
/*!40000 ALTER TABLE `cms_htmlblobs` DISABLE KEYS */;
INSERT INTO `cms_htmlblobs` (`htmlblob_id`, `htmlblob_name`, `html`, `owner`, `create_date`, `modified_date`) VALUES (1,'footer','<p>&copy; Copyright {custom_copyright} - CMS Made Simple<br />\r\nThis site is powered by <a href=\"http://www.cmsmadesimple.org\">CMS Made Simple</a> version {cms_version}</p>',1,'2006-07-25 21:22:32','2006-07-25 21:22:32'),(2,'JS','<script type=\"text/javascript\">// <![CDATA[\r\n            $(function() {\r\n                $(\'.clearfix a\').stop().animate({\'marginLeft\':\'-85px\'},1000);\r\n\r\n                $(\'.clearfix\').hover(\r\n                    function () {\r\n                        $(\'a\',$(this)).stop().animate({\'marginLeft\':\'-2px\'},200);\r\n                    },\r\n                    function () {\r\n                        $(\'a\',$(this)).stop().animate({\'marginLeft\':\'-85px\'},200);\r\n                    }\r\n                );\r\n            });\r\n// ]]></script>',1,'2010-04-02 18:10:33','2010-04-02 18:10:47');
/*!40000 ALTER TABLE `cms_htmlblobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_htmlblobs_seq`
--

DROP TABLE IF EXISTS `cms_htmlblobs_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_htmlblobs_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_htmlblobs_seq`
--

LOCK TABLES `cms_htmlblobs_seq` WRITE;
/*!40000 ALTER TABLE `cms_htmlblobs_seq` DISABLE KEYS */;
INSERT INTO `cms_htmlblobs_seq` (`id`) VALUES (2);
/*!40000 ALTER TABLE `cms_htmlblobs_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_module_deps`
--

DROP TABLE IF EXISTS `cms_module_deps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_module_deps` (
  `parent_module` varchar(25) DEFAULT NULL,
  `child_module` varchar(25) DEFAULT NULL,
  `minimum_version` varchar(25) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_module_deps`
--

LOCK TABLES `cms_module_deps` WRITE;
/*!40000 ALTER TABLE `cms_module_deps` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_module_deps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_module_news`
--

DROP TABLE IF EXISTS `cms_module_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_module_news` (
  `news_id` int(11) NOT NULL,
  `news_category_id` int(11) DEFAULT NULL,
  `news_title` varchar(255) DEFAULT NULL,
  `news_data` text,
  `news_date` datetime DEFAULT NULL,
  `summary` text,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `news_extra` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_module_news`
--

LOCK TABLES `cms_module_news` WRITE;
/*!40000 ALTER TABLE `cms_module_news` DISABLE KEYS */;
INSERT INTO `cms_module_news` (`news_id`, `news_category_id`, `news_title`, `news_data`, `news_date`, `summary`, `start_time`, `end_time`, `status`, `icon`, `create_date`, `modified_date`, `author_id`, `news_extra`) VALUES (1,1,'News Module Installed','The news module was installed.  Exciting. This news article is not using the Summary field and therefore there is no link to read more. But you can click on the news heading to read only this article.','2010-04-02 14:42:18',NULL,NULL,NULL,'published',NULL,'2010-04-02 14:42:18','2010-04-02 14:42:18',1,NULL),(2,1,'News #1','News #1 TextNews #1 TextNews #1 TextNews #1 TextNews #1 TextNews #1 TextNews #1 TextNews #1 TextNews #1 Text','2010-04-02 15:46:31','News #1 Text','2010-04-02 15:46:31',NULL,'published',NULL,'2010-04-02 15:46:59','2010-04-02 15:46:59',1,'');
/*!40000 ALTER TABLE `cms_module_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_module_news_categories`
--

DROP TABLE IF EXISTS `cms_module_news_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_module_news_categories` (
  `news_category_id` int(11) NOT NULL,
  `news_category_name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `hierarchy` varchar(255) DEFAULT NULL,
  `long_name` text,
  `create_date` time DEFAULT NULL,
  `modified_date` time DEFAULT NULL,
  PRIMARY KEY (`news_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_module_news_categories`
--

LOCK TABLES `cms_module_news_categories` WRITE;
/*!40000 ALTER TABLE `cms_module_news_categories` DISABLE KEYS */;
INSERT INTO `cms_module_news_categories` (`news_category_id`, `news_category_name`, `parent_id`, `hierarchy`, `long_name`, `create_date`, `modified_date`) VALUES (1,'General',-1,'00001','General','14:42:18','14:42:18');
/*!40000 ALTER TABLE `cms_module_news_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_module_news_categories_seq`
--

DROP TABLE IF EXISTS `cms_module_news_categories_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_module_news_categories_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_module_news_categories_seq`
--

LOCK TABLES `cms_module_news_categories_seq` WRITE;
/*!40000 ALTER TABLE `cms_module_news_categories_seq` DISABLE KEYS */;
INSERT INTO `cms_module_news_categories_seq` (`id`) VALUES (1);
/*!40000 ALTER TABLE `cms_module_news_categories_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_module_news_fielddefs`
--

DROP TABLE IF EXISTS `cms_module_news_fielddefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_module_news_fielddefs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `max_length` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `public` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_module_news_fielddefs`
--

LOCK TABLES `cms_module_news_fielddefs` WRITE;
/*!40000 ALTER TABLE `cms_module_news_fielddefs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_module_news_fielddefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_module_news_fieldvals`
--

DROP TABLE IF EXISTS `cms_module_news_fieldvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_module_news_fieldvals` (
  `news_id` int(11) NOT NULL,
  `fielddef_id` int(11) NOT NULL,
  `value` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`news_id`,`fielddef_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_module_news_fieldvals`
--

LOCK TABLES `cms_module_news_fieldvals` WRITE;
/*!40000 ALTER TABLE `cms_module_news_fieldvals` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_module_news_fieldvals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_module_news_seq`
--

DROP TABLE IF EXISTS `cms_module_news_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_module_news_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_module_news_seq`
--

LOCK TABLES `cms_module_news_seq` WRITE;
/*!40000 ALTER TABLE `cms_module_news_seq` DISABLE KEYS */;
INSERT INTO `cms_module_news_seq` (`id`) VALUES (2);
/*!40000 ALTER TABLE `cms_module_news_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_module_search_index`
--

DROP TABLE IF EXISTS `cms_module_search_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_module_search_index` (
  `item_id` int(11) DEFAULT NULL,
  `word` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  KEY `count` (`count`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_module_search_index`
--

LOCK TABLES `cms_module_search_index` WRITE;
/*!40000 ALTER TABLE `cms_module_search_index` DISABLE KEYS */;
INSERT INTO `cms_module_search_index` (`item_id`, `word`, `count`) VALUES (45,'navigation',1),(45,'error',1),(45,'throw',1),(45,'process',1),(45,'something',1),(45,'it\'s',1),(45,'think',1),(45,'will',2),(45,'smarty',1),(45,'}',2),(3,'name',1),(3,'page',1),(3,'*',2),(3,'}',2),(3,'smarty',1),(3,'will',2),(3,'think',1),(3,'it\'s',1),(3,'something',1),(3,'process',1),(3,'throw',1),(3,'error',1),(3,'navigation',1),(3,'news',1),(5,'name',1),(5,'page',1),(5,'*',2),(5,'}',2),(5,'smarty',1),(5,'will',2),(5,'think',1),(5,'it\'s',1),(5,'something',1),(5,'process',1),(5,'throw',1),(5,'error',1),(5,'navigation',1),(5,'news',1),(157,'gif',1),(157,'logo1',1),(157,'images',1),(157,'uploads',1),(157,'restrictions',1),(157,'additional',1),(157,'include',1),(157,'may',1),(157,'modules',1),(157,'add',1),(157,'party',1),(157,'third',1),(157,'like',1),(157,'would',1),(157,'us',1),(157,'back',1),(157,'link',1),(157,'leave',1),(157,'don\'t',1),(157,'released',1),(157,'license',3),(157,'service',1),(157,'always',1),(157,'community',1),(157,'help',1),(149,'galeria',4),(147,'#',1),(146,'#',1),(145,'#',1),(144,'#',1),(146,'15',1),(146,'1',2),(146,'info',4),(146,'camp',4),(145,'15',1),(145,'1',2),(145,'facilidades',4),(144,'15',1),(144,'1',2),(144,'staff',4),(133,'#',1),(133,'15',1),(133,'extrapage',3),(133,'thumb_logo1',1),(133,'gif',2),(133,'logo1',1),(133,'nuestra',4),(133,'filosofia',4),(157,'need',1),(150,'#',1),(150,'15',1),(150,'1',2),(150,'800',3),(150,'faq',5),(150,'eq',3),(150,'scrollto',3),(150,'li',3),(143,'#',1),(147,'15',1),(147,'1',2),(147,'actividades',4),(143,'15',1),(143,'1',2),(143,'padres',4),(158,'200',2),(158,'hover',1),(157,'case',1),(157,'use',1),(157,'click',1),(55,'text',2),(55,'textnews',8),(55,'#1',12),(55,'news',4),(149,'15',1),(149,'1',2),(149,'fotos',4),(149,'de',4),(150,'$',3),(158,'1000',1),(158,'animate',3),(158,'stop',3),(158,'clearfix',2),(158,'{',3),(158,'function',3),(157,'admin',1),(157,'cmsmspath',1),(157,'com',1),(157,'yourwebsite',1),(157,'http',1),(157,'process',1),(157,'mentioned',1),(157,'password',1),(157,'username',1),(157,'administrator',1),(157,'login',2),(157,'console',1),(157,'administration',1),(157,'get',1),(157,'information',1),(58,'news',1),(58,'navigation',1),(157,'absorbing',1),(157,'power',1),(157,'much',2),(157,'learn',1),(157,'can',1),(157,'demonstrated',1),(157,'described',1),(157,'features',1),(157,'many',1),(157,'stylesheets',1),(157,'templates',2),(157,'example',1),(157,'working',1),(157,'begin',1),(157,'basics',1),(157,'devoted',1),(157,'showing',1),(149,'#',1),(158,'$',5),(158,'}',4),(158,'*',1),(158,'page',1),(158,'name',1),(66,'name',1),(66,'page',1),(66,'*',1),(66,'}',1),(58,'&nbsp',6),(58,'error',1),(58,'throw',1),(58,'process',1),(58,'something',1),(58,'it\'s',1),(58,'think',1),(58,'will',2),(58,'smarty',1),(58,'}',2),(58,'*',2),(58,'page',1),(58,'name',1),(58,'|',1),(157,'read',3),(157,'thoroughly',1),(157,'should',1),(157,'available',1),(157,'pages',3),(157,'see',1),(157,'numerous',1),(157,'will',1),(157,'content',1),(157,'default',3),(157,'install',1),(157,'chose',1),(157,'site',4),(157,'building',1),(157,'start',1),(157,'ready',1),(157,'almost',1),(157,'simple',6),(157,'made',6),(157,'cms',6),(157,'functional',1),(157,'fully',1),(157,'now',1),(157,'worked',1),(157,'installation',4),(157,'congratulations',1),(157,'actividades',1),(157,'info',1),(157,'camp',1),(157,'faciliades',1),(157,'staff',1),(157,'padres',1),(157,'filosofia',1),(157,'nuestra',1),(157,'faq',1),(157,'galeria',1),(157,'﻿',1),(157,'aliquet',1),(157,'pretium',1),(157,'vitae',1),(157,'magna',1),(157,'vestibulum',1),(157,'arcu',1),(157,'hendrerit',1),(157,'dignissim',1),(157,'nec',1),(157,'mauris',1),(157,'tellus',1),(157,'sed',1),(157,'suscipit',1),(157,'tempus',1),(157,'eget',1),(157,'mi',1),(157,'sagittis',1),(157,'vehicula',1),(157,'cras',1),(157,'diam',1),(157,'accumsan',1),(157,'et',1),(157,'ante',2),(157,'est',1),(157,'phasellus',1),(157,'elit',1),(157,'adipiscing',2),(157,'consectetur',1),(157,'amet',2),(157,'sit',2),(157,'dolor',1),(157,'ipsum',1),(157,'lorem',2),(157,'0',1),(157,'home',4),(157,'1',3),(35,'name',1),(35,'page',1),(35,'*',2),(35,'}',2),(35,'smarty',1),(35,'will',2),(35,'think',1),(35,'it\'s',1),(35,'something',1),(35,'process',1),(35,'throw',1),(35,'error',1),(35,'navigation',1),(35,'news',1),(37,'name',1),(37,'page',1),(37,'*',2),(37,'}',2),(37,'smarty',1),(37,'will',2),(37,'think',1),(37,'it\'s',1),(37,'something',1),(37,'process',1),(37,'throw',1),(37,'error',1),(37,'navigation',1),(37,'news',1),(39,'name',1),(39,'page',1),(39,'*',4),(39,'}',3),(39,'smarty',1),(39,'will',2),(39,'think',1),(39,'it\'s',1),(39,'something',1),(39,'process',1),(39,'throw',1),(39,'error',1),(39,'{',1),(39,'horizontal',1),(39,'ruler',1),(39,'hidden',1),(39,'visual',1),(39,'browsers',1),(39,'css',1),(39,'navigation',2),(39,'sub',1),(39,'news',1),(41,'&copy',1),(41,'copyright',1),(41,'cms',2),(41,'made',2),(41,'simple',2),(41,'site',1),(41,'powered',1),(41,'version',1),(42,'news',5),(42,'module',3),(42,'installed',3),(42,'exciting',1),(42,'article',2),(42,'using',1),(42,'summary',1),(42,'field',1),(42,'therefore',1),(42,'link',1),(42,'read',2),(42,'can',1),(42,'click',1),(42,'heading',1),(45,'*',2),(45,'page',1),(45,'name',1),(45,'news',1);
/*!40000 ALTER TABLE `cms_module_search_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_module_search_items`
--

DROP TABLE IF EXISTS `cms_module_search_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_module_search_items` (
  `id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `extra_attr` varchar(100) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_name` (`module_name`),
  KEY `content_id` (`content_id`),
  KEY `extra_attr` (`extra_attr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_module_search_items`
--

LOCK TABLES `cms_module_search_items` WRITE;
/*!40000 ALTER TABLE `cms_module_search_items` DISABLE KEYS */;
INSERT INTO `cms_module_search_items` (`id`, `module_name`, `content_id`, `extra_attr`, `expires`) VALUES (45,'Search',15,'template',NULL),(3,'Search',16,'template',NULL),(5,'Search',17,'template',NULL),(149,'Search',67,'content',NULL),(55,'News',2,'article',NULL),(146,'Search',65,'content',NULL),(147,'Search',66,'content',NULL),(158,'Search',24,'template',NULL),(150,'Search',60,'content',NULL),(84,'Search',2,'global_content',NULL),(133,'Search',61,'content',NULL),(143,'Search',62,'content',NULL),(144,'Search',63,'content',NULL),(145,'Search',64,'content',NULL),(66,'Search',19,'template',NULL),(58,'Search',22,'template',NULL),(157,'Search',15,'content',NULL),(35,'Search',21,'template',NULL),(37,'Search',20,'template',NULL),(39,'Search',18,'template',NULL),(41,'Search',1,'global_content',NULL),(42,'News',1,'article',NULL);
/*!40000 ALTER TABLE `cms_module_search_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_module_search_items_seq`
--

DROP TABLE IF EXISTS `cms_module_search_items_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_module_search_items_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_module_search_items_seq`
--

LOCK TABLES `cms_module_search_items_seq` WRITE;
/*!40000 ALTER TABLE `cms_module_search_items_seq` DISABLE KEYS */;
INSERT INTO `cms_module_search_items_seq` (`id`) VALUES (158);
/*!40000 ALTER TABLE `cms_module_search_items_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_module_search_words`
--

DROP TABLE IF EXISTS `cms_module_search_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_module_search_words` (
  `word` varchar(255) NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_module_search_words`
--

LOCK TABLES `cms_module_search_words` WRITE;
/*!40000 ALTER TABLE `cms_module_search_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_module_search_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_module_templates`
--

DROP TABLE IF EXISTS `cms_module_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_module_templates` (
  `module_name` varchar(160) DEFAULT NULL,
  `template_name` varchar(160) DEFAULT NULL,
  `content` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  KEY `index_module_templates_by_module_name_template_name` (`module_name`,`template_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_module_templates`
--

LOCK TABLES `cms_module_templates` WRITE;
/*!40000 ALTER TABLE `cms_module_templates` DISABLE KEYS */;
INSERT INTO `cms_module_templates` (`module_name`, `template_name`, `content`, `create_date`, `modified_date`) VALUES ('News','summarySample','<!-- Start News Display Template -->\n{if $pagecount > 1}\n  <p>\n{if $pagenumber > 1}\n{$firstpage}&nbsp;{$prevpage}&nbsp;\n{/if}\n{$pagetext}&nbsp;{$pagenumber}&nbsp;{$oftext}&nbsp;{$pagecount}\n{if $pagenumber < $pagecount}\n&nbsp;{$nextpage}&nbsp;{$lastpage}\n{/if}\n</p>\n{/if}\n{foreach from=$items item=entry}\n<div class=\"NewsSummary\">\n\n{if $entry->postdate}\n	<div class=\"NewsSummaryPostdate\">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n\n<div class=\"NewsSummaryLink\">\n<a href=\"{$entry->moreurl}\" title=\"{$entry->title|cms_escape:htmlall}\">{$entry->title|cms_escape}</a>\n</div>\n\n<div class=\"NewsSummaryCategory\">\n	{$category_label} {$entry->category}\n</div>\n\n{if $entry->author}\n	<div class=\"NewsSummaryAuthor\">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n{if $entry->summary}\n	<div class=\"NewsSummarySummary\">\n		{eval var=$entry->summary}\n	</div>\n\n	<div class=\"NewsSummaryMorelink\">\n		[{$entry->morelink}]\n	</div>\n\n{else if $entry->content}\n\n	<div class=\"NewsSummaryContent\">\n		{eval var=$entry->content}\n	</div>\n{/if}\n\n{if isset($entry->extra)}\n    <div class=\"NewsSummaryExtra\">\n        {eval var=$entry->extra}\n	{* {cms_module module=\'Uploads\' mode=\'simpleurl\' upload_id=$entry->extravalue} *}\n    </div>\n{/if}\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=\'field\'}\n     <div class=\"NewsSummaryField\">\n        {if $field->type == \'file\'}\n          <img src=\"{$entry->file_location}/{$field->value}\"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n\n</div>\n{/foreach}\n<!-- End News Display Template -->\n','2010-04-02 14:42:18','2010-04-02 14:42:18'),('News','detailSample','{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\n{if isset($entry->canonical)}\n  {assign var=\'canonical\' value=$entry->canonical}\n{/if}\n\n{if $entry->postdate}\n	<div id=\"NewsPostDetailDate\">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n<h3 id=\"NewsPostDetailTitle\">{$entry->title|cms_escape:htmlall}</h3>\n\n<hr id=\"NewsPostDetailHorizRule\" />\n\n{if $entry->summary}\n	<div id=\"NewsPostDetailSummary\">\n		<strong>\n			{eval var=$entry->summary}\n		</strong>\n	</div>\n{/if}\n\n{if $entry->category}\n	<div id=\"NewsPostDetailCategory\">\n		{$category_label} {$entry->category}\n	</div>\n{/if}\n{if $entry->author}\n	<div id=\"NewsPostDetailAuthor\">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n<div id=\"NewsPostDetailContent\">\n	{eval var=$entry->content}\n</div>\n\n{if $entry->extra}\n	<div id=\"NewsPostDetailExtra\">\n		{$extra_label} {$entry->extra}\n	</div>\n{/if}\n\n<div id=\"NewsPostDetailPrintLink\">\n	{$entry->printlink}\n</div>\n{if $return_url != \"\"}\n<div id=\"NewsPostDetailReturnLink\">{$return_url}</div>\n{/if}\n\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=\'field\'}\n     <div class=\"NewsDetailField\">\n        {if $field->type == \'file\'}\n	  {* this template assumes that every file uploaded is an image of some sort, because News doesn\'t distinguish *}\n          <img src=\"{$entry->file_location}/{$field->value}\"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n','2010-04-02 14:42:18','2010-04-02 14:42:18'),('News','formSample','{* original form template *}\n{if isset($error)}\n  <h3><font color=\"red\">{$error}</font></h3>\n{else}\n  {if isset($message)}\n    <h3>{$message}</h3>\n  {/if}\n{/if}\n{$startform}\n	<div class=\"pageoverflow\">\n		<p class=\"pagetext\">*{$titletext}:</p>\n		<p class=\"pageinput\">{$inputtitle}</p>\n	</div>\n	<div class=\"pageoverflow\">\n		<p class=\"pagetext\">{$categorytext}:</p>\n		<p class=\"pageinput\">{$inputcategory}</p>\n	</div>\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\n	<div class=\"pageoverflow\">\n		<p class=\"pagetext\">{$summarytext}:</p>\n		<p class=\"pageinput\">{$inputsummary}</p>\n	</div>\n{/if}\n	<div class=\"pageoverflow\">\n		<p class=\"pagetext\">*{$contenttext}:</p>\n		<p class=\"pageinput\">{$inputcontent}</p>\n	</div>\n	<div class=\"pageoverflow\">\n		<p class=\"pagetext\">{$extratext}:</p>\n		<p class=\"pageinput\">{$inputextra}</p>\n	</div>\n	<div class=\"pageoverflow\">\n		<p class=\"pagetext\">{$startdatetext}:</p>\n		<p class=\"pageinput\">{html_select_date prefix=$startdateprefix time=$startdate end_year=\"+15\"} {html_select_time prefix=$startdateprefix time=$startdate}</p>\n	</div>\n	<div class=\"pageoverflow\">\n		<p class=\"pagetext\">{$enddatetext}:</p>\n		<p class=\"pageinput\">{html_select_date prefix=$enddateprefix time=$enddate end_year=\"+15\"} {html_select_time prefix=$enddateprefix time=$enddate}</p>\n	</div>\n	{if isset($customfields)}\n	   {foreach from=$customfields item=\'onefield\'}\n	      <div class=\"pageoverflow\">\n		<p class=\"pagetext\">{$onefield->name}:</p>\n		<p class=\"pageinput\">{$onefield->field}</p>\n	      </div>\n	   {/foreach}\n	{/if}\n	<div class=\"pageoverflow\">\n		<p class=\"pagetext\">&nbsp;</p>\n		<p class=\"pageinput\">{$hidden}{$submit}{$cancel}</p>\n	</div>\n{$endform}\n','2010-04-02 14:42:18','2010-04-02 14:42:18'),('News','browsecatSample','{if $count > 0}\n<ul class=\"list1\">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string=\"<ul>\" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string=\"</li></ul>\" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li class=\"newscategory\">\n{if $node.count > 0}\n	<a href=\"{$node.url}\">{$node.news_category_name}</a> ({$node.count}){else}<span>{$node.news_category_name} (0)</span>{/if}\n{/foreach}\n{repeat string=\"</li></ul>\" times=$node.depth-1}</li>\n</ul>\n{/if}','2010-04-02 14:42:18','2010-04-02 14:42:18'),('News','email_template','A new news article has been posted to your website.  The details are as follows:\nTitle:      {$title}\nIP Address: {$ipaddress}\nSummary:    {$summary|strip_tags}\nPost Date:  {$postdate|date_format}\nStart Date: {$startdate|date_format}\nEnd Date:   {$enddate|date_format}\n','2010-04-02 14:42:18','2010-04-02 14:42:18'),('Printing','linktemplate','{if isset($imgsrc)}\n{capture assign=\'image\'}\n  <img src=\"{$imgsrc}\" title=\"{$linktext}\" alt=\"{$linktext}\" {if isset($imgclass) && $imgclass!=\'\'}class=\"{$imgclass}\"{/if} />\n{/capture}\n<a href=\"{$href}\" class=\"{$class}\" {$target} {if isset($more)}{$more}{/if} rel=\"nofollow\">{$image}</a>\n{else}\n<a href=\"{$href}\" class=\"{$class}\" {$target} {if isset($more)}{$more}{/if} rel=\"nofollow\">{$image}{$linktext}</a>\n{/if}\n','2010-04-02 14:42:18','2010-04-02 14:42:18'),('Printing','printtemplate','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n  <head>\n    <title>Printing {title}</title>\n    <meta name=\"robots\" content=\"noindex\"></meta>\n    <base href=\"{$rooturl}\" />\n    <meta name=\"Generator\" content=\"CMS Made Simple - Copyright (C) 2004-9 Ted Kulp. All rights reserved.\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset={$encoding}\" />\n\n    {stylesheet media=\'print\' templateid=$templateid}\n\n    {if $overridestylesheet!=\'\'}\n    <style type=\"text/css\">\n    {$overridestylesheet}\n    </style>\n    {/if}\n    \n  </head>\n  <body	style=\"background-color: white; color: black; background-image: none; text-align: left;\">	\n    {$content}\n        \n    {$printscript}\n  </body>\n</html>\n','2010-04-02 14:42:18','2010-04-02 14:42:18'),('Printing','pdftemplate','<h1>{$title}</h1>\n{$content}\n','2010-04-02 14:42:18','2010-04-02 14:42:18'),('Search','displaysearch','{$startform}\n\n    <label for=\"{$search_actionid}searchinput\">{$searchprompt}:&nbsp;</label><input type=\"text\" class=\"search-input\" id=\"{$search_actionid}searchinput\" name=\"{$search_actionid}searchinput\" size=\"20\" maxlength=\"50\" value=\"{$searchtext}\" {$hogan}/><input class=\"search-button\" name=\"submit\" value=\"{$submittext}\" type=\"submit\" />\n{if isset($hidden)}{$hidden}{/if}\n\n{$endform}','2010-04-02 14:42:19','2010-04-02 14:42:19'),('Search','displayresult','<h3>{$searchresultsfor} &quot;{$phrase}&quot;</h3>\n{if $itemcount > 0}\n<ul>\n  {foreach from=$results item=entry}\n  <li>{$entry->title} - <a href=\"{$entry->url}\">{$entry->urltxt}</a> ({$entry->weight}%)</li>\n  {* \n     You can also instantiate custom behaviour on a module by module basis by looking at\n     the $entry->module and $entry->modulerecord fields in $entry \n      ie: {if $entry->module == \'News\'}{News action=\'detail\' article_id=$entry->modulerecord detailpage=\'News\'} \n  *}\n  {/foreach}\n</ul>\n\n<p>{$timetaken}: {$timetook}</p>\n{else}\n  <p><strong>{$noresultsfound}</strong></p>\n{/if}','2010-04-02 14:42:19','2010-04-02 14:42:19'),('MenuManager','minimal_id','{* CSS classes used in this template:\r\n.currentpage - The active/current page\r\n.bullet_sectionheader - To style section header\r\nhr.separator - To style the ruler for the separator *} \r\n{if $count > 0}\r\n<ul class=\"clearfix\">\r\n{foreach from=$nodelist item=node}\r\n{if $node->depth > $node->prevdepth}\r\n{repeat string=\"<ul>\" times=$node->depth-$node->prevdepth}\r\n{elseif $node->depth < $node->prevdepth}\r\n{repeat string=\"</li></ul>\" times=$node->prevdepth-$node->depth}\r\n</li>\r\n{elseif $node->index > 0}</li>\r\n{/if}\r\n\r\n{if $node->current == true}\r\n<li><a id=\"{$node->alias}\" href=\"{$node->url}\" class=\"currentpage\"{if $node->target ne \"\"} target=\"{$node->target}\"{/if}> {$node->menutext} </a>\r\n\r\n{elseif $node->parent == true && $node->depth == 1 and $node->type != \'sectionheader\' and $node->type != \'separator\'}\r\n<li class=\"activeparent\"> <a href=\"{$node->url}\" class=\"activeparent\"{if $node->target ne \"\"} target=\"{$node->target}\"{/if}> {$node->menutext} </a>\r\n\r\n{elseif $node->type == \'sectionheader\'}\r\n<li class=\"sectionheader\">{$node->menutext}\r\n\r\n{elseif $node->type == \'separator\'}\r\n<li style=\"list-style-type: none;\"> <hr class=\"separator\" />\r\n\r\n{else}\r\n<li><a id=\"{$node->alias} \"href=\"{$node->url}\"{if $node->target ne \"\"} target=\"{$node->target}\"{/if}> {$node->menutext} </a>\r\n\r\n{/if}\r\n\r\n{/foreach}\r\n\r\n{repeat string=\"</li></ul>\" times=$node->depth-1}</li>\r\n</ul>','2010-04-02 19:54:05','2010-04-02 19:58:57'),('MenuManager','minimal_id2','{* CSS classes used in this template:\r\n.currentpage - The active/current page\r\n.bullet_sectionheader - To style section header\r\nhr.separator - To style the ruler for the separator *} \r\n{if $count > 0}\r\n<ul class=\"clearfix\">\r\n{foreach from=$nodelist item=node}\r\n{if $node->depth > $node->prevdepth}\r\n{repeat string=\"<ul>\" times=$node->depth-$node->prevdepth}\r\n{elseif $node->depth < $node->prevdepth}\r\n{repeat string=\"</li></ul>\" times=$node->prevdepth-$node->depth}\r\n</li>\r\n{elseif $node->index > 0}</li>\r\n{/if}\r\n\r\n{if $node->current == true}\r\n<li><a id=\"{$node->alias}\" href=\"{$node->url}\" class=\"currentpage\"{if $node->target ne \"\"} target=\"{$node->target}\"{/if}> {$node->menutext} </a>\r\n\r\n{elseif $node->parent == true && $node->depth == 1 and $node->type != \'sectionheader\' and $node->type != \'separator\'}\r\n<li class=\"activeparent\"> <a id=\"{$node->alias}\" href=\"{$node->url}\" class=\"activeparent\"{if $node->target ne \"\"} target=\"{$node->target}\"{/if}> {$node->menutext} </a>\r\n\r\n{elseif $node->type == \'sectionheader\'}\r\n<li class=\"sectionheader\">{$node->menutext}\r\n\r\n{elseif $node->type == \'separator\'}\r\n<li style=\"list-style-type: none;\"> <hr class=\"separator\" />\r\n\r\n{else}\r\n<li><a id=\"{$node->alias}\" href=\"{$node->url}\"{if $node->target ne \"\"} target=\"{$node->target}\"{/if}> {$node->menutext} </a>\r\n\r\n{/if}\r\n\r\n{/foreach}\r\n\r\n{repeat string=\"</li></ul>\" times=$node->depth-1}</li>\r\n</ul>\r\n{/if}\r\n','2010-04-02 20:00:36','2010-04-02 20:00:36');
/*!40000 ALTER TABLE `cms_module_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_modules`
--

DROP TABLE IF EXISTS `cms_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_modules` (
  `module_name` varchar(160) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `admin_only` tinyint(4) DEFAULT '0',
  `active` tinyint(4) DEFAULT NULL,
  KEY `index_modules_by_module_name` (`module_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_modules`
--

LOCK TABLES `cms_modules` WRITE;
/*!40000 ALTER TABLE `cms_modules` DISABLE KEYS */;
INSERT INTO `cms_modules` (`module_name`, `status`, `version`, `admin_only`, `active`) VALUES ('CMSMailer','installed','1.73.14',0,1),('FileManager','installed','1.0.2',0,1),('MenuManager','installed','1.6.2',0,1),('ModuleManager','installed','1.3.3',1,1),('News','installed','2.10.4',0,1),('nuSOAP','installed','1.0.1',1,1),('Printing','installed','1.0.4',0,1),('Search','installed','1.6.2',0,1),('ThemeManager','installed','1.1.1',1,1),('TinyMCE','installed','2.6.5',0,1);
/*!40000 ALTER TABLE `cms_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_permissions`
--

DROP TABLE IF EXISTS `cms_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_permissions` (
  `permission_id` int(11) NOT NULL,
  `permission_name` varchar(255) DEFAULT NULL,
  `permission_text` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_permissions`
--

LOCK TABLES `cms_permissions` WRITE;
/*!40000 ALTER TABLE `cms_permissions` DISABLE KEYS */;
INSERT INTO `cms_permissions` (`permission_id`, `permission_name`, `permission_text`, `create_date`, `modified_date`) VALUES (1,'Add Pages','Add Pages','2006-07-25 21:22:33','2006-07-25 21:22:33'),(2,'Add Groups','Add Groups','2006-07-25 21:22:33','2006-07-25 21:22:33'),(4,'Add Templates','Add Templates','2006-07-25 21:22:33','2006-07-25 21:22:33'),(5,'Add Users','Add Users','2006-07-25 21:22:33','2006-07-25 21:22:33'),(6,'Modify Any Page','Modify Any Page','2006-07-25 21:22:33','2006-07-25 21:22:33'),(7,'Modify Groups','Modify Groups','2006-07-25 21:22:33','2006-07-25 21:22:33'),(8,'Modify Group Assignments','Modify Group Assignments','2006-07-25 21:22:33','2006-07-25 21:22:33'),(9,'Modify Permissions','Modify Permissions for Groups','2006-07-25 21:22:33','2006-07-25 21:22:33'),(11,'Modify Templates','Modify Templates','2006-07-25 21:22:33','2006-07-25 21:22:33'),(12,'Modify Users','Modify Users','2006-07-25 21:22:33','2006-07-25 21:22:33'),(13,'Remove Pages','Remove Pages','2006-07-25 21:22:33','2006-07-25 21:22:33'),(14,'Remove Groups','Remove Groups','2006-07-25 21:22:33','2006-07-25 21:22:33'),(16,'Remove Templates','Remove Templates','2006-07-25 21:22:33','2006-07-25 21:22:33'),(17,'Remove Users','Remove Users','2006-07-25 21:22:33','2006-07-25 21:22:33'),(18,'Modify Modules','Modify Modules','2006-07-25 21:22:33','2006-07-25 21:22:33'),(20,'Modify Files','Modify Files','2006-07-25 21:22:33','2006-07-25 21:22:33'),(21,'Modify Site Preferences','Modify Site Preferences','2006-07-25 21:22:33','2006-07-25 21:22:33'),(22,'Modify Stylesheets','Modify Stylesheets','2006-07-25 21:22:33','2006-07-25 21:22:33'),(23,'Add Stylesheets','Add Stylesheets','2006-07-25 21:22:33','2006-07-25 21:22:33'),(24,'Remove Stylesheets','Remove Stylesheets','2006-07-25 21:22:33','2006-07-25 21:22:33'),(25,'Add Stylesheet Assoc','Add Stylesheet Associations','2006-07-25 21:22:33','2006-07-25 21:22:33'),(26,'Modify Stylesheet Assoc','Modify Stylesheet Associations','2006-07-25 21:22:33','2006-07-25 21:22:33'),(27,'Remove Stylesheet Assoc','Remove Stylesheet Associations','2006-07-25 21:22:33','2006-07-25 21:22:33'),(28,'Modify User-defined Tags','Modify User-defined Tags','2006-07-25 21:22:33','2006-07-25 21:22:33'),(29,'Clear Admin Log','Clear Admin Log','2006-07-25 21:22:33','2006-07-25 21:22:33'),(30,'Add Global Content Blocks','Add Global Content Blocks','2006-07-25 21:22:33','2006-07-25 21:22:33'),(31,'Modify Global Content Blocks','Modify Global Content Blocks','2006-07-25 21:22:33','2006-07-25 21:22:33'),(32,'Remove Global Content Blocks','Remove Global Content Blocks','2006-07-25 21:22:33','2006-07-25 21:22:33'),(45,'allowadvancedprofile','Allow usage of advanced profile in TinyMCE','2009-05-06 15:04:13','2009-05-06 15:04:13'),(35,'Modify Events','Modify Events','2006-01-27 20:06:58','2006-01-27 20:06:58'),(36,'View Tag Help','View Tag Help','2006-01-27 20:06:58','2006-01-27 20:06:58'),(40,'Approve News','Approve News For Frontend Display','2008-09-27 19:58:12','2008-09-27 19:58:12'),(41,'Delete News','Delete News Articles','2008-09-27 19:58:12','2008-09-27 19:58:12'),(44,'Manage All Content','Manage All Content','2009-05-06 15:04:11','2009-05-06 15:04:11'),(46,'Use FileManager Advanced','Advanced usage of the File Manager module','2010-04-02 14:42:18','2010-04-02 14:42:18'),(47,'Manage Menu','Manage Menu','2010-04-02 14:42:18','2010-04-02 14:42:18'),(48,'Modify News','Modify News','2010-04-02 14:42:18','2010-04-02 14:42:18'),(49,'Manage Themes','Manage Themes','2010-04-02 14:42:19','2010-04-02 14:42:19');
/*!40000 ALTER TABLE `cms_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_permissions_seq`
--

DROP TABLE IF EXISTS `cms_permissions_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_permissions_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_permissions_seq`
--

LOCK TABLES `cms_permissions_seq` WRITE;
/*!40000 ALTER TABLE `cms_permissions_seq` DISABLE KEYS */;
INSERT INTO `cms_permissions_seq` (`id`) VALUES (49);
/*!40000 ALTER TABLE `cms_permissions_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_siteprefs`
--

DROP TABLE IF EXISTS `cms_siteprefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_siteprefs` (
  `sitepref_name` varchar(255) NOT NULL,
  `sitepref_value` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`sitepref_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_siteprefs`
--

LOCK TABLES `cms_siteprefs` WRITE;
/*!40000 ALTER TABLE `cms_siteprefs` DISABLE KEYS */;
INSERT INTO `cms_siteprefs` (`sitepref_name`, `sitepref_value`, `create_date`, `modified_date`) VALUES ('enablecustom404','0','2006-07-25 21:22:33','2006-07-25 21:22:33'),('custom404','<p>Page could not be found.</p>','2006-07-25 21:22:33','2006-07-25 21:22:33'),('custom404template','-1','2006-07-25 21:22:33','2006-07-25 21:22:33'),('enablesitedownmessage','0','2006-07-25 21:22:33','2006-07-25 21:22:33'),('sitedownmessage','<p>Site is currently down for maintenance.</p>','2006-07-25 21:22:33','2006-07-25 21:22:33'),('sitedownmessagetemplate','-1','2006-07-25 21:22:33','2006-07-25 21:22:33'),('useadvancedcss','1','2006-07-25 21:22:33','2006-07-25 21:22:33'),('metadata','<meta name=\"Generator\" content=\"CMS Made Simple - Copyright (C) 2004-9 Ted Kulp. All rights reserved.\" />\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n ','2006-07-25 21:22:33','2006-07-25 21:22:33'),('xmlmodulerepository','','2006-07-25 21:22:33','2006-07-25 21:22:33'),('logintheme','NCleanGrey','2006-07-25 21:22:33','2006-07-25 21:22:33'),('global_umask','022',NULL,NULL),('frontendlang','en_US',NULL,NULL),('frontendwysiwyg','',NULL,NULL),('nogcbwysiwyg','0',NULL,NULL),('urlcheckversion','',NULL,NULL),('defaultdateformat','',NULL,NULL),('css_max_age','0',NULL,NULL),('disablesafemodewarning','0',NULL,NULL),('allowparamcheckwarnings','0',NULL,NULL),('enablenotifications','1',NULL,NULL),('page_active','1',NULL,NULL),('page_showinmenu','1',NULL,NULL),('page_cachable','1',NULL,NULL),('page_metadata','<!-- Add code here that should appear in the metadata section of all new pages -->',NULL,NULL),('defaultpagecontent','<!-- Add code here that should appear in the content block of all new pages -->',NULL,NULL),('default_parent_page','-1',NULL,NULL),('additional_editors','',NULL,NULL),('page_searchable','1',NULL,NULL),('page_extra1','',NULL,NULL),('page_extra2','',NULL,NULL),('page_extra3','',NULL,NULL),('sitedownexcludes','',NULL,NULL),('clear_vc_cache','0',NULL,NULL),('sitename','Leadership Summer Camp',NULL,NULL),('CMSMailer_mapi_pref_mailer','smtp',NULL,NULL),('CMSMailer_mapi_pref_host','localhost',NULL,NULL),('CMSMailer_mapi_pref_port','25',NULL,NULL),('CMSMailer_mapi_pref_from','root@localhost',NULL,NULL),('CMSMailer_mapi_pref_fromuser','CMS Administrator',NULL,NULL),('CMSMailer_mapi_pref_sendmail','/usr/sbin/sendmail',NULL,NULL),('CMSMailer_mapi_pref_timeout','1000',NULL,NULL),('CMSMailer_mapi_pref_smtpauth','0',NULL,NULL),('CMSMailer_mapi_pref_username','',NULL,NULL),('CMSMailer_mapi_pref_password','',NULL,NULL),('FileManager_mapi_pref_iconsize','32px',NULL,NULL),('FileManager_mapi_pref_uploadboxes','5',NULL,NULL),('FileManager_mapi_pref_advancedmode','false',NULL,NULL),('FileManager_mapi_pref_showhiddenfiles','false',NULL,NULL),('ModuleManager_mapi_pref_module_repository','http://modules.cmsmadesimple.org/soap.php?module=ModuleRepository',NULL,NULL),('News_mapi_pref_default_summary_template_contents','<!-- Start News Display Template -->\n{if $pagecount > 1}\n  <p>\n{if $pagenumber > 1}\n{$firstpage}&nbsp;{$prevpage}&nbsp;\n{/if}\n{$pagetext}&nbsp;{$pagenumber}&nbsp;{$oftext}&nbsp;{$pagecount}\n{if $pagenumber < $pagecount}\n&nbsp;{$nextpage}&nbsp;{$lastpage}\n{/if}\n</p>\n{/if}\n{foreach from=$items item=entry}\n<div class=\"NewsSummary\">\n\n{if $entry->postdate}\n	<div class=\"NewsSummaryPostdate\">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n\n<div class=\"NewsSummaryLink\">\n<a href=\"{$entry->moreurl}\" title=\"{$entry->title|cms_escape:htmlall}\">{$entry->title|cms_escape}</a>\n</div>\n\n<div class=\"NewsSummaryCategory\">\n	{$category_label} {$entry->category}\n</div>\n\n{if $entry->author}\n	<div class=\"NewsSummaryAuthor\">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n{if $entry->summary}\n	<div class=\"NewsSummarySummary\">\n		{eval var=$entry->summary}\n	</div>\n\n	<div class=\"NewsSummaryMorelink\">\n		[{$entry->morelink}]\n	</div>\n\n{else if $entry->content}\n\n	<div class=\"NewsSummaryContent\">\n		{eval var=$entry->content}\n	</div>\n{/if}\n\n{if isset($entry->extra)}\n    <div class=\"NewsSummaryExtra\">\n        {eval var=$entry->extra}\n	{* {cms_module module=\'Uploads\' mode=\'simpleurl\' upload_id=$entry->extravalue} *}\n    </div>\n{/if}\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=\'field\'}\n     <div class=\"NewsSummaryField\">\n        {if $field->type == \'file\'}\n          <img src=\"{$entry->file_location}/{$field->value}\"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n\n</div>\n{/foreach}\n<!-- End News Display Template -->\n',NULL,NULL),('News_mapi_pref_current_summary_template','Sample',NULL,NULL),('News_mapi_pref_default_detail_template_contents','{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\n{if isset($entry->canonical)}\n  {assign var=\'canonical\' value=$entry->canonical}\n{/if}\n\n{if $entry->postdate}\n	<div id=\"NewsPostDetailDate\">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n<h3 id=\"NewsPostDetailTitle\">{$entry->title|cms_escape:htmlall}</h3>\n\n<hr id=\"NewsPostDetailHorizRule\" />\n\n{if $entry->summary}\n	<div id=\"NewsPostDetailSummary\">\n		<strong>\n			{eval var=$entry->summary}\n		</strong>\n	</div>\n{/if}\n\n{if $entry->category}\n	<div id=\"NewsPostDetailCategory\">\n		{$category_label} {$entry->category}\n	</div>\n{/if}\n{if $entry->author}\n	<div id=\"NewsPostDetailAuthor\">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n<div id=\"NewsPostDetailContent\">\n	{eval var=$entry->content}\n</div>\n\n{if $entry->extra}\n	<div id=\"NewsPostDetailExtra\">\n		{$extra_label} {$entry->extra}\n	</div>\n{/if}\n\n<div id=\"NewsPostDetailPrintLink\">\n	{$entry->printlink}\n</div>\n{if $return_url != \"\"}\n<div id=\"NewsPostDetailReturnLink\">{$return_url}</div>\n{/if}\n\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=\'field\'}\n     <div class=\"NewsDetailField\">\n        {if $field->type == \'file\'}\n	  {* this template assumes that every file uploaded is an image of some sort, because News doesn\'t distinguish *}\n          <img src=\"{$entry->file_location}/{$field->value}\"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n',NULL,NULL),('News_mapi_pref_current_detail_template','Sample',NULL,NULL),('News_mapi_pref_default_form_template_contents','{* original form template *}\n{if isset($error)}\n  <h3><font color=\"red\">{$error}</font></h3>\n{else}\n  {if isset($message)}\n    <h3>{$message}</h3>\n  {/if}\n{/if}\n{$startform}\n	<div class=\"pageoverflow\">\n		<p class=\"pagetext\">*{$titletext}:</p>\n		<p class=\"pageinput\">{$inputtitle}</p>\n	</div>\n	<div class=\"pageoverflow\">\n		<p class=\"pagetext\">{$categorytext}:</p>\n		<p class=\"pageinput\">{$inputcategory}</p>\n	</div>\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\n	<div class=\"pageoverflow\">\n		<p class=\"pagetext\">{$summarytext}:</p>\n		<p class=\"pageinput\">{$inputsummary}</p>\n	</div>\n{/if}\n	<div class=\"pageoverflow\">\n		<p class=\"pagetext\">*{$contenttext}:</p>\n		<p class=\"pageinput\">{$inputcontent}</p>\n	</div>\n	<div class=\"pageoverflow\">\n		<p class=\"pagetext\">{$extratext}:</p>\n		<p class=\"pageinput\">{$inputextra}</p>\n	</div>\n	<div class=\"pageoverflow\">\n		<p class=\"pagetext\">{$startdatetext}:</p>\n		<p class=\"pageinput\">{html_select_date prefix=$startdateprefix time=$startdate end_year=\"+15\"} {html_select_time prefix=$startdateprefix time=$startdate}</p>\n	</div>\n	<div class=\"pageoverflow\">\n		<p class=\"pagetext\">{$enddatetext}:</p>\n		<p class=\"pageinput\">{html_select_date prefix=$enddateprefix time=$enddate end_year=\"+15\"} {html_select_time prefix=$enddateprefix time=$enddate}</p>\n	</div>\n	{if isset($customfields)}\n	   {foreach from=$customfields item=\'onefield\'}\n	      <div class=\"pageoverflow\">\n		<p class=\"pagetext\">{$onefield->name}:</p>\n		<p class=\"pageinput\">{$onefield->field}</p>\n	      </div>\n	   {/foreach}\n	{/if}\n	<div class=\"pageoverflow\">\n		<p class=\"pagetext\">&nbsp;</p>\n		<p class=\"pageinput\">{$hidden}{$submit}{$cancel}</p>\n	</div>\n{$endform}\n',NULL,NULL),('News_mapi_pref_current_form_template','Sample',NULL,NULL),('News_mapi_pref_default_browsecat_template_contents','{if $count > 0}\n<ul class=\"list1\">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string=\"<ul>\" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string=\"</li></ul>\" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li class=\"newscategory\">\n{if $node.count > 0}\n	<a href=\"{$node.url}\">{$node.news_category_name}</a> ({$node.count}){else}<span>{$node.news_category_name} (0)</span>{/if}\n{/foreach}\n{repeat string=\"</li></ul>\" times=$node.depth-1}</li>\n</ul>\n{/if}',NULL,NULL),('News_mapi_pref_current_browsecat_template','Sample',NULL,NULL),('News_mapi_pref_email_subject','A new News article has been posted',NULL,NULL),('News_mapi_pref_allowed_upload_types','gif,png,jpeg,jpg',NULL,NULL),('News_mapi_pref_auto_create_thumbnails','gif,png,jpeg,jpg',NULL,NULL),('Printing_mapi_pref_overridestyle','/*\nYou can put css stuff here, which will be inserted in the header after calling the cmsms-stylesheets.\nProvided you don\'t remove the {$overridestylesheet} in PrintTemplate, of course.\n\nAny suggestions for default content in this stylesheet?\n\nHave fun!\n*/',NULL,NULL),('Search_mapi_pref_stopwords','i, me, my, myself, we, our, ours, ourselves, you, your, yours, \nyourself, yourselves, he, him, his, himself, she, her, hers, \nherself, it, its, itself, they, them, their, theirs, themselves, \nwhat, which, who, whom, this, that, these, those, am, is, are, \nwas, were, be, been, being, have, has, had, having, do, does, \ndid, doing, a, an, the, and, but, if, or, because, as, until, \nwhile, of, at, by, for, with, about, against, between, into, \nthrough, during, before, after, above, below, to, from, up, down, \nin, out, on, off, over, under, again, further, then, once, here, \nthere, when, where, why, how, all, any, both, each, few, more, \nmost, other, some, such, no, nor, not, only, own, same, so, \nthan, too, very',NULL,NULL),('Search_mapi_pref_usestemming','false',NULL,NULL),('Search_mapi_pref_searchtext','Enter Search...',NULL,NULL),('TinyMCE_mapi_pref_skin','default',NULL,NULL),('TinyMCE_mapi_pref_source_formatting','1',NULL,NULL),('TinyMCE_mapi_pref_editor_width','800',NULL,NULL),('TinyMCE_mapi_pref_editor_width_auto','1',NULL,NULL),('TinyMCE_mapi_pref_editor_width_unit','px',NULL,NULL),('TinyMCE_mapi_pref_editor_height','400',NULL,NULL),('TinyMCE_mapi_pref_editor_height_auto','1',NULL,NULL),('TinyMCE_mapi_pref_editor_height_unit','px',NULL,NULL),('TinyMCE_mapi_pref_show_path','1',NULL,NULL),('TinyMCE_mapi_pref_striptags','true',NULL,NULL),('TinyMCE_mapi_pref_imagebrowserstyle','both',NULL,NULL),('TinyMCE_mapi_pref_allowscaling','0',NULL,NULL),('TinyMCE_mapi_pref_scalingwidth','800',NULL,NULL),('TinyMCE_mapi_pref_scalingheight','600',NULL,NULL),('TinyMCE_mapi_pref_filepickerstyle','both',NULL,NULL),('TinyMCE_mapi_pref_fpwidth','700',NULL,NULL),('TinyMCE_mapi_pref_fpheight','500',NULL,NULL),('TinyMCE_mapi_pref_toolbar1','cut,paste,pastetext,pasteword,copy,separator,justifyleft,justifycenter,justifyright,justifyfull,separator,styleselect,formatselect,fontselect,fontsizeselect',NULL,NULL),('TinyMCE_mapi_pref_toolbar2','bold,italic,underline,strikethrough,advhr,separator,bullist,numlist,separator,outdent,indent,separator,undo,redo,separator,customdropdown,cmslinker,link,unlink,anchor,image,charmap,cleanup,separator,forecolor,backcolor,separator,code,spellchecker,fullscreen,help',NULL,NULL),('TinyMCE_mapi_pref_toolbar3','',NULL,NULL),('TinyMCE_mapi_pref_allow_tables','0',NULL,NULL),('TinyMCE_mapi_pref_allowupload','0',NULL,NULL),('TinyMCE_mapi_pref_showtogglebutton','1',NULL,NULL),('TinyMCE_mapi_pref_advanced_toolbar1','cut,paste,pastetext,pasteword,copy,separator,justifyleft,justifycenter,justifyright,justifyfull,separator,styleselect,formatselect,fontselect,fontsizeselect',NULL,NULL),('TinyMCE_mapi_pref_advanced_toolbar2','bold,italic,underline,strikethrough,advhr,separator,bullist,numlist,separator,outdent,indent,separator,undo,redo,separator,customdropdown,cmslinker,link,unlink,anchor,image,charmap,cleanup,separator,forecolor,backcolor,separator,code,spellchecker,fullscreen,help',NULL,NULL),('TinyMCE_mapi_pref_advanced_toolbar3','',NULL,NULL),('TinyMCE_mapi_pref_advanced_allow_tables','0',NULL,NULL),('TinyMCE_mapi_pref_advanced_allowupload','0',NULL,NULL),('TinyMCE_mapi_pref_advanced_showtogglebutton','1',NULL,NULL),('TinyMCE_mapi_pref_front_toolbar1','cut,paste,pastetext,pasteword,copy,separator,justifyleft,justifycenter,justifyright,justifyfull,separator,styleselect,formatselect,fontselect,fontsizeselect',NULL,NULL),('TinyMCE_mapi_pref_front_toolbar2','bold,italic,underline,strikethrough,advhr,separator,bullist,numlist,separator,outdent,indent,separator,undo,redo,separator,cmslinker,link,unlink,anchor,image,charmap,cleanup,separator,forecolor,backcolor,separator,code,spellchecker,fullscreen,help',NULL,NULL),('TinyMCE_mapi_pref_front_toolbar3','',NULL,NULL),('TinyMCE_mapi_pref_front_allow_tables','0',NULL,NULL),('TinyMCE_mapi_pref_front_showtogglebutton','1',NULL,NULL),('TinyMCE_mapi_pref_plugins','paste,advimage,advlink,contextmenu,inlinepopups,spellchecker',NULL,NULL),('TinyMCE_mapi_pref_newlinestyle','p',NULL,NULL),('TinyMCE_mapi_pref_usecompression','0',NULL,NULL),('TinyMCE_mapi_pref_entityencoding','raw',NULL,NULL),('TinyMCE_mapi_pref_bodycss','',NULL,NULL),('TinyMCE_mapi_pref_forcedrootblock','false',NULL,NULL),('TinyMCE_mapi_pref_customdropdown','Start expand/collapse-area|{startExpandCollapse id=\\\'expand1\\\' title=\\\'This is my expandable area\\\'}\nEnd expand/collapse-area|{stopExpandCollapse}\n---|---\nInsert CMS version info|{cms_version} {cms_versionname}\n---|---\nInsert Smarty {literal} around selection|{literal}|{/literal}',NULL,NULL),('TinyMCE_mapi_pref_extraconfig','',NULL,NULL),('TinyMCE_mapi_pref_forcecleanpaste','1',NULL,NULL),('TinyMCE_mapi_pref_startenabled','1',NULL,NULL),('TinyMCE_mapi_pref_loadcmslinker','1',NULL,NULL),('TinyMCE_mapi_pref_cmslinkerstyle','1',NULL,NULL),('TinyMCE_mapi_pref_usestaticconfig','0',NULL,NULL),('TinyMCE_mapi_pref_ignoremodifyfiles','0',NULL,NULL),('TinyMCE_mapi_pref_dropdownblockformats','p,div,h1,h2,h3,h4,h5,h6,div,blockquote,dt,dd,code,samp',NULL,NULL),('cms_is_uptodate','1',NULL,NULL),('lastcmsversioncheck','1272257995',NULL,NULL),('News_mapi_pref_article_sortby','news_date DESC',NULL,NULL),('News_mapi_pref_article_pagelimit','25',NULL,NULL),('MenuManager_mapi_pref_default_template','minimal_id2',NULL,NULL);
/*!40000 ALTER TABLE `cms_siteprefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_templates`
--

DROP TABLE IF EXISTS `cms_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_templates` (
  `template_id` int(11) NOT NULL,
  `template_name` varchar(160) DEFAULT NULL,
  `template_content` text,
  `stylesheet` text,
  `encoding` varchar(25) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `default_template` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`template_id`),
  KEY `index_templates_by_template_name` (`template_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_templates`
--

LOCK TABLES `cms_templates` WRITE;
/*!40000 ALTER TABLE `cms_templates` DISABLE KEYS */;
INSERT INTO `cms_templates` (`template_id`, `template_name`, `template_content`, `stylesheet`, `encoding`, `active`, `default_template`, `create_date`, `modified_date`) VALUES (19,'Minimal template','{process_pagedata}\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\r\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\r\n{* Change lang=\"en\" to the language of your site *}\r\n\r\n<head>\r\n\r\n<title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n{metadata}\r\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n{stylesheet}\r\n<link rel=\"stylesheet\" href=\"canadastyle.css\" type=\"text/css\">\r\n\r\n</head>\r\n\r\n<body>\r\n\r\n      {* Start Navigation *}\r\n      <div style=\"float: left; width: 25%;\">\r\n         {menu template=\'minimal_menu.tpl\'}\r\n      </div>\r\n      {* End Navigation *}\r\n\r\n      {* Start Content *}\r\n      <div>\r\n         <h2>{title}</h2>\r\n         {content} \r\n      </div>\r\n	  \r\n	  \r\n		<div id=\"block2\">\r\n	  {content block=\"Textblock-2\"}\r\n</div>\r\n      {* End Content *}\r\n\r\n</body>\r\n</html>','','',1,0,'2006-07-25 21:22:33','2010-04-02 17:21:40'),(24,'Leadership Summer Camp Template','{process_pagedata}\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\r\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\r\n{* Change lang=\"en\" to the language of your site *}\r\n\r\n<head>\r\n\r\n<title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n{metadata}\r\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n<script src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js\" type=\"text/javascript\"></script>\r\n<script type=\"text/javascript\" src=\"js/menuhover.js\"></script>\r\n\r\n\r\n\r\n<script type=\"text/javascript\" src=\"js/jquery.js\"></script>\r\n<script type=\"text/javascript\" src=\"js/init.js\"></script>\r\n\r\n{stylesheet}\r\n<link rel=\"stylesheet\" href=\"canadastyle.css\" type=\"text/css\">\r\n\r\n</head>\r\n\r\n<body id=\"pane-target\" class=\"pane\" class=\"elements\">\r\n\r\n      {* Start Navigation *}\r\n      <div id=\"navigation\">\r\n         {menu}\r\n      </div>\r\n      {* End Navigation *}\r\n\r\n      {* Start Content *}\r\n    <!-- <h2>{title}</h2>-->\r\n<div class=\"contentdiv\" id=\"divhome\">\r\n<div class=\"titlepic\"></div>\r\n		<div class=\"subcontent\" id=\"home\">\r\n         {content block=\"Home\"} \r\n      </div></div>\r\n\r\n\r\n<div class=\"contentdiv\" id=\"divgaleria\">\r\n<div class=\"titlepic\"></div>\r\n		<div class=\"subcontent\" id=\"galeria\">\r\n         {content block=\"Galeria de Fotos\"} \r\n      </div></div>\r\n\r\n	  \r\n  <div class=\"contentdiv\" id=\"divfaq\"><div class=\"titlepic\"></div>\r\n		<div class=\"subcontent\" class=\"faq\" id=\"faq\">\r\n	  {content block=\"FAQ\"}\r\n		</div></div>\r\n\r\n  <div class=\"contentdiv\" id=\"divfilosofia\"><div class=\"titlepic\"></div>\r\n\r\n		<div class=\"subcontent\" class=\"filosofia\" id=\"filosofia\">\r\n	  {content block=\"Nuestra Filosofia\"}\r\n		</div></div>\r\n\r\n  <div class=\"contentdiv\" id=\"divpadres\"><div class=\"titlepic\"></div>\r\n		<div class=\"subcontent\" class=\"padres\" id=\"padres\">\r\n	  {content block=\"Padres\"}\r\n		</div></div>\r\n\r\n  <div class=\"contentdiv\" id=\"divstaff\"><div class=\"titlepic\"></div>\r\n		<div class=\"subcontent\" class=\"staff\" id=\"staff\">\r\n	  {content block=\"Staff\"}\r\n		</div></div>\r\n\r\n  <div class=\"contentdiv\" id=\"divfacilidades\"><div class=\"titlepic\"></div>\r\n		<div class=\"subcontent\" class=\"facilidades\" id=\"facilidades\">\r\n	  {content block=\"Facilidades\"}\r\n		</div></div>\r\n\r\n  <div class=\"contentdiv\" id=\"divcampinfo\">	<div class=\"titlepic\"></div>	\r\n		<div class=\"subcontent\" class=\"campinfo\" id=\"campinfo\">\r\n	  {content block=\"Camp Info\"}\r\n		</div></div>\r\n\r\n  <div class=\"contentdiv\" id=\"divactividades\">	<div class=\"titlepic\"></div>\r\n		 <div class=\"subcontent\" class=\"actividades\" id=\"activiades\">\r\n	{content block=\"Actividades\"}\r\n		</div></div>\r\n\r\n	<div >\r\n      {* End Content *}\r\n\r\n{literal}\r\n<script type=\"text/javascript\">\r\n            $(function() {\r\n                $(\'.clearfix\').stop().animate({\'marginLeft\':\'-85px\'},1000);\r\n\r\n                $(\'.clearfix\').hover(\r\n                    function () {\r\n                        $(this).stop().animate({\'marginLeft\':\'-2px\'},200);\r\n                    },\r\n                    function () {\r\n                        $(this).stop().animate({\'marginLeft\':\'-85px\'},200);\r\n                    }\r\n                );\r\n            });\r\n        </script>\r\n{/literal}\r\n</body>\r\n</html>','','',1,1,'2010-04-02 17:21:26','2010-04-25 21:03:03'),(22,'NCleanBlue','{process_pagedata}<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\r\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\r\n{* Change lang=\"en\" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n  <head>\r\n{if isset($canonical)}<link rel=\"canonical\" href=\"{$canonical}\" />{elseif isset($content_obj)}<link rel=\"canonical\" href=\"{$content_obj->GetURL()}\" />{/if}\r\n\r\n<title>{title} | {sitename}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n{metadata}\r\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n{stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to *}\r\n\r\n{cms_selflink dir=\"start\" rellink=1}\r\n{cms_selflink dir=\"prev\" rellink=1}\r\n{cms_selflink dir=\"next\" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optmization *}\r\n\r\n<!--[if IE 6]>\r\n<script type=\"text/javascript\" src=\"modules/MenuManager/CSSMenu.js\"></script>\r\n<![endif]-->\r\n{* The above JavaScript is required for Menu - NCleanBlue-css to work in IE6 *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {\"curly brackets\"} as smarty will think it\'s something to process and will throw an error *}\r\n{* IE6 png fix *}\r\n{literal}\r\n<!--[if IE 6]>\r\n<script type=\"text/javascript\"  src=\"uploads/NCleanBlue/js/ie6fix.js\"></script>\r\n<script type=\"text/javascript\">\r\n // argument is a CSS selector\r\n DD_belatedPNG.fix(\'.sbar-top,.sbar-bottom,.main-top,.main-bottom,#version\');\r\n</script>\r\n<style type=\"text/css\">\r\n/* enable background image caching in IE6 */\r\nhtml {filter:expression(document.execCommand(\"BackgroundImageCache\", false, true));} \r\n</style>\r\n<![endif]-->\r\n{/literal}\r\n\r\n  </head>\r\n  <body>\r\n    <div id=\"ncleanblue\">\r\n      <div id=\"pagewrapper\" class=\"core-wrap-960 core-center\">\r\n{* start accessibility skip links *}\r\n        <ul class=\"accessibility\">\r\n          <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\r\n          <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\r\n        </ul>\r\n{* end accessibility skip links *}\r\n        <hr class=\"accessibility\" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Header, with logo image that links to the default start page *}\r\n        <div id=\"header\" class=\"util-clearfix\">\r\n{* logo image that links to the default start page. Logo image is changed in the style sheet  \"Layout: NCleanBlue\" *}\r\n          <div id=\"logo\" class=\"core-float-left\">\r\n            {cms_selflink dir=\"start\" text=\"$sitename\"}\r\n          </div>\r\n          \r\n{* Start Search, the input \"Submit\" is using an image, CSS: div#search input.search-button *}\r\n          <div id=\"search\" class=\"core-float-right\">\r\n            {search search_method=\"post\"}\r\n          </div>\r\n{* End Search *}\r\n          <span class=\"util-clearb\">&nbsp;</span>\r\n          \r\n{* Start Navigation, style sheet  \"Layout: NCleanBlue\", starting at Menu  ROOT *}\r\n          <h2 class=\"accessibility util-clearb\">Navigation</h2>\r\n{* anything class=\"accessibility\" is hidden for visual browsers by CSS *}\r\n          <div class=\"page-menu util-clearfix\">\r\n          {menu template=\'cssmenu_ulshadow.tpl\'}\r\n          </div>\r\n          <hr class=\"accessibility util-clearb\" />\r\n{* End Navigation *}\r\n\r\n        </div>\r\n{* End Header *}\r\n\r\n{* Start Content (Navigation and Content columns) *}\r\n        <div id=\"content\" class=\"util-clearfix\"> \r\n\r\n{* Start Optional tag CMS Version Information, also is a good example how smarty works, the big star that holds the version number, you may remove it here and the style sheet where it is marked. *}\r\n          <div title=\"CMS - {cms_version} - {cms_versionname}\" id=\"version\">\r\n          {capture assign=\'cms_version\'}{cms_version|lower}{/capture}{\"/-([a-z]).*/\"|preg_replace:\"\":$cms_version}\r\n          </div>\r\n{* End Optional tag  *}\r\n\r\n{* Start Bar *}\r\n          <div id=\"bar\" class=\"util-clearfix\">\r\n{* Start Breadcrumbs, a bit of letting you know where your at *}\r\n            <div class=\"breadcrumbs core-float-right\">\r\n              {breadcrumbs starttext=\'You are here\' root=\'Home\' delimiter=\'&raquo;\'}\r\n            </div>\r\n{* End Breadcrumbs *}\r\n\r\n            <hr class=\"accessibility util-clearb\" />\r\n          </div>\r\n{* End Bar *}\r\n\r\n{* Start left side *}\r\n          <div id=\"left\" class=\"core-float-left\">\r\n            <div class=\"sbar-top\">\r\n              <h2 class=\"sbar-title\">News</h2>\r\n            </div>\r\n            <div class=\"sbar-main\">\r\n{* Start News *}\r\n              <div id=\"news\">\r\n              {news number=\'3\' detailpage=\'news\'}\r\n              </div>\r\n              <img class=\"screen\" src=\"uploads/NCleanBlue/screen-1.6.jpg\" width=\"139\" height=\"142\" title=\"CMS - {cms_version} - {cms_versionname}\" alt=\"CMS - {cms_version} - {cms_versionname}\" />\r\n{* End News *} \r\n            </div>\r\n            <span class=\"sbar-bottom\">&nbsp;</span> \r\n          </div>\r\n{* End left side *}\r\n\r\n{* Start Content Area, right side *}\r\n          <div id=\"main\"  class=\"core-float-right\">\r\n\r\n{* main top, holds top image and print image *}\r\n            <div class=\"main-top\">\r\n              <div class=\"print core-float-right\">\r\n                {print showbutton=true}\r\n              </div>\r\n            </div> \r\n            \r\n{* main content *}\r\n            <div class=\"main-main util-clearfix\">\r\n              <h1 class=\"title\">{title}</h1>\r\n            {content}\r\n            </div>\r\n            \r\n{* Start main bottom and relational links *}\r\n            <div class=\"main-bottom\">\r\n              <div class=\"right49 core-float-right\">\r\n              {anchor anchor=\'main\' text=\'^&nbsp;&nbsp;Top\'}\r\n              </div>\r\n              <div class=\"left49 core-float-left\">\r\n                <span>\r\n                  {cms_selflink dir=\"previous\" label=\"Previous page: \"}&nbsp;\r\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text \"Previous page\" *}\r\n                </span>\r\n                <span>\r\n                  {cms_selflink dir=\"next\"}&nbsp;\r\n                </span>\r\n              </div>\r\n{* End relational links *}\r\n\r\n              <hr class=\"accessibility\" />\r\n            </div>\r\n{* End main bottom *}\r\n\r\n          </div>\r\n{* End Content Area, right side *}\r\n\r\n        </div>\r\n{* End Content *}\r\n\r\n      </div>\r\n{* end pagewrapper *}\r\n      <span class=\"util-clearb\">&nbsp;</span>\r\n      \r\n{* Start Footer *}\r\n      <div id=\"footer-wrapper\">\r\n        <div id=\"footer\" class=\"core-wrap-960\">\r\n{* first foot menu *}\r\n          <div class=\"block core-float-left\">\r\n            {menu template=\'minimal_menu.tpl\'  number_of_levels=\'1\'}\r\n          </div>\r\n          \r\n{* second foot menu if active page has children *}\r\n          <div class=\"block core-float-left\">\r\n            {menu template=\'minimal_menu.tpl\'  start_level=\"2\"}\r\n          </div>\r\n          \r\n{* edit the footer in the Global Content Block called \"footer\" *}\r\n          <div class=\"block cms core-float-left\">\r\n            {global_content name=\'footer\'}\r\n          </div>\r\n          \r\n          <span class=\"util-clearb\">&nbsp;</span>\r\n        </div>\r\n      </div>\r\n{* End Footer *}\r\n    </div>\r\n{* End Div *}\r\n  </body>\r\n</html>','','',1,0,'2009-05-06 14:20:10','2010-04-02 17:21:40');
/*!40000 ALTER TABLE `cms_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_templates_seq`
--

DROP TABLE IF EXISTS `cms_templates_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_templates_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_templates_seq`
--

LOCK TABLES `cms_templates_seq` WRITE;
/*!40000 ALTER TABLE `cms_templates_seq` DISABLE KEYS */;
INSERT INTO `cms_templates_seq` (`id`) VALUES (24);
/*!40000 ALTER TABLE `cms_templates_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_user_groups`
--

DROP TABLE IF EXISTS `cms_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_groups` (
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_groups`
--

LOCK TABLES `cms_user_groups` WRITE;
/*!40000 ALTER TABLE `cms_user_groups` DISABLE KEYS */;
INSERT INTO `cms_user_groups` (`group_id`, `user_id`, `create_date`, `modified_date`) VALUES (1,1,'2006-07-25 21:22:33','2006-07-25 21:22:33'),(1,2,NULL,NULL),(2,2,NULL,NULL),(3,2,NULL,NULL);
/*!40000 ALTER TABLE `cms_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_userplugins`
--

DROP TABLE IF EXISTS `cms_userplugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_userplugins` (
  `userplugin_id` int(11) NOT NULL,
  `userplugin_name` varchar(255) DEFAULT NULL,
  `code` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`userplugin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_userplugins`
--

LOCK TABLES `cms_userplugins` WRITE;
/*!40000 ALTER TABLE `cms_userplugins` DISABLE KEYS */;
INSERT INTO `cms_userplugins` (`userplugin_id`, `userplugin_name`, `code`, `create_date`, `modified_date`) VALUES (1,'user_agent','//Code to show the user\'s user agent information.\r\necho $_SERVER[\"HTTP_USER_AGENT\"];','2006-07-25 21:22:33','2006-07-25 21:22:33'),(2,'custom_copyright','//set start to date your site was published\r\n$startCopyRight=\'2004\';\r\n\r\n// check if start year is this year\r\nif(date(\'Y\') == $startCopyRight){\r\n// it was, just print this year\r\n    echo $startCopyRight;\r\n}else{\r\n// it wasnt, print startyear and this year delimited with a dash\r\n    echo $startCopyRight.\'-\'. date(\'Y\');\r\n}','2006-07-25 21:22:33','2006-07-25 21:22:33');
/*!40000 ALTER TABLE `cms_userplugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_userplugins_seq`
--

DROP TABLE IF EXISTS `cms_userplugins_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_userplugins_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_userplugins_seq`
--

LOCK TABLES `cms_userplugins_seq` WRITE;
/*!40000 ALTER TABLE `cms_userplugins_seq` DISABLE KEYS */;
INSERT INTO `cms_userplugins_seq` (`id`) VALUES (2);
/*!40000 ALTER TABLE `cms_userplugins_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_userprefs`
--

DROP TABLE IF EXISTS `cms_userprefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_userprefs` (
  `user_id` int(11) DEFAULT NULL,
  `preference` varchar(50) DEFAULT NULL,
  `value` text,
  `type` varchar(25) DEFAULT NULL,
  KEY `index_userprefs_by_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_userprefs`
--

LOCK TABLES `cms_userprefs` WRITE;
/*!40000 ALTER TABLE `cms_userprefs` DISABLE KEYS */;
INSERT INTO `cms_userprefs` (`user_id`, `preference`, `value`, `type`) VALUES (1,'use_wysiwyg','1',NULL),(1,'wysiwyg','TinyMCE',NULL),(1,'default_cms_language','en_US',NULL),(1,'date_format_string','%x %X',NULL),(1,'admintheme','NCleanGrey',NULL),(1,'bookmarks','on',NULL),(1,'recent','on',NULL),(1,'indent','on',NULL),(1,'ajax','0',NULL),(1,'paging','0',NULL),(1,'hide_help_links','0',NULL),(1,'collapse','0=1.15=1.',NULL),(2,'wysiwyg','TinyMCE',NULL),(2,'default_cms_language','en_US',NULL),(2,'admintheme','NCleanGrey',NULL),(2,'bookmarks','on',NULL),(2,'recent','on',NULL);
/*!40000 ALTER TABLE `cms_userprefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `admin_access` tinyint(4) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users`
--

LOCK TABLES `cms_users` WRITE;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;
INSERT INTO `cms_users` (`user_id`, `username`, `password`, `admin_access`, `first_name`, `last_name`, `email`, `active`, `create_date`, `modified_date`) VALUES (1,'admin','62cc2d8b4bf2d8728120d052163a77df',1,'','','jorge.silva.jetter@gmail.com',1,'2006-07-25 21:22:33','2010-04-10 20:38:09'),(2,'cesar','f51335b81dfa39a54f9298ecf68d6f22',1,'Cesar','Vega','cvpagan@gmail.com',1,'2010-04-25 21:07:19','2010-04-25 21:07:19');
/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_seq`
--

DROP TABLE IF EXISTS `cms_users_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_seq`
--

LOCK TABLES `cms_users_seq` WRITE;
/*!40000 ALTER TABLE `cms_users_seq` DISABLE KEYS */;
INSERT INTO `cms_users_seq` (`id`) VALUES (2);
/*!40000 ALTER TABLE `cms_users_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_version`
--

DROP TABLE IF EXISTS `cms_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_version` (
  `version` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_version`
--

LOCK TABLES `cms_version` WRITE;
/*!40000 ALTER TABLE `cms_version` DISABLE KEYS */;
INSERT INTO `cms_version` (`version`) VALUES (32);
/*!40000 ALTER TABLE `cms_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'thejsj_canada'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-19 20:39:53
