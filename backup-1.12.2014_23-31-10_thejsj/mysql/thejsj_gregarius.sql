-- MySQL dump 10.13  Distrib 5.1.72, for unknown-linux-gnu (x86_64)
--
-- Host: localhost    Database: thejsj_gregarius
-- ------------------------------------------------------
-- Server version	5.1.72-cll

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `cachekey` varchar(128) NOT NULL,
  `timestamp` datetime NOT NULL,
  `cachetype` enum('ts','icon','feed') NOT NULL,
  `data` blob,
  PRIMARY KEY (`cachekey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` (`cachekey`, `timestamp`, `cachetype`, `data`) VALUES ('data_ts','2012-05-03 18:08:20','ts',NULL);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channels`
--

DROP TABLE IF EXISTS `channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channels` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `siteurl` varchar(255) DEFAULT NULL,
  `parent` tinyint(4) DEFAULT '0',
  `descr` varchar(255) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `daterefreshed` datetime DEFAULT NULL,
  `refreshinterval` int(16) NOT NULL DEFAULT '60',
  `itemsincache` text,
  `etag` varchar(255) DEFAULT NULL,
  `lastmodified` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `mode` int(16) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channels`
--

LOCK TABLES `channels` WRITE;
/*!40000 ALTER TABLE `channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `key_` varchar(127) NOT NULL DEFAULT '',
  `value_` text NOT NULL,
  `default_` text NOT NULL,
  `type_` enum('string','num','boolean','array','enum') NOT NULL DEFAULT 'string',
  `desc_` text,
  `export_` varchar(127) DEFAULT NULL,
  PRIMARY KEY (`key_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`key_`, `value_`, `default_`, `type_`, `desc_`, `export_`) VALUES ('rss.output.encoding','UTF-8','UTF-8','string','Output encoding for the PHP XML parser.','MAGPIE_OUTPUT_ENCODING'),('rss.output.itemsinchannelview','10','10','num','Number of read items shown on for a single channel.',NULL),('rss.output.showfavicons','true','true','boolean','Display the favicon for the channels that have one. Due to a IE bug, some icons do not render correctly. You can either change the URL to the icon in the admin screen, or turn the display of favicons off globally here.',NULL),('rss.output.usemodrewrite','true','true','boolean','Make use of apache\'s mod_rewrite module to return sexy urls. Turn this off if your host doesn\'t allow you to change this apache setting.',NULL),('rss.config.dateformat','F jS, Y, g:ia T','F jS, Y, g:ia T','string','Format to use when displaying dates. See here for help on the format: http://php.net/date Note that direct access to a given feed\'s month and day archives more or less depends on the fact that this date format contains the  \"F\" (Month) and \"jS\" (day) elements in this form. So feel free to change the order of the elements, but better leave those two tokens in :)',NULL),('rss.meta.debug','false','false','boolean',' When in debug mode some extra debug info is shown and the error reporting is a bit more verbose.',NULL),('rss.output.compression','true','true','boolean','This variable turns output compression on and off. Output compression is handled by most browsers.',NULL),('rss.output.channelcollapse','true','true','boolean','Allow collapsing of channels on the main page. ',NULL),('rss.output.channelcollapsedefault','false','false','boolean','Collapse the channels on the main page by default',NULL),('rss.output.usepermalinks','true','true','boolean','Display a permalink icon and allow linking a given item directly.',NULL),('rss.config.markreadonupdate','false','false','boolean','Mark all old unread feeds as read when updating if new unread feeds are found.',NULL),('rss.output.lang','en_US,zh_CN,de,da,es,fr,he,it,ja,pt_BR,pt,ru,sv,0','en_US,zh_CN,de,da,es,fr,he,it,ja,pt_BR,pt,ru,sv,0','enum','Language pack to use.',NULL),('rss.output.lang.force','false','false','boolean','When false, Gregarius will negotiate the display language with the browser and will fall back to the language defined in rss.output.lang if the negotiation fails. When true, Gregarius won\'t negotiate and will always use the language defined in rss.output.lang.',NULL),('rss.config.absoluteordering','true','true','boolean','Allow feeds and folders to be ordered by their order in the admin section. If this option is set to false, channels and folders will be organized alphabetically by their titles.',NULL),('rss.config.robotsmeta','noindex,follow','noindex,follow','string','How should spiders crawl us? (see http://www.robotstxt.org/wc/meta-user.html for more info).',NULL),('rss.config.serverpush','true','true','boolean','Use the server push method when updating your feeds in the browser. The browsers that support this (Mozilla and Opera) will be autodetected. Turn this option off if you do not use one of these browsers or if you would like to use the Ajax update method',NULL),('rss.config.refreshafter','45','45','num','If this option is set the feeds will be updated after keeping the browser open for x minutes. Please respect the feed providers by not setting this value to anything lower than thirty minutes. Set this variable to 0 turn this option off.',NULL),('rss.input.allowed','a:21:{s:1:\"a\";a:2:{s:4:\"href\";i:1;s:5:\"title\";i:1;}s:1:\"b\";a:0:{}s:10:\"blockquote\";a:0:{}s:2:\"br\";a:0:{}s:4:\"code\";a:0:{}s:3:\"del\";a:0:{}s:2:\"em\";a:0:{}s:1:\"i\";a:0:{}s:3:\"img\";a:2:{s:3:\"src\";i:1;s:3:\"alt\";i:1;}s:3:\"ins\";a:0:{}s:2:\"li\";a:0:{}s:2:\"ol\";a:0:{}s:1:\"p\";a:0:{}s:3:\"pre\";a:0:{}s:3:\"sup\";a:0:{}s:5:\"table\";a:0:{}s:2:\"td\";a:0:{}s:2:\"th\";a:0:{}s:2:\"tr\";a:0:{}s:2:\"tt\";a:0:{}s:2:\"ul\";a:0:{}}','a:21:{s:1:\"a\";a:2:{s:4:\"href\";i:1;s:5:\"title\";i:1;}s:1:\"b\";a:0:{}s:10:\"blockquote\";a:0:{}s:2:\"br\";a:0:{}s:4:\"code\";a:0:{}s:3:\"del\";a:0:{}s:2:\"em\";a:0:{}s:1:\"i\";a:0:{}s:3:\"img\";a:2:{s:3:\"src\";i:1;s:3:\"alt\";i:1;}s:3:\"ins\";a:0:{}s:2:\"li\";a:0:{}s:2:\"ol\";a:0:{}s:1:\"p\";a:0:{}s:3:\"pre\";a:0:{}s:3:\"sup\";a:0:{}s:5:\"table\";a:0:{}s:2:\"td\";a:0:{}s:2:\"th\";a:0:{}s:2:\"tr\";a:0:{}s:2:\"tt\";a:0:{}s:2:\"ul\";a:0:{}}','array','This variable controls input filtering. HTML tags and their attributes, which are not in this list, get filtered out when new RSS items are imported.',NULL),('rss.output.showfeedmeta','false','false','boolean','Display meta-information (like a web- and rss/rdf/xml url) about each feed in the feed side-column.',NULL),('rss.output.frontpage.numitems','100','100','num','Maximum number of items displayed on the main page. Set this variable to 0 to show no items on the main page.',NULL),('rss.output.frontpage.mixeditems','true','true','boolean','Show read items along with unread items on the front page?',NULL),('rss.output.frontpage.numreaditems','-1','-1','num','If there are no unread items then how many items to show on the frontpage. Set this to -1 if you want it to be the same as rss.output.numitemsonmainpage',NULL),('rss.output.theme','default','default','string','The theme to use. Download more themes from the <a href=\"http://themes.gregarius.net/\">Gregarius Themes Repository</a>.',NULL),('rss.output.cachecontrol','false','false','boolean','If true, Gregarius will negotiate with the browser and check whether it should get a fresh document or not.',NULL),('rss.config.plugins','a:2:{i:0;s:13:\"urlfilter.php\";i:1;s:18:\"roundedcorners.php\";}','a:2:{i:0;s:13:\"urlfilter.php\";i:1;s:18:\"roundedcorners.php\";}','array','Plugins are third-party scripts that offer extended functionalities. More plugins can be found at the <a href=\"http://plugins.gregarius.net/\">Plugin Repository</a>.',NULL),('rss.input.allowupdates','true','true','boolean','Allow Gregarius to see if new items are updates of existing items.',NULL),('rss.output.titleunreadcnt','false','false','boolean','Display unread count in the document title.',NULL),('rss.config.tzoffset','0','0','num','Timezone offset, in hours, between your local time and server time. Valid range: \"-12\" through \"12\"',NULL),('rss.config.feedgrouping','false','false','boolean','When true, Gregarius groups unread items per feed and sorts the feeds according to the <code>rss.config.absoluteordering</code> configuration switch. When false, unread items are not grouped by feed, but are sorted by date instead.',NULL),('rss.config.datedesc.unread','true','true','boolean','When true, Gregarius displays newer <strong>unread</strong> items first. If false, Gregarius will display older unread items first.',NULL),('rss.config.datedesc.read','true','true','boolean','When true, Gregarius displays newer <strong>read</strong> items first. If false, Gregarius will display older read items first.',NULL),('rss.config.autologout','false','false','boolean','When true, Gregarius will automatically remove the \"admin cookie\" when the browser window is closed, effectively logging you out.',NULL),('rss.config.publictagging','false','false','boolean','When true, every visitor to your Gregarius site will be allowed to tag items, when false only the Administrator (you) is allowed to tag.',NULL),('rss.config.rating','true','true','boolean','Enable the item rating system.',NULL),('rss.output.barefrontpage','false','false','boolean','Suppress the output of any read item on the front page.',NULL),('rss.output.title','Gregarius','Gregarius','string','Sets the title of this feedreader.',NULL),('rss.config.ajaxparallelsize','3','3','num','Sets the number of feeds to update in parallel. Remember to set rss.config.serverpush to false.',NULL),('rss.config.ajaxbatchsize','3','3','num','Sets the number of feeds in a batch when using the ajax updater. Remember to set rss.config.serverpush to false.',NULL),('rss.config.defaultdashboard','true','true','boolean','If the first page seen when entering the admin section should be the dashboard',NULL),('rss.config.deadthreshhold','24','24','num','Sets the threshold for when a feed is marked as dead, in hours',NULL),('rss.search.maxitems','500','500','num','Sets the maximum number of items returned on a search',NULL),('rss.config.restrictrefresh','false','false','boolean','Restrict refresh to command line only (eg php -f update.php). Useful for busy sites with multiple users.',NULL),('rss.output.minimalchannellist','false','false','boolean','Exclude folders and channels without unread items in channel list?',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard`
--

DROP TABLE IF EXISTS `dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `url` text NOT NULL,
  `position` tinyint(1) NOT NULL DEFAULT '0',
  `obj` text NOT NULL,
  `daterefreshed` datetime DEFAULT NULL,
  `itemcount` tinyint(1) NOT NULL DEFAULT '3',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard`
--

LOCK TABLES `dashboard` WRITE;
/*!40000 ALTER TABLE `dashboard` DISABLE KEYS */;
INSERT INTO `dashboard` (`id`, `title`, `url`, `position`, `obj`, `daterefreshed`, `itemcount`) VALUES (1,'Latest Gregarius News','http://devlog.gregarius.net/feed/?db=',0,'',NULL,3),(2,'Latest Plugins','http://plugins.gregarius.net/rss.php?db=',1,'',NULL,5),(3,'Latest Themes','http://themes.gregarius.net/rss.php?db=',1,'',NULL,5),(4,'Latest Forum posts','http://forums.gregarius.net/feeds/?Type=rss2&db=',1,'',NULL,5);
/*!40000 ALTER TABLE `dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders` (
  `id` tinyint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(127) NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
INSERT INTO `folders` (`id`, `name`, `position`) VALUES (0,'',0);
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gre__cache`
--

DROP TABLE IF EXISTS `gre__cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gre__cache` (
  `cachekey` varchar(128) NOT NULL,
  `timestamp` datetime NOT NULL,
  `cachetype` enum('ts','icon','feed') NOT NULL,
  `data` blob,
  PRIMARY KEY (`cachekey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gre__cache`
--

LOCK TABLES `gre__cache` WRITE;
/*!40000 ALTER TABLE `gre__cache` DISABLE KEYS */;
INSERT INTO `gre__cache` (`cachekey`, `timestamp`, `cachetype`, `data`) VALUES ('data_ts','2012-05-25 21:58:04','ts',NULL),('http://datavisualization.ch/favicon.ico','2012-05-03 18:17:29','icon','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0��a\0\0\0tEXtSoftware\0Adobe ImageReadyq�e<\0\0fiTXtXML:com.adobe.xmp\0\0\0\0\0<?xpacket begin=\"﻿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.0-c060 61.134777, 2010/02/12-17:32:00        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmpMM:OriginalDocumentID=\"xmp.did:ABB6A6546B2168118DBBFC8CA652800E\" xmpMM:DocumentID=\"xmp.did:CAE6FE4988E611DF95039AC584C25A94\" xmpMM:InstanceID=\"xmp.iid:CAE6FE4888E611DF95039AC584C25A94\" xmp:CreatorTool=\"Adobe Photoshop CS5 Macintosh\"> <xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:FC7F11740720681197A58484A29919BC\" stRef:documentID=\"xmp.did:ABB6A6546B2168118DBBFC8CA652800E\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end=\"r\"?>�5��\0\0IDATx�b<� �\0��X��4p\r��Y�10��R��� I��#\'��]�y����MT��Ǿ���#J3�����9Ûk7�X���`��E�r��`:��E���� \Z����,6����2\n��3A�������@��2`\r�� P��zd\0̀?h�B����.�Ì�m���@���Hf�����u�^c�b�q\'�ӱ�K������,B�YL�\r�_�~�{x䄐��-� 92�)�\\Hv~�$f�G@,`\0�5�1�_i\0\0\0\0IEND�B`�'),('http://www.underconsideration.com/favicon.ico','2012-05-03 18:18:01','icon','\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0(\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\\�\0���\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),('http://ilovetypography.com/favicon.ico','2012-05-03 18:31:07','icon','\0\0\0\0\0\0\0 \0h\0\0&\0\0\0  \0\0\0 \0�\0\0�\0\0(\0\0\0\0\0\0 \0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�����\0\0\0�\0\0\0�������������\0\0\0�\0\0\0�����\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�����\0\0\0�\0\0\0�����\0\0\0�\0\0\0�\0\0\0�\0\0\0�����\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�����\0\0\0�\0\0\0�����\0\0\0�\0\0\0�\0\0\0�\0\0\0�����\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�����\0\0\0�\0\0\0�����\0\0\0�\0\0\0�\0\0\0�\0\0\0�����\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�����\0\0\0�\0\0\0�����\0\0\0�\0\0\0�\0\0\0�������������\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0\0\0 \0\0\0@\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0�������������������������\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0�������������������������\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�������������������������\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0���������\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�������������������������\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0');
/*!40000 ALTER TABLE `gre__cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gre__channels`
--

DROP TABLE IF EXISTS `gre__channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gre__channels` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `siteurl` varchar(255) DEFAULT NULL,
  `parent` tinyint(4) DEFAULT '0',
  `descr` varchar(255) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `daterefreshed` datetime DEFAULT NULL,
  `refreshinterval` int(16) NOT NULL DEFAULT '60',
  `itemsincache` text,
  `etag` varchar(255) DEFAULT NULL,
  `lastmodified` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `mode` int(16) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gre__channels`
--

LOCK TABLES `gre__channels` WRITE;
/*!40000 ALTER TABLE `gre__channels` DISABLE KEYS */;
INSERT INTO `gre__channels` (`id`, `title`, `url`, `siteurl`, `parent`, `descr`, `dateadded`, `daterefreshed`, `refreshinterval`, `itemsincache`, `etag`, `lastmodified`, `icon`, `position`, `mode`) VALUES (1,'TechCrunch','http://feeds.feedburner.com/TechCrunch/','http://techcrunch.com',0,'TechCrunch is a group-edited blog that profiles the companies, products and events defining and transforming the new web.','2012-05-03 18:12:06','2012-05-25 21:58:00',60,'a:20:{i:0;i:281;i:1;i:283;i:2;i:284;i:3;i:286;i:4;i:287;i:5;i:288;i:6;i:290;i:7;i:291;i:8;i:292;i:9;i:294;i:10;i:296;i:11;i:297;i:12;i:300;i:13;i:301;i:14;i:303;i:15;i:305;i:16;i:307;i:17;i:308;i:18;i:309;i:19;i:310;}','AHAcIdkiPVyfdxBDjS0qYyuCaso','Sat, 26 May 2012 02:55:43 GMT','',0,1),(2,'Bits','http://bits.blogs.nytimes.com/feed/','http://bits.blogs.nytimes.com/',0,'Business, Innovation, Technology, Society','2012-05-03 18:12:34','2012-05-25 21:58:01',60,'a:15:{i:0;i:327;i:1;i:328;i:2;i:329;i:3;i:330;i:4;i:331;i:5;i:332;i:6;i:333;i:7;i:334;i:8;i:335;i:9;i:336;i:10;i:337;i:11;i:338;i:12;i:339;i:13;i:341;i:14;i:342;}','\"de56d814a000e38c2ccb8b8cc0491f62\"','Fri, 25 May 2012 23:03:08 GMT','',1,1),(3,'manystuff.org  â€” Graphic Design daily selection','http://www.manystuff.org/?feed=rss2','http://www.manystuff.org',0,'Graphic Design daily selection','2012-05-03 18:14:46','2012-05-25 21:58:03',60,'a:20:{i:0;i:359;i:1;i:360;i:2;i:361;i:3;i:362;i:4;i:363;i:5;i:364;i:6;i:365;i:7;i:366;i:8;i:367;i:9;i:368;i:10;i:369;i:11;i:370;i:12;i:371;i:13;i:372;i:14;i:373;i:15;i:374;i:16;i:375;i:17;i:376;i:18;s:3:\"276\";i:19;i:377;}','\"f89621ffcb39b7ffe7f8498d6dc60d80\"','Fri, 25 May 2012 09:46:45 GMT','',2,1),(4,'CreativeApplications.Net','http://feeds.feedburner.com/creativeapplicationsnet','http://www.creativeapplications.net',0,'Apps that Inspire..','2012-05-03 18:15:09','2012-05-25 21:58:00',60,'a:12:{i:0;i:279;i:1;i:280;i:2;i:282;i:3;i:285;i:4;i:289;i:5;i:293;i:6;i:295;i:7;i:298;i:8;i:299;i:9;i:302;i:10;i:304;i:11;i:306;}','2Fwcs99BzZQc85uuyRYG9G/ipW8','Sat, 26 May 2012 02:40:05 GMT','',3,1),(5,'Observers Room from Design Observer','http://feeds.feedburner.com/designobserver/observersroom','http://observersroom.designobserver.com',0,'Observers Room from Design Observer','2012-05-03 18:16:18','2012-05-25 21:58:01',60,'a:35:{i:0;i:311;i:1;i:312;i:2;i:313;i:3;i:314;i:4;i:315;i:5;i:316;i:6;i:317;i:7;i:318;i:8;i:319;i:9;i:320;i:10;i:321;i:11;i:322;i:12;i:323;i:13;i:324;i:14;i:325;i:15;i:326;i:16;s:3:\"235\";i:17;s:3:\"236\";i:18;s:3:\"237\";i:19;s:3:\"184\";i:20;s:2:\"68\";i:21;s:2:\"69\";i:22;s:2:\"70\";i:23;s:2:\"71\";i:24;s:2:\"72\";i:25;s:2:\"73\";i:26;s:2:\"74\";i:27;s:2:\"75\";i:28;s:2:\"76\";i:29;s:2:\"77\";i:30;s:2:\"78\";i:31;s:2:\"79\";i:32;s:2:\"80\";i:33;s:2:\"81\";i:34;s:2:\"82\";}','C533FHPz5j8jk3Jru3m4b3OPD/M','Sat, 26 May 2012 01:42:40 GMT','',4,1),(6,'Datavisualization.ch','http://feeds.feedburner.com/Datavisualization','http://datavisualization.ch',0,'Datavisualization.ch is the premier news and knowledge resource for data visualization and infographics.','2012-05-03 18:17:29','2012-05-25 21:58:01',60,'a:10:{i:0;s:3:\"258\";i:1;s:2:\"83\";i:2;s:2:\"84\";i:3;s:2:\"85\";i:4;s:2:\"86\";i:5;s:2:\"87\";i:6;s:2:\"88\";i:7;s:2:\"89\";i:8;s:2:\"90\";i:9;s:2:\"91\";}','oXz33uG37g2QrrrzZ5EgO6qSO5s','Sat, 26 May 2012 02:48:43 GMT','blob:http://datavisualization.ch/favicon.ico',5,1),(7,'FPO: For Print Only','http://feeds.feedburner.com/ucllc/fpo','http://www.underconsideration.com/fpo/',0,'','2012-05-03 18:18:01','2012-05-25 21:58:01',60,'a:15:{i:0;i:340;i:1;i:343;i:2;i:344;i:3;i:345;i:4;i:346;i:5;i:347;i:6;i:348;i:7;i:349;i:8;i:350;i:9;i:351;i:10;i:352;i:11;i:353;i:12;i:354;i:13;i:355;i:14;i:356;}','OseMrtJpxifHxEDMbusbXt5UG5Y','Sat, 26 May 2012 02:34:47 GMT','blob:http://www.underconsideration.com/favicon.ico',6,1),(8,'Substratum Series','http://substratumseries.com/feed.xml','http://substratumseries.com/',0,'Todayâ€™s most influential designers and artists share their thoughts on being and creating, community and collaboration, and having an impact. 10 questions per interview, 2 interviews per issue, 1 issue per week.','2012-05-03 18:29:29','2012-05-25 21:58:02',60,'a:14:{i:0;i:108;i:1;i:109;i:2;i:110;i:3;i:111;i:4;i:112;i:5;i:113;i:6;i:114;i:7;i:115;i:8;i:116;i:9;i:117;i:10;i:118;i:11;i:119;i:12;i:120;i:13;i:121;}','\"2f3fe1d-34a3e-4be49b9af3500\"','Sun, 22 Apr 2012 19:42:44 GMT','',7,1),(9,'visualcomplexity.com','http://feeds.feedburner.com/visualcomplexity','http://www.visualcomplexity.com',0,'A visual exploration on mapping complex networks','2012-05-03 18:30:14','2012-05-25 21:58:02',60,'a:23:{i:0;i:122;i:1;i:123;i:2;i:124;i:3;i:125;i:4;i:126;i:5;i:127;i:6;i:128;i:7;i:129;i:8;i:130;i:9;i:131;i:10;i:132;i:11;i:133;i:12;i:134;i:13;i:135;i:14;i:136;i:15;i:137;i:16;i:138;i:17;i:139;i:18;i:140;i:19;i:141;i:20;i:142;i:21;i:143;i:22;i:144;}','HBn1IMQy/0ydQeihHQGaxUeO28k','Thu, 03 May 2012 22:01:56 GMT','',8,1),(10,'I love typography, the typography and fonts blog','http://feeds.feedburner.com/ILoveTypography','http://ilovetypography.com',0,'','2012-05-03 18:31:07','2012-05-25 21:58:02',60,'a:10:{i:0;i:357;i:1;i:358;i:2;s:3:\"274\";i:3;s:3:\"275\";i:4;s:3:\"145\";i:5;s:3:\"146\";i:6;s:3:\"147\";i:7;s:3:\"148\";i:8;s:3:\"149\";i:9;s:3:\"150\";}','HyxvpyM7N7EfTRx61y9XgSMxx8s','Sat, 26 May 2012 02:30:32 GMT','blob:http://ilovetypography.com/favicon.ico',9,1);
/*!40000 ALTER TABLE `gre__channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gre__config`
--

DROP TABLE IF EXISTS `gre__config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gre__config` (
  `key_` varchar(127) NOT NULL DEFAULT '',
  `value_` text NOT NULL,
  `default_` text NOT NULL,
  `type_` enum('string','num','boolean','array','enum') NOT NULL DEFAULT 'string',
  `desc_` text,
  `export_` varchar(127) DEFAULT NULL,
  PRIMARY KEY (`key_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gre__config`
--

LOCK TABLES `gre__config` WRITE;
/*!40000 ALTER TABLE `gre__config` DISABLE KEYS */;
INSERT INTO `gre__config` (`key_`, `value_`, `default_`, `type_`, `desc_`, `export_`) VALUES ('rss.output.encoding','UTF-8','UTF-8','string','Output encoding for the PHP XML parser.','MAGPIE_OUTPUT_ENCODING'),('rss.output.itemsinchannelview','10','10','num','Number of read items shown on for a single channel.',NULL),('rss.output.showfavicons','true','true','boolean','Display the favicon for the channels that have one. Due to a IE bug, some icons do not render correctly. You can either change the URL to the icon in the admin screen, or turn the display of favicons off globally here.',NULL),('rss.output.usemodrewrite','true','true','boolean','Make use of apache\'s mod_rewrite module to return sexy urls. Turn this off if your host doesn\'t allow you to change this apache setting.',NULL),('rss.config.dateformat','F jS, Y, g:ia T','F jS, Y, g:ia T','string','Format to use when displaying dates. See here for help on the format: http://php.net/date Note that direct access to a given feed\'s month and day archives more or less depends on the fact that this date format contains the  \"F\" (Month) and \"jS\" (day) elements in this form. So feel free to change the order of the elements, but better leave those two tokens in :)',NULL),('rss.meta.debug','false','false','boolean',' When in debug mode some extra debug info is shown and the error reporting is a bit more verbose.',NULL),('rss.output.compression','true','true','boolean','This variable turns output compression on and off. Output compression is handled by most browsers.',NULL),('rss.output.channelcollapse','true','true','boolean','Allow collapsing of channels on the main page. ',NULL),('rss.output.channelcollapsedefault','false','false','boolean','Collapse the channels on the main page by default',NULL),('rss.output.usepermalinks','true','true','boolean','Display a permalink icon and allow linking a given item directly.',NULL),('rss.config.markreadonupdate','false','false','boolean','Mark all old unread feeds as read when updating if new unread feeds are found.',NULL),('rss.output.lang','en_US,zh_CN,de,da,es,fr,he,it,ja,pt_BR,pt,ru,sv,0','en_US,zh_CN,de,da,es,fr,he,it,ja,pt_BR,pt,ru,sv,0','enum','Language pack to use.',NULL),('rss.output.lang.force','false','false','boolean','When false, Gregarius will negotiate the display language with the browser and will fall back to the language defined in rss.output.lang if the negotiation fails. When true, Gregarius won\'t negotiate and will always use the language defined in rss.output.lang.',NULL),('rss.config.absoluteordering','true','true','boolean','Allow feeds and folders to be ordered by their order in the admin section. If this option is set to false, channels and folders will be organized alphabetically by their titles.',NULL),('rss.config.robotsmeta','noindex,follow','noindex,follow','string','How should spiders crawl us? (see http://www.robotstxt.org/wc/meta-user.html for more info).',NULL),('rss.config.serverpush','true','true','boolean','Use the server push method when updating your feeds in the browser. The browsers that support this (Mozilla and Opera) will be autodetected. Turn this option off if you do not use one of these browsers or if you would like to use the Ajax update method',NULL),('rss.config.refreshafter','45','45','num','If this option is set the feeds will be updated after keeping the browser open for x minutes. Please respect the feed providers by not setting this value to anything lower than thirty minutes. Set this variable to 0 turn this option off.',NULL),('rss.input.allowed','a:21:{s:1:\"a\";a:2:{s:4:\"href\";i:1;s:5:\"title\";i:1;}s:1:\"b\";a:0:{}s:10:\"blockquote\";a:0:{}s:2:\"br\";a:0:{}s:4:\"code\";a:0:{}s:3:\"del\";a:0:{}s:2:\"em\";a:0:{}s:1:\"i\";a:0:{}s:3:\"img\";a:2:{s:3:\"src\";i:1;s:3:\"alt\";i:1;}s:3:\"ins\";a:0:{}s:2:\"li\";a:0:{}s:2:\"ol\";a:0:{}s:1:\"p\";a:0:{}s:3:\"pre\";a:0:{}s:3:\"sup\";a:0:{}s:5:\"table\";a:0:{}s:2:\"td\";a:0:{}s:2:\"th\";a:0:{}s:2:\"tr\";a:0:{}s:2:\"tt\";a:0:{}s:2:\"ul\";a:0:{}}','a:21:{s:1:\"a\";a:2:{s:4:\"href\";i:1;s:5:\"title\";i:1;}s:1:\"b\";a:0:{}s:10:\"blockquote\";a:0:{}s:2:\"br\";a:0:{}s:4:\"code\";a:0:{}s:3:\"del\";a:0:{}s:2:\"em\";a:0:{}s:1:\"i\";a:0:{}s:3:\"img\";a:2:{s:3:\"src\";i:1;s:3:\"alt\";i:1;}s:3:\"ins\";a:0:{}s:2:\"li\";a:0:{}s:2:\"ol\";a:0:{}s:1:\"p\";a:0:{}s:3:\"pre\";a:0:{}s:3:\"sup\";a:0:{}s:5:\"table\";a:0:{}s:2:\"td\";a:0:{}s:2:\"th\";a:0:{}s:2:\"tr\";a:0:{}s:2:\"tt\";a:0:{}s:2:\"ul\";a:0:{}}','array','This variable controls input filtering. HTML tags and their attributes, which are not in this list, get filtered out when new RSS items are imported.',NULL),('rss.output.showfeedmeta','false','false','boolean','Display meta-information (like a web- and rss/rdf/xml url) about each feed in the feed side-column.',NULL),('rss.output.frontpage.numitems','100','100','num','Maximum number of items displayed on the main page. Set this variable to 0 to show no items on the main page.',NULL),('rss.output.frontpage.mixeditems','true','true','boolean','Show read items along with unread items on the front page?',NULL),('rss.output.frontpage.numreaditems','-1','-1','num','If there are no unread items then how many items to show on the frontpage. Set this to -1 if you want it to be the same as rss.output.numitemsonmainpage',NULL),('rss.output.theme','lilina','default','string','The theme to use. Download more themes from the <a href=\"http://themes.gregarius.net/\">Gregarius Themes Repository</a>.',NULL),('rss.output.cachecontrol','false','false','boolean','If true, Gregarius will negotiate with the browser and check whether it should get a fresh document or not.',NULL),('rss.config.plugins','a:2:{i:0;s:13:\"urlfilter.php\";i:1;s:18:\"roundedcorners.php\";}','a:2:{i:0;s:13:\"urlfilter.php\";i:1;s:18:\"roundedcorners.php\";}','array','Plugins are third-party scripts that offer extended functionalities. More plugins can be found at the <a href=\"http://plugins.gregarius.net/\">Plugin Repository</a>.',NULL),('rss.input.allowupdates','true','true','boolean','Allow Gregarius to see if new items are updates of existing items.',NULL),('rss.output.titleunreadcnt','false','false','boolean','Display unread count in the document title.',NULL),('rss.config.tzoffset','0','0','num','Timezone offset, in hours, between your local time and server time. Valid range: \"-12\" through \"12\"',NULL),('rss.config.feedgrouping','false','false','boolean','When true, Gregarius groups unread items per feed and sorts the feeds according to the <code>rss.config.absoluteordering</code> configuration switch. When false, unread items are not grouped by feed, but are sorted by date instead.',NULL),('rss.config.datedesc.unread','true','true','boolean','When true, Gregarius displays newer <strong>unread</strong> items first. If false, Gregarius will display older unread items first.',NULL),('rss.config.datedesc.read','true','true','boolean','When true, Gregarius displays newer <strong>read</strong> items first. If false, Gregarius will display older read items first.',NULL),('rss.config.autologout','false','false','boolean','When true, Gregarius will automatically remove the \"admin cookie\" when the browser window is closed, effectively logging you out.',NULL),('rss.config.publictagging','false','false','boolean','When true, every visitor to your Gregarius site will be allowed to tag items, when false only the Administrator (you) is allowed to tag.',NULL),('rss.config.rating','true','true','boolean','Enable the item rating system.',NULL),('rss.output.barefrontpage','false','false','boolean','Suppress the output of any read item on the front page.',NULL),('rss.output.title','Gregarius','Gregarius','string','Sets the title of this feedreader.',NULL),('rss.config.ajaxparallelsize','3','3','num','Sets the number of feeds to update in parallel. Remember to set rss.config.serverpush to false.',NULL),('rss.config.ajaxbatchsize','3','3','num','Sets the number of feeds in a batch when using the ajax updater. Remember to set rss.config.serverpush to false.',NULL),('rss.config.defaultdashboard','true','true','boolean','If the first page seen when entering the admin section should be the dashboard',NULL),('rss.config.deadthreshhold','24','24','num','Sets the threshold for when a feed is marked as dead, in hours',NULL),('rss.search.maxitems','500','500','num','Sets the maximum number of items returned on a search',NULL),('rss.config.restrictrefresh','false','false','boolean','Restrict refresh to command line only (eg php -f update.php). Useful for busy sites with multiple users.',NULL),('rss.output.minimalchannellist','false','false','boolean','Exclude folders and channels without unread items in channel list?',NULL);
/*!40000 ALTER TABLE `gre__config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gre__dashboard`
--

DROP TABLE IF EXISTS `gre__dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gre__dashboard` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `url` text NOT NULL,
  `position` tinyint(1) NOT NULL DEFAULT '0',
  `obj` text NOT NULL,
  `daterefreshed` datetime DEFAULT NULL,
  `itemcount` tinyint(1) NOT NULL DEFAULT '3',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gre__dashboard`
--

LOCK TABLES `gre__dashboard` WRITE;
/*!40000 ALTER TABLE `gre__dashboard` DISABLE KEYS */;
INSERT INTO `gre__dashboard` (`id`, `title`, `url`, `position`, `obj`, `daterefreshed`, `itemcount`) VALUES (1,'Latest Gregarius News','http://devlog.gregarius.net/feed/?db=',0,'',NULL,3),(2,'Latest Plugins','http://plugins.gregarius.net/rss.php?db=',1,'',NULL,5),(3,'Latest Themes','http://themes.gregarius.net/rss.php?db=',1,'',NULL,5),(4,'Latest Forum posts','http://forums.gregarius.net/feeds/?Type=rss2&db=',1,'',NULL,5);
/*!40000 ALTER TABLE `gre__dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gre__folders`
--

DROP TABLE IF EXISTS `gre__folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gre__folders` (
  `id` tinyint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(127) NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gre__folders`
--

LOCK TABLES `gre__folders` WRITE;
/*!40000 ALTER TABLE `gre__folders` DISABLE KEYS */;
INSERT INTO `gre__folders` (`id`, `name`, `position`) VALUES (0,'',0);
/*!40000 ALTER TABLE `gre__folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gre__item`
--

DROP TABLE IF EXISTS `gre__item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gre__item` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `cid` bigint(11) NOT NULL DEFAULT '0',
  `md5sum` varchar(32) DEFAULT NULL,
  `guid` text,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `enclosure` varchar(255) DEFAULT NULL,
  `description` text,
  `unread` tinyint(4) DEFAULT '1',
  `pubdate` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `url` (`url`),
  KEY `guid` (`guid`(10)),
  KEY `cid` (`cid`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=378 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gre__item`
--

LOCK TABLES `gre__item` WRITE;
/*!40000 ALTER TABLE `gre__item` DISABLE KEYS */;
/*!40000 ALTER TABLE `gre__item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gre__metatag`
--

DROP TABLE IF EXISTS `gre__metatag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gre__metatag` (
  `fid` bigint(16) NOT NULL DEFAULT '0',
  `tid` bigint(16) NOT NULL DEFAULT '0',
  `ttype` enum('item','folder','channel') NOT NULL DEFAULT 'item',
  `tdate` datetime DEFAULT NULL,
  KEY `fid` (`fid`),
  KEY `tid` (`tid`),
  KEY `ttype` (`ttype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gre__metatag`
--

LOCK TABLES `gre__metatag` WRITE;
/*!40000 ALTER TABLE `gre__metatag` DISABLE KEYS */;
INSERT INTO `gre__metatag` (`fid`, `tid`, `ttype`, `tdate`) VALUES (1,1,'channel','2012-05-03 18:12:06'),(2,1,'channel','2012-05-03 18:12:43'),(3,2,'channel','2012-05-03 18:14:46'),(4,2,'channel','2012-05-03 18:15:09'),(5,2,'channel','2012-05-03 18:16:18'),(6,2,'channel','2012-05-03 18:17:29'),(7,2,'channel','2012-05-03 18:18:01'),(8,2,'channel','2012-05-03 18:29:29'),(9,2,'channel','2012-05-03 18:30:14'),(10,2,'channel','2012-05-03 18:31:07');
/*!40000 ALTER TABLE `gre__metatag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gre__properties`
--

DROP TABLE IF EXISTS `gre__properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gre__properties` (
  `fk_ref_object_id` text NOT NULL,
  `proptype` enum('item','feed','folder','category','plugin','tag','theme','misc') NOT NULL DEFAULT 'item',
  `property` varchar(128) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  UNIQUE KEY `uniq` (`fk_ref_object_id`(180),`property`,`proptype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gre__properties`
--

LOCK TABLES `gre__properties` WRITE;
/*!40000 ALTER TABLE `gre__properties` DISABLE KEYS */;
INSERT INTO `gre__properties` (`fk_ref_object_id`, `proptype`, `property`, `value`) VALUES ('1','feed','rss.config.refreshdate','i:1338001080;'),('2','feed','rss.config.refreshdate','i:1338001081;'),('3','feed','rss.config.refreshdate','i:1338001081;'),('4','feed','rss.config.refreshdate','i:1338001080;'),('5','feed','rss.config.refreshdate','i:1338001081;'),('6','feed','rss.config.refreshdate','i:1338001081;'),('7','feed','rss.config.refreshdate','i:1338001081;'),('8','feed','rss.config.refreshdate','i:1338001081;'),('9','feed','rss.config.refreshdate','i:1338001082;'),('10','feed','rss.config.refreshdate','i:1338001082;'),('__meta__','misc','meta.lastupdate','i:1338001084;');
/*!40000 ALTER TABLE `gre__properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gre__rating`
--

DROP TABLE IF EXISTS `gre__rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gre__rating` (
  `iid` bigint(16) NOT NULL,
  `rating` tinyint(4) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gre__rating`
--

LOCK TABLES `gre__rating` WRITE;
/*!40000 ALTER TABLE `gre__rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `gre__rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gre__tag`
--

DROP TABLE IF EXISTS `gre__tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gre__tag` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `tag` varchar(63) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gre__tag`
--

LOCK TABLES `gre__tag` WRITE;
/*!40000 ALTER TABLE `gre__tag` DISABLE KEYS */;
INSERT INTO `gre__tag` (`id`, `tag`) VALUES (1,'Tech'),(2,'Design');
/*!40000 ALTER TABLE `gre__tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gre__users`
--

DROP TABLE IF EXISTS `gre__users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gre__users` (
  `uid` bigint(16) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ulevel` bigint(11) NOT NULL DEFAULT '1',
  `realname` varchar(255) DEFAULT NULL,
  `lastip` varchar(255) DEFAULT NULL,
  `userips` text,
  `lastlogin` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`),
  KEY `uname` (`uname`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gre__users`
--

LOCK TABLES `gre__users` WRITE;
/*!40000 ALTER TABLE `gre__users` DISABLE KEYS */;
INSERT INTO `gre__users` (`uid`, `uname`, `password`, `ulevel`, `realname`, `lastip`, `userips`, `lastlogin`) VALUES (1,'admin','2f029a1250c44708d7865338918648af',99,'Administrator',NULL,' 128.172.172 128.172.172','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `gre__users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `cid` bigint(11) NOT NULL DEFAULT '0',
  `md5sum` varchar(32) DEFAULT NULL,
  `guid` text,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `enclosure` varchar(255) DEFAULT NULL,
  `description` text,
  `unread` tinyint(4) DEFAULT '1',
  `pubdate` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `url` (`url`),
  KEY `guid` (`guid`(10)),
  KEY `cid` (`cid`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metatag`
--

DROP TABLE IF EXISTS `metatag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metatag` (
  `fid` bigint(16) NOT NULL DEFAULT '0',
  `tid` bigint(16) NOT NULL DEFAULT '0',
  `ttype` enum('item','folder','channel') NOT NULL DEFAULT 'item',
  KEY `fid` (`fid`),
  KEY `tid` (`tid`),
  KEY `ttype` (`ttype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metatag`
--

LOCK TABLES `metatag` WRITE;
/*!40000 ALTER TABLE `metatag` DISABLE KEYS */;
/*!40000 ALTER TABLE `metatag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `properties` (
  `fk_ref_object_id` text NOT NULL,
  `proptype` enum('item','feed','folder','category','plugin','tag','theme','misc') NOT NULL DEFAULT 'item',
  `property` varchar(128) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  UNIQUE KEY `uniq` (`fk_ref_object_id`(180),`property`,`proptype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rating` (
  `iid` bigint(16) NOT NULL,
  `rating` tinyint(4) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `tag` varchar(63) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uid` bigint(16) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ulevel` bigint(11) NOT NULL DEFAULT '1',
  `realname` varchar(255) DEFAULT NULL,
  `lastip` varchar(255) DEFAULT NULL,
  `userips` text,
  `lastlogin` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`),
  KEY `uname` (`uname`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`uid`, `uname`, `password`, `ulevel`, `realname`, `lastip`, `userips`, `lastlogin`) VALUES (1,'admin','',99,'Administrator',NULL,NULL,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'thejsj_gregarius'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-12 23:32:00