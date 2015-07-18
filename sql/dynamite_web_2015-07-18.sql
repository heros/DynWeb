# ************************************************************
# Sequel Pro SQL dump
# Versión 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.25)
# Base de datos: dynamite_web
# Tiempo de Generación: 2015-07-18 04:08:59 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla web_assets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_assets`;

CREATE TABLE `web_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_assets` WRITE;
/*!40000 ALTER TABLE `web_assets` DISABLE KEYS */;

INSERT INTO `web_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`)
VALUES
	(1,0,1,582,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":[],\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
	(2,1,1,2,1,'com_admin','com_admin','{}'),
	(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
	(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
	(6,1,11,12,1,'com_config','com_config','{}'),
	(7,1,13,18,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
	(8,1,19,92,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),
	(9,1,93,94,1,'com_cpanel','com_cpanel','{}'),
	(10,1,95,96,1,'com_installer','com_installer','{\"core.admin\":{\"7\":1},\"core.options\":[],\"core.manage\":{\"7\":1},\"core.delete\":[],\"core.edit.state\":[]}'),
	(11,1,97,98,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(12,1,99,100,1,'com_login','com_login','{}'),
	(13,1,101,102,1,'com_mailto','com_mailto','{}'),
	(14,1,103,104,1,'com_massmail','com_massmail','{}'),
	(15,1,105,106,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
	(16,1,107,108,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(17,1,109,110,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
	(18,1,111,216,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(19,1,217,220,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
	(20,1,221,222,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(21,1,223,224,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),
	(22,1,225,226,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
	(23,1,227,228,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(26,1,229,230,1,'com_wrapper','com_wrapper','{}'),
	(27,8,20,67,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
	(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
	(30,19,218,219,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
	(32,8,68,91,2,'com_content.category.7','Blog','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
	(33,27,21,22,3,'com_content.article.1','Layouts','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(34,27,23,24,3,'com_content.article.2','Un mundo nuevo','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(35,27,25,26,3,'com_content.article.3','ZOO','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(36,27,27,28,3,'com_content.article.4','UIkit','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(37,27,29,30,3,'com_content.article.5','Dummy Content','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(38,27,31,32,3,'com_content.article.6','Features','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(39,27,33,34,3,'com_content.article.7','Inicio','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(40,32,69,70,3,'com_content.article.8','Joomla Templates','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(41,32,71,72,3,'com_content.article.9','Beautiful Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(42,32,73,74,3,'com_content.article.10','Warp Framework','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(43,32,75,76,3,'com_content.article.11','ZOO Extension','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(44,32,77,78,3,'com_content.article.12','Free Halloween Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(47,27,37,38,3,'com_content.article.14','Slideshow','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(48,27,39,40,3,'com_content.article.15','Lightbox','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(49,27,41,42,3,'com_content.article.16','Spotlight','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(50,27,43,44,3,'com_content.article.17','Twitter','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(51,27,45,46,3,'com_content.article.18','Media Player','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(52,27,47,48,3,'com_content.article.19','Gallery','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(53,27,49,50,3,'com_content.article.20','Map','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(54,27,51,52,3,'com_content.article.21','Accordion','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(55,27,53,54,3,'com_content.article.22','Slideset','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(56,7,16,17,2,'com_contact.category.8','Contacts','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
	(59,1,534,535,1,'com_finder','com_finder','{\"core.admin\":[],\"core.manage\":[]}'),
	(63,1,538,539,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.delete\":{\"6\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(65,1,540,541,1,'#__ucm_content.1','#__ucm_content.1','[]'),
	(66,1,542,543,1,'#__ucm_content.2','#__ucm_content.2','[]'),
	(67,1,544,545,1,'#__ucm_content.3','#__ucm_content.3','[]'),
	(68,1,546,547,1,'#__ucm_content.4','#__ucm_content.4','[]'),
	(69,1,548,549,1,'#__ucm_content.5','#__ucm_content.5','[]'),
	(70,1,550,551,1,'#__ucm_content.6','#__ucm_content.6','[]'),
	(71,1,552,553,1,'com_tags','com_tags','{}'),
	(72,1,554,555,1,'com_contenthistory','com_contenthistory','{}'),
	(73,1,556,557,1,'com_ajax','com_ajax','{}'),
	(74,1,558,559,1,'com_postinstall','com_postinstall','{}'),
	(76,18,218,219,2,'com_modules.module.17','Breadcrumbs',''),
	(77,18,220,221,2,'com_modules.module.19','Sidebar Module','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(78,18,222,223,2,'com_modules.module.20','Bottom A',''),
	(79,18,224,225,2,'com_modules.module.21','Bottom A',''),
	(80,18,226,227,2,'com_modules.module.22','Bottom A',''),
	(85,18,228,229,2,'com_modules.module.27','Bottom B',''),
	(86,18,230,231,2,'com_modules.module.28','Bottom B',''),
	(87,18,232,233,2,'com_modules.module.29','Bottom B',''),
	(89,18,234,235,2,'com_modules.module.31','Footer Menu',''),
	(90,18,236,237,2,'com_modules.module.32','Footer','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
	(92,18,238,239,2,'com_modules.module.34','Main Bottom',''),
	(93,18,240,241,2,'com_modules.module.35','Main Bottom',''),
	(94,18,242,243,2,'com_modules.module.36',' Main Top','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(95,18,244,245,2,'com_modules.module.37','Main Top','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(96,18,246,247,2,'com_modules.module.38','Logo','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
	(98,18,248,249,2,'com_modules.module.40','Search','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
	(99,18,250,251,2,'com_modules.module.41','Sub Menu','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(100,18,252,253,2,'com_modules.module.42','Sidebar Menu',''),
	(101,18,254,255,2,'com_modules.module.43','Sidebar A','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(102,18,256,257,2,'com_modules.module.44','Sidebar A','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(103,18,258,259,2,'com_modules.module.48','Latest News',''),
	(104,18,260,261,2,'com_modules.module.49','Login',''),
	(109,18,262,263,2,'com_modules.module.57','Sidebar B',''),
	(110,18,264,265,2,'com_modules.module.58','Sidebar B',''),
	(111,18,266,267,2,'com_modules.module.59','Sidebar B',''),
	(112,18,268,269,2,'com_modules.module.61','Top Menu',''),
	(113,18,270,271,2,'com_modules.module.62','Top A','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(121,18,272,273,2,'com_modules.module.70','Home WoW Teaser','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
	(122,18,274,275,2,'com_modules.module.71','Top B',''),
	(123,18,276,277,2,'com_modules.module.72','Top B',''),
	(124,18,278,279,2,'com_modules.module.73','Top B',''),
	(125,18,280,281,2,'com_modules.module.74','Top B',''),
	(127,18,284,285,2,'com_modules.module.76','Twitter List',''),
	(129,18,286,287,2,'com_modules.module.78','Twitter Bubbles',''),
	(130,18,288,289,2,'com_modules.module.79','Twitter Single',''),
	(132,18,290,291,2,'com_modules.module.83','ZOO Item',''),
	(133,18,292,293,2,'com_modules.module.84','ZOO Comment',''),
	(134,18,294,295,2,'com_modules.module.85','ZOO Tag',''),
	(135,18,296,297,2,'com_modules.module.86','ZOO Category',''),
	(141,18,298,299,2,'com_modules.module.94','Offcanvas Menu','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(142,18,300,301,2,'com_modules.module.95','Offcanvas',''),
	(146,18,302,303,2,'com_modules.module.99','Features UIkit','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(149,18,304,305,2,'com_modules.module.102','Logo small','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
	(151,18,112,113,2,'com_modules.module.104','Sidebar Main Menu','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(153,18,114,115,2,'com_modules.module.106','Home WoW Conecta con nosotros','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
	(156,18,116,117,2,'com_modules.module.108','Login','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
	(158,18,118,119,2,'com_modules.module.110','Home WoW Navegación','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
	(159,18,120,121,2,'com_modules.module.111','Home menu MU','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
	(160,18,122,123,2,'com_modules.module.112','Home menu Minecraft','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
	(161,18,124,125,2,'com_modules.module.113','Home menu GunZ','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
	(162,18,126,127,2,'com_modules.module.114','Home menu WoW','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
	(163,18,128,129,2,'com_modules.module.115','Home menu ???','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
	(164,18,130,131,2,'com_modules.module.116','Top A','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(166,18,132,133,2,'com_modules.module.118','Offcanvas main menu','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(167,18,134,135,2,'com_modules.module.119','Offcanvas Search','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(169,18,136,137,2,'com_modules.module.121','Toolbar right','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(171,18,138,139,2,'com_modules.module.122','Search sidebar','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(172,18,140,141,2,'com_modules.module.123','Module','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(174,18,142,143,2,'com_modules.module.125','Home WoW Comunidad','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
	(175,18,144,145,2,'com_modules.module.126','Logo sidebar','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
	(177,32,87,88,3,'com_content.article.25','Pagekit','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(178,1,560,561,1,'#__ucm_content.7','#__ucm_content.7','[]'),
	(179,32,89,90,3,'com_content.article.26','UIkit','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(180,1,562,563,1,'#__ucm_content.8','#__ucm_content.8','[]'),
	(181,18,146,147,2,'com_modules.module.127','Top C','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(182,18,148,149,2,'com_modules.module.128','Top C','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(183,18,150,151,2,'com_modules.module.129','Top C','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(184,18,152,153,2,'com_modules.module.130','Top C','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(185,18,154,155,2,'com_modules.module.1','Navbar Menu','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(186,18,156,157,2,'com_modules.module.131','Sidebar A','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(187,1,564,575,1,'com_zoo','com_zoo','{}'),
	(188,18,158,159,2,'com_modules.module.132','ZOO Category',''),
	(189,18,160,161,2,'com_modules.module.133','ZOO Comment',''),
	(190,18,162,163,2,'com_modules.module.134','ZOO Item',''),
	(191,18,164,165,2,'com_modules.module.135','ZOO Quick Icons',''),
	(192,18,166,167,2,'com_modules.module.136','ZOO Tag',''),
	(193,187,565,570,2,'com_zoo.application.1','Noticias','{\"core.admin\":[],\"core.manage\":[],\"zoo.categories.manage\":[],\"zoo.comments.manage\":[],\"zoo.frontpage.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
	(194,18,168,169,2,'com_modules.module.140','Logo WoW','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
	(195,18,170,171,2,'com_modules.module.141','Logo WoW small','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
	(196,18,172,173,2,'com_modules.module.142','Home Teaser','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
	(197,18,174,175,2,'com_modules.module.143','Home Navegación','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
	(198,27,65,66,3,'com_content.article.27','Vesperia','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(199,1,576,577,1,'com_kunena','com_kunena','{}'),
	(200,1,578,579,1,'com_community','Community','{}'),
	(201,18,176,177,2,'com_modules.module.144','JS Active Groups',''),
	(202,18,178,179,2,'com_modules.module.145','JS Activity Stream',''),
	(203,18,180,181,2,'com_modules.module.146','Eventos Ingame','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
	(204,18,182,183,2,'com_modules.module.147','Hermandades','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
	(205,18,184,185,2,'com_modules.module.148','Usuarios','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
	(206,18,186,187,2,'com_modules.module.149','JS Photos Module',''),
	(207,18,188,189,2,'com_modules.module.150','JS Quick Search',''),
	(208,18,190,191,2,'com_modules.module.151','JS Nearby Events Search',''),
	(209,18,192,193,2,'com_modules.module.152','JS Videos',''),
	(210,18,194,195,2,'com_modules.module.153','JS Whos Online',''),
	(211,18,196,197,2,'com_modules.module.154','JS Dating Search',''),
	(212,18,198,199,2,'com_modules.module.155','JS Hello Me',''),
	(213,18,200,201,2,'com_modules.module.156','JS JomSocial Connect',''),
	(214,18,202,203,2,'com_modules.module.157','JS Latest Discussion',''),
	(215,18,204,205,2,'com_modules.module.158','JS Latest group posts',''),
	(216,18,206,207,2,'com_modules.module.159','JS Jomsocial Notification','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
	(217,18,208,209,2,'com_modules.module.160','JS Photo Comments',''),
	(218,18,210,211,2,'com_modules.module.161','JS JomSocial Statistics',''),
	(219,18,212,213,2,'com_modules.module.162','JS Top Members',''),
	(220,18,214,215,2,'com_modules.module.163','JS Video Comments',''),
	(221,187,571,574,2,'com_zoo.application.9','Descargas','{\"core.admin\":[],\"core.manage\":[],\"zoo.categories.manage\":[],\"zoo.comments.manage\":[],\"zoo.frontpage.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
	(222,221,572,573,3,'com_zoo.application.9.file','Descargas (File)','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
	(223,193,566,567,3,'com_zoo.application.1.article','Noticias (Article)','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
	(224,193,568,569,3,'com_zoo.application.1.author','Noticias (Author)','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
	(225,1,580,581,1,'com_jtrinitycore','JTrinityCore','{}');

/*!40000 ALTER TABLE `web_assets` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_associations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_associations`;

CREATE TABLE `web_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_banner_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_banner_clients`;

CREATE TABLE `web_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_banner_tracks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_banner_tracks`;

CREATE TABLE `web_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_banners
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_banners`;

CREATE TABLE `web_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_categories`;

CREATE TABLE `web_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned DEFAULT NULL,
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_categories` WRITE;
/*!40000 ALTER TABLE `web_categories` DISABLE KEYS */;

INSERT INTO `web_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`)
VALUES
	(1,0,0,0,17,0,'','system','ROOT',X'726F6F74','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',969,'2009-10-18 16:07:09',0,'0000-00-00 00:00:00',0,'*',1),
	(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised',X'756E63617465676F7269736564','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',969,'2010-06-28 13:26:37',0,'0000-00-00 00:00:00',5,'*',1),
	(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised',X'756E63617465676F7269736564','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',969,'2010-06-28 13:27:35',0,'0000-00-00 00:00:00',0,'*',1),
	(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised',X'756E63617465676F7269736564','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',969,'2010-06-28 13:27:57',0,'0000-00-00 00:00:00',0,'*',1),
	(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised',X'756E63617465676F7269736564','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',969,'2010-06-28 13:28:15',0,'0000-00-00 00:00:00',0,'*',1),
	(6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised',X'756E63617465676F7269736564','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',969,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*',1),
	(7,32,1,11,12,1,'blog','com_content','Blog',X'626C6F67','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',969,'2011-05-02 11:42:21',0,'0000-00-00 00:00:00',170,'*',1),
	(8,56,1,13,14,1,'contacts','com_contact','Contacts',X'636F6E7461637473','','',1,42,'2012-01-23 15:30:29',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',969,'2011-11-18 16:32:10',42,'2011-11-18 16:32:13',0,'*',1),
	(9,57,1,15,16,1,'yootheme-links','com_weblinks','YOOtheme Links',X'796F6F7468656D652D6C696E6B73','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',969,'2012-01-22 12:45:00',0,'0000-00-00 00:00:00',0,'*',1);

/*!40000 ALTER TABLE `web_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_community_activities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_activities`;

CREATE TABLE `web_community_activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `actor` int(10) unsigned NOT NULL,
  `target` int(10) unsigned NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `app` varchar(200) NOT NULL,
  `verb` varchar(200) NOT NULL,
  `cid` int(10) NOT NULL,
  `groupid` int(10) DEFAULT NULL,
  `eventid` int(10) DEFAULT NULL,
  `group_access` tinyint(4) NOT NULL DEFAULT '0',
  `event_access` tinyint(4) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `access` tinyint(3) unsigned NOT NULL,
  `params` text NOT NULL,
  `points` int(4) NOT NULL DEFAULT '1',
  `archived` tinyint(3) NOT NULL,
  `location` text NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `comment_id` int(10) NOT NULL,
  `comment_type` varchar(200) NOT NULL,
  `like_id` int(10) NOT NULL,
  `like_type` varchar(200) NOT NULL,
  `actors` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `actor` (`actor`),
  KEY `target` (`target`),
  KEY `app` (`app`),
  KEY `created` (`created`),
  KEY `archived` (`archived`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_community_activities` WRITE;
/*!40000 ALTER TABLE `web_community_activities` DISABLE KEYS */;

INSERT INTO `web_community_activities` (`id`, `actor`, `target`, `title`, `content`, `app`, `verb`, `cid`, `groupid`, `eventid`, `group_access`, `event_access`, `created`, `access`, `params`, `points`, `archived`, `location`, `latitude`, `longitude`, `comment_id`, `comment_type`, `like_id`, `like_type`, `actors`, `updated_at`)
VALUES
	(5,969,0,'','dfgsdfg','groups.discussion','',1,1,0,1,0,'2015-07-16 10:19:26',0,'{\"action\":\"group.discussion.create\",\"topic_id\":1,\"topic\":\"sdfsaf\",\"group_url\":\"index.php?option=com_community&view=groups&task=viewgroup&groupid=1\",\"topic_url\":\"index.php?option=com_community&view=groups&task=viewdiscussion&groupid=1&topicid=1\"}',1,0,'',255.000000,255.000000,5,'groups.discussion',5,'groups.discussion','','2015-07-16 12:19:27'),
	(4,969,969,'https://twitter.com/dynamitewow/status/621499296354017280','','profile','post',969,NULL,NULL,0,0,'2015-07-16 07:27:53',10,'{\"headMetas\":\"{\\\"title\\\":\\\"Dynamite WoW on Twitter\\\",\\\"description\\\":\\\"Durante el lanzamiento todo el mundo podrá tener un personaje nivel 80 en Vesperia y entrar directamente en acción. https:\\\\\\/\\\\\\/twitter.com\\\\\\/dynamitewow\\\\\\/status\\\\\\/621498846087094275 ...\\\",\\\"image\\\":\\\"https:\\\\\\/\\\\\\/pbs.twimg.com\\\\\\/media\\\\\\/CKAB5_lWEAA6W5N.png:thumb\\\",\\\"link\\\":\\\"https:\\\\\\/\\\\\\/pbs.twimg.com\\\\\\/media\\\\\\/CKAB5_lWEAA6W5N.png:large\\\"}\"}',1,0,'',255.000000,255.000000,4,'profile.status',4,'profile.status','','2015-07-16 09:27:53'),
	(3,969,969,'https://youtu.be/bD4D9z9bNAk','','profile','post',969,NULL,NULL,0,0,'2015-07-16 07:17:26',10,'{\"headMetas\":\"{\\\"title\\\":\\\"How are you holding up? - Dynamite Zone Teaser Trailer\\\",\\\"description\\\":\\\"Pronto podrás descubrir por qué Dynamite es, fue y siempre será una de las mejores comunidades de todos los tiempos\\\",\\\"image\\\":\\\"https:\\\\\\/\\\\\\/i.ytimg.com\\\\\\/vi\\\\\\/bD4D9z9bNAk\\\\\\/hqdefault.jpg\\\",\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.youtube.com\\\\\\/watch?v=bD4D9z9bNAk\\\",\\\"type\\\":\\\"video\\\",\\\"video_provider\\\":\\\"youtube\\\",\\\"video_id\\\":\\\"bD4D9z9bNAk\\\",\\\"height\\\":\\\"360\\\",\\\"width\\\":\\\"640\\\"}\"}',1,0,'',255.000000,255.000000,3,'profile.status',3,'profile.status','','2015-07-16 09:17:27');

/*!40000 ALTER TABLE `web_community_activities` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_community_activities_hide
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_activities_hide`;

CREATE TABLE `web_community_activities_hide` (
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_apps
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_apps`;

CREATE TABLE `web_community_apps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `apps` varchar(200) NOT NULL,
  `ordering` int(10) unsigned NOT NULL,
  `position` varchar(50) NOT NULL DEFAULT 'content',
  `params` text NOT NULL,
  `privacy` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_userid` (`userid`),
  KEY `idx_user_apps` (`userid`,`apps`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_community_apps` WRITE;
/*!40000 ALTER TABLE `web_community_apps` DISABLE KEYS */;

INSERT INTO `web_community_apps` (`id`, `userid`, `apps`, `ordering`, `position`, `params`, `privacy`)
VALUES
	(1,969,'kunena',0,'sidebar-top','',''),
	(3,969,'twitter',1,'sidebar-top','{\"count\":\"\",\"updateTwitter\":\"0\",\"showFriends\":\"0\",\"appid\":\"3\",\"appname\":\"twitter\"}','');

/*!40000 ALTER TABLE `web_community_apps` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_community_avatar
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_avatar`;

CREATE TABLE `web_community_avatar` (
  `id` int(10) unsigned NOT NULL,
  `apptype` varchar(255) NOT NULL,
  `path` text NOT NULL,
  `type` tinyint(3) unsigned NOT NULL COMMENT '0 = small, 1 = medium, 2=large',
  UNIQUE KEY `id` (`id`,`apptype`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_badges
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_badges`;

CREATE TABLE `web_community_badges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `image` varchar(256) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `points` (`points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_community_badges` WRITE;
/*!40000 ALTER TABLE `web_community_badges` DISABLE KEYS */;

INSERT INTO `web_community_badges` (`id`, `title`, `points`, `image`, `published`)
VALUES
	(1,'0',0,'png',1),
	(2,'50',50,'png',1),
	(3,'100',100,'png',1),
	(4,'200',200,'png',1),
	(5,'350',350,'png',1),
	(6,'600',600,'png',1);

/*!40000 ALTER TABLE `web_community_badges` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_community_blocklist
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_blocklist`;

CREATE TABLE `web_community_blocklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `blocked_userid` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `blocked_userid` (`blocked_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_config`;

CREATE TABLE `web_community_config` (
  `name` varchar(64) NOT NULL,
  `params` longtext NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_community_config` WRITE;
/*!40000 ALTER TABLE `web_community_config` DISABLE KEYS */;

INSERT INTO `web_community_config` (`name`, `params`)
VALUES
	('dbversion','17'),
	('config','{\"pmperday\":\"200\",\"limit_groups_perday\":\"1\",\"limit_events_perday\":\"2\",\"limit_photos_perday\":\"5\",\"limit_videos_perday\":\"5\",\"limit_friends_perday\":\"50\",\"limit_files_perday\":\"10\",\"cfgSection\":\"video\",\"network_keywords\":\"\",\"show_toolbar\":\"1\",\"displayname\":\"username\",\"pagination\":\"12\",\"activitydateformat\":\"lapse\",\"allowhtml\":\"1\",\"showactivityavatar\":\"1\",\"streamcontentlength\":\"150\",\"singularnumber\":\"1\",\"maxactivities\":\"20\",\"frontpageactivitydefault\":\"all\",\"showactivitystream\":\"1\",\"custom_activity\":\"1\",\"infinitescroll\":\"1\",\"autoloadtrigger\":\"100\",\"show_featured\":\"1\",\"featureduserslimit\":\"10\",\"featuredvideoslimit\":\"10\",\"featuredgroupslimit\":\"10\",\"featuredalbumslimit\":\"10\",\"featuredeventslimit\":\"10\",\"enablemood\":\"0\",\"enable_badges\":\"0\",\"privacyprofile\":\"20\",\"privacyfriends\":\"40\",\"privacyphotos\":\"20\",\"privacyvideos\":\"20\",\"privacy_groups_list\":\"20\",\"privacy_show_admins\":\"1\",\"maxnotification\":\"20\",\"etype_groups_notify_admin\":\"1\",\"notif_groups_notify_admin\":\"1\",\"etype_user_profile_delete\":\"1\",\"notif_user_profile_delete\":\"1\",\"etype_system_reports_threshold\":\"1\",\"notif_system_reports_threshold\":\"1\",\"etype_profile_activity_add_comment\":\"1\",\"notif_profile_activity_add_comment\":\"1\",\"etype_profile_activity_reply_comment\":\"1\",\"notif_profile_activity_reply_comment\":\"1\",\"etype_profile_status_update\":\"1\",\"notif_profile_status_update\":\"1\",\"etype_profile_like\":\"1\",\"notif_profile_like\":\"1\",\"etype_profile_stream_like\":\"1\",\"notif_profile_stream_like\":\"1\",\"etype_friends_request_connection\":\"1\",\"notif_friends_request_connection\":\"1\",\"etype_friends_create_connection\":\"1\",\"notif_friends_create_connection\":\"1\",\"etype_inbox_create_message\":\"1\",\"notif_inbox_create_message\":\"1\",\"etype_groups_invite\":\"1\",\"notif_groups_invite\":\"1\",\"etype_groups_discussion_reply\":\"1\",\"notif_groups_discussion_reply\":\"1\",\"etype_groups_wall_create\":\"1\",\"notif_groups_wall_create\":\"1\",\"etype_groups_create_discussion\":\"1\",\"notif_groups_create_discussion\":\"1\",\"etype_groups_create_news\":\"1\",\"notif_groups_create_news\":\"1\",\"etype_groups_create_album\":\"1\",\"notif_groups_create_album\":\"1\",\"etype_groups_create_video\":\"1\",\"notif_groups_create_video\":\"1\",\"etype_groups_create_event\":\"1\",\"notif_groups_create_event\":\"1\",\"etype_groups_sendmail\":\"1\",\"notif_groups_sendmail\":\"1\",\"etype_groups_member_approved\":\"1\",\"notif_groups_member_approved\":\"1\",\"etype_groups_member_join\":\"1\",\"notif_groups_member_join\":\"1\",\"etype_groups_notify_creator\":\"1\",\"notif_groups_notify_creator\":\"1\",\"etype_groups_discussion_newfile\":\"1\",\"notif_groups_discussion_newfile\":\"1\",\"etype_groups_activity_add_comment\":\"0\",\"notif_groups_activity_add_comment\":\"0\",\"etype_events_notify_admin\":\"1\",\"notif_events_notify_admin\":\"1\",\"etype_events_invite\":\"1\",\"notif_events_invite\":\"1\",\"etype_events_invitation_approved\":\"1\",\"notif_events_invitation_approved\":\"1\",\"etype_events_sendmail\":\"1\",\"notif_events_sendmail\":\"1\",\"etype_event_notify_creator\":\"0\",\"notif_event_notify_creator\":\"0\",\"etype_event_join_request\":\"1\",\"notif_event_join_request\":\"1\",\"etype_events_activity_add_comment\":\"0\",\"notif_events_activity_add_comment\":\"0\",\"etype_events_wall_create\":\"1\",\"notif_events_wall_create\":\"1\",\"etype_videos_submit_wall\":\"1\",\"notif_videos_submit_wall\":\"1\",\"etype_videos_reply_wall\":\"1\",\"notif_videos_reply_wall\":\"1\",\"etype_videos_tagging\":\"1\",\"notif_videos_tagging\":\"1\",\"etype_videos_like\":\"1\",\"notif_videos_like\":\"1\",\"etype_videos_convert_success\":\"1\",\"notif_videos_convert_success\":\"1\",\"etype_photos_submit_wall\":\"1\",\"notif_photos_submit_wall\":\"1\",\"etype_photos_reply_wall\":\"1\",\"notif_photos_reply_wall\":\"1\",\"etype_photos_tagging\":\"1\",\"notif_photos_tagging\":\"1\",\"etype_photos_like\":\"1\",\"notif_photos_like\":\"1\",\"etype_system_messaging\":\"1\",\"notif_system_messaging\":\"1\",\"default_group_tab\":\"1\",\"default_event_tab\":\"1\",\"enablereporting\":\"1\",\"maxReport\":\"50\",\"notifyMaxReport\":\"\",\"enableguestreporting\":\"0\",\"predefinedreports\":\"Spamming \\/ Advertisement\\\\nProfanity \\/ Inappropriate content.\\\\nAbusive.\",\"guestsearch\":\"1\",\"privacy_search_email\":\"0\",\"sendemailonpageload\":\"0\",\"archive_activity_max_day\":\"1\",\"archive_activity_limit\":\"1500\",\"enableterms\":\"1\",\"registrationTerms\":\"\",\"profile_deletion\":\"1\",\"alloweddomains\":\"\",\"denieddomains\":\"\",\"nocaptcha\":\"0\",\"nocaptchapublic\":\"\",\"nocaptchaprivate\":\"\",\"nocaptchatheme\":\"light\",\"respectactivityprivacy\":\"1\",\"newtab\":\"0\",\"allmemberactivitycomment\":\"1\",\"likes_groups\":\"1\",\"likes_events\":\"1\",\"likes_photo\":\"1\",\"likes_videos\":\"1\",\"likes_profile\":\"1\",\"sitename\":\"Comunidad\",\"redirect_login\":\"frontpage\",\"redirect_logout\":\"frontpage\",\"enablesharethis\":\"1\",\"shareviaemail\":\"0\",\"enablepm\":\"1\",\"notifications_ajax_enable_refresh\":\"0\",\"notifications_ajax_refresh_interval\":\"\",\"wallediting\":\"1\",\"lockprofilewalls\":\"1\",\"lockvideoswalls\":\"0\",\"lockphotoswalls\":\"0\",\"lockgroupwalls\":\"1\",\"lockeventwalls\":\"1\",\"enable_refresh\":\"1\",\"stream_refresh_interval\":\"30000\",\"stream_default_comments\":\"3\",\"stream_comment_length\":\"150\",\"daylightsavingoffset\":\"0\",\"htmlemail\":\"1\",\"copyrightemail\":\"Copyright of Your Company\",\"statusmaxchar\":\"400\",\"streamlocation\":\"1\",\"statusemoticon\":\"1\",\"profile_multiprofile\":\"1\",\"alphabetfiltering\":\"1\",\"enablegroups\":\"1\",\"enableguestsearchgroups\":\"1\",\"moderategroupcreation\":\"1\",\"creategroups\":\"1\",\"groupcreatelimit\":\"300\",\"groupphotouploadlimit\":\"500\",\"groupvideouploadlimit\":\"500\",\"createannouncement\":\"1\",\"creatediscussion\":\"1\",\"groupphotos\":\"1\",\"groupvideos\":\"1\",\"group_events\":\"1\",\"groupdiscussnotification\":\"1\",\"discussionfilelimit\":\"500\",\"groupdiscussfilesharing\":\"0\",\"filemaxuploadsize\":\"8\",\"groupbulletinfilesharing\":\"0\",\"enablephotos\":\"1\",\"photouploadlimit\":\"500\",\"photosmapdefault\":\"0\",\"maxuploadsize\":\"2\",\"deleteoriginalphotos\":\"1\",\"magickPath\":\"M4ZG2IVQdf1c2a82f3f86aa9ec7a425efb36500d\",\"autoalbumcover\":\"1\",\"photos_auto_rotate\":\"1\",\"output_image_quality\":\"80\",\"album_mode\":\"1\",\"enable_photos_location\":\"1\",\"enablevideos\":\"0\",\"enableguestsearchvideos\":\"0\",\"enableprofilevideo\":\"0\",\"enablevideosupload\":\"0\",\"videouploadlimit\":\"500\",\"videosmapdefault\":\"0\",\"deleteoriginalvideos\":\"0\",\"videofolder\":\"images\",\"maxvideouploadsize\":\"8\",\"ffmpegPath\":\"\",\"flvtool2\":\"\",\"qscale\":\"11\",\"videosSize\":\"640x360\",\"videosThumbSize\":\"640x360\",\"customCommandForVideo\":\"\",\"enablevideopseudostream\":\"0\",\"videodebug\":\"0\",\"video_mode\":\"0\",\"enable_zencoder\":\"0\",\"zencoder_api_key\":\"\",\"fbconnectkey\":\"10150096410490054\",\"fbconnectsecret\":\"ccd799c174d94ac2145253b06f16820b\",\"usejfbc\":\"0\",\"fbsignupimport\":\"1\",\"fbwatermark\":\"1\",\"fbloginimportprofile\":\"1\",\"fbloginimportavatar\":\"1\",\"fbconnectupdatestatus\":\"0\",\"fbconnectpoststatus\":\"0\",\"fieldcodestreet\":\"FIELD_ADDRESS\",\"fieldcodecity\":\"FIELD_CITY\",\"fieldcodestate\":\"FIELD_STATE\",\"fieldcodecountry\":\"FIELD_COUNTRY\",\"enable_embedly\":\"1\",\"embedly_apikey\":\"a9e1bd75451049c89ac9dfb1e74f8e85\",\"antispam_enable\":\"1\",\"antispam_akismet_key\":\"7b112ffa4f22\",\"antispam_akismet_messages\":\"1\",\"antispam_akismet_friends\":\"0\",\"antispam_akismet_walls\":\"1\",\"antispam_akismet_status\":\"1\",\"antispam_akismet_discussions\":\"1\"}');

/*!40000 ALTER TABLE `web_community_config` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_community_connect_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_connect_users`;

CREATE TABLE `web_community_connect_users` (
  `connectid` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`connectid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_connection
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_connection`;

CREATE TABLE `web_community_connection` (
  `connection_id` int(11) NOT NULL AUTO_INCREMENT,
  `connect_from` int(11) NOT NULL,
  `connect_to` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `group` int(11) NOT NULL,
  `msg` text NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`connection_id`),
  KEY `connect_from` (`connect_from`,`connect_to`,`status`,`group`),
  KEY `idx_connect_to` (`connect_to`),
  KEY `idx_connect_from` (`connect_from`),
  KEY `idx_connect_tofrom` (`connect_to`,`connect_from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_engagement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_engagement`;

CREATE TABLE `web_community_engagement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `week` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_community_engagement` WRITE;
/*!40000 ALTER TABLE `web_community_engagement` DISABLE KEYS */;

INSERT INTO `web_community_engagement` (`id`, `action`, `user_id`, `created`, `week`)
VALUES
	(1,'message.share',969,'2015-07-16 07:14:59',29),
	(2,'message.share',969,'2015-07-16 07:15:41',29),
	(3,'message.share',969,'2015-07-16 07:17:28',29),
	(4,'message.share',969,'2015-07-16 07:27:53',29);

/*!40000 ALTER TABLE `web_community_engagement` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_community_events
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_events`;

CREATE TABLE `web_community_events` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL COMMENT 'parent for recurring event',
  `catid` int(11) unsigned NOT NULL,
  `contentid` int(11) unsigned DEFAULT '0' COMMENT '0 - if type == profile, else it hold the group id',
  `type` varchar(255) NOT NULL DEFAULT 'profile' COMMENT 'profile, group',
  `title` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `summary` text NOT NULL,
  `unlisted` tinyint(1) NOT NULL,
  `description` text,
  `creator` int(11) unsigned NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `permission` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0 - Open (Anyone can mark attendence), 1 - Private (Only invited can mark attendence)',
  `avatar` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `cover` text NOT NULL,
  `invitedcount` int(11) unsigned DEFAULT '0',
  `confirmedcount` int(11) unsigned DEFAULT '0' COMMENT 'treat this as member count as well',
  `declinedcount` int(11) unsigned DEFAULT '0',
  `maybecount` int(11) unsigned DEFAULT '0',
  `wallcount` int(11) unsigned DEFAULT '0',
  `ticket` int(11) unsigned DEFAULT '0' COMMENT 'Represent how many guest can be joined or invited.',
  `allowinvite` tinyint(1) unsigned DEFAULT '1' COMMENT '0 - guest member cannot invite thier friends to join. 1 - yes, guest member can invite any of thier friends to join.',
  `created` datetime DEFAULT NULL,
  `hits` int(11) unsigned DEFAULT '0',
  `published` int(11) unsigned DEFAULT '1',
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `offset` varchar(5) DEFAULT NULL,
  `allday` tinyint(11) NOT NULL DEFAULT '0',
  `repeat` varchar(50) DEFAULT NULL COMMENT 'null,daily,weekly,monthly',
  `repeatend` date NOT NULL,
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_creator` (`creator`),
  KEY `idx_period` (`startdate`,`enddate`),
  KEY `idx_type` (`type`),
  KEY `idx_catid` (`catid`),
  KEY `idx_published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_events_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_events_category`;

CREATE TABLE `web_community_events_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_community_events_category` WRITE;
/*!40000 ALTER TABLE `web_community_events_category` DISABLE KEYS */;

INSERT INTO `web_community_events_category` (`id`, `parent`, `name`, `description`)
VALUES
	(1,0,'Promoción','Ventaja aplicable a cualquier cuenta'),
	(2,0,'Ingame','Eventos que ocurren en el juego'),
	(3,0,'Party','Party events');

/*!40000 ALTER TABLE `web_community_events_category` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_community_events_members
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_events_members`;

CREATE TABLE `web_community_events_members` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `eventid` int(11) unsigned NOT NULL,
  `memberid` int(11) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '[Join / Invite]: 0 - [pending approval/pending invite], 1 - [approved/confirmed], 2 - [rejected/declined], 3 - [maybe/maybe], 4 - [blocked/blocked]',
  `permission` tinyint(1) unsigned NOT NULL DEFAULT '3' COMMENT '1 - creator, 2 - admin, 3 - member',
  `invited_by` int(11) unsigned DEFAULT '0',
  `approval` tinyint(1) unsigned DEFAULT '0' COMMENT '0 - no approval required, 1 - required admin approval',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eventid` (`eventid`),
  KEY `idx_status` (`status`),
  KEY `idx_invitedby` (`invited_by`),
  KEY `idx_permission` (`eventid`,`permission`),
  KEY `idx_member_event` (`eventid`,`memberid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_featured
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_featured`;

CREATE TABLE `web_community_featured` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_fields`;

CREATE TABLE `web_community_fields` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `ordering` int(11) DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `min` int(5) NOT NULL,
  `max` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tips` text NOT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `required` tinyint(1) DEFAULT '0',
  `searchable` tinyint(1) DEFAULT '1',
  `registration` tinyint(1) DEFAULT '1',
  `options` text,
  `fieldcode` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fieldcode` (`fieldcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_community_fields` WRITE;
/*!40000 ALTER TABLE `web_community_fields` DISABLE KEYS */;

INSERT INTO `web_community_fields` (`id`, `type`, `ordering`, `published`, `min`, `max`, `name`, `tips`, `visible`, `required`, `searchable`, `registration`, `options`, `fieldcode`, `params`)
VALUES
	(1,'group',1,1,10,100,'Basic Information','Basic information for user',1,1,1,1,'','',''),
	(2,'gender',2,1,10,100,'Gender','Select gender',1,1,1,1,'COM_COMMUNITY_MALE\nCOM_COMMUNITY_FEMALE','FIELD_GENDER',''),
	(3,'birthdate',3,1,10,100,'Birthdate','Enter your date of birth so other users can know when to wish you happy birthday ',1,1,1,1,'','FIELD_BIRTHDATE',''),
	(4,'textarea',4,1,1,800,'About me','Tell us more about yourself',1,1,1,1,'','FIELD_ABOUTME',''),
	(5,'group',5,1,10,100,'Contact Information','Specify your contact details',1,1,1,1,'','',''),
	(6,'text',6,0,10,100,'Mobile phone','Mobile carrier number that other users can contact you.',0,0,1,1,'','FIELD_MOBILE',''),
	(7,'text',7,0,10,100,'Land phone','Contact number that other users can contact you.',0,0,1,1,'','FIELD_LANDPHONE',''),
	(8,'textarea',8,0,10,100,'Address','Your Address',0,0,1,1,'','FIELD_ADDRESS',''),
	(9,'text',9,1,10,100,'State','Your state',1,0,1,1,'','FIELD_STATE',''),
	(10,'text',10,1,10,100,'City / Town','Your city or town name',1,1,1,1,'','FIELD_CITY',''),
	(11,'country',11,1,10,100,'Country','Your country',1,1,1,1,'Afghanistan\nAlbania\nAlgeria\nAmerican Samoa\nAndorra\nAngola\nAnguilla\nAntarctica\nAntigua and Barbuda\nArgentina\nArmenia\nAruba\nAustralia\nAustria\nAzerbaijan\nBahamas\nBahrain\nBangladesh\nBarbados\nBelarus\nBelgium\nBelize\nBenin\nBermuda\nBhutan\nBolivia\nBosnia and Herzegovina\nBotswana\nBouvet Island\nBrazil\nBritish Indian Ocean Territory\nBrunei Darussalam\nBulgaria\nBurkina Faso\nBurundi\nCambodia\nCameroon\nCanada\nCape Verde\nCayman Islands\nCentral African Republic\nChad\nChile\nChina\nChristmas Island\nCocos (Keeling) Islands\nColombia\nComoros\nCongo\nCook Islands\nCosta Rica\nCote D\'Ivoire (Ivory Coast)\nCroatia (Hrvatska)\nCuba\nCyprus\nCzechoslovakia (former)\nCzech Republic\nDenmark\nDjibouti\nDominica\nDominican Republic\nEast Timor\nEcuador\nEgypt\nEl Salvador\nEquatorial Guinea\nEritrea\nEstonia\nEthiopia\nFalkland Islands (Malvinas)\nFaroe Islands\nFiji\nFinland\nFrance\nFrance, Metropolitan\nFrench Guiana\nFrench Polynesia\nFrench Southern Territories\nGabon\nGambia\nGeorgia\nGermany\nGhana\nGibraltar\nGreat Britain (UK)\nGreece\nGreenland\nGrenada\nGuadeloupe\nGuam\nGuatemala\nGuinea\nGuinea-Bissau\nGuyana\nHaiti\nHeard and McDonald Islands\nHonduras\nHong Kong\nHungary\nIceland\nIndia\nIndonesia\nIran\nIraq\nIreland\nIsrael\nItaly\nJamaica\nJapan\nJordan\nKazakhstan\nKenya\nKiribati\nKorea, North\nSouth Korea\nKuwait\nKyrgyzstan\nLaos\nLatvia\nLebanon\nLesotho\nLiberia\nLibya\nLiechtenstein\nLithuania\nLuxembourg\nMacau\nMacedonia\nMadagascar\nMalawi\nMalaysia\nMaldives\nMali\nMalta\nMarshall Islands\nMartinique\nMauritania\nMauritius\nMayotte\nMexico\nMicronesia\nMoldova\nMonaco\nMongolia\nMontserrat\nMorocco\nMozambique\nMyanmar\nNamibia\nNauru\nNepal\nNetherlands\nNetherlands Antilles\nNeutral Zone\nNew Caledonia\nNew Zealand\nNicaragua\nNiger\nNigeria\nNiue\nNorfolk Island\nNorthern Mariana Islands\nNorway\nOman\nPakistan\nPalau\nPanama\nPapua New Guinea\nParaguay\nPeru\nPhilippines\nPitcairn\nPoland\nPortugal\nPuerto Rico\nQatar\nReunion\nRomania\nRussian Federation\nRwanda\nSaint Kitts and Nevis\nSaint Lucia\nSaint Vincent and the Grenadines\nSamoa\nSan Marino\nSao Tome and Principe\nSaudi Arabia\nSenegal\nSeychelles\nS. Georgia and S. Sandwich Isls.\nSierra Leone\nSingapore\nSlovak Republic\nSlovenia\nSolomon Islands\nSomalia\nSouth Africa\nSpain\nSri Lanka\nSt. Helena\nSt. Pierre and Miquelon\nSudan\nSuriname\nSvalbard and Jan Mayen Islands\nSwaziland\nSweden\nSwitzerland\nSyria\nTaiwan\nTajikistan\nTanzania\nThailand\nTogo\nTokelau\nTonga\nTrinidad and Tobago\nTunisia\nTurkey\nTurkmenistan\nTurks and Caicos Islands\nTuvalu\nUganda\nUkraine\nUnited Arab Emirates\nUnited Kingdom\nUnited States\nUruguay\nUS Minor Outlying Islands\nUSSR (former)\nUzbekistan\nVanuatu\nVatican City State (Holy Sea)\nVenezuela\nViet Nam\nVirgin Islands (British)\nVirgin Islands (U.S.)\nWallis and Futuna Islands\nWestern Sahara\nYemen\nYugoslavia\nZaire\nZambia\nZimbabwe','FIELD_COUNTRY',''),
	(12,'url',12,0,10,100,'Website','Your website',0,0,1,1,'','FIELD_WEBSITE',''),
	(13,'group',13,0,10,100,'Education','Educations',0,0,1,1,'','',''),
	(14,'text',14,0,10,200,'College / University','Your college or university name',0,0,1,1,'','FIELD_COLLEGE',''),
	(15,'text',15,0,5,100,'Graduation Year','Graduation year',0,0,1,1,'','FIELD_GRADUATION','');

/*!40000 ALTER TABLE `web_community_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_community_fields_values
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_fields_values`;

CREATE TABLE `web_community_fields_values` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `field_id` int(10) NOT NULL,
  `value` text NOT NULL,
  `access` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `user_id` (`user_id`),
  KEY `idx_user_fieldid` (`user_id`,`field_id`),
  KEY `access` (`access`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_community_fields_values` WRITE;
/*!40000 ALTER TABLE `web_community_fields_values` DISABLE KEYS */;

INSERT INTO `web_community_fields_values` (`id`, `user_id`, `field_id`, `value`, `access`)
VALUES
	(1,969,2,'COM_COMMUNITY_MALE',10),
	(2,969,3,'1994-3-15 23:59:59',10),
	(3,969,4,'INTP. In your naked and vulnerable state, my fantasy rudely creeped in and made your reality its bitch.',10),
	(4,969,9,'',10),
	(5,969,10,'Bembibre',10),
	(6,969,11,'COM_COMMUNITY_LANG_NAME_SPAIN',10);

/*!40000 ALTER TABLE `web_community_fields_values` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_community_files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_files`;

CREATE TABLE `web_community_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `groupid` int(11) NOT NULL,
  `discussionid` int(11) NOT NULL,
  `bulletinid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `profileid` int(11) NOT NULL,
  `filepath` varchar(255) NOT NULL,
  `filesize` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `storage` varchar(64) NOT NULL,
  `creator` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discussionid` (`discussionid`),
  KEY `groupid` (`groupid`),
  KEY `creator` (`creator`),
  KEY `bulletinid` (`bulletinid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_groups`;

CREATE TABLE `web_community_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL,
  `ownerid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `summary` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `approvals` tinyint(1) NOT NULL,
  `unlisted` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `avatar` text NOT NULL,
  `thumb` text NOT NULL,
  `cover` text NOT NULL,
  `discusscount` int(11) NOT NULL DEFAULT '0',
  `wallcount` int(11) NOT NULL DEFAULT '0',
  `membercount` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `hits` int(11) NOT NULL,
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_community_groups` WRITE;
/*!40000 ALTER TABLE `web_community_groups` DISABLE KEYS */;

INSERT INTO `web_community_groups` (`id`, `published`, `ownerid`, `categoryid`, `name`, `description`, `summary`, `email`, `website`, `approvals`, `unlisted`, `created`, `avatar`, `thumb`, `cover`, `discusscount`, `wallcount`, `membercount`, `params`, `hits`, `storage`)
VALUES
	(1,1,969,2,'Contribuidores','<p>El staff de Dynamite.zone</p>','','','',1,0,'2015-07-16 05:51:07','','','',1,0,1,'{\"discussordering\":0,\"photopermission\":\"-1\",\"videopermission\":\"-1\",\"eventpermission\":\"-1\",\"grouprecentphotos\":6,\"grouprecentvideos\":6,\"grouprecentevents\":6,\"newmembernotification\":1,\"joinrequestnotification\":1,\"wallnotification\":1,\"groupannouncementfilesharing\":0,\"stream\":1}',1,'file');

/*!40000 ALTER TABLE `web_community_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_community_groups_bulletins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_groups_bulletins`;

CREATE TABLE `web_community_groups_bulletins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_groups_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_groups_category`;

CREATE TABLE `web_community_groups_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_community_groups_category` WRITE;
/*!40000 ALTER TABLE `web_community_groups_category` DISABLE KEYS */;

INSERT INTO `web_community_groups_category` (`id`, `parent`, `name`, `description`)
VALUES
	(1,0,'General','General group category.'),
	(2,0,'Internet','Internet group category.'),
	(3,0,'Business','Business groups category'),
	(4,0,'Automotive','Automotive groups category'),
	(5,0,'Music','Music groups category'),
	(6,0,'Hermandad',''),
	(7,0,'Hermandades','Crea un grupo para compartir con tu hermandad');

/*!40000 ALTER TABLE `web_community_groups_category` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_community_groups_discuss
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_groups_discuss`;

CREATE TABLE `web_community_groups_discuss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL DEFAULT '0',
  `groupid` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `lastreplied` datetime NOT NULL,
  `lock` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupid` (`groupid`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_community_groups_discuss` WRITE;
/*!40000 ALTER TABLE `web_community_groups_discuss` DISABLE KEYS */;

INSERT INTO `web_community_groups_discuss` (`id`, `parentid`, `groupid`, `creator`, `created`, `title`, `message`, `lastreplied`, `lock`, `params`)
VALUES
	(1,0,1,969,'2015-07-16 10:19:26','sdfsaf','dfgsdfg','2015-07-16 10:19:26',0,'{\"filepermission-member\":0}');

/*!40000 ALTER TABLE `web_community_groups_discuss` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_community_groups_invite
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_groups_invite`;

CREATE TABLE `web_community_groups_invite` (
  `groupid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `creator` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_groups_members
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_groups_members`;

CREATE TABLE `web_community_groups_members` (
  `groupid` int(11) NOT NULL,
  `memberid` int(11) NOT NULL,
  `approved` int(11) NOT NULL,
  `permissions` int(1) NOT NULL,
  KEY `groupid` (`groupid`),
  KEY `idx_memberid` (`memberid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_community_groups_members` WRITE;
/*!40000 ALTER TABLE `web_community_groups_members` DISABLE KEYS */;

INSERT INTO `web_community_groups_members` (`groupid`, `memberid`, `approved`, `permissions`)
VALUES
	(1,969,1,1);

/*!40000 ALTER TABLE `web_community_groups_members` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_community_hashtag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_hashtag`;

CREATE TABLE `web_community_hashtag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(128) NOT NULL,
  `params` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_invitations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_invitations`;

CREATE TABLE `web_community_invitations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `callback` varchar(255) NOT NULL,
  `cid` int(11) NOT NULL,
  `users` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_likes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_likes`;

CREATE TABLE `web_community_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` varchar(200) NOT NULL,
  `uid` int(10) NOT NULL,
  `like` text NOT NULL,
  `dislike` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `element` (`element`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_location_cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_location_cache`;

CREATE TABLE `web_community_location_cache` (
  `address` varchar(255) NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `data` text NOT NULL,
  `status` varchar(2) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_mailq
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_mailq`;

CREATE TABLE `web_community_mailq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipient` text NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `template` varchar(64) NOT NULL,
  `email_type` text,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_memberlist
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_memberlist`;

CREATE TABLE `web_community_memberlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `condition` varchar(255) NOT NULL,
  `avataronly` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_memberlist_criteria
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_memberlist_criteria`;

CREATE TABLE `web_community_memberlist_criteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `field` varchar(255) NOT NULL,
  `condition` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `listid` (`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_moods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_moods`;

CREATE TABLE `web_community_moods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` varchar(128) NOT NULL,
  `image` varchar(256) DEFAULT NULL,
  `custom` tinyint(4) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `allowcustomtext` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_community_moods` WRITE;
/*!40000 ALTER TABLE `web_community_moods` DISABLE KEYS */;

INSERT INTO `web_community_moods` (`id`, `title`, `description`, `image`, `custom`, `published`, `allowcustomtext`, `ordering`)
VALUES
	(1,'happy','COM_COMMUNITY_MOOD_HAPPY',NULL,0,1,0,0),
	(2,'meh','COM_COMMUNITY_MOOD_MEH',NULL,0,1,0,0),
	(3,'sad','COM_COMMUNITY_MOOD_SAD',NULL,0,1,0,0),
	(4,'loved','COM_COMMUNITY_MOOD_LOVED',NULL,0,1,0,0),
	(5,'excited','COM_COMMUNITY_MOOD_EXCITED',NULL,0,1,0,0),
	(6,'pretty','COM_COMMUNITY_MOOD_PRETTY',NULL,0,1,0,0),
	(7,'tired','COM_COMMUNITY_MOOD_TIRED',NULL,0,1,0,0),
	(8,'angry','COM_COMMUNITY_MOOD_ANGRY',NULL,0,1,0,0),
	(9,'speachless','COM_COMMUNITY_MOOD_SPEACHLESS',NULL,0,1,0,0),
	(10,'shocked','COM_COMMUNITY_MOOD_SHOCKED',NULL,0,1,0,0),
	(11,'irretated','COM_COMMUNITY_MOOD_IRRETATED',NULL,0,1,0,0),
	(12,'sick','COM_COMMUNITY_MOOD_SICK',NULL,0,1,0,0),
	(13,'annoyed','COM_COMMUNITY_MOOD_ANNOYED',NULL,0,1,0,0),
	(14,'relieved','COM_COMMUNITY_MOOD_RELIEVED',NULL,0,1,0,0),
	(15,'blessed','COM_COMMUNITY_MOOD_BLESSED',NULL,0,1,0,0),
	(16,'bored','COM_COMMUNITY_MOOD_BORED',NULL,0,1,0,0),
	(19,'COM_COMMUNITY_MOOD_SHORT_HAPPY','COM_COMMUNITY_MOOD_HAPPY','png',1,1,0,0),
	(20,'COM_COMMUNITY_MOOD_SHORT_SAD','COM_COMMUNITY_MOOD_SAD','png',1,1,0,0),
	(21,'COM_COMMUNITY_MOOD_SHORT_COOL','COM_COMMUNITY_MOOD_COOL','png',1,1,0,0),
	(22,'COM_COMMUNITY_MOOD_SHORT_IRRITATED','COM_COMMUNITY_MOOD_IRRITATED','png',1,1,0,0),
	(23,'COM_COMMUNITY_MOOD_SHORT_ANNOYED','COM_COMMUNITY_MOOD_ANNOYED','png',1,1,0,0),
	(24,'COM_COMMUNITY_MOOD_SHORT_SHOCKED','COM_COMMUNITY_MOOD_SHOCKED','png',1,1,0,0),
	(25,'COM_COMMUNITY_MOOD_SHORT_AMUSED','COM_COMMUNITY_MOOD_AMUSED','png',1,1,0,0),
	(26,'COM_COMMUNITY_MOOD_SHORT_SPEECHLESS','COM_COMMUNITY_MOOD_SPEECHLESS','png',1,1,0,0),
	(27,'COM_COMMUNITY_MOOD_SHORT_RICH','COM_COMMUNITY_MOOD_RICH','png',1,1,0,0),
	(28,'COM_COMMUNITY_MOOD_SHORT_CHEEKY','COM_COMMUNITY_MOOD_CHEEKY','png',1,1,0,0),
	(29,'COM_COMMUNITY_MOOD_SHORT_ANGRY','COM_COMMUNITY_MOOD_ANGRY','png',1,1,0,0),
	(30,'COM_COMMUNITY_MOOD_SHORT_HUNGRY','COM_COMMUNITY_MOOD_HUNGRY','png',1,1,0,0),
	(31,'COM_COMMUNITY_MOOD_SHORT_FESTIVE','COM_COMMUNITY_MOOD_FESTIVE','png',1,1,0,0),
	(32,'COM_COMMUNITY_MOOD_SHORT_ROYAL','COM_COMMUNITY_MOOD_ROYAL','png',1,1,0,0),
	(33,'COM_COMMUNITY_MOOD_SHORT_LOVE','COM_COMMUNITY_MOOD_LOVE','png',1,1,0,0),
	(34,'COM_COMMUNITY_MOOD_SHORT_AFRAID','COM_COMMUNITY_MOOD_AFRAID','png',1,1,0,0),
	(35,'COM_COMMUNITY_MOOD_SHORT_POWERFUL','COM_COMMUNITY_MOOD_POWERFUL','png',1,1,0,0),
	(36,'COM_COMMUNITY_MOOD_SHORT_INVISIBLE','COM_COMMUNITY_MOOD_INVISIBLE','png',1,1,0,0),
	(37,'COM_COMMUNITY_MOOD_SHORT_SWEET','COM_COMMUNITY_MOOD_SWEET','png',1,1,0,0),
	(38,'COM_COMMUNITY_MOOD_SHORT_THIRSTY','COM_COMMUNITY_MOOD_THIRSTY','png',1,1,0,0),
	(39,'COM_COMMUNITY_MOOD_SHORT_CLEAN','COM_COMMUNITY_MOOD_CLEAN','png',1,1,0,0),
	(40,'COM_COMMUNITY_MOOD_SHORT_WATCHING','COM_COMMUNITY_MOOD_WATCHING','png',1,1,0,0),
	(41,'COM_COMMUNITY_MOOD_SHORT_BORED','COM_COMMUNITY_MOOD_BORED','png',1,1,0,0),
	(42,'COM_COMMUNITY_MOOD_SHORT_BUMMED','COM_COMMUNITY_MOOD_BUMMED','png',1,1,0,0),
	(43,'COM_COMMUNITY_MOOD_SHORT_INNOVATIVE','COM_COMMUNITY_MOOD_INNOVATIVE','png',1,1,0,0),
	(44,'COM_COMMUNITY_MOOD_SHORT_LUCKY','COM_COMMUNITY_MOOD_LUCKY','png',1,1,0,0),
	(45,'COM_COMMUNITY_MOOD_SHORT_FOCUSED','COM_COMMUNITY_MOOD_FOCUSED','png',1,1,0,0),
	(46,'COM_COMMUNITY_MOOD_SHORT_SURFING','COM_COMMUNITY_MOOD_SURFING','png',1,1,0,0);

/*!40000 ALTER TABLE `web_community_moods` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_community_msg
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_msg`;

CREATE TABLE `web_community_msg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(10) unsigned NOT NULL,
  `parent` int(10) unsigned NOT NULL,
  `deleted` tinyint(3) unsigned DEFAULT '0',
  `from_name` varchar(45) NOT NULL,
  `posted_on` datetime DEFAULT NULL,
  `subject` tinytext NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_msg_recepient
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_msg_recepient`;

CREATE TABLE `web_community_msg_recepient` (
  `msg_id` int(10) unsigned NOT NULL,
  `msg_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `msg_from` int(10) unsigned NOT NULL,
  `to` int(10) unsigned NOT NULL,
  `bcc` tinyint(3) unsigned DEFAULT '0',
  `is_read` tinyint(3) unsigned DEFAULT '0',
  `deleted` tinyint(3) unsigned DEFAULT '0',
  UNIQUE KEY `un` (`msg_id`,`to`),
  KEY `msg_id` (`msg_id`),
  KEY `to` (`to`),
  KEY `idx_isread_to_deleted` (`is_read`,`to`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_notifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_notifications`;

CREATE TABLE `web_community_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `content` text NOT NULL,
  `type` varchar(200) NOT NULL,
  `cmd_type` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `type` (`type`),
  KEY `target` (`target`),
  KEY `actor` (`actor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_oauth
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_oauth`;

CREATE TABLE `web_community_oauth` (
  `userid` int(11) NOT NULL,
  `requesttoken` text NOT NULL,
  `accesstoken` text NOT NULL,
  `app` varchar(255) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_community_oauth` WRITE;
/*!40000 ALTER TABLE `web_community_oauth` DISABLE KEYS */;

INSERT INTO `web_community_oauth` (`userid`, `requesttoken`, `accesstoken`, `app`)
VALUES
	(969,'N;','','twitter');

/*!40000 ALTER TABLE `web_community_oauth` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_community_photos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_photos`;

CREATE TABLE `web_community_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `albumid` int(11) NOT NULL,
  `caption` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `creator` int(11) NOT NULL,
  `permissions` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `original` varchar(255) NOT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  `created` datetime NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `status` varchar(200) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `albumid` (`albumid`),
  KEY `idx_storage` (`storage`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_photos_albums
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_photos_albums`;

CREATE TABLE `web_community_photos_albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photoid` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `permissions` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `groupid` int(11) NOT NULL DEFAULT '0',
  `eventid` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `location` text NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creator` (`creator`),
  KEY `idx_type` (`type`),
  KEY `idx_albumtype` (`id`,`type`),
  KEY `idx_creatortype` (`creator`,`type`),
  KEY `idx_groupid` (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_photos_tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_photos_tag`;

CREATE TABLE `web_community_photos_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_photoid` (`photoid`),
  KEY `idx_userid` (`userid`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_photo_user` (`photoid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_photos_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_photos_tokens`;

CREATE TABLE `web_community_photos_tokens` (
  `userid` int(11) NOT NULL,
  `token` varchar(200) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_profiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_profiles`;

CREATE TABLE `web_community_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `approvals` tinyint(3) NOT NULL,
  `published` tinyint(3) NOT NULL,
  `avatar` text NOT NULL,
  `watermark` text NOT NULL,
  `watermark_hash` varchar(255) NOT NULL,
  `watermark_location` text NOT NULL,
  `thumb` text NOT NULL,
  `created` datetime NOT NULL,
  `create_groups` tinyint(1) DEFAULT '1',
  `create_events` int(11) DEFAULT '1',
  `profile_lock` tinyint(1) DEFAULT '0',
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `approvals` (`approvals`,`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_profiles_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_profiles_fields`;

CREATE TABLE `web_community_profiles_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `multiprofile_id` (`parent`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_register
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_register`;

CREATE TABLE `web_community_register` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `firstname` varchar(180) NOT NULL,
  `lastname` varchar(180) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `ip` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_register_auth_token
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_register_auth_token`;

CREATE TABLE `web_community_register_auth_token` (
  `token` varchar(200) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `auth_key` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`token`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_reports
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_reports`;

CREATE TABLE `web_community_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniquestring` varchar(200) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_reports_actions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_reports_actions`;

CREATE TABLE `web_community_reports_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reportid` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `parameters` varchar(255) NOT NULL,
  `defaultaction` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_reports_reporter
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_reports_reporter`;

CREATE TABLE `web_community_reports_reporter` (
  `reportid` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_storage_s3
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_storage_s3`;

CREATE TABLE `web_community_storage_s3` (
  `storageid` varchar(255) NOT NULL,
  `resource_path` varchar(255) NOT NULL,
  UNIQUE KEY `storageid` (`storageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_tags`;

CREATE TABLE `web_community_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` varchar(200) NOT NULL,
  `userid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `tag` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_tags_words
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_tags_words`;

CREATE TABLE `web_community_tags_words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(200) NOT NULL,
  `count` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_theme
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_theme`;

CREATE TABLE `web_community_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `web_community_theme` WRITE;
/*!40000 ALTER TABLE `web_community_theme` DISABLE KEYS */;

INSERT INTO `web_community_theme` (`id`, `key`, `value`)
VALUES
	(1,'scss-default','{\"colors\":{\"scss-color-primary\":\"5677FC\",\"scss-color-secondary\":\"259B24\",\"scss-color-neutral\":\"ECF0F1\",\"scss-color-important\":\"E74C3C\",\"scss-color-info\":\"E67E22\",\"scss-color-background\":\"ECF0F1\",\"scss-color-toolbar\":\"F5F7F7\",\"scss-color-focus-background\":\"FFFFFF\",\"scss-color-postbox\":\"FFFFFF\",\"scss-color-postbox-tab\":\"F5F5F5\",\"scss-color-module-background\":\"FFFFFF\",\"scss-color-moduletab-background\":\"E0E7E8\",\"scss-color-dropdown-background\":\"FFFFFF\",\"scss-color-dropdown-border\":\"E3E5E7\"},\"general\":{\"scss-stream-position\":\"right\",\"scss-button-style\":\"flat\",\"scss-avatar-shape\":\"circle\",\"scss-avatar-style\":\"bordered\"}}'),
	(2,'scss','{\"colors\":[],\"general\":{\"scss-stream-position\":\"left\",\"scss-button-style\":\"flat\",\"scss-avatar-shape\":\"circle\",\"scss-avatar-style\":\"bordered\"}}'),
	(3,'settings','{\"profile\":[],\"general\":{\"enable-frontpage-login\":\"0\",\"enable-frontpage-image\":\"1\",\"enable-frontpage-paragraph\":\"1\"}}');

/*!40000 ALTER TABLE `web_community_theme` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_community_user_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_user_status`;

CREATE TABLE `web_community_user_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `status` text NOT NULL,
  `posted_on` int(11) NOT NULL,
  `location` text NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_userpoints
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_userpoints`;

CREATE TABLE `web_community_userpoints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_name` varchar(255) NOT NULL DEFAULT '',
  `rule_description` text NOT NULL,
  `rule_plugin` varchar(255) NOT NULL DEFAULT '',
  `action_string` varchar(255) NOT NULL DEFAULT '',
  `component` varchar(255) NOT NULL DEFAULT '',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `points` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `system` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_community_userpoints` WRITE;
/*!40000 ALTER TABLE `web_community_userpoints` DISABLE KEYS */;

INSERT INTO `web_community_userpoints` (`id`, `rule_name`, `rule_description`, `rule_plugin`, `action_string`, `component`, `access`, `points`, `published`, `system`)
VALUES
	(1,'Profile Application Added','Assign number of points and select wether activity stream item will be created when user add profile application.','com_community','application.add','',1,0,1,1),
	(2,'Profile Application Removed','Assign number of points and select wether activity stream item will be created when user remove profile application.','com_community','application.remove','',1,0,0,1),
	(3,'Photo Upload','Assign number of points for photo upload action and select wether activity stream item will be created.','com_community','photo.upload','',1,0,1,1),
	(4,'New Group Created','Assign number of points when user create new group and select wether activity stream will be created.','com_community','group.create','',1,3,1,1),
	(5,'New Group Discussion','Assign number of points when user open new discussion in group and select wether activity stream item for this action will be created.','com_community','group.discussion.create','',1,2,1,1),
	(6,'User Leave The Group','Deduct points when registered user leave a group. * There is no activity stream item for this action.','com_community','group.leave','',1,-1,1,1),
	(7,'Friend Request Is Approved','Assign number of points when user approve friends request and select wether activity stream item for this action will be created.','com_community','friends.request.approve','',1,1,1,1),
	(8,'New Photo Album Created','Assign number of points when user creates new album and select wether activity stream item for this action will be created.','com_community','album.create','',1,1,1,1),
	(9,'Post Group Comment','Assign number of points when user post from group\'s share box and select wether to create activity stream item for this action.','com_community','group.wall.create','',1,1,1,1),
	(10,'Join Group','Assign number of points when user joins the group and select wether to create activity stream item for this action.','com_community','group.join','',1,1,1,1),
	(11,'Reply Group\'s Discussion','Assign number of points when registered user replied on group\'s discussion and select wether to create activity stream item for this action.','com_community','group.discussion.reply','',1,1,1,1),
	(12,'Comment Profile From Share Box','Assign number of points when user post from Share Box on other people\'s profiles and select wether to create activity stream item for this action.','com_community','profile.wall.create','',1,1,1,1),
	(13,'Post Status From Share Box','Assign number of points when user post status from Share Box and select wether to create activity stream item for this action.','com_community','profile.status.update','',1,1,1,1),
	(14,'Profile Updated','Assign number of points when profile is updated. There is no activity stream item for this action.','com_community','profile.save','',1,1,1,1),
	(15,'Group Updated','Assign number of points when user updates the group information and select wether to create activity stream item for this action.','com_community','group.updated','',1,1,1,1),
	(16,'Change Group Avatar','Assign number of points when group admin or owner changes its avatar.','com_community','group.avatar.upload','',1,0,1,1),
	(17,'Create Group\'s Announcement','Assign number of points when user publish new announcement in group and select wether to create activity stream item for this action.','com_community','group.news.create','',1,1,1,1),
	(18,'Comment Photo','Assign number of points when new photo comment is added and select wether to create activity stream item for this action','com_community','photos.wall.create','',1,1,1,1),
	(19,'Remove Friend','Deduct points when registered user remove a friend. There is no activity stream item for this action','com_community','friends.remove','',1,0,1,1),
	(20,'Change Profile Picture','Assign number of points when user changes profile picture and select wether to create activity stream item for this action','com_community','profile.avatar.upload','',1,100,0,1),
	(21,'Update Profile Privacy','Assign number of points when user update profile privacy. There is no activity stream item for this action.','com_community','profile.privacy.update','',1,0,1,1),
	(22,'Reply Private Message','Give points when user reply private message. Naturally, activity stream item for this action does not exist.','com_community','inbox.message.reply','',1,0,1,1),
	(23,'New Private Message','Give points when user send a new private message.','com_community','inbox.message.send','',1,0,1,1),
	(24,'Remove Group Member','Assign number of points when group owner or admin user remove a group memeber.','com_community','group.member.remove','',1,0,1,1),
	(25,'Delete Announcement','Deduct points when user remove announcement in group.','com_community','group.news.remove','',1,0,1,1),
	(26,'Remove Wall Comment','Deduct points to original poster when wall comment is removed.','com_community','wall.remove','',1,0,1,1),
	(27,'Delete Photo Album','Deduct points when user delete photo album.','com_community','album.remove','',1,0,1,1),
	(28,'Delete Photo','Deduct points when user delete a photo.','com_community','photo.remove','',1,0,1,1),
	(29,'Event Updated','Assign number of points when user update event information.','com_community','events.update','',1,1,1,1);

/*!40000 ALTER TABLE `web_community_userpoints` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_community_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_users`;

CREATE TABLE `web_community_users` (
  `userid` int(11) NOT NULL,
  `status` text NOT NULL,
  `status_access` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL,
  `posted_on` datetime NOT NULL,
  `avatar` text NOT NULL,
  `thumb` text NOT NULL,
  `cover` text NOT NULL,
  `invite` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `friends` text NOT NULL,
  `groups` text NOT NULL,
  `events` text NOT NULL,
  `friendcount` int(11) NOT NULL DEFAULT '0',
  `alias` varchar(255) NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `profile_id` int(11) NOT NULL DEFAULT '0',
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  `watermark_hash` varchar(255) NOT NULL,
  `search_email` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_community_users` WRITE;
/*!40000 ALTER TABLE `web_community_users` DISABLE KEYS */;

INSERT INTO `web_community_users` (`userid`, `status`, `status_access`, `points`, `posted_on`, `avatar`, `thumb`, `cover`, `invite`, `params`, `view`, `friends`, `groups`, `events`, `friendcount`, `alias`, `latitude`, `longitude`, `profile_id`, `storage`, `watermark_hash`, `search_email`)
VALUES
	(969,'https://twitter.com/dynamitewow/status/621499296354017280',10,7,'2015-07-16 07:27:53','','','',0,'{\"notifyEmailSystem\":1,\"privacyProfileView\":\"10\",\"privacyPhotoView\":\"10\",\"privacyFriendsView\":\"10\",\"privacyGroupsView\":\"10\",\"privacyVideoView\":0,\"notifyEmailMessage\":1,\"notifyEmailApps\":1,\"notifyWallComment\":0,\"notif_groups_notify_admin\":\"1\",\"etype_groups_notify_admin\":\"1\",\"notif_user_profile_delete\":\"1\",\"etype_user_profile_delete\":\"1\",\"notif_system_reports_threshold\":\"1\",\"etype_system_reports_threshold\":\"1\",\"notif_profile_activity_add_comment\":\"1\",\"etype_profile_activity_add_comment\":\"1\",\"notif_profile_activity_reply_comment\":\"1\",\"etype_profile_activity_reply_comment\":\"1\",\"notif_profile_status_update\":\"1\",\"etype_profile_status_update\":\"1\",\"notif_profile_like\":\"1\",\"etype_profile_like\":\"1\",\"notif_profile_stream_like\":\"1\",\"etype_profile_stream_like\":\"1\",\"notif_friends_request_connection\":\"1\",\"etype_friends_request_connection\":\"1\",\"notif_friends_create_connection\":\"1\",\"etype_friends_create_connection\":\"1\",\"notif_inbox_create_message\":\"1\",\"etype_inbox_create_message\":\"1\",\"notif_groups_invite\":\"1\",\"etype_groups_invite\":\"1\",\"notif_groups_discussion_reply\":\"1\",\"etype_groups_discussion_reply\":\"1\",\"notif_groups_wall_create\":\"1\",\"etype_groups_wall_create\":\"1\",\"notif_groups_create_discussion\":\"1\",\"etype_groups_create_discussion\":\"1\",\"notif_groups_create_news\":\"1\",\"etype_groups_create_news\":\"1\",\"notif_groups_create_album\":\"1\",\"etype_groups_create_album\":\"1\",\"notif_groups_create_video\":\"1\",\"etype_groups_create_video\":\"1\",\"notif_groups_create_event\":\"1\",\"etype_groups_create_event\":\"1\",\"notif_groups_sendmail\":\"1\",\"etype_groups_sendmail\":\"1\",\"notif_groups_member_approved\":\"1\",\"etype_groups_member_approved\":\"1\",\"notif_groups_member_join\":\"1\",\"etype_groups_member_join\":\"1\",\"notif_groups_notify_creator\":\"1\",\"etype_groups_notify_creator\":\"1\",\"notif_groups_discussion_newfile\":\"1\",\"etype_groups_discussion_newfile\":\"1\",\"notif_groups_activity_add_comment\":\"0\",\"etype_groups_activity_add_comment\":\"0\",\"notif_events_notify_admin\":\"1\",\"etype_events_notify_admin\":\"1\",\"notif_events_invite\":\"1\",\"etype_events_invite\":\"1\",\"notif_events_invitation_approved\":\"1\",\"etype_events_invitation_approved\":\"1\",\"notif_events_sendmail\":\"1\",\"etype_events_sendmail\":\"1\",\"notif_event_notify_creator\":\"0\",\"etype_event_notify_creator\":\"0\",\"notif_event_join_request\":\"1\",\"etype_event_join_request\":\"1\",\"notif_events_activity_add_comment\":\"0\",\"etype_events_activity_add_comment\":\"0\",\"notif_events_wall_create\":\"1\",\"etype_events_wall_create\":\"1\",\"notif_videos_submit_wall\":1,\"etype_videos_submit_wall\":1,\"notif_videos_reply_wall\":1,\"etype_videos_reply_wall\":1,\"notif_videos_tagging\":1,\"etype_videos_tagging\":1,\"notif_videos_like\":1,\"etype_videos_like\":1,\"notif_videos_convert_success\":1,\"etype_videos_convert_success\":1,\"notif_photos_submit_wall\":\"1\",\"etype_photos_submit_wall\":\"1\",\"notif_photos_reply_wall\":\"1\",\"etype_photos_reply_wall\":\"1\",\"notif_photos_tagging\":\"1\",\"etype_photos_tagging\":\"1\",\"notif_photos_like\":\"1\",\"etype_photos_like\":\"1\",\"notif_system_messaging\":\"1\",\"etype_system_messaging\":\"1\",\"postFacebookStatus\":1,\"lastnotificationlist\":\"2015-07-17 09:22:47\",\"mobileView\":null,\"activityLimit\":\"20\",\"profileLikes\":\"1\",\"etype_kunena_reply\":\"0\",\"notif_kunena_reply\":\"0\",\"etype_kunena_thankyou\":\"0\",\"notif_kunena_thankyou\":\"0\",\"search_email\":0,\"group_activity_1\":\"3\"}',0,'','','',0,'ethyrie',42.617363,-6.416166,0,'file','',0);

/*!40000 ALTER TABLE `web_community_users` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_community_videos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_videos`;

CREATE TABLE `web_community_videos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL DEFAULT 'file',
  `video_id` varchar(200) DEFAULT NULL,
  `description` text NOT NULL,
  `creator` int(11) unsigned NOT NULL,
  `creator_type` varchar(200) NOT NULL DEFAULT 'user',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `permissions` varchar(255) NOT NULL DEFAULT '0',
  `category_id` int(11) unsigned NOT NULL,
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '1',
  `featured` tinyint(3) NOT NULL DEFAULT '0',
  `duration` float unsigned DEFAULT '0',
  `status` varchar(200) NOT NULL DEFAULT 'pending',
  `thumb` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  `location` text NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creator` (`creator`),
  KEY `idx_groupid` (`groupid`),
  KEY `idx_storage` (`storage`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_videos_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_videos_category`;

CREATE TABLE `web_community_videos_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_community_videos_category` WRITE;
/*!40000 ALTER TABLE `web_community_videos_category` DISABLE KEYS */;

INSERT INTO `web_community_videos_category` (`id`, `parent`, `name`, `description`, `published`)
VALUES
	(1,0,'General','General video channel',1);

/*!40000 ALTER TABLE `web_community_videos_category` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_community_videos_tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_videos_tag`;

CREATE TABLE `web_community_videos_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `position` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_community_wall
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_community_wall`;

CREATE TABLE `web_community_wall` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contentid` int(10) unsigned NOT NULL DEFAULT '0',
  `post_by` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(45) NOT NULL,
  `comment` text NOT NULL,
  `date` varchar(45) NOT NULL,
  `published` tinyint(1) unsigned NOT NULL,
  `type` varchar(200) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contentid` (`contentid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_contact_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_contact_details`;

CREATE TABLE `web_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
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
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned DEFAULT NULL,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_contact_details` WRITE;
/*!40000 ALTER TABLE `web_contact_details` DISABLE KEYS */;

INSERT INTO `web_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`)
VALUES
	(1,'John Q. Public',X'6A6F686E2D712D7075626C6963','Chief Information Officer','1 Infinite Loop','Cupertino','California','USA','95014','1-212-555555-1','1-212-555555-2','Lorem ipsum dolor sit amet, consetetur sadipscing elitr.','','email@0.0.0.0',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,8,1,'','','','','','*','2011-11-18 16:33:47',969,'','2012-01-23 15:36:01',42,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0),
	(2,'Jane Q. Public',X'6A616E652D712D7075626C6963','Chief Information Officer','1 Infinite Loop','Cupertino','California','USA','95014','1-212-555555-1','1-212-555555-2','Lorem ipsum dolor sit amet, consetetur sadipscing elitr.','','email@0.0.0.0',0,1,0,'0000-00-00 00:00:00',2,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,8,1,'','','','','','*','2011-11-18 16:35:05',969,'','2012-01-19 16:37:23',42,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0);

/*!40000 ALTER TABLE `web_contact_details` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_content`;

CREATE TABLE `web_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_content` WRITE;
/*!40000 ALTER TABLE `web_content` DISABLE KEYS */;

INSERT INTO `web_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`)
VALUES
	(1,33,'Layouts',X'6C61796F757473','<p>Warp comes with a sophisticated layout system to create any kind of sidebar or widget layout. You can easily manage the sidebar\'s positions and widths in the theme administration. Widgets can have different styles and be placed in any position offered by this theme. Each position has its own layout. You can align widgets side-by-side, stack them or choose your own grid layout. Show or hide widgets on mobile devices, while the grid adapts perfectly to your layout.</p>\n\n<img src=\"images/yootheme/features_layouts.svg\" width=\"560\" height=\"320\" alt=\"Warp Layout System\" title=\"Warp Layout System\" />','',-2,2,'2011-05-02 11:45:23',969,'','2013-06-25 15:34:27',42,0,'0000-00-00 00:00:00','2011-05-02 11:45:23','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',13,11,'','',1,2417,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\",\"tags\":null}',0,'*',''),
	(2,34,'Un mundo nuevo',X'69636F6E73','<p class=\"uk-article-lead\">Durante la fase de decadencia de Dynamite.es, entre mediados y finales de 2011, el equipo original no se conformó con una experiencia Wrath of the Lich King® sólida y siguió ambicionando con las posibilidades que World Of Warcraft ofrece... Así nació \"Phantasia\", un reino de juego distinto enfocado al juego rápido, con su propio lore e historia y que ofrecía una experiencia nueva al estar ambientado en localizaciones completamente nuevas</p>\r\n<p class=\"uk-article-lead\">Manteniendo la promesa de aquel entonces, en Dynamite.zone ha comenzado el desarrollo de <b>Phantasia ReBorn</b>, un remake con adiciones a la experiencia original de 2011, ¡Presta atención a todo la información que irá apareciendo por las redes sociales y nuestra página web durante las próximas semanas! \r\n <p class=\"uk-article-lead\">Mientras tanto, aquí tienes imágenes del desarrollo de Phantasia durante el último año de Dynamite.es, por favor ten en cuenta que <b>estas imagenes NO representan ninguna versión Phantasia ReBorn</b> y el servidor que se lanzará será muy distinto.</p>\r\n<ul class=\"uk-grid uk-grid-width-medium-1-2 uk-grid-width-large-1-3\" data-uk-grid-margin>\r\n    <li>\r\n        <a class=\"uk-thumbnail uk-overlay-toggle\" data-uk-modal=\"{target:\'#modal-1\'}\">\r\n            <div class=\"uk-overlay\">\r\n                <img src=\"images/yootheme/phantasia1.jpeg\" width=\"600\" height=\"341\" alt=\"Building Icons\">\r\n                <div class=\"uk-overlay-area\"></div>\r\n            </div>\r\n            <div class=\"uk-thumbnail-caption\">Zona neutral</div>\r\n        </a>\r\n    </li>\r\n    <li>\r\n        <a class=\"uk-thumbnail uk-overlay-toggle\" data-uk-modal=\"{target:\'#modal-2\'}\">\r\n            <div class=\"uk-overlay\">\r\n                <img src=\"images/yootheme/phantasia3.jpeg\" width=\"600\" height=\"341\" alt=\"Hosting Icons\">\r\n                <div class=\"uk-overlay-area\"></div>\r\n            </div>\r\n            <div class=\"uk-thumbnail-caption\">Alianza</div>\r\n        </a>\r\n    </li>\r\n    <li>\r\n        <a class=\"uk-thumbnail uk-overlay-toggle\" data-uk-modal=\"{target:\'#modal-3\'}\">\r\n            <div class=\"uk-overlay\">\r\n                <img src=\"images/yootheme/phantasia5.jpeg\" width=\"600\" height=\"341\" alt=\"Tool Icons\">\r\n                <div class=\"uk-overlay-area\"></div>\r\n            </div>\r\n            <div class=\"uk-thumbnail-caption\">Horda</div>\r\n        </a>\r\n    </li>\r\n    <li>\r\n        <a class=\"uk-thumbnail uk-overlay-toggle\" data-uk-modal=\"{target:\'#modal-4\'}\">\r\n            <div class=\"uk-overlay\">\r\n                <img src=\"images/yootheme/phantasia2.jpeg\" width=\"600\" height=\"341\" alt=\"Shipping Icons\">\r\n                <div class=\"uk-overlay-area\"></div>\r\n            </div>\r\n            <div class=\"uk-thumbnail-caption\">Zona neutral</div>\r\n        </a>\r\n    </li>\r\n    <li>\r\n        <a class=\"uk-thumbnail uk-overlay-toggle\" data-uk-modal=\"{target:\'#modal-5\'}\">\r\n            <div class=\"uk-overlay\">\r\n                <img src=\"images/yootheme/phantasia4.jpeg\" width=\"600\" height=\"341\" alt=\"E-Commerce Icons\">\r\n                <div class=\"uk-overlay-area\"></div>\r\n            </div>\r\n            <div class=\"uk-thumbnail-caption\">Alianza</div>\r\n        </a>\r\n    </li>\r\n    <li>\r\n        <a class=\"uk-thumbnail uk-overlay-toggle\" data-uk-modal=\"{target:\'#modal-5\'}\">\r\n            <div class=\"uk-overlay\">\r\n                <img src=\"images/yootheme/phantasia6.jpeg\" width=\"600\" height=\"341\" alt=\"Space Icons\">\r\n                <div class=\"uk-overlay-area\"></div>\r\n            </div>\r\n            <div class=\"uk-thumbnail-caption\">Horda</div>\r\n        </a>\r\n    </li>\r\n</ul>\r\n\r\n<h2 class=\"uk-h3\">Características</h2>\r\n\r\n<div class=\"uk-grid uk-grid-divider\" data-uk-grid-margin>\r\n    <div class=\"uk-width-medium-1-3\">\r\n       <div class=\"uk-grid\">\r\n            <div class=\"uk-width-large-1-6 uk-vertical-align uk-text-center\" style=\"height: 50px;\">\r\n                <div class=\"uk-vertical-align-middle\">\r\n                    <i class=\"uk-icon-fast-forward uk-icon-medium uk-text-primary\"></i>\r\n                </div>\r\n            </div>\r\n            <div class=\"uk-width-large-5-6 uk-text-center-small uk-text-center-medium\">\r\n                <h3 class=\"uk-h4 uk-margin-bottom-remove\">Juego rápido</h3>\r\n                <p class=\"uk-margin-top-remove\">Empieza al 85. Entra en acción.</p>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"uk-width-medium-1-3\">\r\n        <div class=\"uk-grid\">\r\n            <div class=\"uk-width-large-1-6 uk-vertical-align uk-text-center\" style=\"height: 50px;\">\r\n                <div class=\"uk-vertical-align-middle\">\r\n                    <i class=\"uk-icon-users uk-icon-medium uk-text-primary\"></i>\r\n                </div>\r\n            </div>\r\n            <div class=\"uk-width-large-5-6 uk-text-center-small uk-text-center-medium\">\r\n                <h3 class=\"uk-h4 uk-margin-bottom-remove\">Nueva experiencia</h3>\r\n                <p class=\"uk-margin-top-remove\">Momentos y sitios increibles.</p>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"uk-width-medium-1-3\">\r\n        <div class=\"uk-grid\">\r\n            <div class=\"uk-width-large-1-6 uk-vertical-align uk-text-center\" style=\"height: 50px;\">\r\n                <div class=\"uk-vertical-align-middle\">\r\n                    <i class=\"uk-icon-refresh uk-icon-medium uk-text-primary\"></i>\r\n                </div>\r\n            </div>\r\n            <div class=\"uk-width-large-5-6 uk-text-center-small uk-text-center-medium\">\r\n                <h3 class=\"uk-h4 uk-margin-bottom-remove\">Más contenido</h3>\r\n                <p class=\"uk-margin-top-remove\">De Warlords of Draenor.</p>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"uk-width-medium-1-1\">\r\n        <div class=\"uk-panel uk-panel-box uk-text-center\">\r\n            <p><strong>Phantasia Reborn.</strong> Disponible en algún momento del tercer trimestre de 2015. <a class=\"uk-button uk-button-primary uk-margin-left\" href=\"http://www.yootheme.com/icons\" target=\"_blank\">Registrarse</a></p>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<div id=\"modal-1\" class=\"uk-modal\">\r\n    <div class=\"uk-modal-dialog uk-modal-dialog-frameless\">\r\n        <a href=\"\" class=\"uk-modal-close uk-close uk-close-alt\"></a>\r\n        <img src=\"images/yootheme/phantasia1.jpeg\" width=\"640\" height=\"364\" alt=\"Building Icons\">\r\n    </div>\r\n</div>\r\n\r\n<div id=\"modal-2\" class=\"uk-modal\">\r\n    <div class=\"uk-modal-dialog uk-modal-dialog-frameless\">\r\n        <a href=\"\" class=\"uk-modal-close uk-close uk-close-alt\"></a>\r\n        <img src=\"images/yootheme/phantasia3.jpeg\" width=\"640\" height=\"364\" alt=\"Hosting Icons\">\r\n    </div>\r\n</div>\r\n\r\n<div id=\"modal-3\" class=\"uk-modal\">\r\n    <div class=\"uk-modal-dialog uk-modal-dialog-frameless\">\r\n        <a href=\"\" class=\"uk-modal-close uk-close uk-close-alt\"></a>\r\n        <img src=\"images/yootheme/phantasia5.jpeg\" width=\"640\" height=\"364\" alt=\"Tool Icons\">\r\n    </div>\r\n</div>\r\n\r\n<div id=\"modal-4\" class=\"uk-modal\">\r\n    <div class=\"uk-modal-dialog uk-modal-dialog-frameless\">\r\n        <a href=\"\" class=\"uk-modal-close uk-close uk-close-alt\"></a>\r\n        <img src=\"images/yootheme/phantasia2.jpeg\" width=\"640\" height=\"364\" alt=\"Shipping Icons\">\r\n    </div>\r\n</div>\r\n\r\n<div id=\"modal-5\" class=\"uk-modal\">\r\n    <div class=\"uk-modal-dialog uk-modal-dialog-frameless\">\r\n        <a href=\"\" class=\"uk-modal-close uk-close uk-close-alt\"></a>\r\n        <img src=\"images/yootheme/phantasia4.jpeg\" width=\"6640\" height=\"364\" alt=\"E-Commerce Icons\">\r\n    </div>\r\n</div>\r\n\r\n<div id=\"modal-6\" class=\"uk-modal\">\r\n    <div class=\"uk-modal-dialog uk-modal-dialog-frameless\">\r\n        <a href=\"\" class=\"uk-modal-close uk-close uk-close-alt\"></a>\r\n        <img src=\"images/yootheme/phantasia6.jpeg\" width=\"640\" height=\"364\" alt=\"Space Icons\">\r\n    </div>\r\n</div>\r\n<center><iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YWeBMcouTQk\" frameborder=\"0\" allowfullscreen></iframe></center>','',1,2,'2011-05-02 11:47:01',969,'','2015-07-10 18:13:14',969,969,'2015-07-10 18:13:14','2011-05-02 11:47:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',73,12,'','',1,464,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(3,35,'ZOO',X'7A6F6F','<div class=\"uk-grid\" data-uk-grid-margin>\n    <div class=\"uk-width-medium-1-2\">\n        <p class=\"uk-article-lead\">ZOO is a flexible and powerful content application builder to manage your content. It provides a much improved Joomla experience.</p>\n        <p>The key feature is the ability to create your very own custom content types. You define what a type is made up of - e.g. text, images or a file download. Any combination is imaginable! You bring the content, ZOO brings the elements to structure it and make it look good!</p>\n        <p><a class=\"uk-button\" href=\"http://www.yootheme.com/zoo\" target=\"_blank\">Visit Website</a></p>\n    </div>\n\n    <div class=\"uk-width-medium-1-2 uk-text-center-small\">\n        <a data-lightbox=\"width:852;height:480;autoplay:true;\" href=\"http://www.yootheme.com/videos/zoo_video_tour.mp4\">\n            <img src=\"images/yootheme/zoo_video_tour.png\" width=\"500\" height=\"300\" alt=\"Take the video tour on the ZOO!\" title=\"Take the video tour on the ZOO!\">\n        </a>\n    </div>\n</div>\n\n<h2>Apps for every Purpose</h2>\n\n<p>ZOO moves from simply being a CCK to an Application Builder. Apps are extensions for ZOO which are optimized for different purposes and types of content catalogs. ZOO offers a wide range of apps to get you started right away. There is a blog, a product catalog, a cookbook, a business directory, a documentation, a download archive and a movie database app!</p>\n\n<ul class=\"uk-grid uk-grid-width-medium-1-2 uk-grid-width-large-1-4\" data-uk-grid-margin data-uk-grid-match=\"{target:\'.uk-panel\'}\">\n    <li>\n        <a class=\"uk-panel uk-panel-box uk-text-center uk-link-reset\" href=\"index.php?option=com_zoo&amp;view=frontpage&amp;layout=frontpage&amp;Itemid=161\">\n            <img src=\"images/yootheme/zoo_apps_blog.png\" width=\"170\" height=\"120\" alt=\"ZOO Blog\">\n            <h3 class=\"uk-h4 uk-margin-top\">Blog</h3>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-panel uk-panel-box uk-text-center uk-link-reset\" href=\"index.php?option=com_zoo&amp;view=frontpage&amp;layout=frontpage&amp;Itemid=162\">\n            <img src=\"images/yootheme/zoo_apps_productcatalog.png\" width=\"170\" height=\"120\" alt=\"ZOO Product Catalog\">\n            <h3 class=\"uk-h4 uk-margin-top\">Product Catalog</h3>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-panel uk-panel-box uk-text-center uk-link-reset\" href=\"index.php?option=com_zoo&amp;view=frontpage&amp;layout=frontpage&amp;Itemid=166\">\n            <img src=\"images/yootheme/zoo_apps_cookbook.png\" width=\"170\" height=\"120\" alt=\"ZOO Cookbook\">\n            <h3 class=\"uk-h4 uk-margin-top\">Cookbook</h3>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-panel uk-panel-box uk-text-center uk-link-reset\" href=\"index.php?option=com_zoo&amp;view=frontpage&amp;layout=frontpage&amp;Itemid=165\">\n            <img src=\"images/yootheme/zoo_apps_moviedatabase.png\" width=\"170\" height=\"120\" alt=\"ZOO Movie Database\">\n            <h3 class=\"uk-h4 uk-margin-top\">Movie Database</h3>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-panel uk-panel-box uk-text-center uk-link-reset\" href=\"index.php?option=com_zoo&amp;view=frontpage&amp;layout=frontpage&amp;Itemid=164\">\n            <img src=\"images/yootheme/zoo_apps_businessdirectory.png\" width=\"170\" height=\"120\" alt=\"ZOO Business Directory\">\n            <h3 class=\"uk-h4 uk-margin-top\">Business Directory</h3>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-panel uk-panel-box uk-text-center uk-link-reset\" href=\"index.php?option=com_zoo&amp;view=frontpage&amp;layout=frontpage&amp;Itemid=163\">\n            <img src=\"images/yootheme/zoo_apps_downloadarchive.png\" width=\"170\" height=\"120\" alt=\"ZOO Download Archive\">\n            <h3 class=\"uk-h4 uk-margin-top\">Download Archive</h3>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-panel uk-panel-box uk-text-center uk-link-reset\" href=\"index.php?option=com_zoo&amp;view=frontpage&amp;layout=frontpage&amp;Itemid=167\">\n            <img src=\"images/yootheme/zoo_apps_documentation.png\" width=\"170\" height=\"120\" alt=\"ZOO Documentation\">\n            <h3 class=\"uk-h4 uk-margin-top\">Documentation</h3>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-panel uk-panel-box uk-text-center uk-link-reset\" href=\"index.php?option=com_zoo&amp;view=item&amp;layout=item&amp;Itemid=168\">\n            <img src=\"images/yootheme/zoo_apps_pages.png\" width=\"170\" height=\"120\" alt=\"ZOO Pages\">\n            <h3 class=\"uk-h4 uk-margin-top\">Pages</h3>\n        </a>\n    </li>\n</ul>\n\n<h3>Joomla Integration</h3>\n\n<p>By now ZOO has developed a thriving ecosystem, with new ZOO extensions appearing regularly. It also integrates well with many popular Joomla extensions. Besides the ZOO component itself offers additional modules and plugins. They allow a seamless integration into Joomla and provide a richer tool set to create your website.</p>\n\n<div class=\"uk-grid\" data-uk-grid-margin>\n    <div class=\"uk-width-medium-1-1\">\n        <div class=\"uk-panel uk-panel-box uk-text-center\">\n            <p><strong>Get ZOO.</strong> A flexible and powerful content application builder to manage your content. <a class=\"uk-button uk-button-primary uk-margin-left\" href=\"http://www.yootheme.com/zoo\" target=\"_blank\">Download ZOO</a></p>\n        </div>\n    </div>\n</div>','',-2,2,'2011-05-02 11:47:22',969,'','2014-04-07 14:40:03',42,0,'0000-00-00 00:00:00','2011-05-02 11:47:22','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',15,13,'','',1,198,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(4,36,'UIkit',X'75696B6974','\n        <div class=\"uk-grid\">\n            <div class=\"uk-width-1-1\" data-uk-margin>\n\n                <div class=\"uk-button-group\">\n                    <button class=\"uk-button\">Button</button>\n                    <div data-uk-dropdown=\"{mode:\'click\'}\">\n                        <button class=\"uk-button\"><i class=\"uk-icon-caret-down\"></i></button>\n                        <div class=\"uk-dropdown uk-dropdown-width-2\">\n\n                            <div class=\"uk-grid uk-dropdown-grid\">\n\n                                <div class=\"uk-width-1-2\">\n                                    <ul class=\"uk-nav uk-nav-dropdown uk-panel\">\n                                        <li class=\"uk-nav-header\">Header</li>\n                                        <li><a href=\"#\">Item</a></li>\n                                        <li><a href=\"#\">Item</a></li>\n                                        <li class=\"uk-nav-divider\"></li>\n                                        <li><a href=\"#\">Separated item</a></li>\n                                        <li class=\"uk-parent\">\n                                            <a href=\"#\">Parent</a>\n                                            <ul class=\"uk-nav-sub\">\n                                                <li><a href=\"#\">Sub item</a>\n                                                    <ul>\n                                                        <li><a href=\"#\">Sub item</a></li>\n                                                    </ul>\n                                                </li>\n                                            </ul>\n                                        </li>\n                                    </ul>\n                                </div>\n\n                                <div class=\"uk-width-1-2\">\n                                    <ul class=\"uk-nav uk-nav-dropdown uk-panel\">\n                                        <li class=\"uk-nav-header\">Header</li>\n                                        <li><a href=\"#\">Item</a></li>\n                                        <li><a href=\"#\">Item</a></li>\n                                        <li class=\"uk-nav-divider\"></li>\n                                        <li><a href=\"#\">Separated item</a></li>\n                                        <li class=\"uk-parent\">\n                                            <a href=\"#\">Parent</a>\n                                            <ul class=\"uk-nav-sub\">\n                                                <li><a href=\"#\">Sub item</a>\n                                                    <ul>\n                                                        <li><a href=\"#\">Sub item</a></li>\n                                                    </ul>\n                                                </li>\n                                            </ul>\n                                        </li>\n                                    </ul>\n                                </div>\n\n                            </div>\n\n                        </div>\n                    </div>\n                </div>\n\n                <div class=\"uk-button-group\">\n                    <button class=\"uk-button uk-button-primary\">Primary</button>\n                    <div data-uk-dropdown=\"{mode:\'click\'}\">\n                        <button class=\"uk-button uk-button-primary\"><i class=\"uk-icon-caret-down\"></i></button>\n                        <div class=\"uk-dropdown uk-dropdown-small\">\n                            <ul class=\"uk-nav uk-nav-dropdown\">\n                                <li class=\"uk-nav-header\">Header</li>\n                                <li><a href=\"#\">Item</a></li>\n                                <li><a href=\"#\">Item</a></li>\n                                <li class=\"uk-nav-divider\"></li>\n                                <li><a href=\"#\">Separated item</a></li>\n                                <li class=\"uk-parent\">\n                                    <a href=\"#\">Parent</a>\n                                    <ul class=\"uk-nav-sub\">\n                                        <li><a href=\"#\">Sub item</a>\n                                            <ul>\n                                                <li><a href=\"#\">Sub item</a></li>\n                                            </ul>\n                                        </li>\n                                    </ul>\n                                </li>\n                            </ul>\n                        </div>\n                    </div>\n                </div>\n\n                <div class=\"uk-button-group\">\n                    <button class=\"uk-button uk-button-success\">Success</button>\n                    <div data-uk-dropdown=\"{mode:\'click\'}\">\n                        <button class=\"uk-button uk-button-success\"><i class=\"uk-icon-caret-down\"></i></button>\n                        <div class=\"uk-dropdown\">\n                            <ul class=\"uk-nav uk-nav-dropdown\">\n                                <li class=\"uk-nav-header\">Header</li>\n                                <li><a href=\"#\">Item</a></li>\n                                <li><a href=\"#\">Item</a></li>\n                                <li class=\"uk-nav-divider\"></li>\n                                <li><a href=\"#\">Separated item</a></li>\n                                <li class=\"uk-parent\">\n                                    <a href=\"#\">Parent</a>\n                                    <ul class=\"uk-nav-sub\">\n                                        <li><a href=\"#\">Sub item</a>\n                                            <ul>\n                                                <li><a href=\"#\">Sub item</a></li>\n                                            </ul>\n                                        </li>\n                                    </ul>\n                                </li>\n                            </ul>\n                        </div>\n                    </div>\n                </div>\n\n                <div class=\"uk-button-group\">\n                    <button class=\"uk-button uk-button-danger\">Danger</button>\n                    <div data-uk-dropdown=\"{mode:\'click\'}\">\n                        <button class=\"uk-button uk-button-danger\"><i class=\"uk-icon-caret-down\"></i></button>\n                        <div class=\"uk-dropdown\">\n                            <ul class=\"uk-nav uk-nav-dropdown\">\n                                <li class=\"uk-nav-header\">Header</li>\n                                <li><a href=\"#\">Item</a></li>\n                                <li><a href=\"#\">Item</a></li>\n                                <li class=\"uk-nav-divider\"></li>\n                                <li><a href=\"#\">Separated item</a></li>\n                                <li class=\"uk-parent\">\n                                    <a href=\"#\">Parent</a>\n                                    <ul class=\"uk-nav-sub\">\n                                        <li><a href=\"#\">Sub item</a>\n                                            <ul>\n                                                <li><a href=\"#\">Sub item</a></li>\n                                            </ul>\n                                        </li>\n                                    </ul>\n                                </li>\n                            </ul>\n                        </div>\n                    </div>\n                </div>\n\n                <button class=\"uk-button\" disabled>Disabled</button>\n                <button class=\"uk-button\" data-uk-tooltip title=\"Bazinga!\">Tooltip</button>\n                <button class=\"uk-button\" data-uk-modal=\"{target:\'#modal-1\'}\">Modal</button>\n                <button class=\"uk-button\" data-uk-offcanvas=\"{target:\'#offcanvas-1\'}\">Off-canvas</button>\n                <button class=\"uk-button uk-button-link\">Button link</button>\n\n            </div>\n        </div>\n\n        <hr class=\"uk-grid-divider\">\n\n        <div class=\"uk-grid\" data-uk-grid-margin>\n\n            <div class=\"uk-width-medium-1-2\">\n\n                <div class=\"uk-grid\" data-uk-grid-margin>\n\n                    <div class=\"uk-width-1-1\">\n                        <ul class=\"uk-breadcrumb\">\n                            <li><a href=\"#\">Home</a></li>\n                            <li><a href=\"#\">Blog</a></li>\n                            <li><span>Category</span></li>\n                            <li class=\"uk-active\"><span>Post</span></li>\n                        </ul>\n                    </div>\n\n                    <div class=\"uk-width-1-1\">\n\n                        <article class=\"uk-article\">\n\n                            <h1 class=\"uk-article-title\">Article title</h1>\n\n                            <p class=\"uk-article-meta\">Written by Super User on 12 April. Posted in Blog</p>\n\n                            <div class=\"uk-grid\" data-uk-grid-margin>\n                                <div class=\"uk-width-medium-1-2\">\n                                    <a class=\"uk-thumbnail uk-overlay-toggle\" href=\"#\">\n                                        <div class=\"uk-overlay\">\n                                            <img src=\"images/yootheme/uikit_placeholder.svg\" width=\"300\" height=\"90\" alt=\"\">\n                                            <div class=\"uk-overlay-area\"></div>\n                                        </div>\n                                        <div class=\"uk-thumbnail-caption\">Caption</div>\n                                    </a>\n                                </div>\n\n                                <div class=\"uk-width-medium-1-2\">\n                                    <a class=\"uk-thumbnail uk-overlay-toggle\" href=\"#\">\n                                        <div class=\"uk-overlay\">\n                                            <img src=\"images/yootheme/uikit_placeholder.svg\" width=\"300\" height=\"90\" alt=\"\">\n                                            <div class=\"uk-overlay-caption\">Caption</div>\n                                        </div>\n                                    <div class=\"uk-thumbnail-caption\">Caption</div>\n                                    </a>\n                                </div>\n                            </div>\n\n                            <p class=\"uk-article-lead\">Lorem ipsum dolor sit amet.</p>\n                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n                            <pre><code>&lt;div class=\"myclass\"&gt;...&lt;/div&gt;</code></pre>\n                            <hr class=\"uk-article-divider\">\n                            <div class=\"uk-grid\" data-uk-grid-margin>\n\n                                <div class=\"uk-width-medium-1-5\">\n                                    <span class=\"uk-text-muted\">text-muted</span><br>\n                                    <span class=\"uk-text-primary\">text-primary</span><br>\n                                    <span class=\"uk-text-success\">text-success</span><br>\n                                    <span class=\"uk-text-warning\">text-warning</span><br>\n                                    <span class=\"uk-text-danger\">text-danger</span>\n                                </div>\n\n                                <div class=\"uk-width-medium-3-10\">\n                                    <a href=\"#\">a element</a><br>\n                                    <em>em element</em><br>\n                                    <strong>strong</strong><br>\n                                    <code>code element</code><br>\n                                    <del>del element</del>\n                                </div>\n\n                                <div class=\"uk-width-medium-2-5\">\n                                    <ins>ins element</ins><br>\n                                    <mark>mark element</mark><br>\n                                    <q>q <q>inside</q> a q element </q><br>\n                                    <abbr title=\"Abbreviation Element\">abbr element</abbr><br>\n                                    <dfn title=\"Defines a definition term\">dfn element</dfn>\n                                </div>\n\n                                <div class=\"uk-width-1-1\">\n                                    <p class=\"uk-text-center\">\n                                        <span class=\"uk-badge\">Badge</span>\n                                        <span class=\"uk-badge uk-badge-notification\">1</span>\n                                        <span class=\"uk-badge uk-badge-success\">Success</span>\n                                        <span class=\"uk-badge uk-badge-success uk-badge-notification\">4</span>\n                                        <span class=\"uk-badge uk-badge-warning\">Warning</span>\n                                        <span class=\"uk-badge uk-badge-warning uk-badge-notification\">3</span>\n                                        <span class=\"uk-badge uk-badge-danger\">Danger</span>\n                                        <span class=\"uk-badge uk-badge-danger uk-badge-notification\">4</span>\n                                    </p>\n                                </div>\n\n                                <div class=\"uk-width-medium-1-2\">\n                                    <h1 class=\"uk-display-inline\">h1</h1>\n                                    <h2 class=\"uk-display-inline\">h2</h2>\n                                    <h3 class=\"uk-display-inline\">h3</h3>\n                                    <h4 class=\"uk-display-inline\">h4</h4>\n                                    <h5 class=\"uk-display-inline\">h5</h5>\n                                    <h6 class=\"uk-display-inline\">h6</h6>\n                                </div>\n\n                                <div class=\"uk-width-medium-1-2\">\n                                    <blockquote>\n                                        <p> Lorem ipsum dolor.</p>\n                                        <small>Someone famous</small>\n                                    </blockquote>\n                                </div>\n\n                            </div>\n\n                        </article>\n\n                    </div>\n\n                    <div class=\"uk-width-1-1\">\n                        <ul class=\"uk-comment-list\">\n                            <li>\n                                <article class=\"uk-comment\">\n                                    <header class=\"uk-comment-header\">\n                                        <img class=\"uk-comment-avatar\" src=\"images/yootheme/uikit_avatar.svg\" width=\"50\" height=\"50\" alt=\"\">\n                                        <h4 class=\"uk-comment-title\">Author</h4>\n                                        <p class=\"uk-comment-meta\">May 2, 2090 at 1:55 pm</p>\n                                    </header>\n                                    <div class=\"uk-comment-body\">\n                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna.</p>\n                                    </div>\n                                </article>\n                            </li>\n                        </ul>\n                    </div>\n\n                    <div class=\"uk-width-1-1\">\n                        <ul class=\"uk-pagination\">\n                            <li class=\"uk-disabled\"><span><i class=\"uk-icon-angle-double-left\"></i></span></li>\n                            <li class=\"uk-active\"><span>1</span></li>\n                            <li><a href=\"#\">2</a></li>\n                            <li><a href=\"#\">3</a></li>\n                            <li><a href=\"#\">4</a></li>\n                            <li><span>...</span></li>\n                            <li><a href=\"#\">20</a></li>\n                            <li><a href=\"#\"><i class=\"uk-icon-angle-double-right\"></i></a></li>\n                        </ul>\n                    </div>\n\n                </div>\n\n            </div>\n\n            <div class=\"uk-width-medium-1-2\">\n\n                <div class=\"uk-grid\" data-uk-grid-margin>\n\n                    <div class=\"uk-width-medium-1-2\">\n\n                        <div class=\"uk-panel\">\n                            <ul class=\"uk-nav uk-nav-side uk-nav-parent-icon\" data-uk-nav>\n                                <li class=\"uk-nav-header\">Header</li>\n                                <li class=\"uk-nav-divider\"></li>\n                                <li class=\"uk-active\"><a href=\"#\">Active</a></li>\n                                <li class=\"uk-parent\">\n                                    <a href=\"#\">Parent</a>\n                                    <ul class=\"uk-nav-sub\">\n                                        <li><a href=\"#\">Sub item</a></li>\n                                        <li><a href=\"#\">Sub item</a>\n                                            <ul>\n                                                <li><a href=\"#\">Sub item</a></li>\n                                                <li><a href=\"#\">Sub item</a></li>\n                                            </ul>\n                                        </li>\n                                    </ul>\n                                </li>\n                                <li><a href=\"#\">Item</a></li>\n                            </ul>\n                        </div>\n\n                        <div class=\"uk-panel uk-panel-divider\">\n                            <h3 class=\"uk-panel-title\">Divider</h3>\n                            Lorem ipsum <a href=\"#\">dolor</a> sit amet, consectetur adipisicing elit.\n                        </div>\n\n                        <div class=\"uk-panel uk-panel-header\">\n                            <h3 class=\"uk-panel-title\">Header</h3>\n                            Lorem ipsum <a href=\"#\">dolor</a> sit amet, consectetur adipisicing elit.\n                        </div>\n\n                    </div>\n\n                    <div class=\"uk-width-medium-1-2\">\n\n                        <div class=\"uk-panel uk-panel-box\">\n                            <h3 class=\"uk-panel-title\">Box</h3>\n                            Lorem ipsum <a href=\"#\">dolor</a> sit amet, consectetur adipisicing elit.\n                        </div>\n\n                        <div class=\"uk-panel uk-panel-box uk-panel-box-primary\">\n                            <h3 class=\"uk-panel-title\">Box primary</h3>\n                            Lorem ipsum <a href=\"#\">dolor</a> sit amet, consectetur adipisicing elit.\n                        </div>\n\n                        <div class=\"uk-panel uk-panel-box uk-panel-box-secondary\">\n                            <h3 class=\"uk-panel-title\">Box secondary</h3>\n                            Lorem ipsum <a href=\"#\">dolor</a> sit amet, consectetur adipisicing elit.\n                        </div>\n\n                    </div>\n\n                </div>\n\n                <div class=\"uk-grid\" data-uk-grid-margin>\n\n                    <div class=\"uk-width-1-2\">\n                        <div class=\"uk-alert\" data-uk-alert>\n                            <a class=\"uk-alert-close uk-close\"></a>\n                            <p>Info message</p>\n                        </div>\n                    </div>\n\n                    <div class=\"uk-width-1-2\">\n                        <div class=\"uk-alert uk-alert-success\" data-uk-alert>\n                            <a class=\"uk-alert-close uk-close\"></a>\n                            <p>Success message</p>\n                        </div>\n                    </div>\n\n                    <div class=\"uk-width-1-2\">\n                        <div class=\"uk-alert uk-alert-warning\" data-uk-alert>\n                            <a class=\"uk-alert-close uk-close\"></a>\n                            <p>Warning message</p>\n                        </div>\n                    </div>\n\n                    <div class=\"uk-width-1-2\">\n                        <div class=\"uk-alert uk-alert-danger\" data-uk-alert>\n                            <a class=\"uk-alert-close uk-close\"></a>\n                            <p>Danger message</p>\n                        </div>\n                    </div>\n\n                    <div class=\"uk-width-1-2\">\n                        <div class=\"uk-progress\">\n                            <div class=\"uk-progress-bar\" style=\"width: 55%;\">55%</div>\n                        </div>\n                    </div>\n\n                    <div class=\"uk-width-1-2\">\n                        <div class=\"uk-progress uk-progress-success\">\n                            <div class=\"uk-progress-bar\" style=\"width: 55%;\">55%</div>\n                        </div>\n                    </div>\n\n                    <div class=\"uk-width-1-2\">\n                        <div class=\"uk-progress uk-progress-warning\">\n                            <div class=\"uk-progress-bar\" style=\"width: 55%;\">55%</div>\n                        </div>\n                    </div>\n\n                    <div class=\"uk-width-1-2\">\n                        <div class=\"uk-progress uk-progress-danger\">\n                            <div class=\"uk-progress-bar\" style=\"width: 55%;\">55%</div>\n                        </div>\n                    </div>\n\n                    <div class=\"uk-width-1-2 uk-form uk-grid-margin\">\n                        <fieldset>\n                            <legend>Form states</legend>\n                            <div class=\"uk-form-row\">\n                                <input type=\"text\" placeholder=\"Text Input\" class=\"uk-width-1-1\">\n                            </div>\n                            <div class=\"uk-form-row\">\n                                <input type=\"text\" placeholder=\"form-success\" value=\"form-success\" class=\"uk-width-1-1 uk-form-success\">\n                            </div>\n                            <div class=\"uk-form-row\">\n                                <input type=\"text\" placeholder=\"form-danger\" value=\"form-danger\" class=\"uk-width-1-1 uk-form-danger\">\n                            </div>\n                            <div class=\"uk-form-row\">\n                                <input type=\"text\" placeholder=\"form disabled\" class=\"uk-width-1-1\" disabled=\"\">\n                            </div>\n                        </fieldset>\n                    </div>\n\n                    <div class=\"uk-width-1-2 uk-form uk-grid-margin\">\n                        <fieldset>\n                            <legend>Form styles</legend>\n                            <div class=\"uk-form-row\">\n                                <input type=\"text\" placeholder=\"form-large\" class=\"uk-form-large uk-form-width-small\">\n                                <button class=\"uk-button uk-button-large\" type=\"reset\">Large</button>\n                            </div>\n                            <div class=\"uk-form-row\">\n                                <input type=\"text\" placeholder=\"form-small\" class=\"uk-form-small uk-form-width-small\">\n                                <button class=\"uk-button uk-button-small\" type=\"reset\">Small</button>\n                            </div>\n                            <div class=\"uk-form-row\">\n                                <input type=\"text\" placeholder=\"form-blank\" class=\"uk-form-width-small uk-form-blank\">\n                                <button class=\"uk-button uk-button-mini\" type=\"reset\">Mini</button>\n                            </div>\n                        </fieldset>\n                    </div>\n\n                </div>\n\n            </div>\n\n        </div>\n\n        <hr class=\"uk-grid-divider\">\n\n        <div class=\"uk-grid\" data-uk-grid-margin>\n\n            <div class=\"uk-width-medium-1-4\">\n\n                <ul class=\"uk-subnav uk-subnav-line\">\n                    <li class=\"uk-active\"><a href=\"#\">Active</a></li>\n                    <li><a href=\"#\">Item</a></li>\n                    <li><span>Disabled</span></li>\n                </ul>\n\n            </div>\n            <div class=\"uk-width-medium-1-4\">\n\n                <ul class=\"uk-subnav uk-subnav-pill\">\n                    <li class=\"uk-active\"><a href=\"#\">Active</a></li>\n                    <li><a href=\"#\">Item</a></li>\n                    <li><span>Disabled</span></li>\n                </ul>\n\n            </div>\n            <div class=\"uk-width-medium-1-4\">\n\n                <ul class=\"uk-tab\" data-uk-tab>\n                    <li class=\"uk-active\"><a href=\"#\">Active</a></li>\n                    <li><a href=\"#\">Item</a></li>\n                    <li class=\"uk-disabled\"><a href=\"#\">Disabled</a></li>\n                </ul>\n\n            </div>\n            <div class=\"uk-width-medium-1-4\">\n\n                <a href=\"#\" class=\"uk-icon-button uk-icon-github\"></a>\n                <a href=\"#\" class=\"uk-icon-button uk-icon-twitter\"></a>\n                <a href=\"#\" class=\"uk-icon-button uk-icon-dribbble\"></a>\n                <a href=\"#\" class=\"uk-icon-button uk-icon-html5\"></a>\n\n            </div>\n        </div>\n\n        <hr class=\"uk-grid-divider\">\n\n        <div class=\"uk-grid uk-grid-divider\" data-uk-grid-margin>\n            <div class=\"uk-width-medium-1-4\">\n\n                <ul class=\"uk-list uk-list-line\">\n                    <li>List item 1</li>\n                    <li>List item 2</li>\n                    <li>List item 3</li>\n                </ul>\n\n            </div>\n\n            <div class=\"uk-width-medium-1-4\">\n\n                <ul class=\"uk-list uk-list-striped\">\n                    <li>List item 1</li>\n                    <li>List item 2</li>\n                    <li>List item 3</li>\n                </ul>\n\n            </div>\n            <div class=\"uk-width-medium-1-4\">\n\n                <table class=\"uk-table uk-table-striped uk-table-condensed uk-table-hover\">\n                    <caption>Table caption</caption>\n                    <thead>\n                        <tr>\n                            <th>Table</th>\n                            <th>Heading</th>\n                        </tr>\n                    </thead>\n                    <tbody>\n                        <tr>\n                            <td>Table</td>\n                            <td>Data</td>\n                        </tr>\n                        <tr>\n                            <td>Table</td>\n                            <td>Data</td>\n                        </tr>\n                    </tbody>\n                </table>\n\n            </div>\n            <div class=\"uk-width-medium-1-4\">\n\n                <dl class=\"uk-description-list uk-description-list-line\">\n                    <dt>Description lists</dt>\n                    <dd>Description text.</dd>\n                    <dt>Description lists</dt>\n                    <dd>Description text.</dd>\n                </dl>\n\n            </div>\n        </div>\n\n        <div id=\"offcanvas-1\" class=\"uk-offcanvas\">\n            <div class=\"uk-offcanvas-bar\">\n\n                <ul class=\"uk-nav uk-nav-offcanvas uk-nav-parent-icon\" data-uk-nav>\n                    <li><a href=\"#\">Item</a></li>\n                    <li class=\"uk-active\"><a href=\"#\">Active</a></li>\n\n                    <li class=\"uk-parent\">\n                        <a href=\"#\">Parent</a>\n                        <ul class=\"uk-nav-sub\">\n                            <li><a href=\"#\">Sub item</a></li>\n                            <li><a href=\"#\">Sub item</a>\n                                <ul>\n                                    <li><a href=\"#\">Sub item</a></li>\n                                    <li><a href=\"#\">Sub item</a></li>\n                                </ul>\n                            </li>\n                        </ul>\n                    </li>\n\n                    <li class=\"uk-parent\">\n                        <a href=\"#\">Parent</a>\n                        <ul class=\"uk-nav-sub\">\n                            <li><a href=\"#\">Sub item</a></li>\n                            <li><a href=\"#\">Sub item</a></li>\n                        </ul>\n                    </li>\n\n                    <li><a href=\"#\">Item</a></li>\n\n                    <li class=\"uk-nav-header\">Header</li>\n                    <li><a href=\"#\"><i class=\"uk-icon-star\"></i> Item</a></li>\n                    <li><a href=\"#\"><i class=\"uk-icon-twitter\"></i> Item</a></li>\n                    <li class=\"uk-nav-divider\"></li>\n                    <li><a href=\"#\"><i class=\"uk-icon-rss\"></i> Item</a></li>\n                </ul>\n\n                <div class=\"uk-panel\">\n                    <h3 class=\"uk-panel-title\">Title</h3>\n                    Lorem ipsum dolor sit amet, <a href=\"#\">consetetur</a> sadipscing elitr.\n                </div>\n\n                <div class=\"uk-panel\">\n                    <h3 class=\"uk-panel-title\">Title</h3>\n                    Lorem ipsum dolor sit amet, <a href=\"#\">consetetur</a> sadipscing elitr.\n                </div>\n\n            </div>\n        </div>\n\n        <div id=\"modal-1\" class=\"uk-modal\">\n            <div class=\"uk-modal-dialog\">\n                <button type=\"button\" class=\"uk-modal-close uk-close\"></button>\n                <h1>Headline</h1>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n            </div>\n        </div>','',-2,2,'2011-05-02 11:47:45',969,'','2014-10-17 09:42:51',42,0,'0000-00-00 00:00:00','2011-05-02 11:47:45','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',26,14,'','',1,615,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(5,37,'Dummy Content',X'64756D6D792D636F6E74656E74','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','',-2,2,'2011-05-02 11:48:08',969,'','2011-05-02 13:45:48',42,0,'0000-00-00 00:00:00','2011-05-02 11:48:08','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',2,15,'','',1,31,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(6,38,'Features',X'6665617475726573','\n<p class=\"uk-article-lead\">This theme is built on the <a href=\"http://www.warp-framework.com\">Warp framework</a>, a well-engineered theme framework for WordPress and Joomla, and utilizes all of its latest features. The user interface is powered by <a href=\"http://www.getuikit.com\">UIkit</a>, a lightweight and modular front-end framework, which provides the theme\'s styling. The theme also comes with a wide range of different <a href=\"index.php?option=com_content&amp;view=article&amp;id=1&amp;Itemid=103\">layouts and widget variations</a>.</p>\n\n<div class=\"uk-grid\" data-uk-grid-margin data-uk-grid-match=\"{target:\'.uk-panel\'}\">\n    <div class=\"uk-width-medium-1-2\">\n        <div class=\"uk-panel uk-panel-box\">\n\n            <div class=\"uk-grid\" data-uk-grid-margin>\n                <div class=\"uk-width-large-2-6 uk-text-center\">\n                    <a class=\"uk-display-block\" href=\"http://www.warp-framework.com\" target=\"_blank\">\n                      <img src=\"images/yootheme/demo/default/features_icon_warp.svg\" alt=\"Demo\" width=\"150\" height=\"150\">\n                    </a>\n                </div>\n                <div class=\"uk-width-large-4-6 uk-text-center-medium\">\n                    <h2>Warp Framework</h2>\n                    <p>A fast and slick theme framework which is built on the latest web techniques like HTML5, CSS3 and PHP 5.3+</p>\n                    <p><a class=\"uk-button\" href=\"http://www.warp-framework.com\" target=\"_blank\">Visit Website</a></p>\n                </div>\n            </div>\n\n        </div>\n    </div>\n    <div class=\"uk-width-medium-1-2\">\n        <div class=\"uk-panel uk-panel-box\">\n\n            <div class=\"uk-grid\" data-uk-grid-margin>\n                <div class=\"uk-width-large-2-6 uk-text-center\">\n                    <a class=\"uk-display-block\" href=\"http://www.getuikit.com\" target=\"_blank\">\n                      <img src=\"images/yootheme/demo/default/features_icon_uikit.svg\" alt=\"Demo\" width=\"150\" height=\"150\">\n                    </a>\n                </div>\n                <div class=\"uk-width-large-4-6 uk-text-center-medium\">\n                    <h2>UIkit</h2>\n                    <p>A lightweight and modular front-end framework for developing fast and powerful web interfaces.</p>\n                    <p><a class=\"uk-button\" href=\"http://www.getuikit.com\" target=\"_blank\">Visit Website</a></p>\n                </div>\n            </div>\n\n        </div>\n    </div>\n</div>\n\n<h2>Styles</h2>\n\n<p>We provide lovingly crafted style variations to give you a glimpse of what is possible with this theme. The built-in theme customizer allows you to modify colors, fonts, sizes and much more without any CSS knowledge. Just choose your colors with the color picker and adjust the theme with only a few clicks. Click on one of the images to see the style.</p>\n\n<ul class=\"uk-grid uk-grid-width-small-1-2 uk-grid-width-large-1-3\" data-uk-grid-margin>\n    <li>\n        <a class=\"uk-thumbnail uk-overlay-toggle\" href=\"index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;style=default\">\n            <div class=\"uk-overlay\">\n                <img src=\"images/yootheme/features_style_01.jpg\" width=\"390\" height=\"280\" alt=\"Style\">\n                <div class=\"uk-overlay-area\"></div>\n            </div>\n            <div class=\"uk-thumbnail-caption\">Default</div>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-thumbnail uk-overlay-toggle\" href=\"index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;style=yellow\">\n            <div class=\"uk-overlay\">\n                <img src=\"images/yootheme/features_style_03.jpg\" width=\"390\" height=\"280\" alt=\"Style\">\n                <div class=\"uk-overlay-area\"></div>\n            </div>\n            <div class=\"uk-thumbnail-caption\">Yellow</div>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-thumbnail uk-overlay-toggle\" href=\"index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;style=dove\">\n            <div class=\"uk-overlay\">\n                <img src=\"images/yootheme/features_style_08.jpg\" width=\"390\" height=\"280\" alt=\"Style\">\n                <div class=\"uk-overlay-area\"></div>\n            </div>\n            <div class=\"uk-thumbnail-caption\">Dove</div>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-thumbnail uk-overlay-toggle\" href=\"index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;style=salmon\">\n            <div class=\"uk-overlay\">\n                <img src=\"images/yootheme/features_style_06.jpg\" width=\"390\" height=\"280\" alt=\"Style\">\n                <div class=\"uk-overlay-area\"></div>\n            </div>\n            <div class=\"uk-thumbnail-caption\">Salmon</div>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-thumbnail uk-overlay-toggle\" href=\"index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;style=blue\">\n            <div class=\"uk-overlay\">\n                <img src=\"images/yootheme/features_style_04.jpg\" width=\"390\" height=\"280\" alt=\"Style\">\n                <div class=\"uk-overlay-area\"></div>\n            </div>\n            <div class=\"uk-thumbnail-caption\">Blue</div>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-thumbnail uk-overlay-toggle\" href=\"index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;style=orange\">\n            <div class=\"uk-overlay\">\n                <img src=\"images/yootheme/features_style_07.jpg\" width=\"390\" height=\"280\" alt=\"Style\">\n                <div class=\"uk-overlay-area\"></div>\n            </div>\n            <div class=\"uk-thumbnail-caption\">Orange</div>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-thumbnail uk-overlay-toggle\" href=\"index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;style=navyblue\">\n            <div class=\"uk-overlay\">\n                <img src=\"images/yootheme/features_style_02.jpg\" width=\"390\" height=\"280\" alt=\"Style\">\n                <div class=\"uk-overlay-area\"></div>\n            </div>\n            <div class=\"uk-thumbnail-caption\">Navy blue</div>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-thumbnail uk-overlay-toggle\" href=\"index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;style=paper\">\n            <div class=\"uk-overlay\">\n                <img src=\"images/yootheme/features_style_05.jpg\" width=\"390\" height=\"280\" alt=\"Style\">\n                <div class=\"uk-overlay-area\"></div>\n            </div>\n            <div class=\"uk-thumbnail-caption\">Paper</div>\n        </a>\n    </li>\n</ul>\n\n<div class=\"uk-grid\" data-uk-grid-margin>\n    <div class=\"uk-width-medium-1-1\">\n        <div class=\"uk-panel uk-panel-box uk-text-center\">\n            <p>This theme is available for <img src=\"images/yootheme/features_icon_joomla.svg\" width=\"25\" height=\"21\" alt=\"Joomla\">Joomla and <img src=\"images/yootheme/features_icon_wordpress.svg\" width=\"23\" height=\"22\" alt=\"Wordpress\">WordPress including the same features on each system.</p>\n        </div>\n    </div>\n</div>\n\n<div class=\"uk-grid\" data-uk-grid-margin>\n    <div class=\"uk-width-1-1 uk-width-large-1-2\">\n        <h2>Vertical menu</h2>\n        <p>Peak provides a horizontal and a vertical main menu position. Additional features for the vertical menu can be enabled in the theme options.</p>\n        <img src=\"images/yootheme/features_sidebar.jpg\" width=\"550\" height=\"300\" alt=\"Sidebar\">\n    </div>\n\n    <div class=\"uk-width-1-1 uk-width-large-1-2\">\n        <h2>Blog Layout</h2>\n        <p>You can also present your blog articles in a unique and beautiful design by choosing the special Peak blog layout in the theme options.</p>\n        <img src=\"images/yootheme/features_blog_layout.jpg\" width=\"550\" height=\"300\" alt=\"Blog layout\">\n    </div>\n</div>\n\n<hr>\n\n<h2>Overlay</h2>\n<p>Check out the unusual, curtain like SVG overlay. Just insert the markup below to apply the effect.</p>\n\n<div class=\"uk-grid\" data-uk-grid-margin>\n  <div class=\"uk-width-1-1 uk-width-large-1-2\">\n    <img src=\"images/yootheme/features_overlay.jpg\" width=\"550\" height=\"300\" alt=\"Theme overlay\">\n  </div>\n\n  <div class=\"uk-width-1-1 uk-width-large-1-2\">\n\n<pre class=\"uk-text-break\">\n &lt;div class=\"tm-overlay\"&gt;\n     &lt;a href=\"#\"&gt;\n       &lt;img width=\"280\" height=\"460\" src=\"image.jpg\" alt=\"image\" /&gt;\n       &lt;div class=\"tm-overlay-caption\"&gt;\n         &lt;h2 class=\"tm-overlay-title\">Lorem Ipsum&lt;/h2&gt;\n         &lt;p>Lorem ipsum dolor sit amet consetetur sadipscing.&lt;/p&gt;\n       &lt;/div&gt;\n     &lt;/a&gt;\n &lt;/div&gt;\n</pre>\n\n  </div>\n\n\n</div>\n\n    <h2>Social Icons</h2>\n    <p>Use the modifier <code>.uk-icon-button</code> class to create an icon button.</p>\n\n    <a href=\"#\" class=\"uk-icon-button uk-icon-twitter\"></a>\n    <a href=\"#\" class=\"uk-icon-button uk-icon-rss\"></a>\n    <a href=\"#\" class=\"uk-icon-button uk-icon-facebook\"></a>\n    <a href=\"#\" class=\"uk-icon-button uk-icon-flickr\"></a>\n    <a href=\"#\" class=\"uk-icon-button uk-icon-google-plus\"></a>\n\n    <p>Here is a little code example how to add them:</p>\n<pre>\n  &lt;a href=\"#\" class=\"uk-icon-button uk-icon-twitter\"&gt;&lt;/a&gt;\n  &lt;a href=\"#\" class=\"uk-icon-button uk-icon-facebook\"&gt;&lt;/a&gt;\n  &lt;a href=\"#\" class=\"uk-icon-button uk-icon-google-plus\"&gt;&lt;/a&gt;\n</pre>\n  <p><a href=\"http://www.getuikit.com/docs/icon.html\" target=\"blank\">Here</a> is an overview of all icons provided by <a href=\"http://fortawesome.github.io/Font-Awesome/\" target=\"blank\">Font Awesome</a>.</p>\n\n\n','',-2,2,'2011-05-02 11:48:41',969,'','2014-10-22 15:10:53',42,0,'0000-00-00 00:00:00','2011-05-02 11:48:41','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',130,16,'','',1,1113,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(7,39,'Inicio',X'6E616E6F2D7468656D65','This is an hidden article.','',-2,2,'2011-05-02 11:49:24',969,'','2015-07-17 21:36:12',969,0,'0000-00-00 00:00:00','2011-05-02 11:49:24','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',16,17,'','',1,13357,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(8,40,'Joomla Templates',X'6A6F6F6D6C612D74656D706C61746573','<p class=\"uk-article-lead\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>\n\n','\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',-2,7,'2014-04-02 11:50:02',969,'','2014-10-21 07:18:16',42,0,'0000-00-00 00:00:00','2013-04-12 11:50:02','0000-00-00 00:00:00','{\"image_intro\":\"images\\/yootheme\\/blog_themes.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/yootheme\\/blog_themes.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',86,1,'','',1,182,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),
	(9,41,'Beautiful Icons',X'62656175746966756C2D69636F6E73','<p class=\"uk-article-lead\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>\n\n','\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',-2,7,'2014-03-15 11:50:30',969,'','2014-04-29 07:56:10',42,0,'0000-00-00 00:00:00','2013-03-15 11:50:30','0000-00-00 00:00:00','{\"image_intro\":\"images\\/yootheme\\/blog_icons.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/yootheme\\/blog_icons.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',25,4,'','',1,25,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),
	(10,42,'Warp Framework',X'776172702D6672616D65776F726B','<p class=\"uk-article-lead\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>\n\n','\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',-2,7,'2014-03-12 11:50:55',969,'','2014-04-29 07:56:31',42,0,'0000-00-00 00:00:00','2013-03-20 11:50:55','0000-00-00 00:00:00','{\"image_intro\":\"images\\/yootheme\\/blog_warp.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/yootheme\\/blog_warp.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',25,5,'','',1,27,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),
	(11,43,'ZOO Extension',X'7A6F6F2D657874656E73696F6E','<p class=\"uk-article-lead\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>\n\n','\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',-2,7,'2013-02-28 11:51:30',969,'','2014-04-29 07:57:01',42,0,'0000-00-00 00:00:00','2013-02-28 11:51:30','0000-00-00 00:00:00','{\"image_intro\":\"images\\/yootheme\\/blog_zoo.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/yootheme\\/blog_zoo.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',20,6,'','',1,8,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),
	(12,44,'Free Halloween Icons',X'667265652D736F6369616C2D69636F6E73','<p class=\"uk-article-lead\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>\n\n','\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',-2,7,'2013-01-18 11:51:53',969,'','2014-04-29 08:01:48',42,0,'0000-00-00 00:00:00','2013-01-14 11:51:53','0000-00-00 00:00:00','{\"image_intro\":\"images\\/yootheme\\/blog_halloween_icons.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/yootheme\\/blog_halloween_icons.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',23,8,'','',1,12,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),
	(13,176,'Widgetkit',X'7769646765746B6974','<div class=\"uk-grid\" data-uk-grid-margin>\n    <div class=\"uk-width-medium-2-10 uk-push-8-10 uk-text-center\">\n        <img src=\"images/yootheme/demo/default/widgetkit_icon.svg\" alt=\"Demo\" width=\"175\" height=\"175\">\n    </div>\n    <div class=\"uk-width-medium-8-10 uk-pull-2-10\">\n        <p class=\"uk-article-lead\">Widgetkit is the next generation tool set for Joomla and WordPress. This toolkit is the first of its kind! It provides a simple and user-friendly way to enrich your websites experience with slideshows, galleries, lightboxes and much more.</p>\n        <p>All widgets make use of modern web technologies like HTML5 markup, CSS3 features and jQuery based JavaScripts. Widgetkit is fully responsive and all widgets and their effects adapt perfectly for all device resolutions. It supports touch gestures and makes use of smooth CSS3 animations.</p>\n        <p><a class=\"uk-button\" href=\"http://www.yootheme.com/widgetkit\" target=\"_blank\">Visit Website</a></p>\n    </div>\n</div>\n\n<h2>How it works</h2>\n\n<p>Widgetkit basically acts as a platform for all our widgets. It installs as a single component in Joomla or as a plugin in WordPress. The Widgetkit dashboard presents you an overview of all widgets. You can create, edit or delete all widgets and their content in one place. And after you have created the content for your first widget, you can either use a shortcode or a module to display your widget anywhere on your website. In fact, you can do both. Because once have you created a widget, you are able to display it multiple times and reuse it on different parts of your website.</p>\n\n<ul class=\"uk-grid uk-grid-width-small-1-2 uk-grid-width-medium-1-3\" data-uk-grid-margin data-uk-grid-match=\"{target:\'.uk-panel\'}\">\n    <li>\n        <a class=\"uk-panel uk-panel-box uk-text-center uk-link-reset\" href=\"index.php?option=com_content&amp;view=article&amp;id=14&amp;Itemid=133\">\n            <img src=\"images/yootheme/widgetkit_widgets_slideshow.svg\" width=\"200\" height=\"100\" alt=\"Widgetkit Slideshow\">\n            <h3 class=\"uk-h4 uk-margin-top\">Slideshow</h3>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-panel uk-panel-box uk-text-center uk-link-reset\" href=\"index.php?option=com_content&amp;view=article&amp;id=22&amp;Itemid=144\">\n            <img src=\"images/yootheme/widgetkit_widgets_slideset.svg\" width=\"200\" height=\"100\" alt=\"Widgetkit Slideset\">\n            <h3 class=\"uk-h4 uk-margin-top\">Slideset</h3>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-panel uk-panel-box uk-text-center uk-link-reset\" href=\"index.php?option=com_content&amp;view=article&amp;id=19&amp;Itemid=141\">\n            <img src=\"images/yootheme/widgetkit_widgets_gallery.svg\" width=\"200\" height=\"100\" alt=\"Widgetkit Gallery\">\n            <h3 class=\"uk-h4 uk-margin-top\">Gallery</h3>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-panel uk-panel-box uk-text-center uk-link-reset\" href=\"index.php?option=com_content&amp;view=article&amp;id=20&amp;Itemid=143\">\n            <img src=\"images/yootheme/widgetkit_widgets_map.svg\" width=\"200\" height=\"100\" alt=\"Widgetkit Map\">\n            <h3 class=\"uk-h4 uk-margin-top\">Map</h3>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-panel uk-panel-box uk-text-center uk-link-reset\" href=\"index.php?option=com_content&amp;view=article&amp;id=21&amp;Itemid=142\">\n            <img src=\"images/yootheme/widgetkit_widgets_accordion.svg\" width=\"200\" height=\"100\" alt=\"Widgetkit Accordion\">\n            <h3 class=\"uk-h4 uk-margin-top\">Accordion</h3>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-panel uk-panel-box uk-text-center uk-link-reset\" href=\"index.php?option=com_content&amp;view=article&amp;id=15&amp;Itemid=134\">\n            <img src=\"images/yootheme/widgetkit_widgets_lightbox.svg\" width=\"200\" height=\"100\" alt=\"Widgetkit Lightbox\">\n            <h3 class=\"uk-h4 uk-margin-top\">Lightbox</h3>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-panel uk-panel-box uk-text-center uk-link-reset\" href=\"index.php?option=com_content&amp;view=article&amp;id=16&amp;Itemid=135\">\n            <img src=\"images/yootheme/widgetkit_widgets_spotlight.svg\" width=\"200\" height=\"100\" alt=\"Widgetkit Spotlight\">\n            <h3 class=\"uk-h4 uk-margin-top\">Spotlight</h3>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-panel uk-panel-box uk-text-center uk-link-reset\" href=\"index.php?option=com_content&amp;view=article&amp;id=17&amp;Itemid=136\">\n            <img src=\"images/yootheme/widgetkit_widgets_twitter.svg\" width=\"200\" height=\"100\" alt=\"Widgetkit Twitter\">\n            <h3 class=\"uk-h4 uk-margin-top\">Twitter</h3>\n        </a>\n    </li>\n    <li>\n        <a class=\"uk-panel uk-panel-box uk-text-center uk-link-reset\" href=\"index.php?option=com_content&amp;view=article&amp;id=18&amp;Itemid=140\">\n            <img src=\"images/yootheme/widgetkit_widgets_mediaplayer.svg\" width=\"200\" height=\"100\" alt=\"Widgetkit Media Player\">\n            <h3 class=\"uk-h4 uk-margin-top\">Media Player</h3>\n        </a>\n    </li>\n</ul>\n\n<h2 class=\"uk-h3\">Features</h2>\n\n<div class=\"uk-grid\" data-uk-grid-margin>\n\n    <div class=\"uk-width-medium-1-3\">\n        <ul class=\"uk-list uk-list-space\">\n          <li><i class=\"uk-icon uk-icon-check\"></i> Available for Joomla and WordPress</li>\n          <li><i class=\"uk-icon uk-icon-check\"></i> All widgets are fully responsive</li>\n          <li><i class=\"uk-icon uk-icon-check\"></i> Use shortcodes to show widgets anywhere</li>\n        </ul>\n    </div>\n\n    <div class=\"uk-width-medium-1-3\">\n        <ul class=\"uk-list uk-list-space\">\n          <li><i class=\"uk-icon uk-icon-check\"></i> Clean and lightweight code</li>\n          <li><i class=\"uk-icon uk-icon-check\"></i> Semantic HTML5 markup</li>\n          <li><i class=\"uk-icon uk-icon-check\"></i> Asset file minification and compression</li>\n        </ul>\n    </div>\n\n    <div class=\"uk-width-medium-1-3\">\n        <ul class=\"uk-list uk-list-space\">\n          <li><i class=\"uk-icon uk-icon-check\"></i> Supports touch gestures for mobile devices</li>\n          <li><i class=\"uk-icon uk-icon-check\"></i> Uses hardware accelerated CSS3 animations</li>\n          <li><i class=\"uk-icon uk-icon-check\"></i> Built with PHP 5.3+ and the latest jQuery version</li>\n        </ul>\n    </div>\n</div>\n\n<div class=\"uk-grid\" data-uk-grid-margin>\n    <div class=\"uk-width-medium-1-1\">\n        <div class=\"uk-panel uk-panel-box uk-text-center\">\n            <p><strong>Get Widgetkit.</strong> The next generation tool set for Joomla and WordPress. <a class=\"uk-button uk-button-primary uk-margin-left\" href=\"http://www.yootheme.com/widgetkit\" target=\"_blank\">Download Widgetkit</a></p>\n        </div>\n    </div>\n</div>','',-2,2,'2011-06-08 11:15:54',969,'','2014-05-13 08:56:46',42,0,'0000-00-00 00:00:00','2011-06-08 11:15:54','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',27,10,'','',1,519,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(14,47,'Slideshow',X'736C69646573686F77','<p>The Widgetkit Slideshow is the ultimate image and content slideshow for Joomla and WordPress. It\'s flexible, easy to customize and completely built with HTML5 and CSS3. </p>\n\n<h2>Features</h2>\n\n<ul class=\"uk-list uk-list-space\">\n  <li><i class=\"uk-icon uk-icon-check\"></i> Clean and very lightweight code</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> 17 eye-catching transition effects</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Fully responsive including all effects</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Uses hardware accelerated CSS3 animations</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Supports HTML captions</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Swipe navigation on mobile devices</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Built with HTML5, CSS3, PHP 5.3+ and the latest jQuery version</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Works with Joomla and WordPress</li>\n</ul>\n\n<h2>Slideshow Screen Example</h2>\n<p>This is an image slideshow with the famous Ken Burns effect.</p>\n[widgetkit id=45]\n\n<h2>Slideshow Default Example</h2>\n<p>This is an image slideshow with eye-catching transition effects.</p>\n[widgetkit id=10]\n\n<h2>Showcase Box Example</h2>\n<p>This a content showcase using all the features from the Slideset widget as a navigation. Any kind of HTML content can be used inside the navigation.</p>\n[widgetkit id=37]\n\n<h2>Showcase Button Example</h2>\n<p>This is an image slideshow with some nice navigation buttons. You can place any kind of HTML in the navigation buttons.</p>\n[widgetkit id=41]\n\n<h2>Tabs Example</h2>\n<p>This is a classic, tabbed slideshow. Tabs can be aligned to the left, right and center.</p>\n[widgetkit id=35]\n\n<h2>Tabs Bar Example</h2>\n<p>This is a slideshow with a tabbed navigation bar. Tabs can be aligned to the left, right and center.</p>\n[widgetkit id=34]\n\n<h2>List Example</h2>\n<p>This is a slideshow with a vertical tabbed list as a navigation.</p>\n[widgetkit id=36]\n\n<h2>How To Use</h2>\n\n<p>The Widgetkit Slideshow takes full advantage of the very user-friendly Widgetkit administration user interface. It has never been easier to create and manage all the slideshows and their different slides in one place. After you created a slideshow you can load it anywhere in your theme using shortcodes or the universal Widgetkit Joomla module or WordPress widget.</p>','',-2,2,'2011-06-08 11:16:09',969,'','2013-06-25 13:50:42',42,0,'0000-00-00 00:00:00','2011-06-08 11:16:09','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',18,9,'','',1,180,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\",\"tags\":null}',0,'*',''),
	(15,48,'Lightbox',X'6C69676874626F78','<p>The Widgetkit Lightbox allows you to view images, HTML and multi-media content on a dark dimmed overlay without having to leave the current page.</p>\n\n<h2>Features</h2>\n\n<ul class=\"uk-list uk-list-space\">\n  <li><i class=\"uk-icon uk-icon-check\"></i> Display images, videos, HTML, Iframes, Ajax requests and SWF</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Supports YouTube, Vimeo, MP4 (h.264), WebM and FLV movies</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Group lightboxes and mix different content types</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Responsive design to fit all device resolutions</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Load other widgets in a lightbox</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> 3 different opening and closing transitions</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> 4 different caption styles</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Keyboard and mouse scroll wheel navigation</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Built on the latest jQuery version</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Works with Joomla and WordPress</li>\n</ul>\n\n<h2>Examples</h2>\n\n<p>Different animations - <code>fade</code>, <code>elastic</code> and <code>none</code></p>\n<p class=\"gallery\">\n  <a data-lightbox=\"transitionIn:fade;transitionOut:fade;\" href=\"images/yootheme/widgetkit/lightbox/image1_lightbox.jpg\"><img src=\"images/yootheme/widgetkit/lightbox/image1.jpg\" width=\"180\" height=\"120\" alt=\"Lightbox Image\" /></a>\n  <a data-lightbox=\"transitionIn:elastic;transitionOut:elastic;\" href=\"images/yootheme/widgetkit/lightbox/image2_lightbox.jpg\"><img src=\"images/yootheme/widgetkit/lightbox/image2.jpg\" width=\"180\" height=\"120\" alt=\"Lightbox Image\" /></a>\n  <a data-lightbox=\"transitionIn:none;transitionOut:none;\" href=\"images/yootheme/widgetkit/lightbox/image3_lightbox.jpg\"><img src=\"images/yootheme/widgetkit/lightbox/image3.jpg\" width=\"180\" height=\"120\" alt=\"Lightbox Image\" /></a>\n</p>\n\n<p>Different title positions - <code>float</code>, <code>inside</code> and <code>over</code></p>\n<p class=\"gallery\">\n  <a data-lightbox=\"group:mygroup1;titlePosition:float\" href=\"images/yootheme/widgetkit/lightbox/image4_lightbox.jpg\" title=\"Title Position: Float\"><img src=\"images/yootheme/widgetkit/lightbox/image4.jpg\" width=\"180\" height=\"120\" alt=\"Lightbox Image\" /></a>\n  <a data-lightbox=\"group:mygroup1;titlePosition:inside\" href=\"images/yootheme/widgetkit/lightbox/image5_lightbox.jpg\" title=\"Title Position: Inside\"><img src=\"images/yootheme/widgetkit/lightbox/image5.jpg\" width=\"180\" height=\"120\" alt=\"Lightbox Image\" /></a>\n  <a data-lightbox=\"group:mygroup1;titlePosition:over;padding:0\" href=\"images/yootheme/widgetkit/lightbox/image6_lightbox.jpg\" title=\"Title Position: Over and Padding set to 0\"><img src=\"images/yootheme/widgetkit/lightbox/image6.jpg\" width=\"180\" height=\"120\" alt=\"Lightbox Image\" /></a>\n</p>\n\n<p>Various examples in one gallery (try also using the keyboard and mouse scroll wheel)</p>\n<ul>\n  <li><a data-lightbox=\"group:mygroup2\" href=\"http://www.youtube.com/watch?v=R55e-uHQna0\" title=\"YouTube Video\">YouTube</a></li>\n  <li><a data-lightbox=\"group:mygroup2\" href=\"http://vimeo.com/15261921\" title=\"Vimeo Video\">Vimeo</a></li>\n  <li><a data-lightbox=\"group:mygroup2;autoplay:true;\" href=\"http://www.yootheme.com/videos/mediaplayer.mp4\" title=\"MP4 (h.264)\">MP4 (h.264)</a></li>\n  <li><a data-lightbox=\"group:mygroup2\" href=\"http://www.adobe.com/jp/events/cs3_web_edition_tour/swfs/perform.swf\" title=\"Flash Swf\">Swf</a></li>\n  <li><a data-lightbox=\"group:mygroup2\" href=\"#inline\" title=\"Inline Content from the Website\">Inline</a></li>\n  <li><a data-lightbox=\"group:mygroup2;width:1000;height:600\" title=\"Iframe\" href=\"http://www.wikipedia.org\">Iframe</a></li>\n</ul>\n\n<div style=\"display: none;\">\n  <div id=\"inline\" style=\"width: 400px; height: 100px; overflow: auto;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\n</div>\n\n<h2>Load Widgets In A Lightbox</h2>\n<p>Use <code>#wk-ID</code> to load widgets like slideshows or galleries in a lightbox. For example: <a data-lightbox=\"width:600;height:300;\" href=\"#wk-50\" title=\"Widgetkit Slideshow\">Widgetkit Slideshow</a></p>\n<pre>&lt;a data-lightbox=&quot;width:600;height:300;&quot; href=&quot;#wk-10&quot;&gt;Lightbox&lt;/a&gt;</pre>\n\n<h2>How To Use</h2>\n\n<p>Use the HTML5 custom data attribute <code>data-lightbox</code> to activate the lightbox. You can set various lightbox parameters to the data attribute. For example:</p>\n\n<pre>&lt;a data-lightbox=&quot;width:1000;height:600;&quot; href=&quot;http://www.wikipedia.org&quot;&gt;Lightbox&lt;/a&gt;</pre>\n\n<p>Here is a list of the most common parameters:</p>\n\n<ul>\n  <li><strong>titlePosition</strong> - How should the title show up? (<code>float</code>, <code>outside</code>, <code>inside</code> or <code>over</code>)</li>\n  <li><strong>transitionIn</strong> - Set a opening transition. (<code>fade</code>, <code>elastic</code>, or <code>none</code>)</li>\n  <li><strong>transitionOut</strong> - Set a closing transition (<code>fade</code>, <code>elastic</code>, or <code>none</code>)</li>\n  <li><strong>overlayShow</strong> - Set to <code>true</code> or <code>false</code></li>\n  <li><strong>scrolling</strong> - Set to <code>yes</code> or <code>no</code></li>\n  <li><strong>width</strong> - Set a width in pixel</li>\n  <li><strong>height</strong> - Set a height in pixel</li>\n  <li><strong>padding</strong> - Set a padding in pixel</li>\n</ul>','',-2,2,'2011-06-08 11:16:20',969,'','2013-06-24 16:03:26',42,0,'0000-00-00 00:00:00','2011-06-08 11:16:20','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',9,8,'','',1,29,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\",\"tags\":null}',0,'*',''),
	(16,49,'Spotlight',X'73706F746C69676874','<p>The Widgetkit Spotlight allows you to add an overlay to your images, which fades or moves in on mouse hover. The overlay can be an image or HTML content. The default magnifier spotlight is a perfect match for the Widgetkit lightbox.</p>\n\n<h2>Features</h2>\n\n<ul class=\"uk-list uk-list-space\">\n  <li><i class=\"uk-icon uk-icon-check\"></i> Create nicely animated image overlays</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Supports custom image or HTML content overlays</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> 5 different animation modes</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Responsive design to fit all device resolutions</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Built with the latest jQuery version</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Works with Joomla and WordPress</li>\n</ul>\n\n<h2>Examples</h2>\n\n<p>If no custom overlay is set, the default spotlight fades in an overlay with a magnifier image. If you define a custom overlay, you can choose between different animations - <code>fade</code>, <code>bottom</code>, <code>top</code>, <code>right</code> and <code>left</code>.</p>\n\n<div>\n  <a data-spotlight=\"on\" data-lightbox=\"transitionIn:elastic;transitionOut:elastic;\" href=\"images/yootheme/widgetkit/lightbox/image1_lightbox.jpg\">\n    <img src=\"images/yootheme/widgetkit/lightbox/image1.jpg\" width=\"180\" height=\"120\" alt=\"Spotlight Image\" />\n  </a>\n  <a data-spotlight=\"effect:bottom;\" data-lightbox=\"transitionIn:elastic;transitionOut:elastic;\" href=\"images/yootheme/widgetkit/lightbox/image2_lightbox.jpg\">\n    <img src=\"images/yootheme/widgetkit/lightbox/image2.jpg\" width=\"180\" height=\"120\" alt=\"Spotlight Image\" />\n    <div class=\"overlay\">Custom Overlay (Bottom)</div>\n  </a>\n  <a data-spotlight=\"effect:right;\" data-lightbox=\"transitionIn:elastic;transitionOut:elastic;\" href=\"images/yootheme/widgetkit/lightbox/image3_lightbox.jpg\">\n    <img src=\"images/yootheme/widgetkit/lightbox/image3.jpg\" width=\"180\" height=\"120\" alt=\"Spotlight Image\" />\n    <div class=\"overlay\">Custom Overlay (Right)</div>\n  </a>\n</div>\n\n<div>\n  <a data-spotlight=\"effect:fade;\" data-lightbox=\"transitionIn:elastic;transitionOut:elastic;\" href=\"images/yootheme/widgetkit/lightbox/image4_lightbox.jpg\">\n    <img src=\"images/yootheme/widgetkit/lightbox/image4.jpg\" width=\"180\" height=\"120\" alt=\"Spotlight Image\" />\n    <div class=\"overlay remove-padding\"><img src=\"images/yootheme/widgetkit/lightbox/image4_spotlight.jpg\" width=\"180\" height=\"120\" alt=\"Spotlight Image\" /></div>\n  </a>\n  <a data-spotlight=\"effect:top;\" data-lightbox=\"transitionIn:elastic;transitionOut:elastic;\" href=\"images/yootheme/widgetkit/lightbox/image5_lightbox.jpg\">\n    <img src=\"images/yootheme/widgetkit/lightbox/image5.jpg\" width=\"180\" height=\"120\" alt=\"Spotlight Image\" />\n    <div class=\"overlay\">Custom Overlay (Top)</div>\n  </a>\n  <a data-spotlight=\"effect:left;\" data-lightbox=\"transitionIn:elastic;transitionOut:elastic;\" href=\"images/yootheme/widgetkit/lightbox/image6_lightbox.jpg\">\n    <img src=\"images/yootheme/widgetkit/lightbox/image6.jpg\" width=\"180\" height=\"120\" alt=\"Spotlight Image\" />\n    <div class=\"overlay\">Custom Overlay (Left)</div>\n  </a>\n</div>\n\n<h2>How To Use</h2>\n\n<p>Use the HTML5 custom data attribute <code>data-spotlight</code> to activate the spotlight.\n\n<pre>&lt;a data-spotlight=\"on\" href=\"/mypage.html\"&gt;\n  &lt;img src=\"/image.jpg\" width=\"180\" height=\"120\" alt=\"\" /&gt;\n&lt;/a&gt;</pre>\n\n<p>To create a custom overlay, use a div element with the CSS class <code>overlay</code>. You can set the effect parameter to the data attribute. For example:</p>\n\n<pre>&lt;a data-spotlight=\"effect:bottom;\" href=\"/mypage.html\"&gt;\n  &lt;img src=\"/image.jpg\" width=\"180\" height=\"120\" alt=\"\" /&gt;\n  &lt;div class=\"overlay\"&gt;Custom Overlay&lt;/div&gt;\n&lt;/a></pre>\n\n<p>You can set the effect parameter to <code>fade</code>, <code>bottom</code>, <code>top</code>, <code>right</code> and <code>left</code>.','',-2,2,'2011-06-08 11:16:32',969,'','2013-06-24 16:08:49',42,0,'0000-00-00 00:00:00','2011-06-08 11:16:32','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',8,7,'','',1,23,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\",\"tags\":null}',0,'*',''),
	(17,50,'Twitter',X'74776974746572','<p>The Widgetkit Twitter module is the neatest way to display tweets directly on your website. All displayed tweets get cached so they show up super fast, even if Twitter is not available.</p>\n\n<h2>Features</h2>\n\n<ul class=\"uk-list uk-list-space\">\n  <li><i class=\"uk-icon uk-icon-check\"></i> Filter tweets by hashtags, words, from users, to users, referencing users</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Block tweets using a blacklist</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Tweets are cached for high performance</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Tweets show up even if Twitter is not available</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> 3 different styles to show your tweets</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Responsive design to fit all device resolutions</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Built with HTML5 using article and time elements</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Works with Joomla and WordPress</li>\n</ul>\n\n<h2>How To Use</h2>\n\n<p>Create a Twitter module in Joomla or a Twitter widget in WordPress and publish it in a module position. A lot of options are available to choose which tweets you want to show.</p>\n\n<p>For example you can show only tweets from a specific user or tweets that contain a certain hash-tag or a specific word. All options can be combined. To filter by more than one word or user use a space between them. For example: <code>yootheme joomla</code>.</p>','',-2,2,'2011-06-08 11:16:47',969,'','2013-06-24 16:06:55',42,0,'0000-00-00 00:00:00','2011-06-08 11:16:47','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,6,'','',1,35,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\",\"tags\":null}',0,'*',''),
	(18,51,'Media Player',X'6D656469612D706C61796572','<p>The Widgetkit Media Player is a HTML5 audio and video player completely built with HTML and CSS. You can easily embed video files into your website by using the HTML5 video element. A Flash player fallback is included for all unsupported browsers.</p>\n\n<h2>Features</h2>\n\n<ul class=\"uk-list uk-list-space\">\n  <li><i class=\"uk-icon uk-icon-check\"></i> Native playback for modern HTML5 browsers</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Supports MP4 (h.264), WebM, FLV, WMV and MP3 files</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Completely built with HTML and CSS</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Responsive design to fit all device resolutions</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Same UI in all browsers</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Create your own skins</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Flash player fallback for unsupported browsers</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Works with Joomla and WordPress</li>\n</ul>\n\n<h2>Examples</h2>\n\n<video width=\"640\" height=\"360\" poster=\"http://www.yootheme.com/videos/mediaplayer.jpg\" controls=\"controls\" preload=\"none\">\n  <source type=\"video/mp4\" src=\"http://www.yootheme.com/videos/mediaplayer.mp4\" />\n</video>\n\n<p>This is a MP3 Audio Sample:</p>\n\n<audio src=\"http://www.yootheme.com/videos/mediaplayer.mp3\" type=\"audio/mp3\" controls=\"control\" preload=\"none\"></audio>\n\n<h2>How To Use</h2>\n\n<p>Use the HTML5 <code>video</code> element to embed video in your website. For example:</p>\n\n<pre>&lt;video src=\"/video.mp4\" width=\"320\" height=\"240\"&gt;&lt;/video&gt;</pre>\n\n<p>You can also provide multiple sources, to add support for the different video formats like h.264, WebM or Ogg:</p>\n\n<pre>&lt;video width=\"320\" height=\"240\"&gt;\n  &lt;source type=\"video/mp4\"  src=\"/video.mp4\" /&gt;\n  &lt;source type=\"video/webm\" src=\"/video.webm\" /&gt;\n  &lt;source type=\"video/ogg\"  src=\"/video.ogv\" /&gt;\n&lt;/video&gt;\n</pre>\n\n\n<p>Use the HTML5 <code>audio</code> element to embed MP3 files in your website. For example:</p>\n\n<pre>&lt;audio src=\"/audio.mp3\" type=\"audio/mp3\"&gt;&lt;/audio&gt;</pre>','',-2,2,'2011-07-31 16:01:48',969,'','2013-06-24 16:05:37',42,0,'0000-00-00 00:00:00','2011-07-31 16:01:48','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',7,5,'','',1,20,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\",\"tags\":null}',0,'*',''),
	(19,52,'Gallery',X'67616C6C657279','<p>The Widgetkit Gallery provides a smart and automated way to publish images on your website. You only need to select the image folders and the whole gallery is generated automatically.</p>\n\n<h2>Features</h2>\n\n<ul class=\"uk-list uk-list-space\">\n  <li><i class=\"uk-icon uk-icon-check\"></i> Fully responsive including all effects</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Folder based image selection</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Supports multiple image folders</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Automatic thumbnail creation</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Supports image captions and custom links</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Uses the Widgetkit Spotlight and Lightbox</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Built with HTML5, CSS3, PHP 5.2+ and the latest jQuery version</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Works with Joomla and WordPress</li>\n</ul>\n\n<h2>Showcase Box Example</h2>\n<p>This is an image showcase with eye-catching transition effects and a thumbnail navigation.</p>\n[widgetkit id=39]\n\n<h2>Image Wall Example</h2>\n<p>This is an image wall with zoom effect, no margins and squared corners using the lightbox.</p>\n[widgetkit id=24]\n\n<h2>Polaroid Example</h2>\n<p>This is an image wall with scattered polaroid pictures using the lightbox.</p>\n[widgetkit id=25]\n\n<h2>Slider Example 1</h2>\n<p>This is an image slider where the image centers automatically during the effect. It also features a spotlight caption and the lightbox.</p>\n[widgetkit id=27]\n\n<h2>Slider Example 2</h2>\n<p>This is an image slider where the image stays left during the effect.</p>\n[widgetkit id=31]\n\n<h2>Slideshow Screen Example</h2>\n<p>This is an image gallery using the nice swipe effect from the slideshow widget.</p>\n[widgetkit id=48]\n\n<h2>Slideshow Default Example</h2>\n<p>This is an image gallery using all the features from the slideshow widget.</p>\n[widgetkit id=19]\n\n<h2>Showcase Example</h2>\n<p>This is a simple image showcase mashing up all the features from the slideshow and slideset widget.</p>\n[widgetkit id=40]\n\n<h2>Slideshow Inside Example</h2>\n<p>This is a very basic slideshow which uses preview thumbnails inside the image as a navigation.</p>\n[widgetkit id=54]\n\n<h2>Spotlight Example</h2>\n<p>This is an image wall with some margins and rounded corners using the spotlight and lightbox.</p>\n[widgetkit id=23]\n\n<h2>Slideset Example</h2>\n<p>This is an image gallery using all the features from the slideset widget.</p>\n[widgetkit id=44]\n\n<h2>How To Use</h2>\n\n<p>The Widgetkit Gallery comes with a user-friendly administration user interface which let\'s you create new galleries with just a few clicks. The integrated directory browser let\'s you easily add or remove source directories of your images. All galleries can be loaded anywhere in your theme using shortcodes or the universal Widgetkit Joomla module or WordPress widget.</p>','',-2,2,'2011-07-31 16:02:04',969,'','2013-06-24 16:02:13',42,0,'0000-00-00 00:00:00','2011-07-31 16:02:04','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',12,4,'','',1,51,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\",\"tags\":null}',0,'*',''),
	(20,53,'Map',X'6D6170','<p>The Widgetkit Map provides a simple solution for adding a map to your website. Various features let you customize the map, like changing colors and adding markers or directions.</p>\n\n<h2>Features</h2>\n\n<ul class=\"uk-list uk-list-space\">\n  <li><i class=\"uk-icon uk-icon-check\"></i> Location selection with auto geocoding</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Supports multiple map markers with text popups</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Option to get the direction to the active marker</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Supports custom map styles and colors</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Uses the latest Google Maps API</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Built with HTML5, CSS3, PHP 5.3+ and the latest jQuery version</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Works with Joomla and WordPress</li>\n</ul>\n\n<h2>Direction Example</h2>\n<p>This map features all map controls, multiple markers and you can get the direction.</p>\n[widgetkit id=26]\n\n<h2>Color Scheme Example</h2>\n<p>Set or invert the hue, saturation, lightness and gamma of a map.</p>\n[widgetkit id=28]\n\n<h2>Minimal Example</h2>\n<p>This map has a fixed width, no controls and no markers.</p>\n[widgetkit id=29]\n\n<h2>How To Use</h2>\n\n<p>With the Widgetkit Map you can quickly create and manage simple maps with features like multiple markers, text popups and custom color schemes. Once you have created a map, you can load it anywhere on your website using shortcodes or the universal Widgetkit Joomla module or WordPress widget.</p>','',-2,2,'2011-07-31 16:02:22',969,'','2013-06-25 13:50:11',42,0,'0000-00-00 00:00:00','2011-07-31 16:02:22','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',7,3,'','',1,19,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\",\"tags\":null}',0,'*',''),
	(21,54,'Accordion',X'6163636F7264696F6E','<p>The Widgetkit Accordion enables you to display a set of items in a compact space. When clicking on each item\'s header, it expands or collapses its content section.</p>\n\n<h2>Features</h2>\n\n<ul class=\"uk-list uk-list-space\">\n  <li><i class=\"uk-icon uk-icon-check\"></i> Clean and very lightweight code</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Responsive design to fit all device resolutions</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Smooth transitions on content section toggle</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Option to automatically match the height of varying content</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Option to auto collapse or allow multiple opened items</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Built with HTML5, CSS3, PHP 5.3+ and the latest jQuery version</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Works with Joomla and WordPress</li>\n</ul>\n\n<h2>Example</h2>\n\n[widgetkit id=30]\n\n<h2>How To Use</h2>\n\n<p>The Widgetkit Accordion lets you easily create and manage all the accordion\'s contents through the user-friendly Widgetkit administration interface. After you have created an accordion, you can load it anywhere on your website using shortcodes or the universal Widgetkit Joomla module or WordPress widget.</p>','',-2,2,'2011-07-31 16:02:38',969,'','2013-06-25 13:49:38',42,0,'0000-00-00 00:00:00','2011-07-31 16:02:38','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',9,2,'','',1,32,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\",\"tags\":null}',0,'*',''),
	(22,55,'Slideset',X'736C696465736574','<p>The Widgetkit Slideset takes your product showcase to the next level. It provides a sleek way to show multiple sets of items and uses smooth effects while looping through them.</p>\n\n<h2>Features</h2>\n\n<ul class=\"uk-list uk-list-space\">\n  <li><i class=\"uk-icon uk-icon-check\"></i> Clean and very lightweight code</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Eye-catching transition effects</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Fully responsive including all effects</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Support of named custom sets</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Swipe navigation on mobile phones</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Built with HTML5, CSS3, PHP 5.3+ and the latest jQuery version</li>\n  <li><i class=\"uk-icon uk-icon-check\"></i> Works with Joomla and WordPress</li>\n</ul>\n\n<h2>Slide Example</h2>\n<p>The sets are auto generated (4 items per set), item names are shown and it uses the slide effect and navigation buttons.</p>\n[widgetkit id=32]\n\n<h2>Zoom Example</h2>\n<p>The sets are arranged manually, sets names are used as a navigation and it uses the zoom effect.</p>\n[widgetkit id=33]\n\n<h2>Drops Example</h2>\n<p>The sets show the item names and it uses the drops effect and navigation buttons.</p>\n[widgetkit id=49]\n\n<h2>Deck Example</h2>\n<p>This auto generated sets uses prev/next buttons as a navigation and the deck effect.</p>\n[widgetkit id=43]\n\n<h2>How To Use</h2>\n\n<p>The Widgetkit Slideset takes full advantage of the very user-friendly Widgetkit administration interface. You can create and manage all slidesets and their different items in one place. After you have created a slideset, you can load it anywhere on your website using shortcodes or the universal Widgetkit Joomla module or WordPress widget.</p>','',-2,2,'2011-07-31 16:02:55',969,'','2013-06-25 13:50:32',42,0,'0000-00-00 00:00:00','2011-07-31 16:02:55','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',12,1,'','',1,48,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\",\"tags\":null}',0,'*',''),
	(23,170,'Widgetkit',X'7769646765746B69742D657874656E73696F6E','<p class=\"uk-article-lead\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>\n\n','\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',-2,7,'2014-02-14 11:50:55',969,'','2014-04-29 07:57:51',42,0,'0000-00-00 00:00:00','2013-02-14 11:50:55','0000-00-00 00:00:00','{\"image_intro\":\"images\\/yootheme\\/blog_widgetkit.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/yootheme\\/blog_widgetkit.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',24,7,'','',1,11,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),
	(25,177,'Pagekit',X'706167656B6974','<p class=\"uk-article-lead\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>\n\n','\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',-2,7,'2014-03-28 15:10:27',969,'','2014-04-29 07:55:15',42,0,'0000-00-00 00:00:00','2014-04-07 15:10:27','0000-00-00 00:00:00','{\"image_intro\":\"images\\/yootheme\\/blog_pagekit.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/yootheme\\/blog_pagekit.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',9,2,'','',1,4,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(26,179,'UIkit',X'75696B6974','<p class=\"uk-article-lead\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>\n\n','\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',-2,7,'2014-03-22 15:15:43',969,'','2014-04-29 07:55:49',42,0,'0000-00-00 00:00:00','2014-04-07 15:15:43','0000-00-00 00:00:00','{\"image_intro\":\"images\\/yootheme\\/blog_uikit.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/yootheme\\/blog_uikit.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',7,3,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(27,198,'Vesperia',X'7665737065726961','<p class=\"uk-article-lead\">Durante la fase de decadencia de Dynamite.es, entre mediados y finales de 2011, el equipo original no se conformó con una experiencia Wrath of the Lich King® sólida y siguió ambicionando con las posibilidades que World Of Warcraft ofrece... Así nació \"Phantasia\", un reino de juego distinto enfocado al juego rápido, con su propio lore e historia y que ofrecía una experiencia nueva al estar ambientado en localizaciones completamente nuevas</p>\r\n<p class=\"uk-article-lead\">Manteniendo la promesa de aquel entonces, en Dynamite.zone ha comenzado el desarrollo de <b>Phantasia ReBorn</b>, un remake con adiciones a la experiencia original de 2011, ¡Presta atención a todo la información que irá apareciendo por las redes sociales y nuestra página web durante las próximas semanas! \r\n <p class=\"uk-article-lead\">Mientras tanto, aquí tienes imágenes del desarrollo de Phantasia durante el último año de Dynamite.es, por favor ten en cuenta que <b>estas imagenes NO representan ninguna versión Phantasia ReBorn</b> y el servidor que se lanzará será muy distinto.</p>\r\n\r\n<h2 class=\"uk-h3\">Características</h2>\r\n\r\n<div class=\"uk-grid uk-grid-divider\" data-uk-grid-margin>\r\n    <div class=\"uk-width-medium-1-3\">\r\n       <div class=\"uk-grid\">\r\n            <div class=\"uk-width-large-1-6 uk-vertical-align uk-text-center\" style=\"height: 50px;\">\r\n                <div class=\"uk-vertical-align-middle\">\r\n                    <i class=\"uk-icon-fast-forward uk-icon-medium uk-text-primary\"></i>\r\n                </div>\r\n            </div>\r\n            <div class=\"uk-width-large-5-6 uk-text-center-small uk-text-center-medium\">\r\n                <h3 class=\"uk-h4 uk-margin-bottom-remove\">Juego rápido</h3>\r\n                <p class=\"uk-margin-top-remove\">Empieza al 80. Entra en acción.</p>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"uk-width-medium-1-3\">\r\n        <div class=\"uk-grid\">\r\n            <div class=\"uk-width-large-1-6 uk-vertical-align uk-text-center\" style=\"height: 50px;\">\r\n                <div class=\"uk-vertical-align-middle\">\r\n                    <i class=\"uk-icon-users uk-icon-medium uk-text-primary\"></i>\r\n                </div>\r\n            </div>\r\n            <div class=\"uk-width-large-5-6 uk-text-center-small uk-text-center-medium\">\r\n                <h3 class=\"uk-h4 uk-margin-bottom-remove\">Nueva experiencia</h3>\r\n                <p class=\"uk-margin-top-remove\">Momentos y sitios increibles.</p>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"uk-width-medium-1-3\">\r\n        <div class=\"uk-grid\">\r\n            <div class=\"uk-width-large-1-6 uk-vertical-align uk-text-center\" style=\"height: 50px;\">\r\n                <div class=\"uk-vertical-align-middle\">\r\n                    <i class=\"uk-icon-refresh uk-icon-medium uk-text-primary\"></i>\r\n                </div>\r\n            </div>\r\n            <div class=\"uk-width-large-5-6 uk-text-center-small uk-text-center-medium\">\r\n                <h3 class=\"uk-h4 uk-margin-bottom-remove\">Más contenido</h3>\r\n                <p class=\"uk-margin-top-remove\">De Cataclysm.</p>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<div class=\"uk-grid uk-grid-divider\" data-uk-grid-margin>\r\n    <div class=\"uk-width-medium-1-3\">\r\n       <div class=\"uk-grid\">\r\n            <div class=\"uk-width-large-1-6 uk-vertical-align uk-text-center\" style=\"height: 50px;\">\r\n                <div class=\"uk-vertical-align-middle\">\r\n                    <i class=\"uk-icon-lock uk-icon-medium uk-text-primary\"></i>\r\n                </div>\r\n            </div>\r\n            <div class=\"uk-width-large-5-6 uk-text-center-small uk-text-center-medium\">\r\n                <h3 class=\"uk-h4 uk-margin-bottom-remove\">Seguridad Warden</h3>\r\n                <p class=\"uk-margin-top-remove\">Impide que estropeen tu partida.</p>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"uk-width-medium-1-3\">\r\n        <div class=\"uk-grid\">\r\n            <div class=\"uk-width-large-1-6 uk-vertical-align uk-text-center\" style=\"height: 50px;\">\r\n                <div class=\"uk-vertical-align-middle\">\r\n                    <i class=\"uk-icon-users uk-icon-medium uk-text-primary\"></i>\r\n                </div>\r\n            </div>\r\n            <div class=\"uk-width-large-5-6 uk-text-center-small uk-text-center-medium\">\r\n                <h3 class=\"uk-h4 uk-margin-bottom-remove\">Nueva comunidad</h3>\r\n                <p class=\"uk-margin-top-remove\">Sé alguien relevante.</p>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"uk-width-medium-1-3\">\r\n        <div class=\"uk-grid\">\r\n            <div class=\"uk-width-large-1-6 uk-vertical-align uk-text-center\" style=\"height: 50px;\">\r\n                <div class=\"uk-vertical-align-middle\">\r\n                    <i class=\"uk-icon-refresh uk-icon-medium uk-text-primary\"></i>\r\n                </div>\r\n            </div>\r\n            <div class=\"uk-width-large-5-6 uk-text-center-small uk-text-center-medium\">\r\n                <h3 class=\"uk-h4 uk-margin-bottom-remove\">Streaming</h3>\r\n                <p class=\"uk-margin-top-remove\">Juega mientras descargas.</p>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"uk-width-medium-1-1\">\r\n        <div class=\"uk-panel uk-panel-box uk-text-center\">\r\n            <p><strong>Vesperia.</strong> Ya disponible para todos los jugadores hispanohablantes. <a class=\"uk-button uk-button-primary uk-margin-left\" href=\"http://www.yootheme.com/icons\" target=\"_blank\">Jugar ahora</a></p>\r\n        </div>\r\n    </div>\r\n</div>','',1,2,'2011-05-02 11:47:01',969,'','2015-07-15 02:09:56',969,969,'2015-07-15 02:09:56','2011-05-02 11:47:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',9,0,'','',1,22,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');

/*!40000 ALTER TABLE `web_content` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_content_frontpage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_content_frontpage`;

CREATE TABLE `web_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_content_frontpage` WRITE;
/*!40000 ALTER TABLE `web_content_frontpage` DISABLE KEYS */;

INSERT INTO `web_content_frontpage` (`content_id`, `ordering`)
VALUES
	(8,6),
	(9,5),
	(10,4),
	(11,3),
	(12,2),
	(23,1);

/*!40000 ALTER TABLE `web_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_content_rating
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_content_rating`;

CREATE TABLE `web_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_content_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_content_types`;

CREATE TABLE `web_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_content_types` WRITE;
/*!40000 ALTER TABLE `web_content_types` DISABLE KEYS */;

INSERT INTO `web_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`)
VALUES
	(1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
	(2,'Weblink','com_weblinks.weblink','{\"special\":{\"dbtable\":\"#__weblinks\",\"key\":\"id\",\"type\":\"Weblink\",\"prefix\":\"WeblinksTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{}}','WeblinksHelperRoute::getWeblinkRoute','{\"formFile\":\"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"featured\",\"images\"], \"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
	(3,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
	(4,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
	(5,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute',''),
	(6,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
	(7,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
	(8,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
	(9,'Weblinks Category','com_weblinks.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','WeblinksHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
	(10,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
	(11,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
	(12,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
	(13,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
	(14,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
	(15,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

/*!40000 ALTER TABLE `web_content_types` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_contentitem_tag_map
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_contentitem_tag_map`;

CREATE TABLE `web_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';



# Volcado de tabla web_core_log_searches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_core_log_searches`;

CREATE TABLE `web_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_extensions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_extensions`;

CREATE TABLE `web_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned DEFAULT NULL,
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_extensions` WRITE;
/*!40000 ALTER TABLE `web_extensions` DISABLE KEYS */;

INSERT INTO `web_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`)
VALUES
	(1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(3,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(4,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(5,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(6,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(8,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_jed_info\":\"0\",\"cachetimeout\":\"6\",\"minimum_stability\":\"3\"}','','',0,'0000-00-00 00:00:00',0,0),
	(11,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"es-ES\",\"site\":\"es-ES\"}','','',0,'0000-00-00 00:00:00',0,0),
	(12,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(13,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\",\"enable_flash\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(14,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(15,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(16,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(19,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(20,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),
	(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"target\":\"0\",\"count_clicks\":\"1\",\"icons\":1,\"link_icons\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_num_links\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_links_cat\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_link_description\":\"1\",\"show_link_hits\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(22,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"1\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_tags\":\"0\",\"show_icons\":\"1\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"0\",\"history_limit\":10,\"show_urls_images_frontend\":\"1\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"right\",\"float_fulltext\":\"right\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(23,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),
	(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(25,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"1\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"0\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(27,'com_finder','component','com_finder','',1,1,0,0,'','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"0\",\"show_autosuggest\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"porter_en\"}','','',0,'0000-00-00 00:00:00',0,0),
	(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{\"updatesource\":\"sts\",\"customurl\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(29,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(31,'com_ajax','component','com_ajax','',1,1,1,0,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(32,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"simplepie\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(102,'phputf8','library','phputf8','',0,1,1,1,'{\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"mediaversion\":\"40ee59b56e2caba140a668c946fcfb40\"}','','',0,'0000-00-00 00:00:00',0,0),
	(104,'IDNA Convert','library','idna_convert','',0,1,1,1,'{\"name\":\"IDNA Convert\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(105,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(106,'PHPass','library','phpass','',0,1,1,1,'{\"name\":\"PHPass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(206,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(207,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(208,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(213,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(223,'mod_finder','module','mod_finder','',0,1,0,0,'','','','',0,'0000-00-00 00:00:00',0,0),
	(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(304,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(306,'mod_online','module','mod_online','',1,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0),
	(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(309,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(311,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(314,'mod_version','module','mod_version','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),
	(316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),
	(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),
	(403,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','','',0,'0000-00-00 00:00:00',1,0),
	(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),
	(405,'plg_content_geshi','plugin','geshi','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),
	(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}','{\"style\":\"none\"}','','',0,'0000-00-00 00:00:00',0,0),
	(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),
	(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,0,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),
	(409,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}','{}','','',0,'0000-00-00 00:00:00',6,0),
	(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.3\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),
	(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}','{}','','',0,'0000-00-00 00:00:00',2,0),
	(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2014\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\",\"version\":\"4.1.7\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}','{\"mode\":\"1\",\"skin\":\"0\",\"compressed\":\"0\",\"cleanup_startup\":\"0\",\"cleanup_save\":\"2\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\",@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight]\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"safari\":\"0\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),
	(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}','{}','','',0,'0000-00-00 00:00:00',1,0),
	(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}','{}','','',0,'0000-00-00 00:00:00',2,0),
	(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','{}','','',0,'0000-00-00 00:00:00',3,0),
	(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}','{}','','',0,'0000-00-00 00:00:00',4,0),
	(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}','{}','','',0,'0000-00-00 00:00:00',1,0),
	(423,'plg_system_p3p','plugin','p3p','system',0,1,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),
	(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),
	(425,'plg_system_debug','plugin','debug','system',0,0,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),
	(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}','{}','','',0,'0000-00-00 00:00:00',5,0),
	(427,'plg_system_redirect','plugin','redirect','system',0,1,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}','{}','','',0,'0000-00-00 00:00:00',6,0),
	(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}','{}','','',0,'0000-00-00 00:00:00',7,0),
	(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}','{}','','',0,'0000-00-00 00:00:00',8,0),
	(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}','{}','','',0,'0000-00-00 00:00:00',3,0),
	(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),
	(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),
	(433,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{}','','',0,'0000-00-00 00:00:00',1,0),
	(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}','{}','','',0,'0000-00-00 00:00:00',10,0),
	(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,1,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),
	(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'','{}','','',0,'0000-00-00 00:00:00',7,0),
	(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','{}','','',0,'0000-00-00 00:00:00',1,0),
	(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','{}','','',0,'0000-00-00 00:00:00',2,0),
	(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{}','','',0,'0000-00-00 00:00:00',3,0),
	(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{}','','',0,'0000-00-00 00:00:00',4,0),
	(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),
	(447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,1,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,1,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(451,'plg_search_tags','plugin','tags','search',0,0,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(504,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(600,'English (en-GB)','language','en-GB','',0,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.2\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(601,'English (en-GB)','language','en-GB','',1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.2\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(700,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"June 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.3\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(801,'weblinks','package','pkg_weblinks','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0),
	(10000,'yoo_peak','template','yoo_peak','',0,1,1,0,'{\"legacy\":false,\"name\":\"yoo_peak\",\"type\":\"template\",\"creationDate\":\"november 2014\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"1.0.0\",\"description\":\"peak is the november 2014 theme of the YOOtheme club. It is based on YOOtheme\'s Warp theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.\",\"group\":\"\"}','{\"config\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10001,'Widgetkit','module','mod_widgetkit','',0,1,0,0,'{\"name\":\"Widgetkit\",\"type\":\"module\",\"creationDate\":\"May 2011\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) 2007 - 2011 YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"1.0.0\",\"description\":\"Widgetkit module for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\"}','{\"widget_id\":\"\",\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10002,'Widgetkit Twitter','module','mod_widgetkit_twitter','',0,1,0,0,'{\"name\":\"Widgetkit Twitter\",\"type\":\"module\",\"creationDate\":\"May 2011\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) 2007 - 2011 YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"1.0.0\",\"description\":\"Twitter module for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\"}','{\"style\":\"list\",\"from_user\":\"\",\"to_user\":\"\",\"ref_user\":\"\",\"hashtag\":\"\",\"word\":\"\",\"nots\":\"\",\"limit\":\"5\",\"image_size\":\"48\",\"show_image\":\"1\",\"show_author\":\"1\",\"show_date\":\"1\",\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10003,'System - Widgetkit','plugin','widgetkit_system','system',0,1,1,0,'{\"name\":\"System - Widgetkit\",\"type\":\"plugin\",\"creationDate\":\"May 2011\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) 2007 - 2011 YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"1.0.0\",\"description\":\"Plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10004,'Content - Widgetkit','plugin','widgetkit_content','content',0,1,1,0,'{\"name\":\"Content - Widgetkit\",\"type\":\"plugin\",\"creationDate\":\"May 2011\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) 2007 - 2011 YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"1.0.0\",\"description\":\"Plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10005,'widgetkit','component','com_widgetkit','',1,1,0,0,'{\"name\":\"Widgetkit\",\"type\":\"component\",\"creationDate\":\"July 2014\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"1.5.2\",\"description\":\"Widgetkit - A widget toolkit by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10006,'PKG_JOOMLA','package','pkg_joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"PKG_JOOMLA\",\"type\":\"package\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PKG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10007,'System - Widgetkit ZOO','plugin','widgetkit_zoo','system',0,1,1,0,'{\"name\":\"System - Widgetkit ZOO\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) 2007 - 2013 YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"3.1.0\",\"description\":\"ZOO plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10008,'System - Widgetkit Joomla','plugin','widgetkit_joomla','system',0,1,1,0,'{\"name\":\"System - Widgetkit Joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) 2007 - 2011 YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"1.0.0\",\"description\":\"Joomla Content plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10023,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10024,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10025,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10029,'es-ES_joomla_lang_full_3.4.3v1','language','es-ES','',0,1,0,0,'{\"name\":\"es-ES_joomla_lang_full_3.4.3v1\",\"type\":\"language\",\"creationDate\":\"04\\/07\\/2015\",\"author\":\"Spanish Translation Team: Comunidad Joomla\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"info@comunidadjoomla.org\",\"authorUrl\":\"\",\"version\":\"3.4.3.1\",\"description\":\"es-ESsite language\",\"group\":\"\",\"filename\":\"install\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10030,'es-ES_joomla_lang_full_3.4.3v1','language','es-ES','',1,1,0,0,'{\"name\":\"es-ES_joomla_lang_full_3.4.3v1\",\"type\":\"language\",\"creationDate\":\"04\\/07\\/2015\",\"author\":\"Spanish Translation Team: Comunidad Joomla\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"info@comunidadjoomla.org\",\"authorUrl\":\"\",\"version\":\"3.4.3.1\",\"description\":\"es-ESsite language\",\"group\":\"\",\"filename\":\"install\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10031,'es-ES_joomla_lang_full_3.4.3v1','package','pkg_es-ES','',0,1,1,0,'{\"name\":\"es-ES_joomla_lang_full_3.4.3v1\",\"type\":\"package\",\"creationDate\":\"04\\/07\\/2015\",\"author\":\"Spanish Translation Team: Comunidad Joomla\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"info@comunidadjoomla.org\",\"authorUrl\":\"\",\"version\":\"3.4.3.1\",\"description\":\"<div style=\\\"text-align:left;\\\"><h2>Successfully installed the spanish language pack for Joomla! 3.4.3.<\\/h2><p><\\/p><p>Please report any bugs or issues at the Comunidad Joomla! <a href=\\\"http:\\/\\/foro.comunidadjoomla.org\\/traduccion-ext\\/\\\" target=\\\"_blank\\\">Translation forum<\\/a><\\/p><p><\\/p><p>Translated by: <a href=\\\"http:\\/\\/www.comunidadjoomla.org\\\" target=\\\"_blank\\\" title=\\\"\\\">The spanish translation team of Comunidad Joomla!<\\/a><\\/p><h2>El paquete en espa\\u00f1ol para Joomla! 3.4.3 se ha instalado correctamente.<\\/h2><p><\\/p><p>Por favor, reporte cualquier bug o asunto relacionado a nuestro <a href=\\\"http:\\/\\/foro.comunidadjoomla.org\\/traduccion-ext\\/\\\" target=\\\"_blank\\\">Foro de traducciones<\\/a><\\/p><p><\\/p><p>Traducci\\u00f3n: <a href=\\\"http:\\/\\/www.comunidadjoomla.org\\\" target=\\\"_blank\\\" title=\\\"\\\">El equipo de traducci\\u00f3n de Comunidad Joomla!<\\/a><\\/p><\\/div>\",\"group\":\"\",\"filename\":\"pkg_es-ES\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10032,'com_zoo','component','com_zoo','',1,1,0,0,'{\"name\":\"com_zoo\",\"type\":\"component\",\"creationDate\":\"January 2015\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"3.3.2\",\"description\":\"ZOO component for Joomla developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\",\"filename\":\"zoo\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10033,'ZOO Category','module','mod_zoocategory','',0,1,0,0,'{\"name\":\"ZOO Category\",\"type\":\"module\",\"creationDate\":\"January 2015\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"3.3.2\",\"description\":\"Category module for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\",\"filename\":\"mod_zoocategory\"}','{\"theme\":\"\",\"application\":\"\",\"depth\":\"0\",\"add_count\":\"0\",\"menu_item\":\"\",\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10034,'ZOO Comment','module','mod_zoocomment','',0,1,0,0,'{\"name\":\"ZOO Comment\",\"type\":\"module\",\"creationDate\":\"January 2015\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"3.3.2\",\"description\":\"Comment module for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\",\"filename\":\"mod_zoocomment\"}','{\"theme\":\"\",\"application\":\"\",\"subcategories\":\"0\",\"count\":\"10\",\"show_avatar\":\"1\",\"avatar_size\":\"40\",\"show_author\":\"1\",\"show_meta\":\"1\",\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10035,'ZOO Item','module','mod_zooitem','',0,1,0,0,'{\"name\":\"ZOO Item\",\"type\":\"module\",\"creationDate\":\"January 2015\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"3.3.2\",\"description\":\"Item module for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\",\"filename\":\"mod_zooitem\"}','{\"theme\":\"\",\"layout\":\"\",\"media_position\":\"left\",\"application\":\"\",\"subcategories\":\"0\",\"count\":\"4\",\"order\":\"_itemname\",\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10036,'ZOO Quick Icons','module','mod_zooquickicon','',1,1,2,0,'{\"name\":\"ZOO Quick Icons\",\"type\":\"module\",\"creationDate\":\"January 2015\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"3.3.2\",\"description\":\"Quick Icons module for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\",\"filename\":\"mod_zooquickicon\"}','{}','','',0,'0000-00-00 00:00:00',6,0),
	(10037,'ZOO Tag','module','mod_zootag','',0,1,0,0,'{\"name\":\"ZOO Tag\",\"type\":\"module\",\"creationDate\":\"January 2015\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"3.3.2\",\"description\":\"Tag module for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\",\"filename\":\"mod_zootag\"}','{\"theme\":\"\",\"application\":\"\",\"subcategories\":\"0\",\"count\":\"10\",\"order\":\"alpha\",\"menu_item\":\"\",\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10038,'Content - ZOO Shortcode','plugin','zooshortcode','content',0,1,1,0,'{\"name\":\"Content - ZOO Shortcode\",\"type\":\"plugin\",\"creationDate\":\"January 2015\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"3.3.2\",\"description\":\"Shortcode plugin for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com) Usage: {zooitem OR zoocategory: ID OR alias} Optionally: {zooitem: ID text: MYTEXT}\",\"group\":\"\",\"filename\":\"zooshortcode\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10039,'Smart Search - ZOO','plugin','zoosmartsearch','finder',0,1,1,0,'{\"name\":\"Smart Search - ZOO\",\"type\":\"plugin\",\"creationDate\":\"January 2015\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"3.3.2\",\"description\":\"Smart Search plugin for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\",\"filename\":\"zoosmartsearch\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10040,'Search - ZOO','plugin','zoosearch','search',0,1,1,0,'{\"name\":\"Search - ZOO\",\"type\":\"plugin\",\"creationDate\":\"January 2015\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"3.3.2\",\"description\":\"Search plugin for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\",\"filename\":\"zoosearch\"}','{\"search_fulltext\":\"0\",\"search_limit\":\"50\"}','','',969,'2015-07-16 08:46:08',0,0),
	(10041,'System - ZOO Event','plugin','zooevent','system',0,1,1,0,'{\"name\":\"System - ZOO Event\",\"type\":\"plugin\",\"creationDate\":\"January 2015\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"3.3.2\",\"description\":\"Event plugin for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\",\"filename\":\"zooevent\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10042,'ZOO Package','package','pkg_zoo','',0,1,1,0,'{\"name\":\"ZOO Package\",\"type\":\"package\",\"creationDate\":\"January 2015\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"3.3.2\",\"description\":\"ZOO component and extensions for Joomla developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\",\"filename\":\"pkg_zoo\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10043,'plg_system_kunena','plugin','kunena','system',0,1,1,0,'{\"name\":\"plg_system_kunena\",\"type\":\"plugin\",\"creationDate\":\"2015-06-29\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"4.0.3\",\"description\":\"PLG_SYSTEM_KUNENA_DESC\",\"group\":\"\",\"filename\":\"kunena\"}','{\"jcontentevents\":\"0\",\"jcontentevent_target\":\"body\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10044,'plg_quickicon_kunena','plugin','kunena','quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_kunena\",\"type\":\"plugin\",\"creationDate\":\"2015-06-29\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"4.0.3\",\"description\":\"PLG_QUICKICON_KUNENA_DESC\",\"group\":\"\",\"filename\":\"kunena\"}','{\"context\":\"mod_quickicon\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10045,'Kunena Framework','library','kunena','',0,1,1,0,'{\"name\":\"Kunena Framework\",\"type\":\"library\",\"creationDate\":\"2015-06-29\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2015 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"4.0.3\",\"description\":\"Kunena Framework.\",\"group\":\"\",\"filename\":\"kunena\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10046,'Kunena Media Files','file','KunenaMediaFiles','',0,1,0,0,'{\"name\":\"Kunena Media Files\",\"type\":\"file\",\"creationDate\":\"2015-06-29\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2015 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"4.0.3\",\"description\":\"Kunena media files.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10047,'com_kunena','component','com_kunena','',1,1,0,0,'{\"name\":\"com_kunena\",\"type\":\"component\",\"creationDate\":\"2015-06-29\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2015 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"4.0.3\",\"description\":\"COM_KUNENA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"kunena\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10048,'Kunena Forum Package','package','pkg_kunena','',0,1,1,0,'{\"name\":\"Kunena Forum Package\",\"type\":\"package\",\"creationDate\":\"2015-06-29\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2015 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"4.0.3\",\"description\":\"Kunena Forum Package.\",\"group\":\"\",\"filename\":\"pkg_kunena\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10049,'plg_kunena_alphauserpoints','plugin','alphauserpoints','kunena',0,0,1,0,'{\"name\":\"plg_kunena_alphauserpoints\",\"type\":\"plugin\",\"creationDate\":\"2015-06-29\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"4.0.3\",\"description\":\"PLG_KUNENA_ALPHAUSERPOINTS_DESCRIPTION\",\"group\":\"\",\"filename\":\"alphauserpoints\"}','{\"activity\":\"1\",\"avatar\":\"1\",\"profile\":\"1\",\"activity_points_limit\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),
	(10050,'plg_kunena_community','plugin','community','kunena',0,1,1,0,'{\"name\":\"plg_kunena_community\",\"type\":\"plugin\",\"creationDate\":\"2015-06-29\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"4.0.3\",\"description\":\"PLG_KUNENA_COMMUNITY_DESCRIPTION\",\"group\":\"\",\"filename\":\"community\"}','{\"access\":\"1\",\"login\":\"1\",\"activity\":\"1\",\"avatar\":\"1\",\"profile\":\"1\",\"private\":\"1\",\"activity_points_limit\":\"0\"}','','',0,'0000-00-00 00:00:00',2,0),
	(10051,'plg_kunena_comprofiler','plugin','comprofiler','kunena',0,0,1,0,'{\"name\":\"plg_kunena_comprofiler\",\"type\":\"plugin\",\"creationDate\":\"2015-06-29\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"4.0.3\",\"description\":\"PLG_KUNENA_COMPROFILER_DESCRIPTION\",\"group\":\"\",\"filename\":\"comprofiler\"}','{\"access\":\"1\",\"login\":\"1\",\"activity\":\"1\",\"avatar\":\"1\",\"profile\":\"1\",\"private\":\"1\"}','','',0,'0000-00-00 00:00:00',3,0),
	(10052,'plg_kunena_gravatar','plugin','gravatar','kunena',0,0,1,0,'{\"name\":\"plg_kunena_gravatar\",\"type\":\"plugin\",\"creationDate\":\"2015-06-29\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"4.0.3\",\"description\":\"PLG_KUNENA_GRAVATAR_DESCRIPTION\",\"group\":\"\",\"filename\":\"gravatar\"}','{\"avatar\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),
	(10053,'plg_kunena_uddeim','plugin','uddeim','kunena',0,0,1,0,'{\"name\":\"plg_kunena_uddeim\",\"type\":\"plugin\",\"creationDate\":\"2015-06-29\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"4.0.3\",\"description\":\"PLG_KUNENA_UDDEIM_DESCRIPTION\",\"group\":\"\",\"filename\":\"uddeim\"}','{\"private\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),
	(10054,'plg_kunena_kunena','plugin','kunena','kunena',0,1,1,0,'{\"name\":\"plg_kunena_kunena\",\"type\":\"plugin\",\"creationDate\":\"2015-06-29\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"4.0.3\",\"description\":\"PLG_KUNENA_KUNENA_DESCRIPTION\",\"group\":\"\",\"filename\":\"kunena\"}','{\"avatar\":\"1\",\"profile\":\"1\"}','','',0,'0000-00-00 00:00:00',6,0),
	(10055,'plg_kunena_joomla','plugin','joomla','kunena',0,1,1,0,'{\"name\":\"plg_kunena_joomla\",\"type\":\"plugin\",\"creationDate\":\"2015-06-29\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"4.0.3\",\"description\":\"PLG_KUNENA_JOOMLA_25_30_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"access\":\"1\",\"login\":\"1\"}','','',0,'0000-00-00 00:00:00',7,0),
	(10056,'Kunena Language - Spanish (Spain)','file','KunenaLanguage-SpanishSpain','',0,1,0,0,'{\"name\":\"Kunena Language - Spanish (Spain)\",\"type\":\"file\",\"creationDate\":\"2015-06-29\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2015 Kunena Team. All rights reserved.\",\"authorEmail\":\"translations@kunena.org\",\"authorUrl\":\"https:\\/\\/www.transifex.net\\/projects\\/p\\/Kunena\\/team\\/es_ES\\/\",\"version\":\"4.0.3\",\"description\":\"Spanish (Spain) language file for Kunena Forum Component\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10057,'Kunena Language Pack','package','pkg_kunena_languages','',0,1,1,0,'{\"name\":\"Kunena Language Pack\",\"type\":\"package\",\"creationDate\":\"2015-06-29\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2015 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"4.0.3\",\"description\":\"Language pack for Kunena forum component.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10058,'kunena_tmpl_crypsisb3','file','kunena_tmpl_crypsisb3','',0,1,0,0,'{\"name\":\"kunena_tmpl_crypsisb3\",\"type\":\"file\",\"creationDate\":\"2015-06-29\",\"author\":\"Kunena Team\",\"copyright\":\"Kunena Team\",\"authorEmail\":\"team@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"4.0.3\",\"description\":\"COM_KUNENA_TEMPLATE_CRYPSIS_DESC\",\"group\":\"\",\"filename\":\"kunena_tmpl_crypsis\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10059,'Community','component','com_community','',1,1,0,0,'{\"name\":\"Community\",\"type\":\"component\",\"creationDate\":\"July 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright 2008 by Slashes & Dots Sdn Bhd. All rights reserved\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8 Pro\",\"description\":\"JomSocial is a social networking component for Joomla!\",\"group\":\"\",\"filename\":\"community\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10060,'Azrul System Mambot For Joomla','plugin','azrul.system','system',0,1,1,0,'{\"name\":\"Azrul System Mambot For Joomla\",\"type\":\"plugin\",\"creationDate\":\"July 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright 2008 - 2010 by Slashes & Dots Sdn Bhd. All rights reserved\",\"authorEmail\":\"support@azrul.com\",\"authorUrl\":\"www.azrul.com\",\"version\":\"4.0.8\",\"description\":\"\\n\\t\\tAjax System for Joomla, Azrul.com\\/JomSocial.com\\n\\t\",\"group\":\"\",\"filename\":\"azrul.system\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10061,'PLG_EVENTS_TITLE','plugin','events','community',0,1,1,0,'{\"name\":\"PLG_EVENTS_TITLE\",\"type\":\"plugin\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright 2008 - 2013 by iJoomla, Inc. - All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"PLG_EVENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"events\"}','{\"coreapp\":\"0\",\"cache\":\"1\",\"sorting\":\"1\",\"position\":\"content|sidebar-top|sidebar-bottom\",\"hide_empty\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10062,'PLG_FEEDS_TITLE','plugin','feeds','community',0,0,1,0,'{\"name\":\"PLG_FEEDS_TITLE\",\"type\":\"plugin\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright 2008 - 2013 by iJoomla, Inc. - All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"PLG_FEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"feeds\"}','{\"cache\":\"0\",\"coreapp\":\"0\",\"position\":\"content\",\"defaultprivacy\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10063,'PLG_FRIENDSLOCATION_TITLE','plugin','friendslocation','community',0,0,1,0,'{\"name\":\"PLG_FRIENDSLOCATION_TITLE\",\"type\":\"plugin\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright 2008 - 2013 by iJoomla, Inc. - All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"PLG_FRIENDSLOCATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"friendslocation\"}','{\"coreapp\":\"0\",\"cache\":\"1\",\"position\":\"content\",\"town_field_code\":\"FIELD_CITY\",\"state_field_code\":\"FIELD_STATE\",\"country_field_code\":\"FIELD_COUNTRY\",\"count\":\"0\",\"show_karma\":\"1\",\"width\":\"480\",\"height\":\"340\",\"hide_empty\":\"0\"}','','',969,'2015-07-16 07:22:32',0,0),
	(10064,'PLG_INPUT_TITLE','plugin','input','community',0,1,1,0,'{\"name\":\"PLG_INPUT_TITLE\",\"type\":\"plugin\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright 2008 - 2013 by iJoomla, Inc. - All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"PLG_INPUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"input\"}','{}','','',969,'2015-07-16 08:44:29',0,0),
	(10065,'PLG_INVITE_TITLE','plugin','invite','community',0,1,1,0,'{\"name\":\"PLG_INVITE_TITLE\",\"type\":\"plugin\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright 2008 - 2013 by iJoomla, Inc. - All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"PLG_INVITE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"invite\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10066,'System - Jomsocial Facebook Connect','plugin','jomsocialconnect','system',0,1,1,0,'{\"name\":\"System - Jomsocial Facebook Connect\",\"type\":\"plugin\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial\",\"copyright\":\"Copyright (C) 2008 - 2009. All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"PLG_JOMSOCIALCONNECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jomsocialconnect\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10067,'System - Jomsocial Redirect','plugin','jomsocialredirect','system',0,0,1,0,'{\"name\":\"System - Jomsocial Redirect\",\"type\":\"plugin\",\"creationDate\":\"Aug 11 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright 2008 - 2010 by Slashes & Dots Sdn Bhd. All rights reserved\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"\",\"group\":\"\",\"filename\":\"jomsocialredirect\"}','{\"override_com_user_registration\":\"1\",\"redirect_previous\":\"0\",\"redirect_login\":\"1\",\"redirect_login_msg\":\"LOGIN_SUCCESSFUL\",\"redirect_login_failed\":\"1\",\"redirect_login_failed_msg\":\"LOGIN_FAILED\",\"redirect_logout\":\"1\",\"redirect_logout_msg\":\"YOU_HAVE_LOGGED_OUT\",\"redirect_registration_msg\":\"REDIRECTED_TO_COMMUNITY_REGISTRATION\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10068,'Jomsocial Update','plugin','jomsocialupdate','system',0,1,1,0,'{\"name\":\"Jomsocial Update\",\"type\":\"plugin\",\"creationDate\":\"March 2011\",\"author\":\"AzrulStudio\",\"copyright\":\"Copyright (C) 2010. All rights reserved.\",\"authorEmail\":\"support@azrul.com\",\"authorUrl\":\"www.azrul.com\",\"version\":\"4.0.8\",\"description\":\"PLG_JOMSOCIALUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jomsocialupdate\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10069,'User - Jomsocial User','plugin','jomsocialuser','user',0,1,1,0,'{\"name\":\"User - Jomsocial User\",\"type\":\"plugin\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial\",\"copyright\":\"Copyright 2008 - 2010 by Slashes & Dots Sdn Bhd. All rights reserved\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"PLG_JOMSOCIALUSER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jomsocialuser\"}','{\"delete_jommla_contact\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10070,'PLG_KUNENA_TITLE','plugin','kunena','community',0,1,1,0,'{\"name\":\"PLG_KUNENA_TITLE\",\"type\":\"plugin\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright 2008 - 2013 by iJoomla, Inc. - All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"PLG_KUNENA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"kunena\"}','{\"count\":\"5\",\"coreapp\":\"0\",\"position\":\"content\",\"cache\":\"1\"}','','',969,'2015-07-16 07:20:46',0,0),
	(10071,'PLG_LATESTPHOTO_TITLE','plugin','latestphoto','community',0,1,1,0,'{\"name\":\"PLG_LATESTPHOTO_TITLE\",\"type\":\"plugin\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright 2008 - 2013 by iJoomla, Inc. - All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"PLG_LATESTPHOTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"latestphoto\"}','{\"coreapp\":\"0\",\"position\":\"content\",\"cache\":\"1\",\"hide_empty\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10072,'PLG_MUTUALFRIENDS_TITLE','plugin','mutualfriends','community',0,1,1,0,'{\"name\":\"PLG_MUTUALFRIENDS_TITLE\",\"type\":\"plugin\",\"creationDate\":\"September 2014\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright 2008 - 2014 by iJoomla, Inc. - All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"PLG_MUTUALFRIENDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mutualfriends\"}','{\"cache\":\"0\",\"coreapp\":\"0\",\"position\":\"content\",\"hide_empty\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10073,'PLG_MYARTICLES_TITLE','plugin','myarticles','community',0,0,1,0,'{\"name\":\"PLG_MYARTICLES_TITLE\",\"type\":\"plugin\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright 2008 - 2013 by iJoomla, Inc. - All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"PLG_MYARTICLES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"myarticles\"}','{\"coreapp\":\"0\",\"position\":\"content\",\"section\":\"\",\"limit\":\"50\",\"count\":\"10\",\"introtext\":\"0\",\"cache\":\"1\",\"display_expired\":\"1\",\"hide_empty\":\"0\",\"title_override\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10074,'PLG_MYCONTACTS_TITLE','plugin','mycontacts','community',0,1,1,0,'{\"name\":\"PLG_MYCONTACTS_TITLE\",\"type\":\"plugin\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright 2008 - 2013 by iJoomla, Inc. - All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"PLG_MYCONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mycontacts\"}','{\"cache\":\"0\",\"coreapp\":\"0\",\"position\":\"content\",\"hide_empty\":\"0\",\"home_address\":\"1\",\"city\":\"1\",\"postal_code\":\"1\",\"country\":\"1\",\"phone_number\":\"1\",\"mobile_number\":\"1\",\"fax_number\":\"1\",\"website\":\"1\",\"my_company\":\"1\",\"work_address\":\"1\",\"comp_website\":\"1\",\"department\":\"1\",\"job_title\":\"1\",\"main_im_id\":\"1\",\"im_list\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10075,'PLG_MYFRIENDS_TITLE','plugin','myfriends','community',0,1,1,0,'{\"name\":\"PLG_MYFRIENDS_TITLE\",\"type\":\"plugin\",\"creationDate\":\"September 2014\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright 2008 - 2014 by iJoomla, Inc. - All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"PLG_MYFRIENDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"myfriends\"}','{\"count\":\"10\",\"cache\":\"0\",\"coreapp\":\"0\",\"position\":\"content\",\"hide_empty\":\"1\"}','','',969,'2015-07-16 07:20:59',0,0),
	(10076,'PLG_MYGOOGLEADS_TITLE','plugin','mygoogleads','community',0,0,1,0,'{\"name\":\"PLG_MYGOOGLEADS_TITLE\",\"type\":\"plugin\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright 2008 - 2013 by iJoomla, Inc. - All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"PLG_GOOGLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mygoogleads\"}','{\"coreapp\":\"0\",\"position\":\"content\",\"cache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10077,'PLG_MYGROUPS_TITLE','plugin','mygroups','community',0,1,1,0,'{\"name\":\"PLG_MYGROUPS_TITLE\",\"type\":\"plugin\",\"creationDate\":\"September 2014\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright 2008 - 2014 by iJoomla, Inc. - All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"PLG_MYGROUPS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mygroups\"}','{\"count\":\"10\",\"cache\":\"0\",\"coreapp\":\"0\",\"position\":\"content\",\"hide_empty\":\"1\",\"title_override\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10078,'PLG_MYTAGGEDVIDEOS_TITLE','plugin','mytaggedvideos','community',0,0,1,0,'{\"name\":\"PLG_MYTAGGEDVIDEOS_TITLE\",\"type\":\"plugin\",\"creationDate\":\"Febuary 2012\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright 2008 - 2013 by iJoomla, Inc. - All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"PLG_MYTAGGEDVIDEOS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mytaggedvideos\"}','{\"coreapp\":\"0\",\"position\":\"content\",\"count\":\"10\",\"cache\":\"1\",\"hide_empty\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10079,'PLG_MYVIDEOS_TITLE','plugin','myvideos','community',0,1,1,0,'{\"name\":\"PLG_MYVIDEOS_TITLE\",\"type\":\"plugin\",\"creationDate\":\"Febuary 2012\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright 2008 - 2013 by iJoomla, Inc. - All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"PLG_MYVIDEOS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"myvideos\"}','{\"coreapp\":\"0\",\"position\":\"content\",\"count\":\"10\",\"cache\":\"1\",\"hide_empty\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10080,'PLG_TWITTER_XML_TITLE','plugin','twitter','community',0,1,1,0,'{\"name\":\"PLG_TWITTER_XML_TITLE\",\"type\":\"plugin\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright 2008 - 2013 by iJoomla, Inc. - All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"PLG_TWITTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"twitter\"}','{\"cache\":\"0\",\"position\":\"sidebar-bottom\",\"coreapp\":\"1\",\"consumerKey\":\"PLmaZQGnGsiW7OZSQZzLCqrit\",\"consumerSecret\":\"c3z5TGZb9ypUBpIfRmr1ygl0gkEckuUj5sfuoH60gQ7Az11zBw\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10081,'PLG_WALLS_TITLE','plugin','walls','community',0,1,1,0,'{\"name\":\"PLG_WALLS_TITLE\",\"type\":\"plugin\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright 2008 - 2013 by iJoomla, Inc. - All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"PLG_WALLS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"walls\"}','{\"coreapp\":\"0\",\"cache\":\"1\",\"position\":\"content\",\"charlimit\":\"0\"}','','',969,'2015-07-16 08:44:50',0,0),
	(10082,'PLG_WORDFILTER_TITLE','plugin','wordfilter','community',0,0,1,0,'{\"name\":\"PLG_WORDFILTER_TITLE\",\"type\":\"plugin\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright 2008 - 2013 by iJoomla, Inc. - All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"PLG_WORDFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wordfilter\"}','{\"replacement\":\"*\",\"badwords\":\"fuck,shit\"}','','',969,'2015-07-16 07:22:42',0,0),
	(10083,'JS Active Groups','module','mod_activegroups','',0,1,0,0,'{\"name\":\"JS Active Groups\",\"type\":\"module\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright (C) 2008 - 2010 JomSocial. All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"Display most active groups from groups that is created within JomSocial\",\"group\":\"\",\"filename\":\"mod_activegroups\"}','{\"cache\":\"1\",\"count\":\"5\",\"show_avatar\":\"1\",\"show_total\":\"1\",\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10084,'JS Activity Stream','module','mod_activitystream','',0,1,0,0,'{\"name\":\"JS Activity Stream\",\"type\":\"module\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright (C) 2008 - 2010 JomSocial. All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"Activity Stream\",\"group\":\"\",\"filename\":\"mod_activitystream\"}','{\"max_entry\":\"10\",\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10085,'JS Events','module','mod_community_events','',0,1,0,0,'{\"name\":\"JS Events\",\"type\":\"module\",\"creationDate\":\"April 2013\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright (C) 2008 - 2013 JomSocial. All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"Events module for JomSocial. Display upcoming and current events.\",\"group\":\"\",\"filename\":\"mod_community_events\"}','{\"moduleclass_sfx\":\"\",\"default\":\"5\",\"upcomingOnly\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10086,'JS Groups','module','mod_community_groups','',0,1,0,0,'{\"name\":\"JS Groups\",\"type\":\"module\",\"creationDate\":\"April 2013\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright (C) 2008 - 2013 JomSocial. All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"Latest Groups\",\"group\":\"\",\"filename\":\"mod_community_groups\"}','{\"moduleclass_sfx\":\"joms-module\",\"default\":\"5\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10087,'JS Members','module','mod_community_members','',0,1,0,0,'{\"name\":\"JS Members\",\"type\":\"module\",\"creationDate\":\"April 2013\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright (C) 2008 - 2013 JomSocial. All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"Latest Members\",\"group\":\"\",\"filename\":\"mod_community_members\"}','{\"moduleclass_sfx\":\"\",\"default\":\"5\",\"default_filter\":\"newest\",\"show_total_members\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10088,'JS Photos Module','module','mod_community_photos','',0,1,0,0,'{\"name\":\"JS Photos Module\",\"type\":\"module\",\"creationDate\":\"April 2013\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright (C) 2008 - 2013 JomSocial. All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"Photos\",\"group\":\"\",\"filename\":\"mod_community_photos\"}','{\"moduleclass_sfx\":\"\",\"default\":\"20\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10089,'JS Quick Search','module','mod_community_quicksearch','',0,1,0,0,'{\"name\":\"JS Quick Search\",\"type\":\"module\",\"creationDate\":\"April 2013\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright (C) 2008 - 2013 JomSocial. All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"Community Quick Search\",\"group\":\"\",\"filename\":\"mod_community_quicksearch\"}','{\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10090,'JS Nearby Events Search','module','mod_community_search_nearbyevents','',0,1,0,0,'{\"name\":\"JS Nearby Events Search\",\"type\":\"module\",\"creationDate\":\"February 2015\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright (C) 2008 - 2015 JomSocial. All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"Nearby events search\",\"group\":\"\",\"filename\":\"mod_community_search_nearbyevents\"}','{\"moduleclass_sfx\":\"\",\"event_nearby_radius\":\"10\",\"eventradiusmeasure\":\"miles\",\"auto_detect_location\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10091,'JS Videos','module','mod_community_videos','',0,1,0,0,'{\"name\":\"JS Videos\",\"type\":\"module\",\"creationDate\":\"April 2013\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright (C) 2008 - 2013 JomSocial. All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"Lates Video\",\"group\":\"\",\"filename\":\"mod_community_videos\"}','{\"moduleclass_sfx\":\"\",\"default\":\"5\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10092,'JS Whos Online','module','mod_community_whosonline','',0,1,0,0,'{\"name\":\"JS Whos Online\",\"type\":\"module\",\"creationDate\":\"April 2013\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright (C) 2008 - 2013 JomSocial. All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"Whos online\",\"group\":\"\",\"filename\":\"mod_community_whosonline\"}','{\"moduleclass_sfx\":\"\",\"default\":\"20\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10093,'JS Dating Search','module','mod_datingsearch','',0,1,0,0,'{\"name\":\"JS Dating Search\",\"type\":\"module\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright (C) 2008 - 2010 JomSocial. All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"Dating Search\",\"group\":\"\",\"filename\":\"mod_datingsearch\"}','{\"field_gender\":\"FIELD_GENDER\",\"field_birthdate\":\"FIELD_BIRTHDATE\",\"field_country\":\"FIELD_COUNTRY\",\"field_state\":\"FIELD_STATE\",\"field_city\":\"FIELD_CITY\",\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10094,'JS Hello Me','module','mod_hellome','',0,1,0,0,'{\"name\":\"JS Hello Me\",\"type\":\"module\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright (C) 2008 - 2010 JomSocial. All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"Hello Me\",\"group\":\"\",\"filename\":\"mod_hellome\"}','{\"cache\":\"0\",\"customCache\":\"1\",\"show_avatar\":\"1\",\"show_karma\":\"1\",\"enable_login\":\"1\",\"enable_facebookconnect\":\"1\",\"enable_alert\":\"1\",\"enable_menu\":\"1\",\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10095,'JS JomSocial Connect','module','mod_jomsocialconnect','',0,1,0,0,'{\"name\":\"JS JomSocial Connect\",\"type\":\"module\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright (C) 2008 - 2010 JomSocial. All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"Displays facebook connect logo\",\"group\":\"\",\"filename\":\"mod_jomsocialconnect\"}','{\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10096,'JS Latest Discussion','module','mod_latestdiscussion','',0,1,0,0,'{\"name\":\"JS Latest Discussion\",\"type\":\"module\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright (C) 2008 - 2010 JomSocial. All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"Show the active discussion\",\"group\":\"\",\"filename\":\"mod_latestdiscussion\"}','{\"cache\":\"1\",\"count\":\"5\",\"show_avatar\":\"1\",\"repeat_avatar\":\"1\",\"show_private_discussion\":\"1\",\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10097,'JS Latest group posts','module','mod_latestgrouppost','',0,1,0,0,'{\"name\":\"JS Latest group posts\",\"type\":\"module\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright (C) 2008 - 2010 JomSocial. All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"Show recent wall posts from groups\",\"group\":\"\",\"filename\":\"mod_latestgrouppost\"}','{\"cache\":\"0\",\"count\":\"5\",\"charcount\":\"100\",\"afterlogin_setting\":\"\",\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10098,'JS Jomsocial Notification','module','mod_notify','',0,1,0,0,'{\"name\":\"JS Jomsocial Notification\",\"type\":\"module\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright (C) 2008 - 2010 JomSocial. All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"This module is meant to display the three JomSocial notifications; global notification, friend requests and private messages. Please make sure this module is made visible for Registered users only.\",\"group\":\"\",\"filename\":\"mod_notify\"}','{\"cache\":\"0\",\"customCache\":\"1\",\"show_global_notification\":\"1\",\"show_friend_request\":\"1\",\"enable_private_message\":\"1\",\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10099,'JS Photo Comments','module','mod_photocomments','',0,1,0,0,'{\"name\":\"JS Photo Comments\",\"type\":\"module\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright (C) 2008 - 2010 JomSocial. All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"Displays recent photo walls\",\"group\":\"\",\"filename\":\"mod_photocomments\"}','{\"moduleclass_sfx\":\"\",\"count\":\"5\",\"show_avatar\":\"1\",\"character_limit\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10100,'JS JomSocial Statistics','module','mod_statistics','',0,1,0,0,'{\"name\":\"JS JomSocial Statistics\",\"type\":\"module\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright (C) 2008 - 2010 JomSocial. All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"JomSocial Statistics\",\"group\":\"\",\"filename\":\"mod_statistics\"}','{\"cache\":\"0\",\"customCache\":\"1\",\"members\":\"1\",\"groups\":\"1\",\"discussions\":\"1\",\"albums\":\"1\",\"photos\":\"1\",\"videos\":\"1\",\"bulletins\":\"1\",\"activities\":\"1\",\"walls\":\"1\",\"events\":\"1\",\"genders\":\"1\",\"genders_male\":\"1\",\"genders_female\":\"1\",\"genders_unspecified\":\"1\",\"genders_fieldcode\":\"FIELD_GENDER\",\"genders_male_display\":\"Male\",\"genders_female_display\":\"Female\",\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10101,'JS Top Members','module','mod_topmembers','',0,1,0,0,'{\"name\":\"JS Top Members\",\"type\":\"module\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright (C) 2008 - 2010 JomSocial. All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"Show the top members\",\"group\":\"\",\"filename\":\"mod_topmembers\"}','{\"cache\":\"1\",\"count\":\"10\",\"show_avatar\":\"1\",\"show_karma\":\"1\",\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10102,'JS Video Comments','module','mod_videocomments','',0,1,0,0,'{\"name\":\"JS Video Comments\",\"type\":\"module\",\"creationDate\":\"March 2011\",\"author\":\"JomSocial Team\",\"copyright\":\"Copyright (C) 2008 - 2010 JomSocial. All rights reserved.\",\"authorEmail\":\"support@jomsocial.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"4.0.8\",\"description\":\"Displays recent video walls\",\"group\":\"\",\"filename\":\"mod_videocomments\"}','{\"moduleclass_sfx\":\"\",\"count\":\"5\",\"show_avatar\":\"1\",\"character_limit\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10103,'Installer - YOOtheme','plugin','yootheme','installer',0,0,1,0,'{\"name\":\"Installer - YOOtheme\",\"type\":\"plugin\",\"creationDate\":\"December 2014\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/yootheme.com\",\"version\":\"1.0.0\",\"description\":\"PLG_INSTALLER_YOOTHEME_DESCRIPTION\",\"group\":\"\",\"filename\":\"yootheme\"}','[]','','',0,'0000-00-00 00:00:00',0,0),
	(10104,'com_community - es-ES','file','com_community-es-ES','',0,1,0,0,'{\"name\":\"com_community - es-ES\",\"type\":\"file\",\"creationDate\":\"14.06.2015\",\"author\":\"Jomsocial\",\"copyright\":\"\\u00a9 2008-2015 - jomsocial-com. All rights reserved!\",\"authorEmail\":\"translations@ijoomla.com\",\"authorUrl\":\"http:\\/\\/www.jomsocial.com\",\"version\":\"2015-06-14-07-48-06\",\"description\":\"\\n        This package was auto generated with CTransifex(https:\\/\\/compojoom.com). We\'ve grabbed the latest language files for our extension from transifex.com.\\n        Special thanks to OpenTranslators (http:\\/\\/opentranslators.org) for helping us with this translation!\\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10105,'plg_system_titlemanager','plugin','titlemanager','system',0,1,1,0,'{\"name\":\"plg_system_titlemanager\",\"type\":\"plugin\",\"creationDate\":\"April 2013\",\"author\":\"Ercan \\u00d6zkaya\",\"copyright\":\"(C) 2013 Ercan \\u00d6zkaya. All rights reserved.\",\"authorEmail\":\"ercan@ozkaya.net\",\"authorUrl\":\"http:\\/\\/ercanozkaya.com\\/\",\"version\":\"3.0\",\"description\":\"Title Manager\",\"group\":\"\",\"filename\":\"titlemanager\"}','{\"position\":\"after\",\"frontpage\":\"1\",\"separator\":\"{s}-{s}\",\"sitename\":\"Dynamite.zone\",\"frontpage_sitename\":\"Inicio\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10106,'JTrinityCore','component','com_jtrinitycore','',1,1,0,0,'{\"name\":\"JTrinityCore\",\"type\":\"component\",\"creationDate\":\"Jan 2012\",\"author\":\"Francisco Meneu\",\"copyright\":\"(c) Francisco Meneu\",\"authorEmail\":\"solarwow@yahoo.com\",\"authorUrl\":\"http:\\/\\/www.example.org\",\"version\":\"1.0.0\",\"description\":\"COM_JTRINITYCORE_DESC\",\"group\":\"\",\"filename\":\"jtrinitycore\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10107,'com_jfusion','component','com_jfusion','',1,1,0,0,'{\"name\":\"com_jfusion\",\"type\":\"component\",\"creationDate\":\"December 2010\",\"author\":\"JFusion Development Team\",\"copyright\":\"Copyright (C) 2008 JFusion. All rights reserved.\",\"authorEmail\":\"webmaster@jfusion.org\",\"authorUrl\":\"http:\\/\\/www.jfusion.org\",\"version\":\"3.0.0-000\",\"description\":\"Universal User Integration\",\"group\":\"\",\"filename\":\"jfusion\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10108,'plg_user_trinity','plugin','trinity','user',0,0,1,0,'{\"name\":\"plg_user_trinity\",\"type\":\"plugin\",\"creationDate\":\"Mar 2012\",\"author\":\"Francisco Meneu\",\"copyright\":\"(C) 2005 - 2010 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.0.0\",\"description\":\"PLG_USER_TRINITY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"trinity\"}','{\"register-something\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);

/*!40000 ALTER TABLE `web_extensions` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_finder_filters
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_filters`;

CREATE TABLE `web_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_finder_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_links`;

CREATE TABLE `web_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_finder_links` WRITE;
/*!40000 ALTER TABLE `web_finder_links` DISABLE KEYS */;

INSERT INTO `web_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`)
VALUES
	(7,'index.php?option=com_zoo&view=item&id=1','index.php?option=com_zoo&task=item&item_id=1&Itemid=101','How are you holding up? - Dynamite Zone Teaser Trailer ',' Video de presentación de Dynamite.zone \"Lo siento, lo siento mucho por no poder dar más información en este momento, tengo mucho trabajo. Y queremos que salga pronto. Esperamos que la escueta información que hemos colocado en nuestra cuenta de twitter y ','2015-07-12 08:04:41','4a276054e54388ab53777b29480ec8b0',1,1,1,'*','2010-03-11 11:05:02','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,1,X'4F3A31393A2246696E646572496E6465786572526573756C74223A31393A7B733A31313A22002A00656C656D656E7473223B613A31323A7B733A323A226964223B733A313A2231223B733A353A22616C696173223B733A32373A2262656175746966756C2D6970686F6E652D77616C6C706170657273223B733A31363A22637265617465645F62795F616C696173223B733A303A22223B733A383A226D6F646966696564223B733A31393A22323031352D30372D31322030363A30343A3431223B733A31313A226D6F6469666965645F6279223B733A333A22393639223B733A31303A2273656172636861626C65223B733A313A2231223B733A363A226C61796F7574223B733A343A226974656D223B733A383A226D65746164617461223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A323A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A353A7B733A353A227469746C65223B733A303A22223B733A31313A226465736372697074696F6E223B733A303A22223B733A383A226B6579776F726473223B733A303A22223B733A363A22726F626F7473223B733A303A22223B733A363A22617574686F72223B733A303A22223B7D733A393A22736570617261746F72223B733A313A222E223B7D733A31303A226D657461617574686F72223B733A303A22223B733A373A2273756D6D617279223B733A3539313A2220566964656F2064652070726573656E74616369C3B36E2064652044796E616D6974652E7A6F6E65200A203C6469763E3C696672616D652077696474683D31303025206865696768743D373230207372633D2268747470733A2F2F7777772E796F75747562652E636F6D2F656D6265642F62443444397A39624E416B3F72656C3D3026616D703B73686F77696E666F3D3022206672616D65626F726465723D22302220616C6C6F7766756C6C73637265656E3E3C2F696672616D653E3C2F6469763E3C6469763E224C6F207369656E746F2C206C6F207369656E746F206D7563686F20706F72206E6F20706F64657220646172206DC3A17320696E666F726D616369C3B36E20656E2065737465206D6F6D656E746F2C2074656E676F206D7563686F2074726162616A6F2E20592071756572656D6F73207175652073616C67612070726F6E746F2E204573706572616D6F7320717565206C61206573637565746120696E666F726D616369C3B36E207175652068656D6F7320636F6C6F6361646F20656E206E756573747261206375656E74612064652074776974746572207920656E20656C20766964656F2064652070726573656E74616369C3B36E207365616E206C6F20737566696369656E74656D656E7465206578706C6963617469766F732E220D0A536F6D6F7320416D746572617073752C20426172616E746875722C2044657363682C20655468797269652C20536B726F6C6C65782C204961676F2079204B6574656A6F7374696F2E2059206573746F2065732044796E616D697465205265626F726E3C2F6469763E20223B733A343A2270617468223B733A34363A22696E6465782E7068702F776F772F6974656D2F62656175746966756C2D6970686F6E652D77616C6C706170657273223B733A31323A22656C656D656E745F64617461223B613A323A7B693A303B733A33393A22566964656F2064652070726573656E74616369C3B36E2064652044796E616D6974652E7A6F6E65223B693A313B733A3338363A220A224C6F207369656E746F2C206C6F207369656E746F206D7563686F20706F72206E6F20706F64657220646172206DC3A17320696E666F726D616369C3B36E20656E2065737465206D6F6D656E746F2C2074656E676F206D7563686F2074726162616A6F2E20592071756572656D6F73207175652073616C67612070726F6E746F2E204573706572616D6F7320717565206C61206573637565746120696E666F726D616369C3B36E207175652068656D6F7320636F6C6F6361646F20656E206E756573747261206375656E74612064652074776974746572207920656E20656C20766964656F2064652070726573656E74616369C3B36E207365616E206C6F20737566696369656E74656D656E7465206578706C6963617469766F732E220D0A536F6D6F7320416D746572617073752C20426172616E746875722C2044657363682C20655468797269652C20536B726F6C6C65782C204961676F2079204B6574656A6F7374696F2E2059206573746F2065732044796E616D697465205265626F726E223B7D7D733A31353A22002A00696E737472756374696F6E73223B613A353A7B693A313B613A333A7B693A303B733A353A227469746C65223B693A313B733A383A227375627469746C65223B693A323B733A323A226964223B7D693A323B613A323A7B693A303B733A373A2273756D6D617279223B693A313B733A343A22626F6479223B7D693A333B613A31303A7B693A303B733A343A226D657461223B693A313B733A31303A226C6973745F7072696365223B693A323B733A31303A2273616C655F7072696365223B693A333B733A343A226C696E6B223B693A343B733A373A226D6574616B6579223B693A353B733A383A226D65746164657363223B693A363B733A31303A226D657461617574686F72223B693A373B733A363A22617574686F72223B693A383B733A31363A22637265617465645F62795F616C696173223B693A393B733A31323A22656C656D656E745F64617461223B7D693A343B613A323A7B693A303B733A343A2270617468223B693A313B733A353A22616C696173223B7D693A353B613A313A7B693A303B733A383A22636F6D6D656E7473223B7D7D733A31313A22002A007461786F6E6F6D79223B613A333A7B733A343A2254797065223B613A313A7B733A373A2241727469636C65223B4F3A373A224A4F626A656374223A343A7B733A31303A22002A005F6572726F7273223B613A303A7B7D733A353A227469746C65223B733A373A2241727469636C65223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B7D7D733A383A2243617465676F7279223B613A343A7B733A31373A22576F726C64204F66205761726372616674223B4F3A373A224A4F626A656374223A343A7B733A31303A22002A005F6572726F7273223B613A303A7B7D733A353A227469746C65223B733A31373A22576F726C64204F66205761726372616674223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B7D733A383A2244796E616D697465223B4F3A373A224A4F626A656374223A343A7B733A31303A22002A005F6572726F7273223B613A303A7B7D733A353A227469746C65223B733A383A2244796E616D697465223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B7D733A393A224D696E656372616674223B4F3A373A224A4F626A656374223A343A7B733A31303A22002A005F6572726F7273223B613A303A7B7D733A353A227469746C65223B733A393A224D696E656372616674223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B7D733A33323A22436F756E74657220537472696B653A20476C6F62616C204F6666656E73697665223B4F3A373A224A4F626A656374223A343A7B733A31303A22002A005F6572726F7273223B613A303A7B7D733A353A227469746C65223B733A33323A22436F756E74657220537472696B653A20476C6F62616C204F6666656E73697665223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B7D7D733A333A22546167223B613A323A7B733A363A226950686F6E65223B4F3A373A224A4F626A656374223A343A7B733A31303A22002A005F6572726F7273223B613A303A7B7D733A353A227469746C65223B733A363A226950686F6E65223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B7D733A393A2257616C6C7061706572223B4F3A373A224A4F626A656374223A343A7B733A31303A22002A005F6572726F7273223B613A303A7B7D733A353A227469746C65223B733A393A2257616C6C7061706572223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B7D7D7D733A333A2275726C223B733A33393A22696E6465782E7068703F6F7074696F6E3D636F6D5F7A6F6F26766965773D6974656D2669643D31223B733A353A22726F757465223B733A35353A22696E6465782E7068703F6F7074696F6E3D636F6D5F7A6F6F267461736B3D6974656D266974656D5F69643D31264974656D69643D313031223B733A353A227469746C65223B733A35353A22486F772061726520796F7520686F6C64696E672075703F202D2044796E616D697465205A6F6E652054656173657220547261696C657220223B733A31313A226465736372697074696F6E223B733A3432363A2220566964656F2064652070726573656E74616369C3B36E2064652044796E616D6974652E7A6F6E6520224C6F207369656E746F2C206C6F207369656E746F206D7563686F20706F72206E6F20706F64657220646172206DC3A17320696E666F726D616369C3B36E20656E2065737465206D6F6D656E746F2C2074656E676F206D7563686F2074726162616A6F2E20592071756572656D6F73207175652073616C67612070726F6E746F2E204573706572616D6F7320717565206C61206573637565746120696E666F726D616369C3B36E207175652068656D6F7320636F6C6F6361646F20656E206E756573747261206375656E74612064652074776974746572207920656E20656C20766964656F2064652070726573656E74616369C3B36E207365616E206C6F20737566696369656E74656D656E7465206578706C6963617469766F732E2220536F6D6F7320416D746572617073752C20426172616E746875722C2044657363682C20655468797269652C20536B726F6C6C65782C204961676F2079204B6574656A6F7374696F2E2059206573746F2065732044796E616D697465205265626F726E20223B733A393A227075626C6973686564223B4E3B733A353A227374617465223B623A313B733A363A22616363657373223B733A313A2231223B733A383A226C616E6775616765223B733A313A222A223B733A31383A227075626C6973685F73746172745F64617465223B733A31393A22323031302D30332D31312031313A30353A3032223B733A31363A227075626C6973685F656E645F64617465223B733A31393A22303030302D30302D30302030303A30303A3030223B733A31303A2273746172745F64617465223B733A31393A22303030302D30302D30302030303A30303A3030223B733A383A22656E645F64617465223B733A31393A22303030302D30302D30302030303A30303A3030223B733A31303A226C6973745F7072696365223B4E3B733A31303A2273616C655F7072696365223B4E3B733A373A22747970655F6964223B693A313B733A31353A2264656661756C744C616E6775616765223B733A353A2265732D4553223B7D');

/*!40000 ALTER TABLE `web_finder_links` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_finder_links_terms0
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_links_terms0`;

CREATE TABLE `web_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `web_finder_links_terms0` DISABLE KEYS */;

INSERT INTO `web_finder_links_terms0` (`link_id`, `term_id`, `weight`)
VALUES
	(7,1532,1.14),
	(7,1533,3.10327),
	(7,1534,3.48327),
	(7,1535,0.34),
	(7,1536,2.09661),
	(7,1537,2.55),
	(7,1538,0.56004),
	(7,1684,0.63327),
	(7,1685,2.66),
	(7,1686,3.29327),
	(7,1687,0.50673),
	(7,1688,2.34327),
	(7,1689,3.35673),
	(7,1690,1.52),
	(7,1691,2.47),
	(7,1692,2.91327),
	(7,1693,2.66),
	(7,1694,2.91327),
	(7,1695,1.01327),
	(7,1696,2.72327),
	(7,1697,2.85),
	(7,1698,0.63327),
	(7,1699,2.85),
	(7,1700,3.48327),
	(7,1701,0.48),
	(7,1702,1.71996),
	(7,1703,2.12004),
	(7,1704,1.9),
	(7,1705,3.67327),
	(7,1706,3.8);

/*!40000 ALTER TABLE `web_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_finder_links_terms1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_links_terms1`;

CREATE TABLE `web_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_finder_links_terms2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_links_terms2`;

CREATE TABLE `web_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `web_finder_links_terms2` DISABLE KEYS */;

INSERT INTO `web_finder_links_terms2` (`link_id`, `term_id`, `weight`)
VALUES
	(7,1606,0.63327),
	(7,1607,2.78673),
	(7,1608,2.97673),
	(7,1609,0.79339),
	(7,1610,2.26661),
	(7,1611,2.77661),
	(7,1612,0.34),
	(7,1613,2.09661),
	(7,1614,2.32339),
	(7,1629,0.25327),
	(7,1630,2.53327),
	(7,1631,3.29327),
	(7,1632,0.75981),
	(7,1633,4.94),
	(7,1634,2.66),
	(7,1635,2.85),
	(7,1636,3.04),
	(7,1637,3.8);

/*!40000 ALTER TABLE `web_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_finder_links_terms3
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_links_terms3`;

CREATE TABLE `web_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_finder_links_terms4
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_links_terms4`;

CREATE TABLE `web_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `web_finder_links_terms4` DISABLE KEYS */;

INSERT INTO `web_finder_links_terms4` (`link_id`, `term_id`, `weight`)
VALUES
	(7,1545,1.01327),
	(7,1546,2.59673),
	(7,1547,3.10327),
	(7,1548,0.56004),
	(7,1549,1.76004),
	(7,1550,2.04),
	(7,1551,0.76),
	(7,1552,2.47),
	(7,1553,2.97673),
	(7,1683,0.76),
	(7,1731,0.50692),
	(7,1732,2.15327),
	(7,1733,2.34327),
	(7,1734,2.28),
	(7,1735,2.47),
	(7,1736,2.66),
	(7,1737,2.78673),
	(7,1738,2.53327),
	(7,1739,2.78673),
	(7,1740,0.34),
	(7,1741,2.32339),
	(7,1742,2.49339);

/*!40000 ALTER TABLE `web_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_finder_links_terms5
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_links_terms5`;

CREATE TABLE `web_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_finder_links_terms6
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_links_terms6`;

CREATE TABLE `web_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `web_finder_links_terms6` DISABLE KEYS */;

INSERT INTO `web_finder_links_terms6` (`link_id`, `term_id`, `weight`)
VALUES
	(7,1638,0.38),
	(7,1639,2.85),
	(7,1640,3.04),
	(7,1641,0.72),
	(7,1642,0.88673),
	(7,1643,2.72327),
	(7,1644,3.10327),
	(7,1645,1.26654),
	(7,1646,2.47),
	(7,1647,2.66),
	(7,1648,2.72327),
	(7,1649,2.85);

/*!40000 ALTER TABLE `web_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_finder_links_terms7
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_links_terms7`;

CREATE TABLE `web_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `web_finder_links_terms7` DISABLE KEYS */;

INSERT INTO `web_finder_links_terms7` (`link_id`, `term_id`, `weight`)
VALUES
	(7,1650,0.25327),
	(7,1651,2.40673),
	(7,1652,2.66),
	(7,1653,0.88673),
	(7,1654,2.78673),
	(7,1655,2.97673),
	(7,1673,1.14),
	(7,1674,2.47),
	(7,1675,3.04),
	(7,1676,2.28),
	(7,1677,2.78673),
	(7,1678,2.47),
	(7,1679,2.91327),
	(7,1680,1.01327),
	(7,1681,2.66),
	(7,1682,3.04),
	(7,1719,0.22661),
	(7,1720,2.32339),
	(7,1721,2.60661);

/*!40000 ALTER TABLE `web_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_finder_links_terms8
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_links_terms8`;

CREATE TABLE `web_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `web_finder_links_terms8` DISABLE KEYS */;

INSERT INTO `web_finder_links_terms8` (`link_id`, `term_id`, `weight`)
VALUES
	(7,1554,0.38),
	(7,1555,2.34327),
	(7,1556,3.10327),
	(7,1557,1.01308),
	(7,1558,2.59673),
	(7,1559,2.91327),
	(7,1560,5.7),
	(7,1561,3.04),
	(7,1562,3.16673),
	(7,1563,2.53327),
	(7,1564,2.66),
	(7,1565,0.63327),
	(7,1566,2.72327),
	(7,1567,3.29327),
	(7,1568,3.57311),
	(7,1569,2.85),
	(7,1570,5.15988),
	(7,1571,1.07331),
	(7,1572,2.83339),
	(7,1615,0.50673),
	(7,1616,2.28),
	(7,1617,2.97673),
	(7,1618,0.6666),
	(7,1619,2.78654),
	(7,1620,2.78673),
	(7,1621,3.10327),
	(7,1622,2.85),
	(7,1623,3.23),
	(7,1624,1.28),
	(7,1625,3.1334),
	(7,1626,1.26673),
	(7,1627,2.66),
	(7,1628,2.97673),
	(7,1659,0.63327),
	(7,1660,2.47),
	(7,1661,2.72327),
	(7,1662,0.38),
	(7,1663,2.28),
	(7,1664,2.66),
	(7,1665,3.04),
	(7,1666,2.85),
	(7,1667,3.42),
	(7,1668,2.97673),
	(7,1669,3.16673),
	(7,1670,0.76),
	(7,1671,2.91327),
	(7,1672,3.16673);

/*!40000 ALTER TABLE `web_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_finder_links_terms9
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_links_terms9`;

CREATE TABLE `web_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `web_finder_links_terms9` DISABLE KEYS */;

INSERT INTO `web_finder_links_terms9` (`link_id`, `term_id`, `weight`)
VALUES
	(7,1539,1.14),
	(7,1540,2.85),
	(7,1541,3.35673),
	(7,1542,1.2),
	(7,1543,3.0666),
	(7,1544,3.8),
	(7,1722,1.26654),
	(7,1723,4.81346),
	(7,1724,6.46);

/*!40000 ALTER TABLE `web_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_finder_links_termsa
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_links_termsa`;

CREATE TABLE `web_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_finder_links_termsb
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_links_termsb`;

CREATE TABLE `web_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `web_finder_links_termsb` DISABLE KEYS */;

INSERT INTO `web_finder_links_termsb` (`link_id`, `term_id`, `weight`)
VALUES
	(7,1604,0.48),
	(7,1605,1.83996);

/*!40000 ALTER TABLE `web_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_finder_links_termsc
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_links_termsc`;

CREATE TABLE `web_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `web_finder_links_termsc` DISABLE KEYS */;

INSERT INTO `web_finder_links_termsc` (`link_id`, `term_id`, `weight`)
VALUES
	(7,1531,0.17);

/*!40000 ALTER TABLE `web_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_finder_links_termsd
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_links_termsd`;

CREATE TABLE `web_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `web_finder_links_termsd` DISABLE KEYS */;

INSERT INTO `web_finder_links_termsd` (`link_id`, `term_id`, `weight`)
VALUES
	(7,1656,0.15996),
	(7,1657,1.64004),
	(7,1658,0.72);

/*!40000 ALTER TABLE `web_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_finder_links_termse
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_links_termse`;

CREATE TABLE `web_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `web_finder_links_termse` DISABLE KEYS */;

INSERT INTO `web_finder_links_termse` (`link_id`, `term_id`, `weight`)
VALUES
	(7,1573,0.25327),
	(7,1574,2.40673),
	(7,1575,2.59673),
	(7,1576,0.75981),
	(7,1577,2.21673),
	(7,1578,2.59673),
	(7,1579,2.34327),
	(7,1580,2.85),
	(7,1581,2.53327),
	(7,1582,2.97673),
	(7,1583,0.25327),
	(7,1584,2.59673),
	(7,1585,3.04),
	(7,1586,0.88673),
	(7,1587,3.10327),
	(7,1588,3.35673),
	(7,1589,1.14),
	(7,1590,2.72327),
	(7,1591,2.91327),
	(7,1592,0.50673),
	(7,1593,2.66),
	(7,1594,3.04),
	(7,1595,0.50673),
	(7,1596,2.34327),
	(7,1597,2.91327),
	(7,1598,0.88673),
	(7,1599,2.91327),
	(7,1600,3.23),
	(7,1601,1.52),
	(7,1602,3.04),
	(7,1603,3.67327),
	(7,1707,0.68),
	(7,1708,2.49339),
	(7,1709,0.63327),
	(7,1710,2.59673),
	(7,1711,3.10327),
	(7,1712,0.88673),
	(7,1713,2.47),
	(7,1714,3.04),
	(7,1715,0.79339),
	(7,1716,0.88673),
	(7,1717,2.47),
	(7,1718,2.66);

/*!40000 ALTER TABLE `web_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_finder_links_termsf
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_links_termsf`;

CREATE TABLE `web_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `web_finder_links_termsf` DISABLE KEYS */;

INSERT INTO `web_finder_links_termsf` (`link_id`, `term_id`, `weight`)
VALUES
	(7,1725,0.72),
	(7,1726,1.3334),
	(7,1727,0.63996),
	(7,1728,0.39996),
	(7,1729,1.52004),
	(7,1730,1.88004),
	(7,1743,0.96012),
	(7,1744,0.86331),
	(7,1745,1.02669),
	(7,1746,2.32339),
	(7,1747,2.77661);

/*!40000 ALTER TABLE `web_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_finder_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_taxonomy`;

CREATE TABLE `web_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `web_finder_taxonomy` DISABLE KEYS */;

INSERT INTO `web_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`)
VALUES
	(1,0,'ROOT',0,0,0),
	(2,1,'Type',1,1,0),
	(4,1,'Category',1,1,0),
	(7,1,'Tag',1,1,0),
	(45,2,'Article',1,1,0),
	(46,4,'World Of Warcraft',1,1,0),
	(47,4,'Dynamite',1,1,0),
	(48,4,'Minecraft',1,1,0),
	(49,4,'Counter Strike: Global Offensive',1,1,0),
	(50,7,'iPhone',1,1,0),
	(51,7,'Wallpaper',1,1,0);

/*!40000 ALTER TABLE `web_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_finder_taxonomy_map
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_taxonomy_map`;

CREATE TABLE `web_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `web_finder_taxonomy_map` DISABLE KEYS */;

INSERT INTO `web_finder_taxonomy_map` (`link_id`, `node_id`)
VALUES
	(7,45),
	(7,46),
	(7,47),
	(7,48),
	(7,49),
	(7,50),
	(7,51);

/*!40000 ALTER TABLE `web_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_finder_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_terms`;

CREATE TABLE `web_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_finder_terms` WRITE;
/*!40000 ALTER TABLE `web_finder_terms` DISABLE KEYS */;

INSERT INTO `web_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`, `language`)
VALUES
	(1531,'1','1',0,0,0.1,'',1,'*'),
	(1532,'amterapsu','amterapsu',0,0,0.6,'A53612',1,'*'),
	(1533,'amterapsu baranthur','amterapsu baranthur',0,1,1.6333,'A5361216536',1,'*'),
	(1534,'amterapsu baranthur desch','amterapsu baranthur desch',0,1,1.8333,'A536121653632',1,'*'),
	(1535,'are','ar',0,0,0.2,'A600',1,'*'),
	(1536,'are you','ar you',0,1,1.2333,'A600',1,'*'),
	(1537,'are you holding','ar you holding',0,1,1.5,'A64352',1,'*'),
	(1538,'article','articl',0,0,0.4667,'A6324',1,'*'),
	(1539,'baranthur','baranthur',0,0,0.6,'B6536',1,'*'),
	(1540,'baranthur desch','baranthur desch',0,1,1.5,'B653632',1,'*'),
	(1541,'baranthur desch ethyrie','baranthur desch ethyrie',0,1,1.7667,'B65363236',1,'*'),
	(1542,'beautiful','beauti',0,0,0.6,'B314',1,'*'),
	(1543,'beautiful iphone','beauti iphone',0,1,1.5333,'B31415',1,'*'),
	(1544,'beautiful iphone wallpapers','beauti iphone wallpapers',0,1,1.9,'B314154162',1,'*'),
	(1545,'colocado','colocado',0,0,0.5333,'C423',1,'*'),
	(1546,'colocado en','colocado en',0,1,1.3667,'C4235',1,'*'),
	(1547,'colocado en nuestra','colocado en nuestra',0,1,1.6333,'C4235236',1,'*'),
	(1548,'counter','counter',0,0,0.4667,'C536',1,'*'),
	(1549,'counter strike','counter strike',0,1,1.4667,'C5362362',1,'*'),
	(1550,'counter strike global','counter strike global',0,1,1.7,'C5362362414',1,'*'),
	(1551,'cuenta','cuenta',0,0,0.4,'C530',1,'*'),
	(1552,'cuenta de','cuenta de',0,1,1.3,'C530',1,'*'),
	(1553,'cuenta de twitter','cuenta de twitter',0,1,1.5667,'C536',1,'*'),
	(1554,'dar','dar',0,0,0.2,'D600',1,'*'),
	(1555,'dar más','dar más',0,1,1.2333,'D652',1,'*'),
	(1556,'dar más información','dar más información',0,1,1.6333,'D652516525',1,'*'),
	(1557,'de','de',0,0,0.1333,'D000',1,'*'),
	(1558,'de dynamite','de dynamite',0,1,1.3667,'D530',1,'*'),
	(1559,'de dynamite zone','de dynamite zone',0,1,1.5333,'D5325',1,'*'),
	(1560,'de presentación','de presentación',0,1,1.5,'D1625325',1,'*'),
	(1561,'de presentación de','de presentación de',0,1,1.6,'D16253253',1,'*'),
	(1562,'de presentación sean','de presentación sean',0,1,1.6667,'D162532525',1,'*'),
	(1563,'de twitter','de twitter',0,1,1.3333,'D600',1,'*'),
	(1564,'de twitter y','de twitter y',0,1,1.4,'D600',1,'*'),
	(1565,'desch','desch',0,0,0.3333,'D200',1,'*'),
	(1566,'desch ethyrie','desch ethyrie',0,1,1.4333,'D236',1,'*'),
	(1567,'desch ethyrie skrollex','desch ethyrie skrollex',0,1,1.7333,'D2362642',1,'*'),
	(1568,'dynamite','dynamit',0,0,0.5333,'D530',1,'*'),
	(1569,'dynamite reborn','dynamit reborn',0,1,1.5,'D536165',1,'*'),
	(1570,'dynamite zone','dynamit zone',0,1,1.4333,'D5325',1,'*'),
	(1571,'dynamite zone lo','dynamit zone lo',0,1,1.5333,'D53254',1,'*'),
	(1572,'dynamite zone teaser','dynamit zone teaser',0,1,1.6667,'D5325326',1,'*'),
	(1573,'el','el',0,0,0.1333,'E400',1,'*'),
	(1574,'el video','el video',0,1,1.2667,'E413',1,'*'),
	(1575,'el video de','el video de',0,1,1.3667,'E413',1,'*'),
	(1576,'en','en',0,0,0.1333,'E500',1,'*'),
	(1577,'en el','en el',0,1,1.1667,'E540',1,'*'),
	(1578,'en el video','en el video',0,1,1.3667,'E5413',1,'*'),
	(1579,'en este','en este',0,1,1.2333,'E523',1,'*'),
	(1580,'en este momento','en este momento',0,1,1.5,'E52353',1,'*'),
	(1581,'en nuestra','en nuestra',0,1,1.3333,'E5236',1,'*'),
	(1582,'en nuestra cuenta','en nuestra cuenta',0,1,1.5667,'E5236253',1,'*'),
	(1583,'es','es',0,0,0.1333,'E200',1,'*'),
	(1584,'es dynamite','es dynamite',0,1,1.3667,'E2353',1,'*'),
	(1585,'es dynamite reborn','es dynamite reborn',0,1,1.6,'E23536165',1,'*'),
	(1586,'escueta','escueta',0,0,0.4667,'E230',1,'*'),
	(1587,'escueta información','escueta información',0,1,1.6333,'E23516525',1,'*'),
	(1588,'escueta información que','escueta información que',0,1,1.7667,'E235165252',1,'*'),
	(1589,'esperamos','esperamo',0,0,0.6,'E21652',1,'*'),
	(1590,'esperamos que','esperamo que',0,1,1.4333,'E21652',1,'*'),
	(1591,'esperamos que la','esperamo que la',0,1,1.5333,'E216524',1,'*'),
	(1592,'este','est',0,0,0.2667,'E230',1,'*'),
	(1593,'este momento','est momento',0,1,1.4,'E2353',1,'*'),
	(1594,'este momento tengo','est momento tengo',0,1,1.6,'E235352',1,'*'),
	(1595,'esto','esto',0,0,0.2667,'E230',1,'*'),
	(1596,'esto es','esto es',0,1,1.2333,'E232',1,'*'),
	(1597,'esto es dynamite','esto es dynamite',0,1,1.5333,'E232353',1,'*'),
	(1598,'ethyrie','ethyri',0,0,0.4667,'E360',1,'*'),
	(1599,'ethyrie skrollex','ethyri skrollex',0,1,1.5333,'E362642',1,'*'),
	(1600,'ethyrie skrollex iago','ethyri skrollex iago',0,1,1.7,'E362642',1,'*'),
	(1601,'explicativos','explicativo',0,0,0.8,'E2142312',1,'*'),
	(1602,'explicativos somos','explicativo somos',0,1,1.6,'E214231252',1,'*'),
	(1603,'explicativos somos amterapsu','explicativo somos amterapsu',0,1,1.9333,'E21423125253612',1,'*'),
	(1604,'global','global',0,0,0.4,'G414',1,'*'),
	(1605,'global offensive','global offensive',0,1,1.5333,'G4141521',1,'*'),
	(1606,'hemos','hemo',0,0,0.3333,'H520',1,'*'),
	(1607,'hemos colocado','hemo colocado',0,1,1.4667,'H52423',1,'*'),
	(1608,'hemos colocado en','hemo colocado en',0,1,1.5667,'H524235',1,'*'),
	(1609,'holding','hold',0,0,0.4667,'H4352',1,'*'),
	(1610,'holding up','hold up',0,1,1.3333,'H43521',1,'*'),
	(1611,'holding up dynamite','hold up dynamite',0,1,1.6333,'H43521353',1,'*'),
	(1612,'how','how',0,0,0.2,'H000',1,'*'),
	(1613,'how are','how are',0,1,1.2333,'H600',1,'*'),
	(1614,'how are you','how are you',0,1,1.3667,'H600',1,'*'),
	(1615,'iago','iago',0,0,0.2667,'I200',1,'*'),
	(1616,'iago y','iago y',0,1,1.2,'I200',1,'*'),
	(1617,'iago y ketejostio','iago y ketejostio',0,1,1.5667,'I2323',1,'*'),
	(1618,'index','index',0,0,0.3333,'I532',1,'*'),
	(1619,'información','información',0,0,0.7333,'I516525',1,'*'),
	(1620,'información en','información en',0,1,1.4667,'I516525',1,'*'),
	(1621,'información en este','información en este',0,1,1.6333,'I51652523',1,'*'),
	(1622,'información que','información que',0,1,1.5,'I5165252',1,'*'),
	(1623,'información que hemos','información que hemos',0,1,1.7,'I516525252',1,'*'),
	(1624,'iphone','iphon',0,0,0.4,'I150',1,'*'),
	(1625,'iphone wallpapers','iphon wallpapers',0,1,1.5667,'I154162',1,'*'),
	(1626,'ketejostio','ketejostio',0,0,0.6667,'K323',1,'*'),
	(1627,'ketejostio y','ketejostio y',0,1,1.4,'K323',1,'*'),
	(1628,'ketejostio y esto','ketejostio y esto',0,1,1.5667,'K32323',1,'*'),
	(1629,'la','la',0,0,0.1333,'L000',1,'*'),
	(1630,'la escueta','la escueta',0,1,1.3333,'L230',1,'*'),
	(1631,'la escueta información','la escueta información',0,1,1.7333,'L23516525',1,'*'),
	(1632,'lo','lo',0,0,0.1333,'L000',1,'*'),
	(1633,'lo siento','lo siento',0,1,1.3,'L253',1,'*'),
	(1634,'lo siento lo','lo siento lo',0,1,1.4,'L2534',1,'*'),
	(1635,'lo siento mucho','lo siento mucho',0,1,1.5,'L25352',1,'*'),
	(1636,'lo suficientemente','lo suficientemente',0,1,1.6,'L2125353',1,'*'),
	(1637,'lo suficientemente explicativos','lo suficientemente explicativos',0,1,2,'L21253532142312',1,'*'),
	(1638,'más','má',0,0,0.2,'M200',1,'*'),
	(1639,'más información','má información',0,1,1.5,'M2516525',1,'*'),
	(1640,'más información en','má información en',0,1,1.6,'M2516525',1,'*'),
	(1641,'minecraft','minecraft',0,0,0.6,'M2613',1,'*'),
	(1642,'momento','momento',0,0,0.4667,'M300',1,'*'),
	(1643,'momento tengo','momento tengo',0,1,1.4333,'M352',1,'*'),
	(1644,'momento tengo mucho','momento tengo mucho',0,1,1.6333,'M35252',1,'*'),
	(1645,'mucho','mucho',0,0,0.3333,'M200',1,'*'),
	(1646,'mucho por','mucho por',0,1,1.3,'M216',1,'*'),
	(1647,'mucho por no','mucho por no',0,1,1.4,'M2165',1,'*'),
	(1648,'mucho trabajo','mucho trabajo',0,1,1.4333,'M23612',1,'*'),
	(1649,'mucho trabajo y','mucho trabajo y',0,1,1.5,'M23612',1,'*'),
	(1650,'no','no',0,0,0.1333,'N000',1,'*'),
	(1651,'no poder','no poder',0,1,1.2667,'N136',1,'*'),
	(1652,'no poder dar','no poder dar',0,1,1.4,'N13636',1,'*'),
	(1653,'nuestra','nuestra',0,0,0.4667,'N236',1,'*'),
	(1654,'nuestra cuenta','nuestra cuenta',0,1,1.4667,'N236253',1,'*'),
	(1655,'nuestra cuenta de','nuestra cuenta de',0,1,1.5667,'N236253',1,'*'),
	(1656,'of','of',0,0,0.1333,'O100',1,'*'),
	(1657,'of warcraft','of warcraft',0,1,1.3667,'O162613',1,'*'),
	(1658,'offensive','offens',0,0,0.6,'O1521',1,'*'),
	(1659,'poder','poder',0,0,0.3333,'P360',1,'*'),
	(1660,'poder dar','poder dar',0,1,1.3,'P3636',1,'*'),
	(1661,'poder dar más','poder dar más',0,1,1.4333,'P363652',1,'*'),
	(1662,'por','por',0,0,0.2,'P600',1,'*'),
	(1663,'por no','por no',0,1,1.2,'P650',1,'*'),
	(1664,'por no poder','por no poder',0,1,1.4,'P65136',1,'*'),
	(1665,'presentación','presentación',0,0,0.8,'P625325',1,'*'),
	(1666,'presentación de','presentación de',0,1,1.5,'P6253253',1,'*'),
	(1667,'presentación de dynamite','presentación de dynamite',0,1,1.8,'P625325353',1,'*'),
	(1668,'presentación sean','presentación sean',0,1,1.5667,'P62532525',1,'*'),
	(1669,'presentación sean lo','presentación sean lo',0,1,1.6667,'P625325254',1,'*'),
	(1670,'pronto','pronto',0,0,0.4,'P653',1,'*'),
	(1671,'pronto esperamos','pronto esperamos',0,1,1.5333,'P65321652',1,'*'),
	(1672,'pronto esperamos que','pronto esperamos que',0,1,1.6667,'P65321652',1,'*'),
	(1673,'que','que',0,0,0.2,'Q000',1,'*'),
	(1674,'que hemos','que hemos',0,1,1.3,'Q520',1,'*'),
	(1675,'que hemos colocado','que hemos colocado',0,1,1.6,'Q52423',1,'*'),
	(1676,'que la','que la',0,1,1.2,'Q400',1,'*'),
	(1677,'que la escueta','que la escueta',0,1,1.4667,'Q423',1,'*'),
	(1678,'que salga','que salga',0,1,1.3,'Q420',1,'*'),
	(1679,'que salga pronto','que salga pronto',0,1,1.5333,'Q421653',1,'*'),
	(1680,'queremos','queremo',0,0,0.5333,'Q652',1,'*'),
	(1681,'queremos que','queremo que',0,1,1.4,'Q652',1,'*'),
	(1682,'queremos que salga','queremo que salga',0,1,1.6,'Q65242',1,'*'),
	(1683,'reborn','reborn',0,0,0.4,'R165',1,'*'),
	(1684,'salga','salga',0,0,0.3333,'S420',1,'*'),
	(1685,'salga pronto','salga pronto',0,1,1.4,'S421653',1,'*'),
	(1686,'salga pronto esperamos','salga pronto esperamos',0,1,1.7333,'S42165321652',1,'*'),
	(1687,'sean','sean',0,0,0.2667,'S500',1,'*'),
	(1688,'sean lo','sean lo',0,1,1.2333,'S540',1,'*'),
	(1689,'sean lo suficientemente','sean lo suficientemente',0,1,1.7667,'S542125353',1,'*'),
	(1690,'siento','siento',0,0,0.4,'S530',1,'*'),
	(1691,'siento lo','siento lo',0,1,1.3,'S534',1,'*'),
	(1692,'siento lo siento','siento lo siento',0,1,1.5333,'S534253',1,'*'),
	(1693,'siento mucho','siento mucho',0,1,1.4,'S5352',1,'*'),
	(1694,'siento mucho por','siento mucho por',0,1,1.5333,'S535216',1,'*'),
	(1695,'skrollex','skrollex',0,0,0.5333,'S642',1,'*'),
	(1696,'skrollex iago','skrollex iago',0,1,1.4333,'S642',1,'*'),
	(1697,'skrollex iago y','skrollex iago y',0,1,1.5,'S642',1,'*'),
	(1698,'somos','somo',0,0,0.3333,'S520',1,'*'),
	(1699,'somos amterapsu','somo amterapsu',0,1,1.5,'S5253612',1,'*'),
	(1700,'somos amterapsu baranthur','somo amterapsu baranthur',0,1,1.8333,'S525361216536',1,'*'),
	(1701,'strike','strike',0,0,0.4,'S362',1,'*'),
	(1702,'strike global','strike global',0,1,1.4333,'S362414',1,'*'),
	(1703,'strike global offensive','strike global offensive',0,1,1.7667,'S3624141521',1,'*'),
	(1704,'suficientemente','suficientement',0,0,1,'S125353',1,'*'),
	(1705,'suficientemente explicativos','suficientement explicativos',0,1,1.9333,'S1253532142312',1,'*'),
	(1706,'suficientemente explicativos somos','suficientement explicativos somos',0,1,2,'S125353214231252',1,'*'),
	(1707,'teaser','teaser',0,0,0.4,'T260',1,'*'),
	(1708,'teaser trailer','teaser trailer',0,1,1.4667,'T263646',1,'*'),
	(1709,'tengo','tengo',0,0,0.3333,'T520',1,'*'),
	(1710,'tengo mucho','tengo mucho',0,1,1.3667,'T5252',1,'*'),
	(1711,'tengo mucho trabajo','tengo mucho trabajo',0,1,1.6333,'T52523612',1,'*'),
	(1712,'trabajo','trabajo',0,0,0.4667,'T612',1,'*'),
	(1713,'trabajo y','trabajo y',0,1,1.3,'T612',1,'*'),
	(1714,'trabajo y queremos','trabajo y queremos',0,1,1.6,'T612652',1,'*'),
	(1715,'trailer','trailer',0,0,0.4667,'T646',1,'*'),
	(1716,'twitter','twitter',0,0,0.4667,'T600',1,'*'),
	(1717,'twitter y','twitter y',0,1,1.3,'T600',1,'*'),
	(1718,'twitter y en','twitter y en',0,1,1.4,'T650',1,'*'),
	(1719,'up','up',0,0,0.1333,'U100',1,'*'),
	(1720,'up dynamite','up dynamite',0,1,1.3667,'U1353',1,'*'),
	(1721,'up dynamite zone','up dynamite zone',0,1,1.5333,'U135325',1,'*'),
	(1722,'video','video',0,0,0.3333,'V300',1,'*'),
	(1723,'video de','video de',0,1,1.2667,'V300',1,'*'),
	(1724,'video de presentación','video de presentación',0,1,1.7,'V31625325',1,'*'),
	(1725,'wallpaper','wallpap',0,0,0.6,'W416',1,'*'),
	(1726,'wallpapers','wallpap',0,0,0.6667,'W4162',1,'*'),
	(1727,'warcraft','warcraft',0,0,0.5333,'W62613',1,'*'),
	(1728,'world','world',0,0,0.3333,'W643',1,'*'),
	(1729,'world of','world of',0,1,1.2667,'W6431',1,'*'),
	(1730,'world of warcraft','world of warcraft',0,1,1.5667,'W643162613',1,'*'),
	(1731,'y','y',0,0,0.0667,'Y000',1,'*'),
	(1732,'y en','y en',0,1,1.1333,'Y500',1,'*'),
	(1733,'y en el','y en el',0,1,1.2333,'Y540',1,'*'),
	(1734,'y esto','y esto',0,1,1.2,'Y230',1,'*'),
	(1735,'y esto es','y esto es',0,1,1.3,'Y232',1,'*'),
	(1736,'y ketejostio','y ketejostio',0,1,1.4,'Y2323',1,'*'),
	(1737,'y ketejostio y','y ketejostio y',0,1,1.4667,'Y2323',1,'*'),
	(1738,'y queremos','y queremos',0,1,1.3333,'Y2652',1,'*'),
	(1739,'y queremos que','y queremos que',0,1,1.4667,'Y2652',1,'*'),
	(1740,'you','you',0,0,0.2,'Y000',1,'*'),
	(1741,'you holding','you holding',0,1,1.3667,'Y4352',1,'*'),
	(1742,'you holding up','you holding up',0,1,1.4667,'Y43521',1,'*'),
	(1743,'zone','zone',0,0,0.2667,'Z500',1,'*'),
	(1744,'zone lo','zone lo',0,1,1.2333,'Z540',1,'*'),
	(1745,'zone lo siento','zone lo siento',0,1,1.4667,'Z54253',1,'*'),
	(1746,'zone teaser','zone teaser',0,1,1.3667,'Z5326',1,'*'),
	(1747,'zone teaser trailer','zone teaser trailer',0,1,1.6333,'Z53263646',1,'*');

/*!40000 ALTER TABLE `web_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_finder_terms_common
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_terms_common`;

CREATE TABLE `web_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `web_finder_terms_common` DISABLE KEYS */;

INSERT INTO `web_finder_terms_common` (`term`, `language`)
VALUES
	('a','en'),
	('about','en'),
	('after','en'),
	('ago','en'),
	('all','en'),
	('am','en'),
	('an','en'),
	('and','en'),
	('ani','en'),
	('any','en'),
	('are','en'),
	('aren\'t','en'),
	('as','en'),
	('at','en'),
	('be','en'),
	('but','en'),
	('by','en'),
	('for','en'),
	('from','en'),
	('get','en'),
	('go','en'),
	('how','en'),
	('if','en'),
	('in','en'),
	('into','en'),
	('is','en'),
	('isn\'t','en'),
	('it','en'),
	('its','en'),
	('me','en'),
	('more','en'),
	('most','en'),
	('must','en'),
	('my','en'),
	('new','en'),
	('no','en'),
	('none','en'),
	('not','en'),
	('noth','en'),
	('nothing','en'),
	('of','en'),
	('off','en'),
	('often','en'),
	('old','en'),
	('on','en'),
	('onc','en'),
	('once','en'),
	('onli','en'),
	('only','en'),
	('or','en'),
	('other','en'),
	('our','en'),
	('ours','en'),
	('out','en'),
	('over','en'),
	('page','en'),
	('she','en'),
	('should','en'),
	('small','en'),
	('so','en'),
	('some','en'),
	('than','en'),
	('thank','en'),
	('that','en'),
	('the','en'),
	('their','en'),
	('theirs','en'),
	('them','en'),
	('then','en'),
	('there','en'),
	('these','en'),
	('they','en'),
	('this','en'),
	('those','en'),
	('thus','en'),
	('time','en'),
	('times','en'),
	('to','en'),
	('too','en'),
	('true','en'),
	('under','en'),
	('until','en'),
	('up','en'),
	('upon','en'),
	('use','en'),
	('user','en'),
	('users','en'),
	('veri','en'),
	('version','en'),
	('very','en'),
	('via','en'),
	('want','en'),
	('was','en'),
	('way','en'),
	('were','en'),
	('what','en'),
	('when','en'),
	('where','en'),
	('whi','en'),
	('which','en'),
	('who','en'),
	('whom','en'),
	('whose','en'),
	('why','en'),
	('wide','en'),
	('will','en'),
	('with','en'),
	('within','en'),
	('without','en'),
	('would','en'),
	('yes','en'),
	('yet','en'),
	('you','en'),
	('your','en'),
	('yours','en');

/*!40000 ALTER TABLE `web_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_finder_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_tokens`;

CREATE TABLE `web_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;



# Volcado de tabla web_finder_tokens_aggregate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_tokens_aggregate`;

CREATE TABLE `web_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;



# Volcado de tabla web_finder_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_finder_types`;

CREATE TABLE `web_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_finder_types` WRITE;
/*!40000 ALTER TABLE `web_finder_types` DISABLE KEYS */;

INSERT INTO `web_finder_types` (`id`, `title`, `mime`)
VALUES
	(1,'ZOO Item',''),
	(2,'Tag',''),
	(3,'Category',''),
	(4,'Contact',''),
	(5,'Article',''),
	(6,'News Feed',''),
	(7,'Web Link','');

/*!40000 ALTER TABLE `web_finder_types` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_kunena_aliases
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_aliases`;

CREATE TABLE `web_kunena_aliases` (
  `alias` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `item` varchar(32) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  UNIQUE KEY `alias` (`alias`),
  KEY `state` (`state`),
  KEY `item` (`item`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_kunena_aliases` WRITE;
/*!40000 ALTER TABLE `web_kunena_aliases` DISABLE KEYS */;

INSERT INTO `web_kunena_aliases` (`alias`, `type`, `item`, `state`)
VALUES
	('announcement','view','announcement',1),
	('bienvenido-mat','catid','2',1),
	('buzon-de-sugerencias','catid','3',1),
	('category','view','category',1),
	('category/create','layout','category.create',1),
	('category/default','layout','category.default',1),
	('category/edit','layout','category.edit',1),
	('category/manage','layout','category.manage',1),
	('category/moderate','layout','category.moderate',1),
	('category/user','layout','category.user',1),
	('common','view','common',1),
	('create','layout','category.create',0),
	('credits','view','credits',1),
	('default','layout','category.default',0),
	('edit','layout','category.edit',0),
	('foro-principal','catid','1',1),
	('home','view','home',1),
	('manage','layout','category.manage',0),
	('misc','view','misc',1),
	('moderate','layout','category.moderate',0),
	('search','view','search',1),
	('statistics','view','statistics',1),
	('topic','view','topic',1),
	('topics','view','topics',1),
	('user','view','user',1);

/*!40000 ALTER TABLE `web_kunena_aliases` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_kunena_announcement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_announcement`;

CREATE TABLE `web_kunena_announcement` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `sdescription` text NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` tinyint(4) NOT NULL DEFAULT '0',
  `showdate` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_kunena_attachments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_attachments`;

CREATE TABLE `web_kunena_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `protected` tinyint(4) NOT NULL DEFAULT '0',
  `hash` char(32) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `folder` varchar(255) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `filename_real` varchar(255) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mesid` (`mesid`),
  KEY `userid` (`userid`),
  KEY `hash` (`hash`),
  KEY `filename` (`filename`),
  KEY `filename_real` (`filename_real`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_kunena_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_categories`;

CREATE TABLE `web_kunena_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `name` tinytext,
  `alias` varchar(255) NOT NULL,
  `icon` varchar(60) NOT NULL,
  `icon_id` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `accesstype` varchar(20) NOT NULL DEFAULT 'joomla.level',
  `access` int(11) NOT NULL DEFAULT '0',
  `pub_access` int(11) NOT NULL DEFAULT '1',
  `pub_recurse` tinyint(4) DEFAULT '1',
  `admin_access` int(11) NOT NULL DEFAULT '0',
  `admin_recurse` tinyint(4) DEFAULT '1',
  `ordering` smallint(6) NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `channels` text,
  `checked_out` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review` tinyint(4) NOT NULL DEFAULT '0',
  `allow_anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `post_anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `headerdesc` text NOT NULL,
  `class_sfx` varchar(20) NOT NULL,
  `allow_polls` tinyint(4) NOT NULL DEFAULT '0',
  `topic_ordering` varchar(16) NOT NULL DEFAULT 'lastpost',
  `iconset` varchar(255) NOT NULL DEFAULT '',
  `numTopics` mediumint(8) NOT NULL DEFAULT '0',
  `numPosts` mediumint(8) NOT NULL DEFAULT '0',
  `last_topic_id` int(11) NOT NULL DEFAULT '0',
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `last_post_time` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `category_access` (`accesstype`,`access`),
  KEY `published_pubaccess_id` (`published`,`pub_access`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_kunena_categories` WRITE;
/*!40000 ALTER TABLE `web_kunena_categories` DISABLE KEYS */;

INSERT INTO `web_kunena_categories` (`id`, `parent_id`, `name`, `alias`, `icon`, `icon_id`, `locked`, `accesstype`, `access`, `pub_access`, `pub_recurse`, `admin_access`, `admin_recurse`, `ordering`, `published`, `channels`, `checked_out`, `checked_out_time`, `review`, `allow_anonymous`, `post_anonymous`, `hits`, `description`, `headerdesc`, `class_sfx`, `allow_polls`, `topic_ordering`, `iconset`, `numTopics`, `numPosts`, `last_topic_id`, `last_post_id`, `last_post_time`, `params`)
VALUES
	(1,0,'Foro Principal','foro-principal','',0,0,'joomla.group',0,1,1,0,1,1,1,NULL,0,'0000-00-00 00:00:00',0,0,0,0,'Este es el foro principal de la categoría. Es creada el nivel de una categoría que sirve como un contenedor para cada tema o foros. También se le conoce como una categoría de nivel 1 y es la que debe tener cualquier Foro Kunena en su configuración.','A fin de proporcionar información adicional para todos los invitados y los miembros, La cabecera del foro se puede aprovechar para mostrar texto en la parte superior de una categoría.','',0,'lastpost','',0,0,0,0,0,''),
	(2,1,'Bienvenido Mat','bienvenido-mat','',0,0,'joomla.group',0,1,1,0,1,1,1,NULL,0,'0000-00-00 00:00:00',0,0,0,0,'Alentamos a los nuevos miembros a enviar una breve introducción de sí mismos en esta categoría del foro. Para así llegar a conocerse y compartir los intereses que posean en común.','[b]Bienvenido al foro Kunena![/B] \n\n Cuéntanos a todos acerca de quién eres, qué te gusta y por qué te has convertido en miembro de este sitio. \n Damos la bienvenida a todos los nuevos miembros y esperamos verlos siempre por aquí!','',0,'lastpost','',1,1,1,1,1437020073,''),
	(3,1,'Buzón de Sugerencias','buzon-de-sugerencias','',0,0,'joomla.group',0,1,1,0,1,2,1,NULL,0,'0000-00-00 00:00:00',0,0,0,0,'Tienes algún comentario o aporte para compartir? \n No sea tímido y envíenos una nota. Queremos saber de ti y tratar de hacer de nuestro sitio el mejor y más fácil de usar para nuestros miembros e invitados en general.','Este es el encabezado opcional del foro para el buzón de sugerencias.','',1,'lastpost','',0,0,0,0,0,'');

/*!40000 ALTER TABLE `web_kunena_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_kunena_configuration
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_configuration`;

CREATE TABLE `web_kunena_configuration` (
  `id` int(11) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_kunena_configuration` WRITE;
/*!40000 ALTER TABLE `web_kunena_configuration` DISABLE KEYS */;

INSERT INTO `web_kunena_configuration` (`id`, `params`)
VALUES
	(1,'{\"board_title\":\"Foros\",\"email\":\"\",\"board_offline\":\"1\",\"offline_message\":\"<h2>El foro estar\\u00e1 cerrado por el momento.<\\/h2>\\r\\n<div>\\u00a1Pronto tendr\\u00e9is m\\u00e1s noticias!<\\/div>\",\"enablerss\":\"0\",\"threads_per_page\":\"20\",\"messages_per_page\":\"10\",\"messages_per_page_search\":\"10\",\"showhistory\":\"1\",\"historylimit\":\"6\",\"shownew\":\"1\",\"disemoticons\":\"0\",\"template\":\"crypsis\",\"showannouncement\":\"1\",\"avataroncat\":\"1\",\"catimagepath\":\"category_images\",\"showchildcaticon\":\"1\",\"rtewidth\":\"450\",\"rteheight\":\"300\",\"enableforumjump\":\"0\",\"reportmsg\":\"1\",\"username\":\"1\",\"askemail\":\"0\",\"showemail\":\"0\",\"showuserstats\":\"1\",\"showkarma\":\"0\",\"useredit\":\"2\",\"useredittime\":\"0\",\"useredittimegrace\":\"600\",\"editmarkup\":\"1\",\"allowsubscriptions\":\"1\",\"subscriptionschecked\":\"1\",\"allowfavorites\":\"0\",\"maxsubject\":\"50\",\"maxsig\":\"300\",\"regonly\":\"1\",\"pubwrite\":\"0\",\"floodprotection\":\"5\",\"mailmod\":\"0\",\"mailadmin\":\"0\",\"captcha\":\"1\",\"mailfull\":\"0\",\"allowavatarupload\":\"1\",\"allowavatargallery\":\"1\",\"avatarquality\":\"75\",\"avatarsize\":\"512\",\"imageheight\":\"720\",\"imagewidth\":\"1280\",\"imagesize\":\"2048\",\"filetypes\":\"txt,rtf,pdf,zip,tar.gz,tgz,tar.bz2\",\"filesize\":\"120\",\"showranking\":\"1\",\"rankimages\":\"1\",\"userlist_rows\":\"15\",\"userlist_online\":\"1\",\"userlist_avatar\":\"1\",\"userlist_posts\":\"1\",\"userlist_karma\":\"0\",\"userlist_email\":\"0\",\"userlist_joindate\":\"1\",\"userlist_lastvisitdate\":\"1\",\"userlist_userhits\":\"0\",\"latestcategory\":\"\",\"showstats\":\"1\",\"showwhoisonline\":\"1\",\"showgenstats\":\"1\",\"showpopuserstats\":\"0\",\"popusercount\":\"5\",\"showpopsubjectstats\":\"1\",\"popsubjectcount\":\"5\",\"showspoilertag\":\"1\",\"showvideotag\":\"0\",\"showebaytag\":\"0\",\"trimlongurls\":\"1\",\"trimlongurlsfront\":\"40\",\"trimlongurlsback\":\"20\",\"autoembedyoutube\":\"1\",\"autoembedebay\":\"0\",\"ebaylanguagecode\":\"en-us\",\"sessiontimeout\":\"1800\",\"highlightcode\":\"0\",\"rss_type\":\"topic\",\"rss_timelimit\":\"month\",\"rss_limit\":\"100\",\"rss_included_categories\":\"\",\"rss_excluded_categories\":\"\",\"rss_specification\":\"rss2.0\",\"rss_allow_html\":\"1\",\"rss_author_format\":\"name\",\"rss_author_in_title\":\"1\",\"rss_word_count\":\"0\",\"rss_old_titles\":\"1\",\"rss_cache\":\"900\",\"defaultpage\":\"recent\",\"default_sort\":\"asc\",\"sef\":\"1\",\"showimgforguest\":\"1\",\"showfileforguest\":\"1\",\"pollnboptions\":\"3\",\"pollallowvoteone\":\"1\",\"pollenabled\":\"1\",\"poppollscount\":\"5\",\"showpoppollstats\":\"1\",\"polltimebtvotes\":\"00:15:00\",\"pollnbvotesbyuser\":\"100\",\"pollresultsuserslist\":\"1\",\"maxpersotext\":\"380\",\"ordering_system\":\"mesid\",\"post_dateformat\":\"ago\",\"post_dateformat_hover\":\"datetime\",\"hide_ip\":\"1\",\"imagetypes\":\"jpg,jpeg,gif,png\",\"checkmimetypes\":\"1\",\"imagemimetypes\":\"image\\/jpeg,image\\/jpg,image\\/gif,image\\/png\",\"imagequality\":\"50\",\"thumbheight\":\"36\",\"thumbwidth\":\"64\",\"hideuserprofileinfo\":\"put_empty\",\"boxghostmessage\":\"0\",\"userdeletetmessage\":\"0\",\"latestcategory_in\":\"1\",\"topicicons\":\"1\",\"debug\":\"0\",\"catsautosubscribed\":0,\"showbannedreason\":\"1\",\"showthankyou\":\"1\",\"showpopthankyoustats\":\"1\",\"popthankscount\":\"5\",\"mod_see_deleted\":\"1\",\"bbcode_img_secure\":\"text\",\"listcat_show_moderators\":\"1\",\"lightbox\":\"1\",\"show_list_time\":\"720\",\"show_session_type\":\"2\",\"show_session_starttime\":\"3600\",\"userlist_allowed\":\"1\",\"userlist_count_users\":\"2\",\"enable_threaded_layouts\":\"0\",\"category_subscriptions\":\"post\",\"topic_subscriptions\":\"every\",\"pubprofile\":\"0\",\"thankyou_max\":\"10\",\"email_recipient_count\":\"0\",\"email_recipient_privacy\":\"bcc\",\"email_visible_address\":\"\",\"captcha_post_limit\":\"25\",\"recaptcha_publickey\":\"6Lct5QkTAAAAAOeHmgVrvjAxWQDW-PXDUDyI5zIx\",\"recaptcha_privatekey\":\"6Lct5QkTAAAAALpIzdx0TpKURrrw0CgO1x9X3-_F\",\"recaptcha_theme\":\"white\",\"keywords\":0,\"userkeywords\":0,\"image_upload\":\"registered\",\"file_upload\":\"\",\"topic_layout\":\"flat\",\"time_to_create_page\":\"0\",\"show_imgfiles_manage_profile\":\"1\",\"hold_newusers_posts\":\"10\",\"hold_guest_posts\":\"0\",\"attachment_limit\":\"5\",\"pickup_category\":\"1\",\"article_display\":\"full\",\"send_emails\":\"1\",\"stopforumspam_key\":\"uzk6b3gcp4nm07\",\"fallback_english\":\"1\",\"cache\":\"1\",\"cache_time\":\"180\",\"ebay_affiliate_id\":\"\",\"iptracking\":\"1\",\"rss_feedburner_url\":\"\",\"autolink\":\"1\",\"access_component\":\"0\",\"statslink_allowed\":\"1\",\"superadmin_userlist\":\"0\",\"legacy_urls\":\"0\",\"attachment_protection\":\"1\",\"categoryicons\":1,\"avatarresizemethod\":\"1\",\"avatarcrop\":\"1\",\"user_report\":\"1\",\"searchtime\":\"365\",\"teaser\":\"0\",\"ebay_language\":\"0\",\"ebay_api_key\":\"\",\"twitter_consumer_key\":\"\",\"twitter_consumer_secret\":\"\",\"max_links\":\"6\",\"plugins\":{\"plg_system_kunena\":{\"jcontentevents\":\"0\",\"jcontentevent_target\":\"body\"}}}');

/*!40000 ALTER TABLE `web_kunena_configuration` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_kunena_keywords
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_keywords`;

CREATE TABLE `web_kunena_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `public_count` int(11) NOT NULL,
  `total_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `public_count` (`public_count`),
  KEY `total_count` (`total_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_kunena_keywords_map
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_keywords_map`;

CREATE TABLE `web_kunena_keywords_map` (
  `keyword_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  UNIQUE KEY `keyword_user_topic` (`keyword_id`,`user_id`,`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `topic_user` (`topic_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_kunena_messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_messages`;

CREATE TABLE `web_kunena_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT '0',
  `thread` int(11) DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `name` tinytext,
  `userid` int(11) NOT NULL DEFAULT '0',
  `email` tinytext,
  `subject` tinytext,
  `time` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(128) DEFAULT NULL,
  `topic_emoticon` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `hold` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `moved` tinyint(4) DEFAULT '0',
  `modified_by` int(7) DEFAULT NULL,
  `modified_time` int(11) DEFAULT NULL,
  `modified_reason` tinytext,
  PRIMARY KEY (`id`),
  KEY `thread` (`thread`),
  KEY `ip` (`ip`),
  KEY `userid` (`userid`),
  KEY `time` (`time`),
  KEY `locked` (`locked`),
  KEY `hold_time` (`hold`,`time`),
  KEY `parent_hits` (`parent`,`hits`),
  KEY `catid_parent` (`catid`,`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_kunena_messages` WRITE;
/*!40000 ALTER TABLE `web_kunena_messages` DISABLE KEYS */;

INSERT INTO `web_kunena_messages` (`id`, `parent`, `thread`, `catid`, `name`, `userid`, `email`, `subject`, `time`, `ip`, `topic_emoticon`, `locked`, `hold`, `ordering`, `hits`, `moved`, `modified_by`, `modified_time`, `modified_reason`)
VALUES
	(1,0,1,2,'Kunena',969,NULL,'Bienvenido a Kunena!',1437020073,'127.0.0.1',0,0,0,0,0,0,NULL,NULL,NULL);

/*!40000 ALTER TABLE `web_kunena_messages` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_kunena_messages_text
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_messages_text`;

CREATE TABLE `web_kunena_messages_text` (
  `mesid` int(11) NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  PRIMARY KEY (`mesid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_kunena_messages_text` WRITE;
/*!40000 ALTER TABLE `web_kunena_messages_text` DISABLE KEYS */;

INSERT INTO `web_kunena_messages_text` (`mesid`, `message`)
VALUES
	(1,'[size=4][b]¡Bienvenido a Kunena![/b][/size] \n\n Gracias por elegir Kunena para las necesidades de creación de foros para su comunidad en Joomla. \n\n Kunena, que traducido del Swahili significa “hablar”, se construyó por un equipo de profesionales en código abierto con el propósito de proporcionar una solución para crear foros de alta calidad, serio y unificado en Joomla.\n\n\n [size=4][b]Fuentes Adicionales de Kunena[/b][/size] \n\n [b]Documentación de Kunena:[/b] [url]http://www.kunena.org/docs[/url] \n\n [b]Foro de Soporte de Kunena[/b]: [url]http://www.kunena.org/forum[/url] \n\n [b]Descargas para Kunena:[/b] [url]http://www.kunena.org/download[/url] \n\n [b]Blog de Kunena:[/b] [url]http://www.kunena.org/blog[/url] \n\n [b]Siga a Kunena en Twitter:[/b] [url]http://www.kunena.org/twitter[/url]');

/*!40000 ALTER TABLE `web_kunena_messages_text` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_kunena_polls
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_polls`;

CREATE TABLE `web_kunena_polls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `threadid` int(11) NOT NULL,
  `polltimetolive` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `threadid` (`threadid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_kunena_polls_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_polls_options`;

CREATE TABLE `web_kunena_polls_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_kunena_polls_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_polls_users`;

CREATE TABLE `web_kunena_polls_users` (
  `pollid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  `lasttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvote` int(11) DEFAULT NULL,
  UNIQUE KEY `pollid` (`pollid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_kunena_ranks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_ranks`;

CREATE TABLE `web_kunena_ranks` (
  `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(255) NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_kunena_ranks` WRITE;
/*!40000 ALTER TABLE `web_kunena_ranks` DISABLE KEYS */;

INSERT INTO `web_kunena_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`)
VALUES
	(1,'Navegador Iniciado',0,0,'rank1.gif'),
	(2,'Navegador Junior',20,0,'rank2.gif'),
	(3,'Navegador Senior',40,0,'rank3.gif'),
	(4,'Navegador Experto',80,0,'rank4.gif'),
	(5,'Navegador Dorado',160,0,'rank5.gif'),
	(6,'Navegador Platino',320,0,'rank6.gif'),
	(7,'Administrador',0,1,'rankadmin.gif'),
	(8,'Moderador',0,1,'rankmod.gif'),
	(9,'Spammer',0,1,'rankspammer.gif'),
	(10,'Sancionado',0,1,'rankbanned.gif');

/*!40000 ALTER TABLE `web_kunena_ranks` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_kunena_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_sessions`;

CREATE TABLE `web_kunena_sessions` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `allowed` text,
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `readtopics` text,
  `currvisit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `currvisit` (`currvisit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_kunena_sessions` WRITE;
/*!40000 ALTER TABLE `web_kunena_sessions` DISABLE KEYS */;

INSERT INTO `web_kunena_sessions` (`userid`, `allowed`, `lasttime`, `readtopics`, `currvisit`)
VALUES
	(969,'na',1437124643,'0',1437164528);

/*!40000 ALTER TABLE `web_kunena_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_kunena_smileys
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_smileys`;

CREATE TABLE `web_kunena_smileys` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) NOT NULL DEFAULT '',
  `location` varchar(50) NOT NULL DEFAULT '',
  `greylocation` varchar(60) NOT NULL DEFAULT '',
  `emoticonbar` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_kunena_smileys` WRITE;
/*!40000 ALTER TABLE `web_kunena_smileys` DISABLE KEYS */;

INSERT INTO `web_kunena_smileys` (`id`, `code`, `location`, `greylocation`, `emoticonbar`)
VALUES
	(1,'B)','cool.png','cool-grey.png',1),
	(2,'8)','cool.png','cool-grey.png',0),
	(3,'8-)','cool.png','cool-grey.png',0),
	(4,':-(','sad.png','sad-grey.png',0),
	(5,':(','sad.png','sad-grey.png',1),
	(6,':sad:','sad.png','sad-grey.png',0),
	(7,':cry:','sad.png','sad-grey.png',0),
	(8,':)','smile.png','smile-grey.png',1),
	(9,':-)','smile.png','smile-grey.png',0),
	(10,':cheer:','cheerful.png','cheerful-grey.png',1),
	(11,';)','wink.png','wink-grey.png',1),
	(12,';-)','wink.png','wink-grey.png',0),
	(13,':wink:','wink.png','wink-grey.png',0),
	(14,';-)','wink.png','wink-grey.png',0),
	(15,':P','tongue.png','tongue-grey.png',1),
	(16,':p','tongue.png','tongue-grey.png',0),
	(17,':-p','tongue.png','tongue-grey.png',0),
	(18,':-P','tongue.png','tongue-grey.png',0),
	(19,':razz:','tongue.png','tongue-grey.png',0),
	(20,':angry:','angry.png','angry-grey.png',1),
	(21,':mad:','angry.png','angry-grey.png',0),
	(22,':unsure:','unsure.png','unsure-grey.png',1),
	(23,':o','shocked.png','shocked-grey.png',0),
	(24,':-o','shocked.png','shocked-grey.png',0),
	(25,':O','shocked.png','shocked-grey.png',0),
	(26,':-O','shocked.png','shocked-grey.png',0),
	(27,':eek:','shocked.png','shocked-grey.png',0),
	(28,':ohmy:','shocked.png','shocked-grey.png',1),
	(29,':huh:','wassat.png','wassat-grey.png',1),
	(30,':?','confused.png','confused-grey.png',0),
	(31,':-?','confused.png','confused-grey.png',0),
	(32,':???','confused.png','confused-grey.png',0),
	(33,':dry:','ermm.png','ermm-grey.png',1),
	(34,':ermm:','ermm.png','ermm-grey.png',0),
	(35,':lol:','grin.png','grin-grey.png',1),
	(36,':X','sick.png','sick-grey.png',0),
	(37,':x','sick.png','sick-grey.png',0),
	(38,':sick:','sick.png','sick-grey.png',1),
	(39,':silly:','silly.png','silly-grey.png',1),
	(40,':y32b4:','silly.png','silly-grey.png',0),
	(41,':blink:','blink.png','blink-grey.png',1),
	(42,':blush:','blush.png','blush-grey.png',1),
	(43,':oops:','blush.png','blush-grey.png',1),
	(44,':kiss:','kissing.png','kissing-grey.png',1),
	(45,':rolleyes:','blink.png','blink-grey.png',0),
	(46,':roll:','blink.png','blink-grey.png',0),
	(47,':woohoo:','w00t.png','w00t-grey.png',1),
	(48,':side:','sideways.png','sideways-grey.png',1),
	(49,':S','dizzy.png','dizzy-grey.png',1),
	(50,':s','dizzy.png','dizzy-grey.png',0),
	(51,':evil:','devil.png','devil-grey.png',1),
	(52,':twisted:','devil.png','devil-grey.png',0),
	(53,':whistle:','whistling.png','whistling-grey.png',1),
	(54,':pinch:','pinch.png','pinch-grey.png',1),
	(55,':D','laughing.png','laughing-grey.png',0),
	(56,':-D','laughing.png','laughing-grey.png',0),
	(57,':grin:','laughing.png','laughing-grey.png',0),
	(58,':laugh:','laughing.png','laughing-grey.png',0),
	(59,':|','neutral.png','neutral-grey.png',0),
	(60,':-|','neutral.png','neutral-grey.png',0),
	(61,':neutral:','neutral.png','neutral-grey.png',0),
	(62,':mrgreen:','mrgreen.png','mrgreen-grey.png',0),
	(63,':?:','question.png','question-grey.png',0),
	(64,':!:','exclamation.png','exclamation-grey.png',0),
	(65,':arrow:','arrow.png','arrow-grey.png',0),
	(66,':idea:','idea.png','idea-grey.png',0);

/*!40000 ALTER TABLE `web_kunena_smileys` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_kunena_thankyou
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_thankyou`;

CREATE TABLE `web_kunena_thankyou` (
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `targetuserid` int(11) NOT NULL,
  `time` datetime NOT NULL,
  UNIQUE KEY `postid` (`postid`,`userid`),
  KEY `userid` (`userid`),
  KEY `targetuserid` (`targetuserid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_kunena_topics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_topics`;

CREATE TABLE `web_kunena_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `subject` tinytext,
  `icon_id` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `hold` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `attachments` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  `moved_id` int(11) NOT NULL DEFAULT '0',
  `first_post_id` int(11) NOT NULL DEFAULT '0',
  `first_post_time` int(11) NOT NULL DEFAULT '0',
  `first_post_userid` int(11) NOT NULL DEFAULT '0',
  `first_post_message` text,
  `first_post_guest_name` tinytext,
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `last_post_time` int(11) NOT NULL DEFAULT '0',
  `last_post_userid` int(11) NOT NULL DEFAULT '0',
  `last_post_message` text,
  `last_post_guest_name` tinytext,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `locked` (`locked`),
  KEY `hold` (`hold`),
  KEY `posts` (`posts`),
  KEY `hits` (`hits`),
  KEY `first_post_userid` (`first_post_userid`),
  KEY `last_post_userid` (`last_post_userid`),
  KEY `first_post_time` (`first_post_time`),
  KEY `last_post_time` (`last_post_time`),
  KEY `last_post_id` (`last_post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_kunena_topics` WRITE;
/*!40000 ALTER TABLE `web_kunena_topics` DISABLE KEYS */;

INSERT INTO `web_kunena_topics` (`id`, `category_id`, `subject`, `icon_id`, `locked`, `hold`, `ordering`, `posts`, `hits`, `attachments`, `poll_id`, `moved_id`, `first_post_id`, `first_post_time`, `first_post_userid`, `first_post_message`, `first_post_guest_name`, `last_post_id`, `last_post_time`, `last_post_userid`, `last_post_message`, `last_post_guest_name`, `params`)
VALUES
	(1,2,'Bienvenido a Kunena!',0,0,0,0,1,2,0,0,0,1,1437020073,969,'[size=4][b]¡Bienvenido a Kunena![/b][/size] \n\n Gracias por elegir Kunena para las necesidades de creación de foros para su comunidad en Joomla. \n\n Kunena, que traducido del Swahili significa “hablar”, se construyó por un equipo de profesionales en código abierto con el propósito de proporcionar una solución para crear foros de alta calidad, serio y unificado en Joomla.\n\n\n [size=4][b]Fuentes Adicionales de Kunena[/b][/size] \n\n [b]Documentación de Kunena:[/b] [url]http://www.kunena.org/docs[/url] \n\n [b]Foro de Soporte de Kunena[/b]: [url]http://www.kunena.org/forum[/url] \n\n [b]Descargas para Kunena:[/b] [url]http://www.kunena.org/download[/url] \n\n [b]Blog de Kunena:[/b] [url]http://www.kunena.org/blog[/url] \n\n [b]Siga a Kunena en Twitter:[/b] [url]http://www.kunena.org/twitter[/url]','Kunena',1,1437020073,969,'[size=4][b]¡Bienvenido a Kunena![/b][/size] \n\n Gracias por elegir Kunena para las necesidades de creación de foros para su comunidad en Joomla. \n\n Kunena, que traducido del Swahili significa “hablar”, se construyó por un equipo de profesionales en código abierto con el propósito de proporcionar una solución para crear foros de alta calidad, serio y unificado en Joomla.\n\n\n [size=4][b]Fuentes Adicionales de Kunena[/b][/size] \n\n [b]Documentación de Kunena:[/b] [url]http://www.kunena.org/docs[/url] \n\n [b]Foro de Soporte de Kunena[/b]: [url]http://www.kunena.org/forum[/url] \n\n [b]Descargas para Kunena:[/b] [url]http://www.kunena.org/download[/url] \n\n [b]Blog de Kunena:[/b] [url]http://www.kunena.org/blog[/url] \n\n [b]Siga a Kunena en Twitter:[/b] [url]http://www.kunena.org/twitter[/url]','Kunena','');

/*!40000 ALTER TABLE `web_kunena_topics` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_kunena_user_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_user_categories`;

CREATE TABLE `web_kunena_user_categories` (
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '0',
  `allreadtime` int(11) NOT NULL DEFAULT '0',
  `subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`user_id`,`category_id`),
  KEY `category_subscribed` (`category_id`,`subscribed`),
  KEY `role` (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_kunena_user_categories` WRITE;
/*!40000 ALTER TABLE `web_kunena_user_categories` DISABLE KEYS */;

INSERT INTO `web_kunena_user_categories` (`user_id`, `category_id`, `role`, `allreadtime`, `subscribed`, `params`)
VALUES
	(969,0,0,1435812111,0,'');

/*!40000 ALTER TABLE `web_kunena_user_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_kunena_user_read
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_user_read`;

CREATE TABLE `web_kunena_user_read` (
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`),
  KEY `category_user_id` (`category_id`,`user_id`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_kunena_user_read` WRITE;
/*!40000 ALTER TABLE `web_kunena_user_read` DISABLE KEYS */;

INSERT INTO `web_kunena_user_read` (`user_id`, `topic_id`, `category_id`, `message_id`, `time`)
VALUES
	(969,1,2,1,1437124643);

/*!40000 ALTER TABLE `web_kunena_user_read` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_kunena_user_topics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_user_topics`;

CREATE TABLE `web_kunena_user_topics` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `posts` mediumint(8) NOT NULL DEFAULT '0',
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `owner` tinyint(4) NOT NULL DEFAULT '0',
  `favorite` tinyint(4) NOT NULL DEFAULT '0',
  `subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`),
  KEY `topic_id` (`topic_id`),
  KEY `posts` (`posts`),
  KEY `owner` (`owner`),
  KEY `favorite` (`favorite`),
  KEY `subscribed` (`subscribed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_kunena_user_topics` WRITE;
/*!40000 ALTER TABLE `web_kunena_user_topics` DISABLE KEYS */;

INSERT INTO `web_kunena_user_topics` (`user_id`, `topic_id`, `category_id`, `posts`, `last_post_id`, `owner`, `favorite`, `subscribed`, `params`)
VALUES
	(969,1,2,1,1,1,0,0,'');

/*!40000 ALTER TABLE `web_kunena_user_topics` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_kunena_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_users`;

CREATE TABLE `web_kunena_users` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `status_text` varchar(255) NOT NULL,
  `view` varchar(8) NOT NULL DEFAULT '',
  `signature` text,
  `moderator` int(11) DEFAULT '0',
  `banned` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `posts` int(11) DEFAULT '0',
  `avatar` varchar(255) DEFAULT NULL,
  `karma` int(11) DEFAULT '0',
  `karma_time` int(11) DEFAULT '0',
  `group_id` int(4) DEFAULT '1',
  `uhits` int(11) DEFAULT '0',
  `personalText` tinytext,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `birthdate` date NOT NULL DEFAULT '0001-01-01',
  `location` varchar(50) DEFAULT NULL,
  `icq` varchar(50) DEFAULT NULL,
  `aim` varchar(50) DEFAULT NULL,
  `yim` varchar(50) DEFAULT NULL,
  `msn` varchar(50) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `gtalk` varchar(50) DEFAULT NULL,
  `myspace` varchar(50) DEFAULT NULL,
  `linkedin` varchar(50) DEFAULT NULL,
  `delicious` varchar(50) DEFAULT NULL,
  `friendfeed` varchar(50) DEFAULT NULL,
  `digg` varchar(50) DEFAULT NULL,
  `blogspot` varchar(50) DEFAULT NULL,
  `flickr` varchar(50) DEFAULT NULL,
  `bebo` varchar(50) DEFAULT NULL,
  `websitename` varchar(50) DEFAULT NULL,
  `websiteurl` varchar(50) DEFAULT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT '0',
  `hideEmail` tinyint(1) NOT NULL DEFAULT '1',
  `showOnline` tinyint(1) NOT NULL DEFAULT '1',
  `canSubscribe` tinyint(1) NOT NULL DEFAULT '1',
  `userListtime` int(11) DEFAULT '-2',
  `thankyou` int(11) DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `group_id` (`group_id`),
  KEY `posts` (`posts`),
  KEY `uhits` (`uhits`),
  KEY `banned` (`banned`),
  KEY `moderator` (`moderator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_kunena_users` WRITE;
/*!40000 ALTER TABLE `web_kunena_users` DISABLE KEYS */;

INSERT INTO `web_kunena_users` (`userid`, `status`, `status_text`, `view`, `signature`, `moderator`, `banned`, `ordering`, `posts`, `avatar`, `karma`, `karma_time`, `group_id`, `uhits`, `personalText`, `gender`, `birthdate`, `location`, `icq`, `aim`, `yim`, `msn`, `skype`, `twitter`, `facebook`, `gtalk`, `myspace`, `linkedin`, `delicious`, `friendfeed`, `digg`, `blogspot`, `flickr`, `bebo`, `websitename`, `websiteurl`, `rank`, `hideEmail`, `showOnline`, `canSubscribe`, `userListtime`, `thankyou`)
VALUES
	(969,0,'','',NULL,0,NULL,0,1,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,1,-2,0);

/*!40000 ALTER TABLE `web_kunena_users` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_kunena_users_banned
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_users_banned`;

CREATE TABLE `web_kunena_users_banned` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `ip` varchar(128) DEFAULT NULL,
  `blocked` tinyint(4) NOT NULL DEFAULT '0',
  `expiration` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `reason_private` text,
  `reason_public` text,
  `modified_by` int(11) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `comments` text,
  `params` text,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `ip` (`ip`),
  KEY `expiration` (`expiration`),
  KEY `created_time` (`created_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_kunena_version
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_kunena_version`;

CREATE TABLE `web_kunena_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(20) NOT NULL,
  `versiondate` date NOT NULL,
  `installdate` date NOT NULL,
  `build` varchar(20) NOT NULL,
  `versionname` varchar(40) DEFAULT NULL,
  `state` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_kunena_version` WRITE;
/*!40000 ALTER TABLE `web_kunena_version` DISABLE KEYS */;

INSERT INTO `web_kunena_version` (`id`, `version`, `versiondate`, `installdate`, `build`, `versionname`, `state`)
VALUES
	(1,'4.0.3','2015-06-29','2015-07-16','','Possagno','');

/*!40000 ALTER TABLE `web_kunena_version` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_languages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_languages`;

CREATE TABLE `web_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_languages` WRITE;
/*!40000 ALTER TABLE `web_languages` DISABLE KEYS */;

INSERT INTO `web_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`)
VALUES
	(1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,1,1);

/*!40000 ALTER TABLE `web_languages` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_menu`;

CREATE TABLE `web_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned DEFAULT NULL,
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_menu` WRITE;
/*!40000 ALTER TABLE `web_menu` DISABLE KEYS */;

INSERT INTO `web_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`)
VALUES
	(1,'','Menu_Item_Root',X'726F6F74','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,237,0,'*',0),
	(2,'menu','com_banners',X'42616E6E657273','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',89,98,0,'*',1),
	(3,'menu','com_banners',X'42616E6E657273','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',90,91,0,'*',1),
	(4,'menu','com_banners_categories',X'43617465676F72696573','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',92,93,0,'*',1),
	(5,'menu','com_banners_clients',X'436C69656E7473','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',94,95,0,'*',1),
	(6,'menu','com_banners_tracks',X'547261636B73','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',96,97,0,'*',1),
	(7,'menu','com_contact',X'436F6E7461637473','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',107,112,0,'*',1),
	(8,'menu','com_contact',X'436F6E7461637473','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',108,109,0,'*',1),
	(9,'menu','com_contact_categories',X'43617465676F72696573','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',110,111,0,'*',1),
	(10,'menu','com_messages',X'4D6573736167696E67','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',113,118,0,'*',1),
	(11,'menu','com_messages_add',X'4E65772050726976617465204D657373616765','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',114,115,0,'*',1),
	(12,'menu','com_messages_read',X'526561642050726976617465204D657373616765','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',116,117,0,'*',1),
	(13,'menu','com_newsfeeds',X'4E657773204665656473','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',119,124,0,'*',1),
	(14,'menu','com_newsfeeds_feeds',X'4665656473','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',120,121,0,'*',1),
	(15,'menu','com_newsfeeds_categories',X'43617465676F72696573','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',122,123,0,'*',1),
	(16,'menu','com_redirect',X'5265646972656374','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',133,134,0,'*',1),
	(17,'menu','com_search',X'536561726368','','Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',125,126,0,'*',1),
	(18,'menu','com_weblinks',X'5765626C696E6B73','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',127,132,0,'*',1),
	(19,'menu','com_weblinks_links',X'4C696E6B73','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',128,129,0,'*',1),
	(20,'menu','com_weblinks_categories',X'43617465676F72696573','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',130,131,0,'*',1),
	(21,'menu','com_finder',X'536D61727420536561726368','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',105,106,0,'*',1),
	(22,'menu','com_joomlaupdate',X'4A6F6F6D6C612120557064617465','','Joomla! Update','index.php?option=com_joomlaupdate','component',0,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',101,102,0,'*',1),
	(23,'main','com_tags',X'54616773','','Tags','index.php?option=com_tags','component',0,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',103,104,0,'',1),
	(101,'mainmenu','WorldOfWarcraft',X'776F77','','wow','index.php?option=com_zoo&view=frontpage&layout=frontpage','component',1,1,1,10032,969,'2015-07-09 06:04:09',0,1,'',0,'{\"application\":\"1\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',3,34,0,'*',0),
	(102,'mainmenu','Minecraft',X'6665617475726573','','features','index.php?option=com_content&view=article&id=6','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',81,86,0,'*',0),
	(103,'mainmenu','Layouts',X'6C61796F757473','','features/layouts','index.php?option=com_content&view=article&id=1','component',1,102,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_tags\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',82,83,0,'*',0),
	(104,'mainmenu','UIkit',X'75696B6974','','features/uikit','index.php?option=com_content&view=article&id=4','component',1,102,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_tags\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',84,85,0,'*',0),
	(105,'mainmenu','Un reino nuevo',X'7068616E7461736961','','wow/phantasia','index.php?option=com_content&view=article&id=2','component',1,101,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',16,17,0,'*',0),
	(106,'mainmenu','GunZ:TheDuel',X'7A6F6F','','zoo','index.php?option=com_content&view=article&id=3','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',87,88,0,'*',0),
	(107,'mainmenu','Joomla',X'6A6F6F6D6C61','','joomla','index.php?option=com_content&view=category&layout=blog&id=7','component',-2,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"1\",\"num_links\":\"0\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"order\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',41,60,0,'*',0),
	(108,'topmenu','Estado de los servidores',X'736572766572737461747573','','serverstatus','index.php?option=com_content&view=article&id=6&Itemid=102','url',1,1,1,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',135,136,0,'*',0),
	(109,'topmenu','Información para padres y tutores',X'706172656E74616C','','parental','index.php?option=com_content&view=article&id=1&Itemid=103','url',1,1,1,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',137,138,0,'*',0),
	(110,'topmenu','Nuestro equipo',X'7465616D','','team','index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107','url',1,1,1,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',139,140,0,'*',0),
	(124,'mainmenu','Content views',X'636F6E74656E742D7669657773','','joomla/content-views','','heading',-2,107,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu_image\":\"\",\"menu_text\":1}',42,43,0,'*',0),
	(125,'mainmenu','Other views',X'6F746865722D7669657773','','joomla/other-views','','heading',-2,107,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu_image\":\"\",\"menu_text\":1}',50,51,0,'*',0),
	(126,'mainmenu','Category List',X'63617465676F72792D6C697374','','joomla/category-list','index.php?option=com_content&view=category&id=7','component',-2,107,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"Blog\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',48,49,0,'*',0),
	(127,'mainmenu','List All Categories',X'6C6973742D616C6C2D63617465676F72696573','','joomla/list-all-categories','index.php?option=com_content&view=categories&id=0','component',-2,107,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_base_description\":\"\",\"categories_description\":\"\",\"maxLevelcat\":\"\",\"show_empty_categories_cat\":\"\",\"show_subcat_desc_cat\":\"\",\"show_cat_num_articles_cat\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"1\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"display_num\":\"10\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"Blog\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',46,47,0,'*',0),
	(128,'mainmenu','Featured Articles',X'66656174757265642D61727469636C6573','','joomla/featured-articles','index.php?option=com_content&view=featured','component',-2,107,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',44,45,0,'*',0),
	(129,'mainmenu','Login',X'6C6F67696E','','joomla/login','index.php?option=com_users&view=login','component',-2,107,2,25,0,'0000-00-00 00:00:00',0,1,'',0,'{\"login_redirect_url\":\"\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"logout_redirect_url\":\"\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"Login\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',56,57,0,'*',0),
	(132,'mainmenu','CounterStrike',X'7769646765746B6974','','widgetkit','index.php?option=com_content&view=article&id=13','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',61,80,0,'*',0),
	(133,'mainmenu','Slideshow',X'736C69646573686F77','','widgetkit/slideshow','index.php?option=com_content&view=article&id=14','component',1,132,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',62,63,0,'*',0),
	(134,'mainmenu','Lightbox',X'6C69676874626F78','','widgetkit/lightbox','index.php?option=com_content&view=article&id=15','component',1,132,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',72,73,0,'*',0),
	(135,'mainmenu','Spotlight',X'73706F746C69676874','','widgetkit/spotlight','index.php?option=com_content&view=article&id=16','component',1,132,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',74,75,0,'*',0),
	(136,'mainmenu','Twitter',X'74776974746572','','widgetkit/twitter','index.php?option=com_content&view=article&id=17','component',1,132,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',76,77,0,'*',0),
	(140,'mainmenu','Media Player',X'6D656469612D706C61796572','','widgetkit/media-player','index.php?option=com_content&view=article&id=18','component',1,132,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',78,79,0,'*',0),
	(141,'mainmenu','Gallery',X'67616C6C657279','','widgetkit/gallery','index.php?option=com_content&view=article&id=19','component',1,132,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',66,67,0,'*',0),
	(142,'mainmenu','Accordion',X'6163636F7264696F6E','','widgetkit/accordion','index.php?option=com_content&view=article&id=21','component',1,132,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',70,71,0,'*',0),
	(143,'mainmenu','Map',X'6D6170','','widgetkit/map','index.php?option=com_content&view=article&id=20','component',1,132,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',68,69,0,'*',0),
	(144,'mainmenu','Slideset',X'736C696465736574','','widgetkit/slideset','index.php?option=com_content&view=article&id=22','component',1,132,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',64,65,0,'*',0),
	(151,'mainmenu','Contacts',X'636F6E7461637473','','joomla/contacts','index.php?option=com_contact&view=category&id=8','component',-2,107,2,8,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_subcat_desc\":\"\",\"show_cat_items\":\"\",\"filter_field\":\"\",\"show_pagination_limit\":\"\",\"show_headings\":\"\",\"show_position_headings\":\"\",\"show_email_headings\":\"\",\"show_telephone_headings\":\"\",\"show_mobile_headings\":\"\",\"show_fax_headings\":\"\",\"show_suburb_headings\":\"\",\"show_state_headings\":\"\",\"show_country_headings\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"initial_sort\":\"\",\"presentation_style\":\"\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"show_feed_link\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',52,53,0,'*',0),
	(155,'mainmenu','Web Links',X'7765622D6C696E6B73','','joomla/web-links','index.php?option=com_weblinks&view=categories&id=0','component',-2,107,2,21,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_base_description\":\"\",\"categories_description\":\"\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"\",\"show_subcat_desc_cat\":\"\",\"show_cat_num_links_cat\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_links\":\"\",\"filter_field\":\"\",\"show_pagination_limit\":\"\",\"show_headings\":\"\",\"show_link_description\":\"\",\"show_link_hits\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"Web Links\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',54,55,0,'*',0),
	(186,'mainmenu','Tags',X'74616773','','joomla/tags','index.php?option=com_tags&view=tags&parent_id=&tag_list_language_filter=','component',-2,107,2,29,0,'0000-00-00 00:00:00',0,1,'',0,'{\"tag_columns\":4,\"all_tags_description\":\"\",\"all_tags_show_description_image\":\"\",\"all_tags_description_image\":\"\",\"all_tags_orderby\":\"\",\"all_tags_orderby_direction\":\"\",\"all_tags_show_tag_image\":\"\",\"all_tags_show_tag_description\":\"\",\"all_tags_tag_maximum_characters\":0,\"all_tags_show_tag_hits\":\"\",\"maximum\":200,\"filter_field\":\"\",\"show_pagination_limit\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_feed_link\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',58,59,0,'*',0),
	(189,'mainmenu','Default',X'323031332D30362D32302D30382D35312D3236','','wow/2013-06-20-08-51-26','?style=default','url',-2,101,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',18,19,0,'*',0),
	(190,'mainmenu','Navy Blue',X'323031332D30362D32302D30382D35322D3132','','wow/2013-06-20-08-52-12','?style=navyblue','url',-2,101,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',30,31,0,'*',0),
	(191,'mainmenu','Salmon',X'323031332D30362D32302D30382D35322D3335','','wow/2013-06-20-08-52-35','?style=salmon','url',-2,101,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',24,25,0,'*',0),
	(192,'mainmenu','Dove',X'323031332D30362D32302D30382D35322D3532','','wow/2013-06-20-08-52-52','?style=dove','url',-2,101,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',22,23,0,'*',0),
	(193,'mainmenu','Yellow',X'323031332D30362D32302D30382D35322D3533','','wow/2013-06-20-08-52-53','?style=yellow','url',-2,101,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',20,21,0,'*',0),
	(194,'mainmenu','Paper',X'323031332D30362D32302D30382D35322D3534','','wow/2013-06-20-08-52-54','?style=paper','url',-2,101,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',32,33,0,'*',0),
	(195,'mainmenu','Orange',X'323031332D30362D32302D30382D35322D3535','','wow/2013-06-20-08-52-55','?style=orange','url',-2,101,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',28,29,0,'*',0),
	(196,'mainmenu','Blue',X'323031332D30362D32302D30382D35322D3536','','wow/2013-06-20-08-52-56','?style=blue','url',-2,101,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',26,27,0,'*',0),
	(202,'main','com_postinstall',X'506F73742D696E7374616C6C6174696F6E206D65737361676573','','Post-installation messages','index.php?option=com_postinstall','component',0,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',99,100,0,'*',1),
	(211,'main','COM_WIDGETKIT',X'636F6D2D7769646765746B6974','','com-widgetkit','index.php?option=com_widgetkit','component',0,1,1,10005,0,'0000-00-00 00:00:00',0,1,'components/com_widgetkit/images/widgetkit_16.png',0,'',141,142,0,'',1),
	(213,'mainmenu','ZOO',X'7A6F6F2D7A6F6F','','zoo-zoo','index.php?option=com_zoo&view=item&layout=item','component',-2,1,1,10032,0,'0000-00-00 00:00:00',0,1,'',0,'{\"item_id\":\"233\",\"application\":\"8\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',35,40,0,'*',0),
	(214,'mainmenu','Blog',X'626C6F672D7A6F6F','','zoo-zoo/blog-zoo','index.php?option=com_zoo&view=frontpage&layout=frontpage','component',-2,213,2,10032,0,'0000-00-00 00:00:00',0,1,'',0,'{\"application\":\"1\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',36,37,0,'*',0),
	(215,'mainmenu','Page',X'706167652D7A6F6F','','zoo-zoo/page-zoo','index.php?option=com_zoo&view=item&layout=item','component',-2,213,2,10032,0,'0000-00-00 00:00:00',0,1,'',0,'{\"item_id\":\"177\",\"application\":\"8\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',38,39,0,'*',0),
	(216,'mainmenu','Inicio',X'707275656261','','prueba','index.php?option=com_zoo&view=frontpage&layout=frontpage','component',1,1,1,10032,0,'0000-00-00 00:00:00',0,1,'',0,'{\"application\":\"1\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',1,2,1,'*',0),
	(217,'mainmenu','Reino Vesperia',X'7665737065726961','','wow/vesperia','index.php?option=com_content&view=article&id=27','component',1,101,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',4,5,0,'*',0),
	(218,'mainmenu','El juego',X'76657370657269612D32','','wow/vesperia-2','index.php?option=com_content&view=article&id=2','component',1,101,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',6,7,0,'*',0),
	(219,'mainmenu','Comunidad',X'76657370657269612D33','','wow/vesperia-3','index.php?option=com_content&view=article&id=2','component',-2,101,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',10,11,0,'*',0),
	(220,'mainmenu','Soporte',X'76657370657269612D34','','wow/vesperia-4','index.php?option=com_content&view=article&id=2','component',1,101,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',12,13,0,'*',0),
	(221,'mainmenu','Tu cuenta',X'76657370657269612D35','','wow/vesperia-5','index.php?option=com_content&view=article&id=2','component',1,101,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',14,15,0,'*',0),
	(223,'main','COM_KUNENA',X'636F6D2D6B756E656E61','','com-kunena','index.php?option=com_kunena','component',0,1,1,10047,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-logo-white.png',0,'',143,166,0,'',1),
	(224,'main','COM_KUNENA_DASHBOARD',X'636F6D2D6B756E656E612D64617368626F617264','','com-kunena/com-kunena-dashboard','index.php?option=com_kunena&view=cpanel','component',0,223,2,10047,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-logo-white.png',0,'',144,145,0,'',1),
	(225,'main','COM_KUNENA_CATEGORY_MANAGER',X'636F6D2D6B756E656E612D63617465676F72792D6D616E61676572','','com-kunena/com-kunena-category-manager','index.php?option=com_kunena&view=categories','component',0,223,2,10047,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-categories.png',0,'',146,147,0,'',1),
	(226,'main','COM_KUNENA_USER_MANAGER',X'636F6D2D6B756E656E612D757365722D6D616E61676572','','com-kunena/com-kunena-user-manager','index.php?option=com_kunena&view=users','component',0,223,2,10047,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-users.png',0,'',148,149,0,'',1),
	(227,'main','COM_KUNENA_FILE_MANAGER',X'636F6D2D6B756E656E612D66696C652D6D616E61676572','','com-kunena/com-kunena-file-manager','index.php?option=com_kunena&view=attachments','component',0,223,2,10047,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-files.png',0,'',150,151,0,'',1),
	(228,'main','COM_KUNENA_EMOTICON_MANAGER',X'636F6D2D6B756E656E612D656D6F7469636F6E2D6D616E61676572','','com-kunena/com-kunena-emoticon-manager','index.php?option=com_kunena&view=smilies','component',0,223,2,10047,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-smileys.png',0,'',152,153,0,'',1),
	(229,'main','COM_KUNENA_RANK_MANAGER',X'636F6D2D6B756E656E612D72616E6B2D6D616E61676572','','com-kunena/com-kunena-rank-manager','index.php?option=com_kunena&view=ranks','component',0,223,2,10047,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-ranks.png',0,'',154,155,0,'',1),
	(230,'main','COM_KUNENA_TEMPLATE_MANAGER',X'636F6D2D6B756E656E612D74656D706C6174652D6D616E61676572','','com-kunena/com-kunena-template-manager','index.php?option=com_kunena&view=templates','component',0,223,2,10047,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-templates.png',0,'',156,157,0,'',1),
	(231,'main','COM_KUNENA_CONFIGURATION',X'636F6D2D6B756E656E612D636F6E66696775726174696F6E','','com-kunena/com-kunena-configuration','index.php?option=com_kunena&view=config','component',0,223,2,10047,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-prune.png',0,'',158,159,0,'',1),
	(232,'main','COM_KUNENA_PLUGIN_MANAGER',X'636F6D2D6B756E656E612D706C7567696E2D6D616E61676572','','com-kunena/com-kunena-plugin-manager','index.php?option=com_kunena&view=plugins','component',0,223,2,10047,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-plugins.png',0,'',160,161,0,'',1),
	(233,'main','COM_KUNENA_FORUM_TOOLS',X'636F6D2D6B756E656E612D666F72756D2D746F6F6C73','','com-kunena/com-kunena-forum-tools','index.php?option=com_kunena&view=tools','component',0,223,2,10047,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-config.png',0,'',162,163,0,'',1),
	(234,'main','COM_KUNENA_TRASH_MANAGER',X'636F6D2D6B756E656E612D74726173682D6D616E61676572','','com-kunena/com-kunena-trash-manager','index.php?option=com_kunena&view=trash','component',0,223,2,10047,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-trash.png',0,'',164,165,0,'',1),
	(235,'kunenamenu','Foro',X'666F726F','','foro','index.php?option=com_kunena&view=home&defaultmenu=237','component',1,1,1,10047,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"catids\":0}',167,184,0,'*',0),
	(236,'kunenamenu','Categorías',X'63617465676F72696173','','foro/categorias','index.php?option=com_kunena&view=category&layout=list','component',1,235,2,10047,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',168,169,0,'*',0),
	(237,'kunenamenu','Mensajes Recientes',X'72656369656E746573','','foro/recientes','index.php?option=com_kunena&view=topics&mode=replies','component',1,235,2,10047,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"topics_catselection\":\"\",\"topics_categories\":\"\",\"topics_time\":\"\"}',170,171,0,'*',0),
	(238,'kunenamenu','Nuevo Tema',X'6E7565766F2D74656D61','','foro/nuevo-tema','index.php?option=com_kunena&view=topic&layout=create','component',1,235,2,10047,0,'0000-00-00 00:00:00',0,2,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',172,173,0,'*',0),
	(239,'kunenamenu','Sin Respuesta',X'73696E2D72657370756573746173','','foro/sin-respuestas','index.php?option=com_kunena&view=topics&mode=noreplies','component',1,235,2,10047,0,'0000-00-00 00:00:00',0,2,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"topics_catselection\":\"\",\"topics_categories\":\"\",\"topics_time\":\"\"}',174,175,0,'*',0),
	(240,'kunenamenu','Mis Temas',X'6D69732D74656D6173','','foro/mis-temas','index.php?option=com_kunena&view=topics&layout=user&mode=default','component',1,235,2,10047,0,'0000-00-00 00:00:00',0,2,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"topics_catselection\":\"2\",\"topics_categories\":\"0\",\"topics_time\":\"\"}',176,177,0,'*',0),
	(241,'kunenamenu','Perfil',X'70657266696C','','foro/perfil','index.php?option=com_kunena&view=user','component',1,235,2,10047,0,'0000-00-00 00:00:00',0,2,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"integration\":1}',178,179,0,'*',0),
	(242,'kunenamenu','Ayuda',X'6179756461','','foro/ayuda','index.php?option=com_kunena&view=misc','component',1,235,2,10047,0,'0000-00-00 00:00:00',0,3,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"body\":\"Esta página de ayuda es un elemento de menú dentro del [b]Menú Kunena[\\/b], que permite una fácil navegación en su foro.\\n\\nUsted puede utilizar el Gestor de Menús de Joomla para editar los elementos en este menú. Por favor, vaya a [b]Administración[\\/b] >> [b]Menús[\\/b] >> [b]Menú Kunena[\\/b] >> [b]Ayuda[\\/b] para editar o eliminar este elemento del menú.\\n\\n En este elemento de menú puede utilizar texto sin formato, HTML o BBCode. Si desea enlazar un artículo a esta página, usted puede usar el artículo BBCode (con artículo id): [code][article=full]123[\\/article][\\/code]\\n\\n Si desea crear su propio menú para Kunena, por favor, empiece por crear el elemento [b]Inicio[\\/b] en primer lugar. En esa página se puede seleccionar un elemento de menú predeterminado, que será mostrado al ingresar a Kunena.\",\"body_format\":\"bbcode\"}',180,181,0,'*',0),
	(243,'kunenamenu','Buscar',X'627573636172','','foro/buscar','index.php?option=com_kunena&view=search','component',1,235,2,10047,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',182,183,0,'*',0),
	(244,'mainmenu','Foros',X'666F72756D73','','forums','index.php?Itemid=235','alias',1,1,1,0,0,'0000-00-00 00:00:00',0,2,'',0,'{\"aliasoptions\":\"235\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',185,186,0,'*',0),
	(245,'main','COM_COMMUNITY',X'636F6D2D636F6D6D756E697479','','com-community','index.php?option=com_community','component',0,1,1,10059,0,'0000-00-00 00:00:00',0,1,'components/com_community/assets/icons/community-favicon.png',0,'',187,188,0,'',1),
	(246,'mainmenu','Comunidad',X'6A6F6D736F6369616C','','wow/jomsocial','index.php?option=com_community&view=frontpage','component',1,101,2,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',8,9,0,'*',0),
	(247,'jomsocial','Perfil',X'70726F66696C65','','profile','index.php?option=com_community&view=profile','component',1,1,1,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',189,206,0,'*',0),
	(248,'jomsocial','Cambiar imagen de perfil',X'6368616E67652D70726F66696C652D70696374757265','','profile/change-profile-picture','index.php?option=com_community&view=profile&task=uploadAvatar','component',1,247,2,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',190,191,0,'*',0),
	(249,'jomsocial','Cambiar video del perfil',X'6368616E67652D70726F66696C652D766964656F','','profile/change-profile-video','index.php?option=com_community&view=profile&task=linkVideo','component',1,247,2,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',192,193,0,'*',0),
	(250,'jomsocial','Editar perfil',X'656469742D70726F66696C65','','profile/edit-profile','index.php?option=com_community&view=profile&task=edit','component',1,247,2,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',194,195,0,'*',0),
	(251,'jomsocial','Editar detalles',X'656469742D64657461696C73','','profile/edit-details','index.php?option=com_community&view=profile&task=editDetails','component',1,247,2,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',196,197,0,'*',0),
	(252,'jomsocial','Privacidad',X'70726976616379','','profile/privacy','index.php?option=com_community&view=profile&task=privacy','component',1,247,2,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',198,199,0,'*',0),
	(253,'jomsocial','Ajustes',X'707265666572656E636573','','profile/preferences','index.php?option=com_community&view=profile&task=preferences','component',1,247,2,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',200,201,0,'*',0),
	(254,'jomsocial','Personalización',X'637573746F6D697A652D6D792D70616765','','profile/customize-my-page','index.php?option=com_community&view=profile&task=editPage','component',1,247,2,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',202,203,0,'*',0),
	(255,'jomsocial','Notificaciones',X'6E6F74696669636174696F6E73','','profile/notifications','index.php?option=com_community&view=profile&task=notifications','component',1,247,2,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',204,205,0,'*',0),
	(256,'jomsocial','Usuarios',X'6D656D62657273','','members','index.php?option=com_community&view=search&task=browse','component',1,1,1,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',207,214,0,'*',0),
	(257,'jomsocial','Todos los usuarios',X'616C6C2D6D656D62657273','','members/all-members','index.php?option=com_community&view=search&task=browse','component',1,256,2,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',208,209,0,'*',0),
	(258,'jomsocial','Búsqueda',X'736561726368','','members/search','index.php?option=com_community&view=search','component',1,256,2,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',210,211,0,'*',0),
	(259,'jomsocial','Búsqueda avanzada',X'616476616E6365642D736561726368','','members/advanced-search','index.php?option=com_community&view=search&task=advancesearch','component',1,256,2,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',212,213,0,'*',0),
	(260,'jomsocial','Amigos',X'667269656E6473','','friends','index.php?option=com_community&view=friends','component',1,1,1,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',215,222,0,'*',0),
	(261,'jomsocial','Todos los amigos',X'616C6C2D667269656E6473','','friends/all-friends','index.php?option=com_community&view=friends','component',1,260,2,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',216,217,0,'*',0),
	(262,'jomsocial','Petición enviada',X'726571756573742D73656E74','','friends/request-sent','index.php?option=com_community&view=friends&task=sent','component',1,260,2,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',218,219,0,'*',0),
	(263,'jomsocial','Pendientes de aprovación',X'70656E64696E672D6D792D617070726F76616C','','friends/pending-my-approval','index.php?option=com_community&view=friends&task=pending','component',1,260,2,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',220,221,0,'*',0),
	(264,'jomsocial','Hermandades',X'67726F757073','','groups','index.php?option=com_community&view=groups&task=display','component',1,1,1,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',223,224,0,'*',0),
	(265,'jomsocial','Imágenes',X'70686F746F73','','photos','index.php?option=com_community&view=photos&task=display','component',1,1,1,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',225,226,0,'*',0),
	(266,'jomsocial','Vídeos',X'766964656F73','','videos','index.php?option=com_community&view=videos&task=display','component',1,1,1,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',227,228,0,'*',0),
	(267,'jomsocial','Eventos Ingame',X'6576656E7473','','events','index.php?option=com_community&view=events&task=display','component',1,1,1,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',229,230,0,'*',0),
	(268,'jomsocial','Bandeja de entrada',X'696E626F78','','inbox','index.php?option=com_community&view=inbox','component',1,1,1,10059,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',231,232,0,'*',0),
	(269,'main','com_zoo',X'636F6D2D7A6F6F','','com-zoo','index.php?option=com_zoo','component',0,1,1,10032,0,'0000-00-00 00:00:00',0,1,'components/com_zoo/assets/images/zoo_16.png',0,'',233,234,0,'',1),
	(271,'main','COM_JTRINITYCORE_MENU',X'636F6D2D6A7472696E697479636F72652D6D656E75','','com-jtrinitycore-menu','index.php?option=com_jtrinitycore','component',0,1,1,10106,0,'0000-00-00 00:00:00',0,1,'../media/com_jtrinitycore/images/jtrinitycore16x16.png',0,'',235,236,0,'',1);

/*!40000 ALTER TABLE `web_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_menu_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_menu_types`;

CREATE TABLE `web_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_menu_types` WRITE;
/*!40000 ALTER TABLE `web_menu_types` DISABLE KEYS */;

INSERT INTO `web_menu_types` (`id`, `menutype`, `title`, `description`)
VALUES
	(1,'mainmenu','Barra lateral','The main menu for the site'),
	(2,'topmenu','Menú inferior',''),
	(5,'kunenamenu','Menú Kunena','Este es el menú predeterminado de Kunena. Es usado como el menú de navegación superior de Kunena. Se puede publicar en cualquier posición de módulo. Simplemente despublique los artículos que no sean necesarios.'),
	(6,'jomsocial','Barra comunidad','Toolbar items for JomSocial toolbar');

/*!40000 ALTER TABLE `web_menu_types` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_messages`;

CREATE TABLE `web_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_messages_cfg
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_messages_cfg`;

CREATE TABLE `web_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_modules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_modules`;

CREATE TABLE `web_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned DEFAULT NULL,
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_modules` WRITE;
/*!40000 ALTER TABLE `web_modules` DISABLE KEYS */;

INSERT INTO `web_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`)
VALUES
	(2,0,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),
	(3,0,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),
	(4,0,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),
	(6,0,'Unread Messages','','',1,'header',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_unread',3,1,'',1,'*'),
	(7,0,'Online Users','','',2,'header',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_online',3,1,'',1,'*'),
	(8,0,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),
	(9,0,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),
	(10,0,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),
	(12,0,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),
	(13,0,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),
	(14,0,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),
	(15,0,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),
	(17,0,'Breadcrumbs','','',1,'breadcrumbs',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"showHere\":\"1\",\"showHome\":\"1\",\"homeText\":\"Home\",\"showLast\":\"1\",\"separator\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
	(19,77,'Sidebar Module','','Lorem ipsum dolor sit amet, <a href=\"#\">ipsum dolor</a> consectetur elit.',2,'sidebar-main',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(20,0,'Bottom A','','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.',2,'bottom-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(21,0,'Bottom A','','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.',3,'bottom-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(22,0,'Bottom A','','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.',4,'bottom-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(27,0,'Bottom B','','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.',1,'bottom-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(28,0,'Bottom B','','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.',2,'bottom-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(29,0,'Bottom B','','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.',3,'bottom-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(31,0,'Footer Menu','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"topmenu\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
	(32,90,'Footer','','Construido con HTML5 y CSS3 - Todos los derechos reservados a los respecivos creadores del contenido de esta página.',2,'footer',969,'2015-07-08 00:50:02','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(34,0,'Main Bottom','','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.',1,'main-bottom',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(35,0,'Main Bottom','','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.',2,'main-bottom',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(36,94,' Main Top','','<h3 class=\"uk-panel-title tm-heading-underline\">Main Top</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>',1,'main-top',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(37,95,'Main Top','','<h3 class=\"uk-panel-title tm-heading-underline\">Main Top</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>',1,'main-top',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(38,96,'Logo','','<p><img src=\"images/yootheme/logo.png\" alt=\"Dynamite.zone\" /></p>',1,'logo',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(40,98,'Search','','',1,'search',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_search',1,1,'{\"label\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"0\",\"button_pos\":\"right\",\"imagebutton\":\"0\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"uk-width-1-5\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(41,99,'Sub Menu','','',8,'sidebar-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"2\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(43,101,'Sidebar A','','<h3 class=\"uk-panel-title tm-heading-underline\">Sidebar A</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>',3,'sidebar-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(44,102,'Sidebar A','','<h3 class=\"uk-panel-title tm-heading-underline\">Sidebar A</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>',2,'sidebar-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(48,0,'Latest News','','',16,'sidebar-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_articles_latest',1,1,'{\"catid\":[\"7\"],\"count\":\"5\",\"show_featured\":\"\",\"ordering\":\"p_dsc\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(49,0,'Login','','',17,'sidebar-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"\",\"greeting\":\"1\",\"name\":\"0\",\"usesecure\":\"0\",\"usetext\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(57,0,'Sidebar B','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>',1,'sidebar-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(58,0,'Sidebar B','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>',2,'sidebar-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(59,0,'Sidebar B','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>',3,'sidebar-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(61,0,'Top Menu','','',1,'toolbar-l',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"topmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(62,113,'Top A','','<h3 class=\"tm-heading-large uk-h1 uk-margin-top\">\n  TOP A\n</h3>\n\n<p class=\"uk-article-lead\">\n  Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et.\n</p>\n\n<p>\n  Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat Lorem ipsum dolor sit amet consetetur.\n</p>\n\n<p class=\"uk-margin-large-bottom\">\n  <a class=\"uk-button uk-margin-top\" href=\"#\">Default Button</a>\n  <a class=\"uk-button uk-button-primary uk-margin-top\" href=\"#\">Primary Button</a>\n</p>',1,'top-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(70,121,'Home WoW Teaser','','[widgetkit id=55]',1,'top-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(71,0,'Top B','','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.',1,'top-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(72,0,'Top B','','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.',2,'top-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(73,0,'Top B','','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.',3,'top-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(74,0,'Top B','','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.',4,'top-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(76,0,'Twitter List','','',9,'sidebar-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_widgetkit_twitter',1,0,'{\"style_\":\"list\",\"from_user\":\"yootheme\",\"to_user\":\"\",\"ref_user\":\"\",\"hashtag\":\"\",\"word\":\"\",\"nots\":\"\",\"limit\":\"4\",\"image_size\":\"48\",\"show_image\":\"1\",\"show_author\":\"1\",\"show_date\":\"1\",\"consumer_key\":\"\",\"consumer_secret\":\"\",\"access_token\":\"\",\"access_token_secret\":\"\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(78,0,'Twitter Bubbles','','',9,'bottom-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_widgetkit_twitter',1,0,'{\"style_\":\"bubbles\",\"from_user\":\"yootheme\",\"to_user\":\"\",\"ref_user\":\"\",\"hashtag\":\"\",\"word\":\"\",\"nots\":\"\",\"limit\":\"4\",\"image_size\":\"48\",\"show_image\":\"1\",\"show_author\":\"1\",\"show_date\":\"1\",\"consumer_key\":\"\",\"consumer_secret\":\"\",\"access_token\":\"\",\"access_token_secret\":\"\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(79,0,'Twitter Single','','',3,'main-bottom',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_widgetkit_twitter',1,0,'{\"style_\":\"single\",\"from_user\":\"yootheme\",\"to_user\":\"\",\"ref_user\":\"\",\"hashtag\":\"\",\"word\":\"\",\"nots\":\"\",\"limit\":\"4\",\"image_size\":\"48\",\"show_image\":\"1\",\"show_author\":\"1\",\"show_date\":\"1\",\"consumer_key\":\"\",\"consumer_secret\":\"\",\"access_token\":\"\",\"access_token_secret\":\"\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(80,0,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
	(81,0,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
	(95,142,'Offcanvas','','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',3,'offcanvas',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(99,146,'Features UIkit','','<div class=\"uk-align-center uk-text-center uk-width-1-1 uk-width-medium-2-3\">\n  <img class=\"\" src=\"images/yootheme/demo/default/features_uikit.svg\" alt=\"Demo\" title=\"Get UIkit\" width=\"180\" height=\"180\">\n  \n  <h3 class=\"tm-heading-large uk-h2\">Built with UIkit</h3>\n  \n  <p>UIkit is a lightweight and modular front-end framework for developing fast and powerful web interfaces. It comes with a wide range of reusable and combinable components. All UIkit classes are namespaced, so they won\'t interfere with other frameworks and extensions you might be using. Here\'s an overview of the different UIkit components, which you can easily modify using the customizer.</p>\n  \n  <p><a class=\"uk-button uk-margin-top\" href=\"http://www.getuikit.com\" target=\"_blank\">Visit Website</a></p>\n</div>',1,'top-a',969,'2015-07-16 09:02:06','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(102,149,'Logo small','','<img src=\"images/yootheme/logo.png\" width=\"160\" height=\"50\" alt=\"Demo\">',1,'logo-small',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(104,151,'Sidebar Main Menu','','',1,'sidebar-menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(106,153,'Home WoW Conecta con nosotros','','<div class=\"uk-text-center\">\r\n<h1 class=\"tm-margin-large-top tm-heading-large\">Conecta con nosotros</h1>\r\n<p class=\"tm-text-large\">Si tienes preguntas, sugerencias o simplemente quieres enterarte de lo último, ¡Considerate satisfecho!<br class=\"uk-hidden-small\" />Danos una voz, ponnos un tuit, envianos señales de humo o pasate por nuestra página de facebook.</p>\r\n<p class=\"tm-margin-large-bottom\">\r\n    <a href=\"#\" class=\"uk-icon-button uk-icon-twitter\"></a>\r\n    <a href=\"#\" class=\"uk-icon-button uk-icon-facebook\"></a>\r\n    <a href=\"#\" class=\"uk-icon-button uk-icon-instagram\"></a>\r\n    <a href=\"#\" class=\"uk-icon-button uk-icon-google-plus\"></a>\r\n    <a href=\"#\" class=\"uk-icon-button uk-icon-youtube\"></a>\r\n</p>\r\n</div>',1,'main-bottom',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(108,156,'Login','','',2,'sidebar-menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"\",\"greeting\":\"1\",\"name\":\"1\",\"usesecure\":\"0\",\"usetext\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(110,158,'Home WoW Navegación','','<div class=\"uk-text-center\">\r\n<h1 class=\"tm-margin-large-top tm-heading-large\">Navegación</h1>\r\n<p class=\"tm-text-large tm-margin-large-bottom\">¿No estás seguro de qué hacer a continuación?<br class=\"uk-hidden-small\" /> Este es un buen punto de partida para cualquier jugador.</p>\r\n<div class=\"uk-grid\" data-uk-grid-margin=\"\" data-uk-grid-match=\"{target:\'.tm-overlay-caption\'}\">\r\n<div class=\"uk-width-1-1 uk-width-small-1-2 uk-width-medium-1-3 uk-width-large-1-4\" data-uk-scrollspy=\"{cls:\'uk-animation-fade\'}\">\r\n<div class=\"tm-overlay\"><a href=\"index.php?option=com_content&amp;view=article&amp;id=1&amp;Itemid=103\"> <img src=\"images/yootheme/home_wow_game.jpg\" alt=\"Descargar juego\" width=\"280\" height=\"460\" /></a>\r\n<div class=\"tm-overlay-caption\">\r\n<h2 class=\"tm-overlay-title\">El juego</h2>\r\n<p>Jugamos en la versión 4.3.4 de World Of Warcraft® Cataclysm.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"uk-width-1-1 uk-width-small-1-2 uk-width-medium-1-3 uk-width-large-1-4\" data-uk-scrollspy=\"{cls:\'uk-animation-fade\', delay:100}\">\r\n<div class=\"tm-overlay\"><a href=\"index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102\"> <img src=\"images/yootheme/home_wow_community.jpg\" alt=\"Foros\" width=\"280\" height=\"460\" /></a>\r\n<div class=\"tm-overlay-caption\">\r\n<h2 class=\"tm-overlay-title\">Comunidad</h2>\r\n<p>Discute, pregunta y comparte en los foros oficiales.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"uk-width-1-1 uk-width-small-1-2 uk-width-medium-1-3 uk-width-large-1-4\" data-uk-scrollspy=\"{cls:\'uk-animation-fade\', delay:200}\">\r\n<div class=\"tm-overlay\"><a href=\"index.php?option=com_content&amp;view=category&amp;layout=blog&amp;id=7&amp;Itemid=107\"> <img src=\"images/yootheme/home_wow_support.jpg\" alt=\"Soporte\" width=\"280\" height=\"460\" /></a>\r\n<div class=\"tm-overlay-caption\">\r\n<h2 class=\"tm-overlay-title\">Soporte</h2>\r\n<p>¿Tienes algún problema? Contacta con nosotros o abre un ticket en el juego</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"uk-width-1-1 uk-width-small-1-2 uk-hidden-medium uk-width-large-1-4\" data-uk-scrollspy=\"{cls:\'uk-animation-fade\', delay:300}\">\r\n<div class=\"tm-overlay\"><a href=\"index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102\"> <img src=\"images/yootheme/home_wow_account.jpg\" alt=\"Gestionar cuenta\" width=\"280\" height=\"460\" /></a>\r\n<div class=\"tm-overlay-caption\">\r\n<h2 class=\"tm-overlay-title\">Tu cuenta</h2>\r\n<p>Crea, gestiona o mejora tu cuenta de World Of Warcraft®.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>',2,'top-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(111,159,'Home menu MU','','<h3 class=\"uk-margin-large-bottom uk-margin-top\">Counter Strike</h3>\r\n<ul class=\"uk-list uk-list-line uk-margin-large-bottom\">\r\n  <li><a href=\"#\">Help</a></li>\r\n  <li><a href=\"#\">Returns &#38; Exchanges</a></li>\r\n  <li><a href=\"#\">Free Shipping</a></li>\r\n</ul>\r\n',1,'bottom-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(112,160,'Home menu Minecraft','','<h3 class=\"uk-margin-large-bottom uk-margin-top\">Minecraft</h3>\r\n<ul class=\"uk-list uk-list-line uk-margin-large-bottom\">\r\n  <li><a href=\"#\">About Us</a></li>\r\n  <li><a href=\"#\">Jobs</a></li>\r\n  <li><a href=\"#\">Contact Us</a></li>\r\n</ul>\r\n',1,'bottom-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(113,161,'Home menu GunZ','','<h3 class=\"uk-margin-large-bottom uk-margin-top\">GunZ: The Duel</h3>\r\n<ul class=\"uk-list uk-list-line uk-margin-large-bottom\">\r\n  <li><a href=\"#\">Warp Framework</a></li>\r\n  <li><a href=\"#\">Templates and Themes</a></li>\r\n  <li><a href=\"#\">Pagekit</a></li>\r\n</ul>\r\n',1,'bottom-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(114,162,'Home menu WoW','','<h3 class=\"uk-margin-large-bottom uk-margin-top\">World Of Warcraft</h3>\r\n<ul class=\"uk-list uk-list-line uk-margin-large-bottom\">\r\n  <li><a href=\"#\">New to YOOtheme</a></li>\r\n  <li><a href=\"#\">Documentation</a></li>\r\n  <li><a href=\"#\">Support</a></li>\r\n</ul>\r\n',1,'bottom-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(115,163,'Home menu ???','','<h3 class=\"uk-margin-large-bottom uk-margin-top\">???</h3>\r\n<ul class=\"uk-list uk-list-line uk-margin-large-bottom\">\r\n  <li><a href=\"#\">Warp Released</a></li>\r\n  <li><a href=\"#\">Nano3 Theme</a></li>\r\n  <li><a href=\"#\">UIkit released</a></li>\r\n</ul>\r\n',1,'bottom-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(116,164,'Top A','','<h3 class=\"tm-heading-large uk-h1 uk-margin-top\">\n  TOP A\n</h3>\n\n<p class=\"uk-article-lead\">\n  Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et.\n</p>\n\n<p>\n  Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat Lorem ipsum dolor sit amet consetetur.\n</p>\n\n<p class=\"uk-margin-large-bottom\">\n  <a class=\"uk-button uk-margin-top\" href=\"#\">Default Button</a>\n  <a class=\"uk-button uk-button-primary uk-margin-top\" href=\"#\">Primary Button</a>\n</p>',1,'top-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(118,166,'Offcanvas main menu','','',2,'offcanvas',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(119,167,'Offcanvas Search','','',1,'offcanvas',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_search',1,0,'{\"label\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"0\",\"button_pos\":\"left\",\"imagebutton\":\"0\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(121,169,'Toolbar right','','<p>Lorem ipsum dolor amet</p>',1,'toolbar-r',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(122,171,'Search sidebar','','',1,'sidebar-main',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_search',1,0,'{\"label\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"0\",\"button_pos\":\"left\",\"imagebutton\":\"0\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(123,172,'Module','','Any module can be placed in the drop-down menu position.',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(125,174,'Home WoW Comunidad','','<h1 class=\"tm-margin-large-top tm-heading-large\">Bienvenido a Dynamite.zone</h1>\r\n<p class=\"tm-text-large tm-margin-large-bottom\">Aquí viene Dynamite, el relanzamiento de uno de los mejores servidores de todos los tiemos - ¡Y no vuelve solo!<br class=\"uk-hidden-small\" />Descubre el comienzo de una gran comunidad.</p>\r\n<div class=\"uk-grid\" data-uk-grid-margin=\"\" data-uk-grid-match=\"{target:\'.uk-panel\'}\">\r\n<div class=\"uk-width-1-1 uk-width-medium-1-3\" data-uk-scrollspy=\"{cls:\'uk-animation-fade\'}\">\r\n<div class=\"uk-panel-teaser\">\r\n<div class=\"uk-overlay\"><img src=\"images/yootheme/home_cs.jpg\" alt=\"Counter Strike\" width=\"705\" height=\"460\" />\r\n<div class=\"uk-overlay-area\">\r\n<div class=\"uk-overlay-area-content\"><img src=\"images/yootheme/icon_cs2x.png\" alt=\"CS Icon\" width=\"96\" height=\"96\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<h3 class=\"tm-heading-underline uk-h2\">CS: Global Offensive</h3>\r\n<p>La última iteración del clásico shooter de PC.</p>\r\n</div>\r\n<div class=\"uk-width-1-1 uk-width-medium-1-3\" data-uk-scrollspy=\"{cls:\'uk-animation-fade\', delay:250}\">\r\n<div class=\"uk-panel-teaser\">\r\n<div class=\"uk-overlay\"><img src=\"images/yootheme/home_minecraft.jpg\" alt=\"Minecraft\" width=\"705\" height=\"460\" />\r\n<div class=\"uk-overlay-area\">\r\n<div class=\"uk-overlay-area-content\"><img src=\"images/yootheme/icon_minecraft2x.png\" alt=\"Minecraft Icon\" width=\"96\" height=\"96\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<h3 class=\"tm-heading-underline uk-h2\">Minecraft</h3>\r\n<p>En colocar bloques el límite es en tu imaginación.</p>\r\n</div>\r\n<div class=\"uk-width-1-1 uk-width-medium-1-3\" data-uk-scrollspy=\"{cls:\'uk-animation-fade\', delay:500}\">\r\n<div class=\"uk-panel-teaser\">\r\n<div class=\"uk-overlay\"><img src=\"images/yootheme/home_gunz.jpg\" alt=\"GunZ: The Duel\" width=\"705\" height=\"460\" />\r\n<div class=\"uk-overlay-area\">\r\n<div class=\"uk-overlay-area-content\"><img src=\"images/yootheme/icon_gunz2x.png\" alt=\"GunZ Icon\" width=\"96\" height=\"96\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<h3 class=\"tm-heading-underline uk-h2\">GunZ: The Duel</h3>\r\n<p>Un shooter masivo online con rasgos de rpg.</p>\r\n</div>\r\n</div>',1,'top-c',969,'2015-07-09 04:59:19','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(126,175,'Logo sidebar','','<img src=\"images/yootheme/demo/default/sidebar_logo.png\" width=\"210\" height=\"70\" alt=\"Demo\">',1,'sidebar-logo',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(127,181,'Top C','','Lorem ipsum dolor sit amet, constetur adipisicing elit, sed do eiusmod.',1,'top-c',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(128,182,'Top C','','Lorem ipsum dolor sit amet, constetur adipisicing elit, sed do eiusmod.',1,'top-c',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(129,183,'Top C','','Lorem ipsum dolor sit amet, constetur adipisicing elit, sed do eiusmod.',1,'top-c',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(130,184,'Top C','','Lorem ipsum dolor sit amet, constetur adipisicing elit, sed do eiusmod.',1,'top-c',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(131,186,'Sidebar A','','<h3 class=\"uk-panel-title tm-heading-underline\">Sidebar A</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>',2,'sidebar-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(132,188,'ZOO Category','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_zoocategory',1,1,'',0,'*'),
	(133,189,'ZOO Comment','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_zoocomment',1,1,'',0,'*'),
	(134,190,'ZOO Item','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_zooitem',1,1,'',0,'*'),
	(135,191,'ZOO Quick Icons','','',5,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_zooquickicon',1,1,'',1,'*'),
	(136,192,'ZOO Tag','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_zootag',1,1,'',0,'*'),
	(137,0,'ZOO Category','','',10,'sidebar-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_zoocategory',1,1,'{\"theme\":\"uikit_list\",\"category\":\"\",\"application\":\"1\",\"depth\":\"0\",\"add_count\":\"0\",\"menu_item\":\"\",\"moduleclass_sfx\":\"\"}',0,'*'),
	(138,0,'ZOO Quick Icons','','',5,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_zooquickicon',1,1,'',1,'*'),
	(139,0,'Blog Authors','','',5,'sidebar-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_zooitem',1,1,'{\"theme\":\"uikit_list\",\"layout\":\"uikit\",\"media_position\":\"left\",\"application\":\"1\",\"mode\":\"types\",\"type\":\"author\",\"category\":\"\",\"item_id\":\"0\",\"subcategories\":\"1\",\"count\":\"4\",\"order\":[\"_itemname\",\"\",\"\"],\"moduleclass_sfx\":\"\"}',0,'*'),
	(140,194,'Logo WoW','','<img src=\"images/yootheme/logo.png\" alt=\"Dynamite.zone\" />',1,'logo',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(141,195,'Logo WoW small','','<img src=\"images/yootheme/logo.png\" width=\"160\" height=\"50\" alt=\"Demo\">',1,'logo-small',969,'2015-07-08 23:34:17','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(142,196,'Home Teaser','','[widgetkit id=57]',1,'top-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(143,197,'Home Navegación','','<div class=\"uk-text-center\">\r\n\r\n<div class=\"uk-grid\" data-uk-grid-margin=\"\" data-uk-grid-match=\"{target:\'.tm-overlay-caption\'}\">\r\n<div class=\"uk-width-1-1 uk-width-small-1-2 uk-width-medium-1-3 uk-width-large-1-4\" data-uk-scrollspy=\"{cls:\'uk-animation-fade\'}\">\r\n<div class=\"tm-overlay\"><a href=\"index.php?option=com_content&amp;view=article&amp;id=1&amp;Itemid=103\"> <img src=\"images/yootheme/home_teaser_gunz.jpg\" alt=\"GunZ\" width=\"280\" height=\"460\" /></a>\r\n<div class=\"tm-overlay-caption\">\r\n<h2 class=\"tm-overlay-title\">GunZ</h2>\r\n<p>Un shooter masivo online con rasgos de rpg.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"uk-width-1-1 uk-width-small-1-2 uk-width-medium-1-3 uk-width-large-1-4\" data-uk-scrollspy=\"{cls:\'uk-animation-fade\', delay:100}\">\r\n<div class=\"tm-overlay\"><a href=\"index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102\"> <img src=\"images/yootheme/home_teaser_minecraft.jpg\" alt=\"Minecraft\" width=\"280\" height=\"460\" /></a>\r\n<div class=\"tm-overlay-caption\">\r\n<h2 class=\"tm-overlay-title\">Minecraft</h2>\r\n<p>En colocar bloques el límite es tu imaginación.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"uk-width-1-1 uk-width-small-1-2 uk-width-medium-1-3 uk-width-large-1-4\" data-uk-scrollspy=\"{cls:\'uk-animation-fade\', delay:200}\">\r\n<div class=\"tm-overlay\"><a href=\"index.php?option=com_content&amp;view=category&amp;layout=blog&amp;id=7&amp;Itemid=107\"> <img src=\"images/yootheme/home_teaser_wow.jpg\" alt=\"WoW\" width=\"280\" height=\"460\" /></a>\r\n<div class=\"tm-overlay-caption\">\r\n<h2 class=\"tm-overlay-title\">World of Warcraft</h2>\r\n<p>Únete a de millones en el mejor MMORPG que existe.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"uk-width-1-1 uk-width-small-1-2 uk-hidden-medium uk-width-large-1-4\" data-uk-scrollspy=\"{cls:\'uk-animation-fade\', delay:300}\">\r\n<div class=\"tm-overlay\"><a href=\"index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102\"> <img src=\"images/yootheme/home_teaser_cs.jpg\" alt=\"Counter Strike\" width=\"280\" height=\"460\" /></a>\r\n<div class=\"tm-overlay-caption\">\r\n<h2 class=\"tm-overlay-title\">CS: Global Offensive</h2>\r\n<p>La última iteración del clásico shooter de PC.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>',2,'top-b',969,'2015-07-15 00:36:32','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(144,201,'JS Active Groups','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_activegroups',1,1,'',0,'*'),
	(145,202,'JS Activity Stream','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_activitystream',1,1,'',0,'*'),
	(146,203,'Eventos Ingame','Eventos JS Community','',1,'js_side_frontpage',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_community_events',1,1,'{\"moduleclass_sfx\":\"\",\"default\":\"5\",\"upcomingOnly\":0,\"layout\":\"_:default\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(147,204,'Hermandades','Hermandades JS Community','',1,'js_side_frontpage_bottom',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_community_groups',1,1,'{\"moduleclass_sfx\":\"joms-module\",\"default\":\"5\",\"layout\":\"_:default\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(148,205,'Usuarios','Usuarios JS Community','',1,'js_side_frontpage_top',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_community_members',1,1,'{\"moduleclass_sfx\":\"\",\"default\":\"20\",\"list_filters\":[],\"default_filter\":\"newest\",\"show_total_members\":\"1\",\"layout\":\"_:default\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(149,206,'JS Photos Module','','',1,'js_side_frontpage',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_community_photos',1,1,'{\"default\":20}',0,'*'),
	(150,207,'JS Quick Search','','',1,'js_side_frontpage',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_community_quicksearch',1,1,'{\"default\":\"\"}',0,'*'),
	(151,208,'JS Nearby Events Search','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_community_search_nearbyevents',1,1,'',0,'*'),
	(152,209,'JS Videos','','',1,'js_side_frontpage',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_community_videos',1,1,'{\"default\":3}',0,'*'),
	(153,210,'JS Whos Online','','',1,'js_side_frontpage_top',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_community_whosonline',1,1,'{\"default\":20}',0,'*'),
	(154,211,'JS Dating Search','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_datingsearch',1,1,'',0,'*'),
	(155,212,'JS Hello Me','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_hellome',1,1,'',0,'*'),
	(156,213,'JS JomSocial Connect','','',0,'',969,'2015-07-16 09:01:34','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_jomsocialconnect',1,1,'',0,'*'),
	(157,214,'JS Latest Discussion','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_latestdiscussion',1,1,'',0,'*'),
	(158,215,'JS Latest group posts','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_latestgrouppost',1,1,'',0,'*'),
	(159,216,'JS Jomsocial Notification','uk-align-center','',2,'sidebar-logo',969,'2015-07-16 09:41:13','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_notify',1,1,'{\"cache\":\"0\",\"customCache\":\"1\",\"show_global_notification\":\"1\",\"show_friend_request\":\"1\",\"enable_private_message\":\"1\",\"moduleclass_sfx\":\"\",\"layout\":\"_:default\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(160,217,'JS Photo Comments','','',0,'',969,'2015-07-16 09:01:52','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_photocomments',1,1,'',0,'*'),
	(161,218,'JS JomSocial Statistics','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_statistics',1,1,'',0,'*'),
	(162,219,'JS Top Members','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_topmembers',1,1,'',0,'*'),
	(163,220,'JS Video Comments','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_videocomments',1,1,'',0,'*');

/*!40000 ALTER TABLE `web_modules` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_modules_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_modules_menu`;

CREATE TABLE `web_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_modules_menu` WRITE;
/*!40000 ALTER TABLE `web_modules_menu` DISABLE KEYS */;

INSERT INTO `web_modules_menu` (`moduleid`, `menuid`)
VALUES
	(0,0),
	(1,103),
	(2,0),
	(3,0),
	(4,0),
	(6,0),
	(7,0),
	(8,0),
	(9,0),
	(10,0),
	(12,0),
	(13,0),
	(14,0),
	(15,0),
	(17,0),
	(19,103),
	(20,103),
	(21,103),
	(22,103),
	(27,103),
	(28,103),
	(29,103),
	(31,0),
	(32,0),
	(34,103),
	(35,103),
	(36,103),
	(37,103),
	(38,-216),
	(38,-209),
	(38,-208),
	(38,-207),
	(38,-206),
	(38,-123),
	(38,-122),
	(38,-121),
	(38,-120),
	(38,-119),
	(38,-118),
	(38,-117),
	(38,-116),
	(38,-115),
	(38,-114),
	(38,-113),
	(38,-112),
	(38,-111),
	(38,-110),
	(38,-109),
	(38,-108),
	(38,-105),
	(38,-101),
	(40,0),
	(41,107),
	(41,124),
	(41,125),
	(41,126),
	(41,127),
	(41,128),
	(41,129),
	(41,133),
	(41,134),
	(41,135),
	(41,140),
	(41,141),
	(41,142),
	(41,143),
	(41,144),
	(41,151),
	(41,155),
	(41,186),
	(42,103),
	(42,108),
	(42,109),
	(42,110),
	(42,111),
	(42,112),
	(42,113),
	(42,114),
	(42,115),
	(42,116),
	(42,117),
	(42,118),
	(42,119),
	(42,120),
	(42,121),
	(42,122),
	(42,123),
	(43,103),
	(44,103),
	(48,107),
	(48,124),
	(48,128),
	(49,107),
	(49,124),
	(49,128),
	(57,103),
	(58,103),
	(59,103),
	(61,103),
	(62,103),
	(70,101),
	(71,103),
	(72,103),
	(73,103),
	(74,103),
	(76,136),
	(78,136),
	(79,136),
	(80,0),
	(81,0),
	(94,0),
	(95,103),
	(99,104),
	(102,-216),
	(102,-105),
	(102,-101),
	(104,0),
	(106,101),
	(108,0),
	(110,101),
	(111,101),
	(112,101),
	(113,101),
	(114,101),
	(115,101),
	(116,103),
	(118,0),
	(119,0),
	(121,103),
	(122,103),
	(123,103),
	(125,101),
	(126,0),
	(127,103),
	(128,103),
	(129,103),
	(130,103),
	(131,103),
	(132,214),
	(133,214),
	(134,214),
	(135,0),
	(135,214),
	(136,214),
	(137,214),
	(138,0),
	(138,214),
	(139,214),
	(140,101),
	(140,105),
	(141,101),
	(141,105),
	(142,216),
	(143,216),
	(146,0),
	(147,0),
	(148,0),
	(149,0),
	(150,0),
	(152,0),
	(153,0),
	(159,0);

/*!40000 ALTER TABLE `web_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_newsfeeds
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_newsfeeds`;

CREATE TABLE `web_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_overrider
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_overrider`;

CREATE TABLE `web_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_postinstall_messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_postinstall_messages`;

CREATE TABLE `web_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `web_postinstall_messages` DISABLE KEYS */;

INSERT INTO `web_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`)
VALUES
	(1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),
	(2,700,'COM_CPANEL_MSG_EACCELERATOR_TITLE','COM_CPANEL_MSG_EACCELERATOR_BODY','COM_CPANEL_MSG_EACCELERATOR_BUTTON','com_cpanel',1,'action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_condition','3.2.0',1),
	(3,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),
	(4,700,'COM_CPANEL_MSG_PHPVERSION_TITLE','COM_CPANEL_MSG_PHPVERSION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/phpversion.php','admin_postinstall_phpversion_condition','3.2.2',1),
	(5,700,'COM_CPANEL_MSG_HTACCESS_TITLE','COM_CPANEL_MSG_HTACCESS_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/htaccess.php','admin_postinstall_htaccess_condition','3.4.0',1),
	(6,700,'COM_CPANEL_MSG_ROBOTS_TITLE','COM_CPANEL_MSG_ROBOTS_BODY','','com_cpanel',1,'message','','','','','3.3.0',1),
	(7,700,'COM_CPANEL_MSG_LANGUAGEACCESS340_TITLE','COM_CPANEL_MSG_LANGUAGEACCESS340_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/languageaccess340.php','admin_postinstall_languageaccess340_condition','3.4.1',1);

/*!40000 ALTER TABLE `web_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_redirect_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_redirect_links`;

CREATE TABLE `web_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_redirect_links` WRITE;
/*!40000 ALTER TABLE `web_redirect_links` DISABLE KEYS */;

INSERT INTO `web_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`, `header`)
VALUES
	(1,'http://localhost/~eThyrie/dynamite/index.php/home/icons','','http://localhost/~eThyrie/dynamite/index.php','',1,0,'2015-07-07 19:50:53','0000-00-00 00:00:00',301),
	(2,'http://localhost/~eThyrie/dynamite/index.php/wow/icons','','http://localhost/~eThyrie/dynamite/index.php','',1,0,'2015-07-07 19:51:17','0000-00-00 00:00:00',301),
	(3,'http://localhost/~eThyrie/dynamite/index.php/wow/phantasia-2','','http://localhost/~eThyrie/dynamite/index.php/wow/phantasia','',1,0,'2015-07-09 05:49:47','0000-00-00 00:00:00',301);

/*!40000 ALTER TABLE `web_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_schemas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_schemas`;

CREATE TABLE `web_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_schemas` WRITE;
/*!40000 ALTER TABLE `web_schemas` DISABLE KEYS */;

INSERT INTO `web_schemas` (`extension_id`, `version_id`)
VALUES
	(700,'3.4.0-2015-02-26'),
	(10106,'1.0');

/*!40000 ALTER TABLE `web_schemas` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_session`;

CREATE TABLE `web_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_session` WRITE;
/*!40000 ALTER TABLE `web_session` DISABLE KEYS */;

INSERT INTO `web_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`)
VALUES
	('pircct09q8ogr5lj5td2beaml4',1,0,'1437192430','__default|a:9:{s:15:\"session.counter\";i:32;s:19:\"session.timer.start\";i:1437190352;s:18:\"session.timer.last\";i:1437192429;s:17:\"session.timer.now\";i:1437192429;s:22:\"session.client.browser\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":2:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":5:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}s:13:\"com_installer\";O:8:\"stdClass\":3:{s:7:\"message\";s:0:\"\";s:17:\"extension_message\";s:0:\"\";s:12:\"redirect_url\";N;}s:11:\"com_modules\";O:8:\"stdClass\":1:{s:7:\"modules\";O:8:\"stdClass\":1:{s:6:\"filter\";O:8:\"stdClass\":1:{s:18:\"client_id_previous\";i:0;}}}s:11:\"com_plugins\";O:8:\"stdClass\":2:{s:7:\"plugins\";O:8:\"stdClass\":4:{s:6:\"filter\";O:8:\"stdClass\":4:{s:6:\"search\";s:7:\"trinity\";s:6:\"access\";i:0;s:7:\"enabled\";s:0:\"\";s:6:\"folder\";s:0:\"\";}s:8:\"ordercol\";s:6:\"folder\";s:9:\"orderdirn\";s:3:\"asc\";s:10:\"limitstart\";i:0;}s:4:\"edit\";O:8:\"stdClass\":1:{s:6:\"plugin\";O:8:\"stdClass\":2:{s:2:\"id\";a:0:{}s:4:\"data\";N;}}}s:6:\"global\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"limit\";i:20;}}}s:9:\"separator\";s:1:\".\";}s:4:\"user\";O:5:\"JUser\":29:{s:9:\"\\0\\0\\0isRoot\";b:1;s:2:\"id\";s:3:\"969\";s:4:\"name\";s:10:\"Super User\";s:8:\"username\";s:7:\"ethyrie\";s:5:\"email\";s:14:\"ethyrie@me.com\";s:8:\"password\";s:60:\"$2y$10$grrkZaOdej1tdZbId7PafuVSMx5J5NvfrONXt.9dWqUWctqZ9Vv6C\";s:14:\"password_clear\";s:0:\"\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2015-07-05 15:27:29\";s:13:\"lastvisitDate\";s:19:\"2015-07-17 23:03:48\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:23:\"{\"update_cache_list\":1}\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:12:\"requireReset\";s:1:\"0\";s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":2:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:17:\"update_cache_list\";i:1;}s:9:\"separator\";s:1:\".\";}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\\0\\0\\0_authLevels\";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:13:\"\\0\\0\\0userHelper\";O:18:\"JUserWrapperHelper\":0:{}s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;s:6:\"otpKey\";s:0:\"\";s:4:\"otep\";s:0:\"\";s:10:\"superadmin\";b:1;}s:13:\"session.token\";s:32:\"360d430ad0c07ddf85d86232d81e1807\";s:16:\"jomsocial_userip\";s:3:\"::1\";}',969,'ethyrie');

/*!40000 ALTER TABLE `web_session` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_tags`;

CREATE TABLE `web_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_tags` WRITE;
/*!40000 ALTER TABLE `web_tags` DISABLE KEYS */;

INSERT INTO `web_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`)
VALUES
	(1,0,0,33,0,'','ROOT',X'726F6F74','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',969,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(2,1,1,2,1,'cck','CCK',X'63636B','','',1,0,'0000-00-00 00:00:00',1,'','','','{\"author\":\"\",\"robots\":\"\",\"tags\":null}',969,'2013-05-12 13:19:42','',42,'2013-05-12 13:21:50','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(3,1,3,4,1,'cms','CMS',X'636D73','','',1,0,'0000-00-00 00:00:00',1,'','','','{\"author\":\"\",\"robots\":\"\",\"tags\":null}',969,'2013-05-12 13:19:48','',42,'2013-05-12 13:21:57','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(4,1,5,6,1,'content-application-builder','Content Application Builder',X'636F6E74656E742D6170706C69636174696F6E2D6275696C646572','','',1,0,'0000-00-00 00:00:00',1,'','','','{\"author\":\"\",\"robots\":\"\",\"tags\":null}',969,'2013-05-12 13:19:57','',42,'2013-05-12 13:22:08','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(5,1,7,8,1,'css','CSS',X'637373','','',1,0,'0000-00-00 00:00:00',1,'','','','{\"author\":\"\",\"robots\":\"\",\"tags\":null}',969,'2013-05-12 13:20:16','',0,'0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','',1,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(6,1,9,10,1,'design','Design',X'64657369676E','','',1,0,'0000-00-00 00:00:00',1,'','','','{\"author\":\"\",\"robots\":\"\",\"tags\":null}',969,'2013-05-12 13:20:22','',0,'0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','',3,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(7,1,11,12,1,'framework','Framework',X'6672616D65776F726B','','',1,0,'0000-00-00 00:00:00',1,'','','','{\"author\":\"\",\"robots\":\"\",\"tags\":null}',969,'2013-05-12 13:20:28','',0,'0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','',1,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(8,1,13,14,1,'icon','Icon',X'69636F6E','','',1,0,'0000-00-00 00:00:00',1,'','','','{\"author\":\"\",\"robots\":\"\",\"tags\":null}',969,'2013-05-12 13:20:43','',0,'0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(9,1,15,16,1,'icons','Icons',X'69636F6E73','','',1,0,'0000-00-00 00:00:00',1,'','','','{\"author\":\"\",\"robots\":\"\",\"tags\":null}',969,'2013-05-12 13:20:46','',0,'0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(10,1,17,18,1,'illustrations','Illustrations',X'696C6C757374726174696F6E73','','',1,0,'0000-00-00 00:00:00',1,'','','','{\"author\":\"\",\"robots\":\"\",\"tags\":null}',969,'2013-05-12 13:20:54','',0,'0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(11,1,19,20,1,'joomla','Joomla',X'6A6F6F6D6C61','','',1,0,'0000-00-00 00:00:00',1,'','','','{\"author\":\"\",\"robots\":\"\",\"tags\":null}',969,'2013-05-12 13:20:59','',0,'0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','',2,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(12,1,21,22,1,'js','JavaScript',X'6A73','','',1,0,'0000-00-00 00:00:00',1,'','','','{\"author\":\"\",\"robots\":\"\",\"tags\":null}',969,'2013-05-12 13:21:04','',42,'2013-05-12 13:25:27','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(13,1,23,24,1,'php','PHP',X'706870','','',1,0,'0000-00-00 00:00:00',1,'','','','{\"author\":\"\",\"robots\":\"\",\"tags\":null}',969,'2013-05-12 13:21:09','',0,'0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(14,1,25,26,1,'theme','Theme',X'7468656D65','','',1,0,'0000-00-00 00:00:00',1,'','','','{\"author\":\"\",\"robots\":\"\",\"tags\":null}',969,'2013-05-12 13:21:19','',0,'0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','',1,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(15,1,27,28,1,'themes','Themes',X'7468656D6573','','',1,0,'0000-00-00 00:00:00',1,'','','','{\"author\":\"\",\"robots\":\"\",\"tags\":null}',969,'2013-05-12 13:21:23','',0,'0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','',4,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(16,1,29,30,1,'web-design','Web Design',X'7765622D64657369676E','','',1,0,'0000-00-00 00:00:00',1,'','','','{\"author\":\"\",\"robots\":\"\",\"tags\":null}',969,'2013-05-12 13:21:30','',42,'2013-05-12 13:22:19','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','',2,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(17,1,31,32,1,'wordpress','Wordpress',X'776F72647072657373','','',1,0,'0000-00-00 00:00:00',1,'','','','{\"author\":\"\",\"robots\":\"\",\"tags\":null}',969,'2013-05-12 13:21:36','',0,'0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','',1,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `web_tags` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_template_styles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_template_styles`;

CREATE TABLE `web_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_template_styles` WRITE;
/*!40000 ALTER TABLE `web_template_styles` DISABLE KEYS */;

INSERT INTO `web_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`)
VALUES
	(3,'atomic',0,'0','Atomic - Default','{}'),
	(4,'beez_20',0,'0','Beez2 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
	(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
	(6,'beez5',0,'0','Beez5 - Default-Fruit Shop','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/sampledata\\/fruitshop\\/fruits.gif\",\"sitetitle\":\"Matuna Market \",\"sitedescription\":\"Fruit Shop Sample Site\",\"navposition\":\"left\",\"html5\":\"0\"}'),
	(7,'yoo_peak',0,'1','yoo_peak - Default','{\"config\":\"\"}'),
	(8,'protostar',0,'0','protostar - Default','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
	(9,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}'),
	(10,'beez3',0,'0','beez3 - Default','{\"wrapperSmall\":53,\"wrapperLarge\":72,\"logo\":\"\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"bootstrap\":\"\",\"templatecolor\":\"nature\",\"headerImage\":\"\",\"backgroundcolor\":\"#eee\"}');

/*!40000 ALTER TABLE `web_template_styles` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_ucm_base
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_ucm_base`;

CREATE TABLE `web_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_ucm_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_ucm_content`;

CREATE TABLE `web_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';



# Volcado de tabla web_ucm_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_ucm_history`;

CREATE TABLE `web_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_update_sites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_update_sites`;

CREATE TABLE `web_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Sites';

LOCK TABLES `web_update_sites` WRITE;
/*!40000 ALTER TABLE `web_update_sites` DISABLE KEYS */;

INSERT INTO `web_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`)
VALUES
	(1,'Joomla! Core','collection','http://update.joomla.org/core/sts/list_sts.xml',1,1437190378,''),
	(2,'Joomla! Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1437190378,''),
	(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist_3.xml',1,0,''),
	(4,'Joomla! Update Component Update Site','extension','http://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,0,''),
	(5,'Weblinks Update Site','extension','https://raw.githubusercontent.com/joomla-extensions/weblinks/master/manifest.xml',1,0,''),
	(7,'Kunena 4.0 Update Site','collection','http://update.kunena.org/4.0/list.xml',1,0,''),
	(8,'YOOtheme Installer','extension','http://yootheme.com/api/update/installer_yootheme_j33.xml',1,0,''),
	(9,'ZOO','extension','http://yootheme.com/api/update/zoo_full_j33.xml',1,1437190376,'');

/*!40000 ALTER TABLE `web_update_sites` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_update_sites_extensions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_update_sites_extensions`;

CREATE TABLE `web_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

LOCK TABLES `web_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `web_update_sites_extensions` DISABLE KEYS */;

INSERT INTO `web_update_sites_extensions` (`update_site_id`, `extension_id`)
VALUES
	(1,700),
	(2,700),
	(3,600),
	(3,10031),
	(4,28),
	(5,801),
	(7,10048),
	(8,10103),
	(9,10042);

/*!40000 ALTER TABLE `web_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_updates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_updates`;

CREATE TABLE `web_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates';

LOCK TABLES `web_updates` WRITE;
/*!40000 ALTER TABLE `web_updates` DISABLE KEYS */;

INSERT INTO `web_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`)
VALUES
	(1,9,10042,'ZOO 3.3 - Joomla 3.x Extension + Apps','','pkg_zoo','package','',0,'3.3.7','','http://yootheme.com/api/update/zoo_full_j33.xml','http://yootheme.com','');

/*!40000 ALTER TABLE `web_updates` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_user_keys
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_user_keys`;

CREATE TABLE `web_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_user_notes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_user_notes`;

CREATE TABLE `web_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla web_user_profiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_user_profiles`;

CREATE TABLE `web_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';



# Volcado de tabla web_user_usergroup_map
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_user_usergroup_map`;

CREATE TABLE `web_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `web_user_usergroup_map` DISABLE KEYS */;

INSERT INTO `web_user_usergroup_map` (`user_id`, `group_id`)
VALUES
	(969,8);

/*!40000 ALTER TABLE `web_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_usergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_usergroups`;

CREATE TABLE `web_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_usergroups` WRITE;
/*!40000 ALTER TABLE `web_usergroups` DISABLE KEYS */;

INSERT INTO `web_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`)
VALUES
	(1,0,1,18,'Public'),
	(2,1,8,15,'Registered'),
	(3,2,9,14,'Author'),
	(4,3,10,13,'Editor'),
	(5,4,11,12,'Publisher'),
	(6,1,4,7,'Manager'),
	(7,6,5,6,'Administrator'),
	(8,1,16,17,'Super Users'),
	(9,1,2,3,'Guest');

/*!40000 ALTER TABLE `web_usergroups` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_users`;

CREATE TABLE `web_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_users` WRITE;
/*!40000 ALTER TABLE `web_users` DISABLE KEYS */;

INSERT INTO `web_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`)
VALUES
	(969,'Super User','ethyrie','ethyrie@me.com','$2y$10$grrkZaOdej1tdZbId7PafuVSMx5J5NvfrONXt.9dWqUWctqZ9Vv6C',0,1,'2015-07-05 15:27:29','2015-07-18 03:32:34','0','{\"update_cache_list\":1}','0000-00-00 00:00:00',0,'','',0);

/*!40000 ALTER TABLE `web_users` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_viewlevels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_viewlevels`;

CREATE TABLE `web_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_viewlevels` WRITE;
/*!40000 ALTER TABLE `web_viewlevels` DISABLE KEYS */;

INSERT INTO `web_viewlevels` (`id`, `title`, `ordering`, `rules`)
VALUES
	(1,'Public',0,'[1]'),
	(2,'Registered',1,'[6,2,8]'),
	(3,'Special',2,'[6,3,8]'),
	(5,'Guest',0,'[9]'),
	(6,'Super Users',0,'[8]');

/*!40000 ALTER TABLE `web_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_weblinks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_weblinks`;

CREATE TABLE `web_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_weblinks` WRITE;
/*!40000 ALTER TABLE `web_weblinks` DISABLE KEYS */;

INSERT INTO `web_weblinks` (`id`, `catid`, `title`, `alias`, `url`, `description`, `hits`, `state`, `checked_out`, `checked_out_time`, `ordering`, `access`, `params`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `images`)
VALUES
	(1,9,'YOOtheme',X'796F6F7468656D65','http://www.yootheme.com','',2,1,0,'0000-00-00 00:00:00',1,1,'{\"target\":\"\",\"width\":\"\",\"height\":\"\",\"count_clicks\":\"\"}','*','2012-01-22 12:45:30',969,'','2012-01-22 12:46:11',42,'','','',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,''),
	(2,9,'Icons',X'69636F6E73','http://www.yootheme.com/icons','',0,1,0,'0000-00-00 00:00:00',2,1,'{\"target\":\"\",\"width\":\"\",\"height\":\"\",\"count_clicks\":\"\"}','*','2012-01-22 12:45:46',969,'','2012-01-22 12:46:06',42,'','','',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,''),
	(3,9,'ZOO',X'7A6F6F','http://www.yootheme.com/zoo','',0,1,0,'0000-00-00 00:00:00',3,1,'{\"target\":\"\",\"width\":\"\",\"height\":\"\",\"count_clicks\":\"\"}','*','2012-01-22 12:45:58',969,'','2012-01-22 12:46:15',42,'','','',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'');

/*!40000 ALTER TABLE `web_weblinks` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_widgetkit_widget
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_widgetkit_widget`;

CREATE TABLE `web_widgetkit_widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `style` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_widgetkit_widget` WRITE;
/*!40000 ALTER TABLE `web_widgetkit_widget` DISABLE KEYS */;

INSERT INTO `web_widgetkit_widget` (`id`, `type`, `style`, `name`, `content`, `created`, `modified`)
VALUES
	(10,'slideshow','default','Demo Default','{\"type\":\"slideshow\",\"id\":10,\"name\":\"Demo Default\",\"settings\":{\"style\":\"default\",\"autoplay\":1,\"interval\":5000,\"width\":600,\"height\":300,\"duration\":500,\"index\":0,\"order\":\"default\",\"navigation\":1,\"buttons\":1,\"slices\":15,\"animated\":\"randomFx\",\"caption_animation_duration\":500},\"style\":\"default\",\"items\":{\"4dd00c3ee01f3\":{\"title\":\"Slide 1\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/image1.jpg\\\" width=\\\"600\\\" height=\\\"300\\\" alt=\\\"Image 01\\\"><\\/a>\",\"caption\":\"\",\"navigation\":\"\"},\"4dd00c473c0f2\":{\"title\":\"Slide 2\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/image2.jpg\\\" width=\\\"600\\\" height=\\\"300\\\" alt=\\\"Image 02\\\"><\\/a>\",\"caption\":\"This is a HTML caption with a <a href=\\\"#\\\">link<\\/a>.\",\"navigation\":\"\"},\"4dd00c4eb7982\":{\"title\":\"Slide 3\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/image3.jpg\\\" width=\\\"600\\\" height=\\\"300\\\" alt=\\\"Image 03\\\"><\\/a>\",\"caption\":\"This is another HTML caption with a <a href=\\\"#\\\">link<\\/a>.\",\"navigation\":\"\"},\"4de3f1aa49f9a\":{\"title\":\"Slide 4\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/image4.jpg\\\" width=\\\"600\\\" height=\\\"300\\\" alt=\\\"Image 04\\\"><\\/a>\",\"caption\":\"\",\"navigation\":\"\"},\"4de3f1ab9f6c9\":{\"title\":\"Slide 5\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/image5.jpg\\\" width=\\\"600\\\" height=\\\"300\\\" alt=\\\"Image 05\\\"><\\/a>\",\"caption\":\"\",\"navigation\":\"\"}}}','2011-05-15 17:24:01','2013-06-26 12:01:07'),
	(19,'gallery','default','Demo Slideshow','{\"type\":\"gallery\",\"id\":19,\"name\":\"Demo Slideshow\",\"settings\":{\"style\":\"default\",\"width\":600,\"height\":300,\"autoplay\":0,\"order\":\"default\",\"interval\":5000,\"duration\":500,\"index\":0,\"navigation\":1,\"buttons\":1,\"slices\":15,\"animated\":\"randomFx\",\"caption_animation_duration\":500,\"lightbox\":0},\"style\":\"default\",\"paths\":[\"\\/yootheme\\/widgetkit\\/slideshow\"],\"captions\":{\"\\/yootheme\\/widgetkit\\/slideshow\\/image1.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/slideshow\\/image2.jpg\":\"This is a HTML caption with a <a href=\\\"#\\\">link<\\/a>.\",\"\\/yootheme\\/widgetkit\\/slideshow\\/image3.jpg\":\"This is another HTML caption with a <a href=\\\"#\\\">link<\\/a>.\",\"\\/yootheme\\/widgetkit\\/slideshow\\/image4.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/slideshow\\/image5.jpg\":\"\"},\"links\":{\"\\/yootheme\\/widgetkit\\/slideshow\\/image1.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/slideshow\\/image2.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/slideshow\\/image3.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/slideshow\\/image4.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/slideshow\\/image5.jpg\":\"\"}}','2011-06-29 17:52:08','2012-07-09 16:10:12'),
	(23,'gallery','wall','Demo Wall Spotlight','{\"type\":\"gallery\",\"id\":23,\"name\":\"Demo Wall Spotlight\",\"settings\":{\"style\":\"wall\",\"width\":200,\"height\":150,\"effect\":\"spotlight\",\"margin\":\"margin\",\"corners\":\"round\",\"lightbox\":1,\"lightbox_caption\":1,\"spotlight_effect\":\"\"},\"style\":\"wall\",\"paths\":[\"\\/yootheme\\/widgetkit\\/gallery\"],\"captions\":{\"\\/yootheme\\/widgetkit\\/gallery\\/image1.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/image2.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/image3.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/image4.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/image5.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/image6.jpg\":\"\"},\"links\":{\"\\/yootheme\\/widgetkit\\/gallery\\/image1.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/image2.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/image3.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/image4.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/image5.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/image6.jpg\":\"\"}}','2011-07-03 16:53:00','2011-07-28 16:18:08'),
	(24,'gallery','wall','Demo Wall Zoom','{\"type\":\"gallery\",\"id\":24,\"name\":\"Demo Wall Zoom\",\"settings\":{\"style\":\"wall\",\"width\":200,\"height\":150,\"effect\":\"zoom\",\"margin\":\"\",\"corners\":\"\",\"lightbox\":1,\"lightbox_caption\":1,\"spotlight_effect\":\"\"},\"style\":\"wall\",\"paths\":[\"\\/yootheme\\/widgetkit\\/gallery\\/zoom\"],\"captions\":{\"\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image1.jpg\":\"Model 1\",\"\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image2.jpg\":\"Model 2\",\"\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image3.jpg\":\"Model 3\",\"\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image4.jpg\":\"Model 4\",\"\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image5.jpg\":\"Model 5\",\"\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image6.jpg\":\"Model 6\"},\"links\":{\"\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image1.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image2.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image3.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image4.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image5.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image6.jpg\":\"\"}}','2011-07-07 15:41:12','2011-07-29 10:38:06'),
	(25,'gallery','wall','Demo Wall Polaroid','{\"type\":\"gallery\",\"id\":25,\"name\":\"Demo Wall Polaroid\",\"settings\":{\"style\":\"wall\",\"width\":200,\"height\":150,\"order\":\"default\",\"effect\":\"polaroid\",\"margin\":\"\",\"corners\":\"\",\"lightbox\":1,\"lightbox_caption\":1,\"spotlight_effect\":\"\"},\"style\":\"wall\",\"paths\":[\"\\/yootheme\\/widgetkit\\/gallery\\/polaroid\"],\"captions\":{\"\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image1.jpg\":\"Tony\",\"\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image2.jpg\":\"Susan\",\"\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image3.jpg\":\"Jennifer\",\"\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image4.jpg\":\"Kim\",\"\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image5.jpg\":\"Vanessa\",\"\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image6.jpg\":\"Clark\"},\"links\":{\"\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image1.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image2.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image3.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image4.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image5.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/polaroid\\/image6.jpg\":\"\"}}','2011-07-07 15:44:32','2012-01-26 09:53:13'),
	(26,'map','default','Demo Default','{\"type\":\"map\",\"id\":26,\"name\":\"Demo Default\",\"settings\":{\"style\":\"default\",\"width\":\"auto\",\"height\":500,\"mapTypeId\":\"roadmap\",\"zoom\":13,\"mapCtrl\":1,\"typeCtrl\":1,\"popup\":2,\"directions\":1,\"styler_invert_lightness\":0,\"styler_hue\":\"\",\"styler_saturation\":0,\"styler_lightness\":0,\"styler_gamma\":0},\"style\":\"default\",\"items\":{\"4e16d63a2bc97\":{\"title\":\"Museum of Modern Art\",\"location\":\"Museum of Modern Art, New York, NY 10019, USA\",\"lat\":\"40.7613983\",\"lng\":\"-73.9776179\",\"icon\":\"red-dot\",\"popup\":\"<h3>Museum of Modern Art<\\/h3>\\n\\n11 W 53rd St\\n\\n<br \\/>New York, NY 10019\\n\\n<br \\/>(212) 708-9400\\n\\n<br \\/><a href=\\\"http:\\/\\/www.moma.org\\\">moma.org<\\/a>\"},\"4e16d65531670\":{\"title\":\"Madison Square Garden\",\"location\":\"Penn Station, New York, NY 10001, USA\",\"lat\":\"40.75058\",\"lng\":\"-73.99358\",\"icon\":\"red-dot\",\"popup\":\"<h3>Madison Square Garden<\\/h3>\\n\\n2 Penn Plz # 15\\n\\n<br \\/>New York, NY 10121\\n\\n<br \\/>Get Directions\\n\\n<br \\/>(212) 465-6000\\n\\n<br \\/><a href=\\\"http:\\/\\/www.msg.com\\\">msg.com<\\/a>\"},\"4e16d5e1740d8\":{\"title\":\"Rockefeller Center\",\"location\":\"Rockefeller Plaza, Rockefeller Center, New York, NY 10112, USA\",\"lat\":\"40.7584384\",\"lng\":\"-73.9789121\",\"icon\":\"red-dot\",\"popup\":\"<h3>Rockefeller Center<\\/h3>\\n\\n25 W 51st St\\n\\n<br \\/>New York, NY 10019\\n\\n<br \\/>(212) 262-1600\\n\\n<br \\/><a href=\\\"http:\\/\\/www.rockefellercenterhotel.com\\\">rockefellercenterhotel.com<\\/a>\"},\"4e16d6476a880\":{\"title\":\"Empire State Building\",\"location\":\"Empire State Bldg, 350 5th Ave, New York, NY 10001, USA\",\"lat\":\"40.748379\",\"lng\":\"-73.98555999999999\",\"icon\":\"red-dot\",\"popup\":\"<h3>Empire State Building<\\/h3>\\n\\n350 5th Ave # 3210\\n\\n<br \\/>New York, NY 10118\\n\\n<br \\/>(212) 736-3100\\n\\n<br \\/><a href=\\\"http:\\/\\/www.esbnyc.com\\\">esbnyc.com<\\/a>\"}}}','2011-07-08 10:05:25','2011-07-31 15:23:06'),
	(27,'gallery','slider','Demo Slider Center','{\"type\":\"gallery\",\"id\":27,\"name\":\"Demo Slider Center\",\"settings\":{\"style\":\"slider\",\"width\":300,\"height\":200,\"total_width\":600,\"spacing\":3,\"center\":1,\"sticky\":0,\"duration\":400,\"lightbox\":1,\"lightbox_caption\":1,\"spotlight\":1,\"spotlight_effect\":\"bottom\"},\"style\":\"slider\",\"paths\":[\"\\/yootheme\\/widgetkit\\/gallery\\/slider2\"],\"captions\":{\"\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image1.jpg\":\"This is a caption for the first image.\",\"\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image2.jpg\":\"This is a caption for the second image.\",\"\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image3.jpg\":\"This is a caption for the third image.\",\"\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image4.jpg\":\"This is a caption for the fourth image.\"},\"links\":{\"\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image1.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image2.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image3.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image4.jpg\":\"\"}}','2011-07-08 15:28:38','2011-07-29 08:28:24'),
	(28,'map','default','Demo Black','{\"type\":\"map\",\"id\":28,\"name\":\"Demo Black\",\"settings\":{\"style\":\"default\",\"width\":\"auto\",\"height\":300,\"mapTypeId\":\"roadmap\",\"zoom\":13,\"mapCtrl\":1,\"typeCtrl\":0,\"popup\":1,\"directions\":0,\"styler_invert_lightness\":1,\"styler_hue\":\"#ff3300\",\"styler_saturation\":-50,\"styler_lightness\":0,\"styler_gamma\":0.91},\"style\":\"default\",\"items\":{\"4e19a7ec5f75a\":{\"title\":\"London\",\"location\":\"Westminster, London, UK\",\"lat\":\"51.5001524\",\"lng\":\"-0.1262362\",\"icon\":\"purple-dot\",\"popup\":\"\"}}}','2011-07-10 13:25:58','2011-07-12 08:24:47'),
	(29,'map','default','Demo Minimal','{\"type\":\"map\",\"id\":29,\"name\":\"Demo Minimal\",\"settings\":{\"style\":\"default\",\"width\":400,\"height\":200,\"mapTypeId\":\"roadmap\",\"zoom\":13,\"mapCtrl\":0,\"typeCtrl\":0,\"popup\":0,\"directions\":0,\"styler_invert_lightness\":0,\"styler_hue\":\"\",\"styler_saturation\":0,\"styler_lightness\":0,\"styler_gamma\":0},\"style\":\"default\",\"items\":{\"4e1ac310cf33e\":{\"title\":\"Hamburg\",\"location\":\"Hamburg, Germany\",\"lat\":\"53.553813\",\"lng\":\"9.991586\",\"icon\":\"red-dot\",\"popup\":\"\"}}}','2011-07-11 09:33:05','2011-07-31 15:08:57'),
	(30,'accordion','default','Demo Default','{\"type\":\"accordion\",\"id\":30,\"name\":\"Demo Default\",\"settings\":{\"style\":\"default\",\"collapseall\":1,\"matchheight\":1,\"index\":0,\"duration\":500,\"width\":500,\"order\":\"default\"},\"style\":\"default\",\"items\":{\"4e1ac6fe6a20d\":{\"title\":\"Slide 1\",\"content\":\"<img class=\\\"uk-align-left\\\" src=\\\"images\\/yootheme\\/widgetkit\\/accordion\\/image1.png\\\" width=\\\"115\\\" height=\\\"105\\\" alt=\\\"Icon 01\\\">\\n\\n<h3 class=\\\"uk-margin-top-remove\\\">Headline<\\/h3>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"4e1ac708561be\":{\"title\":\"Slide 2\",\"content\":\"<img class=\\\"uk-align-left\\\" src=\\\"images\\/yootheme\\/widgetkit\\/accordion\\/image2.png\\\" width=\\\"115\\\" height=\\\"105\\\" alt=\\\"Icon 02\\\">\\n\\n<h3 class=\\\"uk-margin-top-remove\\\">Headline<\\/h3>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"4e1ac70cb840e\":{\"title\":\"Slide 3\",\"content\":\"<img class=\\\"uk-align-left\\\" src=\\\"images\\/yootheme\\/widgetkit\\/accordion\\/image3.png\\\" width=\\\"115\\\" height=\\\"105\\\" alt=\\\"Icon 03\\\">\\n\\n<h3 class=\\\"uk-margin-top-remove\\\">Headline<\\/h3>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"4e1ac711bbabe\":{\"title\":\"Slide 4\",\"content\":\"<img class=\\\"uk-align-left\\\" src=\\\"images\\/yootheme\\/widgetkit\\/accordion\\/image4.png\\\" width=\\\"115\\\" height=\\\"105\\\" alt=\\\"Icon 04\\\">\\n\\n<h3 class=\\\"uk-margin-top-remove\\\">Headline<\\/h3>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}}}','2011-07-11 09:49:12','2013-06-26 11:53:55'),
	(31,'gallery','slider','Demo Slider Left','{\"type\":\"gallery\",\"id\":31,\"name\":\"Demo Slider Left\",\"settings\":{\"style\":\"slider\",\"width\":300,\"height\":200,\"total_width\":600,\"spacing\":3,\"center\":0,\"sticky\":0,\"duration\":400,\"lightbox\":0,\"lightbox_caption\":1,\"spotlight\":0,\"spotlight_effect\":\"\"},\"style\":\"slider\",\"paths\":[\"\\/yootheme\\/widgetkit\\/gallery\\/slider1\"],\"captions\":{\"\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image1.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image2.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image3.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image4.jpg\":\"\"},\"links\":{\"\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image1.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image2.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image3.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image4.jpg\":\"\"}}','2011-07-12 18:23:44','2011-07-29 07:48:55'),
	(32,'slideset','default','Demo Slide','{\"type\":\"slideset\",\"id\":32,\"name\":\"Demo Slide\",\"settings\":{\"style\":\"default\",\"width\":\"auto\",\"height\":\"auto\",\"effect\":\"slide\",\"index\":0,\"autoplay\":1,\"interval\":5000,\"items_per_set\":4,\"navigation\":1,\"buttons\":0,\"title\":1,\"duration\":300},\"style\":\"default\",\"items\":{\"4e30070bb3f2c\":{\"title\":\"Radio\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image1.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 01\\\"><\\/a>\",\"group\":\"\",\"set\":\"Set 1\"},\"4e30071628817\":{\"title\":\"Camera\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image2.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 02\\\"><\\/a>\",\"group\":\"\",\"set\":\"Set 1\"},\"4e30071b515e1\":{\"title\":\"Calendar\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image3.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 03\\\"><\\/a>\",\"group\":\"\",\"set\":\"Set 1\"},\"4e300720a131e\":{\"title\":\"Volume\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image4.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 04\\\"><\\/a>\",\"group\":\"\",\"set\":\"Set 1\"},\"4e300725404e2\":{\"title\":\"Chat\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image5.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 05\\\"><\\/a>\",\"group\":\"\",\"set\":\"Set 2\"},\"4e301094b3b19\":{\"title\":\"Tunes\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image6.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 06\\\"><\\/a>\",\"set\":\"Set 2\"},\"4e301099469eb\":{\"title\":\"E-Mail\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image7.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 07\\\"><\\/a>\",\"set\":\"Set 2\"},\"4e30109dc7253\":{\"title\":\"Google+\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image8.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 08\\\"><\\/a>\",\"set\":\"Set 2\"},\"4e30109faa62d\":{\"title\":\"Player\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image9.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 09\\\"><\\/a>\",\"set\":\"Set 3\"},\"4e3010a16c585\":{\"title\":\"Like\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image10.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 10\\\"><\\/a>\",\"set\":\"Set 3\"},\"4e329ee00dfeb\":{\"title\":\"Twitter\",\"set\":\"Set 3\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image11.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 11\\\"><\\/a>\"},\"4e329ee198f40\":{\"title\":\"Weather\",\"set\":\"Set 3\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image12.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 12\\\"><\\/a>\"}}}','2011-07-27 12:40:13','2013-06-26 11:58:27'),
	(33,'slideset','default','Demo Zoom','{\"type\":\"slideset\",\"id\":33,\"name\":\"Demo Zoom\",\"settings\":{\"style\":\"default\",\"width\":\"auto\",\"height\":\"auto\",\"effect\":\"zoom\",\"index\":0,\"autoplay\":1,\"interval\":7000,\"items_per_set\":\"set\",\"navigation\":2,\"buttons\":0,\"title\":0,\"duration\":300},\"style\":\"default\",\"items\":{\"4e30070bb3f2c\":{\"title\":\"Icon 1\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/sets\\/movie1.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 01\\\"><\\/a>\",\"group\":\"\",\"set\":\"Movies\"},\"4e30071628817\":{\"title\":\"Icon 2\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/sets\\/movie2.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 02\\\"><\\/a>\",\"group\":\"\",\"set\":\"Movies\"},\"4e30071b515e1\":{\"title\":\"Icon 3\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/sets\\/movie3.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 03\\\"><\\/a>\",\"group\":\"\",\"set\":\"Movies\"},\"4e300720a131e\":{\"title\":\"Icon 4\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/sets\\/movie4.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 04\\\"><\\/a>\",\"group\":\"\",\"set\":\"Movies\"},\"4e300725404e2\":{\"title\":\"Item 5\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/sets\\/book1.png\\\" width=\\\"90\\\" height=\\\"115\\\" alt=\\\"Icon 05\\\"><\\/a>\",\"group\":\"\",\"set\":\"Books\"},\"4e301094b3b19\":{\"title\":\"Icon 6\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/sets\\/book2.png\\\" width=\\\"90\\\" height=\\\"115\\\" alt=\\\"Icon 06\\\"><\\/a>\",\"set\":\"Books\"},\"4e301099469eb\":{\"title\":\"Icon 7\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/sets\\/book3.png\\\" width=\\\"90\\\" height=\\\"115\\\" alt=\\\"Icon 07\\\"><\\/a>\",\"set\":\"Books\"},\"4e30109dc7253\":{\"title\":\"Icon 8\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/sets\\/book4.png\\\" width=\\\"90\\\" height=\\\"115\\\" alt=\\\"Icon 08\\\"><\\/a>\",\"set\":\"Books\"},\"4e30109faa62d\":{\"title\":\"Icon 9\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/sets\\/book5.png\\\" width=\\\"90\\\" height=\\\"115\\\" alt=\\\"Icon 09\\\"><\\/a>\",\"set\":\"Books\"},\"4e3010a16c585\":{\"title\":\"Icon 10\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/sets\\/music1.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 10\\\"><\\/a>\",\"set\":\"Music\"},\"4e329ee00dfeb\":{\"title\":\"Icon 11\",\"set\":\"Music\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/sets\\/music2.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 11\\\"><\\/a>\"},\"4e329ee198f40\":{\"title\":\"Icon 12\",\"set\":\"Music\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/sets\\/music3.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 12\\\"><\\/a>\"},\"4f2a65a31c537\":{\"title\":\"Icon 13\",\"set\":\"Music\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/sets\\/music4.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 13\\\"><\\/a>\"}}}','2011-07-29 11:53:34','2013-06-26 11:59:04'),
	(34,'slideshow','tabs_bar','Demo Tabs Bar','{\"type\":\"slideshow\",\"id\":34,\"name\":\"Demo Tabs Bar\",\"settings\":{\"style\":\"tabs_bar\",\"autoplay\":0,\"interval\":5000,\"width\":\"auto\",\"height\":\"auto\",\"duration\":500,\"index\":0,\"order\":\"default\",\"navigation\":\"left\",\"animated\":\"scroll\"},\"style\":\"tabs_bar\",\"items\":{\"4e511fb86001b\":{\"title\":\"Tab One\",\"content\":\"<img class=\\\"uk-align-medium-left\\\" src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/icons\\/image1.png\\\" width=\\\"115\\\" height=\\\"105\\\" alt=\\\"Icon 01\\\">\\n\\n<h3 class=\\\"uk-margin-top-remove\\\">Headline<\\/h3>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\",\"caption\":\"\"},\"4e511fd616557\":{\"title\":\"Tab Two\",\"content\":\"<img class=\\\"uk-align-medium-left\\\" src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/icons\\/image2.png\\\" width=\\\"115\\\" height=\\\"105\\\" alt=\\\"Icon 02\\\">\\n\\n<h3 class=\\\"uk-margin-top-remove\\\">Headline<\\/h3>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"4e511fd6eeb3b\":{\"title\":\"Tab Three\",\"content\":\"<img class=\\\"uk-align-medium-left\\\" src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/icons\\/image3.png\\\" width=\\\"115\\\" height=\\\"105\\\" alt=\\\"Icon 03\\\">\\n\\n<h3 class=\\\"uk-margin-top-remove\\\">Headline<\\/h3>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}}}','2011-08-21 15:09:51','2013-07-15 15:10:26'),
	(35,'slideshow','tabs','Demo Tabs','{\"type\":\"slideshow\",\"id\":35,\"name\":\"Demo Tabs\",\"settings\":{\"style\":\"tabs\",\"autoplay\":0,\"interval\":5000,\"width\":\"auto\",\"height\":\"auto\",\"duration\":500,\"index\":0,\"order\":\"default\",\"navigation\":\"left\",\"animated\":\"scroll\"},\"style\":\"tabs\",\"items\":{\"4e511fb86001b\":{\"title\":\"Tab One\",\"content\":\"<img class=\\\"uk-align-medium-left\\\" src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/icons\\/image4.png\\\" width=\\\"115\\\" height=\\\"105\\\" alt=\\\"Icon 04\\\">\\n\\n<h3 class=\\\"uk-margin-top-remove\\\">Headline<\\/h3>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\",\"caption\":\"\"},\"4e511fd616557\":{\"title\":\"Tab Two\",\"content\":\"<img class=\\\"uk-align-medium-left\\\" src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/icons\\/image5.png\\\" width=\\\"115\\\" height=\\\"105\\\" alt=\\\"Icon 05\\\">\\n\\n<h3 class=\\\"uk-margin-top-remove\\\">Headline<\\/h3>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"4e511fd6eeb3b\":{\"title\":\"Tab Three\",\"content\":\"<img class=\\\"uk-align-medium-left\\\" src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/icons\\/image6.png\\\" width=\\\"115\\\" height=\\\"105\\\" alt=\\\"Icon 06\\\">\\n\\n<h3 class=\\\"uk-margin-top-remove\\\">Headline<\\/h3>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}}}','2011-08-22 13:43:01','2013-07-15 15:10:54'),
	(36,'slideshow','list','Demo List','{\"type\":\"slideshow\",\"id\":36,\"name\":\"Demo List\",\"settings\":{\"style\":\"list\",\"autoplay\":0,\"interval\":5000,\"width\":\"auto\",\"height\":\"auto\",\"duration\":500,\"index\":0,\"order\":\"default\",\"navigation\":200,\"animated\":\"scroll\"},\"style\":\"list\",\"items\":{\"4e511fb86001b\":{\"title\":\"Item One\",\"content\":\"<h3 class=\\\"uk-margin-top-remove\\\">Headline<\\/h3>\\n\\n<img class=\\\"uk-align-medium-right\\\" src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/icons\\/image9.png\\\" width=\\\"115\\\" height=\\\"105\\\" alt=\\\"Icon 09\\\">\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\",\"caption\":\"\"},\"4e511fd616557\":{\"title\":\"Item Two\",\"content\":\"<h3 class=\\\"uk-margin-top-remove\\\">Headline<\\/h3>\\n\\n<img class=\\\"uk-align-medium-right\\\" src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/icons\\/image8.png\\\" width=\\\"115\\\" height=\\\"105\\\" alt=\\\"Icon 08\\\">\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"4e511fd6eeb3b\":{\"title\":\"Item Three\",\"content\":\"<h3 class=\\\"uk-margin-top-remove\\\">Headline<\\/h3>\\n\\n<img class=\\\"uk-align-medium-right\\\" src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/icons\\/image7.png\\\" width=\\\"115\\\" height=\\\"105\\\" alt=\\\"Icon 07\\\">\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}}}','2011-08-23 09:54:41','2013-07-15 15:11:59'),
	(37,'slideshow','showcase_box','Demo Showcase Box','{\"type\":\"slideshow\",\"id\":37,\"name\":\"Demo Showcase Box\",\"settings\":{\"style\":\"showcase_box\",\"autoplay\":0,\"interval\":5000,\"width\":600,\"height\":270,\"duration\":1500,\"index\":0,\"order\":\"default\",\"buttons\":0,\"slices\":20,\"animated\":\"rotate\",\"caption_animation_duration\":500,\"effect\":\"slide\",\"slideset_buttons\":1,\"items_per_set\":4,\"slideset_effect_duration\":400},\"style\":\"showcase_box\",\"items\":{\"4dd00c3ee01f3\":{\"title\":\"Slide 1\",\"content\":\"<img class=\\\"uk-align-medium-right\\\" src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image1.png\\\" width=\\\"210\\\" height=\\\"220\\\" alt=\\\"Image 01\\\">\\n\\n<h2 class=\\\"uk-margin-top-remove\\\">Headline<\\/h2>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\n\\n<a href=\\\"#\\\" class=\\\"uk-button\\\">Read more<\\/a>\",\"caption\":\"\",\"navigation\":\"<img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image1_thumb.png\\\" width=\\\"35\\\" height=\\\"35\\\" alt=\\\"Image 01\\\"> Item 1\"},\"4dd00c473c0f2\":{\"title\":\"Slide 2\",\"content\":\"<img class=\\\"uk-align-medium-right\\\" src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image2.png\\\" width=\\\"210\\\" height=\\\"220\\\" alt=\\\"Image 02\\\">\\n\\n<h2 class=\\\"uk-margin-top-remove\\\">Headline<\\/h2>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\n\\n<a href=\\\"#\\\" class=\\\"uk-button\\\">Read more<\\/a>\",\"caption\":\"\",\"navigation\":\"<img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image2_thumb.png\\\" width=\\\"35\\\" height=\\\"35\\\" alt=\\\"Image 02\\\"> Item 2\"},\"4dd00c4eb7982\":{\"title\":\"Slide 3\",\"content\":\"<img class=\\\"uk-align-medium-right\\\" src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image3.png\\\" width=\\\"210\\\" height=\\\"220\\\" alt=\\\"Image 03\\\">\\n\\n<h2 class=\\\"uk-margin-top-remove\\\">Headline<\\/h2>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\n\\n<a href=\\\"#\\\" class=\\\"uk-button\\\">Read more<\\/a>\",\"caption\":\"\",\"navigation\":\"<img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image3_thumb.png\\\" width=\\\"35\\\" height=\\\"35\\\" alt=\\\"Image 03\\\"> Item 3\"},\"4de3f1aa49f9a\":{\"title\":\"Slide 4\",\"content\":\"<img class=\\\"uk-align-medium-right\\\" src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image4.png\\\" width=\\\"210\\\" height=\\\"220\\\" alt=\\\"Image 04\\\">\\n\\n<h2 class=\\\"uk-margin-top-remove\\\">Headline<\\/h2>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\n\\n<a href=\\\"#\\\" class=\\\"uk-button\\\">Read more<\\/a>\",\"caption\":\"\",\"navigation\":\"<img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image4_thumb.png\\\" width=\\\"35\\\" height=\\\"35\\\" alt=\\\"Image 04\\\"> Item 4\"},\"4de3f1ab9f6c9\":{\"title\":\"Slide 5\",\"content\":\"<img class=\\\"uk-align-medium-right\\\" src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image5.png\\\" width=\\\"210\\\" height=\\\"220\\\" alt=\\\"Image 05\\\">\\n\\n<h2 class=\\\"uk-margin-top-remove\\\">Headline<\\/h2>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\n\\n<a href=\\\"#\\\" class=\\\"uk-button\\\">Read more<\\/a>\",\"caption\":\"\",\"navigation\":\"<img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image5_thumb.png\\\" width=\\\"35\\\" height=\\\"35\\\" alt=\\\"Image 05\\\"> Item 5\"},\"4e65eda9682e1\":{\"title\":\"Slide 6\",\"content\":\"<img class=\\\"uk-align-medium-right\\\" src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image6.png\\\" width=\\\"210\\\" height=\\\"220\\\" alt=\\\"Image 06\\\">\\n\\n<h2 class=\\\"uk-margin-top-remove\\\">Headline<\\/h2>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\n\\n<a href=\\\"#\\\" class=\\\"uk-button\\\">Read more<\\/a>\",\"navigation\":\"<img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image6_thumb.png\\\" width=\\\"35\\\" height=\\\"35\\\" alt=\\\"Image 06\\\"> Item 6\",\"caption\":\"\"},\"4e65edadd0d97\":{\"title\":\"Slide 7\",\"content\":\"<img class=\\\"uk-align-medium-right\\\" src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image7.png\\\" width=\\\"210\\\" height=\\\"220\\\" alt=\\\"Image 07\\\">\\n\\n<h2 class=\\\"uk-margin-top-remove\\\">Headline<\\/h2>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\n\\n<a href=\\\"#\\\" class=\\\"uk-button\\\">Read more<\\/a>\",\"navigation\":\"<img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image7_thumb.png\\\" width=\\\"35\\\" height=\\\"35\\\" alt=\\\"Image 07\\\"> Item 7\",\"caption\":\"\"},\"4e65edb02bf73\":{\"title\":\"Slide 8\",\"content\":\"<img class=\\\"uk-align-medium-right\\\" src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image8.png\\\" width=\\\"210\\\" height=\\\"220\\\" alt=\\\"Image 08\\\">\\n\\n<h2 class=\\\"uk-margin-top-remove\\\">Headline<\\/h2>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\n\\n<a href=\\\"#\\\" class=\\\"uk-button\\\">Read more<\\/a>\",\"navigation\":\"<img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image8_thumb.png\\\" width=\\\"35\\\" height=\\\"35\\\" alt=\\\"Image 08\\\"> Item 8\",\"caption\":\"\"}}}','2011-08-23 15:51:42','2013-07-15 15:13:25'),
	(39,'gallery','showcase_box','Demo Showcase Box','{\"type\":\"gallery\",\"id\":39,\"name\":\"Demo Showcase Box\",\"settings\":{\"style\":\"showcase_box\",\"width\":600,\"height\":\"auto\",\"thumb_width\":85,\"thumb_height\":55,\"autoplay\":1,\"interval\":5000,\"duration\":400,\"index\":0,\"buttons\":0,\"slices\":15,\"animated\":\"randomFx\",\"caption_animation_duration\":500,\"effect\":\"zoom\",\"slideset_buttons\":1,\"items_per_set\":4,\"slideset_effect_duration\":300},\"style\":\"showcase_box\",\"paths\":[\"\\/yootheme\\/widgetkit\\/gallery\\/showcase1\"],\"captions\":{\"\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image1.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image2.jpg\":\"This is a HTML caption with a <a href=\\\"#\\\">link<\\/a>.\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image3.jpg\":\"This is another HTML caption with a <a href=\\\"#\\\">link<\\/a>.\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image4.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image5.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image6.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image7.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image8.jpg\":\"\"},\"links\":{\"\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image1.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image2.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image3.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image4.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image5.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image6.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image7.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase1\\/image8.jpg\":\"\"}}','2011-09-07 16:58:35','2012-06-26 16:22:59'),
	(40,'gallery','showcase','Demo Showcase','{\"type\":\"gallery\",\"id\":40,\"name\":\"Demo Showcase\",\"settings\":{\"style\":\"showcase\",\"width\":600,\"height\":\"auto\",\"thumb_width\":80,\"thumb_height\":45,\"autoplay\":0,\"interval\":5000,\"duration\":500,\"index\":0,\"buttons\":0,\"slices\":15,\"animated\":\"randomSimple\",\"caption_animation_duration\":500,\"effect\":\"zoom\",\"slideset_buttons\":1,\"items_per_set\":5,\"slideset_effect_duration\":300},\"style\":\"showcase\",\"paths\":[\"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\"],\"captions\":{\"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image01.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image02.jpg\":\"This is a HTML caption with a <a href=\\\"#\\\">link<\\/a>.\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image03.jpg\":\"This is another HTML caption with a <a href=\\\"#\\\">link<\\/a>.\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image04.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image05.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image06.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image07.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image08.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image09.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image10.jpg\":\"\"},\"links\":{\"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image01.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image02.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image03.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image04.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image05.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image06.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image07.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image08.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image09.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/showcase2\\/image10.jpg\":\"\"}}','2011-09-09 15:18:41','2012-07-09 16:09:35'),
	(41,'slideshow','showcase_buttons','Demo Showcase Buttons','{\"type\":\"slideshow\",\"id\":41,\"name\":\"Demo Showcase Buttons\",\"settings\":{\"style\":\"showcase_buttons\",\"autoplay\":0,\"interval\":5000,\"width\":600,\"height\":300,\"duration\":500,\"index\":0,\"order\":\"default\",\"buttons\":1,\"slices\":20,\"animated\":\"scale\",\"caption_animation_duration\":500,\"effect\":\"zoom\",\"slideset_buttons\":0,\"items_per_set\":4,\"slideset_effect_duration\":400},\"style\":\"showcase_buttons\",\"items\":{\"4dd00c3ee01f3\":{\"title\":\"Slide 1\",\"content\":\"<img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase2\\/image1.jpg\\\" width=\\\"600\\\" height=\\\"300\\\" alt=\\\"Image 01\\\">\",\"caption\":\"\",\"navigation\":\"<img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image1_thumb.png\\\" width=\\\"35\\\" height=\\\"35\\\" alt=\\\"Image 01\\\"> Item 1\"},\"4dd00c473c0f2\":{\"title\":\"Slide 2\",\"content\":\"<img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase2\\/image2.jpg\\\" width=\\\"600\\\" height=\\\"300\\\" alt=\\\"Image 02\\\">\",\"caption\":\"\",\"navigation\":\"<img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image2_thumb.png\\\" width=\\\"35\\\" height=\\\"35\\\" alt=\\\"Image 02\\\"> Item 2\"},\"4dd00c4eb7982\":{\"title\":\"Slide 3\",\"content\":\"<img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase2\\/image3.jpg\\\" width=\\\"600\\\" height=\\\"300\\\" alt=\\\"Image 03\\\">\",\"caption\":\"\",\"navigation\":\"<img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image3_thumb.png\\\" width=\\\"35\\\" height=\\\"35\\\" alt=\\\"Image 03\\\"> Item 3\"},\"4de3f1aa49f9a\":{\"title\":\"Slide 4\",\"content\":\"<img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase2\\/image4.jpg\\\" width=\\\"600\\\" height=\\\"300\\\" alt=\\\"Image 04\\\">\",\"caption\":\"\",\"navigation\":\"<img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/showcase1\\/image4_thumb.png\\\" width=\\\"35\\\" height=\\\"35\\\" alt=\\\"Image 04\\\"> Item 4\"}}}','2011-09-12 15:52:19','2013-06-26 12:07:24'),
	(43,'slideset','default','Demo Deck','{\"type\":\"slideset\",\"id\":43,\"name\":\"Demo Deck\",\"settings\":{\"style\":\"default\",\"width\":\"auto\",\"height\":\"auto\",\"effect\":\"deck\",\"index\":0,\"autoplay\":1,\"interval\":11000,\"items_per_set\":4,\"navigation\":0,\"buttons\":1,\"title\":0,\"duration\":300},\"style\":\"default\",\"items\":{\"4e30070bb3f2c\":{\"title\":\"Radio\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image1.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 01\\\"><\\/a>\",\"group\":\"\",\"set\":\"Set 1\"},\"4e30071628817\":{\"title\":\"Camera\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image2.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 02\\\"><\\/a>\",\"group\":\"\",\"set\":\"Set 1\"},\"4e30071b515e1\":{\"title\":\"Calendar\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image3.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 03\\\"><\\/a>\",\"group\":\"\",\"set\":\"Set 1\"},\"4e300720a131e\":{\"title\":\"Volume\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image4.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 04\\\"><\\/a>\",\"group\":\"\",\"set\":\"Set 1\"},\"4e300725404e2\":{\"title\":\"Chat\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image5.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 05\\\"><\\/a>\",\"group\":\"\",\"set\":\"Set 2\"},\"4e301094b3b19\":{\"title\":\"Tunes\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image6.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 06\\\"><\\/a>\",\"set\":\"Set 2\"},\"4e301099469eb\":{\"title\":\"E-Mail\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image7.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 07\\\"><\\/a>\",\"set\":\"Set 2\"},\"4e30109dc7253\":{\"title\":\"Google+\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image8.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 08\\\"><\\/a>\",\"set\":\"Set 2\"},\"4e30109faa62d\":{\"title\":\"Player\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image9.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 09\\\"><\\/a>\",\"set\":\"Set 3\"},\"4e3010a16c585\":{\"title\":\"Like\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image10.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 10\\\"><\\/a>\",\"set\":\"Set 3\"},\"4e329ee00dfeb\":{\"title\":\"Twitter\",\"set\":\"Set 3\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image11.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 11\\\"><\\/a>\"},\"4e329ee198f40\":{\"title\":\"Weather\",\"set\":\"Set 3\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/image12.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 12\\\"><\\/a>\"}}}','2011-09-12 18:34:35','2013-06-26 11:57:15'),
	(44,'gallery','slideset','Demo Slideset','{\"type\":\"gallery\",\"id\":44,\"name\":\"Demo Slideset\",\"settings\":{\"style\":\"slideset\",\"width\":\"auto\",\"height\":\"auto\",\"effect\":\"slide\",\"autoplay\":1,\"interval\":5000,\"items_per_set\":4,\"navigation\":1,\"buttons\":1,\"title\":1,\"duration\":500,\"lightbox\":0},\"style\":\"slideset\",\"paths\":[\"\\/yootheme\\/widgetkit\\/slideset\"],\"captions\":{\"\\/yootheme\\/widgetkit\\/slideset\\/image1.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image10.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image11.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image12.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image2.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image3.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image4.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image5.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image6.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image7.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image8.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image9.png\":\"\"},\"links\":{\"\\/yootheme\\/widgetkit\\/slideset\\/image1.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image10.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image11.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image12.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image2.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image3.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image4.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image5.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image6.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image7.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image8.png\":\"\",\"\\/yootheme\\/widgetkit\\/slideset\\/image9.png\":\"\"}}','2012-01-04 12:20:06','2012-01-06 11:25:05'),
	(45,'slideshow','screen','Demo Screen','{\"type\":\"slideshow\",\"id\":45,\"name\":\"Demo Screen\",\"settings\":{\"style\":\"screen\",\"autoplay\":1,\"interval\":10000,\"width\":600,\"height\":300,\"duration\":1000,\"index\":0,\"order\":\"default\",\"navigation\":1,\"buttons\":1,\"slices\":15,\"animated\":\"kenburns\",\"caption_animation_duration\":500},\"style\":\"screen\",\"items\":{\"4dd00c3ee01f3\":{\"title\":\"Slide 1\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/screen\\/image1.jpg\\\" width=\\\"600\\\" height=\\\"300\\\" alt=\\\"Image 01\\\"><\\/a>\",\"caption\":\"\"},\"4dd00c473c0f2\":{\"title\":\"Slide 2\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/screen\\/image2.jpg\\\" width=\\\"600\\\" height=\\\"300\\\" alt=\\\"Image 02\\\"><\\/a>\",\"caption\":\"This is a HTML caption with a <a href=\\\"#\\\">link<\\/a>.\"},\"4dd00c4eb7982\":{\"title\":\"Slide 3\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/screen\\/image3.jpg\\\" width=\\\"600\\\" height=\\\"300\\\" alt=\\\"Image 03\\\"><\\/a>\",\"caption\":\"This is another HTML caption with a <a href=\\\"#\\\">link<\\/a>.\"},\"4de3f1aa49f9a\":{\"title\":\"Slide 4\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/screen\\/image4.jpg\\\" width=\\\"600\\\" height=\\\"300\\\" alt=\\\"Image 04\\\"><\\/a>\",\"caption\":\"\"},\"4f27c34aee78f\":{\"title\":\"Slide 5\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/screen\\/image5.jpg\\\" width=\\\"600\\\" height=\\\"300\\\" alt=\\\"Image 05\\\"><\\/a>\",\"caption\":\"\"}}}','2012-01-30 16:15:12','2013-06-26 12:03:35'),
	(48,'gallery','screen','Demo Slideshow Screen','{\"type\":\"gallery\",\"id\":48,\"name\":\"Demo Slideshow Screen\",\"settings\":{\"style\":\"screen\",\"width\":600,\"height\":\"auto\",\"autoplay\":0,\"order\":\"default\",\"interval\":5000,\"duration\":500,\"index\":0,\"navigation\":1,\"buttons\":1,\"slices\":20,\"animated\":\"swipe\",\"caption_animation_duration\":500,\"lightbox\":0},\"style\":\"screen\",\"paths\":[\"\\/yootheme\\/widgetkit\\/slideshow\\/screen\"],\"captions\":{\"\\/yootheme\\/widgetkit\\/slideshow\\/screen\\/image1.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/slideshow\\/screen\\/image2.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/slideshow\\/screen\\/image3.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/slideshow\\/screen\\/image4.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/slideshow\\/screen\\/image5.jpg\":\"\"},\"links\":{\"\\/yootheme\\/widgetkit\\/slideshow\\/screen\\/image1.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/slideshow\\/screen\\/image2.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/slideshow\\/screen\\/image3.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/slideshow\\/screen\\/image4.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/slideshow\\/screen\\/image5.jpg\":\"\"}}','2012-02-01 13:57:51','2012-06-26 16:19:28'),
	(49,'slideset','default','Demo Drops','{\"type\":\"slideset\",\"id\":49,\"name\":\"Demo Drops\",\"settings\":{\"style\":\"default\",\"width\":\"auto\",\"height\":\"auto\",\"effect\":\"drops\",\"index\":0,\"autoplay\":1,\"interval\":9000,\"items_per_set\":4,\"navigation\":1,\"buttons\":0,\"title\":1,\"duration\":200},\"style\":\"default\",\"items\":{\"4e30070bb3f2c\":{\"title\":\"Album 1\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/music\\/music1.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 01\\\"><\\/a>\",\"group\":\"\",\"set\":\"Set 1\"},\"4e30071628817\":{\"title\":\"Album 2\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/music\\/music2.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 02\\\"><\\/a>\",\"group\":\"\",\"set\":\"Set 1\"},\"4e30071b515e1\":{\"title\":\"Album 3\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/music\\/music3.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 03\\\"><\\/a>\",\"group\":\"\",\"set\":\"Set 1\"},\"4e300720a131e\":{\"title\":\"Album 4\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/music\\/music4.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 04\\\"><\\/a>\",\"group\":\"\",\"set\":\"Set 1\"},\"4e300725404e2\":{\"title\":\"Album 5\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/music\\/music5.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 05\\\"><\\/a>\",\"group\":\"\",\"set\":\"Set 2\"},\"4e301094b3b19\":{\"title\":\"Album 6\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/music\\/music6.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 06\\\"><\\/a>\",\"set\":\"Set 2\"},\"4e301099469eb\":{\"title\":\"Album 7\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/music\\/music7.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 07\\\"><\\/a>\",\"set\":\"Set 2\"},\"4e30109dc7253\":{\"title\":\"Album 8\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/music\\/music8.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 08\\\"><\\/a>\",\"set\":\"Set 2\"},\"4e30109faa62d\":{\"title\":\"Album 9\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/music\\/music9.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 09\\\"><\\/a>\",\"set\":\"Set 3\"},\"4e3010a16c585\":{\"title\":\"Album 10\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/music\\/music10.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 10\\\"><\\/a>\",\"set\":\"Set 3\"},\"4e329ee00dfeb\":{\"title\":\"Album 11\",\"set\":\"Set 3\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/music\\/music11.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 11\\\"><\\/a>\"},\"4e329ee198f40\":{\"title\":\"Album 12\",\"set\":\"Set 3\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideset\\/music\\/music12.png\\\" width=\\\"115\\\" height=\\\"115\\\" alt=\\\"Icon 12\\\"><\\/a>\"}}}','2012-02-02 10:32:01','2013-06-26 11:57:53'),
	(50,'slideshow','default','Demo Lightbox','{\"type\":\"slideshow\",\"id\":50,\"name\":\"Demo Lightbox\",\"settings\":{\"style\":\"default\",\"autoplay\":1,\"interval\":5000,\"width\":600,\"height\":300,\"duration\":500,\"index\":0,\"order\":\"default\",\"navigation\":0,\"buttons\":1,\"slices\":15,\"animated\":\"randomFx\",\"caption_animation_duration\":500},\"style\":\"default\",\"items\":{\"4dd00c3ee01f3\":{\"title\":\"Slide 1\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/image1.jpg\\\" width=\\\"600\\\" height=\\\"300\\\" alt=\\\"Image 01\\\"><\\/a>\",\"caption\":\"\"},\"4dd00c473c0f2\":{\"title\":\"Slide 2\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/image2.jpg\\\" width=\\\"600\\\" height=\\\"300\\\" alt=\\\"Image 02\\\"><\\/a>\",\"caption\":\"This is a HTML caption with a <a href=\\\"#\\\">link<\\/a>.\"},\"4dd00c4eb7982\":{\"title\":\"Slide 3\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/image3.jpg\\\" width=\\\"600\\\" height=\\\"300\\\" alt=\\\"Image 03\\\"><\\/a>\",\"caption\":\"This is another HTML caption with a <a href=\\\"#\\\">link<\\/a>.\"},\"4de3f1aa49f9a\":{\"title\":\"Slide 4\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/image4.jpg\\\" width=\\\"600\\\" height=\\\"300\\\" alt=\\\"Image 04\\\"><\\/a>\",\"caption\":\"\"},\"4de3f1ab9f6c9\":{\"title\":\"Slide 5\",\"content\":\"<a href=\\\"#\\\"><img src=\\\"images\\/yootheme\\/widgetkit\\/slideshow\\/image5.jpg\\\" width=\\\"600\\\" height=\\\"300\\\" alt=\\\"Image 05\\\"><\\/a>\",\"caption\":\"\"}}}','2012-02-02 12:42:27','2013-06-26 12:01:25'),
	(54,'gallery','inside','Demo Inside','{\"type\":\"gallery\",\"id\":54,\"name\":\"Demo Inside\",\"settings\":{\"style\":\"inside\",\"width\":600,\"height\":\"auto\",\"thumb_width\":80,\"thumb_height\":60,\"autoplay\":0,\"order\":\"default\",\"interval\":5000,\"duration\":500,\"index\":0,\"navigation\":1,\"buttons\":1,\"slices\":15,\"animated\":\"scale\",\"caption_animation_duration\":500,\"lightbox\":0},\"style\":\"inside\",\"paths\":[\"\\/yootheme\\/widgetkit\\/gallery\\/inside\"],\"captions\":{\"\\/yootheme\\/widgetkit\\/gallery\\/inside\\/image01.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/inside\\/image02.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/inside\\/image03.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/inside\\/image04.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/inside\\/image05.jpg\":\"\"},\"links\":{\"\\/yootheme\\/widgetkit\\/gallery\\/inside\\/image01.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/inside\\/image02.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/inside\\/image03.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/inside\\/image04.jpg\":\"\",\"\\/yootheme\\/widgetkit\\/gallery\\/inside\\/image05.jpg\":\"\"}}','2012-07-09 13:56:39','2012-07-09 17:09:50'),
	(55,'slideshow','peak','Home WoW Slideshow','{\"type\":\"slideshow\",\"id\":55,\"name\":\"Home WoW Slideshow\",\"settings\":{\"style\":\"peak\",\"autoplay\":1,\"interval\":5000,\"width\":\"auto\",\"height\":\"auto\",\"duration\":500,\"index\":0,\"order\":\"default\",\"navigation\":1,\"buttons\":0,\"slices\":20,\"animated\":\"fade\",\"caption_animation_duration\":500},\"style\":\"peak\",\"items\":{\"53565eabf0464\":{\"title\":\"Bienvenido\",\"content\":\"<div class=\\\"uk-align-center tm-contrast\\\" style=\\\"background: url(\'images\\/yootheme\\/home_wow_teaser1.jpg\') 50% 0 no-repeat; background-size: cover; height: 570px;\\\">\\r\\n<div class=\\\"uk-height-1-1 uk-vertical-align\\\">\\r\\n<div class=\\\"uk-vertical-align-middle\\\">\\r\\n<p class=\\\"tm-text-white uk-margin-large-top\\\" style=\\\"font-style: italic;\\\">\\u00a0<\\/p>\\r\\n<p class=\\\"tm-text-white uk-margin-large-top\\\" style=\\\"font-style: italic;\\\">\\u00a0<\\/p>\\r\\n<p class=\\\"tm-text-white uk-margin-large-top\\\" style=\\\"font-style: italic;\\\">\\u00a0<\\/p>\\r\\n<p class=\\\"tm-text-white uk-margin-large-top\\\" style=\\\"font-style: italic;\\\">\\u00a0<\\/p>\\r\\n<p class=\\\"tm-text-white uk-margin-large-top\\\" style=\\\"font-style: italic;\\\">el mejor MMORPG de todos los tiempos<\\/p>\\r\\n<h1 class=\\\"tm-heading-teaser uk-margin-top-remove uk-margin-large\\\">DYNAMITE HA VUELTO<\\/h1>\\r\\n<div class=\\\"uk-button-group\\\"><a class=\\\"uk-button\\\" href=\\\"#\\\">Descargar<\\/a> <a class=\\\"uk-button\\\" href=\\\"#\\\">Saber m\\u00e1s<\\/a><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\",\"caption\":\"\"},\"53568b401a70c\":{\"title\":\"Phantasia\",\"content\":\"<div class=\\\"uk-align-center tm-contrast\\\" style=\\\"background: url(\'images\\/yootheme\\/home_wow_teaser2.jpg\') 50% 0 no-repeat; background-size: cover; height: 570px;\\\">\\r\\n<div class=\\\"uk-height-1-1 uk-vertical-align\\\">\\r\\n<div class=\\\"uk-vertical-align-middle\\\">\\r\\n<p class=\\\"tm-text-white uk-margin-large-top\\\" style=\\\"font-style: italic;\\\">\\u00a0<\\/p>\\r\\n<p class=\\\"tm-text-white uk-margin-large-top\\\" style=\\\"font-style: italic;\\\">\\u00a0<\\/p>\\r\\n<p class=\\\"tm-text-white uk-margin-large-top\\\" style=\\\"font-style: italic;\\\">\\u00a0<\\/p>\\r\\n<p class=\\\"tm-text-white uk-margin-large-top\\\" style=\\\"font-style: italic;\\\">\\u00a0<\\/p>\\r\\n<p class=\\\"tm-text-white uk-margin-large-top\\\" style=\\\"font-style: italic;\\\">un mundo nuevo<\\/p>\\r\\n<h1 class=\\\"tm-heading-teaser uk-margin-top-remove uk-margin-large\\\">PR\\u00d3XIMAMENTE EN DYNAMITE<\\/h1>\\r\\n<a class=\\\"uk-button\\\" href=\\\"index.php\\/wow\\/phantasia\\\">Adelanto de Phantasia ReBorn<\\/a><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\",\"caption\":\"\"},\"53568b4bbc366\":{\"title\":\"Vesperia\",\"content\":\"<div class=\\\"uk-align-center tm-contrast\\\" style=\\\"background: url(\'images\\/yootheme\\/home_wow_teaser3.jpg\') 50% 0 no-repeat; background-size: cover; height: 570px;\\\">\\r\\n<div class=\\\"uk-height-1-1 uk-vertical-align\\\">\\r\\n<div class=\\\"uk-vertical-align-middle\\\">\\r\\n<p class=\\\"tm-text-white uk-margin-large-top\\\" style=\\\"font-style: italic;\\\">\\u00a0<\\/p>\\r\\n<p class=\\\"tm-text-white uk-margin-large-top\\\" style=\\\"font-style: italic;\\\">\\u00a0<\\/p>\\r\\n<p class=\\\"tm-text-white uk-margin-large-top\\\" style=\\\"font-style: italic;\\\">\\u00a0<\\/p>\\r\\n<p class=\\\"tm-text-white uk-margin-large-top\\\" style=\\\"font-style: italic;\\\">\\u00a0<\\/p>\\r\\n<p class=\\\"tm-text-white uk-margin-large-top\\\" style=\\\"font-style: italic;\\\">la experiencia World of Warcraft\\u00ae Cataclysm original<\\/p>\\r\\n<h1 class=\\\"tm-heading-teaser uk-margin-top-remove uk-margin-large\\\">EMPIEZA EN EL NIVEL 80<\\/h1>\\r\\n<a class=\\\"uk-button\\\" href=\\\"#\\\">Jugar en Vesperia<\\/a><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\",\"caption\":\"\"}}}','2014-03-05 11:16:27','2015-07-09 18:36:30'),
	(56,'map','default','Home Map Peak','{\"type\":\"map\",\"id\":56,\"name\":\"Home Map Peak\",\"settings\":{\"style\":\"default\",\"width\":\"auto\",\"height\":300,\"mapTypeId\":\"roadmap\",\"zoom\":14,\"mapCtrl\":2,\"typeCtrl\":0,\"popup\":1,\"directions\":0,\"unitSystem\":0,\"clusterMarker\":0,\"styler_invert_lightness\":0,\"zoomWhl\":0,\"draggable\":1,\"styler_hue\":\"\",\"styler_saturation\":-100,\"styler_lightness\":30,\"styler_gamma\":1},\"style\":\"default\",\"items\":{\"53171b0969d0c\":{\"title\":\"New York\",\"lat\":\"40.772156876706546\",\"lng\":\"-73.97403717041016\",\"icon\":\"red-dot\",\"popup\":\"\"}}}','2014-03-05 12:42:59','2014-10-20 12:11:21'),
	(57,'slideshow','peak','Home Slideshow','{\"type\":\"slideshow\",\"id\":57,\"name\":\"Home Slideshow\",\"settings\":{\"style\":\"peak\",\"autoplay\":1,\"interval\":10000,\"width\":1200,\"height\":200,\"duration\":500,\"index\":0,\"order\":\"default\",\"navigation\":0,\"buttons\":0,\"slices\":20,\"animated\":\"fade\",\"caption_animation_duration\":500},\"style\":\"peak\",\"items\":{\"53565eabf0464\":{\"title\":\"Bienvenido\",\"content\":\"<div align=\\\"center\\\">\\r\\n<div class=\\\"uk-align-center tm-contrast uk-margin-top-remove\\\" style=\\\"background: url(\'images\\/yootheme\\/home_teaser.jpg\') 50% 0 no-repeat; background-size: cover; height: 570px;\\\">\\r\\n<p class=\\\"tm-text-white\\\" style=\\\"font-style: italic;\\\">ya tenemos los mejores juegos online de la historia<\\/p>\\r\\n<p class=\\\"tm-text-white uk-margin-large-top\\\" style=\\\"font-style: italic;\\\">\\u00a0<\\/p>\\r\\n<p class=\\\"tm-text-white uk-margin-large-top\\\" style=\\\"font-style: italic;\\\">\\u00a0<\\/p>\\r\\n<p class=\\\"tm-text-white uk-margin-large-top\\\" style=\\\"font-style: italic;\\\">\\u00a0<\\/p>\\r\\n<p class=\\\"tm-text-white uk-margin-large-top\\\" style=\\\"font-style: italic;\\\">\\u00a0<\\/p>\\r\\n<p class=\\\"tm-text-white\\\" style=\\\"font-style: italic;\\\">\\u00a0<\\/p>\\r\\n<p class=\\\"tm-text-white\\\" style=\\\"font-style: italic;\\\">\\u00a0<\\/p>\\r\\n<p class=\\\"tm-text-white\\\" style=\\\"font-style: italic;\\\">\\u00a0<\\/p>\\r\\n<p class=\\\"tm-text-white\\\" style=\\\"font-style: italic;\\\">\\u00a0<\\/p>\\r\\n<p class=\\\"tm-text-white\\\" style=\\\"font-style: italic;\\\">\\u00a0<\\/p>\\r\\n<h1 class=\\\"tm-heading-teaser uk-margin-top-remove uk-margin-bottom-remove\\\">NOS FALTAS T\\u00da<\\/h1>\\r\\n<div class=\\\"uk-button-group uk-margin-top-remove\\\"><a class=\\\"uk-button\\\" href=\\\"#\\\">Jugar ahora<\\/a> <a class=\\\"uk-button\\\" href=\\\"#\\\">Saber m\\u00e1s<\\/a><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\",\"caption\":\"\"}}}','2015-07-09 01:53:22','2015-07-09 04:41:15');

/*!40000 ALTER TABLE `web_widgetkit_widget` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_zoo_application
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_zoo_application`;

CREATE TABLE `web_zoo_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `application_group` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_zoo_application` WRITE;
/*!40000 ALTER TABLE `web_zoo_application` DISABLE KEYS */;

INSERT INTO `web_zoo_application` (`id`, `asset_id`, `name`, `alias`, `application_group`, `description`, `params`)
VALUES
	(1,193,'Noticias','blog','blog','',' {\n	\"template\": \"uikit\",\n	\"content.title\": \"Blog\",\n	\"content.subtitle\": \"\",\n	\"content.image\": \"\",\n	\"content.image_width\": \"\",\n	\"content.image_height\": \"\",\n	\"template.show_title\": \"0\",\n	\"global.config.items_per_page\": \"15\",\n	\"global.config.item_order\":  {\n		\"0\": \"_itemcreated\",\n		\"1\": \"\",\n		\"2\": \"\",\n		\"3\": \"_reversed\"\n	},\n	\"global.config.show_feed_link\": \"1\",\n	\"global.config.feed_title\": \"\",\n	\"global.config.alternate_feed_link\": \"\",\n	\"global.template.show_title\": \"1\",\n	\"global.template.show_description\": \"1\",\n	\"global.template.show_image\": \"1\",\n	\"global.template.alignment\": \"left\",\n	\"global.template.date\": \"0\",\n	\"global.template.date_format\": \"%d||%B||%Y\",\n	\"global.template.items_cols\": \"1\",\n	\"global.template.items_order\": \"0\",\n	\"global.template.teaseritem_media_alignment\": \"bottom\",\n	\"global.template.item_media_alignment\": \"bottom\",\n	\"global.comments.enable_comments\": \"1\",\n	\"global.comments.require_name_and_mail\": \"1\",\n	\"global.comments.registered_users_only\": \"0\",\n	\"global.comments.approved\": \"0\",\n	\"global.comments.time_between_user_posts\": \"120\",\n	\"global.comments.email_notification\": \"\",\n	\"global.comments.email_reply_notification\": \"0\",\n	\"global.comments.avatar\": \"1\",\n	\"global.comments.order\": \"ASC\",\n	\"global.comments.max_depth\": \"5\",\n	\"global.comments.facebook_enable\": \"0\",\n	\"global.comments.facebook_app_id\": \"\",\n	\"global.comments.facebook_app_secret\": \"\",\n	\"global.comments.twitter_enable\": \"0\",\n	\"global.comments.twitter_consumer_key\": \"\",\n	\"global.comments.twitter_consumer_secret\": \"\",\n	\"global.comments.akismet_enable\": \"0\",\n	\"global.comments.akismet_api_key\": \"\",\n	\"global.comments.mollom_enable\": \"0\",\n	\"global.comments.mollom_public_key\": \"\",\n	\"global.comments.mollom_private_key\": \"\",\n	\"global.comments.captcha\": \"\",\n	\"global.comments.captcha_guest_only\": \"1\",\n	\"global.comments.blacklist\": \"\"\n}'),
	(8,0,'Pages','pages','page','',' {\n	\"template\": \"uikit\",\n	\"global.template.item_media_alignment\": \"right\",\n	\"global.template.show_item_meta\": \"1\",\n	\"global.template.show_item_related\": \"1\",\n	\"global.comments.enable_comments\": \"1\",\n	\"global.comments.require_name_and_mail\": \"1\",\n	\"global.comments.registered_users_only\": \"0\",\n	\"global.comments.approved\": \"0\",\n	\"global.comments.time_between_user_posts\": \"120\",\n	\"global.comments.avatar\": \"1\",\n	\"global.comments.order\": \"ASC\",\n	\"global.comments.max_depth\": \"5\",\n	\"global.comments.facebook_enable\": \"0\",\n	\"global.comments.facebook_api_key\": \"\",\n	\"global.comments.facebook_api_secret\": \"\",\n	\"global.comments.twitter_enable\": \"0\",\n	\"global.comments.twitter_consumer_key\": \"\",\n	\"global.comments.twitter_consumer_secret\": \"\",\n	\"global.comments.akismet_enable\": \"0\",\n	\"global.comments.akismet_api_key\": \"\",\n	\"global.comments.mollom_enable\": \"0\",\n	\"global.comments.mollom_public_key\": \"\",\n	\"global.comments.mollom_private_key\": \"\",\n	\"global.comments.blacklist\": \"\",\n	\"global.config.item_order\":  {\n\n	}\n}'),
	(9,221,'Descargas','descargas','download','',' {\n	\"group\": \"download\",\n	\"template\": \"uikit\",\n	\"global.config.items_per_page\": \"15\",\n	\"global.config.item_order\":  {\n		\"0\": \"_itemname\",\n		\"1\": \"\"\n	},\n	\"global.config.alpha_index\": \"3\",\n	\"global.config.show_feed_link\": \"0\",\n	\"global.config.feed_title\": \"\",\n	\"global.config.alternate_feed_link\": \"\",\n	\"global.config.show_empty_categories\": \"0\",\n	\"global.template.show_alpha_index\": \"1\",\n	\"global.template.show_title\": \"1\",\n	\"global.template.show_description\": \"1\",\n	\"global.template.show_image\": \"1\",\n	\"global.template.alignment\": \"left\",\n	\"global.template.show_categories\": \"1\",\n	\"global.template.categories_cols\": \"4\",\n	\"global.template.show_categories_titles\": \"1\",\n	\"global.template.show_categories_item_count\": \"1\",\n	\"global.template.show_categories_descriptions\": \"1\",\n	\"global.template.show_categories_images\": \"1\",\n	\"global.template.show_sub_categories\": \"1\",\n	\"global.template.show_sub_categories_item_count\": \"1\",\n	\"global.template.items_cols\": \"2\",\n	\"global.template.items_media_alignment\": \"left\",\n	\"global.comments.enable_comments\": \"1\",\n	\"global.comments.require_name_and_mail\": \"1\",\n	\"global.comments.registered_users_only\": \"0\",\n	\"global.comments.approved\": \"0\",\n	\"global.comments.time_between_user_posts\": \"120\",\n	\"global.comments.email_notification\": \"\",\n	\"global.comments.email_reply_notification\": \"0\",\n	\"global.comments.avatar\": \"1\",\n	\"global.comments.order\": \"ASC\",\n	\"global.comments.max_depth\": \"5\",\n	\"global.comments.facebook_enable\": \"0\",\n	\"global.comments.facebook_app_id\": \"\",\n	\"global.comments.facebook_app_secret\": \"\",\n	\"global.comments.twitter_enable\": \"0\",\n	\"global.comments.twitter_consumer_key\": \"\",\n	\"global.comments.twitter_consumer_secret\": \"\",\n	\"global.comments.akismet_enable\": \"0\",\n	\"global.comments.akismet_api_key\": \"\",\n	\"global.comments.mollom_enable\": \"0\",\n	\"global.comments.mollom_public_key\": \"\",\n	\"global.comments.mollom_private_key\": \"\",\n	\"global.comments.captcha\": \"\",\n	\"global.comments.captcha_guest_only\": \"1\",\n	\"global.comments.blacklist\": \"\"\n}');

/*!40000 ALTER TABLE `web_zoo_application` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_zoo_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_zoo_category`;

CREATE TABLE `web_zoo_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ALIAS_INDEX` (`alias`),
  KEY `PUBLISHED_INDEX` (`published`),
  KEY `APPLICATIONID_ID_INDEX` (`application_id`,`published`,`id`),
  KEY `APPLICATIONID_ID_INDEX2` (`application_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_zoo_category` WRITE;
/*!40000 ALTER TABLE `web_zoo_category` DISABLE KEYS */;

INSERT INTO `web_zoo_category` (`id`, `application_id`, `name`, `alias`, `description`, `parent`, `ordering`, `published`, `params`)
VALUES
	(1,1,'Counter Strike: Global Offensive','icons','',4,3,1,' {\n	\"content.subtitle\": \"\",\n	\"content.image\": \"\",\n	\"content.image_width\": \"\",\n	\"content.image_height\": \"\",\n	\"metadata.title\": \"\",\n	\"metadata.description\": \"\",\n	\"metadata.keywords\": \"\",\n	\"metadata.robots\": \"\",\n	\"metadata.author\": \"\"\n}'),
	(2,1,'Minecraft','web-design','',4,2,1,' {\n	\"content.subtitle\": \"\",\n	\"content.image\": \"\",\n	\"content.image_width\": \"\",\n	\"content.image_height\": \"\",\n	\"metadata.title\": \"\",\n	\"metadata.description\": \"\",\n	\"metadata.keywords\": \"\",\n	\"metadata.robots\": \"\",\n	\"metadata.author\": \"\"\n}'),
	(3,1,'World Of Warcraft','wallpapers','',4,1,1,' {\n	\"content.subtitle\": \"\",\n	\"content.image\": \"\",\n	\"content.image_width\": \"\",\n	\"content.image_height\": \"\",\n	\"metadata.title\": \"\",\n	\"metadata.description\": \"\",\n	\"metadata.keywords\": \"\",\n	\"metadata.robots\": \"\",\n	\"metadata.author\": \"\"\n}'),
	(4,1,'Dynamite','typography','',0,1,1,' {\n	\"content.subtitle\": \"\",\n	\"content.image\": \"\",\n	\"content.image_width\": \"\",\n	\"content.image_height\": \"\",\n	\"metadata.title\": \"\",\n	\"metadata.description\": \"\",\n	\"metadata.keywords\": \"\",\n	\"metadata.robots\": \"\",\n	\"metadata.author\": \"\"\n}');

/*!40000 ALTER TABLE `web_zoo_category` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_zoo_category_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_zoo_category_item`;

CREATE TABLE `web_zoo_category_item` (
  `category_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`item_id`),
  KEY `ITEMID_INDEX` (`item_id`),
  KEY `CATEGORYID_INDEX` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_zoo_category_item` WRITE;
/*!40000 ALTER TABLE `web_zoo_category_item` DISABLE KEYS */;

INSERT INTO `web_zoo_category_item` (`category_id`, `item_id`)
VALUES
	(0,1),
	(0,2),
	(0,3),
	(0,4),
	(0,5),
	(0,6),
	(0,7),
	(0,8),
	(0,198),
	(1,1),
	(1,2),
	(2,1),
	(2,4),
	(2,6),
	(2,7),
	(2,8),
	(2,198),
	(3,1),
	(3,3),
	(3,5),
	(3,7),
	(4,1),
	(4,4),
	(4,8);

/*!40000 ALTER TABLE `web_zoo_category_item` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_zoo_comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_zoo_comment`;

CREATE TABLE `web_zoo_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `content` text NOT NULL,
  `state` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `STATE_INDEX` (`state`),
  KEY `CREATED_INDEX` (`created`),
  KEY `ITEMID_INDEX` (`item_id`),
  KEY `AUTHOR_INDEX` (`author`),
  KEY `ITEMID_STATE_INDEX` (`item_id`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_zoo_comment` WRITE;
/*!40000 ALTER TABLE `web_zoo_comment` DISABLE KEYS */;

INSERT INTO `web_zoo_comment` (`id`, `parent_id`, `item_id`, `user_id`, `user_type`, `author`, `email`, `url`, `ip`, `created`, `content`, `state`)
VALUES
	(3,0,1,'','','Mike','mike@gmail.com','','192.168.1.50','2010-03-19 14:39:27','What a great and useful article!',1),
	(4,0,1,'','','Bill','bill@gmail.com','','192.168.1.50','2010-04-08 16:42:56','What a wonderful blog! Thumbs up!',1),
	(5,0,1,'','','Dave','dave@gmail.com','','192.168.1.50','2010-04-08 16:46:45','YOOtheme is not only just a theme provider anymore - they are a true all-in-one Joomla solution!',1),
	(7,4,1,'','','Steve','steve@gmail.com','','192.168.1.50','2010-04-08 16:48:43','I agree! It is really a beautiful blog.',1),
	(8,4,1,'','','Tom','tom@gmail.com','','192.168.1.50','2010-04-08 16:49:52','Yes, that is right! Loving it!',1),
	(10,4,1,'42','joomla','YOOtheme','email@0.0.0.0','','192.168.1.50','2010-05-01 13:06:50','Thank you all for the positive feedback!',1);

/*!40000 ALTER TABLE `web_zoo_comment` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_zoo_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_zoo_item`;

CREATE TABLE `web_zoo_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `priority` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `access` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `searchable` int(11) NOT NULL,
  `elements` longtext NOT NULL,
  `params` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ALIAS_INDEX` (`alias`),
  KEY `PUBLISH_INDEX` (`publish_up`,`publish_down`),
  KEY `STATE_INDEX` (`state`),
  KEY `ACCESS_INDEX` (`access`),
  KEY `CREATED_BY_INDEX` (`created_by`),
  KEY `NAME_INDEX` (`name`),
  KEY `APPLICATIONID_INDEX` (`application_id`),
  KEY `TYPE_INDEX` (`type`),
  KEY `MULTI_INDEX` (`application_id`,`access`,`state`,`publish_up`,`publish_down`),
  KEY `MULTI_INDEX2` (`id`,`access`,`state`,`publish_up`,`publish_down`),
  KEY `ID_APPLICATION_INDEX` (`id`,`application_id`),
  FULLTEXT KEY `SEARCH_FULLTEXT` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_zoo_item` WRITE;
/*!40000 ALTER TABLE `web_zoo_item` DISABLE KEYS */;

INSERT INTO `web_zoo_item` (`id`, `application_id`, `type`, `name`, `alias`, `created`, `modified`, `modified_by`, `publish_up`, `publish_down`, `priority`, `hits`, `state`, `access`, `created_by`, `created_by_alias`, `searchable`, `elements`, `params`)
VALUES
	(1,1,'article','How are you holding up? - Dynamite Zone Teaser Trailer ','beautiful-iphone-wallpapers','2010-03-11 11:05:02','2015-07-12 06:04:41',969,'2010-03-11 11:05:02','0000-00-00 00:00:00',0,195,1,1,42,'',1,' {\n	\"2616ded9-e88b-4b77-a92c-2c4c18bb995f\":  {\n		\"0\":  {\n			\"value\": \"\"\n		}\n	},\n	\"fc5a6788-ffae-41d9-a812-3530331fef64\":  {\n		\"item\":  {\n			\"0\": \"38\"\n		}\n	},\n	\"08795744-c2dc-4a68-8252-4e21c4c4c774\":  {\n		\"0\":  {\n			\"value\": \"Video de presentaci\\u00f3n de Dynamite.zone\"\n		}\n	},\n	\"2e3c9e69-1f9e-4647-8d13-4e88094d2790\":  {\n		\"0\":  {\n			\"value\": \"<iframe width=100% height=720 src=\\\"https:\\/\\/www.youtube.com\\/embed\\/bD4D9z9bNAk?rel=0&amp;showinfo=0\\\" frameborder=\\\"0\\\" allowfullscreen><\\/iframe>\"\n		},\n		\"1\":  {\n			\"value\": \"\\\"Lo siento, lo siento mucho por no poder dar m\\u00e1s informaci\\u00f3n en este momento, tengo mucho trabajo. Y queremos que salga pronto. Esperamos que la escueta informaci\\u00f3n que hemos colocado en nuestra cuenta de twitter y en el video de presentaci\\u00f3n sean lo suficientemente explicativos.\\\"\\r\\nSomos Amterapsu, Baranthur, Desch, eThyrie, Skrollex, Iago y Ketejostio. Y esto es Dynamite Reborn\"\n		}\n	},\n	\"cdce6654-4e01-4a7f-9ed6-0407709d904c\":  {\n		\"file\": \"images\\/yootheme\\/zoo\\/blog\\/image04_teaser.jpg\",\n		\"title\": \"\",\n		\"link\": \"\",\n		\"target\": \"0\",\n		\"rel\": \"\",\n		\"lightbox_image\": \"\",\n		\"spotlight_effect\": \"\",\n		\"caption\": \"\",\n		\"width\": 550,\n		\"height\": 250\n	},\n	\"c26feca6-b2d4-47eb-a74d-b067aaae5b90\":  {\n		\"file\": \"images\\/yootheme\\/zoo\\/blog\\/image04.jpg\",\n		\"title\": \"\",\n		\"link\": \"\",\n		\"target\": \"0\",\n		\"rel\": \"\",\n		\"lightbox_image\": \"\",\n		\"spotlight_effect\": \"\",\n		\"caption\": \"\",\n		\"width\": 550,\n		\"height\": 520\n	},\n	\"0bee21e2-8f88-4f5b-83af-686cd1c7ef4b\":  {\n		\"url\": \"\",\n		\"width\": \"\",\n		\"height\": \"\",\n		\"autoplay\": \"0\"\n	},\n	\"65b7851d-199f-4ac6-95a7-409ad1bca488\":  {\n		\"item\":  {\n			\"0\": \"7\",\n			\"1\": \"3\"\n		}\n	},\n	\"fdcbebaa-e61a-462d-963e-aff74ff95499\":  {\n		\"0\":  {\n			\"value\": \"\",\n			\"text\": \"\",\n			\"target\": \"0\",\n			\"custom_title\": \"\",\n			\"rel\": \"\"\n		}\n	},\n	\"d857d939-47e9-4303-8f37-93b0cecace54\":  {\n		\"value\": \"1\"\n	}\n}',' {\n	\"metadata.title\": \"\",\n	\"metadata.description\": \"\",\n	\"metadata.keywords\": \"\",\n	\"metadata.robots\": \"\",\n	\"metadata.author\": \"\",\n	\"config.enable_comments\": \"1\",\n	\"config.primary_category\": \"4\"\n}'),
	(2,1,'article','Free Icon Sets','free-icon-sets','2010-03-09 11:10:35','2010-04-23 09:57:53',42,'2010-03-09 11:10:35','0000-00-00 00:00:00',0,4,1,1,42,'',1,' {\n	\"fc5a6788-ffae-41d9-a812-3530331fef64\":  {\n		\"item\":  {\n			\"0\": \"38\"\n		}\n	},\n	\"08795744-c2dc-4a68-8252-4e21c4c4c774\":  {\n		\"0\":  {\n			\"value\": \"Let\'s take a look at this fresh and beautiful icon sets\"\n		}\n	},\n	\"2e3c9e69-1f9e-4647-8d13-4e88094d2790\":  {\n		\"0\":  {\n			\"value\": \"Teaser Text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.\"\n		},\n		\"1\":  {\n			\"value\": \"More Text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.\"\n		}\n	},\n	\"cdce6654-4e01-4a7f-9ed6-0407709d904c\":  {\n		\"file\": \"images\\/yootheme\\/zoo\\/blog\\/image05.jpg\",\n		\"width\": \"550\",\n		\"height\": \"250\"\n	},\n	\"c26feca6-b2d4-47eb-a74d-b067aaae5b90\":  {\n		\"file\": \"images\\/yootheme\\/zoo\\/blog\\/image05.jpg\",\n		\"link\": \"\",\n		\"target\": \"\",\n		\"rel\": \"\",\n		\"width\": \"550\",\n		\"height\": \"250\"\n	},\n	\"ff1ed5b5-4365-457e-98bb-026366028bd7\":  {\n		\"file\": \"\",\n		\"url\": \"\",\n		\"format\": \"\",\n		\"width\": \"\",\n		\"height\": \"\",\n		\"autoplay\": \"\"\n	},\n	\"6af341e4-f0e9-4605-b2a5-60d7a3525a96\":  {\n		\"value\": \"1\"\n	},\n	\"65b7851d-199f-4ac6-95a7-409ad1bca488\":  {\n\n	},\n	\"fdcbebaa-e61a-462d-963e-aff74ff95499\":  {\n		\"0\":  {\n			\"text\": \"\",\n			\"value\": \"\",\n			\"target\": \"\",\n			\"rel\": \"\"\n		}\n	}\n}','{\"config.enable_comments\":\"1\",\"metadata.description\":\"\",\"metadata.keywords\":\"\",\"metadata.robots\":\"\",\"metadata.author\":\"\",\"config.primary_category\":\"1\"}'),
	(3,1,'article','Digital Movie Wallpapers','digital-movie-wallpapers','2010-03-07 11:14:22','2010-03-12 09:08:43',42,'2010-03-07 11:14:22','0000-00-00 00:00:00',0,9,1,1,42,'',1,' {\n	\"fc5a6788-ffae-41d9-a812-3530331fef64\":  {\n		\"item\":  {\n			\"0\": \"38\"\n		}\n	},\n	\"08795744-c2dc-4a68-8252-4e21c4c4c774\":  {\n		\"0\":  {\n			\"value\": \"Take a look at some Digital Movie Wallpapers\"\n		}\n	},\n	\"2e3c9e69-1f9e-4647-8d13-4e88094d2790\":  {\n		\"0\":  {\n			\"value\": \"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.\"\n		}\n	},\n	\"cdce6654-4e01-4a7f-9ed6-0407709d904c\":  {\n		\"file\": \"images\\/yootheme\\/zoo\\/blog\\/image07.jpg\",\n		\"width\": \"550\",\n		\"height\": \"250\"\n	},\n	\"c26feca6-b2d4-47eb-a74d-b067aaae5b90\":  {\n		\"file\": \"images\\/yootheme\\/zoo\\/blog\\/image07.jpg\",\n		\"link\": \"\",\n		\"target\": \"\",\n		\"rel\": \"\",\n		\"width\": \"550\",\n		\"height\": \"250\"\n	},\n	\"ff1ed5b5-4365-457e-98bb-026366028bd7\":  {\n		\"file\": \"\",\n		\"url\": \"\",\n		\"format\": \"\",\n		\"width\": \"\",\n		\"height\": \"\",\n		\"autoplay\": \"\"\n	},\n	\"6af341e4-f0e9-4605-b2a5-60d7a3525a96\":  {\n		\"value\": \"1\"\n	},\n	\"65b7851d-199f-4ac6-95a7-409ad1bca488\":  {\n		\"item\":  {\n			\"0\": \"7\",\n			\"1\": \"1\"\n		}\n	},\n	\"fdcbebaa-e61a-462d-963e-aff74ff95499\":  {\n		\"0\":  {\n			\"text\": \"\",\n			\"value\": \"\",\n			\"target\": \"\",\n			\"rel\": \"\"\n		}\n	}\n}','{\"config.enable_comments\":\"1\",\"metadata.description\":\"\",\"metadata.keywords\":\"\",\"metadata.robots\":\"\",\"metadata.author\":\"\",\"config.primary_category\":\"3\"}'),
	(4,1,'article','Brilliant Typefaces','brilliant-typefaces','2010-03-10 11:15:57','2010-03-21 18:14:10',42,'2010-03-10 11:15:57','0000-00-00 00:00:00',0,33,1,1,42,'',1,' {\n	\"fc5a6788-ffae-41d9-a812-3530331fef64\":  {\n		\"item\":  {\n			\"0\": \"38\",\n			\"1\": \"36\"\n		}\n	},\n	\"08795744-c2dc-4a68-8252-4e21c4c4c774\":  {\n		\"0\":  {\n			\"value\": \"High-Quality Fonts for Professional Design\"\n		}\n	},\n	\"2e3c9e69-1f9e-4647-8d13-4e88094d2790\":  {\n		\"0\":  {\n			\"value\": \"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.\"\n		}\n	},\n	\"cdce6654-4e01-4a7f-9ed6-0407709d904c\":  {\n		\"file\": \"images\\/yootheme\\/zoo\\/blog\\/image01.jpg\",\n		\"width\": \"550\",\n		\"height\": \"250\"\n	},\n	\"c26feca6-b2d4-47eb-a74d-b067aaae5b90\":  {\n		\"file\": \"images\\/yootheme\\/zoo\\/blog\\/image01.jpg\",\n		\"link\": \"\",\n		\"target\": \"\",\n		\"rel\": \"\",\n		\"width\": \"550\",\n		\"height\": \"250\"\n	},\n	\"ff1ed5b5-4365-457e-98bb-026366028bd7\":  {\n		\"file\": \"\",\n		\"url\": \"\",\n		\"format\": \"\",\n		\"width\": \"\",\n		\"height\": \"\",\n		\"autoplay\": \"\"\n	},\n	\"6af341e4-f0e9-4605-b2a5-60d7a3525a96\":  {\n		\"value\": \"1\"\n	},\n	\"65b7851d-199f-4ac6-95a7-409ad1bca488\":  {\n		\"item\":  {\n			\"0\": \"8\"\n		}\n	},\n	\"fdcbebaa-e61a-462d-963e-aff74ff95499\":  {\n		\"0\":  {\n			\"text\": \"\",\n			\"value\": \"\",\n			\"target\": \"\",\n			\"rel\": \"\"\n		}\n	}\n}','{\"config.enable_comments\":\"1\",\"metadata.description\":\"\",\"metadata.keywords\":\"\",\"metadata.robots\":\"\",\"metadata.author\":\"\",\"template.teaseritem_media_alignment\":\"top\",\"template.item_media_alignment\":\"top\",\"config.primary_category\":\"2\"}'),
	(5,1,'article','Excellent HDR Photography','excellent-hdr-photography','2010-03-08 11:17:08','2010-04-23 09:58:26',42,'2010-03-08 11:17:08','0000-00-00 00:00:00',0,6,1,1,42,'',1,' {\n	\"fc5a6788-ffae-41d9-a812-3530331fef64\":  {\n		\"item\":  {\n			\"0\": \"36\"\n		}\n	},\n	\"08795744-c2dc-4a68-8252-4e21c4c4c774\":  {\n		\"0\":  {\n			\"value\": \"Incredibly beautiful High Dynamic Range Pictures\"\n		}\n	},\n	\"2e3c9e69-1f9e-4647-8d13-4e88094d2790\":  {\n		\"0\":  {\n			\"value\": \"Teaser Text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.\"\n		},\n		\"1\":  {\n			\"value\": \"More Text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.\"\n		}\n	},\n	\"cdce6654-4e01-4a7f-9ed6-0407709d904c\":  {\n		\"file\": \"images\\/yootheme\\/zoo\\/blog\\/image06.jpg\",\n		\"width\": \"550\",\n		\"height\": \"250\"\n	},\n	\"c26feca6-b2d4-47eb-a74d-b067aaae5b90\":  {\n		\"file\": \"images\\/yootheme\\/zoo\\/blog\\/image06.jpg\",\n		\"link\": \"\",\n		\"target\": \"\",\n		\"rel\": \"\",\n		\"width\": \"550\",\n		\"height\": \"250\"\n	},\n	\"ff1ed5b5-4365-457e-98bb-026366028bd7\":  {\n		\"file\": \"\",\n		\"url\": \"\",\n		\"format\": \"\",\n		\"width\": \"\",\n		\"height\": \"\",\n		\"autoplay\": \"\"\n	},\n	\"6af341e4-f0e9-4605-b2a5-60d7a3525a96\":  {\n		\"value\": \"1\"\n	},\n	\"65b7851d-199f-4ac6-95a7-409ad1bca488\":  {\n		\"item\":  {\n			\"0\": \"3\"\n		}\n	},\n	\"fdcbebaa-e61a-462d-963e-aff74ff95499\":  {\n		\"0\":  {\n			\"text\": \"\",\n			\"value\": \"\",\n			\"target\": \"\",\n			\"rel\": \"\"\n		}\n	}\n}','{\"config.enable_comments\":\"1\",\"metadata.description\":\"\",\"metadata.keywords\":\"\",\"metadata.robots\":\"\",\"metadata.author\":\"\",\"template.teaseritem_media_alignment\":\"top\",\"template.item_media_alignment\":\"top\",\"config.primary_category\":\"3\"}'),
	(198,1,'article','Take the ZOO video tour!','take-the-zoo-video-tour','2010-03-11 11:05:01','2010-05-01 13:38:27',42,'2010-03-11 11:05:01','0000-00-00 00:00:00',0,191,1,1,42,'',1,' {\n	\"fc5a6788-ffae-41d9-a812-3530331fef64\":  {\n		\"item\":  {\n			\"0\": \"38\"\n		}\n	},\n	\"08795744-c2dc-4a68-8252-4e21c4c4c774\":  {\n		\"0\":  {\n			\"value\": \"Get a sneek peek of all apps in our new ZOO 2.0 video tour!\"\n		}\n	},\n	\"2e3c9e69-1f9e-4647-8d13-4e88094d2790\":  {\n		\"0\":  {\n			\"value\": \"Teaser Text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.\"\n		},\n		\"1\":  {\n			\"value\": \"More Text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.\"\n		}\n	},\n	\"cdce6654-4e01-4a7f-9ed6-0407709d904c\":  {\n		\"file\": \"images\\/yootheme\\/zoo\\/blog\\/image09.jpg\",\n		\"width\": \"550\",\n		\"height\": \"250\"\n	},\n	\"c26feca6-b2d4-47eb-a74d-b067aaae5b90\":  {\n		\"file\": \"\",\n		\"link\": \"\",\n		\"target\": \"\",\n		\"rel\": \"\"\n	},\n	\"ff1ed5b5-4365-457e-98bb-026366028bd7\":  {\n		\"file\": \"\",\n		\"url\": \"http:\\/\\/zoo.yootheme.com\\/images\\/stories\\/videos\\/zoo_20_video_tour.flv\",\n		\"format\": \"flv\",\n		\"width\": \"549\",\n		\"height\": \"309\",\n		\"autoplay\": \"1\"\n	},\n	\"6af341e4-f0e9-4605-b2a5-60d7a3525a96\":  {\n		\"value\": \"1\"\n	},\n	\"65b7851d-199f-4ac6-95a7-409ad1bca488\":  {\n\n	},\n	\"fdcbebaa-e61a-462d-963e-aff74ff95499\":  {\n		\"0\":  {\n			\"text\": \"ZOO Website\",\n			\"value\": \"http:\\/\\/zoo.yootheme.com\",\n			\"target\": \"1\",\n			\"rel\": \"\"\n		},\n		\"1\":  {\n			\"text\": \"YOOtheme Website\",\n			\"value\": \"http:\\/\\/www.yootheme.com\",\n			\"target\": \"\",\n			\"rel\": \"\"\n		}\n	}\n}','{\"config.enable_comments\":\"1\",\"metadata.description\":\"\",\"metadata.keywords\":\"\",\"metadata.robots\":\"\",\"metadata.author\":\"\",\"config.primary_category\":\"2\"}'),
	(6,1,'article','Open Source CMS','open-source-cms','2010-03-06 11:18:35','2010-03-21 18:14:46',42,'2010-03-06 11:18:35','0000-00-00 00:00:00',0,3,1,1,42,'',1,' {\n	\"fc5a6788-ffae-41d9-a812-3530331fef64\":  {\n		\"item\":  {\n			\"0\": \"36\"\n		}\n	},\n	\"08795744-c2dc-4a68-8252-4e21c4c4c774\":  {\n		\"0\":  {\n			\"value\": \"Learn more about some famous Content Management Systems\"\n		}\n	},\n	\"2e3c9e69-1f9e-4647-8d13-4e88094d2790\":  {\n		\"0\":  {\n			\"value\": \"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.\"\n		}\n	},\n	\"cdce6654-4e01-4a7f-9ed6-0407709d904c\":  {\n		\"file\": \"images\\/yootheme\\/zoo\\/blog\\/image08.jpg\",\n		\"width\": \"550\",\n		\"height\": \"150\"\n	},\n	\"c26feca6-b2d4-47eb-a74d-b067aaae5b90\":  {\n		\"file\": \"images\\/yootheme\\/zoo\\/blog\\/image08.jpg\",\n		\"link\": \"\",\n		\"target\": \"\",\n		\"rel\": \"\",\n		\"width\": \"550\",\n		\"height\": \"150\"\n	},\n	\"ff1ed5b5-4365-457e-98bb-026366028bd7\":  {\n		\"file\": \"\",\n		\"url\": \"\",\n		\"format\": \"\",\n		\"width\": \"\",\n		\"height\": \"\",\n		\"autoplay\": \"\"\n	},\n	\"6af341e4-f0e9-4605-b2a5-60d7a3525a96\":  {\n		\"value\": \"1\"\n	},\n	\"65b7851d-199f-4ac6-95a7-409ad1bca488\":  {\n\n	},\n	\"fdcbebaa-e61a-462d-963e-aff74ff95499\":  {\n		\"0\":  {\n			\"text\": \"\",\n			\"value\": \"\",\n			\"target\": \"\",\n			\"rel\": \"\"\n		}\n	}\n}','{\"config.enable_comments\":\"1\",\"metadata.description\":\"\",\"metadata.keywords\":\"\",\"metadata.robots\":\"\",\"metadata.author\":\"\",\"template.teaseritem_media_alignment\":\"top\",\"template.item_media_alignment\":\"top\",\"config.primary_category\":\"2\"}'),
	(7,1,'article','Stunning Desktop Wallpapers','stunning-desktop-wallpapers','2010-03-04 11:19:19','2010-03-12 09:09:08',42,'2010-03-04 11:19:19','0000-00-00 00:00:00',0,10,1,1,42,'',1,' {\n	\"fc5a6788-ffae-41d9-a812-3530331fef64\":  {\n		\"item\":  {\n			\"0\": \"36\"\n		}\n	},\n	\"08795744-c2dc-4a68-8252-4e21c4c4c774\":  {\n		\"0\":  {\n			\"value\": \"Get some inspiring wallpapers for your desktop\"\n		}\n	},\n	\"2e3c9e69-1f9e-4647-8d13-4e88094d2790\":  {\n		\"0\":  {\n			\"value\": \"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.\"\n		}\n	},\n	\"cdce6654-4e01-4a7f-9ed6-0407709d904c\":  {\n		\"file\": \"images\\/yootheme\\/zoo\\/blog\\/image02.jpg\",\n		\"width\": \"550\",\n		\"height\": \"250\"\n	},\n	\"c26feca6-b2d4-47eb-a74d-b067aaae5b90\":  {\n		\"file\": \"images\\/yootheme\\/zoo\\/blog\\/image02.jpg\",\n		\"link\": \"\",\n		\"target\": \"\",\n		\"rel\": \"\",\n		\"width\": \"550\",\n		\"height\": \"250\"\n	},\n	\"ff1ed5b5-4365-457e-98bb-026366028bd7\":  {\n		\"file\": \"\",\n		\"url\": \"\",\n		\"format\": \"\",\n		\"width\": \"\",\n		\"height\": \"\",\n		\"autoplay\": \"\"\n	},\n	\"6af341e4-f0e9-4605-b2a5-60d7a3525a96\":  {\n		\"value\": \"1\"\n	},\n	\"65b7851d-199f-4ac6-95a7-409ad1bca488\":  {\n		\"item\":  {\n			\"0\": \"3\",\n			\"1\": \"1\"\n		}\n	},\n	\"fdcbebaa-e61a-462d-963e-aff74ff95499\":  {\n		\"0\":  {\n			\"text\": \"\",\n			\"value\": \"\",\n			\"target\": \"\",\n			\"rel\": \"\"\n		}\n	}\n}','{\"config.enable_comments\":\"1\",\"metadata.description\":\"\",\"metadata.keywords\":\"\",\"metadata.robots\":\"\",\"metadata.author\":\"\",\"config.primary_category\":\"2\"}'),
	(8,1,'article','Typography Showcase','typography-showcase','2010-03-05 11:20:10','2010-04-23 09:58:58',42,'2010-03-05 11:20:10','0000-00-00 00:00:00',0,3,1,1,42,'',1,' {\n	\"fc5a6788-ffae-41d9-a812-3530331fef64\":  {\n		\"item\":  {\n			\"0\": \"36\"\n		}\n	},\n	\"08795744-c2dc-4a68-8252-4e21c4c4c774\":  {\n		\"0\":  {\n			\"value\": \"Take a look at Vintage and Retro Typography\"\n		}\n	},\n	\"2e3c9e69-1f9e-4647-8d13-4e88094d2790\":  {\n		\"0\":  {\n			\"value\": \"Teaser Text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.\"\n		},\n		\"1\":  {\n			\"value\": \"More Text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.\"\n		}\n	},\n	\"cdce6654-4e01-4a7f-9ed6-0407709d904c\":  {\n		\"file\": \"images\\/yootheme\\/zoo\\/blog\\/image03.jpg\",\n		\"width\": \"550\",\n		\"height\": \"250\"\n	},\n	\"c26feca6-b2d4-47eb-a74d-b067aaae5b90\":  {\n		\"file\": \"images\\/yootheme\\/zoo\\/blog\\/image03.jpg\",\n		\"link\": \"\",\n		\"target\": \"\",\n		\"rel\": \"\",\n		\"width\": \"550\",\n		\"height\": \"250\"\n	},\n	\"ff1ed5b5-4365-457e-98bb-026366028bd7\":  {\n		\"file\": \"\",\n		\"url\": \"\",\n		\"format\": \"\",\n		\"width\": \"\",\n		\"height\": \"\",\n		\"autoplay\": \"\"\n	},\n	\"6af341e4-f0e9-4605-b2a5-60d7a3525a96\":  {\n		\"value\": \"1\"\n	},\n	\"65b7851d-199f-4ac6-95a7-409ad1bca488\":  {\n		\"item\":  {\n			\"0\": \"4\"\n		}\n	},\n	\"fdcbebaa-e61a-462d-963e-aff74ff95499\":  {\n		\"0\":  {\n			\"text\": \"\",\n			\"value\": \"\",\n			\"target\": \"\",\n			\"rel\": \"\"\n		}\n	}\n}','{\"config.enable_comments\":\"1\",\"metadata.description\":\"\",\"metadata.keywords\":\"\",\"metadata.robots\":\"\",\"metadata.author\":\"\",\"template.teaseritem_media_alignment\":\"top\",\"template.item_media_alignment\":\"top\",\"config.primary_category\":\"2\"}'),
	(36,1,'author','John Q. Public','john-q-public','2010-03-11 16:33:16','2010-05-06 09:46:43',42,'2010-03-11 16:33:16','0000-00-00 00:00:00',0,8,1,1,42,'',1,' {\n	\"ffefb4ed-8d5d-452a-8794-ea82c013384e\":  {\n		\"file\": \"images\\/yootheme\\/zoo\\/blog\\/author01.jpg\",\n		\"width\": \"150\",\n		\"height\": \"180\"\n	},\n	\"14c0dd9f-ae3c-4eb2-8e22-4e9294ad3120\":  {\n		\"0\":  {\n			\"value\": \"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.\"\n		},\n		\"1\":  {\n			\"value\": \"Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\"\n		}\n	},\n	\"ac84af6f-ec56-4228-b421-ba3981399abe\":  {\n		\"0\":  {\n			\"value\": \"email@0.0.0.de\",\n			\"subject\": \"\",\n			\"body\": \"\"\n		}\n	},\n	\"4d431350-4f70-45cc-9922-a973ce0fa61f\":  {\n		\"0\":  {\n			\"text\": \"Twitter\",\n			\"value\": \"http:\\/\\/twitter.com\\/yootheme\",\n			\"target\": \"1\",\n			\"rel\": \"\"\n		}\n	},\n	\"d6540bb8-d194-4bb0-879f-86e07c3f7a17\":  {\n		\"item\":  {\n			\"0\": \"8\",\n			\"1\": \"7\",\n			\"2\": \"6\",\n			\"3\": \"5\",\n			\"4\": \"4\"\n		}\n	}\n}','{\"config.enable_comments\":\"1\",\"metadata.description\":\"\",\"metadata.keywords\":\"\",\"metadata.robots\":\"\",\"metadata.author\":\"\"}'),
	(38,1,'author','Jane Q. Public','jane-q-public','2010-03-11 16:36:21','2010-05-06 09:46:38',42,'2010-03-11 16:36:21','0000-00-00 00:00:00',0,34,1,1,42,'',1,' {\n	\"ffefb4ed-8d5d-452a-8794-ea82c013384e\":  {\n		\"file\": \"images\\/yootheme\\/zoo\\/blog\\/author02.jpg\",\n		\"width\": \"150\",\n		\"height\": \"180\"\n	},\n	\"14c0dd9f-ae3c-4eb2-8e22-4e9294ad3120\":  {\n		\"0\":  {\n			\"value\": \"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.\"\n		},\n		\"1\":  {\n			\"value\": \"Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\"\n		}\n	},\n	\"ac84af6f-ec56-4228-b421-ba3981399abe\":  {\n		\"0\":  {\n			\"value\": \"email@0.0.0.de\",\n			\"subject\": \"\",\n			\"body\": \"\"\n		}\n	},\n	\"4d431350-4f70-45cc-9922-a973ce0fa61f\":  {\n		\"0\":  {\n			\"text\": \"Twitter\",\n			\"value\": \"http:\\/\\/twitter.com\\/yootheme\",\n			\"target\": \"1\",\n			\"rel\": \"\"\n		}\n	},\n	\"d6540bb8-d194-4bb0-879f-86e07c3f7a17\":  {\n		\"item\":  {\n			\"0\": \"1\",\n			\"1\": \"2\",\n			\"2\": \"3\",\n			\"3\": \"4\"\n		}\n	}\n}','{\"config.enable_comments\":\"1\",\"metadata.description\":\"\",\"metadata.keywords\":\"\",\"metadata.robots\":\"\",\"metadata.author\":\"\"}'),
	(177,8,'page','Welcome to our Website!','test','2010-03-26 11:37:04','2010-05-04 08:14:53',42,'2010-03-26 11:37:04','0000-00-00 00:00:00',0,81,1,1,42,'',1,' {\n	\"6cb20a9f-27fa-4d98-ac2e-e959eb3f0f63\":  {\n		\"file\": \"images\\/yootheme\\/zoo\\/page\\/graph.jpg\",\n		\"link\": \"\",\n		\"target\": \"\",\n		\"rel\": \"\",\n		\"width\": \"250\",\n		\"height\": \"160\"\n	},\n	\"43aa1b15-986e-4303-afcf-628b835f10e5\":  {\n		\"0\":  {\n			\"value\": \"The pages app is a little bonus app to manage static content pages. For example if you want to create a contact or service page you don\'t necessarily need a catalog with categories. But of course you can extend these static pages with images, comments and more. With the pages app you can build up your whole Joomla website using ZOO.\\n\\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. At vero eos et accusam et justo duo dolores et ea rebum.<\\/p>\"\n		},\n		\"1\":  {\n			\"value\": \"<h3>How to find us<\\/h3>\\n\\n<img src=\\\"images\\/yootheme\\/zoo\\/page\\/map.jpg\\\" width=\\\"250\\\" height=\\\"160\\\" alt=\\\"Map\\\" style=\\\"float: right\\\" \\/>\\n\\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. At vero eos et accusam et justo duo dolores et ea rebum. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.<\\/p>\\n\\n<p>Sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. At vero eos et accusam et justo duo dolores et ea rebum.<\\/p>\"\n		},\n		\"2\":  {\n			\"value\": \"<h3>Website Checklist<\\/h3>\\n\\n<img src=\\\"images\\/yootheme\\/zoo\\/page\\/checklist.jpg\\\" width=\\\"250\\\" height=\\\"200\\\" alt=\\\"Checklist\\\" style=\\\"float: right\\\" \\/>\\n\\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.<\\/p>\\n\\n<p>At vero eos et accusam et justo duo dolores et ea rebum. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. At vero eos et accusam et justo duo dolores et ea rebum. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.<\\/p>\"\n		}\n	}\n}','{\"config.enable_comments\":\"1\",\"metadata.description\":\"\",\"metadata.keywords\":\"\",\"metadata.robots\":\"\",\"metadata.author\":\"\"}'),
	(233,8,'page','ZOO','zoo','2014-12-17 11:14:37','2015-03-30 16:07:09',578,'2014-12-17 11:14:37','0000-00-00 00:00:00',0,38,1,1,42,'',1,' {\n   \"6cb20a9f-27fa-4d98-ac2e-e959eb3f0f63\":  {\n        \"file\": \"\",\n       \"title\": \"\",\n      \"link\": \"\",\n       \"target\": \"0\",\n        \"rel\": \"\",\n        \"lightbox_image\": \"\",\n     \"spotlight_effect\": \"\",\n       \"caption\": \"\"\n },\n    \"43aa1b15-986e-4303-afcf-628b835f10e5\":  {\n        \"0\":  {\n           \"value\": \"<div class=\\\"row-fluid\\\">\\r\\n    <div class=\\\"span8\\\">\\r\\n        <p class=\\\"lead\\\">ZOO is a flexible and powerful content application builder to manage your content. It provides a much improved Joomla experience.<\\/p>\\r\\n        <p>The key feature is the ability to create your very own custom content types. You define what a type is made up of - e.g. text, images or a file download. Any combination is imaginable! You bring the content, ZOO brings the elements to structure it and make it look good!<\\/p>\\r\\n        <p><a class=\\\"btn\\\" href=\\\"http:\\/\\/www.yootheme.com\\/zoo\\\" target=\\\"_blank\\\">Visit Website<\\/a><\\/p>\\r\\n    <\\/div>\\r\\n    <div class=\\\"span4\\\">\\r\\n        <a href=\\\"http:\\/\\/www.yootheme.com\\/videos\\/zoo_video_tour.mp4\\\" data-lightbox=\\\"width:852;height:480;autoplay:true;\\\"><img title=\\\"Take the video tour on the ZOO!\\\" src=\\\"images\\/yootheme\\/zoo\\/zoo_video_tour.png\\\" alt=\\\"Take the video tour on the ZOO!\\\" width=\\\"500\\\" height=\\\"300\\\" \\/><\\/a>\\r\\n    <\\/div>\\r\\n<\\/div>\\r\\n\\r\\n<h2>Apps for every Purpose<\\/h2>\\r\\n\\r\\n<p>ZOO moves from simply being a CCK to an Application Builder. Apps are extensions for ZOO which are optimized for different purposes and types of content catalogs. ZOO offers a wide range of apps to get you started right away. There is a blog, a product catalog, a cookbook, a business directory, a documentation, a download archive and a movie database app!<\\/p>\\r\\n\\r\\n<div class=\\\"row-fluid text-center\\\">\\r\\n    <div class=\\\"span6 well\\\">\\r\\n        <a href=\\\"{zoofrontpage: 1 output: url}\\\">\\r\\n        <img src=\\\"images\\/yootheme\\/zoo\\/zoo_apps_blog.png\\\" alt=\\\"ZOO Blog\\\" width=\\\"170\\\" height=\\\"120\\\" \\/>\\r\\n        <h3>Blog<\\/h3>\\r\\n        <\\/a>\\r\\n    <\\/div>\\r\\n    <div class=\\\"span6 well\\\">\\r\\n        <a href=\\\"{zooitem: 177 output: url}\\\">\\r\\n        <img src=\\\"images\\/yootheme\\/zoo\\/zoo_apps_pages.png\\\" alt=\\\"ZOO Pages\\\" width=\\\"170\\\" height=\\\"120\\\" \\/>\\r\\n        <h3>Pages<\\/h3>\\r\\n        <\\/a>\\r\\n    <\\/div>\\r\\n<\\/div>\\r\\n\\r\\n<h3>Joomla Integration<\\/h3>\\r\\n<p>By now ZOO has developed a thriving ecosystem, with new ZOO extensions appearing regularly. It also integrates well with many popular Joomla extensions. Besides the ZOO component itself offers additional modules and plugins. They allow a seamless integration into Joomla and provide a richer tool set to create your website.<\\/p>\\r\\n\\r\\n<div class=\\\"well text-center\\\">\\r\\n    <p><strong>Get ZOO.<\\/strong> A flexible and powerful content application builder to manage your content. <a class=\\\"btn\\\" href=\\\"http:\\/\\/www.yootheme.com\\/zoo\\\" target=\\\"_blank\\\">Download ZOO<\\/a><\\/p>\\r\\n<\\/div>\"\n        }\n }\n}',' {\n    \"metadata.title\": \"\",\n \"metadata.description\": \"\",\n   \"metadata.keywords\": \"\",\n  \"metadata.robots\": \"\",\n    \"metadata.author\": \"\",\n    \"config.enable_comments\": \"1\",\n    \"config.primary_category\": \"\"\n}');

/*!40000 ALTER TABLE `web_zoo_item` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_zoo_rating
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_zoo_rating`;

CREATE TABLE `web_zoo_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `element_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `value` tinyint(4) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_zoo_search_index
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_zoo_search_index`;

CREATE TABLE `web_zoo_search_index` (
  `item_id` int(11) NOT NULL,
  `element_id` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`item_id`,`element_id`),
  FULLTEXT KEY `SEARCH_FULLTEXT` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_zoo_search_index` WRITE;
/*!40000 ALTER TABLE `web_zoo_search_index` DISABLE KEYS */;

INSERT INTO `web_zoo_search_index` (`item_id`, `element_id`, `value`)
VALUES
	(2,'08795744-c2dc-4a68-8252-4e21c4c4c774','Let\'s take a look at this fresh and beautiful icon sets'),
	(2,'2e3c9e69-1f9e-4647-8d13-4e88094d2790','Teaser Text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.\nMore Text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.'),
	(3,'08795744-c2dc-4a68-8252-4e21c4c4c774','Take a look at some Digital Movie Wallpapers'),
	(3,'2e3c9e69-1f9e-4647-8d13-4e88094d2790','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.'),
	(4,'08795744-c2dc-4a68-8252-4e21c4c4c774','High-Quality Fonts for Professional Design'),
	(4,'2e3c9e69-1f9e-4647-8d13-4e88094d2790','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.'),
	(5,'08795744-c2dc-4a68-8252-4e21c4c4c774','Incredibly beautiful High Dynamic Range Pictures'),
	(5,'2e3c9e69-1f9e-4647-8d13-4e88094d2790','Teaser Text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.\nMore Text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.'),
	(6,'08795744-c2dc-4a68-8252-4e21c4c4c774','Learn more about some famous Content Management Systems'),
	(6,'2e3c9e69-1f9e-4647-8d13-4e88094d2790','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.'),
	(7,'08795744-c2dc-4a68-8252-4e21c4c4c774','Get some inspiring wallpapers for your desktop'),
	(7,'2e3c9e69-1f9e-4647-8d13-4e88094d2790','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.'),
	(8,'08795744-c2dc-4a68-8252-4e21c4c4c774','Take a look at Vintage and Retro Typography'),
	(8,'2e3c9e69-1f9e-4647-8d13-4e88094d2790','Teaser Text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.\nMore Text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.'),
	(1,'08795744-c2dc-4a68-8252-4e21c4c4c774','Video de presentación de Dynamite.zone'),
	(1,'2e3c9e69-1f9e-4647-8d13-4e88094d2790','\n\"Lo siento, lo siento mucho por no poder dar más información en este momento, tengo mucho trabajo. Y queremos que salga pronto. Esperamos que la escueta información que hemos colocado en nuestra cuenta de twitter y en el video de presentación sean lo suficientemente explicativos.\"\r\nSomos Amterapsu, Baranthur, Desch, eThyrie, Skrollex, Iago y Ketejostio. Y esto es Dynamite Reborn'),
	(177,'43aa1b15-986e-4303-afcf-628b835f10e5','The pages app is a little bonus app to manage static content pages. For example if you want to create a contact or service page you don\'t necessarily need a catalog with categories. But of course you can extend these static pages with images, comments and more. With the pages app you can build up your whole Joomla website using ZOO.\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. At vero eos et accusam et justo duo dolores et ea rebum.\nHow to find us\r\n\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. At vero eos et accusam et justo duo dolores et ea rebum. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.\r\n\r\nSed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. At vero eos et accusam et justo duo dolores et ea rebum.\nWebsite Checklist\r\n\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.\r\n\r\nAt vero eos et accusam et justo duo dolores et ea rebum. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. At vero eos et accusam et justo duo dolores et ea rebum. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.'),
	(198,'08795744-c2dc-4a68-8252-4e21c4c4c774','Get a sneek peek of all apps in our new ZOO 2.0 video tour!'),
	(38,'14c0dd9f-ae3c-4eb2-8e22-4e9294ad3120','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.\nStet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.'),
	(36,'14c0dd9f-ae3c-4eb2-8e22-4e9294ad3120','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.\nStet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.'),
	(198,'2e3c9e69-1f9e-4647-8d13-4e88094d2790','Teaser Text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.\nMore Text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.'),
	(198,'fdcbebaa-e61a-462d-963e-aff74ff95499','\n');

/*!40000 ALTER TABLE `web_zoo_search_index` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_zoo_submission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_zoo_submission`;

CREATE TABLE `web_zoo_submission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `access` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ALIAS_INDEX` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Volcado de tabla web_zoo_tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_zoo_tag`;

CREATE TABLE `web_zoo_tag` (
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`item_id`,`name`),
  UNIQUE KEY `NAME_ITEMID_INDEX` (`name`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_zoo_tag` WRITE;
/*!40000 ALTER TABLE `web_zoo_tag` DISABLE KEYS */;

INSERT INTO `web_zoo_tag` (`item_id`, `name`)
VALUES
	(1,'iPhone'),
	(1,'Wallpaper'),
	(2,'Free'),
	(2,'Icons'),
	(3,'Movies'),
	(3,'Wallpaper'),
	(5,'HDR'),
	(5,'Photography'),
	(6,'CMS'),
	(6,'Drupal'),
	(6,'Joomla'),
	(6,'Open Source'),
	(6,'Wordpress'),
	(7,'Wallpaper'),
	(8,'Retro'),
	(8,'Showcase'),
	(179,'Beginner'),
	(180,'Beginner'),
	(181,'Beginner'),
	(198,'CMS'),
	(198,'Free'),
	(198,'Joomla'),
	(198,'Movies'),
	(198,'Open Source');

/*!40000 ALTER TABLE `web_zoo_tag` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla web_zoo_version
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_zoo_version`;

CREATE TABLE `web_zoo_version` (
  `version` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `web_zoo_version` WRITE;
/*!40000 ALTER TABLE `web_zoo_version` DISABLE KEYS */;

INSERT INTO `web_zoo_version` (`version`)
VALUES
	('3.3.6');

/*!40000 ALTER TABLE `web_zoo_version` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
