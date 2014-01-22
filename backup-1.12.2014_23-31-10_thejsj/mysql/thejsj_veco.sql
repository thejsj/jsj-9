-- MySQL dump 10.13  Distrib 5.1.72, for unknown-linux-gnu (x86_64)
--
-- Host: localhost    Database: thejsj_veco
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
-- Table structure for table `jos_ak_profiles`
--

DROP TABLE IF EXISTS `jos_ak_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_ak_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `configuration` longtext,
  `filters` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_ak_profiles`
--

LOCK TABLES `jos_ak_profiles` WRITE;
/*!40000 ALTER TABLE `jos_ak_profiles` DISABLE KEYS */;
INSERT INTO `jos_ak_profiles` (`id`, `description`, `configuration`, `filters`) VALUES (1,'Default Backup Profile','[global]\n[akeeba]\ntuning.min_exec_time=\"2000\"\ntuning.max_exec_time=\"14\"\ntuning.run_time_bias=\"75\"\nquota.enable_size_quota=\"0\"\nquota.size_quota=\"15728640\"\nquota.enable_count_quota=\"0\"\nquota.count_quota=\"3\"\nbasic.output_directory=\"F:\\wamp\\www\\veco\\administrator\\components\\com_akeeba\\backup\"\nbasic.temporary_directory=\"F:\\wamp\\www\\glrc\\tmp\"\nbasic.log_level=\"4\"\nbasic.archive_name=\"site-[HOST]-[DATE]-[TIME]\"\nbasic.backup_type=\"full\"\nbasic.useiframe=\"0\"\nadvanced.dump_engine=\"native\"\nadvanced.scan_engine=\"smart\"\nadvanced.archiver_engine=\"jpa\"\nadvanced.proc_engine=\"none\"\nadvanced.embedded_installer=\"abi\"\nadvanced.virtual_folder=\"external_files\"\n[engine]\narchiver.common.dereference_symlinks=\"0\"\narchiver.common.part_size=\"0\"\narchiver.common.chunk_size=\"1048576\"\narchiver.common.big_file_threshold=\"1048576\"\narchiver.directftp.host=\"\"\narchiver.directftp.port=\"21\"\narchiver.directftp.user=\"\"\narchiver.directftp.pass=\"\"\narchiver.directftp.initial_directory=\"\"\narchiver.directftp.ftps=\"0\"\narchiver.directftp.passive_mode=\"1\"\narchiver.directftp.ftp_test=\"0\"\narchiver.zip.cd_glue_chunk_size=\"1048576\"\ndump.common.mysql_compatibility=\"0\"\ndump.common.extended_inserts=\"0\"\ndump.common.packet_size=\"131072\"\ndump.common.splitsize=\"524288\"\ndump.common.batchsize=\"1000\"\ndump.native.advanced_entitites=\"0\"\nscan.smart.large_dir_threshold=\"100\"\npostproc.common.after_part=\"0\"\npostproc.common.delete_after=\"1\"\npostproc.email.address=\"\"\npostproc.email.subject=\"\"\n','');
/*!40000 ALTER TABLE `jos_ak_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_ak_stats`
--

DROP TABLE IF EXISTS `jos_ak_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_ak_stats` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `comment` longtext,
  `backupstart` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `backupend` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('run','fail','complete') NOT NULL DEFAULT 'run',
  `origin` varchar(30) NOT NULL DEFAULT 'backend',
  `type` varchar(30) NOT NULL DEFAULT 'full',
  `profile_id` bigint(20) NOT NULL DEFAULT '1',
  `archivename` longtext,
  `absolute_path` longtext,
  `multipart` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(255) DEFAULT NULL,
  `filesexist` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_fullstatus` (`filesexist`,`status`),
  KEY `idx_stale` (`status`,`origin`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_ak_stats`
--

LOCK TABLES `jos_ak_stats` WRITE;
/*!40000 ALTER TABLE `jos_ak_stats` DISABLE KEYS */;
INSERT INTO `jos_ak_stats` (`id`, `description`, `comment`, `backupstart`, `backupend`, `status`, `origin`, `type`, `profile_id`, `archivename`, `absolute_path`, `multipart`, `tag`, `filesexist`) VALUES (1,'VeCo - Backup taken on Saturday, 06 November 2010 22:12','','2010-11-07 09:12:50','2010-11-07 09:14:06','complete','backend','full',1,'site-localhost-20101106-221250.jpa','F:/wamp/www/veco/administrator/components/com_akeeba/backup/site-localhost-20101106-221250.jpa',0,'backend',1),(2,'VECO Backup taken on Tuesday, 09 November 2010 23:39','','2010-11-10 11:40:10','2010-11-10 11:41:11','complete','backend','full',1,'site-localhost-20101109-234010.jpa','F:/wamp/www/veco/administrator/components/com_akeeba/backup/site-localhost-20101109-234010.jpa',0,'backend',1),(3,'VECO - Transefer','','2010-11-10 12:05:02','0000-00-00 00:00:00','complete','backend','full',1,'site-localhost-20101110-000502.jpa','F:/wamp/www/veco/administrator/components/com_akeeba/backup/site-localhost-20101110-000502.jpa',0,'backend',1);
/*!40000 ALTER TABLE `jos_ak_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_banner`
--

DROP TABLE IF EXISTS `jos_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_banner`
--

LOCK TABLES `jos_banner` WRITE;
/*!40000 ALTER TABLE `jos_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bannerclient`
--

DROP TABLE IF EXISTS `jos_bannerclient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_bannerclient`
--

LOCK TABLES `jos_bannerclient` WRITE;
/*!40000 ALTER TABLE `jos_bannerclient` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_bannerclient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bannertrack`
--

DROP TABLE IF EXISTS `jos_bannertrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_bannertrack`
--

LOCK TABLES `jos_bannertrack` WRITE;
/*!40000 ALTER TABLE `jos_bannertrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_bannertrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_categories`
--

DROP TABLE IF EXISTS `jos_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_categories`
--

LOCK TABLES `jos_categories` WRITE;
/*!40000 ALTER TABLE `jos_categories` DISABLE KEYS */;
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (1,0,'category','','category','','com_contact_details','left','',1,0,'0000-00-00 00:00:00',NULL,1,0,0,'');
/*!40000 ALTER TABLE `jos_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_components`
--

DROP TABLE IF EXISTS `jos_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_components`
--

LOCK TABLES `jos_components` WRITE;
/*!40000 ALTER TABLE `jos_components` DISABLE KEYS */;
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (1,'Banners','',0,0,'','Banner Management','com_banners',0,'js/ThemeOffice/component.png',0,'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n',1),(2,'Banners','',0,1,'option=com_banners','Active Banners','com_banners',1,'js/ThemeOffice/edit.png',0,'',1),(3,'Clients','',0,1,'option=com_banners&c=client','Manage Clients','com_banners',2,'js/ThemeOffice/categories.png',0,'',1),(4,'Web Links','option=com_weblinks',0,0,'','Manage Weblinks','com_weblinks',0,'js/ThemeOffice/component.png',0,'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n',1),(5,'Links','',0,4,'option=com_weblinks','View existing weblinks','com_weblinks',1,'js/ThemeOffice/edit.png',0,'',1),(6,'Categories','',0,4,'option=com_categories&section=com_weblinks','Manage weblink categories','',2,'js/ThemeOffice/categories.png',0,'',1),(7,'Contacts','option=com_contact',0,0,'','Edit contact details','com_contact',0,'js/ThemeOffice/component.png',1,'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n',1),(8,'Contacts','',0,7,'option=com_contact','Edit contact details','com_contact',0,'js/ThemeOffice/edit.png',1,'',1),(9,'Categories','',0,7,'option=com_categories&section=com_contact_details','Manage contact categories','',2,'js/ThemeOffice/categories.png',1,'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n',1),(10,'Polls','option=com_poll',0,0,'option=com_poll','Manage Polls','com_poll',0,'js/ThemeOffice/component.png',0,'',1),(11,'News Feeds','option=com_newsfeeds',0,0,'','News Feeds Management','com_newsfeeds',0,'js/ThemeOffice/component.png',0,'',1),(12,'Feeds','',0,11,'option=com_newsfeeds','Manage News Feeds','com_newsfeeds',1,'js/ThemeOffice/edit.png',0,'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n',1),(13,'Categories','',0,11,'option=com_categories&section=com_newsfeeds','Manage Categories','',2,'js/ThemeOffice/categories.png',0,'',1),(14,'User','option=com_user',0,0,'','','com_user',0,'',1,'',1),(15,'Search','option=com_search',0,0,'option=com_search','Search Statistics','com_search',0,'js/ThemeOffice/component.png',1,'enabled=0\n\n',1),(16,'Categories','',0,1,'option=com_categories&section=com_banner','Categories','',3,'',1,'',1),(17,'Wrapper','option=com_wrapper',0,0,'','Wrapper','com_wrapper',0,'',1,'',1),(18,'Mail To','',0,0,'','','com_mailto',0,'',1,'',1),(19,'Media Manager','',0,0,'option=com_media','Media Manager','com_media',0,'',1,'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n',1),(20,'Articles','option=com_content',0,0,'','','com_content',0,'',1,'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\n\n',1),(21,'Configuration Manager','',0,0,'','Configuration','com_config',0,'',1,'',1),(22,'Installation Manager','',0,0,'','Installer','com_installer',0,'',1,'',1),(23,'Language Manager','',0,0,'','Languages','com_languages',0,'',1,'administrator=en-GB\nsite=es-ES\n\n',1),(24,'Mass mail','',0,0,'','Mass Mail','com_massmail',0,'',1,'mailSubjectPrefix=\nmailBodySuffix=\n\n',1),(25,'Menu Editor','',0,0,'','Menu Editor','com_menus',0,'',1,'',1),(27,'Messaging','',0,0,'','Messages','com_messages',0,'',1,'',1),(28,'Modules Manager','',0,0,'','Modules','com_modules',0,'',1,'',1),(29,'Plugin Manager','',0,0,'','Plugins','com_plugins',0,'',1,'',1),(30,'Template Manager','',0,0,'','Templates','com_templates',0,'',1,'',1),(31,'User Manager','',0,0,'','Users','com_users',0,'',1,'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n',1),(32,'Cache Manager','',0,0,'','Cache','com_cache',0,'',1,'',1),(33,'Control Panel','',0,0,'','Control Panel','com_cpanel',0,'',1,'',1),(34,'K2','option=com_k2',0,0,'option=com_k2','K2','com_k2',0,'components/com_k2/images/system/k2-icon.png',0,'enable_css=1\nimagesQuality=100\nitemImageXS=100\nitemImageS=200\nitemImageM=400\nitemImageL=600\nitemImageXL=900\nitemImageGeneric=300\ncatImageWidth=100\ncatImageDefault=1\nuserImageWidth=100\nuserImageDefault=1\ncommenterImgWidth=48\nuserName=1\nuserImage=1\nuserDescription=1\nuserURL=1\nuserEmail=0\nuserFeed=1\nuserItemCount=10\nuserItemTitle=1\nuserItemTitleLinked=1\nuserItemDateCreated=1\nuserItemImage=1\nuserItemIntroText=1\nuserItemCategory=1\nuserItemTags=1\nuserItemCommentsAnchor=1\nuserItemReadMore=1\nuserItemK2Plugins=1\ngenericItemCount=10\ngenericItemTitle=1\ngenericItemTitleLinked=1\ngenericItemDateCreated=1\ngenericItemImage=1\ngenericItemIntroText=1\ngenericItemCategory=1\ngenericItemReadMore=1\ngenericItemExtraFields=0\ntagOrdering=\ncomments=2\ncommentsOrdering=DESC\ncommentsLimit=10\ncommentsFormPosition=below\ncommentsPublishing=1\ngravatar=1\nrecaptcha=0\nrecaptcha_public_key=\nrecaptcha_private_key=\nrecaptcha_theme=clean\ncommentsFormNotes=1\ncommentsFormNotesText=Make sure you enter the (*) required information where indicated.\\nBasic HTML code is allowed.\nsocialButtonCode=\ntwitterUsername=\ntinyURL=1\nfeedLimit=10\nfeedItemImage=1\nfeedImgSize=S\nfeedItemIntroText=1\nfeedTextWordLimit=\nfeedItemFullText=1\nfeedItemTags=0\nfeedItemVideo=0\nfeedItemGallery=0\nfeedItemAttachments=0\nintroTextCleanup=0\nintroTextCleanupExcludeTags=\nintroTextCleanupTagAttr=\nfullTextCleanup=0\nfullTextCleanupExcludeTags=\nfullTextCleanupTagAttr=\nxssFiltering=0\nlinkPopupWidth=900\nlinkPopupHeight=600\nfrontendEditing=1\nshowImageTab=1\nshowImageGalleryTab=1\nshowVideoTab=1\nshowExtraFieldsTab=1\nshowAttachmentsTab=1\nshowK2Plugins=1\nsideBarDisplayFrontend=0\nmergeEditors=1\nsideBarDisplay=1\nattachmentsFolder=\nhideImportButton=0\ntaggingSystem=1\nlockTags=0\ngoogleSearch=0\ngoogleSearchContainer=k2Container\nK2UserProfile=1\nK2UserGroup=1\nredirect=\nadminSearch=simple\nshowItemsCounterAdmin=1\nshowChildCatItems=1\ndisableCompactOrdering=0\nSEFReplacements=Å \\|S, Å’\\|O, Å½\\|Z, Å¡\\|s, Å“\\|oe, Å¾\\|z, Å¸\\|Y, Â¥\\|Y, Âµ\\|u, Ã€\\|A, Ã�\\|A, Ã‚\\|A, Ãƒ\\|A, Ã„\\|A, Ã…\\|A, Ã†\\|A, Ã‡\\|C, Ãˆ\\|E, Ã‰\\|E, ÃŠ\\|E, Ã‹\\|E, ÃŒ\\|I, Ã�\\|I, ÃŽ\\|I, Ã�\\|I, Ã�\\|D, Ã‘\\|N, Ã’\\|O, Ã“\\|O, Ã”\\|O, Ã•\\|O, Ã–\\|O, Ã˜\\|O, Ã™\\|U, Ãš\\|U, Ã›\\|U, Ãœ\\|U, Ã�\\|Y, ÃŸ\\|s, Ã \\|a, Ã¡\\|a, Ã¢\\|a, Ã£\\|a, Ã¤\\|a, Ã¥\\|a, Ã¦\\|a, Ã§\\|c, Ã¨\\|e, Ã©\\|e, Ãª\\|e, Ã«\\|e, Ã¬\\|i, Ã­\\|i, Ã®\\|i, Ã¯\\|i, Ã°\\|o, Ã±\\|n, Ã²\\|o, Ã³\\|o, Ã´\\|o, Ãµ\\|o, Ã¶\\|o, Ã¸\\|o, Ã¹\\|u, Ãº\\|u, Ã»\\|u, Ã¼\\|u, Ã½\\|y, Ã¿\\|y, ÃŸ\\|ss\nmetaDescLimit=150\nsh404SefLabelCat=\nsh404SefLabelUser=blog\nsh404SefLabelItem=2\n\n',1),(35,'FBExtensionInstaller','',0,0,'','FBExtensionInstaller','com_fbextensioninstaller',0,'',0,'',1),(36,'Akeeba Backup','option=com_akeeba',0,0,'option=com_akeeba','Akeeba Backup','com_akeeba',0,'components/com_akeeba/assets/images/akeeba-16.png',0,'siteurl=http://localhost/veco/\njversion=1.5\n\n',1),(37,'JCE','option=com_jce',0,0,'option=com_jce','JCE','com_jce',0,'components/com_jce/img/logo.png',0,'\npackage=1',1),(38,'JCE MENU CPANEL','',0,37,'option=com_jce','JCE MENU CPANEL','com_jce',0,'templates/khepri/images/menu/icon-16-cpanel.png',0,'',1),(39,'JCE MENU CONFIG','',0,37,'option=com_jce&type=config','JCE MENU CONFIG','com_jce',1,'templates/khepri/images/menu/icon-16-config.png',0,'',1),(40,'JCE MENU GROUPS','',0,37,'option=com_jce&type=group','JCE MENU GROUPS','com_jce',2,'templates/khepri/images/menu/icon-16-user.png',0,'',1),(41,'JCE MENU PLUGINS','',0,37,'option=com_jce&type=plugin','JCE MENU PLUGINS','com_jce',3,'templates/khepri/images/menu/icon-16-plugin.png',0,'',1),(42,'JCE MENU INSTALL','',0,37,'option=com_jce&type=install','JCE MENU INSTALL','com_jce',4,'templates/khepri/images/menu/icon-16-install.png',0,'',1);
/*!40000 ALTER TABLE `jos_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_contact_details`
--

DROP TABLE IF EXISTS `jos_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_contact_details`
--

LOCK TABLES `jos_contact_details` WRITE;
/*!40000 ALTER TABLE `jos_contact_details` DISABLE KEYS */;
INSERT INTO `jos_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`) VALUES (1,'jorge','jorge','','','','','','','','','','joomla-dev_cycle.png',NULL,'',0,1,0,'0000-00-00 00:00:00',1,'show_name=1\nshow_position=1\nshow_email=0\nshow_street_address=1\nshow_suburb=1\nshow_state=1\nshow_postcode=1\nshow_country=1\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nshow_webpage=1\nshow_misc=1\nshow_image=1\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=',63,1,0,'',''),(2,'jkjhhj','g7yf','','','','','','','','','','joomla-dev_cycle.png',NULL,'',0,1,0,'0000-00-00 00:00:00',2,'show_name=1\nshow_position=1\nshow_email=0\nshow_street_address=1\nshow_suburb=1\nshow_state=1\nshow_postcode=1\nshow_country=1\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nshow_webpage=1\nshow_misc=1\nshow_image=1\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=',62,1,0,'','');
/*!40000 ALTER TABLE `jos_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content`
--

DROP TABLE IF EXISTS `jos_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content`
--

LOCK TABLES `jos_content` WRITE;
/*!40000 ALTER TABLE `jos_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content_frontpage`
--

DROP TABLE IF EXISTS `jos_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content_frontpage`
--

LOCK TABLES `jos_content_frontpage` WRITE;
/*!40000 ALTER TABLE `jos_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content_rating`
--

DROP TABLE IF EXISTS `jos_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content_rating`
--

LOCK TABLES `jos_content_rating` WRITE;
/*!40000 ALTER TABLE `jos_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro`
--

DROP TABLE IF EXISTS `jos_core_acl_aro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro`
--

LOCK TABLES `jos_core_acl_aro` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro` DISABLE KEYS */;
INSERT INTO `jos_core_acl_aro` (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES (10,'users','62',0,'Administrator',0),(11,'users','63',0,'Juan Matheus',0);
/*!40000 ALTER TABLE `jos_core_acl_aro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro_groups`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro_groups`
--

LOCK TABLES `jos_core_acl_aro_groups` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_groups` DISABLE KEYS */;
INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES (17,0,'ROOT',1,22,'ROOT'),(28,17,'USERS',2,21,'USERS'),(29,28,'Public Frontend',3,12,'Public Frontend'),(18,29,'Registered',4,11,'Registered'),(19,18,'Author',5,10,'Author'),(20,19,'Editor',6,9,'Editor'),(21,20,'Publisher',7,8,'Publisher'),(30,28,'Public Backend',13,20,'Public Backend'),(23,30,'Manager',14,19,'Manager'),(24,23,'Administrator',15,18,'Administrator'),(25,24,'Super Administrator',16,17,'Super Administrator');
/*!40000 ALTER TABLE `jos_core_acl_aro_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro_map`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro_map`
--

LOCK TABLES `jos_core_acl_aro_map` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_acl_aro_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro_sections`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro_sections`
--

LOCK TABLES `jos_core_acl_aro_sections` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_sections` DISABLE KEYS */;
INSERT INTO `jos_core_acl_aro_sections` (`id`, `value`, `order_value`, `name`, `hidden`) VALUES (10,'users',1,'Users',0);
/*!40000 ALTER TABLE `jos_core_acl_aro_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_groups_aro_map`
--

DROP TABLE IF EXISTS `jos_core_acl_groups_aro_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_groups_aro_map`
--

LOCK TABLES `jos_core_acl_groups_aro_map` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_groups_aro_map` DISABLE KEYS */;
INSERT INTO `jos_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES (24,'',11),(25,'',10);
/*!40000 ALTER TABLE `jos_core_acl_groups_aro_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_log_items`
--

DROP TABLE IF EXISTS `jos_core_log_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_log_items`
--

LOCK TABLES `jos_core_log_items` WRITE;
/*!40000 ALTER TABLE `jos_core_log_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_log_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_log_searches`
--

DROP TABLE IF EXISTS `jos_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_log_searches`
--

LOCK TABLES `jos_core_log_searches` WRITE;
/*!40000 ALTER TABLE `jos_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_groups`
--

DROP TABLE IF EXISTS `jos_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_groups`
--

LOCK TABLES `jos_groups` WRITE;
/*!40000 ALTER TABLE `jos_groups` DISABLE KEYS */;
INSERT INTO `jos_groups` (`id`, `name`) VALUES (0,'Public'),(1,'Registered'),(2,'Special');
/*!40000 ALTER TABLE `jos_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_jce_groups`
--

DROP TABLE IF EXISTS `jos_jce_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_jce_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `users` text NOT NULL,
  `types` varchar(255) NOT NULL,
  `components` text NOT NULL,
  `rows` text NOT NULL,
  `plugins` varchar(255) NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_jce_groups`
--

LOCK TABLES `jos_jce_groups` WRITE;
/*!40000 ALTER TABLE `jos_jce_groups` DISABLE KEYS */;
INSERT INTO `jos_jce_groups` (`id`, `name`, `description`, `users`, `types`, `components`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES (1,'Default','Default group for all users with edit access','','19,20,21,23,24,25','','6,7,8,9,10,11,12,13,14,15,16,17,18,19;20,21,22,23,24,25,26,27,28,30,31,32,35,47;36,37,38,39,40,41,42,43,44,45,46;48,49,50,51,52,53,54,56,57','1,2,3,4,5,6,20,21,36,37,38,39,40,41,48,49,50,51,52,53,54,56,57',1,1,0,'0000-00-00 00:00:00',''),(2,'Front End','Sample Group for Authors, Editors, Publishers','','19,20,21','','6,7,8,9,10,13,14,15,16,17,18,19,27,28;20,21,25,26,30,31,35,42,43,44,46,47,49,50;24,32,38,39,41,45,48,51,52,53,54,56,57','6,20,21,49,50,1,3,5,38,39,41,48,51,52,53,54,56,57',0,2,0,'0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `jos_jce_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_jce_plugins`
--

DROP TABLE IF EXISTS `jos_jce_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_jce_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `layout` varchar(255) NOT NULL,
  `row` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(3) NOT NULL,
  `editable` tinyint(3) NOT NULL,
  `iscore` tinyint(3) NOT NULL,
  `elements` varchar(255) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plugin` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_jce_plugins`
--

LOCK TABLES `jos_jce_plugins` WRITE;
/*!40000 ALTER TABLE `jos_jce_plugins` DISABLE KEYS */;
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `iscore`, `elements`, `checked_out`, `checked_out_time`) VALUES (1,'Context Menu','contextmenu','plugin','','',0,0,1,0,1,'',0,'0000-00-00 00:00:00'),(2,'File Browser','browser','plugin','','',0,0,1,1,1,'',0,'0000-00-00 00:00:00'),(3,'Inline Popups','inlinepopups','plugin','','',0,0,1,0,1,'',0,'0000-00-00 00:00:00'),(4,'Media Support','media','plugin','','',0,0,1,1,1,'',0,'0000-00-00 00:00:00'),(5,'Safari Browser Support','safari','plugin','','',0,0,1,0,1,'',0,'0000-00-00 00:00:00'),(6,'Help','help','plugin','help','help',1,1,1,0,1,'',0,'0000-00-00 00:00:00'),(7,'New Document','newdocument','command','newdocument','newdocument',1,2,1,0,1,'',0,'0000-00-00 00:00:00'),(8,'Bold','bold','command','bold','bold',1,3,1,0,1,'',0,'0000-00-00 00:00:00'),(9,'Italic','italic','command','italic','italic',1,4,1,0,1,'',0,'0000-00-00 00:00:00'),(10,'Underline','underline','command','underline','underline',1,5,1,0,1,'',0,'0000-00-00 00:00:00'),(11,'Font Select','fontselect','command','fontselect','fontselect',1,6,1,0,1,'',0,'0000-00-00 00:00:00'),(12,'Font Size Select','fontsizeselect','command','fontsizeselect','fontsizeselect',1,7,1,0,1,'',0,'0000-00-00 00:00:00'),(13,'Style Select','styleselect','command','styleselect','styleselect',1,8,1,0,1,'',0,'0000-00-00 00:00:00'),(14,'StrikeThrough','strikethrough','command','strikethrough','strikethrough',1,9,1,0,1,'',0,'0000-00-00 00:00:00'),(15,'Justify Full','full','command','justifyfull','justifyfull',1,10,1,0,1,'',0,'0000-00-00 00:00:00'),(16,'Justify Center','center','command','justifycenter','justifycenter',1,11,1,0,1,'',0,'0000-00-00 00:00:00'),(17,'Justify Left','left','command','justifyleft','justifyleft',1,12,1,0,1,'',0,'0000-00-00 00:00:00'),(18,'Justify Right','right','command','justifyright','justifyright',1,13,1,0,1,'',0,'0000-00-00 00:00:00'),(19,'Format Select','formatselect','command','formatselect','formatselect',1,14,1,0,1,'',0,'0000-00-00 00:00:00'),(20,'Paste','paste','plugin','cut,copy,paste','paste',2,1,1,1,1,'',0,'0000-00-00 00:00:00'),(21,'Search Replace','searchreplace','plugin','search,replace','searchreplace',2,2,1,0,1,'',0,'0000-00-00 00:00:00'),(22,'Font ForeColour','forecolor','command','forecolor','forecolor',2,3,1,0,1,'',0,'0000-00-00 00:00:00'),(23,'Font BackColour','backcolor','command','backcolor','backcolor',2,4,1,0,1,'',0,'0000-00-00 00:00:00'),(24,'Unlink','unlink','command','unlink','unlink',2,5,1,0,1,'',0,'0000-00-00 00:00:00'),(25,'Indent','indent','command','indent','indent',2,6,1,0,1,'',0,'0000-00-00 00:00:00'),(26,'Outdent','outdent','command','outdent','outdent',2,7,1,0,1,'',0,'0000-00-00 00:00:00'),(27,'Undo','undo','command','undo','undo',2,8,1,0,1,'',0,'0000-00-00 00:00:00'),(28,'Redo','redo','command','redo','redo',2,9,1,0,1,'',0,'0000-00-00 00:00:00'),(29,'HTML','html','command','code','code',2,10,1,0,1,'',0,'0000-00-00 00:00:00'),(30,'Numbered List','numlist','command','numlist','numlist',2,11,1,0,1,'',0,'0000-00-00 00:00:00'),(31,'Bullet List','bullist','command','bullist','bullist',2,12,1,0,1,'',0,'0000-00-00 00:00:00'),(32,'Anchor','anchor','command','anchor','anchor',2,13,1,0,1,'',0,'0000-00-00 00:00:00'),(33,'Image','image','command','image','image',2,14,1,0,1,'',0,'0000-00-00 00:00:00'),(34,'Link','link','command','link','link',2,15,1,0,1,'',0,'0000-00-00 00:00:00'),(35,'Code Cleanup','cleanup','command','cleanup','cleanup',2,16,1,0,1,'',0,'0000-00-00 00:00:00'),(36,'Directionality','directionality','plugin','ltr,rtl','directionality',3,1,1,0,1,'',0,'0000-00-00 00:00:00'),(37,'Emotions','emotions','plugin','emotions','emotions',3,2,1,0,1,'',0,'0000-00-00 00:00:00'),(38,'Fullscreen','fullscreen','plugin','fullscreen','fullscreen',3,3,1,0,1,'',0,'0000-00-00 00:00:00'),(39,'Preview','preview','plugin','preview','preview',3,4,1,0,1,'',0,'0000-00-00 00:00:00'),(40,'Tables','table','plugin','tablecontrols','buttons',3,5,1,0,1,'',0,'0000-00-00 00:00:00'),(41,'Print','print','plugin','print','print',3,6,1,0,1,'',0,'0000-00-00 00:00:00'),(42,'Horizontal Rule','hr','command','hr','hr',3,7,1,0,1,'',0,'0000-00-00 00:00:00'),(43,'Subscript','sub','command','sub','sub',3,8,1,0,1,'',0,'0000-00-00 00:00:00'),(44,'Superscript','sup','command','sup','sup',3,9,1,0,1,'',0,'0000-00-00 00:00:00'),(45,'Visual Aid','visualaid','command','visualaid','visualaid',3,10,1,0,1,'',0,'0000-00-00 00:00:00'),(46,'Character Map','charmap','command','charmap','charmap',3,11,1,0,1,'',0,'0000-00-00 00:00:00'),(47,'Remove Format','removeformat','command','removeformat','removeformat',2,1,1,0,1,'',0,'0000-00-00 00:00:00'),(48,'Styles','style','plugin','styleprops','style',4,1,1,0,1,'',0,'0000-00-00 00:00:00'),(49,'Non-Breaking','nonbreaking','plugin','nonbreaking','nonbreaking',4,2,1,0,1,'',0,'0000-00-00 00:00:00'),(50,'Visual Characters','visualchars','plugin','visualchars','visualchars',4,3,1,0,1,'',0,'0000-00-00 00:00:00'),(51,'XHTML Xtras','xhtmlxtras','plugin','cite,abbr,acronym,del,ins,attribs','xhtmlxtras',4,4,1,0,1,'',0,'0000-00-00 00:00:00'),(52,'Image Manager','imgmanager','plugin','imgmanager','imgmanager',4,5,1,1,1,'',0,'0000-00-00 00:00:00'),(53,'Advanced Link','advlink','plugin','advlink','advlink',4,6,1,1,1,'',0,'0000-00-00 00:00:00'),(54,'Spell Checker','spellchecker','plugin','spellchecker','spellchecker',4,7,1,1,1,'',0,'0000-00-00 00:00:00'),(55,'Layers','layer','plugin','insertlayer,moveforward,movebackward,absolute','layer',4,8,1,0,1,'',0,'0000-00-00 00:00:00'),(56,'Advanced Code Editor','advcode','plugin','advcode','advcode',4,9,1,0,1,'',0,'0000-00-00 00:00:00'),(57,'Article Breaks','article','plugin','readmore,pagebreak','article',4,10,1,0,1,'',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `jos_jce_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_attachments`
--

DROP TABLE IF EXISTS `jos_k2_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_k2_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemID` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleAttribute` text NOT NULL,
  `hits` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `itemID` (`itemID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_k2_attachments`
--

LOCK TABLES `jos_k2_attachments` WRITE;
/*!40000 ALTER TABLE `jos_k2_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_k2_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_categories`
--

DROP TABLE IF EXISTS `jos_k2_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_k2_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `extraFieldsGroup` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`published`,`access`,`trash`),
  KEY `parent` (`parent`),
  KEY `ordering` (`ordering`),
  KEY `published` (`published`),
  KEY `access` (`access`),
  KEY `trash` (`trash`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_k2_categories`
--

LOCK TABLES `jos_k2_categories` WRITE;
/*!40000 ALTER TABLE `jos_k2_categories` DISABLE KEYS */;
INSERT INTO `jos_k2_categories` (`id`, `name`, `alias`, `description`, `parent`, `extraFieldsGroup`, `published`, `access`, `ordering`, `image`, `params`, `trash`, `plugins`) VALUES (1,'Artículos','artículos','',0,0,1,0,1,'1.png','inheritFrom=0\ntheme=VC\nnum_leading_items=3\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=6\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=0\nnum_secondary_columns=0\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=none\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=rdate\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=0\ncatDescription=0\ncatImage=1\ncatFeedLink=0\nfeedLink=0\nsubCategories=0\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=0\nsubCatTitleItemCounter=0\nsubCatDescription=0\nsubCatImage=0\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=100\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=0\ncatItemTags=0\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=0\ncatItemCommentsAnchor=0\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=0\nitemAuthor=1\nitemFontResizer=0\nitemPrintButton=0\nitemEmailButton=0\nitemSocialButton=0\nitemVideoAnchor=0\nitemImageGalleryAnchor=0\nitemCommentsAnchor=0\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=0\nitemHits=0\nitemTwitterLink=0\nitemCategory=1\nitemTags=1\nitemShareLinks=0\nitemAttachments=0\nitemAttachmentsCounter=0\nitemRelated=1\nitemRelatedLimit=5\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=0\nitemVideoCredits=0\nitemImageGallery=0\nitemNavigation=1\nitemComments=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=0\nitemAuthorEmail=1\nitemAuthorLatest=0\nitemAuthorLatestLimit=5\nitemK2Plugins=0\n\n',0,''),(2,'Otro','otro','',0,0,1,0,2,'','inheritFrom=1\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\nfeedLink=1\nsubCategories=1\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemTwitterLink=1\nitemCategory=1\nitemTags=1\nitemShareLinks=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemRelated=1\nitemRelatedLimit=5\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemK2Plugins=1\n\n',0,''),(3,'Entrevistas y discursos','entrevistas-y-discursos','',1,0,1,0,1,'3.png','inheritFrom=1\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\nfeedLink=1\nsubCategories=1\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemTwitterLink=1\nitemCategory=1\nitemTags=1\nitemShareLinks=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemRelated=1\nitemRelatedLimit=5\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemK2Plugins=1\n\n',0,''),(4,'Opinión','opinión','',1,0,1,0,2,'4.png','inheritFrom=1\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\nfeedLink=1\nsubCategories=1\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemTwitterLink=1\nitemCategory=1\nitemTags=1\nitemShareLinks=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemRelated=1\nitemRelatedLimit=5\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemK2Plugins=1\n\n',0,''),(5,'Textos para la formación política','textos-para-la-formación-política','',1,0,1,0,3,'5.png','inheritFrom=1\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\nfeedLink=1\nsubCategories=1\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemTwitterLink=1\nitemCategory=1\nitemTags=1\nitemShareLinks=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemRelated=1\nitemRelatedLimit=5\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemK2Plugins=1\n\n',0,'');
/*!40000 ALTER TABLE `jos_k2_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_comments`
--

DROP TABLE IF EXISTS `jos_k2_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_k2_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `commentDate` datetime NOT NULL,
  `commentText` text NOT NULL,
  `commentEmail` varchar(255) NOT NULL,
  `commentURL` varchar(255) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `itemID` (`itemID`),
  KEY `userID` (`userID`),
  KEY `published` (`published`),
  KEY `latestComments` (`published`,`commentDate`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_k2_comments`
--

LOCK TABLES `jos_k2_comments` WRITE;
/*!40000 ALTER TABLE `jos_k2_comments` DISABLE KEYS */;
INSERT INTO `jos_k2_comments` (`id`, `itemID`, `userID`, `userName`, `commentDate`, `commentText`, `commentEmail`, `commentURL`, `published`) VALUES (1,6,0,'Jorge','2010-10-24 00:27:46','asdfads','jorgesilva555555@hotmaill.com','',1),(2,6,0,'Jorag','2010-10-24 00:28:12','asdfasdf','jsjetter@websatisfactionpr.com','',1),(3,6,0,'Jorag','2010-10-24 00:28:24','sdfasdfasdf','jsjetter@websatisfactionpr.com','',1),(4,6,0,'Jorag','2010-10-24 00:28:43','Comment 4 alsdkjf;aslkdf','jsjetter@websatisfactionpr.com','',1),(5,4,0,'jorge','2010-11-06 19:00:07','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi feugiat, metus quis lobortis tempor, quam massa egestas enim, et venenatis ante tellus et risus. Suspendisse id nunc quis mi pellentesque tempus. Quisque placerat rutrum mi non adipiscing. Proin euismod dui dictum lorem venenatis sit amet varius lorem consectetur. Aenean eget posuere est. Suspendisse quis magna sed velit placerat egestas vel vitae mi. Fusce lobortis felis et magna vulputate bibendum. Praesent semper lacinia suscipit. Sed id lobortis magna. Praesent turpis urna, scelerisque at lacinia eget, gravida ut nisi. Vivamus a lectus urna. Praesent a nunc metus. In blandit molestie consectetur. Quisque viverra diam vitae nibh accumsan eget mollis metus consectetur. Suspendisse luctus felis et ligula consequat sed gravida mi euismod.','jsjetter@websatisfactionpr.com','',1),(6,4,0,'Canteo e','2010-11-06 19:00:50','Educacion Crediticia GRATIS. Rehabilita tu credito legalmente, sin falsas promesas. Inscribete HOY.','jsjetter@websatisfactionpr.com','',1),(7,3,0,'Fulano Wow','2010-11-06 19:01:36','Tu futuro depende del cambio que puedas hacer en tu presente. Participa y podrías ganar $500.','jsjetter@websatisfactionpr.com','',1);
/*!40000 ALTER TABLE `jos_k2_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_extra_fields`
--

DROP TABLE IF EXISTS `jos_k2_extra_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_k2_extra_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `group` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group` (`group`),
  KEY `published` (`published`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_k2_extra_fields`
--

LOCK TABLES `jos_k2_extra_fields` WRITE;
/*!40000 ALTER TABLE `jos_k2_extra_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_k2_extra_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_extra_fields_groups`
--

DROP TABLE IF EXISTS `jos_k2_extra_fields_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_k2_extra_fields_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_k2_extra_fields_groups`
--

LOCK TABLES `jos_k2_extra_fields_groups` WRITE;
/*!40000 ALTER TABLE `jos_k2_extra_fields_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_k2_extra_fields_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_items`
--

DROP TABLE IF EXISTS `jos_k2_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_k2_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `catid` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `video` text,
  `gallery` varchar(255) DEFAULT NULL,
  `extra_fields` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `extra_fields_search` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `featured` smallint(6) NOT NULL DEFAULT '0',
  `featured_ordering` int(11) NOT NULL DEFAULT '0',
  `image_caption` text NOT NULL,
  `image_credits` varchar(255) NOT NULL,
  `video_caption` text NOT NULL,
  `video_credits` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL,
  `params` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `metakey` text NOT NULL,
  `plugins` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item` (`published`,`publish_up`,`publish_down`,`trash`,`access`),
  KEY `catid` (`catid`),
  KEY `created_by` (`created_by`),
  KEY `ordering` (`ordering`),
  KEY `featured` (`featured`),
  KEY `featured_ordering` (`featured_ordering`),
  KEY `hits` (`hits`),
  KEY `created` (`created`),
  FULLTEXT KEY `search` (`title`,`introtext`,`fulltext`,`extra_fields_search`,`image_caption`,`image_credits`,`video_caption`,`video_credits`,`metadesc`,`metakey`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_k2_items`
--

LOCK TABLES `jos_k2_items` WRITE;
/*!40000 ALTER TABLE `jos_k2_items` DISABLE KEYS */;
INSERT INTO `jos_k2_items` (`id`, `title`, `alias`, `catid`, `published`, `introtext`, `fulltext`, `video`, `gallery`, `extra_fields`, `extra_fields_search`, `created`, `created_by`, `created_by_alias`, `checked_out`, `checked_out_time`, `modified`, `modified_by`, `publish_up`, `publish_down`, `trash`, `access`, `ordering`, `featured`, `featured_ordering`, `image_caption`, `image_credits`, `video_caption`, `video_credits`, `hits`, `params`, `metadesc`, `metadata`, `metakey`, `plugins`) VALUES (1,'Sobre Nostros','sobre-nostros',2,1,'<p>Abogado (Universidad Monteávila, 2004)  - Fundador y primer Presidente de FORMA, Formación y Acción  - Profesor de Teoría Política y Constitucional de la Universidad  Monteávila  - Director del Departamento de Derecho Político y Constitucional del  Centro de Estudios de Derecho Público de la Universidad Monteávila  - Máster en Derecho Constitucional (Universidad de Navarra, España,  2008)  - Diploma de Estudios Avanzados en Derecho Constitucional (Universidad  de Navarra, España, 2008)  - Doctorado en Derecho Constitucional (Universidad de Navarra, en curso)  - Visiting Scholar George Washington University´s School of Law  (2009-2010) - Visiting Scholar Georgetown University´s Department of Government  (2010-en curso)</p>','',NULL,NULL,'[]','','2010-10-24 00:09:19',62,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2010-10-24 00:09:19','0000-00-00 00:00:00',0,0,1,0,0,'','','','',11,'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n','','robots=\nauthor=','',''),(2,'Contacto','contacto',2,1,'<p>Email: jmmfuma@gmail.com</p>\r\n<p>Twitter: @JuanMMatheus</p>','',NULL,NULL,'[]','','2010-10-24 00:10:21',62,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2010-10-24 00:10:21','0000-00-00 00:00:00',0,0,2,0,0,'','','','',9,'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n','','robots=\nauthor=','',''),(3,'La purificación de nuestra Política','la-purificación-de-nuestra-política',4,1,'<div class=\"post-header\"></div>\r\n<p>“En una hora de crisis, cuando el orden de una sociedad vacila y se  desintegra, los problemas fundamentales de la existencia política en la  historia son más fácilmente reconocibles que en períodos de relativa  estabilidad” <br />(Eric Vöegelin, Nueva Ciencia de la Política)<br /><br />La  existencia social del hombre es una existencia histórica. Por eso los  grandes hallazgos de la filosofía política han ocurrido en momentos de  crisis. Cada  autor plasma en sus obras las verdades que se abren paso  entre las situaciones de conmoción que le ha tocado vivir. Platón y  Aristóteles presenciaron el desmoronamiento del mundo helénico. La  Ciudad de Dios de San Agustín muestra la crisis del Imperio romano y el  proceso de síntesis de éste con el cristianismo. Y en su libro   Elementos de Filosofía del Derecho, Hegel denota el profundo vacío  espiritual en el cual estaba inmersa la civilización occidental.<br /><br />Lo  anterior resultó especialmente evidente durante el siglo XX. La  emergencia de los totalitarismos reveló que el vacío espiritual  reflejado en Hegel sí tenía consecuencias de injusticia en la vida  social. Se hizo patente una de las verdades centrales de la política, a  la cual Platón dedicó especial atención: que todo desorden social es la  manifestación exterior de un desorden mayor, más profundo, en el alma de  los hombres concretos. Los totalitarismos cobraron existencia porque  las almas del tipo humano predominante en aquellas sociedades fueron  infectadas por el virus totalitario. Quedó claro que es el corazón  humano el lugar en donde se incuban, anidan y consienten las  injusticias.<br /><br />Hoy Venezuela atraviesa un momento de crisis. Vemos  cómo el orden social se desintegra cada día. Es acaso la mayor crisis  política y moral de nuestra historia. A pesar de haber padecido muchas  autocracias a lo largo de 200 años de vida republicana, nunca habíamos  soportado el peso de una autocracia totalitaria. Nuestra sociedad, en  cuanto cuerpo orgánico, está infectada con el virus totalitario. Y lo  está –duele decirlo– porque el alma del tipo humano que predomina, es  decir, del criollo que modela el talante moral de las instituciones  políticas y sociales, también lo está. Se trata de un fenómeno que  trasciende la división régimen-adversarios del régimen. El virus  totalitario está aquí y allá, en todos lados. De lo contrario la  revolución bolivariana no se mantendría en pie.<br /><br />Pero no hay mal  que por bien no venga. Es esperanzador que, como advierte Vöegelin, los  venezolanos estamos reconociendo más fácilmente los problemas  fundamentales de la existencia política. Ahora somos más sensibles a la  diferenciación entre barbarie y racionalidad. La Venezuela enferma de  totalitarismo nos señala, por contraste, cómo ha de ser la Venezuela  libre de totalitarismo. Hay un rico elemento pedagógico en la  experiencia de pueblo que vivimos, que debe ser acogido como tesoro.  Gracias al influjo de la parte de la población que no ha sucumbido al  virus totalitario estamos descubriendo cómo será el deber ser de nuestra  futura convivencia política, en paz y con justicia. La verdad está  irradiando todo su esplendor. De este modo, en poco tiempo podríamos  vernos curados. El porvenir está abierto. Presenciamos la purificación  de nuestra Política.</p>','',NULL,NULL,'[]','','2010-08-13 00:10:00',62,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2010-10-24 00:10:41','0000-00-00 00:00:00',0,0,1,0,0,'','','','',2,'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n','','robots=\nauthor=','',''),(4,'El rey del comunismo o del consentimiento político','el-rey-del-comunismo-o-del-consentimiento-político',4,1,'<p>El 21 de diciembre de 1989 Nicolás Ceaucesco se dirigió al pueblo  rumano. Lo hizo, como era habitual, en la Plaza de la Revolución de  Bucarest. Todos los medios de comunicación transmitieron en vivo la  alocución presidencial. Fue una suerte de “cadena nacional de radio y de  televisión” a la rumana. A pesar de la lacerante escasez de alimentos y  del racionamiento severo de servicios básicos como la luz, el agua y el  gas, Ceaucesco alabó las bondades de la economía socialista. Hizo una  oda a los ideales marxistas y a los logros de su revolución.<br /><br />Pero  aquel día las cosas no ocurrieron según el libreto. Los rumanos  decidieron abandonar la realidad paralela en la cual estaban inmersos.  Renunciaron a vivir en la mentira. Dieron la espalda a la doble vida. Se  acabó la esquizofrenia. Inesperadamente, la muchedumbre abucheó a  Ceaucesco. El rey del comunismo, de verbo encantador y gestos  invencibles, lució indefenso ante la avalancha de descontento. Su rostro  sobrecogido penetró cada rincón de Rumania. Acto seguido el palacio  Presidencial fue ocupado. Cuatro días después, el 25 de diciembre de  1989, se derramaría la única sangre que fue derramada luego de la caída  del muro de Berlín: Nicolás Ceaucesco fue fusilado junto a su esposa  Elena. El comunismo rumano finalizaba de mala manera.<br /><br />El abucheo  del pueblo rumano muestra una gran verdad de la filosofía política. Todo  régimen –justo o injusto– se sostiene por el consentimiento de los  gobernados/oprimidos. Es el principio que Hobbes denominó Government by  consent. En una democracia verdadera la mayoría de la población  consiente, por lo general, a través del voto, cuyo contenido y valor es  respetado escrupulosamente. En una autocracia la mayoría de la población  consiente por adhesión al autócrata, bien sea por conexión afectiva o  por temor/omisión. La imposición de una autocracia siempre encuentra un  correlato permisivo por parte de la mayoría de quienes la sufren. Por  eso Hannah Arendt no dudaba en señalar que los totalitarismos gozan de  altísimos niveles de aceptación hasta el mismísimo momento en que se  derrumban…<br /><br />Tales derrumbes suelen ser, además, súbitos. La  historia enseña que los pueblos se cansan y gritan a las autocracias:  “¡basta!”. Entonces el brillo de la verdad y de la justicia ilumina las  conciencias y las aspiraciones de la gente. La sociedad se desintoxica  del virus totalitario. Eso es, precisamente, lo que está pasando en  Venezuela. Hay un descontento generalizado que es inocultable. En ello  nada tienen que ver los resultados electorales ni las supersticiones  provenientes de la encuestología. Presenciamos la quiebra del  consentimiento que antes hacía ver como invencible a la revolución  bolivariana. José Vicente Rangel se equivoca cuando, bajo el seudónimo  de “Marciano”, sostiene que el pueblo venezolano se dice a sí mismo:  “este Gobierno es malo, pero es mi Gobierno”. Todo lo contrario: el  abucheo criollo parece estar empezando.</p>','',NULL,NULL,'[]','','2010-08-23 00:12:00',62,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2010-10-24 00:12:14','0000-00-00 00:00:00',0,0,2,0,0,'','','','',16,'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n','','robots=\nauthor=','',''),(5,'Homilía de Benedicto XVI en Glasgow, Escocia, durante su viaje al Reino Unido','homilía-de-benedicto-xvi-en-glasgow-escocia-durante-su-viaje-al-reino-unido',3,1,'<p><span style=\"font-weight: bold;\">Sólo el amor de Cristo permanece</span><br /><br />Benedicto  XVI exhortó a los fieles a alzar claramente la voz en defensa del  derecho a vivir en una sociedad que promueve el bienestar de sus  ciudadanos, no una \"jungla\" de libertades arbitrarias. Lo hizo el jueves  18 de septiembre, por la tarde, en su homilía durante la misa celebrada  al aire libre en Bellahouston Park, situado a unas tres millas del  centro de Glasgow. Es el mismo parque donde Juan Pablo II celebró la  Eucaristía durante su visita a Escocia en 1982. El Santo Padre se  refirió, además, a temas que van desde los avances en el ecumenismo y la  evangelización de la cultura, a la necesidad de orar por las vocaciones  al sacerdocio y a la vida consagrada. En la misa -fiesta litúrgica de  san Ninián de Galloway, obispo itinerante y evangelizador de las  poblaciones celtas, apóstol de Escocia (360-432)-, concelebraron con el  Papa todos los obispos escoceses, encabezados por el cardenal O\'Brien,  arzobispo de San Andrés y Edimburgo. Participaron decenas de miles de  personas, especialmente grupos parroquiales, religiosos y miembros de  movimientos eclesiales de Escocia, así como numerosos peregrinos  procedentes del norte de Ingleaterra y de Irlanda. Al inicio de la misa  dirigió al Papa unas palabras de bienvenida monseñor Mario J. Conti,  arzobispo de Glasgow. El Pontífice hizo un llamamiento a los laicos a  seguir su llamada bautismal, siendo no sólo \"ejemplos de fe en público\",  sino también promotores de la \"sabiduría y la visión de la fe en el  foro público\".<br /><br />Queridos hermanos y hermanas en Cristo:<br /><br />\"Está  cerca de vosotros el reino de Dios\" (Lc 10, 9). Con estas palabras del  Evangelio que acabamos de escuchar, os saludo a todos con gran afecto en  el Señor. En verdad, el reino de Dios ya está entre nosotros. En esta  celebración de la Eucaristía, en la que la Iglesia en Escocia se  congrega en torno al altar en unión con el Sucesor de Pedro, reafirmemos  nuestra fe en la Palabra de Cristo y nuestra esperanza en sus promesas,  una esperanza que nunca defrauda. Saludo cordialmente al cardenal  O\'Brien y a los obispos escoceses. Agradezco en particulare al arzobispo  Conti sus amables palabras de bienvenida de vuestra parte y expreso mi  profunda gratitud por el trabajo que los Gobiernos británico y escocés y  las autoridades municipales de Glasgow han llevado a cabo para que  fuera posible esta circunstancia.<br />El Evangelio de hoy nos recuerda  que Cristo continúa enviando a sus discípulos a todo el mundo para  proclamar la venida de su reino y llevar su paz al mundo, empezando casa  por casa, familia por familia, ciudad por ciudad. Vengo a vosotros,  hijos espirituales de San Andrés, como heraldo de esa paz y a  confirmaros en la fe de Pedro (cf. Lc 22, 32). Me dirijo a vosotros con  emoción, no muy lejos del lugar donde mi amado predecesor el Papa Juan  Pablo II celebró la misa con vosotros, hace casi treinta años, recibido  por la multitud más numerosa que jamás se haya visto en la historia de  Escocia.<br /><br />Muchas cosas han ocurrido en Escocia y en la Iglesia en  este país desde aquella histórica visita. Compruebo con gran  satisfacción que la invitación que el Papa Juan Pablo II os hizo para  caminar unidos con vuestros hermanos cristianos, ha producido mayor  confianza y amistad con los miembros de la Iglesia de Escocia, la  Iglesia episcopal escocesa y otras. Os animo a continuar rezando y  colaborando con ellos en la construcción de un futuro más luminoso para  Escocia, basado en nuestra común herencia cristiana. En la primera  lectura de hoy hemos escuchado el llamamiento de san Pablo a los romanos  a reconocer que, como miembros del Cuerpo de Cristo, nos pertenecemos  los unos a los otros (cf. Rm 12, 5) y debemos convivir respetándonos y  amándonos mutuamente. En este espíritu, saludo a los representantes  ecuménicos que nos honran con su presencia. Este año se conmemora el  450° aniversario de la Asamblea de la Reforma, y también el centenario  de la Conferencia misionera mundial en Edimburgo, que es considerada por  muchos como el origen del movimiento ecuménico moderno. Demos gracias a  Dios por la promesa que representan el entendimiento y la cooperación  ecuménica para un testimonio común de la verdad salvadora de la Palabra  de Dios, en medio de los rápidos cambios de la sociedad actual.<br /><br />Entre  los diferentes dones que san Pablo enumera para la edificación de la  Iglesia está el de enseñar (cf. Rm 12, 7). La predicación del Evangelio  siempre ha ido acompañada por el interés por la palabra: la palabra  inspirada por Dios y la cultura en la que esta palabra echa raíces y  florece. Aquí, en Escocia, pienso por ejemplo en las tres universidades  fundadas por los Papas durante la Edad Media, incluyendo la de San  Andrés, que está a punto de celebrar el sexto centenario de su  fundación. En los últimos treinta años, con la ayuda de las autoridades  civiles, las escuelas católicas en Escocia han asumido el desafío de  brindar una educación integral a un mayor número de estudiantes, y esto  ha ayudado a los jóvenes no sólo en su camino de crecimiento espiritual y  humano, sino también en su incorporación a la vida profesional y  pública. Se trata de un signo de gran esperanza para la Iglesia, y animo  a los profesionales católicos, a los políticos y profesores de Escocia a  no perder nunca de vista que están llamados a poner sus talentos y su  experiencia al servicio de la fe, trabajando por la cultura escocesa  actual en todos sus ámbitos.<br />La evangelización de la cultura es de  especial importancia en nuestro tiempo, cuando la \"dictadura del  relativismo\" amenaza con oscurecer la verdad inmutable sobre la  naturaleza del hombre, sobre su destino y su bien último. Hoy en día,  algunos tratan de excluir de la esfera pública las creencias religiosas,  relegarlas a lo privado, objetando que son una amenaza para la igualdad  y la libertad. Sin embargo, la religión es en realidad garantía de  auténtica libertad y respeto, que nos mueve a ver a cada persona como un  hermano o hermana. Por este motivo, os invito en particular a vosotros,  fieles laicos, en virtud de vuestra vocación y misión bautismal, a ser  no sólo ejemplo de fe en público, sino también a plantear en el foro  público los argumentos promovidos por la sabiduría y la visión de la fe.  La sociedad actual necesita voces claras que propongan nuestro derecho a  vivir, no en una selva de libertades autodestructivas y arbitrarias,  sino en una sociedad que trabaje por el verdadero bienestar de sus  ciudadanos y les ofrezca guía y protección en su debilidad y fragilidad.  No tengáis miedo de prestar este servicio a vuestros hermanos y  hermanas, y al futuro de vuestra amada nación. <br /><br />San Ninián, cuya  fiesta celebramos hoy, no tuvo miedo de elevar su voz en solitario.  Siguiendo las huellas de los discípulos que nuestro Señor antes que él,  Ninián fue uno de los primeros misioneros católicos en traer la buena  noticia de Jesucristo a sus hermanos británicos. La iglesia de su misión  en Galloway se convirtió en centro de la primera evangelización de este  país. Este trabajo fue retomado más tarde por san Mungo, patrón de  Glasgow, y por otros santos, entre los que debemos destacar a san  Columba y santa Margarita. Inspirándose en ellos, muchos hombres y  mujeres han trabajado durante siglos para transmitiros la fe. Esforzaos  por ser dignos de esta gran tradición. Que la exhortación de san Pablo  en la primera lectura sea para vosotros una inspiración constante: \"En  la actividad no seáis descuidados. En el espíritu manteneos ardientes.  Servid constantemente al Señor. Que la esperanza os tenga alegres: estad  firmes en la tribulación y sed asiduos a la oración\" (Rm 12, 11-12).<br /><br />Deseo  dirigirme ahora en particular a los obispos de Escocia. Queridos  hermanos, quiero animaros en vuestra guía pastoral de los católicos  escoceses. Como sabéis, uno de vuestros primeros deberes pastorales es  para con vuestros sacerdotes (cf. Presbyterorum ordinis, 7) y su  santificación. Igual que ellos son alter Christus para la comunidad  católica, vosotros lo sois para ellos. En vuestro ministerio fraterno  con respecto a vuestros sacerdotes, vivid en plenitud la caridad que  brota de Cristo, colaborando con todos ellos, y de modo especial con  quienes tienen escaso contacto con sus hermanos en el sacerdocio. Rezad  con ellos por las vocaciones, para que el Dueño de la mies envíe  trabajadores a su mies (cf. Lc 10, 2). Ya que la Eucaristía hace la  Iglesia, el sacerdocio es central para la vida de la Iglesia. Ocupaos  personalmente de formar a vuestros sacerdotes como un cuerpo de hombres  que alientan a otros a dedicarse totalmente al servicio de Dios  todopoderoso. Cuidad también de vuestros diáconos, cuyo ministerio de  servicio está asociado de manera especial al orden de los obispos. Sed  padres y ejemplos de santidad para ellos, animándolos a crecer en  conocimiento y sabiduría en el cumplimiento de la misión de predicar a  la que han sido llamados.<br /><br />Queridos sacerdotes de Escocia, estáis  llamados a la santidad y al servicio del pueblo de Dios conformando  vuestras vidas con el misterio de la cruz del Señor. Predicad el  Evangelio con un corazón puro y con recta conciencia. Dedicaos sólo a  Dios y seréis ejemplo luminoso de santidad, de vida sencilla y alegre  para los jóvenes: ellos, por su parte, desearán seguramente unirse a  vosotros en vuestro solícito servicio al pueblo de Dios. Que el ejemplo  de san Juan Ogilvie, hombre abnegado, desinteresado y valiente, os  inspire a todos. Igualmente, os animo a vosotros, monjes, monjas y  religiosos de Escocia, a ser una luz puesta en lo alto de un monte,  llevando una auténtica vida cristiana de oración y acción que sea  testimonio luminoso del poder del Evangelio.<br /><br />Por último, deseo  dirigirme a vosotros, mis queridos jóvenes católicos de Escocia. Os  apremio a llevar una vida digna de nuestro Señor (cf. Ef 4, 1) y de  vosotros mismos. Hay muchas tentaciones que debéis afrontar cada día  -droga, dinero, sexo, pornografía, alcohol- y que el mundo os dice que  os darán felicidad, cuando, en verdad, estas cosas son destructivas y  crean división. Sólo una cosa permanece: el amor personal de Jesucristo  por cada uno de vosotros. Buscadlo, conocedlo y amadlo, y él os liberará  de la esclavitud de la existencia deslumbrante, pero superficial, que  propone frecuentemente la sociedad actual. Dejad de lado todo lo que es  indigno y descubrid vuestra propia dignidad como hijos de Dios. En el  Evangelio de hoy Jesús nos pide que oremos por las vocaciones: elevo mi  súplica para que muchos de vosotros conozcáis y améis a Jesucristo y, a  través de este encuentro, os dediquéis por completo a Dios,  especialmente aquellos de vosotros que habéis sido llamados al  sacerdocio y a la vida religiosa. Este es el desafío que el Señor os  dirige hoy: la Iglesia ahora os pertenece a vosotros.<br /><br />Queridos  amigos, una vez más expreso mi alegría por poder celebrar esta misa con  vosotros. Y me siento feliz de poder aseguraros mis oraciones en la  antigua lengua de vuestro país: Sìth agus beannachd Dhe dhuib uile; Dia  bhi timcheall oirbh; agus gum beannaicheadh Dia Alba. La paz y la  bendición de Dios estén con todos vosotros; que Dios os proteja; y que  Dios bendiga al pueblo de Escocia.</p>','',NULL,NULL,'[]','','2010-10-24 00:13:29',62,'',0,'0000-00-00 00:00:00','2010-10-24 00:18:55',62,'2010-10-24 00:13:29','0000-00-00 00:00:00',0,0,1,0,0,'','','','',3,'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n','','robots=\nauthor=','',''),(6,'Homilía del Santo Padre en la misa celebrada en Bellahouston Park, cerca de Glasgow, durante su primera etapa del viaje al Reino Unido','homilía-del-santo-padre-en-la-misa-celebrada-en-bellahouston-park-cerca-de-glasgow-durante-su-primera-etapa-del-viaje-al-reino-unido',3,1,'<p>Homilía del Santo Padre en la misa celebrada en Bellahouston Park, cerca  de Glasgow, durante su primera etapa del viaje al Reino Unido<br />Sólo el amor de Cristo permanece<br /><br />Benedicto  XVI exhortó a los fieles a alzar claramente la voz en defensa del  derecho a vivir en una sociedad que promueve el bienestar de sus  ciudadanos, no una \"jungla\" de libertades arbitrarias. Lo hizo el jueves  18 de septiembre, por la tarde, en su homilía durante la misa celebrada  al aire libre en Bellahouston Park, situado a unas tres millas del  centro de Glasgow. Es el mismo parque donde Juan Pablo II celebró la  Eucaristía durante su visita a Escocia en 1982. El Santo Padre se  refirió, además, a temas que van desde los avances en el ecumenismo y la  evangelización de la cultura, a la necesidad de orar por las vocaciones  al sacerdocio y a la vida consagrada. En la misa -fiesta litúrgica de  san Ninián de Galloway, obispo itinerante y evangelizador de las  poblaciones celtas, apóstol de Escocia (360-432)-, concelebraron con el  Papa todos los obispos escoceses, encabezados por el cardenal O\'Brien,  arzobispo de San Andrés y Edimburgo. Participaron decenas de miles de  personas, especialmente grupos parroquiales, religiosos y miembros de  movimientos eclesiales de Escocia, así como numerosos peregrinos  procedentes del norte de Ingleaterra y de Irlanda. Al inicio de la misa  dirigió al Papa unas palabras de bienvenida monseñor Mario J. Conti,  arzobispo de Glasgow. El Pontífice hizo un llamamiento a los laicos a  seguir su llamada bautismal, siendo no sólo \"ejemplos de fe en público\",  sino también promotores de la \"sabiduría y la visión de la fe en el  foro público\".<br /><br />Queridos hermanos y hermanas en Cristo:<br /><br />\"Está  cerca de vosotros el reino de Dios\" (Lc 10, 9). Con estas palabras del  Evangelio que acabamos de escuchar, os saludo a todos con gran afecto en  el Señor. En verdad, el reino de Dios ya está entre nosotros. En esta  celebración de la Eucaristía, en la que la Iglesia en Escocia se  congrega en torno al altar en unión con el Sucesor de Pedro, reafirmemos  nuestra fe en la Palabra de Cristo y nuestra esperanza en sus promesas,  una esperanza que nunca defrauda. Saludo cordialmente al cardenal  O\'Brien y a los obispos escoceses. Agradezco en particulare al arzobispo  Conti sus amables palabras de bienvenida de vuestra parte y expreso mi  profunda gratitud por el trabajo que los Gobiernos británico y escocés y  las autoridades municipales de Glasgow han llevado a cabo para que  fuera posible esta circunstancia.<br />El Evangelio de hoy nos recuerda  que Cristo continúa enviando a sus discípulos a todo el mundo para  proclamar la venida de su reino y llevar su paz al mundo, empezando casa  por casa, familia por familia, ciudad por ciudad. Vengo a vosotros,  hijos espirituales de San Andrés, como heraldo de esa paz y a  confirmaros en la fe de Pedro (cf. Lc 22, 32). Me dirijo a vosotros con  emoción, no muy lejos del lugar donde mi amado predecesor el Papa Juan  Pablo II celebró la misa con vosotros, hace casi treinta años, recibido  por la multitud más numerosa que jamás se haya visto en la historia de  Escocia.<br /><br />Muchas cosas han ocurrido en Escocia y en la Iglesia en  este país desde aquella histórica visita. Compruebo con gran  satisfacción que la invitación que el Papa Juan Pablo II os hizo para  caminar unidos con vuestros hermanos cristianos, ha producido mayor  confianza y amistad con los miembros de la Iglesia de Escocia, la  Iglesia episcopal escocesa y otras. Os animo a continuar rezando y  colaborando con ellos en la construcción de un futuro más luminoso para  Escocia, basado en nuestra común herencia cristiana. En la primera  lectura de hoy hemos escuchado el llamamiento de san Pablo a los romanos  a reconocer que, como miembros del Cuerpo de Cristo, nos pertenecemos  los unos a los otros (cf. Rm 12, 5) y debemos convivir respetándonos y  amándonos mutuamente. En este espíritu, saludo a los representantes  ecuménicos que nos honran con su presencia. Este año se conmemora el  450° aniversario de la Asamblea de la Reforma, y también el centenario  de la Conferencia misionera mundial en Edimburgo, que es considerada por  muchos como el origen del movimiento ecuménico moderno. Demos gracias a  Dios por la promesa que representan el entendimiento y la cooperación  ecuménica para un testimonio común de la verdad salvadora de la Palabra  de Dios, en medio de los rápidos cambios de la sociedad actual.<br /><br />Entre  los diferentes dones que san Pablo enumera para la edificación de la  Iglesia está el de enseñar (cf. Rm 12, 7). La predicación del Evangelio  siempre ha ido acompañada por el interés por la palabra: la palabra  inspirada por Dios y la cultura en la que esta palabra echa raíces y  florece. Aquí, en Escocia, pienso por ejemplo en las tres universidades  fundadas por los Papas durante la Edad Media, incluyendo la de San  Andrés, que está a punto de celebrar el sexto centenario de su  fundación. En los últimos treinta años, con la ayuda de las autoridades  civiles, las escuelas católicas en Escocia han asumido el desafío de  brindar una educación integral a un mayor número de estudiantes, y esto  ha ayudado a los jóvenes no sólo en su camino de crecimiento espiritual y  humano, sino también en su incorporación a la vida profesional y  pública. Se trata de un signo de gran esperanza para la Iglesia, y animo  a los profesionales católicos, a los políticos y profesores de Escocia a  no perder nunca de vista que están llamados a poner sus talentos y su  experiencia al servicio de la fe, trabajando por la cultura escocesa  actual en todos sus ámbitos.<br />La evangelización de la cultura es de  especial importancia en nuestro tiempo, cuando la \"dictadura del  relativismo\" amenaza con oscurecer la verdad inmutable sobre la  naturaleza del hombre, sobre su destino y su bien último. Hoy en día,  algunos tratan de excluir de la esfera pública las creencias religiosas,  relegarlas a lo privado, objetando que son una amenaza para la igualdad  y la libertad. Sin embargo, la religión es en realidad garantía de  auténtica libertad y respeto, que nos mueve a ver a cada persona como un  hermano o hermana. Por este motivo, os invito en particular a vosotros,  fieles laicos, en virtud de vuestra vocación y misión bautismal, a ser  no sólo ejemplo de fe en público, sino también a plantear en el foro  público los argumentos promovidos por la sabiduría y la visión de la fe.  La sociedad actual necesita voces claras que propongan nuestro derecho a  vivir, no en una selva de libertades autodestructivas y arbitrarias,  sino en una sociedad que trabaje por el verdadero bienestar de sus  ciudadanos y les ofrezca guía y protección en su debilidad y fragilidad.  No tengáis miedo de prestar este servicio a vuestros hermanos y  hermanas, y al futuro de vuestra amada nación. <br /><br />San Ninián, cuya  fiesta celebramos hoy, no tuvo miedo de elevar su voz en solitario.  Siguiendo las huellas de los discípulos que nuestro Señor antes que él,  Ninián fue uno de los primeros misioneros católicos en traer la buena  noticia de Jesucristo a sus hermanos británicos. La iglesia de su misión  en Galloway se convirtió en centro de la primera evangelización de este  país. Este trabajo fue retomado más tarde por san Mungo, patrón de  Glasgow, y por otros santos, entre los que debemos destacar a san  Columba y santa Margarita. Inspirándose en ellos, muchos hombres y  mujeres han trabajado durante siglos para transmitiros la fe. Esforzaos  por ser dignos de esta gran tradición. Que la exhortación de san Pablo  en la primera lectura sea para vosotros una inspiración constante: \"En  la actividad no seáis descuidados. En el espíritu manteneos ardientes.  Servid constantemente al Señor. Que la esperanza os tenga alegres: estad  firmes en la tribulación y sed asiduos a la oración\" (Rm 12, 11-12).<br /><br />Deseo  dirigirme ahora en particular a los obispos de Escocia. Queridos  hermanos, quiero animaros en vuestra guía pastoral de los católicos  escoceses. Como sabéis, uno de vuestros primeros deberes pastorales es  para con vuestros sacerdotes (cf. Presbyterorum ordinis, 7) y su  santificación. Igual que ellos son alter Christus para la comunidad  católica, vosotros lo sois para ellos. En vuestro ministerio fraterno  con respecto a vuestros sacerdotes, vivid en plenitud la caridad que  brota de Cristo, colaborando con todos ellos, y de modo especial con  quienes tienen escaso contacto con sus hermanos en el sacerdocio. Rezad  con ellos por las vocaciones, para que el Dueño de la mies envíe  trabajadores a su mies (cf. Lc 10, 2). Ya que la Eucaristía hace la  Iglesia, el sacerdocio es central para la vida de la Iglesia. Ocupaos  personalmente de formar a vuestros sacerdotes como un cuerpo de hombres  que alientan a otros a dedicarse totalmente al servicio de Dios  todopoderoso. Cuidad también de vuestros diáconos, cuyo ministerio de  servicio está asociado de manera especial al orden de los obispos. Sed  padres y ejemplos de santidad para ellos, animándolos a crecer en  conocimiento y sabiduría en el cumplimiento de la misión de predicar a  la que han sido llamados.<br /><br />Queridos sacerdotes de Escocia, estáis  llamados a la santidad y al servicio del pueblo de Dios conformando  vuestras vidas con el misterio de la cruz del Señor. Predicad el  Evangelio con un corazón puro y con recta conciencia. Dedicaos sólo a  Dios y seréis ejemplo luminoso de santidad, de vida sencilla y alegre  para los jóvenes: ellos, por su parte, desearán seguramente unirse a  vosotros en vuestro solícito servicio al pueblo de Dios. Que el ejemplo  de san Juan Ogilvie, hombre abnegado, desinteresado y valiente, os  inspire a todos. Igualmente, os animo a vosotros, monjes, monjas y  religiosos de Escocia, a ser una luz puesta en lo alto de un monte,  llevando una auténtica vida cristiana de oración y acción que sea  testimonio luminoso del poder del Evangelio.<br /><br />Por último, deseo  dirigirme a vosotros, mis queridos jóvenes católicos de Escocia. Os  apremio a llevar una vida digna de nuestro Señor (cf. Ef 4, 1) y de  vosotros mismos. Hay muchas tentaciones que debéis afrontar cada día  -droga, dinero, sexo, pornografía, alcohol- y que el mundo os dice que  os darán felicidad, cuando, en verdad, estas cosas son destructivas y  crean división. Sólo una cosa permanece: el amor personal de Jesucristo  por cada uno de vosotros. Buscadlo, conocedlo y amadlo, y él os liberará  de la esclavitud de la existencia deslumbrante, pero superficial, que  propone frecuentemente la sociedad actual. Dejad de lado todo lo que es  indigno y descubrid vuestra propia dignidad como hijos de Dios. En el  Evangelio de hoy Jesús nos pide que oremos por las vocaciones: elevo mi  súplica para que muchos de vosotros conozcáis y améis a Jesucristo y, a  través de este encuentro, os dediquéis por completo a Dios,  especialmente aquellos de vosotros que habéis sido llamados al  sacerdocio y a la vida religiosa. Este es el desafío que el Señor os  dirige hoy: la Iglesia ahora os pertenece a vosotros.<br /><br />Queridos  amigos, una vez más expreso mi alegría por poder celebrar esta misa con  vosotros. Y me siento feliz de poder aseguraros mis oraciones en la  antigua lengua de vuestro país: Sìth agus beannachd Dhe dhuib uile; Dia  bhi timcheall oirbh; agus gum beannaicheadh Dia Alba. La paz y la  bendición de Dios estén con todos vosotros; que Dios os proteja; y que  Dios bendiga al pueblo de Escocia.</p>','',NULL,NULL,'[]','','2010-10-24 00:14:47',62,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2010-10-24 00:14:47','0000-00-00 00:00:00',0,0,2,0,0,'','','','',23,'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n','','robots=\nauthor=','',''),(7,'La lucha contra el totalitarismo (extracto)','la-lucha-contra-el-totalitarismo-extracto',5,1,'<p>Fuente: Karl Jaspers: “The Fight against Totalitarianism” en Philosophy  and the World – Selected Essays. (Washington D.C.: Gateway Editions,  1963), pp. 68-87.<br /><br />\"Yo no creo que hoy exista país alguno que esté  inmune a contribuir al nacimiento de este mal [totalitario], aunque por  otros caminos y en un espíritu diferente. En todo el mundo temo que  existe la misma auto-negación que nosotros experimentamos: que esto no  podía pasar aquí. Esto puede suceder en cualquier parte. Sólo es  improbable cuando las grandes masas de la población están conscientes de  esta posible amenaza y por tanto no pueden ser engañadas con promesas  de una seguridad futura. Esto no es posible cuando la gente conoce la  naturaleza del totalitarismo y es capaz de reconocerlo en sus etapas  rudimentarias y en cada una de sus manifestaciones. Se trata, como  Proteo, de un personaje que aparece cada vez con una nueva máscara, que  se desliza fuera de nuestro alcance como una lombriz, que hace lo  contrario de lo que dice, que distorsiona el significado de las  palabras, que no habla para comunicar o decir la verdad sino para  anestesiar, distraer, hipnotizar, intimidar, embrutecer—que explota y  evoca todo miedo, que promete seguridad y brutalmente la destruye al  mismo tiempo . . . <br /><br />[El totalitarismo] no pide vínculos sino una  obediencia total . . . Introduce un nuevo concepto de verdad —la línea  del partido—y exige una fe ciega en el derecho absoluto de los líderes…  Justifica cualquier cosa que ocurra llamando blanco a lo que es negro y A  a la Z. Sus argumentos son sólo imaginarios pero, de hecho, no hay  discusión. Se proclaman magníficos principios generales. Pero si estos  principios no se conforman con la realidad concreta hay silencio. La  atención se distrae entonces con la misma habilidad de un  prestidigitador. Los totalitaristas no responden, no pueden ser  conminados, hablan de otras cosas en lugar de responder. Recurren a  cualquier gesto, a veces para aparentar sobriedad, a veces para exhibir  mucha pasión. Su tono de voz sugiere que cualquiera que no concuerde con  ellos debe ser estúpido o vicioso… <br /><br />Una vez que se prepara el  terreno, el régimen totalitario se presenta cada vez de manera distinta  —a veces de un día para otro, otras veces paso a paso, por desvíos,  esquivando todas las fuerzas defensivas. El poder de control total puede  hacer una aparición repentina. A través de medios formalmente legales,  [el líder totalitario], con el apoyo delirante de masas atemorizadas,  puede por la vía del decreto abrogar las leyes, o puede llegar a  controlar las policías locales y transformarlas a toda velocidad en un  poder omnímodo. (Es por esto que cualquier fuerza policial centralizada,  a diferencia de fuerzas locales limitadas, es tan peligrosa). … Una vez  que esto sucede la situación es irrevocable. … En este punto, ya no hay  nada más que ayude. El rompimiento es total. Un poder capaz de  trasformar toda existencia, penetrar cada hogar, y dejar nada sin tocar,  distingue la vida bajo una dictadura totalitaria de una vida en  libertad política…<br /><br />En el mundo de hoy está más claro —aunque  todavía muy lejos de estar suficientemente claro— lo que el  totalitarismo es y que cuando aparece, en el lugar que sea, y de la  forma que sea, es como un virus de una enfermedad perniciosa que crece  de forma salvaje y que consume a cualquiera que lo contrae. No se puede  trabajar con él, no puede ser utilizado como una herramienta, no puede  ser circunscrito a límites…<br />¿Cómo entonces debe librarse la lucha?  Mientras esta máquina demoníaca aparezca sin llegar a dominar todo por  completo, debe hacerse visible para todo el mundo. … Siempre aparece  bajo el manto de un mártir para alcanzar una mejor verdad. Se apoya  sobre los medios del mundo libre para distorsionarlos y destruirlos.  (“Los he derrotado con su propia locura”, decía triunfante Hitler). Para  hacerlo inofensivo, como una epidemia que es detectada y confinada  desde el principio, la población tendrá que comprender el totalitarismo  en sus rudimentos. Pero no nos engañemos. Incluso los estadistas del  mundo están muy lejos de percibir la situación en todo momento—por la  falta de escrúpulos del líder totalitario, que es muy superior a una  mera duplicidad astuta; por aquella capacidad de olfato  de su instinto  infalible de poder; por su habilidad para cambiar el lenguaje y los  argumentos a voluntad, dependiendo de la audiencia y de la situación;  finalmente por sus súbitos e inesperados actos de represión…<br /><br />Claridad  acerca de la naturaleza del totalitarismo es entonces nuestra mejor  arma, si logramos expandirla a toda la población. La indignación, la  violencia, y el abuso no son buenas armas. El totalitarismo se desvanece   en el aire puro de una clara visión. Pero una visión así debe ser  descubierta…. <br /><br />Esperemos que esta lucha [por preservar la  libertad y sus posibilidades] se realice con una clara visión y una  aguda inteligencia en las situaciones concretas\".</p>','',NULL,NULL,'[]','','2010-10-24 00:17:29',62,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2010-10-24 00:17:29','0000-00-00 00:00:00',0,0,1,0,0,'','','','',14,'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n','','robots=\nauthor=','','');
/*!40000 ALTER TABLE `jos_k2_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_rating`
--

DROP TABLE IF EXISTS `jos_k2_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_k2_rating` (
  `itemID` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_k2_rating`
--

LOCK TABLES `jos_k2_rating` WRITE;
/*!40000 ALTER TABLE `jos_k2_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_k2_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_tags`
--

DROP TABLE IF EXISTS `jos_k2_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_k2_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_k2_tags`
--

LOCK TABLES `jos_k2_tags` WRITE;
/*!40000 ALTER TABLE `jos_k2_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_k2_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_tags_xref`
--

DROP TABLE IF EXISTS `jos_k2_tags_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_k2_tags_xref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tagID` (`tagID`),
  KEY `itemID` (`itemID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_k2_tags_xref`
--

LOCK TABLES `jos_k2_tags_xref` WRITE;
/*!40000 ALTER TABLE `jos_k2_tags_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_k2_tags_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_user_groups`
--

DROP TABLE IF EXISTS `jos_k2_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_k2_user_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_k2_user_groups`
--

LOCK TABLES `jos_k2_user_groups` WRITE;
/*!40000 ALTER TABLE `jos_k2_user_groups` DISABLE KEYS */;
INSERT INTO `jos_k2_user_groups` (`id`, `name`, `permissions`) VALUES (1,'Registered','frontEdit=0\nadd=0\neditOwn=0\neditAll=0\npublish=0\ncomment=1\ninheritance=0\ncategories=all\n\n'),(2,'Site Owner','frontEdit=1\nadd=1\neditOwn=1\neditAll=1\npublish=1\ncomment=1\ninheritance=1\ncategories=all\n\n');
/*!40000 ALTER TABLE `jos_k2_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_users`
--

DROP TABLE IF EXISTS `jos_k2_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_k2_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'm',
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `group` int(11) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userID` (`userID`),
  KEY `group` (`group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_k2_users`
--

LOCK TABLES `jos_k2_users` WRITE;
/*!40000 ALTER TABLE `jos_k2_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_k2_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_menu`
--

DROP TABLE IF EXISTS `jos_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_menu`
--

LOCK TABLES `jos_menu` WRITE;
/*!40000 ALTER TABLE `jos_menu` DISABLE KEYS */;
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (1,'mainmenu','Inicio','home','index.php?option=com_content&view=frontpage','component',1,0,20,0,1,0,'0000-00-00 00:00:00',0,0,0,3,'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,1),(2,'mainmenu','Artículos','articulos','index.php?option=com_k2&view=itemlist&layout=category&task=category&id=1','component',0,0,34,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'categories=1\nfeedLink=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(3,'mainmenu','Opinión','opinion','index.php?option=com_k2&view=itemlist&layout=category&task=category&id=4','component',1,0,34,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'categories=4\nfeedLink=1\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(4,'mainmenu','Sobre Nosotros','sobre-nosotros','index.php?option=com_k2&view=item&layout=item&id=1','component',1,0,34,0,6,0,'0000-00-00 00:00:00',0,0,0,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(5,'mainmenu','Contacto','contacto','index.php?option=com_k2&view=item&layout=item&id=2','component',1,0,34,0,7,0,'0000-00-00 00:00:00',0,0,0,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(6,'mainmenu','Entrevistas y Discursos','entrevistas-y-discursos','index.php?option=com_k2&view=itemlist&layout=category&task=category&id=3','component',1,0,34,0,4,0,'0000-00-00 00:00:00',0,0,0,0,'categories=3\nfeedLink=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(7,'mainmenu','Formación Política','formacion-politica','index.php?option=com_k2&view=itemlist&layout=category&task=category&id=5','component',1,0,34,0,5,0,'0000-00-00 00:00:00',0,0,0,0,'categories=5\nfeedLink=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0);
/*!40000 ALTER TABLE `jos_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_menu_types`
--

DROP TABLE IF EXISTS `jos_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_menu_types`
--

LOCK TABLES `jos_menu_types` WRITE;
/*!40000 ALTER TABLE `jos_menu_types` DISABLE KEYS */;
INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES (1,'mainmenu','Main Menu','The main menu for the site');
/*!40000 ALTER TABLE `jos_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_messages`
--

DROP TABLE IF EXISTS `jos_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_messages`
--

LOCK TABLES `jos_messages` WRITE;
/*!40000 ALTER TABLE `jos_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_messages_cfg`
--

DROP TABLE IF EXISTS `jos_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_messages_cfg`
--

LOCK TABLES `jos_messages_cfg` WRITE;
/*!40000 ALTER TABLE `jos_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_migration_backlinks`
--

DROP TABLE IF EXISTS `jos_migration_backlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_migration_backlinks`
--

LOCK TABLES `jos_migration_backlinks` WRITE;
/*!40000 ALTER TABLE `jos_migration_backlinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_migration_backlinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_modules`
--

DROP TABLE IF EXISTS `jos_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_modules`
--

LOCK TABLES `jos_modules` WRITE;
/*!40000 ALTER TABLE `jos_modules` DISABLE KEYS */;
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (1,'Main Menu','',0,'navigation',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,0,'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',1,0,''),(2,'Login','',1,'login',0,'0000-00-00 00:00:00',1,'mod_login',0,0,1,'',1,1,''),(3,'Popular','',3,'cpanel',0,'0000-00-00 00:00:00',1,'mod_popular',0,2,1,'',0,1,''),(4,'Recent added Articles','',4,'cpanel',0,'0000-00-00 00:00:00',1,'mod_latest',0,2,1,'ordering=c_dsc\nuser_id=0\ncache=0\n\n',0,1,''),(5,'Menu Stats','',5,'cpanel',0,'0000-00-00 00:00:00',1,'mod_stats',0,2,1,'',0,1,''),(6,'Unread Messages','',1,'header',0,'0000-00-00 00:00:00',1,'mod_unread',0,2,1,'',1,1,''),(7,'Online Users','',2,'header',0,'0000-00-00 00:00:00',1,'mod_online',0,2,1,'',1,1,''),(8,'Toolbar','',1,'toolbar',0,'0000-00-00 00:00:00',1,'mod_toolbar',0,2,1,'',1,1,''),(9,'Quick Icons','',1,'icon',0,'0000-00-00 00:00:00',1,'mod_quickicon',0,2,1,'',1,1,''),(10,'Logged in Users','',2,'cpanel',0,'0000-00-00 00:00:00',1,'mod_logged',0,2,1,'',0,1,''),(11,'Footer','',0,'footer',0,'0000-00-00 00:00:00',1,'mod_footer',0,0,1,'',1,1,''),(12,'Admin Menu','',1,'menu',0,'0000-00-00 00:00:00',1,'mod_menu',0,2,1,'',0,1,''),(13,'Admin SubMenu','',1,'submenu',0,'0000-00-00 00:00:00',1,'mod_submenu',0,2,1,'',0,1,''),(14,'User Status','',1,'status',0,'0000-00-00 00:00:00',1,'mod_status',0,2,1,'',0,1,''),(15,'Title','',1,'title',0,'0000-00-00 00:00:00',1,'mod_title',0,2,1,'',0,1,''),(16,'Últimos Tweets','',0,'bottom-right',0,'0000-00-00 00:00:00',1,'mod_ostwitterbox',0,0,1,'moduleclass_sfx=\ncount=8\ntusername=AIESEC_RC\ntpassword=Riopiedras*\ntimeline=mine\nttemplate={tweet} \\n\n\n',0,0,''),(17,'Social Widgets Ultimate Edition','',3,'left',0,'0000-00-00 00:00:00',0,'mod_social_widgets',0,0,1,'twitter_widget=hide\ntwitter_login=joomla\nnumber_of_tweets=4\nshow_avatars=false\nshow_timestamps=false\nshow_hashtags=false\nshell_background=#ffffff\nshell_color=#000000\ntweets_background=#ffffff\ntweets_color=black\ntweets_links=#4000ff\n32_64=64\nfacebook=show\ntwitter=show\nmyspace=hide\nstumbleupon=hide\nreddit=hide\ndelicious=hide\ngoogle=hide\nmail=hide\nprint=hide\nbig_twitter=show\nbig_facebook=show\nbig_share_facebook=show\nsmall_facebook=hide\nsmall_twitter=hide\n\n',0,0,''),(30,'Copy of Publicidad 1','<p style=\"text-align: center;\"><img src=\"images/250.jpg\" border=\"0\" alt=\"publicidad\" width=\"250\" height=\"250\" /></p>',0,'right',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(31,'Publicidad - Header','<p><img src=\"images/720.jpg\" border=\"0\" alt=\"publicidad\" width=\"728\" height=\"90\" /></p>',0,'header-publicidad',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(19,'Más Leidas','',0,'bottom-center',0,'0000-00-00 00:00:00',1,'mod_k2_content',0,0,0,'moduleclass_sfx=\ngetTemplate=Default\nsource=filter\ncatfilter=1\ncategory_id=1|3|4|5\ngetChildren=0\nitemCount=3\nitemsOrdering=hits\nFeaturedItems=1\npopularityRange=\nvideosOnly=0\nitem=0\nitemTitle=1\nitemAuthor=0\nitemAuthorAvatar=0\nitemAuthorAvatarWidthSelect=custom\nitemAuthorAvatarWidth=50\nuserDescription=0\nitemIntroText=1\nitemIntroTextWordLimit=30\nitemImage=1\nitemImgSize=Medium\nitemVideo=0\nitemVideoCaption=0\nitemVideoCredits=0\nitemAttachments=0\nitemTags=0\nitemCategory=0\nitemDateCreated=0\nitemHits=0\nitemReadMore=0\nitemExtraFields=0\nitemCommentsCounter=0\nfeed=0\nitemPreText=Más Leidas <img src=\"images/star_48.png\">\nitemCustomLink=0\nitemCustomLinkURL=http://\nitemCustomLinkTitle=\nK2Plugins=1\nJPlugins=1\ncache=1\ncache_time=900\n\n',0,0,''),(29,'Más Leidas','',2,'right',0,'0000-00-00 00:00:00',1,'mod_k2_content',0,0,0,'moduleclass_sfx=\ngetTemplate=Default\nsource=filter\ncatfilter=1\ncategory_id=1|3|4|5\ngetChildren=0\nitemCount=4\nitemsOrdering=hits\nFeaturedItems=1\npopularityRange=\nvideosOnly=0\nitem=0\nitemTitle=1\nitemAuthor=0\nitemAuthorAvatar=0\nitemAuthorAvatarWidthSelect=custom\nitemAuthorAvatarWidth=50\nuserDescription=0\nitemIntroText=0\nitemIntroTextWordLimit=20\nitemImage=1\nitemImgSize=Small\nitemVideo=0\nitemVideoCaption=0\nitemVideoCredits=0\nitemAttachments=0\nitemTags=0\nitemCategory=0\nitemDateCreated=0\nitemHits=0\nitemReadMore=0\nitemExtraFields=0\nitemCommentsCounter=1\nfeed=0\nitemPreText=Más Leidas <img src=\"images/star_48.png\">\nitemCustomLink=0\nitemCustomLinkURL=http://\nitemCustomLinkTitle=\nK2Plugins=1\nJPlugins=1\ncache=1\ncache_time=900\n\n',0,0,''),(23,'K2 QuickIcons (admin)','',99,'icon',0,'0000-00-00 00:00:00',1,'mod_k2_quickicons',0,2,1,'modCSSStyling=1\nmodLogo=1\n',0,1,''),(35,'Info Autor','<p>Contacto de Autor</p>\r\n<p>EMAIL: jmmfuma@gmail.com</p>\r\n<p>Twitter: @JuanMMatheus</p>',1,'footer-b',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(36,'Webmaster info','<p>DESIGNER AND WEB MASTER<br />EMAILL: JORGE.SILVA@THEJSJ.COM<br />THEJSJ.COM</p>',4,'footer-c',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(25,'Entervistas y discursos','',0,'top-center',0,'0000-00-00 00:00:00',1,'mod_k2_content',0,0,0,'moduleclass_sfx=\ngetTemplate=Default\nsource=filter\ncatfilter=1\ncategory_id=3\ngetChildren=0\nitemCount=4\nitemsOrdering=comments\nFeaturedItems=1\npopularityRange=\nvideosOnly=0\nitem=0\nitemTitle=1\nitemAuthor=0\nitemAuthorAvatar=0\nitemAuthorAvatarWidthSelect=custom\nitemAuthorAvatarWidth=50\nuserDescription=0\nitemIntroText=1\nitemIntroTextWordLimit=30\nitemImage=0\nitemImgSize=Medium\nitemVideo=0\nitemVideoCaption=0\nitemVideoCredits=0\nitemAttachments=0\nitemTags=0\nitemCategory=0\nitemDateCreated=0\nitemHits=0\nitemReadMore=0\nitemExtraFields=0\nitemCommentsCounter=1\nfeed=0\nitemPreText=Entrevistas y Discursos <img src=\"images/users_two_48.png\">\nitemCustomLink=0\nitemCustomLinkURL=http://localhost/veco/entrevistas-y-discursos.html\nitemCustomLinkTitle=Entrevistas y Discursos\nK2Plugins=1\nJPlugins=1\ncache=1\ncache_time=900\n\n',0,0,''),(26,'Opinión','',0,'top-left',0,'0000-00-00 00:00:00',1,'mod_k2_content',0,0,0,'moduleclass_sfx=\ngetTemplate=Default\nsource=filter\ncatfilter=1\ncategory_id=4\ngetChildren=0\nitemCount=4\nitemsOrdering=hits\nFeaturedItems=1\npopularityRange=\nvideosOnly=0\nitem=0\nitemTitle=1\nitemAuthor=0\nitemAuthorAvatar=0\nitemAuthorAvatarWidthSelect=custom\nitemAuthorAvatarWidth=30\nuserDescription=0\nitemIntroText=1\nitemIntroTextWordLimit=30\nitemImage=1\nitemImgSize=Small\nitemVideo=0\nitemVideoCaption=0\nitemVideoCredits=0\nitemAttachments=0\nitemTags=0\nitemCategory=0\nitemDateCreated=0\nitemHits=0\nitemReadMore=0\nitemExtraFields=0\nitemCommentsCounter=1\nfeed=0\nitemPreText=Opinión <img src=\"images/lightbulb_48.png\">\nitemCustomLink=1\nitemCustomLinkURL=http://localhost/veco/component/k2/itemlist/category/4-opini%C3%B3n.html\nitemCustomLinkTitle=Opinion\nK2Plugins=1\nJPlugins=1\ncache=1\ncache_time=900\n\n',0,0,''),(27,'Formación Política','',0,'top-right',0,'0000-00-00 00:00:00',1,'mod_k2_content',0,0,0,'moduleclass_sfx=\ngetTemplate=Default\nsource=filter\ncatfilter=1\ncategory_id=5\ngetChildren=0\nitemCount=4\nitemsOrdering=hits\nFeaturedItems=1\npopularityRange=\nvideosOnly=0\nitem=0\nitemTitle=1\nitemAuthor=0\nitemAuthorAvatar=0\nitemAuthorAvatarWidthSelect=custom\nitemAuthorAvatarWidth=30\nuserDescription=0\nitemIntroText=1\nitemIntroTextWordLimit=30\nitemImage=1\nitemImgSize=Small\nitemVideo=0\nitemVideoCaption=0\nitemVideoCredits=0\nitemAttachments=0\nitemTags=0\nitemCategory=0\nitemDateCreated=0\nitemHits=0\nitemReadMore=0\nitemExtraFields=0\nitemCommentsCounter=1\nfeed=0\nitemPreText=Formación Política <img src=\"images/book_48.png\">\nitemCustomLink=0\nitemCustomLinkURL=http://localhost/veco/component/k2/itemlist/category/5-textos-para-la-formaci%C3%B3n-pol%C3%ADtica.html\nitemCustomLinkTitle=Formación Política\nK2Plugins=1\nJPlugins=1\ncache=1\ncache_time=900\n\n',0,0,''),(28,'Publicidad 1','<p><img src=\"images/720.jpg\" border=\"0\" alt=\"publicidad\" width=\"728\" height=\"90\" /></p>',2,'top-publicidad',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(33,'Últimos Comentarios','',0,'bottom-left',0,'0000-00-00 00:00:00',1,'mod_k2_comments',0,0,0,'moduleclass_sfx=\nmodule_usage=0\ncatfilter=1\ncategory_id=1|3|4|5\ncomments_limit=5\ncomments_word_limit=15\ncommenterName=0\ncommentAvatar=0\ncommentAvatarWidthSelect=custom\ncommentAvatarWidth=50\ncommentDate=0\ncommentDateFormat=absolute\ncommentLink=1\nitemTitle=1\nitemCategory=0\nfeed=0\ncommenters_limit=5\ncommenterAvatar=1\ncommenterAvatarWidthSelect=custom\ncommenterAvatarWidth=50\ncommenterLink=0\ncommenterCommentsCounter=0\ncommenterLatestComment=0\ncache=1\ncache_time=900\n\n',0,0,''),(34,'Copyright','<p><span style=\"font-family: Georgia; serif;\">©</span> Copyright 2010</p>\r\n<p>Venezuela Constitucional</p>\r\n<p>Todos los derechos reservados</p>\r\n<p> </p>',0,'footer-a',62,'2010-11-06 16:37:57',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(37,'JFacebook Login Module','',4,'left',0,'0000-00-00 00:00:00',0,'mod_jfacebookloginmodule',0,0,1,'loginbuttontext=Login with Facebook\n',0,0,'');
/*!40000 ALTER TABLE `jos_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_modules_menu`
--

DROP TABLE IF EXISTS `jos_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_modules_menu`
--

LOCK TABLES `jos_modules_menu` WRITE;
/*!40000 ALTER TABLE `jos_modules_menu` DISABLE KEYS */;
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (1,0),(16,1),(17,0),(19,0),(23,0),(25,1),(26,1),(27,1),(28,0),(29,0),(30,0),(31,0),(33,0),(34,0),(35,0),(36,0),(37,0);
/*!40000 ALTER TABLE `jos_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_newsfeeds`
--

DROP TABLE IF EXISTS `jos_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_newsfeeds`
--

LOCK TABLES `jos_newsfeeds` WRITE;
/*!40000 ALTER TABLE `jos_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_plugins`
--

DROP TABLE IF EXISTS `jos_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_plugins`
--

LOCK TABLES `jos_plugins` WRITE;
/*!40000 ALTER TABLE `jos_plugins` DISABLE KEYS */;
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (1,'Authentication - Joomla','joomla','authentication',0,1,1,1,0,0,'0000-00-00 00:00:00',''),(2,'Authentication - LDAP','ldap','authentication',0,2,0,1,0,0,'0000-00-00 00:00:00','host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),(3,'Authentication - GMail','gmail','authentication',0,4,0,0,0,0,'0000-00-00 00:00:00',''),(4,'Authentication - OpenID','openid','authentication',0,3,0,0,0,0,'0000-00-00 00:00:00',''),(5,'User - Joomla!','joomla','user',0,0,1,0,0,0,'0000-00-00 00:00:00','autoregister=1\n\n'),(6,'Search - Content','content','search',0,1,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),(7,'Search - Contacts','contacts','search',0,3,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(8,'Search - Categories','categories','search',0,4,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(9,'Search - Sections','sections','search',0,5,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(10,'Search - Newsfeeds','newsfeeds','search',0,6,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(11,'Search - Weblinks','weblinks','search',0,2,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(12,'Content - Pagebreak','pagebreak','content',0,10000,1,1,0,0,'0000-00-00 00:00:00','enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),(13,'Content - Rating','vote','content',0,4,1,1,0,0,'0000-00-00 00:00:00',''),(14,'Content - Email Cloaking','emailcloak','content',0,5,1,0,0,0,'0000-00-00 00:00:00','mode=1\n\n'),(15,'Content - Code Hightlighter (GeSHi)','geshi','content',0,5,0,0,0,0,'0000-00-00 00:00:00',''),(16,'Content - Load Module','loadmodule','content',0,6,1,0,0,0,'0000-00-00 00:00:00','enabled=1\nstyle=0\n\n'),(17,'Content - Page Navigation','pagenavigation','content',0,2,1,1,0,0,'0000-00-00 00:00:00','position=1\n\n'),(18,'Editor - No Editor','none','editors',0,0,1,1,0,0,'0000-00-00 00:00:00',''),(19,'Editor - TinyMCE','tinymce','editors',0,0,1,1,0,0,'0000-00-00 00:00:00','mode=advanced\nskin=0\ncompressed=0\ncleanup_startup=0\ncleanup_save=2\nentity_encoding=raw\nlang_mode=0\nlang_code=en\ntext_direction=ltr\ncontent_css=1\ncontent_css_custom=\nrelative_urls=1\nnewlines=0\ninvalid_elements=applet\nextended_elements=\ntoolbar=top\ntoolbar_align=left\nhtml_height=550\nhtml_width=750\nelement_path=1\nfonts=1\npaste=1\nsearchreplace=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\ncolors=1\ntable=1\nsmilies=1\nmedia=1\nhr=1\ndirectionality=1\nfullscreen=1\nstyle=1\nlayer=1\nxhtmlxtras=1\nvisualchars=1\nnonbreaking=1\ntemplate=0\nadvimage=1\nadvlink=1\nautosave=1\ncontextmenu=1\ninlinepopups=1\nsafari=1\ncustom_plugin=\ncustom_button=\n\n'),(20,'Editor - XStandard Lite 2.0','xstandard','editors',0,0,0,1,0,0,'0000-00-00 00:00:00',''),(21,'Editor Button - Image','image','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(22,'Editor Button - Pagebreak','pagebreak','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(23,'Editor Button - Readmore','readmore','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(24,'XML-RPC - Joomla','joomla','xmlrpc',0,7,0,1,0,0,'0000-00-00 00:00:00',''),(25,'XML-RPC - Blogger API','blogger','xmlrpc',0,7,0,1,0,0,'0000-00-00 00:00:00','catid=1\nsectionid=0\n\n'),(27,'System - SEF','sef','system',0,1,1,0,0,0,'0000-00-00 00:00:00',''),(28,'System - Debug','debug','system',0,2,1,0,0,0,'0000-00-00 00:00:00','queries=1\nmemory=1\nlangauge=1\n\n'),(29,'System - Legacy','legacy','system',0,3,0,1,0,0,'0000-00-00 00:00:00','route=0\n\n'),(30,'System - Cache','cache','system',0,4,0,1,0,0,'0000-00-00 00:00:00','browsercache=0\ncachetime=15\n\n'),(31,'System - Log','log','system',0,5,0,1,0,0,'0000-00-00 00:00:00',''),(32,'System - Remember Me','remember','system',0,6,1,1,0,0,'0000-00-00 00:00:00',''),(33,'System - Backlink','backlink','system',0,7,0,1,0,0,'0000-00-00 00:00:00',''),(34,'System - Mootools Upgrade','mtupgrade','system',0,8,0,1,0,0,'0000-00-00 00:00:00',''),(35,'Search - K2','k2','search',0,0,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n'),(36,'System - K2','k2','system',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(37,'User - K2','k2','user',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(38,'JFacebook - Distributable Client Library ','jfacebook','jfacebook',0,0,0,0,0,0,'0000-00-00 00:00:00','fb_api_key=your facebook app api key\nfb_appid=your facebook app Id\nfb_secret=your facebook app secret\nfb_appdir=your apps relative dir\ncookie=1\ndebuguserid=Joomla userid of the Administrator\ndebugip=IP Address of the Administrator\n'),(39,'Authentication - JFacebook','jfacebook','authentication',0,0,0,0,0,0,'0000-00-00 00:00:00',''),(40,'System - JFacebook','jfacebook','system',0,0,0,0,0,0,'0000-00-00 00:00:00',''),(41,'Editor - JCE 1.5.7.4','jce','editors',0,0,1,0,0,0,'0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `jos_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_poll_data`
--

DROP TABLE IF EXISTS `jos_poll_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_poll_data`
--

LOCK TABLES `jos_poll_data` WRITE;
/*!40000 ALTER TABLE `jos_poll_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_poll_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_poll_date`
--

DROP TABLE IF EXISTS `jos_poll_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_poll_date`
--

LOCK TABLES `jos_poll_date` WRITE;
/*!40000 ALTER TABLE `jos_poll_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_poll_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_poll_menu`
--

DROP TABLE IF EXISTS `jos_poll_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_poll_menu`
--

LOCK TABLES `jos_poll_menu` WRITE;
/*!40000 ALTER TABLE `jos_poll_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_poll_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_polls`
--

DROP TABLE IF EXISTS `jos_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_polls`
--

LOCK TABLES `jos_polls` WRITE;
/*!40000 ALTER TABLE `jos_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_sections`
--

DROP TABLE IF EXISTS `jos_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_sections`
--

LOCK TABLES `jos_sections` WRITE;
/*!40000 ALTER TABLE `jos_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_session`
--

DROP TABLE IF EXISTS `jos_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_session`
--

LOCK TABLES `jos_session` WRITE;
/*!40000 ALTER TABLE `jos_session` DISABLE KEYS */;
INSERT INTO `jos_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES ('','1329717940','33247e149caf6c1ef0b0cc7ee98d3e92',1,0,'',0,0,'__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1329717940;s:18:\"session.timer.last\";i:1329717940;s:17:\"session.timer.now\";i:1329717940;s:22:\"session.client.browser\";s:107:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:74:\"/home/thejsj/public_html/2010/veco/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}');
/*!40000 ALTER TABLE `jos_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_stats_agents`
--

DROP TABLE IF EXISTS `jos_stats_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_stats_agents`
--

LOCK TABLES `jos_stats_agents` WRITE;
/*!40000 ALTER TABLE `jos_stats_agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_stats_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_templates_menu`
--

DROP TABLE IF EXISTS `jos_templates_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_templates_menu`
--

LOCK TABLES `jos_templates_menu` WRITE;
/*!40000 ALTER TABLE `jos_templates_menu` DISABLE KEYS */;
INSERT INTO `jos_templates_menu` (`template`, `menuid`, `client_id`) VALUES ('template-venezuelaconstitucional',0,0),('khepri',0,1),('ja_purity',3,0);
/*!40000 ALTER TABLE `jos_templates_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_users`
--

DROP TABLE IF EXISTS `jos_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_users`
--

LOCK TABLES `jos_users` WRITE;
/*!40000 ALTER TABLE `jos_users` DISABLE KEYS */;
INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES (62,'Administrator','admin','jorge.silva@thejsj.com','29474505bd45ce47292276d4353fe837:uLIP9TVpBGQsWFkQ1nGajkUI2DNOfzuG','Super Administrator',0,1,25,'2010-10-24 00:04:42','2011-01-15 06:08:08','',''),(63,'Juan Matheus','jmmfuma@gmail.com','jmmfuma@gmail.com','ae150ebe027f024bf4129700065df5e8:Sq2T85diPEhQo8xGvAjGtVUdC6RVlsUD','Administrator',0,0,24,'2010-11-10 01:29:04','2010-11-29 18:27:41','','admin_language=en-GB\nlanguage=\neditor=\nhelpsite=http://help.joomla.org\ntimezone=0\n\n');
/*!40000 ALTER TABLE `jos_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_weblinks`
--

DROP TABLE IF EXISTS `jos_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_weblinks`
--

LOCK TABLES `jos_weblinks` WRITE;
/*!40000 ALTER TABLE `jos_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_weblinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'thejsj_veco'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-12 23:31:59
