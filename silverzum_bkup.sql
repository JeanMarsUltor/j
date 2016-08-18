-- MySQL dump 10.13  Distrib 5.6.20, for Win32 (x86)
--
-- Host: localhost    Database: silverzum
-- ------------------------------------------------------
-- Server version	5.6.20

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
-- Table structure for table `ps_configuration_lang`
--

DROP TABLE IF EXISTS `ps_configuration_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_configuration_lang` (
  `id_configuration` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` text,
  `date_upd` datetime DEFAULT NULL,
  PRIMARY KEY (`id_configuration`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_configuration_lang`
--

LOCK TABLES `ps_configuration_lang` WRITE;
/*!40000 ALTER TABLE `ps_configuration_lang` DISABLE KEYS */;
INSERT INTO `ps_configuration_lang` VALUES (41,1,'#FACT.',NULL),(44,1,'#ALB. ENTR.',NULL),(46,1,'#RE',NULL),(52,1,'un|una|unas|unos|uno|sobre|todo|también|tras|otro|algún|alguno|alguna|algunos|algunas|ser|es|soy|eres|somos|sois|estoy|esta|estamos|estais|estan|como|en|para|atras|porque|por qué|estado|estaba|ante|antes|siendo|ambos|pero|por|poder|puede|puedo|podemos|podeis|pueden|fui|fue|fuimos|fueron|hacer|hago|hace|hacemos|haceis|hacen|cada|fin|incluso|primero|desde|conseguir|consigo|consigue|consigues|conseguimos|consiguen|ir|voy|va|vamos|vais|van|vaya|gueno|ha|tener|tengo|tiene|tenemos|teneis|tienen|el|la|lo|las|los|su|aqui|mio|tuyo|ellos|ellas|nos|nosotros|vosotros|vosotras|si|dentro|solo|solamente|saber|sabes|sabe|sabemos|sabeis|saben|ultimo|largo|bastante|haces|muchos|aquellos|aquellas|sus|entonces|tiempo|verdad|verdadero|verdadera|cierto|ciertos|cierta|ciertas|intentar|intento|intenta|intentas|intentamos|intentais|intentan|dos|bajo|arriba|encima|usar|uso|usas|usa|usamos|usais|usan|emplear|empleo|empleas|emplean|ampleamos|empleais|valor|muy|era|eras|eramos|eran|modo|bien|cual|cuando|donde|mientras|quien|con|entre|sin|trabajo|trabajar|trabajas|trabaja|trabajamos|trabajais|trabajan|podria|podrias|podriamos|podrian|podriais|yo|aquel',NULL),(74,1,'0',NULL),(80,1,'Estimado cliente:\n\nSaludos,\nServicio de atención al cliente',NULL),(288,1,'sale70.png','2016-05-31 08:04:08'),(289,1,'./inicio-sesion','2016-06-04 00:33:20'),(290,1,'','2016-05-31 08:04:08');
/*!40000 ALTER TABLE `ps_configuration_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_connections`
--

DROP TABLE IF EXISTS `ps_connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_connections` (
  `id_connections` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_guest` int(10) unsigned NOT NULL,
  `id_page` int(10) unsigned NOT NULL,
  `ip_address` bigint(20) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_connections`),
  KEY `id_guest` (`id_guest`),
  KEY `date_add` (`date_add`),
  KEY `id_page` (`id_page`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_connections`
--

LOCK TABLES `ps_connections` WRITE;
/*!40000 ALTER TABLE `ps_connections` DISABLE KEYS */;
INSERT INTO `ps_connections` VALUES (1,1,1,1,1,0,'2016-06-16 20:14:06',''),(2,1,1,1,1,0,'2016-06-16 21:31:49',''),(3,1,1,4,1,0,'2016-06-17 10:59:11',''),(4,1,1,4,1,0,'2016-06-20 12:43:04',''),(5,1,1,4,1,0,'2016-06-21 10:47:06',''),(6,1,1,4,1,0,'2016-06-21 11:24:53',''),(7,1,1,4,1,0,'2016-06-21 12:31:48',''),(8,1,1,4,1,0,'2016-06-21 15:23:07',''),(9,1,1,2,1,0,'2016-07-25 12:21:41',''),(10,1,1,2,1,0,'2016-07-25 15:19:10',''),(11,1,1,3,1,0,'2016-08-09 11:19:04',''),(12,1,1,3,1,0,'2016-08-09 16:04:05',''),(13,1,1,3,1,0,'2016-08-10 08:31:01',''),(14,1,1,3,1,0,'2016-08-10 09:16:39',''),(15,1,1,3,1,0,'2016-08-10 12:36:45',''),(16,1,1,3,1,0,'2016-08-16 11:23:59',''),(17,1,1,4,1,0,'2016-08-16 21:36:32','');
/*!40000 ALTER TABLE `ps_connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_connections_page`
--

DROP TABLE IF EXISTS `ps_connections_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_connections_page` (
  `id_connections` int(10) unsigned NOT NULL,
  `id_page` int(10) unsigned NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime DEFAULT NULL,
  PRIMARY KEY (`id_connections`,`id_page`,`time_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_connections_page`
--

LOCK TABLES `ps_connections_page` WRITE;
/*!40000 ALTER TABLE `ps_connections_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_connections_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_connections_source`
--

DROP TABLE IF EXISTS `ps_connections_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_connections_source` (
  `id_connections_source` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_connections` int(10) unsigned NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `request_uri` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_connections_source`),
  KEY `connections` (`id_connections`),
  KEY `orderby` (`date_add`),
  KEY `http_referer` (`http_referer`),
  KEY `request_uri` (`request_uri`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_connections_source`
--

LOCK TABLES `ps_connections_source` WRITE;
/*!40000 ALTER TABLE `ps_connections_source` DISABLE KEYS */;
INSERT INTO `ps_connections_source` VALUES (1,1,'http://localhost:8888/joyeria/','localhost:8888/joyeria/6-acero-inoxidable','','2016-06-16 20:14:13'),(2,1,'http://localhost:8888/joyeria/6-acero-inoxidable','localhost:8888/joyeria/mujer/5-pulso-tous.html','','2016-06-16 20:14:32'),(3,3,'http://localhost:8888/joyeria/','localhost:8888/joyeria/mujer/8-brazalete-mk.html?content_only=1','','2016-06-17 11:06:27'),(4,3,'http://localhost:8888/joyeria/','localhost:8888/joyeria/mujer/8-brazalete-mk.html','','2016-06-17 11:06:32'),(5,3,'http://localhost:8888/joyeria/','localhost:8888/joyeria/mujer/7-pulso-tous.html','','2016-06-17 11:13:16'),(6,3,'http://localhost:8888/joyeria/mujer/7-pulso-tous.html','localhost:8888/joyeria/','','2016-06-17 11:21:09'),(7,3,'http://localhost:8888/joyeria/','localhost:8888/joyeria/inicio-sesion','','2016-06-17 11:21:53'),(8,4,'http://localhost:8888/joyeria/','localhost:8888/joyeria/contactanos','','2016-06-20 12:43:37'),(9,9,'http://localhost:8888/joyeria/','localhost:8888/joyeria/pedido','','2016-07-25 12:22:06'),(10,9,'http://localhost:8888/joyeria/pedido','localhost:8888/joyeria/contactanos','','2016-07-25 12:22:26'),(11,14,'http://localhost:8888/joyeria/','localhost:8888/joyeria/11-collares','','2016-08-10 09:16:47'),(12,14,'http://localhost:8888/joyeria/11-collares','localhost:8888/joyeria/raiz/633-collar.html?content_only=1','','2016-08-10 09:16:56'),(13,14,'http://localhost:8888/joyeria/11-collares','localhost:8888/joyeria/raiz/641-collar.html','','2016-08-10 09:17:50'),(14,14,'http://localhost:8888/joyeria/11-collares','localhost:8888/joyeria/raiz/633-collar.html?content_only=1','','2016-08-10 09:18:06'),(15,14,'http://localhost:8888/joyeria/11-collares','localhost:8888/joyeria/raiz/632-collar.html','','2016-08-10 09:18:14'),(16,14,'http://localhost:8888/joyeria/11-collares','localhost:8888/joyeria/raiz/647-collar.html?content_only=1','','2016-08-10 09:18:35'),(17,14,'http://localhost:8888/joyeria/11-collares','localhost:8888/joyeria/raiz/669-collar.html','','2016-08-10 09:19:03'),(18,14,'http://localhost:8888/joyeria/raiz/669-collar.html','localhost:8888/joyeria/9-gargantillas','','2016-08-10 09:21:15'),(19,14,'http://localhost:8888/joyeria/9-gargantillas','localhost:8888/joyeria/raiz/496-gargantilla.html','','2016-08-10 09:21:31'),(20,14,'http://localhost:8888/joyeria/9-gargantillas','localhost:8888/joyeria/raiz/505-gargantilla.html','','2016-08-10 09:21:53');
/*!40000 ALTER TABLE `ps_connections_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_contact`
--

DROP TABLE IF EXISTS `ps_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_contact` (
  `id_contact` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `customer_service` tinyint(1) NOT NULL DEFAULT '0',
  `position` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_contact`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_contact`
--

LOCK TABLES `ps_contact` WRITE;
/*!40000 ALTER TABLE `ps_contact` DISABLE KEYS */;
INSERT INTO `ps_contact` VALUES (1,'jimmy_guel@hotmail.com',1,0),(2,'jimmy_guel@hotmail.com',1,0);
/*!40000 ALTER TABLE `ps_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_contact_lang`
--

DROP TABLE IF EXISTS `ps_contact_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_contact_lang` (
  `id_contact` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text,
  PRIMARY KEY (`id_contact`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_contact_lang`
--

LOCK TABLES `ps_contact_lang` WRITE;
/*!40000 ALTER TABLE `ps_contact_lang` DISABLE KEYS */;
INSERT INTO `ps_contact_lang` VALUES (1,1,'Webmaster','En caso de problema técnico en esta página web'),(2,1,'Servicio de atención al cliente','Para cualquier pregunta sobre un artículo, un pedido');
/*!40000 ALTER TABLE `ps_contact_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_contact_shop`
--

DROP TABLE IF EXISTS `ps_contact_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_contact_shop` (
  `id_contact` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_contact`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_contact_shop`
--

LOCK TABLES `ps_contact_shop` WRITE;
/*!40000 ALTER TABLE `ps_contact_shop` DISABLE KEYS */;
INSERT INTO `ps_contact_shop` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `ps_contact_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_country`
--

DROP TABLE IF EXISTS `ps_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_country` (
  `id_country` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_zone` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL DEFAULT '0',
  `iso_code` varchar(3) NOT NULL,
  `call_prefix` int(10) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `contains_states` tinyint(1) NOT NULL DEFAULT '0',
  `need_identification_number` tinyint(1) NOT NULL DEFAULT '0',
  `need_zip_code` tinyint(1) NOT NULL DEFAULT '1',
  `zip_code_format` varchar(12) NOT NULL DEFAULT '',
  `display_tax_label` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_country`),
  KEY `country_iso_code` (`iso_code`),
  KEY `country_` (`id_zone`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_country`
--

LOCK TABLES `ps_country` WRITE;
/*!40000 ALTER TABLE `ps_country` DISABLE KEYS */;
INSERT INTO `ps_country` VALUES (1,1,0,'DE',49,0,0,0,1,'NNNNN',1),(2,1,0,'AT',43,0,0,0,1,'NNNN',1),(3,1,0,'BE',32,0,0,0,1,'NNNN',1),(4,2,0,'CA',1,0,1,0,1,'LNL NLN',0),(5,3,0,'CN',86,0,0,0,1,'NNNNNN',1),(6,1,0,'ES',34,0,0,1,1,'NNNNN',1),(7,1,0,'FI',358,0,0,0,1,'NNNNN',1),(8,1,0,'FR',33,0,0,0,1,'NNNNN',1),(9,1,0,'GR',30,0,0,0,1,'NNNNN',1),(10,1,0,'IT',39,0,1,0,1,'NNNNN',1),(11,3,0,'JP',81,0,1,0,1,'NNN-NNNN',1),(12,1,0,'LU',352,0,0,0,1,'NNNN',1),(13,1,0,'NL',31,0,0,0,1,'NNNN LL',1),(14,1,0,'PL',48,0,0,0,1,'NN-NNN',1),(15,1,0,'PT',351,0,0,0,1,'NNNN-NNN',1),(16,1,0,'CZ',420,0,0,0,1,'NNN NN',1),(17,1,0,'GB',44,0,0,0,1,'',1),(18,1,0,'SE',46,0,0,0,1,'NNN NN',1),(19,7,0,'CH',41,0,0,0,1,'NNNN',1),(20,1,0,'DK',45,0,0,0,1,'NNNN',1),(21,2,0,'US',1,0,1,0,1,'NNNNN',0),(22,3,0,'HK',852,0,0,0,0,'',1),(23,7,0,'NO',47,0,0,0,1,'NNNN',1),(24,5,0,'AU',61,0,0,0,1,'NNNN',1),(25,3,0,'SG',65,0,0,0,1,'NNNNNN',1),(26,1,0,'IE',353,0,0,0,0,'',1),(27,5,0,'NZ',64,0,0,0,1,'NNNN',1),(28,3,0,'KR',82,0,0,0,1,'NNN-NNN',1),(29,3,0,'IL',972,0,0,0,1,'NNNNNNN',1),(30,4,0,'ZA',27,0,0,0,1,'NNNN',1),(31,4,0,'NG',234,0,0,0,1,'',1),(32,4,0,'CI',225,0,0,0,1,'',1),(33,4,0,'TG',228,0,0,0,1,'',1),(34,6,0,'BO',591,0,0,0,1,'',1),(35,4,0,'MU',230,0,0,0,1,'',1),(36,1,0,'RO',40,0,0,0,1,'NNNNNN',1),(37,1,0,'SK',421,0,0,0,1,'NNN NN',1),(38,4,0,'DZ',213,0,0,0,1,'NNNNN',1),(39,2,0,'AS',0,0,0,0,1,'',1),(40,7,0,'AD',376,0,0,0,1,'CNNN',1),(41,4,0,'AO',244,0,0,0,0,'',1),(42,8,0,'AI',0,0,0,0,1,'',1),(43,2,0,'AG',0,0,0,0,1,'',1),(44,6,0,'AR',54,0,1,0,1,'LNNNN',1),(45,3,0,'AM',374,0,0,0,1,'NNNN',1),(46,8,0,'AW',297,0,0,0,1,'',1),(47,3,0,'AZ',994,0,0,0,1,'CNNNN',1),(48,2,0,'BS',0,0,0,0,1,'',1),(49,3,0,'BH',973,0,0,0,1,'',1),(50,3,0,'BD',880,0,0,0,1,'NNNN',1),(51,2,0,'BB',0,0,0,0,1,'CNNNNN',1),(52,7,0,'BY',0,0,0,0,1,'NNNNNN',1),(53,8,0,'BZ',501,0,0,0,0,'',1),(54,4,0,'BJ',229,0,0,0,0,'',1),(55,2,0,'BM',0,0,0,0,1,'',1),(56,3,0,'BT',975,0,0,0,1,'',1),(57,4,0,'BW',267,0,0,0,1,'',1),(58,6,0,'BR',55,0,0,0,1,'NNNNN-NNN',1),(59,3,0,'BN',673,0,0,0,1,'LLNNNN',1),(60,4,0,'BF',226,0,0,0,1,'',1),(61,3,0,'MM',95,0,0,0,1,'',1),(62,4,0,'BI',257,0,0,0,1,'',1),(63,3,0,'KH',855,0,0,0,1,'NNNNN',1),(64,4,0,'CM',237,0,0,0,1,'',1),(65,4,0,'CV',238,0,0,0,1,'NNNN',1),(66,4,0,'CF',236,0,0,0,1,'',1),(67,4,0,'TD',235,0,0,0,1,'',1),(68,6,0,'CL',56,0,0,0,1,'NNN-NNNN',1),(69,6,0,'CO',57,0,0,0,1,'NNNNNN',1),(70,4,0,'KM',269,0,0,0,1,'',1),(71,4,0,'CD',242,0,0,0,1,'',1),(72,4,0,'CG',243,0,0,0,1,'',1),(73,8,0,'CR',506,0,0,0,1,'NNNNN',1),(74,7,0,'HR',385,0,0,0,1,'NNNNN',1),(75,8,0,'CU',53,0,0,0,1,'',1),(76,1,0,'CY',357,0,0,0,1,'NNNN',1),(77,4,0,'DJ',253,0,0,0,1,'',1),(78,8,0,'DM',0,0,0,0,1,'',1),(79,8,0,'DO',0,0,0,0,1,'',1),(80,3,0,'TL',670,0,0,0,1,'',1),(81,6,0,'EC',593,0,0,0,1,'CNNNNNN',1),(82,4,0,'EG',20,0,0,0,0,'',1),(83,8,0,'SV',503,0,0,0,1,'',1),(84,4,0,'GQ',240,0,0,0,1,'',1),(85,4,0,'ER',291,0,0,0,1,'',1),(86,1,0,'EE',372,0,0,0,1,'NNNNN',1),(87,4,0,'ET',251,0,0,0,1,'',1),(88,8,0,'FK',0,0,0,0,1,'LLLL NLL',1),(89,7,0,'FO',298,0,0,0,1,'',1),(90,5,0,'FJ',679,0,0,0,1,'',1),(91,4,0,'GA',241,0,0,0,1,'',1),(92,4,0,'GM',220,0,0,0,1,'',1),(93,3,0,'GE',995,0,0,0,1,'NNNN',1),(94,4,0,'GH',233,0,0,0,1,'',1),(95,8,0,'GD',0,0,0,0,1,'',1),(96,7,0,'GL',299,0,0,0,1,'',1),(97,7,0,'GI',350,0,0,0,1,'',1),(98,8,0,'GP',590,0,0,0,1,'',1),(99,5,0,'GU',0,0,0,0,1,'',1),(100,8,0,'GT',502,0,0,0,1,'',1),(101,7,0,'GG',0,0,0,0,1,'LLN NLL',1),(102,4,0,'GN',224,0,0,0,1,'',1),(103,4,0,'GW',245,0,0,0,1,'',1),(104,6,0,'GY',592,0,0,0,1,'',1),(105,8,0,'HT',509,0,0,0,1,'',1),(106,5,0,'HM',0,0,0,0,1,'',1),(107,7,0,'VA',379,0,0,0,1,'NNNNN',1),(108,8,0,'HN',504,0,0,0,1,'',1),(109,7,0,'IS',354,0,0,0,1,'NNN',1),(110,3,0,'IN',91,0,0,0,1,'NNN NNN',1),(111,3,0,'ID',62,0,1,0,1,'NNNNN',1),(112,3,0,'IR',98,0,0,0,1,'NNNNN-NNNNN',1),(113,3,0,'IQ',964,0,0,0,1,'NNNNN',1),(114,7,0,'IM',0,0,0,0,1,'CN NLL',1),(115,8,0,'JM',0,0,0,0,1,'',1),(116,7,0,'JE',0,0,0,0,1,'CN NLL',1),(117,3,0,'JO',962,0,0,0,1,'',1),(118,3,0,'KZ',7,0,0,0,1,'NNNNNN',1),(119,4,0,'KE',254,0,0,0,1,'',1),(120,5,0,'KI',686,0,0,0,1,'',1),(121,3,0,'KP',850,0,0,0,1,'',1),(122,3,0,'KW',965,0,0,0,1,'',1),(123,3,0,'KG',996,0,0,0,1,'',1),(124,3,0,'LA',856,0,0,0,1,'',1),(125,1,0,'LV',371,0,0,0,1,'C-NNNN',1),(126,3,0,'LB',961,0,0,0,1,'',1),(127,4,0,'LS',266,0,0,0,1,'',1),(128,4,0,'LR',231,0,0,0,1,'',1),(129,4,0,'LY',218,0,0,0,1,'',1),(130,1,0,'LI',423,0,0,0,1,'NNNN',1),(131,1,0,'LT',370,0,0,0,1,'NNNNN',1),(132,3,0,'MO',853,0,0,0,0,'',1),(133,7,0,'MK',389,0,0,0,1,'',1),(134,4,0,'MG',261,0,0,0,1,'',1),(135,4,0,'MW',265,0,0,0,1,'',1),(136,3,0,'MY',60,0,0,0,1,'NNNNN',1),(137,3,0,'MV',960,0,0,0,1,'',1),(138,4,0,'ML',223,0,0,0,1,'',1),(139,1,0,'MT',356,0,0,0,1,'LLL NNNN',1),(140,5,0,'MH',692,0,0,0,1,'',1),(141,8,0,'MQ',596,0,0,0,1,'',1),(142,4,0,'MR',222,0,0,0,1,'',1),(143,1,0,'HU',36,0,0,0,1,'NNNN',1),(144,4,0,'YT',262,0,0,0,1,'',1),(145,2,0,'MX',52,1,1,1,1,'NNNNN',1),(146,5,0,'FM',691,0,0,0,1,'',1),(147,7,0,'MD',373,0,0,0,1,'C-NNNN',1),(148,7,0,'MC',377,0,0,0,1,'980NN',1),(149,3,0,'MN',976,0,0,0,1,'',1),(150,7,0,'ME',382,0,0,0,1,'NNNNN',1),(151,8,0,'MS',0,0,0,0,1,'',1),(152,4,0,'MA',212,0,0,0,1,'NNNNN',1),(153,4,0,'MZ',258,0,0,0,1,'',1),(154,4,0,'NA',264,0,0,0,1,'',1),(155,5,0,'NR',674,0,0,0,1,'',1),(156,3,0,'NP',977,0,0,0,1,'',1),(157,8,0,'AN',599,0,0,0,1,'',1),(158,5,0,'NC',687,0,0,0,1,'',1),(159,8,0,'NI',505,0,0,0,1,'NNNNNN',1),(160,4,0,'NE',227,0,0,0,1,'',1),(161,5,0,'NU',683,0,0,0,1,'',1),(162,5,0,'NF',0,0,0,0,1,'',1),(163,5,0,'MP',0,0,0,0,1,'',1),(164,3,0,'OM',968,0,0,0,1,'',1),(165,3,0,'PK',92,0,0,0,1,'',1),(166,5,0,'PW',680,0,0,0,1,'',1),(167,3,0,'PS',0,0,0,0,1,'',1),(168,8,0,'PA',507,0,0,0,1,'NNNNNN',1),(169,5,0,'PG',675,0,0,0,1,'',1),(170,6,0,'PY',595,0,0,0,1,'',1),(171,6,0,'PE',51,0,0,0,1,'',1),(172,3,0,'PH',63,0,0,0,1,'NNNN',1),(173,5,0,'PN',0,0,0,0,1,'LLLL NLL',1),(174,8,0,'PR',0,0,0,0,1,'NNNNN',1),(175,3,0,'QA',974,0,0,0,1,'',1),(176,4,0,'RE',262,0,0,0,1,'',1),(177,7,0,'RU',7,0,0,0,1,'NNNNNN',1),(178,4,0,'RW',250,0,0,0,1,'',1),(179,8,0,'BL',0,0,0,0,1,'',1),(180,8,0,'KN',0,0,0,0,1,'',1),(181,8,0,'LC',0,0,0,0,1,'',1),(182,8,0,'MF',0,0,0,0,1,'',1),(183,8,0,'PM',508,0,0,0,1,'',1),(184,8,0,'VC',0,0,0,0,1,'',1),(185,5,0,'WS',685,0,0,0,1,'',1),(186,7,0,'SM',378,0,0,0,1,'NNNNN',1),(187,4,0,'ST',239,0,0,0,1,'',1),(188,3,0,'SA',966,0,0,0,1,'',1),(189,4,0,'SN',221,0,0,0,1,'',1),(190,7,0,'RS',381,0,0,0,1,'NNNNN',1),(191,4,0,'SC',248,0,0,0,1,'',1),(192,4,0,'SL',232,0,0,0,1,'',1),(193,1,0,'SI',386,0,0,0,1,'C-NNNN',1),(194,5,0,'SB',677,0,0,0,1,'',1),(195,4,0,'SO',252,0,0,0,1,'',1),(196,8,0,'GS',0,0,0,0,1,'LLLL NLL',1),(197,3,0,'LK',94,0,0,0,1,'NNNNN',1),(198,4,0,'SD',249,0,0,0,1,'',1),(199,8,0,'SR',597,0,0,0,1,'',1),(200,7,0,'SJ',0,0,0,0,1,'',1),(201,4,0,'SZ',268,0,0,0,1,'',1),(202,3,0,'SY',963,0,0,0,1,'',1),(203,3,0,'TW',886,0,0,0,1,'NNNNN',1),(204,3,0,'TJ',992,0,0,0,1,'',1),(205,4,0,'TZ',255,0,0,0,1,'',1),(206,3,0,'TH',66,0,0,0,1,'NNNNN',1),(207,5,0,'TK',690,0,0,0,1,'',1),(208,5,0,'TO',676,0,0,0,1,'',1),(209,6,0,'TT',0,0,0,0,1,'',1),(210,4,0,'TN',216,0,0,0,1,'',1),(211,7,0,'TR',90,0,0,0,1,'NNNNN',1),(212,3,0,'TM',993,0,0,0,1,'',1),(213,8,0,'TC',0,0,0,0,1,'LLLL NLL',1),(214,5,0,'TV',688,0,0,0,1,'',1),(215,4,0,'UG',256,0,0,0,1,'',1),(216,1,0,'UA',380,0,0,0,1,'NNNNN',1),(217,3,0,'AE',971,0,0,0,1,'',1),(218,6,0,'UY',598,0,0,0,1,'',1),(219,3,0,'UZ',998,0,0,0,1,'',1),(220,5,0,'VU',678,0,0,0,1,'',1),(221,6,0,'VE',58,0,0,0,1,'',1),(222,3,0,'VN',84,0,0,0,1,'NNNNNN',1),(223,2,0,'VG',0,0,0,0,1,'CNNNN',1),(224,2,0,'VI',0,0,0,0,1,'',1),(225,5,0,'WF',681,0,0,0,1,'',1),(226,4,0,'EH',0,0,0,0,1,'',1),(227,3,0,'YE',967,0,0,0,1,'',1),(228,4,0,'ZM',260,0,0,0,1,'',1),(229,4,0,'ZW',263,0,0,0,1,'',1),(230,7,0,'AL',355,0,0,0,1,'NNNN',1),(231,3,0,'AF',93,0,0,0,0,'',1),(232,5,0,'AQ',0,0,0,0,1,'',1),(233,1,0,'BA',387,0,0,0,1,'',1),(234,5,0,'BV',0,0,0,0,1,'',1),(235,5,0,'IO',0,0,0,0,1,'LLLL NLL',1),(236,1,0,'BG',359,0,0,0,1,'NNNN',1),(237,8,0,'KY',0,0,0,0,1,'',1),(238,3,0,'CX',0,0,0,0,1,'',1),(239,3,0,'CC',0,0,0,0,1,'',1),(240,5,0,'CK',682,0,0,0,1,'',1),(241,6,0,'GF',594,0,0,0,1,'',1),(242,5,0,'PF',689,0,0,0,1,'',1),(243,5,0,'TF',0,0,0,0,1,'',1),(244,7,0,'AX',0,0,0,0,1,'NNNNN',1);
/*!40000 ALTER TABLE `ps_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_country_lang`
--

DROP TABLE IF EXISTS `ps_country_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_country_lang` (
  `id_country` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_country`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_country_lang`
--

LOCK TABLES `ps_country_lang` WRITE;
/*!40000 ALTER TABLE `ps_country_lang` DISABLE KEYS */;
INSERT INTO `ps_country_lang` VALUES (1,1,'Alemania'),(2,1,'Austria'),(3,1,'Bélgica'),(4,1,'Canadá'),(5,1,'China'),(6,1,'España'),(7,1,'Finlandia'),(8,1,'Francia'),(9,1,'Grecia'),(10,1,'Italia'),(11,1,'Japón'),(12,1,'Luxemburgo'),(13,1,'Países Bajos'),(14,1,'Polonia'),(15,1,'Portugal'),(16,1,'República Checa'),(17,1,'Reino Unido'),(18,1,'Suecia'),(19,1,'Suiza'),(20,1,'Dinamarca'),(21,1,'EE.UU.'),(22,1,'Hong Kong'),(23,1,'Noruega'),(24,1,'Australia'),(25,1,'Singapur'),(26,1,'Irlanda'),(27,1,'Nueva Zelanda'),(28,1,'Corea del Sur'),(29,1,'Israel'),(30,1,'Sudáfrica'),(31,1,'Nigeria'),(32,1,'Costa de Marfil'),(33,1,'Togo'),(34,1,'Bolivia'),(35,1,'Mauricio'),(36,1,'Rumania'),(37,1,'Eslovaquia'),(38,1,'Argelia'),(39,1,'Samoa Americana'),(40,1,'Andorra'),(41,1,'Angola'),(42,1,'Anguila'),(43,1,'Antigua y Barbuda'),(44,1,'Argentina'),(45,1,'Armenia'),(46,1,'Aruba'),(47,1,'Azerbaiyán'),(48,1,'Bahamas'),(49,1,'Bahrein'),(50,1,'Bangladesh'),(51,1,'Barbados'),(52,1,'Belarús'),(53,1,'Belice'),(54,1,'Benin'),(55,1,'Bermudas'),(56,1,'Bhután'),(57,1,'Botswana'),(58,1,'Brasil'),(59,1,'Brunei'),(60,1,'Burkina Faso'),(61,1,'Birmania (Myanmar)'),(62,1,'Burundi'),(63,1,'Camboya'),(64,1,'Camerún'),(65,1,'Cabo Verde'),(66,1,'República Centroafricana'),(67,1,'Chad'),(68,1,'Chile'),(69,1,'Colombia'),(70,1,'Comoras'),(71,1,'Congo, Rep. Dem.'),(72,1,'Congo, República'),(73,1,'Costa Rica'),(74,1,'Croacia'),(75,1,'Cuba'),(76,1,'Chipre'),(77,1,'Djibouti'),(78,1,'Dominica'),(79,1,'República Dominicana'),(80,1,'Timor Oriental'),(81,1,'Ecuador'),(82,1,'Egipto'),(83,1,'El Salvador'),(84,1,'Guinea Ecuatorial'),(85,1,'Eritrea'),(86,1,'Estonia'),(87,1,'Etiopía'),(88,1,'Islas Malvinas'),(89,1,'Islas Feroe'),(90,1,'Fiji'),(91,1,'Gabón'),(92,1,'Gambia'),(93,1,'Georgia'),(94,1,'Ghana'),(95,1,'Granada'),(96,1,'Groenlandia'),(97,1,'Gibraltar'),(98,1,'Guadalupe'),(99,1,'Guam'),(100,1,'Guatemala'),(101,1,'Guernsey'),(102,1,'Guinea'),(103,1,'Guinea-Bissau'),(104,1,'Guyana'),(105,1,'Haití'),(106,1,'Islas Heard y McDonald Islas'),(107,1,'Ciudad del Vaticano'),(108,1,'Honduras'),(109,1,'Islandia'),(110,1,'India'),(111,1,'Indonesia'),(112,1,'Irán'),(113,1,'Iraq'),(114,1,'Man, Isla'),(115,1,'Jamaica'),(116,1,'Jersey'),(117,1,'Jordania'),(118,1,'Kazajstán'),(119,1,'Kenya'),(120,1,'Kiribati'),(121,1,'KOREA, DEM. República de'),(122,1,'Kuwait'),(123,1,'Kirguistán'),(124,1,'Laos'),(125,1,'Letonia'),(126,1,'Líbano'),(127,1,'Lesotho'),(128,1,'Liberia'),(129,1,'Libia'),(130,1,'Liechtenstein'),(131,1,'Lituania'),(132,1,'Macao'),(133,1,'Macedonia'),(134,1,'Madagascar'),(135,1,'Malawi'),(136,1,'Malasia'),(137,1,'Maldivas'),(138,1,'Malí'),(139,1,'Malta'),(140,1,'Marshall, Islas'),(141,1,'Martinica'),(142,1,'Mauritania'),(143,1,'Hungría'),(144,1,'Mayotte'),(145,1,'México'),(146,1,'Micronesia'),(147,1,'Moldavia'),(148,1,'Mónaco'),(149,1,'Mongolia'),(150,1,'Montenegro'),(151,1,'Montserrat'),(152,1,'Marruecos'),(153,1,'Mozambique'),(154,1,'Namibia'),(155,1,'Nauru'),(156,1,'Nepal'),(157,1,'Antillas Neerlandesas'),(158,1,'Nueva Caledonia'),(159,1,'Nicaragua'),(160,1,'Níger'),(161,1,'Niue'),(162,1,'Norfolk Island'),(163,1,'Islas Marianas del Norte'),(164,1,'Omán'),(165,1,'Pakistán'),(166,1,'Palau'),(167,1,'Territorios Palestinos'),(168,1,'Panamá'),(169,1,'Papua Nueva Guinea'),(170,1,'Paraguay'),(171,1,'Perú'),(172,1,'Filipinas'),(173,1,'Pitcairn'),(174,1,'Puerto Rico'),(175,1,'Qatar'),(176,1,'Reunión, Isla de la'),(177,1,'Rusia, Federación de'),(178,1,'Rwanda'),(179,1,'San Bartolomé'),(180,1,'Saint Kitts y Nevis'),(181,1,'Santa Lucía'),(182,1,'Saint Martin'),(183,1,'San Pedro y Miquelón'),(184,1,'San Vicente y las Granadinas'),(185,1,'Samoa'),(186,1,'San Marino'),(187,1,'Santo Tomé y Príncipe'),(188,1,'Arabia Saudita'),(189,1,'Senegal'),(190,1,'Serbia'),(191,1,'Seychelles'),(192,1,'Sierra Leona'),(193,1,'Eslovenia'),(194,1,'Salomón, Islas'),(195,1,'Somalia'),(196,1,'Georgia del Sur e Islas Sandwich del Sur'),(197,1,'Sri Lanka'),(198,1,'Sudán'),(199,1,'Suriname'),(200,1,'Svalbard y Jan Mayen'),(201,1,'Swazilandia'),(202,1,'Siria'),(203,1,'Taiwán'),(204,1,'Tayikistán'),(205,1,'Tanzania'),(206,1,'Tailandia'),(207,1,'Tokelau'),(208,1,'Tonga'),(209,1,'Trinidad y Tobago'),(210,1,'Túnez'),(211,1,'Turquía'),(212,1,'Turkmenistán'),(213,1,'Islas Turcas y Caicos'),(214,1,'Tuvalu'),(215,1,'Uganda'),(216,1,'Ucrania'),(217,1,'Emiratos ÿrabes Unidos'),(218,1,'Uruguay'),(219,1,'Uzbekistán'),(220,1,'Vanuatu'),(221,1,'Venezuela'),(222,1,'Vietnam'),(223,1,'Islas Vírgenes (Británicas)'),(224,1,'Islas Vírgenes (EE.UU.)'),(225,1,'Wallis y Futuna'),(226,1,'Sáhara Occidental'),(227,1,'Yemen'),(228,1,'Zambia'),(229,1,'Zimbabwe'),(230,1,'Albania'),(231,1,'Afganistán'),(232,1,'Antártida'),(233,1,'Bosnia y Herzegovina'),(234,1,'Isla Bouvet'),(235,1,'British Indian Ocean Territory'),(236,1,'Bulgaria'),(237,1,'Caimán, Islas'),(238,1,'Navidad, Isla de'),(239,1,'Cocos (Keeling), Islas'),(240,1,'Cook, Islas'),(241,1,'Francés Guayana'),(242,1,'Polinesia francés'),(243,1,'Territorios del sur francés'),(244,1,'Islas Åland');
/*!40000 ALTER TABLE `ps_country_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_country_shop`
--

DROP TABLE IF EXISTS `ps_country_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_country_shop` (
  `id_country` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_country`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_country_shop`
--

LOCK TABLES `ps_country_shop` WRITE;
/*!40000 ALTER TABLE `ps_country_shop` DISABLE KEYS */;
INSERT INTO `ps_country_shop` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1),(113,1),(114,1),(115,1),(116,1),(117,1),(118,1),(119,1),(120,1),(121,1),(122,1),(123,1),(124,1),(125,1),(126,1),(127,1),(128,1),(129,1),(130,1),(131,1),(132,1),(133,1),(134,1),(135,1),(136,1),(137,1),(138,1),(139,1),(140,1),(141,1),(142,1),(143,1),(144,1),(145,1),(146,1),(147,1),(148,1),(149,1),(150,1),(151,1),(152,1),(153,1),(154,1),(155,1),(156,1),(157,1),(158,1),(159,1),(160,1),(161,1),(162,1),(163,1),(164,1),(165,1),(166,1),(167,1),(168,1),(169,1),(170,1),(171,1),(172,1),(173,1),(174,1),(175,1),(176,1),(177,1),(178,1),(179,1),(180,1),(181,1),(182,1),(183,1),(184,1),(185,1),(186,1),(187,1),(188,1),(189,1),(190,1),(191,1),(192,1),(193,1),(194,1),(195,1),(196,1),(197,1),(198,1),(199,1),(200,1),(201,1),(202,1),(203,1),(204,1),(205,1),(206,1),(207,1),(208,1),(209,1),(210,1),(211,1),(212,1),(213,1),(214,1),(215,1),(216,1),(217,1),(218,1),(219,1),(220,1),(221,1),(222,1),(223,1),(224,1),(225,1),(226,1),(227,1),(228,1),(229,1),(230,1),(231,1),(232,1),(233,1),(234,1),(235,1),(236,1),(237,1),(238,1),(239,1),(240,1),(241,1),(242,1),(243,1),(244,1);
/*!40000 ALTER TABLE `ps_country_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cronjobs`
--

DROP TABLE IF EXISTS `ps_cronjobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cronjobs` (
  `id_cronjob` int(10) NOT NULL AUTO_INCREMENT,
  `id_module` int(10) DEFAULT NULL,
  `description` text,
  `task` text,
  `hour` int(11) DEFAULT '-1',
  `day` int(11) DEFAULT '-1',
  `month` int(11) DEFAULT '-1',
  `day_of_week` int(11) DEFAULT '-1',
  `updated_at` datetime DEFAULT NULL,
  `one_shot` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) DEFAULT '0',
  `id_shop` int(11) DEFAULT '0',
  `id_shop_group` int(11) DEFAULT '0',
  PRIMARY KEY (`id_cronjob`),
  KEY `id_module` (`id_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cronjobs`
--

LOCK TABLES `ps_cronjobs` WRITE;
/*!40000 ALTER TABLE `ps_cronjobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_cronjobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_currency`
--

DROP TABLE IF EXISTS `ps_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_currency` (
  `id_currency` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `iso_code` varchar(3) NOT NULL DEFAULT '0',
  `iso_code_num` varchar(3) NOT NULL DEFAULT '0',
  `sign` varchar(8) NOT NULL,
  `blank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `format` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `conversion_rate` decimal(13,6) NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_currency`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_currency`
--

LOCK TABLES `ps_currency` WRITE;
/*!40000 ALTER TABLE `ps_currency` DISABLE KEYS */;
INSERT INTO `ps_currency` VALUES (1,'Peso','MXN','484','$',1,1,1,1.000000,0,1);
/*!40000 ALTER TABLE `ps_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_currency_shop`
--

DROP TABLE IF EXISTS `ps_currency_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_currency_shop` (
  `id_currency` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL,
  PRIMARY KEY (`id_currency`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_currency_shop`
--

LOCK TABLES `ps_currency_shop` WRITE;
/*!40000 ALTER TABLE `ps_currency_shop` DISABLE KEYS */;
INSERT INTO `ps_currency_shop` VALUES (1,1,1.000000);
/*!40000 ALTER TABLE `ps_currency_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customer`
--

DROP TABLE IF EXISTS `ps_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customer` (
  `id_customer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_gender` int(10) unsigned NOT NULL,
  `id_default_group` int(10) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned DEFAULT NULL,
  `id_risk` int(10) unsigned NOT NULL DEFAULT '1',
  `company` varchar(64) DEFAULT NULL,
  `siret` varchar(14) DEFAULT NULL,
  `ape` varchar(5) DEFAULT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `birthday` date DEFAULT NULL,
  `newsletter` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip_registration_newsletter` varchar(15) DEFAULT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `optin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `website` varchar(128) DEFAULT NULL,
  `outstanding_allow_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `show_public_prices` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `max_payment_days` int(10) unsigned NOT NULL DEFAULT '60',
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `note` text,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `refer_user` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_customer`),
  KEY `customer_email` (`email`),
  KEY `customer_login` (`email`,`passwd`),
  KEY `id_customer_passwd` (`id_customer`,`passwd`),
  KEY `id_gender` (`id_gender`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_shop` (`id_shop`,`date_add`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customer`
--

LOCK TABLES `ps_customer` WRITE;
/*!40000 ALTER TABLE `ps_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customer_group`
--

DROP TABLE IF EXISTS `ps_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customer_group` (
  `id_customer` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_customer`,`id_group`),
  KEY `customer_login` (`id_group`),
  KEY `id_customer` (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customer_group`
--

LOCK TABLES `ps_customer_group` WRITE;
/*!40000 ALTER TABLE `ps_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customer_message`
--

DROP TABLE IF EXISTS `ps_customer_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customer_message` (
  `id_customer_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer_thread` int(11) DEFAULT NULL,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `message` mediumtext NOT NULL,
  `file_name` varchar(18) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `user_agent` varchar(128) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_customer_message`),
  KEY `id_customer_thread` (`id_customer_thread`),
  KEY `id_employee` (`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customer_message`
--

LOCK TABLES `ps_customer_message` WRITE;
/*!40000 ALTER TABLE `ps_customer_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customer_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customer_message_sync_imap`
--

DROP TABLE IF EXISTS `ps_customer_message_sync_imap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customer_message_sync_imap` (
  `md5_header` varbinary(32) NOT NULL,
  KEY `md5_header_index` (`md5_header`(4))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customer_message_sync_imap`
--

LOCK TABLES `ps_customer_message_sync_imap` WRITE;
/*!40000 ALTER TABLE `ps_customer_message_sync_imap` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customer_message_sync_imap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customer_thread`
--

DROP TABLE IF EXISTS `ps_customer_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customer_thread` (
  `id_customer_thread` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `id_contact` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned DEFAULT NULL,
  `id_order` int(10) unsigned DEFAULT NULL,
  `id_product` int(10) unsigned DEFAULT NULL,
  `status` enum('open','closed','pending1','pending2') NOT NULL DEFAULT 'open',
  `email` varchar(128) NOT NULL,
  `token` varchar(12) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_customer_thread`),
  KEY `id_shop` (`id_shop`),
  KEY `id_lang` (`id_lang`),
  KEY `id_contact` (`id_contact`),
  KEY `id_customer` (`id_customer`),
  KEY `id_order` (`id_order`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customer_thread`
--

LOCK TABLES `ps_customer_thread` WRITE;
/*!40000 ALTER TABLE `ps_customer_thread` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customer_thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customization`
--

DROP TABLE IF EXISTS `ps_customization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customization` (
  `id_customization` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product_attribute` int(10) unsigned NOT NULL DEFAULT '0',
  `id_address_delivery` int(10) unsigned NOT NULL DEFAULT '0',
  `id_cart` int(10) unsigned NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `quantity_refunded` int(11) NOT NULL DEFAULT '0',
  `quantity_returned` int(11) NOT NULL DEFAULT '0',
  `in_cart` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_customization`,`id_cart`,`id_product`,`id_address_delivery`),
  KEY `id_product_attribute` (`id_product_attribute`),
  KEY `id_cart_product` (`id_cart`,`id_product`,`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customization`
--

LOCK TABLES `ps_customization` WRITE;
/*!40000 ALTER TABLE `ps_customization` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customization_field`
--

DROP TABLE IF EXISTS `ps_customization_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customization_field` (
  `id_customization_field` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_customization_field`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customization_field`
--

LOCK TABLES `ps_customization_field` WRITE;
/*!40000 ALTER TABLE `ps_customization_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customization_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customization_field_lang`
--

DROP TABLE IF EXISTS `ps_customization_field_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customization_field_lang` (
  `id_customization_field` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_customization_field`,`id_lang`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customization_field_lang`
--

LOCK TABLES `ps_customization_field_lang` WRITE;
/*!40000 ALTER TABLE `ps_customization_field_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customization_field_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customized_data`
--

DROP TABLE IF EXISTS `ps_customized_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customized_data` (
  `id_customization` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `index` int(3) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id_customization`,`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customized_data`
--

LOCK TABLES `ps_customized_data` WRITE;
/*!40000 ALTER TABLE `ps_customized_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customized_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_date_range`
--

DROP TABLE IF EXISTS `ps_date_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_date_range` (
  `id_date_range` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL,
  PRIMARY KEY (`id_date_range`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_date_range`
--

LOCK TABLES `ps_date_range` WRITE;
/*!40000 ALTER TABLE `ps_date_range` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_date_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_delivery`
--

DROP TABLE IF EXISTS `ps_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_delivery` (
  `id_delivery` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned DEFAULT NULL,
  `id_shop_group` int(10) unsigned DEFAULT NULL,
  `id_carrier` int(10) unsigned NOT NULL,
  `id_range_price` int(10) unsigned DEFAULT NULL,
  `id_range_weight` int(10) unsigned DEFAULT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  `price` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_delivery`),
  KEY `id_zone` (`id_zone`),
  KEY `id_carrier` (`id_carrier`,`id_zone`),
  KEY `id_range_price` (`id_range_price`),
  KEY `id_range_weight` (`id_range_weight`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_delivery`
--

LOCK TABLES `ps_delivery` WRITE;
/*!40000 ALTER TABLE `ps_delivery` DISABLE KEYS */;
INSERT INTO `ps_delivery` VALUES (1,NULL,NULL,2,0,1,1,5.000000),(2,NULL,NULL,2,0,1,2,5.000000),(3,NULL,NULL,2,1,0,1,5.000000),(4,NULL,NULL,2,1,0,2,5.000000),(5,NULL,NULL,3,NULL,1,8,500.000000),(6,NULL,NULL,3,NULL,1,2,250.000000);
/*!40000 ALTER TABLE `ps_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_employee`
--

DROP TABLE IF EXISTS `ps_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_employee` (
  `id_employee` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_profile` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL DEFAULT '0',
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stats_date_from` date DEFAULT NULL,
  `stats_date_to` date DEFAULT NULL,
  `stats_compare_from` date DEFAULT NULL,
  `stats_compare_to` date DEFAULT NULL,
  `stats_compare_option` int(1) unsigned NOT NULL DEFAULT '1',
  `preselect_date_range` varchar(32) DEFAULT NULL,
  `bo_color` varchar(32) DEFAULT NULL,
  `bo_theme` varchar(32) DEFAULT NULL,
  `bo_css` varchar(64) DEFAULT NULL,
  `default_tab` int(10) unsigned NOT NULL DEFAULT '0',
  `bo_width` int(10) unsigned NOT NULL DEFAULT '0',
  `bo_menu` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `optin` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `id_last_order` int(10) unsigned NOT NULL DEFAULT '0',
  `id_last_customer_message` int(10) unsigned NOT NULL DEFAULT '0',
  `id_last_customer` int(10) unsigned NOT NULL DEFAULT '0',
  `last_connection_date` date DEFAULT '0000-00-00',
  PRIMARY KEY (`id_employee`),
  KEY `employee_login` (`email`,`passwd`),
  KEY `id_employee_passwd` (`id_employee`,`passwd`),
  KEY `id_profile` (`id_profile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_employee`
--

LOCK TABLES `ps_employee` WRITE;
/*!40000 ALTER TABLE `ps_employee` DISABLE KEYS */;
INSERT INTO `ps_employee` VALUES (1,1,1,'Martínez','Juan Miguel','jimmy_guel@hotmail.com','2586ffea5caa4cd513c85c81227bb28a','2016-05-31 07:02:06','2016-08-01','2016-08-16','0000-00-00','0000-00-00',1,'','','default','admin-theme.css',1,0,1,1,1,0,0,0,'2016-08-16');
/*!40000 ALTER TABLE `ps_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_employee_shop`
--

DROP TABLE IF EXISTS `ps_employee_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_employee_shop` (
  `id_employee` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_employee`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_employee_shop`
--

LOCK TABLES `ps_employee_shop` WRITE;
/*!40000 ALTER TABLE `ps_employee_shop` DISABLE KEYS */;
INSERT INTO `ps_employee_shop` VALUES (1,1);
/*!40000 ALTER TABLE `ps_employee_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature`
--

DROP TABLE IF EXISTS `ps_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature` (
  `id_feature` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_feature`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature`
--

LOCK TABLES `ps_feature` WRITE;
/*!40000 ALTER TABLE `ps_feature` DISABLE KEYS */;
INSERT INTO `ps_feature` VALUES (1,0),(2,1),(3,2),(4,3),(5,4),(6,5),(7,6);
/*!40000 ALTER TABLE `ps_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature_lang`
--

DROP TABLE IF EXISTS `ps_feature_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature_lang` (
  `id_feature` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_feature`,`id_lang`),
  KEY `id_lang` (`id_lang`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature_lang`
--

LOCK TABLES `ps_feature_lang` WRITE;
/*!40000 ALTER TABLE `ps_feature_lang` DISABLE KEYS */;
INSERT INTO `ps_feature_lang` VALUES (1,1,'Altura'),(2,1,'Anchura'),(5,1,'Composición'),(6,1,'Estilos'),(4,1,'Peso'),(3,1,'Profundidad'),(7,1,'Propiedades');
/*!40000 ALTER TABLE `ps_feature_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature_product`
--

DROP TABLE IF EXISTS `ps_feature_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature_product` (
  `id_feature` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_feature_value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_feature`,`id_product`),
  KEY `id_feature_value` (`id_feature_value`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature_product`
--

LOCK TABLES `ps_feature_product` WRITE;
/*!40000 ALTER TABLE `ps_feature_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_feature_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature_shop`
--

DROP TABLE IF EXISTS `ps_feature_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature_shop` (
  `id_feature` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_feature`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature_shop`
--

LOCK TABLES `ps_feature_shop` WRITE;
/*!40000 ALTER TABLE `ps_feature_shop` DISABLE KEYS */;
INSERT INTO `ps_feature_shop` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1);
/*!40000 ALTER TABLE `ps_feature_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature_value`
--

DROP TABLE IF EXISTS `ps_feature_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature_value` (
  `id_feature_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_feature` int(10) unsigned NOT NULL,
  `custom` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`),
  KEY `feature` (`id_feature`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature_value`
--

LOCK TABLES `ps_feature_value` WRITE;
/*!40000 ALTER TABLE `ps_feature_value` DISABLE KEYS */;
INSERT INTO `ps_feature_value` VALUES (1,5,0),(2,5,0),(3,5,0),(4,5,0),(5,5,0),(6,5,0),(7,5,0),(8,5,0),(9,5,0),(10,6,0),(11,6,0),(12,6,0),(13,6,0),(14,6,0),(15,6,0),(16,6,0),(17,7,0),(18,7,0),(19,7,0),(20,7,0),(21,7,0),(22,1,1),(23,2,1),(24,4,1),(25,3,1),(26,1,1),(27,2,1),(28,4,1),(29,3,1),(30,1,1),(31,2,1),(32,4,1),(33,3,1);
/*!40000 ALTER TABLE `ps_feature_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature_value_lang`
--

DROP TABLE IF EXISTS `ps_feature_value_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature_value_lang` (
  `id_feature_value` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature_value_lang`
--

LOCK TABLES `ps_feature_value_lang` WRITE;
/*!40000 ALTER TABLE `ps_feature_value_lang` DISABLE KEYS */;
INSERT INTO `ps_feature_value_lang` VALUES (1,1,'Poliéster'),(2,1,'Lana'),(3,1,'Viscosa'),(4,1,'Elastano'),(5,1,'Algodón'),(6,1,'Seda'),(7,1,'Ante'),(8,1,'Paja'),(9,1,'Piel'),(10,1,'Clásico'),(11,1,'Informal'),(12,1,'Militar'),(13,1,'Femenino'),(14,1,'Rockero'),(15,1,'Básico'),(16,1,'Elegante'),(17,1,'Manga corta'),(18,1,'Vestido colorido'),(19,1,'Vestido corto'),(20,1,'Vestido a media pierna'),(21,1,'Vestido largo'),(22,1,'2.75 in'),(23,1,'2.06 in'),(24,1,'49.2 g'),(25,1,'0.26 in'),(26,1,'1.07 in'),(27,1,'1.62 in'),(28,1,'15.5 g'),(29,1,'0.41 in (clip included)'),(30,1,'4.33 in'),(31,1,'2.76 in'),(32,1,'120g'),(33,1,'0.31 in');
/*!40000 ALTER TABLE `ps_feature_value_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_gender`
--

DROP TABLE IF EXISTS `ps_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_gender` (
  `id_gender` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_gender`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_gender`
--

LOCK TABLES `ps_gender` WRITE;
/*!40000 ALTER TABLE `ps_gender` DISABLE KEYS */;
INSERT INTO `ps_gender` VALUES (1,0),(2,1);
/*!40000 ALTER TABLE `ps_gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_gender_lang`
--

DROP TABLE IF EXISTS `ps_gender_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_gender_lang` (
  `id_gender` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id_gender`,`id_lang`),
  KEY `id_gender` (`id_gender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_gender_lang`
--

LOCK TABLES `ps_gender_lang` WRITE;
/*!40000 ALTER TABLE `ps_gender_lang` DISABLE KEYS */;
INSERT INTO `ps_gender_lang` VALUES (1,1,'Sr.'),(2,1,'Sra.');
/*!40000 ALTER TABLE `ps_gender_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_group`
--

DROP TABLE IF EXISTS `ps_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_group` (
  `id_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reduction` decimal(17,2) NOT NULL DEFAULT '0.00',
  `price_display_method` tinyint(4) NOT NULL DEFAULT '0',
  `show_prices` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_group`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_group`
--

LOCK TABLES `ps_group` WRITE;
/*!40000 ALTER TABLE `ps_group` DISABLE KEYS */;
INSERT INTO `ps_group` VALUES (1,0.00,0,1,'2016-05-31 08:01:27','2016-05-31 08:01:27'),(2,0.00,0,1,'2016-05-31 08:01:27','2016-05-31 08:01:27'),(3,0.00,0,1,'2016-05-31 08:01:28','2016-05-31 08:01:28'),(4,0.00,0,1,'2016-06-01 16:25:53','2016-06-01 16:25:53');
/*!40000 ALTER TABLE `ps_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_group_lang`
--

DROP TABLE IF EXISTS `ps_group_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_group_lang` (
  `id_group` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_group`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_group_lang`
--

LOCK TABLES `ps_group_lang` WRITE;
/*!40000 ALTER TABLE `ps_group_lang` DISABLE KEYS */;
INSERT INTO `ps_group_lang` VALUES (1,1,'Visitante'),(2,1,'Invitado'),(3,1,'Cliente'),(4,1,'cliente de confianza');
/*!40000 ALTER TABLE `ps_group_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_group_reduction`
--

DROP TABLE IF EXISTS `ps_group_reduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_group_reduction` (
  `id_group_reduction` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_group` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  `reduction` decimal(4,3) NOT NULL,
  PRIMARY KEY (`id_group_reduction`),
  UNIQUE KEY `id_group` (`id_group`,`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_group_reduction`
--

LOCK TABLES `ps_group_reduction` WRITE;
/*!40000 ALTER TABLE `ps_group_reduction` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_group_reduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_group_shop`
--

DROP TABLE IF EXISTS `ps_group_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_group_shop` (
  `id_group` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_group_shop`
--

LOCK TABLES `ps_group_shop` WRITE;
/*!40000 ALTER TABLE `ps_group_shop` DISABLE KEYS */;
INSERT INTO `ps_group_shop` VALUES (1,1),(2,1),(3,1),(4,1);
/*!40000 ALTER TABLE `ps_group_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_guest`
--

DROP TABLE IF EXISTS `ps_guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_guest` (
  `id_guest` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_operating_system` int(10) unsigned DEFAULT NULL,
  `id_web_browser` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned DEFAULT NULL,
  `javascript` tinyint(1) DEFAULT '0',
  `screen_resolution_x` smallint(5) unsigned DEFAULT NULL,
  `screen_resolution_y` smallint(5) unsigned DEFAULT NULL,
  `screen_color` tinyint(3) unsigned DEFAULT NULL,
  `sun_java` tinyint(1) DEFAULT NULL,
  `adobe_flash` tinyint(1) DEFAULT NULL,
  `adobe_director` tinyint(1) DEFAULT NULL,
  `apple_quicktime` tinyint(1) DEFAULT NULL,
  `real_player` tinyint(1) DEFAULT NULL,
  `windows_media` tinyint(1) DEFAULT NULL,
  `accept_language` varchar(8) DEFAULT NULL,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_guest`),
  KEY `id_customer` (`id_customer`),
  KEY `id_operating_system` (`id_operating_system`),
  KEY `id_web_browser` (`id_web_browser`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_guest`
--

LOCK TABLES `ps_guest` WRITE;
/*!40000 ALTER TABLE `ps_guest` DISABLE KEYS */;
INSERT INTO `ps_guest` VALUES (1,0,11,0,0,0,0,0,0,0,0,0,0,0,'en',0),(2,3,11,0,0,0,0,0,0,0,0,0,0,0,'en',0),(3,3,11,0,0,0,0,0,0,0,0,0,0,0,'en',0),(4,0,11,0,0,0,0,0,0,0,0,0,0,0,'en',0);
/*!40000 ALTER TABLE `ps_guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_homeslider`
--

DROP TABLE IF EXISTS `ps_homeslider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_homeslider` (
  `id_homeslider_slides` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_homeslider_slides`,`id_shop`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_homeslider`
--

LOCK TABLES `ps_homeslider` WRITE;
/*!40000 ALTER TABLE `ps_homeslider` DISABLE KEYS */;
INSERT INTO `ps_homeslider` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `ps_homeslider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_homeslider_slides`
--

DROP TABLE IF EXISTS `ps_homeslider_slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_homeslider_slides` (
  `id_homeslider_slides` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_homeslider_slides`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_homeslider_slides`
--

LOCK TABLES `ps_homeslider_slides` WRITE;
/*!40000 ALTER TABLE `ps_homeslider_slides` DISABLE KEYS */;
INSERT INTO `ps_homeslider_slides` VALUES (1,0,1),(2,2,0);
/*!40000 ALTER TABLE `ps_homeslider_slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_homeslider_slides_lang`
--

DROP TABLE IF EXISTS `ps_homeslider_slides_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_homeslider_slides_lang` (
  `id_homeslider_slides` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `legend` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id_homeslider_slides`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_homeslider_slides_lang`
--

LOCK TABLES `ps_homeslider_slides_lang` WRITE;
/*!40000 ALTER TABLE `ps_homeslider_slides_lang` DISABLE KEYS */;
INSERT INTO `ps_homeslider_slides_lang` VALUES (1,1,'Sample 1','<h2>Próximamente</h2>\r\n<p>Entérate de nuestras promociones.</p>\r\n<p></p>','sample-1','#','sample-1.jpg'),(2,1,'Sample 2','<h2>EXCEPTEUR<br />OCCAECAT</h2>\r\n				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tristique in tortor et dignissim. Quisque non tempor leo. Maecenas egestas sem elit</p>\r\n				<p><button class=\"btn btn-default\" type=\"button\">Shop now !</button></p>','sample-2','http://www.prestashop.com/?utm_source=back-office&utm_medium=v16_homeslider&utm_campaign=back-office-ES&utm_content=download','sample-2.jpg');
/*!40000 ALTER TABLE `ps_homeslider_slides_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_hook`
--

DROP TABLE IF EXISTS `ps_hook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_hook` (
  `id_hook` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text,
  `position` tinyint(1) NOT NULL DEFAULT '1',
  `live_edit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_hook`),
  UNIQUE KEY `hook_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_hook`
--

LOCK TABLES `ps_hook` WRITE;
/*!40000 ALTER TABLE `ps_hook` DISABLE KEYS */;
INSERT INTO `ps_hook` VALUES (1,'displayPayment','Payment','This hook displays new elements on the payment page',1,1),(2,'actionValidateOrder','New orders','',1,0),(3,'displayMaintenance','Maintenance Page','This hook displays new elements on the maintenance page',1,0),(4,'actionPaymentConfirmation','Payment confirmation','This hook displays new elements after the payment is validated',1,0),(5,'displayPaymentReturn','Payment return','',1,0),(6,'actionUpdateQuantity','Quantity update','Quantity is updated only when a customer effectively places their order',1,0),(7,'displayRightColumn','Right column blocks','This hook displays new elements in the right-hand column',1,1),(8,'displayLeftColumn','Left column blocks','This hook displays new elements in the left-hand column',1,1),(9,'displayHome','Homepage content','This hook displays new elements on the homepage',1,1),(10,'Header','Pages html head section','This hook adds additional elements in the head section of your pages (head section of html)',1,0),(11,'actionCartSave','Cart creation and update','This hook is displayed when a product is added to the cart or if the cart\'s content is modified',1,0),(12,'actionAuthentication','Successful customer authentication','This hook is displayed after a customer successfully signs in',1,0),(13,'actionProductAdd','Product creation','This hook is displayed after a product is created',1,0),(14,'actionProductUpdate','Product update','This hook is displayed after a product has been updated',1,0),(15,'displayTop','Top of pages','This hook displays additional elements at the top of your pages',1,0),(16,'displayRightColumnProduct','New elements on the product page (right column)','This hook displays new elements in the right-hand column of the product page',1,0),(17,'actionProductDelete','Product deletion','This hook is called when a product is deleted',1,0),(18,'displayFooterProduct','Product footer','This hook adds new blocks under the product\'s description',1,1),(19,'displayInvoice','Invoice','This hook displays new blocks on the invoice (order)',1,0),(20,'actionOrderStatusUpdate','Order status update - Event','This hook launches modules when the status of an order changes.',1,0),(21,'displayAdminOrder','Display new elements in the Back Office, tab AdminOrder','This hook launches modules when the AdminOrder tab is displayed in the Back Office',1,0),(22,'displayAdminOrderTabOrder','Display new elements in Back Office, AdminOrder, panel Order','This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Order panel tabs',1,0),(23,'displayAdminOrderTabShip','Display new elements in Back Office, AdminOrder, panel Shipping','This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Shipping panel tabs',1,0),(24,'displayAdminOrderContentOrder','Display new elements in Back Office, AdminOrder, panel Order','This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Order panel content',1,0),(25,'displayAdminOrderContentShip','Display new elements in Back Office, AdminOrder, panel Shipping','This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Shipping panel content',1,0),(26,'displayFooter','Footer','This hook displays new blocks in the footer',1,0),(27,'displayPDFInvoice','PDF Invoice','This hook allows you to display additional information on PDF invoices',1,0),(28,'displayInvoiceLegalFreeText','PDF Invoice - Legal Free Text','This hook allows you to modify the legal free text on PDF invoices',1,0),(29,'displayAdminCustomers','Display new elements in the Back Office, tab AdminCustomers','This hook launches modules when the AdminCustomers tab is displayed in the Back Office',1,0),(30,'displayOrderConfirmation','Order confirmation page','This hook is called within an order\'s confirmation page',1,0),(31,'actionCustomerAccountAdd','Successful customer account creation','This hook is called when a new customer creates an account successfully',1,0),(32,'displayCustomerAccount','Customer account displayed in Front Office','This hook displays new elements on the customer account page',1,0),(33,'displayCustomerIdentityForm','Customer identity form displayed in Front Office','This hook displays new elements on the form to update a customer identity',1,0),(34,'actionOrderSlipAdd','Order slip creation','This hook is called when a new credit slip is added regarding client order',1,0),(35,'displayProductTab','Tabs on product page','This hook is called on the product page\'s tab',1,0),(36,'displayProductTabContent','Tabs content on the product page','This hook is called on the product page\'s tab',1,0),(37,'displayShoppingCartFooter','Shopping cart footer','This hook displays some specific information on the shopping cart\'s page',1,0),(38,'displayCustomerAccountForm','Customer account creation form','This hook displays some information on the form to create a customer account',1,0),(39,'displayAdminStatsModules','Stats - Modules','',1,0),(40,'displayAdminStatsGraphEngine','Graph engines','',1,0),(41,'actionOrderReturn','Returned product','This hook is displayed when a customer returns a product ',1,0),(42,'displayProductButtons','Product page actions','This hook adds new action buttons on the product page',1,0),(43,'displayBackOfficeHome','Administration panel homepage','This hook is displayed on the admin panel\'s homepage',1,0),(44,'displayAdminStatsGridEngine','Grid engines','',1,0),(45,'actionWatermark','Watermark','',1,0),(46,'actionProductCancel','Product cancelled','This hook is called when you cancel a product in an order',1,0),(47,'displayLeftColumnProduct','New elements on the product page (left column)','This hook displays new elements in the left-hand column of the product page',1,0),(48,'actionProductOutOfStock','Out-of-stock product','This hook displays new action buttons if a product is out of stock',1,0),(49,'actionProductAttributeUpdate','Product attribute update','This hook is displayed when a product\'s attribute is updated',1,0),(50,'displayCarrierList','Extra carrier (module mode)','',1,0),(51,'displayShoppingCart','Shopping cart - Additional button','This hook displays new action buttons within the shopping cart',1,0),(52,'actionSearch','Search','',1,0),(53,'displayBeforePayment','Redirect during the order process','This hook redirects the user to the module instead of displaying payment modules',1,0),(54,'actionCarrierUpdate','Carrier Update','This hook is called when a carrier is updated',1,0),(55,'actionOrderStatusPostUpdate','Post update of order status','',1,0),(56,'displayCustomerAccountFormTop','Block above the form for create an account','This hook is displayed above the customer\'s account creation form',1,0),(57,'displayBackOfficeHeader','Administration panel header','This hook is displayed in the header of the admin panel',1,0),(58,'displayBackOfficeTop','Administration panel hover the tabs','This hook is displayed on the roll hover of the tabs within the admin panel',1,0),(59,'displayBackOfficeFooter','Administration panel footer','This hook is displayed within the admin panel\'s footer',1,0),(60,'actionProductAttributeDelete','Product attribute deletion','This hook is displayed when a product\'s attribute is deleted',1,0),(61,'actionCarrierProcess','Carrier process','',1,0),(62,'actionOrderDetail','Order detail','This hook is used to set the follow-up in Smarty when an order\'s detail is called',1,0),(63,'displayBeforeCarrier','Before carriers list','This hook is displayed before the carrier list in Front Office',1,0),(64,'displayOrderDetail','Order detail','This hook is displayed within the order\'s details in Front Office',1,0),(65,'actionPaymentCCAdd','Payment CC added','',1,0),(66,'displayProductComparison','Extra product comparison','',1,0),(67,'actionCategoryAdd','Category creation','This hook is displayed when a category is created',1,0),(68,'actionCategoryUpdate','Category modification','This hook is displayed when a category is modified',1,0),(69,'actionCategoryDelete','Category deletion','This hook is displayed when a category is deleted',1,0),(70,'actionBeforeAuthentication','Before authentication','This hook is displayed before the customer\'s authentication',1,0),(71,'displayPaymentTop','Top of payment page','This hook is displayed at the top of the payment page',1,0),(72,'actionHtaccessCreate','After htaccess creation','This hook is displayed after the htaccess creation',1,0),(73,'actionAdminMetaSave','After saving the configuration in AdminMeta','This hook is displayed after saving the configuration in AdminMeta',1,0),(74,'displayAttributeGroupForm','Add fields to the form \'attribute group\'','This hook adds fields to the form \'attribute group\'',1,0),(75,'actionAttributeGroupSave','Saving an attribute group','This hook is called while saving an attributes group',1,0),(76,'actionAttributeGroupDelete','Deleting attribute group','This hook is called while deleting an attributes  group',1,0),(77,'displayFeatureForm','Add fields to the form \'feature\'','This hook adds fields to the form \'feature\'',1,0),(78,'actionFeatureSave','Saving attributes\' features','This hook is called while saving an attributes features',1,0),(79,'actionFeatureDelete','Deleting attributes\' features','This hook is called while deleting an attributes features',1,0),(80,'actionProductSave','Saving products','This hook is called while saving products',1,0),(81,'actionProductListOverride','Assign a products list to a category','This hook assigns a products list to a category',1,0),(82,'displayAttributeGroupPostProcess','On post-process in admin attribute group','This hook is called on post-process in admin attribute group',1,0),(83,'displayFeaturePostProcess','On post-process in admin feature','This hook is called on post-process in admin feature',1,0),(84,'displayFeatureValueForm','Add fields to the form \'feature value\'','This hook adds fields to the form \'feature value\'',1,0),(85,'displayFeatureValuePostProcess','On post-process in admin feature value','This hook is called on post-process in admin feature value',1,0),(86,'actionFeatureValueDelete','Deleting attributes\' features\' values','This hook is called while deleting an attributes features value',1,0),(87,'actionFeatureValueSave','Saving an attributes features value','This hook is called while saving an attributes features value',1,0),(88,'displayAttributeForm','Add fields to the form \'attribute value\'','This hook adds fields to the form \'attribute value\'',1,0),(89,'actionAttributePostProcess','On post-process in admin feature value','This hook is called on post-process in admin feature value',1,0),(90,'actionAttributeDelete','Deleting an attributes features value','This hook is called while deleting an attributes features value',1,0),(91,'actionAttributeSave','Saving an attributes features value','This hook is called while saving an attributes features value',1,0),(92,'actionTaxManager','Tax Manager Factory','',1,0),(93,'displayMyAccountBlock','My account block','This hook displays extra information within the \'my account\' block\"',1,0),(94,'actionModuleInstallBefore','actionModuleInstallBefore','',1,0),(95,'actionModuleInstallAfter','actionModuleInstallAfter','',1,0),(96,'displayHomeTab','Home Page Tabs','This hook displays new elements on the homepage tabs',1,1),(97,'displayHomeTabContent','Home Page Tabs Content','This hook displays new elements on the homepage tabs content',1,1),(98,'displayTopColumn','Top column blocks','This hook displays new elements in the top of columns',1,1),(99,'displayBackOfficeCategory','Display new elements in the Back Office, tab AdminCategories','This hook launches modules when the AdminCategories tab is displayed in the Back Office',1,0),(100,'displayProductListFunctionalButtons','Display new elements in the Front Office, products list','This hook launches modules when the products list is displayed in the Front Office',1,0),(101,'displayNav','Navigation','',1,1),(102,'displayOverrideTemplate','Change the default template of current controller','',1,0),(103,'actionAdminLoginControllerSetMedia','Set media on admin login page header','This hook is called after adding media to admin login page header',1,0),(104,'actionOrderEdited','Order edited','This hook is called when an order is edited.',1,0),(105,'actionEmailAddBeforeContent','Add extra content before mail content','This hook is called just before fetching mail template',1,0),(106,'actionEmailAddAfterContent','Add extra content after mail content','This hook is called just after fetching mail template',1,0),(107,'actionObjectProductUpdateAfter','actionObjectProductUpdateAfter','',0,0),(108,'actionObjectProductDeleteAfter','actionObjectProductDeleteAfter','',0,0),(109,'displayCompareExtraInformation','displayCompareExtraInformation','',1,1),(110,'displaySocialSharing','displaySocialSharing','',1,1),(111,'displayBanner','displayBanner','',1,1),(112,'actionObjectLanguageAddAfter','actionObjectLanguageAddAfter','',0,0),(113,'displayPaymentEU','displayPaymentEU','',1,1),(114,'actionCartListOverride','actionCartListOverride','',0,0),(115,'actionAdminMetaControllerUpdate_optionsBefore','actionAdminMetaControllerUpdate_optionsBefore','',0,0),(116,'actionAdminLanguagesControllerStatusBefore','actionAdminLanguagesControllerStatusBefore','',0,0),(117,'actionObjectCmsUpdateAfter','actionObjectCmsUpdateAfter','',0,0),(118,'actionObjectCmsDeleteAfter','actionObjectCmsDeleteAfter','',0,0),(119,'actionShopDataDuplication','actionShopDataDuplication','',0,0),(120,'actionAdminStoresControllerUpdate_optionsAfter','actionAdminStoresControllerUpdate_optionsAfter','',0,0),(121,'actionObjectManufacturerDeleteAfter','actionObjectManufacturerDeleteAfter','',0,0),(122,'actionObjectManufacturerAddAfter','actionObjectManufacturerAddAfter','',0,0),(123,'actionObjectManufacturerUpdateAfter','actionObjectManufacturerUpdateAfter','',0,0),(125,'actionModuleRegisterHookAfter','actionModuleRegisterHookAfter','',0,0),(126,'actionModuleUnRegisterHookAfter','actionModuleUnRegisterHookAfter','',0,0),(127,'displayMyAccountBlockfooter','My account block','Display extra informations inside the \"my account\" block',1,0),(128,'displayMobileTopSiteMap','displayMobileTopSiteMap','',1,1),(129,'displaySearch','displaySearch','',1,1),(130,'actionObjectSupplierDeleteAfter','actionObjectSupplierDeleteAfter','',0,0),(131,'actionObjectSupplierAddAfter','actionObjectSupplierAddAfter','',0,0),(132,'actionObjectSupplierUpdateAfter','actionObjectSupplierUpdateAfter','',0,0),(133,'actionObjectCategoryUpdateAfter','actionObjectCategoryUpdateAfter','',0,0),(134,'actionObjectCategoryDeleteAfter','actionObjectCategoryDeleteAfter','',0,0),(135,'actionObjectCategoryAddAfter','actionObjectCategoryAddAfter','',0,0),(136,'actionObjectCmsAddAfter','actionObjectCmsAddAfter','',0,0),(137,'actionObjectProductAddAfter','actionObjectProductAddAfter','',0,0),(138,'dashboardZoneOne','dashboardZoneOne','',0,0),(139,'dashboardData','dashboardData','',0,0),(140,'actionObjectOrderAddAfter','actionObjectOrderAddAfter','',0,0),(141,'actionObjectCustomerAddAfter','actionObjectCustomerAddAfter','',0,0),(142,'actionObjectCustomerMessageAddAfter','actionObjectCustomerMessageAddAfter','',0,0),(143,'actionObjectCustomerThreadAddAfter','actionObjectCustomerThreadAddAfter','',0,0),(144,'actionObjectOrderReturnAddAfter','actionObjectOrderReturnAddAfter','',0,0),(145,'actionAdminControllerSetMedia','actionAdminControllerSetMedia','',0,0),(146,'dashboardZoneTwo','dashboardZoneTwo','',0,0),(147,'actionAdminMetaControllerUpdate_optionsAfter','actionAdminMetaControllerUpdate_optionsAfter','',0,0),(148,'actionAdminPerformanceControllerSaveAfter','actionAdminPerformanceControllerSaveAfter','',0,0),(149,'actionObjectCarrierAddAfter','actionObjectCarrierAddAfter','',0,0),(150,'actionObjectContactAddAfter','actionObjectContactAddAfter','',0,0),(151,'actionAdminThemesControllerUpdate_optionsAfter','actionAdminThemesControllerUpdate_optionsAfter','',0,0),(152,'actionObjectShopUpdateAfter','actionObjectShopUpdateAfter','',0,0),(153,'actionAdminPreferencesControllerUpdate_optionsAfter','actionAdminPreferencesControllerUpdate_optionsAfter','',0,0),(154,'actionObjectShopAddAfter','actionObjectShopAddAfter','',0,0),(155,'actionObjectShopGroupAddAfter','actionObjectShopGroupAddAfter','',0,0),(156,'actionObjectCartAddAfter','actionObjectCartAddAfter','',0,0),(157,'actionObjectEmployeeAddAfter','actionObjectEmployeeAddAfter','',0,0),(158,'actionObjectImageAddAfter','actionObjectImageAddAfter','',0,0),(159,'actionObjectCartRuleAddAfter','actionObjectCartRuleAddAfter','',0,0),(160,'actionAdminStoresControllerSaveAfter','actionAdminStoresControllerSaveAfter','',0,0),(161,'actionAdminWebserviceControllerSaveAfter','actionAdminWebserviceControllerSaveAfter','',0,0);
/*!40000 ALTER TABLE `ps_hook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_hook_alias`
--

DROP TABLE IF EXISTS `ps_hook_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_hook_alias` (
  `id_hook_alias` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_hook_alias`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_hook_alias`
--

LOCK TABLES `ps_hook_alias` WRITE;
/*!40000 ALTER TABLE `ps_hook_alias` DISABLE KEYS */;
INSERT INTO `ps_hook_alias` VALUES (1,'payment','displayPayment'),(2,'newOrder','actionValidateOrder'),(3,'paymentConfirm','actionPaymentConfirmation'),(4,'paymentReturn','displayPaymentReturn'),(5,'updateQuantity','actionUpdateQuantity'),(6,'rightColumn','displayRightColumn'),(7,'leftColumn','displayLeftColumn'),(8,'home','displayHome'),(9,'displayHeader','Header'),(10,'cart','actionCartSave'),(11,'authentication','actionAuthentication'),(12,'addproduct','actionProductAdd'),(13,'updateproduct','actionProductUpdate'),(14,'top','displayTop'),(15,'extraRight','displayRightColumnProduct'),(16,'deleteproduct','actionProductDelete'),(17,'productfooter','displayFooterProduct'),(18,'invoice','displayInvoice'),(19,'updateOrderStatus','actionOrderStatusUpdate'),(20,'adminOrder','displayAdminOrder'),(21,'footer','displayFooter'),(22,'PDFInvoice','displayPDFInvoice'),(23,'adminCustomers','displayAdminCustomers'),(24,'orderConfirmation','displayOrderConfirmation'),(25,'createAccount','actionCustomerAccountAdd'),(26,'customerAccount','displayCustomerAccount'),(27,'orderSlip','actionOrderSlipAdd'),(28,'productTab','displayProductTab'),(29,'productTabContent','displayProductTabContent'),(30,'shoppingCart','displayShoppingCartFooter'),(31,'createAccountForm','displayCustomerAccountForm'),(32,'AdminStatsModules','displayAdminStatsModules'),(33,'GraphEngine','displayAdminStatsGraphEngine'),(34,'orderReturn','actionOrderReturn'),(35,'productActions','displayProductButtons'),(36,'backOfficeHome','displayBackOfficeHome'),(37,'GridEngine','displayAdminStatsGridEngine'),(38,'watermark','actionWatermark'),(39,'cancelProduct','actionProductCancel'),(40,'extraLeft','displayLeftColumnProduct'),(41,'productOutOfStock','actionProductOutOfStock'),(42,'updateProductAttribute','actionProductAttributeUpdate'),(43,'extraCarrier','displayCarrierList'),(44,'shoppingCartExtra','displayShoppingCart'),(45,'search','actionSearch'),(46,'backBeforePayment','displayBeforePayment'),(47,'updateCarrier','actionCarrierUpdate'),(48,'postUpdateOrderStatus','actionOrderStatusPostUpdate'),(49,'createAccountTop','displayCustomerAccountFormTop'),(50,'backOfficeHeader','displayBackOfficeHeader'),(51,'backOfficeTop','displayBackOfficeTop'),(52,'backOfficeFooter','displayBackOfficeFooter'),(53,'deleteProductAttribute','actionProductAttributeDelete'),(54,'processCarrier','actionCarrierProcess'),(55,'orderDetail','actionOrderDetail'),(56,'beforeCarrier','displayBeforeCarrier'),(57,'orderDetailDisplayed','displayOrderDetail'),(58,'paymentCCAdded','actionPaymentCCAdd'),(59,'extraProductComparison','displayProductComparison'),(60,'categoryAddition','actionCategoryAdd'),(61,'categoryUpdate','actionCategoryUpdate'),(62,'categoryDeletion','actionCategoryDelete'),(63,'beforeAuthentication','actionBeforeAuthentication'),(64,'paymentTop','displayPaymentTop'),(65,'afterCreateHtaccess','actionHtaccessCreate'),(66,'afterSaveAdminMeta','actionAdminMetaSave'),(67,'attributeGroupForm','displayAttributeGroupForm'),(68,'afterSaveAttributeGroup','actionAttributeGroupSave'),(69,'afterDeleteAttributeGroup','actionAttributeGroupDelete'),(70,'featureForm','displayFeatureForm'),(71,'afterSaveFeature','actionFeatureSave'),(72,'afterDeleteFeature','actionFeatureDelete'),(73,'afterSaveProduct','actionProductSave'),(74,'productListAssign','actionProductListOverride'),(75,'postProcessAttributeGroup','displayAttributeGroupPostProcess'),(76,'postProcessFeature','displayFeaturePostProcess'),(77,'featureValueForm','displayFeatureValueForm'),(78,'postProcessFeatureValue','displayFeatureValuePostProcess'),(79,'afterDeleteFeatureValue','actionFeatureValueDelete'),(80,'afterSaveFeatureValue','actionFeatureValueSave'),(81,'attributeForm','displayAttributeForm'),(82,'postProcessAttribute','actionAttributePostProcess'),(83,'afterDeleteAttribute','actionAttributeDelete'),(84,'afterSaveAttribute','actionAttributeSave'),(85,'taxManager','actionTaxManager'),(86,'myAccountBlock','displayMyAccountBlock');
/*!40000 ALTER TABLE `ps_hook_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_hook_module`
--

DROP TABLE IF EXISTS `ps_hook_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_hook_module` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_hook` int(10) unsigned NOT NULL,
  `position` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_hook`,`id_shop`),
  KEY `id_hook` (`id_hook`),
  KEY `id_module` (`id_module`),
  KEY `position` (`id_shop`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_hook_module`
--

LOCK TABLES `ps_hook_module` WRITE;
/*!40000 ALTER TABLE `ps_hook_module` DISABLE KEYS */;
INSERT INTO `ps_hook_module` VALUES (1,1,10,1),(1,1,16,1),(1,1,107,1),(1,1,108,1),(1,1,109,1),(1,1,110,1),(2,1,111,1),(2,1,112,1),(3,1,1,1),(3,1,5,1),(3,1,113,1),(4,1,8,1),(4,1,13,1),(4,1,14,1),(4,1,17,1),(4,1,55,1),(5,1,114,1),(7,1,67,1),(7,1,68,1),(7,1,69,1),(7,1,99,1),(7,1,115,1),(7,1,116,1),(11,1,74,1),(11,1,75,1),(11,1,76,1),(11,1,77,1),(11,1,78,1),(11,1,79,1),(11,1,80,1),(11,1,81,1),(11,1,82,1),(11,1,83,1),(11,1,84,1),(11,1,85,1),(11,1,86,1),(11,1,87,1),(11,1,88,1),(11,1,89,1),(11,1,90,1),(11,1,91,1),(12,1,117,1),(12,1,118,1),(12,1,119,1),(12,1,120,1),(16,1,121,1),(16,1,122,1),(16,1,123,1),(17,1,125,1),(17,1,126,1),(19,1,96,1),(19,1,97,1),(20,1,26,1),(20,1,31,1),(22,1,15,1),(22,1,128,1),(22,1,129,1),(25,1,130,1),(25,1,131,1),(25,1,132,1),(27,1,133,1),(27,1,134,1),(27,1,135,1),(27,1,136,1),(27,1,137,1),(28,1,101,1),(31,1,138,1),(31,1,139,1),(31,1,140,1),(31,1,141,1),(31,1,142,1),(31,1,143,1),(31,1,144,1),(31,1,145,1),(32,1,146,1),(34,1,52,1),(35,1,40,1),(36,1,44,1),(37,1,98,1),(40,1,39,1),(50,1,12,1),(63,1,9,1),(63,1,57,1),(64,1,2,1),(64,1,20,1),(64,1,95,1),(64,1,147,1),(64,1,148,1),(64,1,149,1),(64,1,150,1),(64,1,151,1),(64,1,152,1),(64,1,153,1),(64,1,154,1),(64,1,155,1),(64,1,156,1),(64,1,157,1),(64,1,158,1),(64,1,159,1),(64,1,160,1),(64,1,161,1),(76,1,18,1),(76,1,21,1),(76,1,30,1),(76,1,51,1),(2,1,10,2),(5,1,15,2),(6,1,26,2),(7,1,8,2),(8,1,101,2),(9,1,9,2),(11,1,67,2),(11,1,68,2),(11,1,69,2),(18,1,125,2),(18,1,126,2),(19,1,13,2),(19,1,14,2),(19,1,17,2),(27,1,107,2),(27,1,108,2),(27,1,117,2),(27,1,118,2),(27,1,119,2),(27,1,121,2),(27,1,122,2),(27,1,123,2),(27,1,130,2),(27,1,131,2),(27,1,132,2),(32,1,55,2),(32,1,139,2),(32,1,145,2),(33,1,146,2),(34,1,140,2),(38,1,96,2),(38,1,97,2),(39,1,42,2),(41,1,39,2),(50,1,31,2),(60,1,52,2),(63,1,98,2),(63,1,112,2),(64,1,57,2),(64,1,120,2),(64,1,136,2),(64,1,137,2),(64,1,141,2),(64,1,143,2),(76,1,1,2),(4,1,10,3),(4,1,96,3),(4,1,97,3),(7,1,26,3),(10,1,101,3),(11,1,8,3),(13,1,9,3),(23,1,13,3),(23,1,14,3),(23,1,17,3),(23,1,96,3),(23,1,97,3),(27,1,15,3),(27,1,68,3),(33,1,139,3),(33,1,145,3),(34,1,146,3),(37,1,119,3),(42,1,39,3),(64,1,140,3),(65,1,57,3),(65,1,125,3),(65,1,126,3),(5,1,10,4),(12,1,8,4),(12,1,26,4),(14,1,101,4),(26,1,13,4),(26,1,14,4),(26,1,17,4),(28,1,15,4),(34,1,139,4),(35,1,145,4),(38,1,68,4),(43,1,39,4),(76,1,57,4),(6,1,10,5),(16,1,8,5),(18,1,26,5),(38,1,13,5),(38,1,14,5),(38,1,17,5),(40,1,15,5),(44,1,39,5),(7,1,10,6),(15,1,26,6),(17,1,8,6),(41,1,15,6),(45,1,39,6),(8,1,10,7),(19,1,8,7),(46,1,39,7),(50,1,26,7),(9,1,10,8),(21,1,8,8),(47,1,39,8),(63,1,26,8),(10,1,10,9),(23,1,8,9),(48,1,39,9),(11,1,10,10),(24,1,8,10),(49,1,39,10),(12,1,10,11),(25,1,8,11),(51,1,39,11),(14,1,10,12),(26,1,8,12),(52,1,39,12),(15,1,10,13),(29,1,8,13),(53,1,39,13),(16,1,10,14),(54,1,39,14),(63,1,8,14),(17,1,10,15),(55,1,39,15),(18,1,10,16),(56,1,39,16),(19,1,10,17),(57,1,39,17),(20,1,10,18),(58,1,39,18),(21,1,10,19),(59,1,39,19),(22,1,10,20),(60,1,39,20),(23,1,10,21),(61,1,39,21),(24,1,10,22),(62,1,39,22),(25,1,10,23),(26,1,10,24),(27,1,10,25),(28,1,10,26),(29,1,10,27),(37,1,10,28),(38,1,10,29),(39,1,10,30),(63,1,10,31),(76,1,10,32);
/*!40000 ALTER TABLE `ps_hook_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_hook_module_exceptions`
--

DROP TABLE IF EXISTS `ps_hook_module_exceptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_hook_module_exceptions` (
  `id_hook_module_exceptions` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_module` int(10) unsigned NOT NULL,
  `id_hook` int(10) unsigned NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_hook_module_exceptions`),
  KEY `id_module` (`id_module`),
  KEY `id_hook` (`id_hook`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_hook_module_exceptions`
--

LOCK TABLES `ps_hook_module_exceptions` WRITE;
/*!40000 ALTER TABLE `ps_hook_module_exceptions` DISABLE KEYS */;
INSERT INTO `ps_hook_module_exceptions` VALUES (1,1,4,8,'category'),(2,1,16,8,'category'),(3,1,17,8,'category'),(4,1,21,8,'category'),(5,1,25,8,'category');
/*!40000 ALTER TABLE `ps_hook_module_exceptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_image`
--

DROP TABLE IF EXISTS `ps_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_image` (
  `id_image` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `position` smallint(2) unsigned NOT NULL DEFAULT '0',
  `cover` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_image`),
  UNIQUE KEY `id_product_cover` (`id_product`,`cover`),
  UNIQUE KEY `idx_product_image` (`id_image`,`id_product`,`cover`),
  KEY `image_product` (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=676 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_image`
--

LOCK TABLES `ps_image` WRITE;
/*!40000 ALTER TABLE `ps_image` DISABLE KEYS */;
INSERT INTO `ps_image` VALUES (1,1,1,1),(2,2,1,1),(3,3,1,1),(5,5,1,1),(6,6,1,1),(7,7,1,1),(8,8,1,1),(9,9,1,1),(10,10,1,1),(11,11,1,1),(12,12,1,1),(13,13,1,1),(14,14,1,1),(15,15,1,1),(16,16,1,1),(17,17,1,1),(18,18,1,1),(19,19,1,1),(20,20,1,1),(21,21,1,1),(22,22,1,1),(23,23,1,1),(24,24,1,1),(25,25,1,1),(26,26,1,1),(27,27,1,1),(28,28,1,1),(29,29,1,1),(30,30,1,1),(31,31,1,1),(32,32,1,1),(33,33,1,1),(34,34,1,1),(35,35,1,1),(36,36,1,1),(37,37,1,1),(38,38,1,1),(39,39,1,1),(40,40,1,1),(41,41,1,1),(42,42,1,1),(43,43,1,1),(44,44,1,1),(45,45,1,1),(46,46,1,1),(47,47,1,1),(48,48,1,1),(49,49,1,1),(50,50,1,1),(51,51,1,1),(52,52,1,1),(53,53,1,1),(54,54,1,1),(55,55,1,1),(56,56,1,1),(57,57,1,1),(58,58,1,1),(59,59,1,1),(60,60,1,1),(61,61,1,1),(62,62,1,1),(63,63,1,1),(64,64,1,1),(65,65,1,1),(66,66,1,1),(67,67,1,1),(68,68,1,1),(69,69,1,1),(70,70,1,1),(71,71,1,1),(72,72,1,1),(73,73,1,1),(74,74,1,1),(75,75,1,1),(76,76,1,1),(77,77,1,1),(78,78,1,1),(79,79,1,1),(80,80,1,1),(81,81,1,1),(82,82,1,1),(83,83,1,1),(85,85,1,1),(86,86,1,1),(87,87,1,1),(88,88,1,1),(89,89,1,1),(90,90,1,1),(91,91,1,1),(92,92,1,1),(93,93,1,1),(94,94,1,1),(95,95,1,1),(96,96,1,1),(97,97,1,1),(98,98,1,1),(99,99,1,1),(100,100,1,1),(101,101,1,1),(102,102,1,1),(103,103,1,1),(104,104,1,1),(105,105,1,1),(106,106,1,1),(107,107,1,1),(108,108,1,1),(109,109,1,1),(110,110,1,1),(111,111,1,1),(112,112,1,1),(113,113,1,1),(114,114,1,1),(115,115,1,1),(116,116,1,1),(117,117,1,1),(118,118,1,1),(119,119,1,1),(120,120,1,1),(121,121,1,1),(122,122,1,1),(123,123,1,1),(124,124,1,1),(125,125,1,1),(126,126,1,1),(127,127,1,1),(128,128,1,1),(129,129,1,1),(130,130,1,1),(131,131,1,1),(132,132,1,1),(133,133,1,1),(134,134,1,1),(135,135,1,1),(136,136,1,1),(137,137,1,1),(139,139,1,1),(140,140,1,1),(141,141,1,1),(143,143,1,1),(144,144,1,1),(145,145,1,1),(146,146,1,1),(147,147,1,1),(148,148,1,1),(149,149,1,1),(150,150,1,1),(151,151,1,1),(152,152,1,1),(153,153,1,1),(154,154,1,1),(155,155,1,1),(156,156,1,1),(157,157,1,1),(158,158,1,1),(159,159,1,1),(160,160,1,1),(161,161,1,1),(162,162,1,1),(163,163,1,1),(164,164,1,1),(165,165,1,1),(166,166,1,1),(167,167,1,1),(168,168,1,1),(169,169,1,1),(170,170,1,1),(488,488,1,1),(489,489,1,1),(490,490,1,1),(491,491,1,1),(492,492,1,1),(493,493,1,1),(494,494,1,1),(495,495,1,1),(496,496,1,1),(497,497,1,1),(498,498,1,1),(499,499,1,1),(500,500,1,1),(501,501,1,1),(502,502,1,1),(503,503,1,1),(504,504,1,1),(505,505,1,1),(506,506,1,1),(507,507,1,1),(508,508,1,1),(509,509,1,1),(510,510,1,1),(511,511,1,1),(512,512,1,1),(513,513,1,1),(514,514,1,1),(515,515,1,1),(516,516,1,1),(517,517,1,1),(518,518,1,1),(519,519,1,1),(520,520,1,1),(521,521,1,1),(522,522,1,1),(523,523,1,1),(524,524,1,1),(525,525,1,1),(526,526,1,1),(527,527,1,1),(528,528,1,1),(529,529,1,1),(530,530,1,1),(531,531,1,1),(532,532,1,1),(533,533,1,1),(534,534,1,1),(535,535,1,1),(536,536,1,1),(537,537,1,1),(538,538,1,1),(539,539,1,1),(540,540,1,1),(541,541,1,1),(542,542,1,1),(543,543,1,1),(544,544,1,1),(545,545,1,1),(546,546,1,1),(547,547,1,1),(548,548,1,1),(549,549,1,1),(550,550,1,1),(551,551,1,1),(552,552,1,1),(553,553,1,1),(554,554,1,1),(555,555,1,1),(556,556,1,1),(557,557,1,1),(558,558,1,1),(559,559,1,1),(560,560,1,1),(561,561,1,1),(562,562,1,1),(563,563,1,1),(564,564,1,1),(565,565,1,1),(566,566,1,1),(567,567,1,1),(568,568,1,1),(569,569,1,1),(570,570,1,1),(571,571,1,1),(572,572,1,1),(573,573,1,1),(574,574,1,1),(575,575,1,1),(576,576,1,1),(577,577,1,1),(578,578,1,1),(579,579,1,1),(580,580,1,1),(581,581,1,1),(582,582,1,1),(583,583,1,1),(584,584,1,1),(585,585,1,1),(586,586,1,1),(587,587,1,1),(588,588,1,1),(589,589,1,1),(590,590,1,1),(591,591,1,1),(592,592,1,1),(593,593,1,1),(594,594,1,1),(595,595,1,1),(596,596,1,1),(597,597,1,1),(598,598,1,1),(599,599,1,1),(600,600,1,1),(601,601,1,1),(602,602,1,1),(603,603,1,1),(604,604,1,1),(605,605,1,1),(606,606,1,1),(607,607,1,1),(608,608,1,1),(609,609,1,1),(610,610,1,1),(611,611,1,1),(612,612,1,1),(613,613,1,1),(614,614,1,1),(615,615,1,1),(616,616,1,1),(617,617,1,1),(618,618,1,1),(619,619,1,1),(620,620,1,1),(621,621,1,1),(622,622,1,1),(623,623,1,1),(624,624,1,1),(625,625,1,1),(626,626,1,1),(627,627,1,1),(628,628,1,1),(629,629,1,1),(630,630,1,1),(631,631,1,1),(632,632,1,1),(633,633,1,1),(634,634,1,1),(635,635,1,1),(636,636,1,1),(637,637,1,1),(638,638,1,1),(639,639,1,1),(640,640,1,1),(641,641,1,1),(642,642,1,1),(643,643,1,1),(647,647,1,1),(648,648,1,1),(649,649,1,1),(650,650,1,1),(651,651,1,1),(652,652,1,1),(653,653,1,1),(654,654,1,1),(655,655,1,1),(656,656,1,1),(657,657,1,1),(658,658,1,1),(659,659,1,1),(660,660,1,1),(661,661,1,1),(662,662,1,1),(663,663,1,1),(664,664,1,1),(665,665,1,1),(666,666,1,1),(667,667,1,1),(668,668,1,1),(669,669,1,1),(670,670,1,1),(671,671,1,1),(672,672,1,1),(673,673,1,1),(674,674,1,1),(675,675,1,1);
/*!40000 ALTER TABLE `ps_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_image_lang`
--

DROP TABLE IF EXISTS `ps_image_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_image_lang` (
  `id_image` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `legend` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_image`,`id_lang`),
  KEY `id_image` (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_image_lang`
--

LOCK TABLES `ps_image_lang` WRITE;
/*!40000 ALTER TABLE `ps_image_lang` DISABLE KEYS */;
INSERT INTO `ps_image_lang` VALUES (1,1,''),(2,1,''),(3,1,''),(5,1,''),(6,1,''),(7,1,''),(8,1,''),(9,1,''),(10,1,''),(11,1,''),(12,1,''),(13,1,''),(14,1,''),(15,1,''),(16,1,''),(17,1,''),(18,1,''),(19,1,''),(20,1,''),(21,1,''),(22,1,''),(23,1,''),(24,1,''),(25,1,''),(26,1,''),(27,1,''),(28,1,''),(29,1,''),(30,1,''),(31,1,''),(32,1,''),(33,1,''),(34,1,''),(35,1,''),(36,1,''),(37,1,''),(38,1,''),(39,1,''),(40,1,''),(41,1,''),(42,1,''),(43,1,''),(44,1,''),(45,1,''),(46,1,''),(47,1,''),(48,1,''),(49,1,''),(50,1,''),(51,1,''),(52,1,''),(53,1,''),(54,1,''),(55,1,''),(56,1,''),(57,1,''),(58,1,''),(59,1,''),(60,1,''),(61,1,''),(62,1,''),(63,1,''),(64,1,''),(65,1,''),(66,1,''),(67,1,''),(68,1,''),(69,1,''),(70,1,''),(71,1,''),(72,1,''),(73,1,''),(74,1,''),(75,1,''),(76,1,''),(77,1,''),(78,1,''),(79,1,''),(80,1,''),(81,1,''),(82,1,''),(83,1,''),(85,1,''),(86,1,''),(87,1,''),(88,1,''),(89,1,''),(90,1,''),(91,1,''),(92,1,''),(93,1,''),(94,1,''),(95,1,''),(96,1,''),(97,1,''),(98,1,''),(99,1,''),(100,1,''),(101,1,''),(102,1,''),(103,1,''),(104,1,''),(105,1,''),(106,1,''),(107,1,''),(108,1,''),(109,1,''),(110,1,''),(111,1,''),(112,1,''),(113,1,''),(114,1,''),(115,1,''),(116,1,''),(117,1,''),(118,1,''),(119,1,''),(120,1,''),(121,1,''),(122,1,''),(123,1,''),(124,1,''),(125,1,''),(126,1,''),(127,1,''),(128,1,''),(129,1,''),(130,1,''),(131,1,''),(132,1,''),(133,1,''),(134,1,''),(135,1,''),(136,1,''),(137,1,''),(139,1,''),(140,1,''),(141,1,''),(143,1,''),(144,1,''),(145,1,''),(146,1,''),(147,1,''),(148,1,''),(149,1,''),(150,1,''),(151,1,''),(152,1,''),(153,1,''),(154,1,''),(155,1,''),(156,1,''),(157,1,''),(158,1,''),(159,1,''),(160,1,''),(161,1,''),(162,1,''),(163,1,''),(164,1,''),(165,1,''),(166,1,''),(167,1,''),(168,1,''),(169,1,''),(170,1,''),(488,1,''),(489,1,''),(490,1,''),(491,1,''),(492,1,''),(493,1,''),(494,1,''),(495,1,''),(496,1,''),(497,1,''),(498,1,''),(499,1,''),(500,1,''),(501,1,''),(502,1,''),(503,1,''),(504,1,''),(505,1,''),(506,1,''),(507,1,''),(508,1,''),(509,1,''),(510,1,''),(511,1,''),(512,1,''),(513,1,''),(514,1,''),(515,1,''),(516,1,''),(517,1,''),(518,1,''),(519,1,''),(520,1,''),(521,1,''),(522,1,''),(523,1,''),(524,1,''),(525,1,''),(526,1,''),(527,1,''),(528,1,''),(529,1,''),(530,1,''),(531,1,''),(532,1,''),(533,1,''),(534,1,''),(535,1,''),(536,1,''),(537,1,''),(538,1,''),(539,1,''),(540,1,''),(541,1,''),(542,1,''),(543,1,''),(544,1,''),(545,1,''),(546,1,''),(547,1,''),(548,1,''),(549,1,''),(550,1,''),(551,1,''),(552,1,''),(553,1,''),(554,1,''),(555,1,''),(556,1,''),(557,1,''),(558,1,''),(559,1,''),(560,1,''),(561,1,''),(562,1,''),(563,1,''),(564,1,''),(565,1,''),(566,1,''),(567,1,''),(568,1,''),(569,1,''),(570,1,''),(571,1,''),(572,1,''),(573,1,''),(574,1,''),(575,1,''),(576,1,''),(577,1,''),(578,1,''),(579,1,''),(580,1,''),(581,1,''),(582,1,''),(583,1,''),(584,1,''),(585,1,''),(586,1,''),(587,1,''),(588,1,''),(589,1,''),(590,1,''),(591,1,''),(592,1,''),(593,1,''),(594,1,''),(595,1,''),(596,1,''),(597,1,''),(598,1,''),(599,1,''),(600,1,''),(601,1,''),(602,1,''),(603,1,''),(604,1,''),(605,1,''),(606,1,''),(607,1,''),(608,1,''),(609,1,''),(610,1,''),(611,1,''),(612,1,''),(613,1,''),(614,1,''),(615,1,''),(616,1,''),(617,1,''),(618,1,''),(619,1,''),(620,1,''),(621,1,''),(622,1,''),(623,1,''),(624,1,''),(625,1,''),(626,1,''),(627,1,''),(628,1,''),(629,1,''),(630,1,''),(631,1,''),(632,1,''),(633,1,''),(634,1,''),(635,1,''),(636,1,''),(637,1,''),(638,1,''),(639,1,''),(640,1,''),(641,1,''),(642,1,''),(643,1,''),(647,1,''),(648,1,''),(649,1,''),(650,1,''),(651,1,''),(652,1,''),(653,1,''),(654,1,''),(655,1,''),(656,1,''),(657,1,''),(658,1,''),(659,1,''),(660,1,''),(661,1,''),(662,1,''),(663,1,''),(664,1,''),(665,1,''),(666,1,''),(667,1,''),(668,1,''),(669,1,''),(670,1,''),(671,1,''),(672,1,''),(673,1,''),(674,1,''),(675,1,'');
/*!40000 ALTER TABLE `ps_image_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_image_shop`
--

DROP TABLE IF EXISTS `ps_image_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_image_shop` (
  `id_product` int(10) unsigned NOT NULL,
  `id_image` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `cover` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_image`,`id_shop`),
  UNIQUE KEY `id_product` (`id_product`,`id_shop`,`cover`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_image_shop`
--

LOCK TABLES `ps_image_shop` WRITE;
/*!40000 ALTER TABLE `ps_image_shop` DISABLE KEYS */;
INSERT INTO `ps_image_shop` VALUES (1,1,1,1),(2,2,1,1),(3,3,1,1),(5,5,1,1),(6,6,1,1),(7,7,1,1),(8,8,1,1),(9,9,1,1),(10,10,1,1),(11,11,1,1),(12,12,1,1),(13,13,1,1),(14,14,1,1),(15,15,1,1),(16,16,1,1),(17,17,1,1),(18,18,1,1),(19,19,1,1),(20,20,1,1),(21,21,1,1),(22,22,1,1),(23,23,1,1),(24,24,1,1),(25,25,1,1),(26,26,1,1),(27,27,1,1),(28,28,1,1),(29,29,1,1),(30,30,1,1),(31,31,1,1),(32,32,1,1),(33,33,1,1),(34,34,1,1),(35,35,1,1),(36,36,1,1),(37,37,1,1),(38,38,1,1),(39,39,1,1),(40,40,1,1),(41,41,1,1),(42,42,1,1),(43,43,1,1),(44,44,1,1),(45,45,1,1),(46,46,1,1),(47,47,1,1),(48,48,1,1),(49,49,1,1),(50,50,1,1),(51,51,1,1),(52,52,1,1),(53,53,1,1),(54,54,1,1),(55,55,1,1),(56,56,1,1),(57,57,1,1),(58,58,1,1),(59,59,1,1),(60,60,1,1),(61,61,1,1),(62,62,1,1),(63,63,1,1),(64,64,1,1),(65,65,1,1),(66,66,1,1),(67,67,1,1),(68,68,1,1),(69,69,1,1),(70,70,1,1),(71,71,1,1),(72,72,1,1),(73,73,1,1),(74,74,1,1),(75,75,1,1),(76,76,1,1),(77,77,1,1),(78,78,1,1),(79,79,1,1),(80,80,1,1),(81,81,1,1),(82,82,1,1),(83,83,1,1),(85,85,1,1),(86,86,1,1),(87,87,1,1),(88,88,1,1),(89,89,1,1),(90,90,1,1),(91,91,1,1),(92,92,1,1),(93,93,1,1),(94,94,1,1),(95,95,1,1),(96,96,1,1),(97,97,1,1),(98,98,1,1),(99,99,1,1),(100,100,1,1),(101,101,1,1),(102,102,1,1),(103,103,1,1),(104,104,1,1),(105,105,1,1),(106,106,1,1),(107,107,1,1),(108,108,1,1),(109,109,1,1),(110,110,1,1),(111,111,1,1),(112,112,1,1),(113,113,1,1),(114,114,1,1),(115,115,1,1),(116,116,1,1),(117,117,1,1),(118,118,1,1),(119,119,1,1),(120,120,1,1),(121,121,1,1),(122,122,1,1),(123,123,1,1),(124,124,1,1),(125,125,1,1),(126,126,1,1),(127,127,1,1),(128,128,1,1),(129,129,1,1),(130,130,1,1),(131,131,1,1),(132,132,1,1),(133,133,1,1),(134,134,1,1),(135,135,1,1),(136,136,1,1),(137,137,1,1),(139,139,1,1),(140,140,1,1),(141,141,1,1),(143,143,1,1),(144,144,1,1),(145,145,1,1),(146,146,1,1),(147,147,1,1),(148,148,1,1),(149,149,1,1),(150,150,1,1),(151,151,1,1),(152,152,1,1),(153,153,1,1),(154,154,1,1),(155,155,1,1),(156,156,1,1),(157,157,1,1),(158,158,1,1),(159,159,1,1),(160,160,1,1),(161,161,1,1),(162,162,1,1),(163,163,1,1),(164,164,1,1),(165,165,1,1),(166,166,1,1),(167,167,1,1),(168,168,1,1),(169,169,1,1),(170,170,1,1),(488,488,1,1),(489,489,1,1),(490,490,1,1),(491,491,1,1),(492,492,1,1),(493,493,1,1),(494,494,1,1),(495,495,1,1),(496,496,1,1),(497,497,1,1),(498,498,1,1),(499,499,1,1),(500,500,1,1),(501,501,1,1),(502,502,1,1),(503,503,1,1),(504,504,1,1),(505,505,1,1),(506,506,1,1),(507,507,1,1),(508,508,1,1),(509,509,1,1),(510,510,1,1),(511,511,1,1),(512,512,1,1),(513,513,1,1),(514,514,1,1),(515,515,1,1),(516,516,1,1),(517,517,1,1),(518,518,1,1),(519,519,1,1),(520,520,1,1),(521,521,1,1),(522,522,1,1),(523,523,1,1),(524,524,1,1),(525,525,1,1),(526,526,1,1),(527,527,1,1),(528,528,1,1),(529,529,1,1),(530,530,1,1),(531,531,1,1),(532,532,1,1),(533,533,1,1),(534,534,1,1),(535,535,1,1),(536,536,1,1),(537,537,1,1),(538,538,1,1),(539,539,1,1),(540,540,1,1),(541,541,1,1),(542,542,1,1),(543,543,1,1),(544,544,1,1),(545,545,1,1),(546,546,1,1),(547,547,1,1),(548,548,1,1),(549,549,1,1),(550,550,1,1),(551,551,1,1),(552,552,1,1),(553,553,1,1),(554,554,1,1),(555,555,1,1),(556,556,1,1),(557,557,1,1),(558,558,1,1),(559,559,1,1),(560,560,1,1),(561,561,1,1),(562,562,1,1),(563,563,1,1),(564,564,1,1),(565,565,1,1),(566,566,1,1),(567,567,1,1),(568,568,1,1),(569,569,1,1),(570,570,1,1),(571,571,1,1),(572,572,1,1),(573,573,1,1),(574,574,1,1),(575,575,1,1),(576,576,1,1),(577,577,1,1),(578,578,1,1),(579,579,1,1),(580,580,1,1),(581,581,1,1),(582,582,1,1),(583,583,1,1),(584,584,1,1),(585,585,1,1),(586,586,1,1),(587,587,1,1),(588,588,1,1),(589,589,1,1),(590,590,1,1),(591,591,1,1),(592,592,1,1),(593,593,1,1),(594,594,1,1),(595,595,1,1),(596,596,1,1),(597,597,1,1),(598,598,1,1),(599,599,1,1),(600,600,1,1),(601,601,1,1),(602,602,1,1),(603,603,1,1),(604,604,1,1),(605,605,1,1),(606,606,1,1),(607,607,1,1),(608,608,1,1),(609,609,1,1),(610,610,1,1),(611,611,1,1),(612,612,1,1),(613,613,1,1),(614,614,1,1),(615,615,1,1),(616,616,1,1),(617,617,1,1),(618,618,1,1),(619,619,1,1),(620,620,1,1),(621,621,1,1),(622,622,1,1),(623,623,1,1),(624,624,1,1),(625,625,1,1),(626,626,1,1),(627,627,1,1),(628,628,1,1),(629,629,1,1),(630,630,1,1),(631,631,1,1),(632,632,1,1),(633,633,1,1),(634,634,1,1),(635,635,1,1),(636,636,1,1),(637,637,1,1),(638,638,1,1),(639,639,1,1),(640,640,1,1),(641,641,1,1),(642,642,1,1),(643,643,1,1),(647,647,1,1),(648,648,1,1),(649,649,1,1),(650,650,1,1),(651,651,1,1),(652,652,1,1),(653,653,1,1),(654,654,1,1),(655,655,1,1),(656,656,1,1),(657,657,1,1),(658,658,1,1),(659,659,1,1),(660,660,1,1),(661,661,1,1),(662,662,1,1),(663,663,1,1),(664,664,1,1),(665,665,1,1),(666,666,1,1),(667,667,1,1),(668,668,1,1),(669,669,1,1),(670,670,1,1),(671,671,1,1),(672,672,1,1),(673,673,1,1),(674,674,1,1),(675,675,1,1);
/*!40000 ALTER TABLE `ps_image_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_image_type`
--

DROP TABLE IF EXISTS `ps_image_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_image_type` (
  `id_image_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `products` tinyint(1) NOT NULL DEFAULT '1',
  `categories` tinyint(1) NOT NULL DEFAULT '1',
  `manufacturers` tinyint(1) NOT NULL DEFAULT '1',
  `suppliers` tinyint(1) NOT NULL DEFAULT '1',
  `scenes` tinyint(1) NOT NULL DEFAULT '1',
  `stores` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_image_type`),
  KEY `image_type_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_image_type`
--

LOCK TABLES `ps_image_type` WRITE;
/*!40000 ALTER TABLE `ps_image_type` DISABLE KEYS */;
INSERT INTO `ps_image_type` VALUES (1,'cart_default',80,80,1,0,0,0,0,0),(2,'small_default',98,98,1,0,1,1,0,0),(3,'medium_default',125,125,1,1,1,1,0,1),(4,'home_default',250,250,1,0,0,0,0,0),(5,'large_default',458,458,1,0,1,1,0,0),(6,'thickbox_default',800,800,1,0,0,0,0,0),(7,'category_default',870,217,0,1,0,0,0,0),(8,'scene_default',870,270,0,0,0,0,1,0),(9,'m_scene_default',161,58,0,0,0,0,1,0);
/*!40000 ALTER TABLE `ps_image_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_import_match`
--

DROP TABLE IF EXISTS `ps_import_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_import_match` (
  `id_import_match` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `match` text NOT NULL,
  `skip` int(2) NOT NULL,
  PRIMARY KEY (`id_import_match`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_import_match`
--

LOCK TABLES `ps_import_match` WRITE;
/*!40000 ALTER TABLE `ps_import_match` DISABLE KEYS */;
INSERT INTO `ps_import_match` VALUES (3,'default','no|image|no|quantity|active|name|description|category|no|no|no|no|no',1);
/*!40000 ALTER TABLE `ps_import_match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_info`
--

DROP TABLE IF EXISTS `ps_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_info` (
  `id_info` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_info`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_info`
--

LOCK TABLES `ps_info` WRITE;
/*!40000 ALTER TABLE `ps_info` DISABLE KEYS */;
INSERT INTO `ps_info` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `ps_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_info_lang`
--

DROP TABLE IF EXISTS `ps_info_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_info_lang` (
  `id_info` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id_info`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_info_lang`
--

LOCK TABLES `ps_info_lang` WRITE;
/*!40000 ALTER TABLE `ps_info_lang` DISABLE KEYS */;
INSERT INTO `ps_info_lang` VALUES (1,1,'<ul><li><em class=\"icon-truck\" id=\"icon-truck\"></em>\r\n<div class=\"type-text\">\r\n<h3>Estamos para servirte</h3>\r\n<p>Recibirás tu pedido en una semana dependiendo del volumen.</p>\r\n</div>\r\n</li>\r\n<li><em class=\"icon-phone\" id=\"icon-phone\"></em>\r\n<div class=\"type-text\">\r\n<h3>¿Tienes preguntas?</h3>\r\n<p>No dudes en llamarnos si tienes alguna duda en nuestros productos.</p>\r\n</div>\r\n</li>\r\n<li><em class=\"icon-credit-card\" id=\"icon-credit-card\"></em>\r\n<div class=\"type-text\">\r\n<h3>Paga con tarjeta de crédito</h3>\r\n<p>Aceptamos pagos con tarjeta de crédito y también mediante transferencia bancaria.</p>\r\n</div>\r\n</li>\r\n</ul>'),(2,1,'<h3>Custom Block</h3>\n<p><strong class=\"dark\">Lorem ipsum dolor sit amet conse ctetu</strong></p>\n<p>Sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>');
/*!40000 ALTER TABLE `ps_info_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_lang`
--

DROP TABLE IF EXISTS `ps_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_lang` (
  `id_lang` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `iso_code` char(2) NOT NULL,
  `language_code` char(5) NOT NULL,
  `date_format_lite` char(32) NOT NULL DEFAULT 'Y-m-d',
  `date_format_full` char(32) NOT NULL DEFAULT 'Y-m-d H:i:s',
  `is_rtl` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_lang`),
  KEY `lang_iso_code` (`iso_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_lang`
--

LOCK TABLES `ps_lang` WRITE;
/*!40000 ALTER TABLE `ps_lang` DISABLE KEYS */;
INSERT INTO `ps_lang` VALUES (1,'Español (Spanish)',1,'es','es-es','d/m/Y','d/m/Y H:i:s',0);
/*!40000 ALTER TABLE `ps_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_lang_shop`
--

DROP TABLE IF EXISTS `ps_lang_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_lang_shop` (
  `id_lang` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_lang`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_lang_shop`
--

LOCK TABLES `ps_lang_shop` WRITE;
/*!40000 ALTER TABLE `ps_lang_shop` DISABLE KEYS */;
INSERT INTO `ps_lang_shop` VALUES (1,1);
/*!40000 ALTER TABLE `ps_lang_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_category`
--

DROP TABLE IF EXISTS `ps_layered_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_category` (
  `id_layered_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  `id_value` int(10) unsigned DEFAULT '0',
  `type` enum('category','id_feature','id_attribute_group','quantity','condition','manufacturer','weight','price') NOT NULL,
  `position` int(10) unsigned NOT NULL,
  `filter_type` int(10) unsigned NOT NULL DEFAULT '0',
  `filter_show_limit` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_layered_category`),
  KEY `id_category` (`id_category`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_category`
--

LOCK TABLES `ps_layered_category` WRITE;
/*!40000 ALTER TABLE `ps_layered_category` DISABLE KEYS */;
INSERT INTO `ps_layered_category` VALUES (1,1,2,NULL,'category',1,0,0),(2,1,2,1,'id_attribute_group',2,0,0),(3,1,2,3,'id_attribute_group',3,0,0),(4,1,2,6,'id_feature',4,0,0),(5,1,2,7,'id_feature',5,0,0),(6,1,2,5,'id_feature',6,0,0),(7,1,2,NULL,'quantity',7,0,0),(8,1,2,NULL,'manufacturer',8,0,0),(9,1,2,NULL,'condition',9,0,0),(10,1,2,NULL,'weight',10,0,0),(11,1,2,NULL,'price',11,0,0),(12,1,4,NULL,'category',1,0,0),(13,1,4,1,'id_attribute_group',2,0,0),(14,1,4,3,'id_attribute_group',3,0,0),(15,1,4,6,'id_feature',4,0,0),(16,1,4,7,'id_feature',5,0,0),(17,1,4,5,'id_feature',6,0,0),(18,1,4,NULL,'quantity',7,0,0),(19,1,4,NULL,'manufacturer',8,0,0),(20,1,4,NULL,'condition',9,0,0),(21,1,4,NULL,'weight',10,0,0),(22,1,4,NULL,'price',11,0,0),(23,1,5,NULL,'category',1,0,0),(24,1,5,1,'id_attribute_group',2,0,0),(25,1,5,3,'id_attribute_group',3,0,0),(26,1,5,6,'id_feature',4,0,0),(27,1,5,7,'id_feature',5,0,0),(28,1,5,5,'id_feature',6,0,0),(29,1,5,NULL,'quantity',7,0,0),(30,1,5,NULL,'manufacturer',8,0,0),(31,1,5,NULL,'condition',9,0,0),(32,1,5,NULL,'weight',10,0,0),(33,1,5,NULL,'price',11,0,0),(34,1,7,NULL,'category',1,0,0),(35,1,7,1,'id_attribute_group',2,0,0),(36,1,7,3,'id_attribute_group',3,0,0),(37,1,7,6,'id_feature',4,0,0),(38,1,7,7,'id_feature',5,0,0),(39,1,7,5,'id_feature',6,0,0),(40,1,7,NULL,'quantity',7,0,0),(41,1,7,NULL,'manufacturer',8,0,0),(42,1,7,NULL,'condition',9,0,0),(43,1,7,NULL,'weight',10,0,0),(44,1,7,NULL,'price',11,0,0),(45,1,9,NULL,'category',1,0,0),(46,1,9,1,'id_attribute_group',2,0,0),(47,1,9,3,'id_attribute_group',3,0,0),(48,1,9,6,'id_feature',4,0,0),(49,1,9,7,'id_feature',5,0,0),(50,1,9,5,'id_feature',6,0,0),(51,1,9,NULL,'quantity',7,0,0),(52,1,9,NULL,'manufacturer',8,0,0),(53,1,9,NULL,'condition',9,0,0),(54,1,9,NULL,'weight',10,0,0),(55,1,9,NULL,'price',11,0,0),(56,1,8,NULL,'category',1,0,0),(57,1,8,1,'id_attribute_group',2,0,0),(58,1,8,3,'id_attribute_group',3,0,0),(59,1,8,6,'id_feature',4,0,0),(60,1,8,7,'id_feature',5,0,0),(61,1,8,5,'id_feature',6,0,0),(62,1,8,NULL,'quantity',7,0,0),(63,1,8,NULL,'manufacturer',8,0,0),(64,1,8,NULL,'condition',9,0,0),(65,1,8,NULL,'weight',10,0,0),(66,1,8,NULL,'price',11,0,0),(67,1,10,NULL,'category',1,0,0),(68,1,10,1,'id_attribute_group',2,0,0),(69,1,10,3,'id_attribute_group',3,0,0),(70,1,10,6,'id_feature',4,0,0),(71,1,10,7,'id_feature',5,0,0),(72,1,10,5,'id_feature',6,0,0),(73,1,10,NULL,'quantity',7,0,0),(74,1,10,NULL,'manufacturer',8,0,0),(75,1,10,NULL,'condition',9,0,0),(76,1,10,NULL,'weight',10,0,0),(77,1,10,NULL,'price',11,0,0),(78,1,11,NULL,'category',1,0,0),(79,1,11,1,'id_attribute_group',2,0,0),(80,1,11,3,'id_attribute_group',3,0,0),(81,1,11,6,'id_feature',4,0,0),(82,1,11,7,'id_feature',5,0,0),(83,1,11,5,'id_feature',6,0,0),(84,1,11,NULL,'quantity',7,0,0),(85,1,11,NULL,'manufacturer',8,0,0),(86,1,11,NULL,'condition',9,0,0),(87,1,11,NULL,'weight',10,0,0),(88,1,11,NULL,'price',11,0,0);
/*!40000 ALTER TABLE `ps_layered_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_filter`
--

DROP TABLE IF EXISTS `ps_layered_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_filter` (
  `id_layered_filter` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `filters` text,
  `n_categories` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_layered_filter`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_filter`
--

LOCK TABLES `ps_layered_filter` WRITE;
/*!40000 ALTER TABLE `ps_layered_filter` DISABLE KEYS */;
INSERT INTO `ps_layered_filter` VALUES (1,'Mi plantilla 2016-05-31','a:13:{s:10:\"categories\";a:8:{i:0;i:2;i:1;i:4;i:3;i:5;i:4;i:7;i:5;i:9;i:6;i:8;i:7;i:10;i:8;i:11;}s:9:\"shop_list\";a:1:{i:1;i:1;}s:31:\"layered_selection_subcategories\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}s:22:\"layered_selection_ag_1\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}s:22:\"layered_selection_ag_3\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}s:24:\"layered_selection_feat_6\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}s:24:\"layered_selection_feat_7\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}s:24:\"layered_selection_feat_5\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}s:23:\"layered_selection_stock\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}s:30:\"layered_selection_manufacturer\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}s:27:\"layered_selection_condition\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}s:31:\"layered_selection_weight_slider\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}s:30:\"layered_selection_price_slider\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}}',9,'2016-05-31 08:04:27');
/*!40000 ALTER TABLE `ps_layered_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_filter_shop`
--

DROP TABLE IF EXISTS `ps_layered_filter_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_filter_shop` (
  `id_layered_filter` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_layered_filter`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_filter_shop`
--

LOCK TABLES `ps_layered_filter_shop` WRITE;
/*!40000 ALTER TABLE `ps_layered_filter_shop` DISABLE KEYS */;
INSERT INTO `ps_layered_filter_shop` VALUES (1,1);
/*!40000 ALTER TABLE `ps_layered_filter_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_friendly_url`
--

DROP TABLE IF EXISTS `ps_layered_friendly_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_friendly_url` (
  `id_layered_friendly_url` int(11) NOT NULL AUTO_INCREMENT,
  `url_key` varchar(32) NOT NULL,
  `data` varchar(200) NOT NULL,
  `id_lang` int(11) NOT NULL,
  PRIMARY KEY (`id_layered_friendly_url`),
  KEY `id_lang` (`id_lang`),
  KEY `url_key` (`url_key`(5))
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_friendly_url`
--

LOCK TABLES `ps_layered_friendly_url` WRITE;
/*!40000 ALTER TABLE `ps_layered_friendly_url` DISABLE KEYS */;
INSERT INTO `ps_layered_friendly_url` VALUES (1,'39fd71c6c16ef7ed6ed2b8ba93e276e2','a:1:{s:8:\"category\";a:1:{i:1;s:1:\"1\";}}',1),(2,'7b850fefd113e4fc1b050b13b68c38d5','a:1:{s:8:\"category\";a:1:{i:2;s:1:\"2\";}}',1),(3,'8df2d37bcbe9b28ea7596cee5ccd62ab','a:1:{s:8:\"category\";a:1:{i:3;s:1:\"3\";}}',1),(4,'b2068d00a9aaf0da051d00ba0a6cc5a2','a:1:{s:8:\"category\";a:1:{i:4;s:1:\"4\";}}',1),(5,'66e056a1955f601a970f7d9b155e0635','a:1:{s:8:\"category\";a:1:{i:8;s:1:\"8\";}}',1),(6,'d7ca0cab13dc04f35b2c7569f0cc4228','a:1:{s:8:\"category\";a:1:{i:5;s:1:\"5\";}}',1),(7,'4357c275876fdff03d7c4cdf8f882ec5','a:1:{s:8:\"category\";a:1:{i:7;s:1:\"7\";}}',1),(8,'a60cb1416420de423170ef631ba37f05','a:1:{s:8:\"category\";a:1:{i:9;s:1:\"9\";}}',1),(9,'151949f29b2bfc4dededa65b8857b2f2','a:1:{s:8:\"category\";a:1:{i:10;s:2:\"10\";}}',1),(10,'015741d0472809f158ddf2317bf057c4','a:1:{s:8:\"category\";a:1:{i:11;s:2:\"11\";}}',1),(11,'d5cbab54a3ca1d7db386ad196407764f','a:1:{s:10:\"id_feature\";a:1:{i:1;s:3:\"5_1\";}}',1),(12,'d3f53f3235dbe693e3a5ff6ef132f69f','a:1:{s:10:\"id_feature\";a:1:{i:2;s:3:\"5_2\";}}',1),(13,'0932c1e2ccda9974a2aa46ffc62a74aa','a:1:{s:10:\"id_feature\";a:1:{i:3;s:3:\"5_3\";}}',1),(14,'fdd7832769f92635ea6cf622601bf475','a:1:{s:10:\"id_feature\";a:1:{i:4;s:3:\"5_4\";}}',1),(15,'a16cb39c73d3a13133a78276df4255af','a:1:{s:10:\"id_feature\";a:1:{i:5;s:3:\"5_5\";}}',1),(16,'943b5e6999b97c9d265d190242f0a684','a:1:{s:10:\"id_feature\";a:1:{i:6;s:3:\"5_6\";}}',1),(17,'235854e8ef39bb0df5697073d3d90540','a:1:{s:10:\"id_feature\";a:1:{i:7;s:3:\"5_7\";}}',1),(18,'3ae17610775d27b1db8514b2ecd8a69d','a:1:{s:10:\"id_feature\";a:1:{i:8;s:3:\"5_8\";}}',1),(19,'558e9a195562d0555553d846b5654610','a:1:{s:10:\"id_feature\";a:1:{i:9;s:3:\"5_9\";}}',1),(20,'e799f4d0abb0cf8927bcb60375974496','a:1:{s:10:\"id_feature\";a:1:{i:10;s:4:\"6_10\";}}',1),(21,'46b8400d3be5c11515cb97699b8c2b5f','a:1:{s:10:\"id_feature\";a:1:{i:11;s:4:\"6_11\";}}',1),(22,'c41f78f59c8a3d76253f60747dd4e240','a:1:{s:10:\"id_feature\";a:1:{i:12;s:4:\"6_12\";}}',1),(23,'6fee10826bc5822f3ff569ed13523d59','a:1:{s:10:\"id_feature\";a:1:{i:13;s:4:\"6_13\";}}',1),(24,'ee4452d85805c23df068b6c871ae5e81','a:1:{s:10:\"id_feature\";a:1:{i:14;s:4:\"6_14\";}}',1),(25,'d9fecf8bec077f0cf78ab8090cb1384b','a:1:{s:10:\"id_feature\";a:1:{i:15;s:4:\"6_15\";}}',1),(26,'f2299fcc01ad7282b14837db948c29d1','a:1:{s:10:\"id_feature\";a:1:{i:16;s:4:\"6_16\";}}',1),(27,'70f2b919cd07d2eedf4d0fa36ddb2ef9','a:1:{s:10:\"id_feature\";a:1:{i:17;s:4:\"7_17\";}}',1),(28,'f7efe1215721d20b8c7b67357e220a43','a:1:{s:10:\"id_feature\";a:1:{i:18;s:4:\"7_18\";}}',1),(29,'3f78db0184270fdeb169ec979846ca50','a:1:{s:10:\"id_feature\";a:1:{i:19;s:4:\"7_19\";}}',1),(30,'936a5e0d2b18f15a7865846c9ebd2f7a','a:1:{s:10:\"id_feature\";a:1:{i:20;s:4:\"7_20\";}}',1),(31,'bc1a747be70119467250821b48533190','a:1:{s:10:\"id_feature\";a:1:{i:21;s:4:\"7_21\";}}',1),(32,'97d9dd08827238b39342d37e16ee7fc3','a:1:{s:18:\"id_attribute_group\";a:1:{i:1;s:3:\"1_1\";}}',1),(33,'2f3d5048a6335cac20241e0f8cb5294e','a:1:{s:18:\"id_attribute_group\";a:1:{i:2;s:3:\"1_2\";}}',1),(34,'19819345209f29bb2865355fa2cdb800','a:1:{s:18:\"id_attribute_group\";a:1:{i:3;s:3:\"1_3\";}}',1),(35,'f00b851d158ffd7b8f4750d251caf742','a:1:{s:18:\"id_attribute_group\";a:1:{i:4;s:3:\"1_4\";}}',1),(36,'955959be60adbc2672d9f475c80427b5','a:1:{s:18:\"id_attribute_group\";a:1:{i:5;s:3:\"3_5\";}}',1),(37,'302b5943e4f2147546c456adf925016a','a:1:{s:18:\"id_attribute_group\";a:1:{i:6;s:3:\"3_6\";}}',1),(38,'f036e061c6e0e9cd6b3c463f72f524a5','a:1:{s:18:\"id_attribute_group\";a:1:{i:7;s:3:\"3_7\";}}',1),(39,'7da361d2ac219366406c8ba83f839e49','a:1:{s:18:\"id_attribute_group\";a:1:{i:8;s:3:\"3_8\";}}',1),(40,'8a2e3aa84a460e7eedf0a696a557f87d','a:1:{s:18:\"id_attribute_group\";a:1:{i:9;s:3:\"3_9\";}}',1),(41,'10d4b015cd4670238f90af49853a0b09','a:1:{s:18:\"id_attribute_group\";a:1:{i:10;s:4:\"3_10\";}}',1),(42,'3f7f5aaa6d609de3b6a2b3addd27e352','a:1:{s:18:\"id_attribute_group\";a:1:{i:11;s:4:\"3_11\";}}',1),(43,'5f556205d67d7c26c2726dba638c2d95','a:1:{s:18:\"id_attribute_group\";a:1:{i:12;s:4:\"3_12\";}}',1),(44,'e51d8bd9a716af167a1e4e3c3111c597','a:1:{s:18:\"id_attribute_group\";a:1:{i:13;s:4:\"3_13\";}}',1),(45,'95ed6e1c18ff0e1bd610a517f229f652','a:1:{s:18:\"id_attribute_group\";a:1:{i:14;s:4:\"3_14\";}}',1),(46,'6dd5d6e16acddb5ab2d612ad65603344','a:1:{s:18:\"id_attribute_group\";a:1:{i:15;s:4:\"3_15\";}}',1),(47,'c63c700f59e69866b4619eef8bc6e597','a:1:{s:18:\"id_attribute_group\";a:1:{i:16;s:4:\"3_16\";}}',1),(48,'fe4284d073fc299122d1f83ec63488a2','a:1:{s:18:\"id_attribute_group\";a:1:{i:17;s:4:\"3_17\";}}',1),(49,'b7ca381eeae1441140d52502461c6a2c','a:1:{s:18:\"id_attribute_group\";a:1:{i:24;s:4:\"3_24\";}}',1),(50,'44294b0028a0213fc55128fecfbdfbed','a:1:{s:8:\"quantity\";a:1:{i:0;i:0;}}',1),(51,'dd4f6902b4e7b3fb676b9ce2cedfa9b4','a:1:{s:8:\"quantity\";a:1:{i:0;i:1;}}',1),(52,'f84cffad3cf7a6b7856c8a72b8c8df90','a:1:{s:9:\"condition\";a:1:{s:3:\"new\";s:3:\"new\";}}',1),(53,'14c9246c3ce6dd5317ffefc0545bba2e','a:1:{s:9:\"condition\";a:1:{s:4:\"used\";s:4:\"used\";}}',1),(54,'9b16a88b60f3455d51212bf2dc1d3a95','a:1:{s:9:\"condition\";a:1:{s:11:\"refurbished\";s:11:\"refurbished\";}}',1),(55,'e3d5c79878834b2f61e6f37c1425bee9','a:1:{s:12:\"manufacturer\";a:1:{i:1;s:1:\"1\";}}',1);
/*!40000 ALTER TABLE `ps_layered_friendly_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_indexable_attribute_group`
--

DROP TABLE IF EXISTS `ps_layered_indexable_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_indexable_attribute_group` (
  `id_attribute_group` int(11) NOT NULL,
  `indexable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_attribute_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_indexable_attribute_group`
--

LOCK TABLES `ps_layered_indexable_attribute_group` WRITE;
/*!40000 ALTER TABLE `ps_layered_indexable_attribute_group` DISABLE KEYS */;
INSERT INTO `ps_layered_indexable_attribute_group` VALUES (3,1);
/*!40000 ALTER TABLE `ps_layered_indexable_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_indexable_attribute_group_lang_value`
--

DROP TABLE IF EXISTS `ps_layered_indexable_attribute_group_lang_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_indexable_attribute_group_lang_value` (
  `id_attribute_group` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(128) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_attribute_group`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_indexable_attribute_group_lang_value`
--

LOCK TABLES `ps_layered_indexable_attribute_group_lang_value` WRITE;
/*!40000 ALTER TABLE `ps_layered_indexable_attribute_group_lang_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_layered_indexable_attribute_group_lang_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_indexable_attribute_lang_value`
--

DROP TABLE IF EXISTS `ps_layered_indexable_attribute_lang_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_indexable_attribute_lang_value` (
  `id_attribute` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(128) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_attribute`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_indexable_attribute_lang_value`
--

LOCK TABLES `ps_layered_indexable_attribute_lang_value` WRITE;
/*!40000 ALTER TABLE `ps_layered_indexable_attribute_lang_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_layered_indexable_attribute_lang_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_indexable_feature`
--

DROP TABLE IF EXISTS `ps_layered_indexable_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_indexable_feature` (
  `id_feature` int(11) NOT NULL,
  `indexable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_feature`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_indexable_feature`
--

LOCK TABLES `ps_layered_indexable_feature` WRITE;
/*!40000 ALTER TABLE `ps_layered_indexable_feature` DISABLE KEYS */;
INSERT INTO `ps_layered_indexable_feature` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1);
/*!40000 ALTER TABLE `ps_layered_indexable_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_indexable_feature_lang_value`
--

DROP TABLE IF EXISTS `ps_layered_indexable_feature_lang_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_indexable_feature_lang_value` (
  `id_feature` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_feature`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_indexable_feature_lang_value`
--

LOCK TABLES `ps_layered_indexable_feature_lang_value` WRITE;
/*!40000 ALTER TABLE `ps_layered_indexable_feature_lang_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_layered_indexable_feature_lang_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_indexable_feature_value_lang_value`
--

DROP TABLE IF EXISTS `ps_layered_indexable_feature_value_lang_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_indexable_feature_value_lang_value` (
  `id_feature_value` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(128) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_indexable_feature_value_lang_value`
--

LOCK TABLES `ps_layered_indexable_feature_value_lang_value` WRITE;
/*!40000 ALTER TABLE `ps_layered_indexable_feature_value_lang_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_layered_indexable_feature_value_lang_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_price_index`
--

DROP TABLE IF EXISTS `ps_layered_price_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_price_index` (
  `id_product` int(11) NOT NULL,
  `id_currency` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  `price_min` int(11) NOT NULL,
  `price_max` int(11) NOT NULL,
  PRIMARY KEY (`id_product`,`id_currency`,`id_shop`),
  KEY `id_currency` (`id_currency`),
  KEY `price_min` (`price_min`),
  KEY `price_max` (`price_max`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_price_index`
--

LOCK TABLES `ps_layered_price_index` WRITE;
/*!40000 ALTER TABLE `ps_layered_price_index` DISABLE KEYS */;
INSERT INTO `ps_layered_price_index` VALUES (1,1,1,0,0),(2,1,1,0,0),(3,1,1,0,0),(4,1,1,0,0),(5,1,1,0,0),(6,1,1,0,0),(7,1,1,0,0),(8,1,1,0,0),(9,1,1,0,0),(10,1,1,0,0),(11,1,1,0,0),(12,1,1,0,0),(13,1,1,0,0),(14,1,1,0,0),(15,1,1,0,0),(16,1,1,0,0),(17,1,1,0,0),(18,1,1,0,0),(19,1,1,0,0),(20,1,1,0,0),(21,1,1,0,0),(22,1,1,0,0),(23,1,1,0,0),(24,1,1,0,0),(25,1,1,0,0),(26,1,1,0,0),(27,1,1,0,0),(28,1,1,0,0),(29,1,1,0,0),(30,1,1,0,0),(31,1,1,0,0),(32,1,1,0,0),(33,1,1,0,0),(34,1,1,0,0),(35,1,1,0,0),(36,1,1,0,0),(37,1,1,0,0),(38,1,1,0,0),(39,1,1,0,0),(40,1,1,0,0),(41,1,1,0,0),(42,1,1,0,0),(43,1,1,0,0),(44,1,1,0,0),(45,1,1,0,0),(46,1,1,0,0),(47,1,1,0,0),(48,1,1,0,0),(49,1,1,0,0),(50,1,1,0,0),(51,1,1,0,0),(52,1,1,0,0),(53,1,1,0,0),(54,1,1,0,0),(55,1,1,0,0),(56,1,1,0,0),(57,1,1,0,0),(58,1,1,0,0),(59,1,1,0,0),(60,1,1,0,0),(61,1,1,0,0),(62,1,1,0,0),(63,1,1,0,0),(64,1,1,0,0),(65,1,1,0,0),(66,1,1,0,0),(67,1,1,0,0),(68,1,1,0,0),(69,1,1,0,0),(70,1,1,0,0),(71,1,1,0,0),(72,1,1,0,0),(73,1,1,0,0),(74,1,1,0,0),(75,1,1,0,0),(76,1,1,0,0),(77,1,1,0,0),(78,1,1,0,0),(79,1,1,0,0),(80,1,1,0,0),(81,1,1,0,0),(82,1,1,0,0),(83,1,1,0,0),(84,1,1,0,0),(85,1,1,0,0),(86,1,1,0,0),(87,1,1,0,0),(88,1,1,0,0),(89,1,1,0,0),(90,1,1,0,0),(91,1,1,0,0),(92,1,1,0,0),(93,1,1,0,0),(94,1,1,0,0),(95,1,1,0,0),(96,1,1,0,0),(97,1,1,0,0),(98,1,1,0,0),(99,1,1,0,0),(100,1,1,0,0),(101,1,1,0,0),(102,1,1,0,0),(103,1,1,0,0),(104,1,1,0,0),(105,1,1,0,0),(106,1,1,0,0),(107,1,1,0,0),(108,1,1,0,0),(109,1,1,0,0),(110,1,1,0,0),(111,1,1,0,0),(112,1,1,0,0),(113,1,1,0,0),(114,1,1,0,0),(115,1,1,0,0),(116,1,1,0,0),(117,1,1,0,0),(118,1,1,0,0),(119,1,1,0,0),(120,1,1,0,0),(121,1,1,0,0),(122,1,1,0,0),(123,1,1,0,0),(124,1,1,0,0),(125,1,1,0,0),(126,1,1,0,0),(127,1,1,0,0),(128,1,1,0,0),(129,1,1,0,0),(130,1,1,0,0),(131,1,1,0,0),(132,1,1,0,0),(133,1,1,0,0),(134,1,1,0,0),(135,1,1,0,0),(136,1,1,0,0),(137,1,1,0,0),(138,1,1,0,0),(139,1,1,0,0),(140,1,1,0,0),(141,1,1,0,0),(142,1,1,0,0),(143,1,1,0,0),(144,1,1,0,0),(145,1,1,0,0),(146,1,1,0,0),(147,1,1,0,0),(148,1,1,0,0),(149,1,1,0,0),(150,1,1,0,0),(151,1,1,0,0),(152,1,1,0,0),(153,1,1,0,0),(154,1,1,0,0),(155,1,1,0,0),(156,1,1,0,0),(157,1,1,0,0),(158,1,1,0,0),(159,1,1,0,0),(160,1,1,0,0),(161,1,1,0,0),(162,1,1,0,0),(163,1,1,0,0),(164,1,1,0,0),(165,1,1,0,0),(166,1,1,0,0),(167,1,1,0,0),(168,1,1,0,0),(169,1,1,0,0),(170,1,1,0,0),(171,1,1,0,0),(172,1,1,295,342),(173,1,1,297,345),(174,1,1,257,298),(175,1,1,219,254),(176,1,1,172,200),(177,1,1,226,262),(178,1,1,83,96),(179,1,1,196,227),(180,1,1,244,283),(181,1,1,260,302),(182,1,1,239,277),(183,1,1,114,132),(184,1,1,156,181),(185,1,1,199,231),(186,1,1,260,302),(187,1,1,270,313),(188,1,1,193,224),(189,1,1,319,370),(190,1,1,223,259),(191,1,1,201,233),(192,1,1,68,79),(193,1,1,197,229),(194,1,1,184,213),(195,1,1,177,205),(196,1,1,160,186),(197,1,1,204,237),(198,1,1,93,108),(199,1,1,213,247),(200,1,1,260,302),(201,1,1,177,205),(202,1,1,250,290),(203,1,1,112,130),(204,1,1,146,169),(205,1,1,156,181),(206,1,1,109,126),(207,1,1,150,174),(208,1,1,88,102),(209,1,1,207,240),(210,1,1,223,259),(211,1,1,255,296),(212,1,1,198,230),(213,1,1,156,181),(214,1,1,270,313),(215,1,1,317,368),(216,1,1,187,217),(217,1,1,291,338),(218,1,1,57,66),(219,1,1,188,218),(220,1,1,226,262),(221,1,1,260,302),(222,1,1,199,231),(223,1,1,321,372),(224,1,1,261,303),(225,1,1,160,186),(226,1,1,252,292),(227,1,1,297,345),(228,1,1,236,274),(229,1,1,248,288),(230,1,1,125,145),(231,1,1,325,377),(232,1,1,325,377),(233,1,1,205,238),(234,1,1,164,190),(235,1,1,236,274),(236,1,1,187,217),(237,1,1,208,241),(238,1,1,173,201),(239,1,1,291,338),(240,1,1,166,193),(241,1,1,79,92),(242,1,1,102,118),(243,1,1,65,75),(244,1,1,73,85),(245,1,1,100,116),(246,1,1,49,57),(247,1,1,113,131),(248,1,1,76,88),(249,1,1,161,187),(250,1,1,80,93),(251,1,1,59,68),(252,1,1,99,115),(253,1,1,64,74),(254,1,1,63,73),(255,1,1,133,154),(256,1,1,82,95),(257,1,1,75,87),(258,1,1,102,118),(259,1,1,63,73),(260,1,1,97,113),(261,1,1,90,104),(262,1,1,90,104),(263,1,1,81,94),(264,1,1,67,78),(265,1,1,83,96),(266,1,1,69,80),(267,1,1,77,89),(268,1,1,55,64),(269,1,1,117,136),(270,1,1,37,43),(271,1,1,163,189),(272,1,1,177,205),(273,1,1,196,227),(274,1,1,94,109),(275,1,1,79,92),(276,1,1,88,102),(277,1,1,122,142),(278,1,1,120,139),(279,1,1,43,50),(280,1,1,83,96),(281,1,1,63,73),(282,1,1,52,60),(283,1,1,82,95),(284,1,1,127,147),(285,1,1,117,136),(286,1,1,98,114),(287,1,1,135,157),(288,1,1,64,74),(289,1,1,57,66),(290,1,1,57,66),(291,1,1,119,138),(292,1,1,109,126),(293,1,1,57,66),(294,1,1,52,60),(295,1,1,57,66),(296,1,1,119,138),(297,1,1,99,115),(298,1,1,88,102),(299,1,1,70,81),(300,1,1,84,97),(301,1,1,84,97),(302,1,1,97,113),(303,1,1,110,128),(304,1,1,135,157),(305,1,1,101,117),(306,1,1,108,125),(307,1,1,109,126),(308,1,1,88,102),(309,1,1,68,79),(310,1,1,94,109),(311,1,1,88,102),(312,1,1,139,161),(313,1,1,64,74),(314,1,1,260,302),(315,1,1,143,166),(316,1,1,291,338),(317,1,1,483,560),(318,1,1,192,223),(319,1,1,141,164),(320,1,1,311,361),(321,1,1,141,164),(322,1,1,241,280),(323,1,1,162,188),(324,1,1,177,205),(325,1,1,181,210),(326,1,1,316,367),(327,1,1,252,292),(328,1,1,208,241),(329,1,1,0,0),(330,1,1,295,342),(331,1,1,297,345),(332,1,1,257,298),(333,1,1,219,254),(334,1,1,172,200),(335,1,1,226,262),(336,1,1,83,96),(337,1,1,196,227),(338,1,1,244,283),(339,1,1,260,302),(340,1,1,239,277),(341,1,1,114,132),(342,1,1,156,181),(343,1,1,199,231),(344,1,1,260,302),(345,1,1,270,313),(346,1,1,193,224),(347,1,1,319,370),(348,1,1,223,259),(349,1,1,201,233),(350,1,1,68,79),(351,1,1,197,229),(352,1,1,184,213),(353,1,1,177,205),(354,1,1,160,186),(355,1,1,204,237),(356,1,1,93,108),(357,1,1,213,247),(358,1,1,260,302),(359,1,1,177,205),(360,1,1,250,290),(361,1,1,112,130),(362,1,1,146,169),(363,1,1,156,181),(364,1,1,109,126),(365,1,1,150,174),(366,1,1,88,102),(367,1,1,207,240),(368,1,1,223,259),(369,1,1,255,296),(370,1,1,198,230),(371,1,1,156,181),(372,1,1,270,313),(373,1,1,317,368),(374,1,1,187,217),(375,1,1,291,338),(376,1,1,57,66),(377,1,1,188,218),(378,1,1,226,262),(379,1,1,260,302),(380,1,1,199,231),(381,1,1,321,372),(382,1,1,261,303),(383,1,1,160,186),(384,1,1,252,292),(385,1,1,297,345),(386,1,1,236,274),(387,1,1,248,288),(388,1,1,125,145),(389,1,1,325,377),(390,1,1,325,377),(391,1,1,205,238),(392,1,1,164,190),(393,1,1,236,274),(394,1,1,187,217),(395,1,1,208,241),(396,1,1,173,201),(397,1,1,291,338),(398,1,1,166,193),(399,1,1,79,92),(400,1,1,102,118),(401,1,1,65,75),(402,1,1,73,85),(403,1,1,100,116),(404,1,1,49,57),(405,1,1,113,131),(406,1,1,76,88),(407,1,1,161,187),(408,1,1,80,93),(409,1,1,59,68),(410,1,1,99,115),(411,1,1,64,74),(412,1,1,63,73),(413,1,1,133,154),(414,1,1,82,95),(415,1,1,75,87),(416,1,1,102,118),(417,1,1,63,73),(418,1,1,97,113),(419,1,1,90,104),(420,1,1,90,104),(421,1,1,81,94),(422,1,1,67,78),(423,1,1,83,96),(424,1,1,69,80),(425,1,1,77,89),(426,1,1,55,64),(427,1,1,117,136),(428,1,1,37,43),(429,1,1,163,189),(430,1,1,177,205),(431,1,1,196,227),(432,1,1,94,109),(433,1,1,79,92),(434,1,1,88,102),(435,1,1,122,142),(436,1,1,120,139),(437,1,1,43,50),(438,1,1,83,96),(439,1,1,63,73),(440,1,1,52,60),(441,1,1,82,95),(442,1,1,127,147),(443,1,1,117,136),(444,1,1,98,114),(445,1,1,135,157),(446,1,1,64,74),(447,1,1,57,66),(448,1,1,57,66),(449,1,1,119,138),(450,1,1,109,126),(451,1,1,57,66),(452,1,1,52,60),(453,1,1,57,66),(454,1,1,119,138),(455,1,1,99,115),(456,1,1,88,102),(457,1,1,70,81),(458,1,1,84,97),(459,1,1,84,97),(460,1,1,97,113),(461,1,1,110,128),(462,1,1,135,157),(463,1,1,101,117),(464,1,1,108,125),(465,1,1,109,126),(466,1,1,88,102),(467,1,1,68,79),(468,1,1,94,109),(469,1,1,88,102),(470,1,1,139,161),(471,1,1,64,74),(472,1,1,260,302),(473,1,1,143,166),(474,1,1,291,338),(475,1,1,483,560),(476,1,1,192,223),(477,1,1,141,164),(478,1,1,311,361),(479,1,1,141,164),(480,1,1,241,280),(481,1,1,162,188),(482,1,1,177,205),(483,1,1,181,210),(484,1,1,316,367),(485,1,1,252,292),(486,1,1,208,241),(487,1,1,0,0),(488,1,1,295,342),(489,1,1,297,345),(490,1,1,257,298),(491,1,1,219,254),(492,1,1,172,200),(493,1,1,226,262),(494,1,1,83,96),(495,1,1,196,227),(496,1,1,244,283),(497,1,1,260,302),(498,1,1,239,277),(499,1,1,114,132),(500,1,1,156,181),(501,1,1,199,231),(502,1,1,260,302),(503,1,1,270,313),(504,1,1,193,224),(505,1,1,319,370),(506,1,1,223,259),(507,1,1,201,233),(508,1,1,68,79),(509,1,1,197,229),(510,1,1,184,213),(511,1,1,177,205),(512,1,1,160,186),(513,1,1,204,237),(514,1,1,93,108),(515,1,1,213,247),(516,1,1,260,302),(517,1,1,177,205),(518,1,1,250,290),(519,1,1,112,130),(520,1,1,146,169),(521,1,1,156,181),(522,1,1,109,126),(523,1,1,150,174),(524,1,1,88,102),(525,1,1,207,240),(526,1,1,223,259),(527,1,1,255,296),(528,1,1,198,230),(529,1,1,156,181),(530,1,1,270,313),(531,1,1,317,368),(532,1,1,187,217),(533,1,1,291,338),(534,1,1,57,66),(535,1,1,188,218),(536,1,1,226,262),(537,1,1,260,302),(538,1,1,199,231),(539,1,1,321,372),(540,1,1,261,303),(541,1,1,160,186),(542,1,1,252,292),(543,1,1,297,345),(544,1,1,236,274),(545,1,1,248,288),(546,1,1,125,145),(547,1,1,325,377),(548,1,1,325,377),(549,1,1,205,238),(550,1,1,164,190),(551,1,1,236,274),(552,1,1,187,217),(553,1,1,208,241),(554,1,1,173,201),(555,1,1,291,338),(556,1,1,166,193),(557,1,1,79,92),(558,1,1,102,118),(559,1,1,65,75),(560,1,1,73,85),(561,1,1,100,116),(562,1,1,49,57),(563,1,1,113,131),(564,1,1,76,88),(565,1,1,161,187),(566,1,1,80,93),(567,1,1,59,68),(568,1,1,99,115),(569,1,1,64,74),(570,1,1,63,73),(571,1,1,133,154),(572,1,1,82,95),(573,1,1,75,87),(574,1,1,102,118),(575,1,1,63,73),(576,1,1,97,113),(577,1,1,90,104),(578,1,1,90,104),(579,1,1,81,94),(580,1,1,67,78),(581,1,1,83,96),(582,1,1,69,80),(583,1,1,77,89),(584,1,1,55,64),(585,1,1,117,136),(586,1,1,37,43),(587,1,1,163,189),(588,1,1,177,205),(589,1,1,196,227),(590,1,1,94,109),(591,1,1,79,92),(592,1,1,88,102),(593,1,1,122,142),(594,1,1,120,139),(595,1,1,43,50),(596,1,1,83,96),(597,1,1,63,73),(598,1,1,52,60),(599,1,1,82,95),(600,1,1,127,147),(601,1,1,117,136),(602,1,1,98,114),(603,1,1,135,157),(604,1,1,64,74),(605,1,1,57,66),(606,1,1,57,66),(607,1,1,119,138),(608,1,1,109,126),(609,1,1,57,66),(610,1,1,52,60),(611,1,1,57,66),(612,1,1,119,138),(613,1,1,99,115),(614,1,1,88,102),(615,1,1,70,81),(616,1,1,84,97),(617,1,1,84,97),(618,1,1,97,113),(619,1,1,110,128),(620,1,1,135,157),(621,1,1,101,117),(622,1,1,108,125),(623,1,1,109,126),(624,1,1,88,102),(625,1,1,68,79),(626,1,1,94,109),(627,1,1,88,102),(628,1,1,139,161),(629,1,1,64,74),(630,1,1,260,302),(631,1,1,143,166),(632,1,1,291,338),(633,1,1,483,560),(634,1,1,192,223),(635,1,1,141,164),(636,1,1,311,361),(637,1,1,141,164),(638,1,1,241,280),(639,1,1,162,188),(640,1,1,177,205),(641,1,1,181,210),(642,1,1,316,367),(643,1,1,252,292),(644,1,1,208,241),(645,1,1,208,241),(646,1,1,208,241),(647,1,1,208,241),(648,1,1,198,230),(649,1,1,205,238),(650,1,1,249,289),(651,1,1,223,259),(652,1,1,151,175),(653,1,1,211,245),(654,1,1,262,304),(655,1,1,370,429),(656,1,1,235,273),(657,1,1,283,328),(658,1,1,146,169),(659,1,1,201,233),(660,1,1,272,316),(661,1,1,177,205),(662,1,1,198,230),(663,1,1,619,718),(664,1,1,335,389),(665,1,1,80,93),(666,1,1,147,171),(667,1,1,178,206),(668,1,1,187,217),(669,1,1,244,283),(670,1,1,114,132),(671,1,1,276,320),(672,1,1,208,241),(673,1,1,208,241),(674,1,1,263,305),(675,1,1,187,217);
/*!40000 ALTER TABLE `ps_layered_price_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_product_attribute`
--

DROP TABLE IF EXISTS `ps_layered_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_product_attribute` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_attribute_group` int(10) unsigned NOT NULL DEFAULT '0',
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_attribute`,`id_product`,`id_shop`),
  UNIQUE KEY `id_attribute_group` (`id_attribute_group`,`id_attribute`,`id_product`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_product_attribute`
--

LOCK TABLES `ps_layered_product_attribute` WRITE;
/*!40000 ALTER TABLE `ps_layered_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_layered_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_linksmenutop`
--

DROP TABLE IF EXISTS `ps_linksmenutop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_linksmenutop` (
  `id_linksmenutop` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL,
  `new_window` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_linksmenutop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_linksmenutop`
--

LOCK TABLES `ps_linksmenutop` WRITE;
/*!40000 ALTER TABLE `ps_linksmenutop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_linksmenutop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_linksmenutop_lang`
--

DROP TABLE IF EXISTS `ps_linksmenutop_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_linksmenutop_lang` (
  `id_linksmenutop` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `label` varchar(128) NOT NULL,
  `link` varchar(128) NOT NULL,
  KEY `id_linksmenutop` (`id_linksmenutop`,`id_lang`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_linksmenutop_lang`
--

LOCK TABLES `ps_linksmenutop_lang` WRITE;
/*!40000 ALTER TABLE `ps_linksmenutop_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_linksmenutop_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_log`
--

DROP TABLE IF EXISTS `ps_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_log` (
  `id_log` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `severity` tinyint(1) NOT NULL,
  `error_code` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `object_type` varchar(32) DEFAULT NULL,
  `object_id` int(10) unsigned DEFAULT NULL,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_log`
--

LOCK TABLES `ps_log` WRITE;
/*!40000 ALTER TABLE `ps_log` DISABLE KEYS */;
INSERT INTO `ps_log` VALUES (1,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-05-31 08:12:47','2016-05-31 08:12:47'),(2,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-05-31 09:07:18','2016-05-31 09:07:18'),(3,1,0,'Store borrado','Store',1,1,'2016-06-01 12:00:44','2016-06-01 12:00:44'),(4,1,0,'Store borrado','Store',2,1,'2016-06-01 12:00:44','2016-06-01 12:00:44'),(5,1,0,'Store borrado','Store',3,1,'2016-06-01 12:00:44','2016-06-01 12:00:44'),(6,1,0,'Store borrado','Store',4,1,'2016-06-01 12:00:44','2016-06-01 12:00:44'),(7,1,0,'Store borrado','Store',5,1,'2016-06-01 12:00:44','2016-06-01 12:00:44'),(8,1,0,'Store añadido','Store',6,1,'2016-06-01 12:02:02','2016-06-01 12:02:02'),(9,1,0,'Frontcontroller::init - Cart cannot be loaded or an order has already been placed using this cart','Cart',6,0,'2016-06-01 14:53:08','2016-06-01 14:53:08'),(10,1,0,'Category modificación','Category',3,1,'2016-06-01 16:25:01','2016-06-01 16:25:01'),(11,1,0,'Group añadido','Group',4,1,'2016-06-01 16:25:53','2016-06-01 16:25:53'),(12,1,0,'Customer modificación','Customer',2,1,'2016-06-01 16:26:46','2016-06-01 16:26:46'),(13,1,0,'Currency modificación','Currency',1,1,'2016-06-03 10:27:07','2016-06-03 10:27:07'),(14,1,0,'Category añadido','Category',12,1,'2016-06-03 12:11:08','2016-06-03 12:11:08'),(15,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-06-03 16:21:11','2016-06-03 16:21:11'),(16,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-06-03 16:45:26','2016-06-03 16:45:26'),(17,1,0,'Carrier borrado','Carrier',1,1,'2016-06-03 17:03:07','2016-06-03 17:03:07'),(18,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-06-04 00:32:19','2016-06-04 00:32:19'),(19,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-06-04 10:36:47','2016-06-04 10:36:47'),(20,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-06-04 11:17:16','2016-06-04 11:17:16'),(21,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-06-04 15:31:59','2016-06-04 15:31:59'),(22,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-06-04 16:20:19','2016-06-04 16:20:19'),(23,1,0,'Category añadido','Category',13,1,'2016-06-04 16:36:02','2016-06-04 16:36:02'),(24,1,0,'Category modificación','Category',13,1,'2016-06-04 16:36:47','2016-06-04 16:36:47'),(25,1,0,'Product modificación','Product',7,1,'2016-06-04 16:44:25','2016-06-04 16:44:25'),(26,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-06-04 18:45:21','2016-06-04 18:45:21'),(27,1,0,'Product modificación','Product',6,1,'2016-06-04 18:46:34','2016-06-04 18:46:34'),(28,1,0,'AttributeGroup borrado','AttributeGroup',1,1,'2016-06-04 19:07:06','2016-06-04 19:07:06'),(29,1,0,'AttributeGroup borrado','AttributeGroup',2,1,'2016-06-04 19:07:20','2016-06-04 19:07:20'),(30,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-06-04 20:58:28','2016-06-04 20:58:28'),(31,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-06-04 21:17:41','2016-06-04 21:17:41'),(32,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-06-05 11:33:16','2016-06-05 11:33:16'),(33,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-06-05 18:18:03','2016-06-05 18:18:03'),(34,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-06-16 10:48:15','2016-06-16 10:48:15'),(35,1,0,'Category borrado','Category',3,1,'2016-06-16 10:49:34','2016-06-16 10:49:34'),(36,1,0,'Category borrado','Category',12,1,'2016-06-16 10:49:53','2016-06-16 10:49:53'),(37,1,0,'Categorías importar','',0,1,'2016-06-16 11:01:18','2016-06-16 11:01:18'),(38,1,0,'Categorías importar','',0,1,'2016-06-16 11:01:41','2016-06-16 11:01:41'),(39,1,0,'Categorías importar con truncamiento','',0,1,'2016-06-16 11:02:27','2016-06-16 11:02:27'),(40,1,0,'Categorías importar con truncamiento','',0,1,'2016-06-16 11:03:22','2016-06-16 11:03:22'),(41,1,0,'Productos importar con truncamiento','',0,1,'2016-06-16 11:20:47','2016-06-16 11:20:47'),(42,1,0,'Productos importar con truncamiento','',0,1,'2016-06-16 11:21:21','2016-06-16 11:21:21'),(43,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-06-16 11:44:36','2016-06-16 11:44:36'),(44,1,0,'Productos importar con truncamiento','',0,1,'2016-06-16 11:51:47','2016-06-16 11:51:47'),(45,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-06-16 12:07:23','2016-06-16 12:07:23'),(46,1,0,'Productos importar con truncamiento','',0,1,'2016-06-16 12:13:56','2016-06-16 12:13:56'),(47,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-06-16 13:02:45','2016-06-16 13:02:45'),(48,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-06-16 13:06:40','2016-06-16 13:06:40'),(49,1,0,'Productos importar con truncamiento','',0,1,'2016-06-16 13:14:04','2016-06-16 13:14:04'),(50,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-07-25 12:23:20','2016-07-25 12:23:20'),(51,1,0,'Category añadido','Category',9,1,'2016-07-25 12:36:01','2016-07-25 12:36:01'),(52,1,0,'Category añadido','Category',10,1,'2016-07-25 12:51:14','2016-07-25 12:51:14'),(53,1,0,'Category añadido','Category',11,1,'2016-07-25 13:01:46','2016-07-25 13:01:46'),(54,1,0,'Category modificación','Category',9,1,'2016-07-25 13:02:02','2016-07-25 13:02:02'),(55,1,0,'Productos importar','',0,1,'2016-07-25 13:16:11','2016-07-25 13:16:11'),(56,1,0,'Productos importar','',0,1,'2016-07-25 13:16:11','2016-07-25 13:16:11'),(57,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-07-25 14:46:09','2016-07-25 14:46:09'),(58,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-07-25 15:07:59','2016-07-25 15:07:59'),(59,1,0,'Productos importar','',0,1,'2016-07-25 15:17:03','2016-07-25 15:17:03'),(60,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-08-09 11:19:53','2016-08-09 11:19:53'),(61,1,0,'Product borrado','Product',316,1,'2016-08-09 11:38:44','2016-08-09 11:38:44'),(62,1,0,'Product borrado','Product',474,1,'2016-08-09 11:39:06','2016-08-09 11:39:06'),(63,1,0,'Product borrado','Product',176,1,'2016-08-09 11:40:49','2016-08-09 11:40:49'),(64,1,0,'Product borrado','Product',334,1,'2016-08-09 11:43:36','2016-08-09 11:43:36'),(65,1,0,'Product borrado','Product',252,1,'2016-08-09 11:47:17','2016-08-09 11:47:17'),(66,1,0,'Product borrado','Product',258,1,'2016-08-09 11:47:20','2016-08-09 11:47:20'),(67,1,0,'Product borrado','Product',279,1,'2016-08-09 11:47:23','2016-08-09 11:47:23'),(68,1,0,'Product borrado','Product',295,1,'2016-08-09 11:47:26','2016-08-09 11:47:26'),(69,1,0,'Product borrado','Product',277,1,'2016-08-09 11:51:46','2016-08-09 11:51:46'),(70,1,0,'Product borrado','Product',278,1,'2016-08-09 11:51:49','2016-08-09 11:51:49'),(71,1,0,'Product borrado','Product',287,1,'2016-08-09 11:51:52','2016-08-09 11:51:52'),(72,1,0,'Product borrado','Product',288,1,'2016-08-09 11:51:55','2016-08-09 11:51:55'),(73,1,0,'Product borrado','Product',138,1,'2016-08-09 11:54:34','2016-08-09 11:54:34'),(74,1,0,'Product borrado','Product',142,1,'2016-08-09 11:54:34','2016-08-09 11:54:34'),(75,1,0,'Product borrado','Product',171,1,'2016-08-09 11:57:51','2016-08-09 11:57:51'),(76,1,0,'Product borrado','Product',172,1,'2016-08-09 11:57:58','2016-08-09 11:57:58'),(77,1,0,'Product borrado','Product',173,1,'2016-08-09 11:58:04','2016-08-09 11:58:04'),(78,1,0,'Product borrado','Product',174,1,'2016-08-09 11:58:10','2016-08-09 11:58:10'),(79,1,0,'Product borrado','Product',175,1,'2016-08-09 11:58:16','2016-08-09 11:58:16'),(80,1,0,'Product borrado','Product',177,1,'2016-08-09 11:58:23','2016-08-09 11:58:23'),(81,1,0,'Product borrado','Product',178,1,'2016-08-09 11:58:30','2016-08-09 11:58:30'),(82,1,0,'Product borrado','Product',180,1,'2016-08-09 12:02:24','2016-08-09 12:02:24'),(83,1,0,'Product borrado','Product',181,1,'2016-08-09 12:02:30','2016-08-09 12:02:30'),(84,1,0,'Product borrado','Product',182,1,'2016-08-09 12:02:35','2016-08-09 12:02:35'),(85,1,0,'Product borrado','Product',183,1,'2016-08-09 12:02:40','2016-08-09 12:02:40'),(86,1,0,'Product borrado','Product',184,1,'2016-08-09 12:02:46','2016-08-09 12:02:46'),(87,1,0,'Product borrado','Product',185,1,'2016-08-09 12:02:51','2016-08-09 12:02:51'),(88,1,0,'Product borrado','Product',186,1,'2016-08-09 12:02:57','2016-08-09 12:02:57'),(89,1,0,'Product borrado','Product',187,1,'2016-08-09 12:03:02','2016-08-09 12:03:02'),(90,1,0,'Product borrado','Product',189,1,'2016-08-09 12:05:00','2016-08-09 12:05:00'),(91,1,0,'Product borrado','Product',190,1,'2016-08-09 12:05:10','2016-08-09 12:05:10'),(92,1,0,'Product borrado','Product',193,1,'2016-08-09 12:08:23','2016-08-09 12:08:23'),(93,1,0,'Product borrado','Product',194,1,'2016-08-09 12:08:39','2016-08-09 12:08:39'),(94,1,0,'Product borrado','Product',196,1,'2016-08-09 12:13:02','2016-08-09 12:13:02'),(95,1,0,'Product borrado','Product',197,1,'2016-08-09 12:13:08','2016-08-09 12:13:08'),(96,1,0,'Product borrado','Product',198,1,'2016-08-09 12:13:13','2016-08-09 12:13:13'),(97,1,0,'Product borrado','Product',199,1,'2016-08-09 12:13:20','2016-08-09 12:13:20'),(98,1,0,'Product borrado','Product',201,1,'2016-08-09 12:15:40','2016-08-09 12:15:40'),(99,1,0,'Product borrado','Product',202,1,'2016-08-09 12:15:53','2016-08-09 12:15:53'),(100,1,0,'Product borrado','Product',203,1,'2016-08-09 12:16:51','2016-08-09 12:16:51'),(101,1,0,'Product borrado','Product',204,1,'2016-08-09 12:17:58','2016-08-09 12:17:58'),(102,1,0,'Product borrado','Product',205,1,'2016-08-09 12:19:01','2016-08-09 12:19:01'),(103,1,0,'Product borrado','Product',206,1,'2016-08-09 12:20:05','2016-08-09 12:20:05'),(104,1,0,'Product borrado','Product',208,1,'2016-08-09 12:21:59','2016-08-09 12:21:59'),(105,1,0,'Product borrado','Product',209,1,'2016-08-09 12:23:04','2016-08-09 12:23:04'),(106,1,0,'Product borrado','Product',210,1,'2016-08-09 12:24:08','2016-08-09 12:24:08'),(107,1,0,'Product borrado','Product',211,1,'2016-08-09 12:24:49','2016-08-09 12:24:49'),(108,1,0,'Product borrado','Product',212,1,'2016-08-09 12:25:09','2016-08-09 12:25:09'),(109,1,0,'Product borrado','Product',213,1,'2016-08-09 12:25:30','2016-08-09 12:25:30'),(110,1,0,'Product borrado','Product',214,1,'2016-08-09 12:25:57','2016-08-09 12:25:57'),(111,1,0,'Product borrado','Product',216,1,'2016-08-09 12:27:26','2016-08-09 12:27:26'),(112,1,0,'Product borrado','Product',217,1,'2016-08-09 12:27:39','2016-08-09 12:27:39'),(113,1,0,'Product borrado','Product',218,1,'2016-08-09 12:28:16','2016-08-09 12:28:16'),(114,1,0,'Product borrado','Product',219,1,'2016-08-09 12:28:48','2016-08-09 12:28:48'),(115,1,0,'Product borrado','Product',220,1,'2016-08-09 12:29:03','2016-08-09 12:29:03'),(116,1,0,'Product borrado','Product',221,1,'2016-08-09 12:29:22','2016-08-09 12:29:22'),(117,1,0,'Product borrado','Product',222,1,'2016-08-09 12:29:39','2016-08-09 12:29:39'),(118,1,0,'Product borrado','Product',223,1,'2016-08-09 12:30:08','2016-08-09 12:30:08'),(119,1,0,'Product borrado','Product',224,1,'2016-08-09 12:30:23','2016-08-09 12:30:23'),(120,1,0,'Product borrado','Product',225,1,'2016-08-09 12:30:43','2016-08-09 12:30:43'),(121,1,0,'Product borrado','Product',226,1,'2016-08-09 12:31:42','2016-08-09 12:31:42'),(122,1,0,'Product borrado','Product',228,1,'2016-08-09 12:38:16','2016-08-09 12:38:16'),(123,1,0,'Product borrado','Product',229,1,'2016-08-09 12:38:21','2016-08-09 12:38:21'),(124,1,0,'Product borrado','Product',230,1,'2016-08-09 12:38:26','2016-08-09 12:38:26'),(125,1,0,'Product borrado','Product',231,1,'2016-08-09 12:38:31','2016-08-09 12:38:31'),(126,1,0,'Product borrado','Product',232,1,'2016-08-09 12:38:36','2016-08-09 12:38:36'),(127,1,0,'Product borrado','Product',233,1,'2016-08-09 12:38:40','2016-08-09 12:38:40'),(128,1,0,'Product borrado','Product',234,1,'2016-08-09 12:38:45','2016-08-09 12:38:45'),(129,1,0,'Product borrado','Product',235,1,'2016-08-09 12:38:50','2016-08-09 12:38:50'),(130,1,0,'Product borrado','Product',236,1,'2016-08-09 12:39:27','2016-08-09 12:39:27'),(131,1,0,'Product borrado','Product',237,1,'2016-08-09 12:40:24','2016-08-09 12:40:24'),(132,1,0,'Product borrado','Product',238,1,'2016-08-09 12:41:26','2016-08-09 12:41:26'),(133,1,0,'Product borrado','Product',239,1,'2016-08-09 12:42:30','2016-08-09 12:42:30'),(134,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-08-09 12:57:47','2016-08-09 12:57:47'),(135,1,0,'Product borrado','Product',241,1,'2016-08-09 12:58:12','2016-08-09 12:58:12'),(136,1,0,'Product borrado','Product',242,1,'2016-08-09 12:58:16','2016-08-09 12:58:16'),(137,1,0,'Product borrado','Product',243,1,'2016-08-09 12:58:21','2016-08-09 12:58:21'),(138,1,0,'Product borrado','Product',244,1,'2016-08-09 12:58:26','2016-08-09 12:58:26'),(139,1,0,'Product borrado','Product',245,1,'2016-08-09 12:58:31','2016-08-09 12:58:31'),(140,1,0,'Product borrado','Product',246,1,'2016-08-09 12:58:36','2016-08-09 12:58:36'),(141,1,0,'Product borrado','Product',247,1,'2016-08-09 12:58:41','2016-08-09 12:58:41'),(142,1,0,'Product borrado','Product',248,1,'2016-08-09 12:58:46','2016-08-09 12:58:46'),(143,1,0,'Product borrado','Product',249,1,'2016-08-09 12:58:50','2016-08-09 12:58:50'),(144,1,0,'Product borrado','Product',250,1,'2016-08-09 12:59:04','2016-08-09 12:59:04'),(145,1,0,'Product borrado','Product',251,1,'2016-08-09 12:59:11','2016-08-09 12:59:11'),(146,1,0,'Product borrado','Product',253,1,'2016-08-09 12:59:23','2016-08-09 12:59:23'),(147,1,0,'Product borrado','Product',254,1,'2016-08-09 12:59:36','2016-08-09 12:59:36'),(148,1,0,'Product borrado','Product',255,1,'2016-08-09 12:59:44','2016-08-09 12:59:44'),(149,1,0,'Product borrado','Product',256,1,'2016-08-09 13:00:27','2016-08-09 13:00:27'),(150,1,0,'Product borrado','Product',257,1,'2016-08-09 13:01:28','2016-08-09 13:01:28'),(151,1,0,'Product borrado','Product',259,1,'2016-08-09 13:02:34','2016-08-09 13:02:34'),(152,1,0,'Product borrado','Product',261,1,'2016-08-09 13:10:52','2016-08-09 13:10:52'),(153,1,0,'Product borrado','Product',262,1,'2016-08-09 13:10:57','2016-08-09 13:10:57'),(154,1,0,'Product borrado','Product',263,1,'2016-08-09 13:11:01','2016-08-09 13:11:01'),(155,1,0,'Product borrado','Product',264,1,'2016-08-09 13:11:05','2016-08-09 13:11:05'),(156,1,0,'Product borrado','Product',265,1,'2016-08-09 13:11:10','2016-08-09 13:11:10'),(157,1,0,'Product borrado','Product',266,1,'2016-08-09 13:11:14','2016-08-09 13:11:14'),(158,1,0,'Product borrado','Product',267,1,'2016-08-09 13:11:18','2016-08-09 13:11:18'),(159,1,0,'Product borrado','Product',268,1,'2016-08-09 13:11:23','2016-08-09 13:11:23'),(160,1,0,'Product borrado','Product',269,1,'2016-08-09 13:11:54','2016-08-09 13:11:54'),(161,1,0,'Product borrado','Product',270,1,'2016-08-09 13:12:50','2016-08-09 13:12:50'),(162,1,0,'Product borrado','Product',271,1,'2016-08-09 13:13:55','2016-08-09 13:13:55'),(163,1,0,'Product borrado','Product',272,1,'2016-08-09 13:14:45','2016-08-09 13:14:45'),(164,1,0,'Product borrado','Product',273,1,'2016-08-09 13:15:34','2016-08-09 13:15:34'),(165,1,0,'Product borrado','Product',274,1,'2016-08-09 13:15:58','2016-08-09 13:15:58'),(166,1,0,'Product borrado','Product',275,1,'2016-08-09 13:16:20','2016-08-09 13:16:20'),(167,1,0,'Product borrado','Product',276,1,'2016-08-09 13:16:28','2016-08-09 13:16:28'),(168,1,0,'Product borrado','Product',280,1,'2016-08-09 13:16:32','2016-08-09 13:16:32'),(169,1,0,'Product borrado','Product',281,1,'2016-08-09 13:16:37','2016-08-09 13:16:37'),(170,1,0,'Product borrado','Product',282,1,'2016-08-09 13:16:44','2016-08-09 13:16:44'),(171,1,0,'Product borrado','Product',283,1,'2016-08-09 13:16:50','2016-08-09 13:16:50'),(172,1,0,'Product borrado','Product',284,1,'2016-08-09 13:17:09','2016-08-09 13:17:09'),(173,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-08-09 14:31:33','2016-08-09 14:31:33'),(174,1,0,'Product borrado','Product',286,1,'2016-08-09 14:33:05','2016-08-09 14:33:05'),(175,1,0,'Product borrado','Product',289,1,'2016-08-09 14:33:09','2016-08-09 14:33:09'),(176,1,0,'Product borrado','Product',290,1,'2016-08-09 14:33:14','2016-08-09 14:33:14'),(177,1,0,'Product borrado','Product',291,1,'2016-08-09 14:33:19','2016-08-09 14:33:19'),(178,1,0,'Product borrado','Product',292,1,'2016-08-09 14:33:23','2016-08-09 14:33:23'),(179,1,0,'Product borrado','Product',293,1,'2016-08-09 14:33:28','2016-08-09 14:33:28'),(180,1,0,'Product borrado','Product',294,1,'2016-08-09 14:33:32','2016-08-09 14:33:32'),(181,1,0,'Product borrado','Product',296,1,'2016-08-09 14:33:36','2016-08-09 14:33:36'),(182,1,0,'Product borrado','Product',297,1,'2016-08-09 14:33:41','2016-08-09 14:33:41'),(183,1,0,'Product borrado','Product',298,1,'2016-08-09 14:33:45','2016-08-09 14:33:45'),(184,1,0,'Product borrado','Product',299,1,'2016-08-09 14:33:50','2016-08-09 14:33:50'),(185,1,0,'Product borrado','Product',300,1,'2016-08-09 14:33:54','2016-08-09 14:33:54'),(186,1,0,'Product borrado','Product',301,1,'2016-08-09 14:33:58','2016-08-09 14:33:58'),(187,1,0,'Product borrado','Product',302,1,'2016-08-09 14:34:03','2016-08-09 14:34:03'),(188,1,0,'Product borrado','Product',303,1,'2016-08-09 14:34:07','2016-08-09 14:34:07'),(189,1,0,'Product borrado','Product',304,1,'2016-08-09 14:34:13','2016-08-09 14:34:13'),(190,1,0,'Product borrado','Product',305,1,'2016-08-09 14:34:19','2016-08-09 14:34:19'),(191,1,0,'Product borrado','Product',306,1,'2016-08-09 14:34:43','2016-08-09 14:34:43'),(192,1,0,'Product borrado','Product',307,1,'2016-08-09 14:35:31','2016-08-09 14:35:31'),(193,1,0,'Product borrado','Product',308,1,'2016-08-09 14:36:23','2016-08-09 14:36:23'),(194,1,0,'Product borrado','Product',309,1,'2016-08-09 14:37:15','2016-08-09 14:37:15'),(195,1,0,'Product borrado','Product',310,1,'2016-08-09 14:38:08','2016-08-09 14:38:08'),(196,1,0,'Product borrado','Product',311,1,'2016-08-09 14:39:08','2016-08-09 14:39:08'),(197,1,0,'Product borrado','Product',313,1,'2016-08-09 14:41:01','2016-08-09 14:41:01'),(198,1,0,'Product borrado','Product',314,1,'2016-08-09 14:41:51','2016-08-09 14:41:51'),(199,1,0,'Product borrado','Product',315,1,'2016-08-09 14:42:42','2016-08-09 14:42:42'),(200,1,0,'Product borrado','Product',317,1,'2016-08-09 14:43:13','2016-08-09 14:43:13'),(201,1,0,'Product borrado','Product',318,1,'2016-08-09 14:43:32','2016-08-09 14:43:32'),(202,1,0,'Product borrado','Product',319,1,'2016-08-09 14:43:42','2016-08-09 14:43:42'),(203,1,0,'Product borrado','Product',320,1,'2016-08-09 14:43:55','2016-08-09 14:43:55'),(204,1,0,'Product borrado','Product',321,1,'2016-08-09 14:44:12','2016-08-09 14:44:12'),(205,1,0,'Product borrado','Product',322,1,'2016-08-09 14:44:24','2016-08-09 14:44:24'),(206,1,0,'Product borrado','Product',323,1,'2016-08-09 14:44:38','2016-08-09 14:44:38'),(207,1,0,'Product borrado','Product',324,1,'2016-08-09 14:44:54','2016-08-09 14:44:54'),(208,1,0,'Product borrado','Product',325,1,'2016-08-09 14:45:05','2016-08-09 14:45:05'),(209,1,0,'Product borrado','Product',326,1,'2016-08-09 14:45:18','2016-08-09 14:45:18'),(210,1,0,'Product borrado','Product',327,1,'2016-08-09 14:45:32','2016-08-09 14:45:32'),(211,1,0,'Product borrado','Product',329,1,'2016-08-09 14:45:46','2016-08-09 14:45:46'),(212,1,0,'Product borrado','Product',330,1,'2016-08-09 14:46:02','2016-08-09 14:46:02'),(213,1,0,'Product borrado','Product',331,1,'2016-08-09 14:46:14','2016-08-09 14:46:14'),(214,1,0,'Product borrado','Product',332,1,'2016-08-09 14:46:25','2016-08-09 14:46:25'),(215,1,0,'Product borrado','Product',333,1,'2016-08-09 14:46:36','2016-08-09 14:46:36'),(216,1,0,'Product borrado','Product',335,1,'2016-08-09 14:46:49','2016-08-09 14:46:49'),(217,1,0,'Product borrado','Product',336,1,'2016-08-09 14:47:00','2016-08-09 14:47:00'),(218,1,0,'Product borrado','Product',338,1,'2016-08-09 14:47:40','2016-08-09 14:47:40'),(219,1,0,'Product borrado','Product',339,1,'2016-08-09 14:47:54','2016-08-09 14:47:54'),(220,1,0,'Product borrado','Product',340,1,'2016-08-09 14:48:37','2016-08-09 14:48:37'),(221,1,0,'Product borrado','Product',341,1,'2016-08-09 14:49:34','2016-08-09 14:49:34'),(222,1,0,'Product borrado','Product',342,1,'2016-08-09 14:50:23','2016-08-09 14:50:23'),(223,1,0,'Product borrado','Product',343,1,'2016-08-09 14:51:12','2016-08-09 14:51:12'),(224,1,0,'Product borrado','Product',344,1,'2016-08-09 14:51:59','2016-08-09 14:51:59'),(225,1,0,'Product borrado','Product',345,1,'2016-08-09 14:52:52','2016-08-09 14:52:52'),(226,1,0,'Product borrado','Product',346,1,'2016-08-09 14:53:31','2016-08-09 14:53:31'),(227,1,0,'Product borrado','Product',348,1,'2016-08-09 14:55:33','2016-08-09 14:55:33'),(228,1,0,'Product borrado','Product',349,1,'2016-08-09 14:56:21','2016-08-09 14:56:21'),(229,1,0,'Product borrado','Product',350,1,'2016-08-09 14:57:10','2016-08-09 14:57:10'),(230,1,0,'Product borrado','Product',351,1,'2016-08-09 14:57:32','2016-08-09 14:57:32'),(231,1,0,'Product borrado','Product',352,1,'2016-08-09 14:57:51','2016-08-09 14:57:51'),(232,1,0,'Product borrado','Product',353,1,'2016-08-09 14:58:11','2016-08-09 14:58:11'),(233,1,0,'Product borrado','Product',354,1,'2016-08-09 14:58:34','2016-08-09 14:58:34'),(234,1,0,'Product borrado','Product',355,1,'2016-08-09 14:58:55','2016-08-09 14:58:55'),(235,1,0,'Product borrado','Product',356,1,'2016-08-09 14:59:18','2016-08-09 14:59:18'),(236,1,0,'Product borrado','Product',357,1,'2016-08-09 14:59:39','2016-08-09 14:59:39'),(237,1,0,'Product borrado','Product',358,1,'2016-08-09 14:59:59','2016-08-09 14:59:59'),(238,1,0,'Product borrado','Product',359,1,'2016-08-09 15:00:19','2016-08-09 15:00:19'),(239,1,0,'Product borrado','Product',360,1,'2016-08-09 15:00:49','2016-08-09 15:00:49'),(240,1,0,'Product borrado','Product',361,1,'2016-08-09 15:01:11','2016-08-09 15:01:11'),(241,1,0,'Product borrado','Product',363,1,'2016-08-09 15:02:58','2016-08-09 15:02:58'),(242,1,0,'Product borrado','Product',364,1,'2016-08-09 15:03:05','2016-08-09 15:03:05'),(243,1,0,'Product borrado','Product',365,1,'2016-08-09 15:03:24','2016-08-09 15:03:24'),(244,1,0,'Product borrado','Product',366,1,'2016-08-09 15:03:44','2016-08-09 15:03:44'),(245,1,0,'Product borrado','Product',367,1,'2016-08-09 15:04:05','2016-08-09 15:04:05'),(246,1,0,'Product borrado','Product',368,1,'2016-08-09 15:04:20','2016-08-09 15:04:20'),(247,1,0,'Product borrado','Product',369,1,'2016-08-09 15:04:26','2016-08-09 15:04:26'),(248,1,0,'Product borrado','Product',370,1,'2016-08-09 15:04:31','2016-08-09 15:04:31'),(249,1,0,'Product borrado','Product',371,1,'2016-08-09 15:04:36','2016-08-09 15:04:36'),(250,1,0,'Product borrado','Product',372,1,'2016-08-09 15:05:05','2016-08-09 15:05:05'),(251,1,0,'Product borrado','Product',373,1,'2016-08-09 15:05:50','2016-08-09 15:05:50'),(252,1,0,'Product borrado','',0,1,'2016-08-09 15:05:50','2016-08-09 15:05:50'),(253,1,0,'Product borrado','Product',374,1,'2016-08-09 15:06:35','2016-08-09 15:06:35'),(254,1,0,'Product borrado','Product',375,1,'2016-08-09 15:06:35','2016-08-09 15:06:35'),(255,1,0,'Product borrado','',0,1,'2016-08-09 15:06:36','2016-08-09 15:06:36'),(256,1,0,'Product borrado','Product',376,1,'2016-08-09 15:07:26','2016-08-09 15:07:26'),(257,1,0,'Product borrado','Product',376,1,'2016-08-09 15:07:26','2016-08-09 15:07:26'),(258,1,0,'Product borrado','Product',377,1,'2016-08-09 15:08:15','2016-08-09 15:08:15'),(259,1,0,'Product borrado','Product',378,1,'2016-08-09 15:08:15','2016-08-09 15:08:15'),(260,1,0,'Product borrado','',0,1,'2016-08-09 15:08:15','2016-08-09 15:08:15'),(261,1,0,'Product borrado','Product',380,1,'2016-08-09 15:08:56','2016-08-09 15:08:56'),(262,1,0,'Product borrado','Product',379,1,'2016-08-09 15:08:56','2016-08-09 15:08:56'),(263,1,0,'Product borrado','',0,1,'2016-08-09 15:08:56','2016-08-09 15:08:56'),(264,1,0,'Product borrado','Product',381,1,'2016-08-09 15:09:29','2016-08-09 15:09:29'),(265,1,0,'Product borrado','Product',382,1,'2016-08-09 15:09:29','2016-08-09 15:09:29'),(266,1,0,'Product borrado','',0,1,'2016-08-09 15:09:29','2016-08-09 15:09:29'),(267,1,0,'Product borrado','Product',383,1,'2016-08-09 15:09:47','2016-08-09 15:09:47'),(268,1,0,'Product borrado','',0,1,'2016-08-09 15:09:47','2016-08-09 15:09:47'),(269,1,0,'Product borrado','Product',385,1,'2016-08-09 15:10:08','2016-08-09 15:10:08'),(270,1,0,'Product borrado','Product',386,1,'2016-08-09 15:10:13','2016-08-09 15:10:13'),(271,1,0,'Product borrado','Product',387,1,'2016-08-09 15:10:17','2016-08-09 15:10:17'),(272,1,0,'Product borrado','Product',388,1,'2016-08-09 15:10:21','2016-08-09 15:10:21'),(273,1,0,'Product borrado','Product',389,1,'2016-08-09 15:10:26','2016-08-09 15:10:26'),(274,1,0,'Product borrado','Product',390,1,'2016-08-09 15:10:30','2016-08-09 15:10:30'),(275,1,0,'Product borrado','Product',391,1,'2016-08-09 15:10:43','2016-08-09 15:10:43'),(276,1,0,'Product borrado','Product',392,1,'2016-08-09 15:11:05','2016-08-09 15:11:05'),(277,1,0,'Product borrado','Product',393,1,'2016-08-09 15:11:26','2016-08-09 15:11:26'),(278,1,0,'Product borrado','Product',394,1,'2016-08-09 15:11:50','2016-08-09 15:11:50'),(279,1,0,'Product borrado','Product',395,1,'2016-08-09 15:12:10','2016-08-09 15:12:10'),(280,1,0,'Product borrado','Product',396,1,'2016-08-09 15:12:21','2016-08-09 15:12:21'),(281,1,0,'Product borrado','Product',398,1,'2016-08-09 15:14:39','2016-08-09 15:14:39'),(282,1,0,'Product borrado','Product',399,1,'2016-08-09 15:14:43','2016-08-09 15:14:43'),(283,1,0,'Product borrado','Product',400,1,'2016-08-09 15:14:46','2016-08-09 15:14:46'),(284,1,0,'Product borrado','Product',401,1,'2016-08-09 15:14:49','2016-08-09 15:14:49'),(285,1,0,'Product borrado','Product',402,1,'2016-08-09 15:14:53','2016-08-09 15:14:53'),(286,1,0,'Product borrado','Product',403,1,'2016-08-09 15:14:55','2016-08-09 15:14:55'),(287,1,0,'Product borrado','Product',404,1,'2016-08-09 15:14:59','2016-08-09 15:14:59'),(288,1,0,'Product borrado','Product',405,1,'2016-08-09 15:15:02','2016-08-09 15:15:02'),(289,1,0,'Product borrado','Product',406,1,'2016-08-09 15:15:32','2016-08-09 15:15:32'),(290,1,0,'Product borrado','Product',407,1,'2016-08-09 15:16:08','2016-08-09 15:16:08'),(291,1,0,'Product borrado','Product',408,1,'2016-08-09 15:16:46','2016-08-09 15:16:46'),(292,1,0,'Product borrado','Product',409,1,'2016-08-09 15:17:24','2016-08-09 15:17:24'),(293,1,0,'Product borrado','Product',410,1,'2016-08-09 15:17:58','2016-08-09 15:17:58'),(294,1,0,'Product borrado','Product',411,1,'2016-08-09 15:18:35','2016-08-09 15:18:35'),(295,1,0,'Product borrado','Product',412,1,'2016-08-09 15:19:07','2016-08-09 15:19:07'),(296,1,0,'Product borrado','Product',413,1,'2016-08-09 15:19:47','2016-08-09 15:19:47'),(297,1,0,'Product borrado','Product',414,1,'2016-08-09 15:20:20','2016-08-09 15:20:20'),(298,1,0,'Product borrado','Product',415,1,'2016-08-09 15:20:50','2016-08-09 15:20:50'),(299,1,0,'Product borrado','Product',416,1,'2016-08-09 15:21:14','2016-08-09 15:21:14'),(300,1,0,'Product borrado','Product',418,1,'2016-08-09 15:22:00','2016-08-09 15:22:00'),(301,1,0,'Product borrado','Product',419,1,'2016-08-09 15:22:26','2016-08-09 15:22:26'),(302,1,0,'Product borrado','Product',420,1,'2016-08-09 15:22:37','2016-08-09 15:22:37'),(303,1,0,'Product borrado','Product',421,1,'2016-08-09 15:22:43','2016-08-09 15:22:43'),(304,1,0,'Product borrado','Product',422,1,'2016-08-09 15:22:51','2016-08-09 15:22:51'),(305,1,0,'Product borrado','Product',423,1,'2016-08-09 15:22:55','2016-08-09 15:22:55'),(306,1,0,'Product borrado','Product',424,1,'2016-08-09 15:23:02','2016-08-09 15:23:02'),(307,1,0,'Product borrado','Product',425,1,'2016-08-09 15:23:12','2016-08-09 15:23:12'),(308,1,0,'Product borrado','Product',426,1,'2016-08-09 15:23:36','2016-08-09 15:23:36'),(309,1,0,'Product borrado','Product',427,1,'2016-08-09 15:23:51','2016-08-09 15:23:51'),(310,1,0,'Product borrado','Product',428,1,'2016-08-09 15:24:14','2016-08-09 15:24:14'),(311,1,0,'Product borrado','Product',429,1,'2016-08-09 15:24:30','2016-08-09 15:24:30'),(312,1,0,'Product borrado','Product',430,1,'2016-08-09 15:24:38','2016-08-09 15:24:38'),(313,1,0,'Product borrado','Product',431,1,'2016-08-09 15:24:46','2016-08-09 15:24:46'),(314,1,0,'Product borrado','Product',432,1,'2016-08-09 15:24:59','2016-08-09 15:24:59'),(315,1,0,'Product borrado','Product',433,1,'2016-08-09 15:25:11','2016-08-09 15:25:11'),(316,1,0,'Product borrado','Product',434,1,'2016-08-09 15:25:21','2016-08-09 15:25:21'),(317,1,0,'Product borrado','Product',435,1,'2016-08-09 15:25:28','2016-08-09 15:25:28'),(318,1,0,'Product borrado','Product',436,1,'2016-08-09 15:25:40','2016-08-09 15:25:40'),(319,1,0,'Product borrado','Product',437,1,'2016-08-09 15:25:51','2016-08-09 15:25:51'),(320,1,0,'Product borrado','Product',438,1,'2016-08-09 15:26:04','2016-08-09 15:26:04'),(321,1,0,'Product borrado','Product',439,1,'2016-08-09 15:26:14','2016-08-09 15:26:14'),(322,1,0,'Product borrado','Product',440,1,'2016-08-09 15:26:20','2016-08-09 15:26:20'),(323,1,0,'Product borrado','Product',441,1,'2016-08-09 15:26:34','2016-08-09 15:26:34'),(324,1,0,'Product borrado','Product',442,1,'2016-08-09 15:27:04','2016-08-09 15:27:04'),(325,1,0,'Product borrado','Product',443,1,'2016-08-09 15:27:35','2016-08-09 15:27:35'),(326,1,0,'Product borrado','Product',444,1,'2016-08-09 15:28:07','2016-08-09 15:28:07'),(327,1,0,'Product borrado','Product',446,1,'2016-08-09 15:29:13','2016-08-09 15:29:13'),(328,1,0,'Product borrado','Product',447,1,'2016-08-09 15:29:45','2016-08-09 15:29:45'),(329,1,0,'Product borrado','Product',448,1,'2016-08-09 15:30:15','2016-08-09 15:30:15'),(330,1,0,'Product borrado','Product',449,1,'2016-08-09 15:30:45','2016-08-09 15:30:45'),(331,1,0,'Product borrado','Product',450,1,'2016-08-09 15:31:14','2016-08-09 15:31:14'),(332,1,0,'Product borrado','Product',451,1,'2016-08-09 15:31:45','2016-08-09 15:31:45'),(333,1,0,'Product borrado','Product',452,1,'2016-08-09 15:32:14','2016-08-09 15:32:14'),(334,1,0,'Product borrado','Product',453,1,'2016-08-09 15:32:48','2016-08-09 15:32:48'),(335,1,0,'Product borrado','Product',454,1,'2016-08-09 15:33:13','2016-08-09 15:33:13'),(336,1,0,'Product borrado','Product',455,1,'2016-08-09 15:33:44','2016-08-09 15:33:44'),(337,1,0,'Product borrado','Product',456,1,'2016-08-09 15:34:08','2016-08-09 15:34:08'),(338,1,0,'Product borrado','Product',457,1,'2016-08-09 15:34:28','2016-08-09 15:34:28'),(339,1,0,'Product borrado','Product',458,1,'2016-08-09 15:34:48','2016-08-09 15:34:48'),(340,1,0,'Product borrado','Product',459,1,'2016-08-09 15:35:09','2016-08-09 15:35:09'),(341,1,0,'Product borrado','Product',460,1,'2016-08-09 15:35:19','2016-08-09 15:35:19'),(342,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-08-09 15:48:43','2016-08-09 15:48:43'),(343,1,0,'Product borrado','Product',462,1,'2016-08-09 15:49:39','2016-08-09 15:49:39'),(344,1,0,'Product borrado','Product',463,1,'2016-08-09 15:49:41','2016-08-09 15:49:41'),(345,1,0,'Product borrado','Product',464,1,'2016-08-09 15:49:42','2016-08-09 15:49:42'),(346,1,0,'Product borrado','Product',465,1,'2016-08-09 15:49:43','2016-08-09 15:49:43'),(347,1,0,'Product borrado','Product',466,1,'2016-08-09 15:49:44','2016-08-09 15:49:44'),(348,1,0,'Product borrado','Product',467,1,'2016-08-09 15:49:46','2016-08-09 15:49:46'),(349,1,0,'Product borrado','Product',468,1,'2016-08-09 15:49:47','2016-08-09 15:49:47'),(350,1,0,'Product borrado','Product',469,1,'2016-08-09 15:49:48','2016-08-09 15:49:48'),(351,1,0,'Product borrado','Product',470,1,'2016-08-09 15:49:49','2016-08-09 15:49:49'),(352,1,0,'Product borrado','Product',471,1,'2016-08-09 15:49:50','2016-08-09 15:49:50'),(353,1,0,'Product borrado','Product',472,1,'2016-08-09 15:49:51','2016-08-09 15:49:51'),(354,1,0,'Product borrado','Product',473,1,'2016-08-09 15:49:52','2016-08-09 15:49:52'),(355,1,0,'Product borrado','Product',475,1,'2016-08-09 15:49:54','2016-08-09 15:49:54'),(356,1,0,'Product borrado','Product',476,1,'2016-08-09 15:49:55','2016-08-09 15:49:55'),(357,1,0,'Product borrado','Product',477,1,'2016-08-09 15:49:57','2016-08-09 15:49:57'),(358,1,0,'Product borrado','Product',478,1,'2016-08-09 15:49:58','2016-08-09 15:49:58'),(359,1,0,'Product borrado','Product',479,1,'2016-08-09 15:49:59','2016-08-09 15:49:59'),(360,1,0,'Product borrado','Product',480,1,'2016-08-09 15:50:00','2016-08-09 15:50:00'),(361,1,0,'Product borrado','Product',481,1,'2016-08-09 15:50:02','2016-08-09 15:50:02'),(362,1,0,'Product borrado','Product',482,1,'2016-08-09 15:50:03','2016-08-09 15:50:03'),(363,1,0,'Product borrado','Product',483,1,'2016-08-09 15:50:04','2016-08-09 15:50:04'),(364,1,0,'Product borrado','Product',484,1,'2016-08-09 15:50:05','2016-08-09 15:50:05'),(365,1,0,'Product borrado','Product',485,1,'2016-08-09 15:50:06','2016-08-09 15:50:06'),(366,1,0,'Product borrado','Product',487,1,'2016-08-09 15:50:07','2016-08-09 15:50:07'),(367,1,0,'Product borrado','Product',4,1,'2016-08-09 15:52:22','2016-08-09 15:52:22'),(368,1,0,'Product borrado','Product',84,1,'2016-08-09 15:53:21','2016-08-09 15:53:21'),(369,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-08-10 08:31:13','2016-08-10 08:31:13'),(370,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-08-10 12:10:10','2016-08-10 12:10:10'),(371,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-08-10 12:36:04','2016-08-10 12:36:04'),(372,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-08-10 17:06:30','2016-08-10 17:06:30'),(373,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-08-16 10:13:17','2016-08-16 10:13:17'),(374,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-08-16 11:20:50','2016-08-16 11:20:50'),(375,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-08-16 12:09:31','2016-08-16 12:09:31'),(376,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-08-16 16:37:11','2016-08-16 16:37:11'),(377,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-08-16 21:36:47','2016-08-16 21:36:47'),(378,1,0,'Conexión al panel de administración desde ::1','',0,1,'2016-08-16 22:49:39','2016-08-16 22:49:39');
/*!40000 ALTER TABLE `ps_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_mail`
--

DROP TABLE IF EXISTS `ps_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_mail` (
  `id_mail` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `recipient` varchar(126) NOT NULL,
  `template` varchar(62) NOT NULL,
  `subject` varchar(254) NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_mail`),
  KEY `recipient` (`recipient`(10))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_mail`
--

LOCK TABLES `ps_mail` WRITE;
/*!40000 ALTER TABLE `ps_mail` DISABLE KEYS */;
INSERT INTO `ps_mail` VALUES (1,'jimmy_guel@hotmail.com','account','[Joyeria Guadalajara] ¡Bienvenido!',1,'2016-05-31 15:06:13'),(2,'jeanmarsultor-buyer@gmail.com','payment','[Silverzum] Pago aceptado',1,'2016-06-01 19:53:07'),(3,'jeanmarsultor-buyer@gmail.com','order_conf','[Silverzum] Confirmación de pedido',1,'2016-06-01 19:53:08'),(4,'jimmy_guel@hotmail.com','contact','[Silverzum] Mensaje desde el formulario de contacto [no_sync]',1,'2016-06-03 14:39:46'),(5,'jeanmarsultor-buyer@gmail.com','contact_form','[Silverzum] Tu mensaje ha sido enviado correctamente #ct1 #tctk23owNOijVT',1,'2016-06-03 14:39:46'),(6,'jeanmarsultor-buyer@gmail.com','contact_form','[Silverzum] Su mensaje se ha enviado correctamente',1,'2016-06-03 14:44:57'),(7,'jimmy_guel@hotmail.com','account','[Silverzum] ¡Bienvenido!',1,'2016-06-16 19:17:21');
/*!40000 ALTER TABLE `ps_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_manufacturer`
--

DROP TABLE IF EXISTS `ps_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_manufacturer` (
  `id_manufacturer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_manufacturer`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_manufacturer`
--

LOCK TABLES `ps_manufacturer` WRITE;
/*!40000 ALTER TABLE `ps_manufacturer` DISABLE KEYS */;
INSERT INTO `ps_manufacturer` VALUES (1,'Fashion Manufacturer','2016-05-31 08:02:13','2016-05-31 08:02:13',1);
/*!40000 ALTER TABLE `ps_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_manufacturer_lang`
--

DROP TABLE IF EXISTS `ps_manufacturer_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_manufacturer_lang` (
  `id_manufacturer` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `short_description` text,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_manufacturer`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_manufacturer_lang`
--

LOCK TABLES `ps_manufacturer_lang` WRITE;
/*!40000 ALTER TABLE `ps_manufacturer_lang` DISABLE KEYS */;
INSERT INTO `ps_manufacturer_lang` VALUES (1,1,'','','','','');
/*!40000 ALTER TABLE `ps_manufacturer_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_manufacturer_shop`
--

DROP TABLE IF EXISTS `ps_manufacturer_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_manufacturer_shop` (
  `id_manufacturer` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_manufacturer`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_manufacturer_shop`
--

LOCK TABLES `ps_manufacturer_shop` WRITE;
/*!40000 ALTER TABLE `ps_manufacturer_shop` DISABLE KEYS */;
INSERT INTO `ps_manufacturer_shop` VALUES (1,1);
/*!40000 ALTER TABLE `ps_manufacturer_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_memcached_servers`
--

DROP TABLE IF EXISTS `ps_memcached_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_memcached_servers` (
  `id_memcached_server` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(254) NOT NULL,
  `port` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_memcached_server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_memcached_servers`
--

LOCK TABLES `ps_memcached_servers` WRITE;
/*!40000 ALTER TABLE `ps_memcached_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_memcached_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_message`
--

DROP TABLE IF EXISTS `ps_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_message` (
  `id_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cart` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `private` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_message`),
  KEY `message_order` (`id_order`),
  KEY `id_cart` (`id_cart`),
  KEY `id_customer` (`id_customer`),
  KEY `id_employee` (`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_message`
--

LOCK TABLES `ps_message` WRITE;
/*!40000 ALTER TABLE `ps_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_message_readed`
--

DROP TABLE IF EXISTS `ps_message_readed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_message_readed` (
  `id_message` int(10) unsigned NOT NULL,
  `id_employee` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_message`,`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_message_readed`
--

LOCK TABLES `ps_message_readed` WRITE;
/*!40000 ALTER TABLE `ps_message_readed` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_message_readed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_meta`
--

DROP TABLE IF EXISTS `ps_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_meta` (
  `id_meta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page` varchar(64) NOT NULL,
  `configurable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_meta`),
  UNIQUE KEY `page` (`page`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_meta`
--

LOCK TABLES `ps_meta` WRITE;
/*!40000 ALTER TABLE `ps_meta` DISABLE KEYS */;
INSERT INTO `ps_meta` VALUES (1,'pagenotfound',1),(2,'best-sales',1),(3,'contact',1),(4,'index',1),(5,'manufacturer',1),(6,'new-products',1),(7,'password',1),(8,'prices-drop',1),(9,'sitemap',1),(10,'supplier',1),(11,'address',1),(12,'addresses',1),(13,'authentication',1),(14,'cart',1),(15,'discount',1),(16,'history',1),(17,'identity',1),(18,'my-account',1),(19,'order-follow',1),(20,'order-slip',1),(21,'order',1),(22,'search',1),(23,'stores',1),(24,'order-opc',1),(25,'guest-tracking',1),(26,'order-confirmation',1),(27,'product',0),(28,'category',0),(29,'cms',0),(32,'module-bankwire-validation',0),(33,'module-bankwire-payment',0),(34,'module-cashondelivery-validation',0),(35,'products-comparison',1),(36,'module-blocknewsletter-verification',1),(37,'module-cronjobs-callback',1);
/*!40000 ALTER TABLE `ps_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_meta_lang`
--

DROP TABLE IF EXISTS `ps_meta_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_meta_lang` (
  `id_meta` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `url_rewrite` varchar(254) NOT NULL,
  PRIMARY KEY (`id_meta`,`id_shop`,`id_lang`),
  KEY `id_shop` (`id_shop`),
  KEY `id_lang` (`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_meta_lang`
--

LOCK TABLES `ps_meta_lang` WRITE;
/*!40000 ALTER TABLE `ps_meta_lang` DISABLE KEYS */;
INSERT INTO `ps_meta_lang` VALUES (1,1,1,'Error 404','Página no encontrada','error, 404, No se ha encontrado','pagina-no-ecnontrada'),(2,1,1,'Lo más vendido','Nuestros productos estrella','los más vendidos','mas-vendido'),(3,1,1,'Contáctanos','Utiliza nuestro formulario para ponerte en contacto con nosotros','formulario de contacto, e-mail','contactanos'),(4,1,1,'','Tienda creada con PrestaShop','tienda, prestashop',''),(5,1,1,'Fabricantes','Lista de fabricantes','fabricantes','fabricantes'),(6,1,1,'Productos nuevos','Nuestros productos nuevos','nuevo, productos','nuevos-productos'),(7,1,1,'¿Has olvidado tu contraseña?','Introduce la dirección de correo electrónico que utilices para acceder para recibir un mensaje de correo con una nueva contraseña','contraseña, has olvidado, e-mail, nuevo, regeneración','recuperacion-contraseña'),(8,1,1,'Bajamos los precios','Nuestros productos especiales','promoción, reducción','bajamos-precios'),(9,1,1,'Mapa del sitio web','¿Estás perdido? Encuentra lo que buscas','plan, sitio','mapa-web'),(10,1,1,'Proveedores','Lista de proveedores','proveedores','proveedor'),(11,1,1,'Dirección','','','direccion'),(12,1,1,'Direcciones','','','direcciones'),(13,1,1,'Iniciar sesión','','','inicio-sesion'),(14,1,1,'Carrito','','','carrito'),(15,1,1,'Descuento','','','descuento'),(16,1,1,'Historial de compra','','','historial-compra'),(17,1,1,'Datos personales','','','datos-personales'),(18,1,1,'Mi cuenta','','','mi-cuenta'),(19,1,1,'Seguimiento del pedido','','','seguimiento-pedido'),(20,1,1,'Albarán','','','albaran'),(21,1,1,'Pedido','','','pedido'),(22,1,1,'Buscar','','','buscar'),(23,1,1,'Tiendas','','','tiendas'),(24,1,1,'Pedido','','','pedido-rapido'),(25,1,1,'Seguimiento para clientes no registrados','','','seguimiento-cliente-no-registrado'),(26,1,1,'Confirmación de pedido','','','confirmacion-pedido'),(35,1,1,'Comparativa de productos','','','comparativa-productos'),(36,1,1,'','','',''),(37,1,1,'','','','');
/*!40000 ALTER TABLE `ps_meta_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module`
--

DROP TABLE IF EXISTS `ps_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module` (
  `id_module` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `version` varchar(8) NOT NULL,
  PRIMARY KEY (`id_module`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module`
--

LOCK TABLES `ps_module` WRITE;
/*!40000 ALTER TABLE `ps_module` DISABLE KEYS */;
INSERT INTO `ps_module` VALUES (1,'socialsharing',1,'1.4.1'),(2,'blockbanner',1,'1.4.0'),(3,'bankwire',1,'1.1.1'),(4,'blockbestsellers',1,'1.8.0'),(5,'blockcart',1,'1.6.0'),(6,'blocksocial',1,'1.2.1'),(7,'blockcategories',1,'2.9.3'),(8,'blockcurrencies',1,'0.4.0'),(9,'blockfacebook',1,'1.4.0'),(10,'blocklanguages',1,'1.5.0'),(11,'blocklayered',1,'2.1.3'),(12,'blockcms',1,'2.1.1'),(13,'blockcmsinfo',1,'1.6.0'),(14,'blockcontact',1,'1.4.0'),(15,'blockcontactinfos',1,'1.2.0'),(16,'blockmanufacturer',1,'1.4.0'),(17,'blockmyaccount',1,'1.4.0'),(18,'blockmyaccountfooter',1,'1.6.0'),(19,'blocknewproducts',1,'1.10.0'),(20,'blocknewsletter',1,'2.3.1'),(21,'blockpaymentlogo',1,'0.4.0'),(22,'blocksearch',1,'1.7.0'),(23,'blockspecials',1,'1.3.0'),(24,'blockstore',1,'1.3.0'),(25,'blocksupplier',1,'1.2.0'),(26,'blocktags',1,'1.3.0'),(27,'blocktopmenu',1,'2.2.3'),(28,'blockuserinfo',1,'0.4.0'),(29,'blockviewed',1,'1.3.0'),(31,'dashactivity',1,'0.5.0'),(32,'dashtrends',1,'0.8.1'),(33,'dashgoals',1,'0.7.0'),(34,'dashproducts',1,'0.3.5'),(35,'graphnvd3',1,'1.5.0'),(36,'gridhtml',1,'1.3.0'),(37,'homeslider',1,'1.6.0'),(38,'homefeatured',1,'1.8.0'),(39,'productpaymentlogos',1,'1.4.0'),(40,'pagesnotfound',1,'1.5.0'),(41,'sekeywords',1,'1.4.0'),(42,'statsbestcategories',1,'1.5.0'),(43,'statsbestcustomers',1,'1.5.0'),(44,'statsbestproducts',1,'1.5.0'),(45,'statsbestsuppliers',1,'1.4.0'),(46,'statsbestvouchers',1,'1.5.0'),(47,'statscarrier',1,'1.4.0'),(48,'statscatalog',1,'1.3.0'),(49,'statscheckup',1,'1.4.0'),(50,'statsdata',1,'1.5.0'),(51,'statsequipment',1,'1.3.0'),(52,'statsforecast',1,'1.4.0'),(53,'statslive',1,'1.3.0'),(54,'statsnewsletter',1,'1.4.0'),(55,'statsorigin',1,'1.4.0'),(56,'statspersonalinfos',1,'1.4.0'),(57,'statsproduct',1,'1.4.0'),(58,'statsregistrations',1,'1.4.0'),(59,'statssales',1,'1.3.0'),(60,'statssearch',1,'1.4.0'),(61,'statsstock',1,'1.5.0'),(62,'statsvisits',1,'1.6.0'),(63,'themeconfigurator',1,'2.1.1'),(64,'gamification',1,'1.12.0'),(65,'cronjobs',1,'1.3.3'),(76,'paypalmxcustom',1,'1.3.11'),(77,'pscleaner',1,'1.8.5');
/*!40000 ALTER TABLE `ps_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module_access`
--

DROP TABLE IF EXISTS `ps_module_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module_access` (
  `id_profile` int(10) unsigned NOT NULL,
  `id_module` int(10) unsigned NOT NULL,
  `view` tinyint(1) NOT NULL DEFAULT '0',
  `configure` tinyint(1) NOT NULL DEFAULT '0',
  `uninstall` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_profile`,`id_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module_access`
--

LOCK TABLES `ps_module_access` WRITE;
/*!40000 ALTER TABLE `ps_module_access` DISABLE KEYS */;
INSERT INTO `ps_module_access` VALUES (2,1,1,1,1),(2,2,1,1,1),(2,3,1,1,1),(2,4,1,1,1),(2,5,1,1,1),(2,6,1,1,1),(2,7,1,1,1),(2,8,1,1,1),(2,9,1,1,1),(2,10,1,1,1),(2,11,1,1,1),(2,12,1,1,1),(2,13,1,1,1),(2,14,1,1,1),(2,15,1,1,1),(2,16,1,1,1),(2,17,1,1,1),(2,18,1,1,1),(2,19,1,1,1),(2,20,1,1,1),(2,21,1,1,1),(2,22,1,1,1),(2,23,1,1,1),(2,24,1,1,1),(2,25,1,1,1),(2,26,1,1,1),(2,27,1,1,1),(2,28,1,1,1),(2,29,1,1,1),(2,31,1,1,1),(2,32,1,1,1),(2,33,1,1,1),(2,34,1,1,1),(2,35,1,1,1),(2,36,1,1,1),(2,37,1,1,1),(2,38,1,1,1),(2,39,1,1,1),(2,40,1,1,1),(2,41,1,1,1),(2,42,1,1,1),(2,43,1,1,1),(2,44,1,1,1),(2,45,1,1,1),(2,46,1,1,1),(2,47,1,1,1),(2,48,1,1,1),(2,49,1,1,1),(2,50,1,1,1),(2,51,1,1,1),(2,52,1,1,1),(2,53,1,1,1),(2,54,1,1,1),(2,55,1,1,1),(2,56,1,1,1),(2,57,1,1,1),(2,58,1,1,1),(2,59,1,1,1),(2,60,1,1,1),(2,61,1,1,1),(2,62,1,1,1),(2,63,1,1,1),(2,64,1,1,1),(2,65,1,1,1),(2,76,1,1,1),(2,77,1,1,1),(3,1,1,0,0),(3,2,1,0,0),(3,3,1,0,0),(3,4,1,0,0),(3,5,1,0,0),(3,6,1,0,0),(3,7,1,0,0),(3,8,1,0,0),(3,9,1,0,0),(3,10,1,0,0),(3,11,1,0,0),(3,12,1,0,0),(3,13,1,0,0),(3,14,1,0,0),(3,15,1,0,0),(3,16,1,0,0),(3,17,1,0,0),(3,18,1,0,0),(3,19,1,0,0),(3,20,1,0,0),(3,21,1,0,0),(3,22,1,0,0),(3,23,1,0,0),(3,24,1,0,0),(3,25,1,0,0),(3,26,1,0,0),(3,27,1,0,0),(3,28,1,0,0),(3,29,1,0,0),(3,31,1,0,0),(3,32,1,0,0),(3,33,1,0,0),(3,34,1,0,0),(3,35,1,0,0),(3,36,1,0,0),(3,37,1,0,0),(3,38,1,0,0),(3,39,1,0,0),(3,40,1,0,0),(3,41,1,0,0),(3,42,1,0,0),(3,43,1,0,0),(3,44,1,0,0),(3,45,1,0,0),(3,46,1,0,0),(3,47,1,0,0),(3,48,1,0,0),(3,49,1,0,0),(3,50,1,0,0),(3,51,1,0,0),(3,52,1,0,0),(3,53,1,0,0),(3,54,1,0,0),(3,55,1,0,0),(3,56,1,0,0),(3,57,1,0,0),(3,58,1,0,0),(3,59,1,0,0),(3,60,1,0,0),(3,61,1,0,0),(3,62,1,0,0),(3,63,1,0,0),(3,64,1,0,0),(3,65,1,0,0),(3,76,1,0,0),(3,77,1,0,0),(4,1,1,1,1),(4,2,1,1,1),(4,3,1,1,1),(4,4,1,1,1),(4,5,1,1,1),(4,6,1,1,1),(4,7,1,1,1),(4,8,1,1,1),(4,9,1,1,1),(4,10,1,1,1),(4,11,1,1,1),(4,12,1,1,1),(4,13,1,1,1),(4,14,1,1,1),(4,15,1,1,1),(4,16,1,1,1),(4,17,1,1,1),(4,18,1,1,1),(4,19,1,1,1),(4,20,1,1,1),(4,21,1,1,1),(4,22,1,1,1),(4,23,1,1,1),(4,24,1,1,1),(4,25,1,1,1),(4,26,1,1,1),(4,27,1,1,1),(4,28,1,1,1),(4,29,1,1,1),(4,31,1,1,1),(4,32,1,1,1),(4,33,1,1,1),(4,34,1,1,1),(4,35,1,1,1),(4,36,1,1,1),(4,37,1,1,1),(4,38,1,1,1),(4,39,1,1,1),(4,40,1,1,1),(4,41,1,1,1),(4,42,1,1,1),(4,43,1,1,1),(4,44,1,1,1),(4,45,1,1,1),(4,46,1,1,1),(4,47,1,1,1),(4,48,1,1,1),(4,49,1,1,1),(4,50,1,1,1),(4,51,1,1,1),(4,52,1,1,1),(4,53,1,1,1),(4,54,1,1,1),(4,55,1,1,1),(4,56,1,1,1),(4,57,1,1,1),(4,58,1,1,1),(4,59,1,1,1),(4,60,1,1,1),(4,61,1,1,1),(4,62,1,1,1),(4,63,1,1,1),(4,64,1,1,1),(4,65,1,1,1),(4,76,1,1,1),(4,77,1,1,1);
/*!40000 ALTER TABLE `ps_module_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module_country`
--

DROP TABLE IF EXISTS `ps_module_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module_country` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_country` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module_country`
--

LOCK TABLES `ps_module_country` WRITE;
/*!40000 ALTER TABLE `ps_module_country` DISABLE KEYS */;
INSERT INTO `ps_module_country` VALUES (3,1,145),(76,1,145);
/*!40000 ALTER TABLE `ps_module_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module_currency`
--

DROP TABLE IF EXISTS `ps_module_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module_currency` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_currency` int(11) NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_currency`),
  KEY `id_module` (`id_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module_currency`
--

LOCK TABLES `ps_module_currency` WRITE;
/*!40000 ALTER TABLE `ps_module_currency` DISABLE KEYS */;
INSERT INTO `ps_module_currency` VALUES (3,1,1),(76,1,1);
/*!40000 ALTER TABLE `ps_module_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module_group`
--

DROP TABLE IF EXISTS `ps_module_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module_group` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_group` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module_group`
--

LOCK TABLES `ps_module_group` WRITE;
/*!40000 ALTER TABLE `ps_module_group` DISABLE KEYS */;
INSERT INTO `ps_module_group` VALUES (1,1,1),(1,1,2),(1,1,3),(1,1,4),(2,1,1),(2,1,2),(2,1,3),(2,1,4),(3,1,1),(3,1,2),(3,1,3),(3,1,4),(4,1,1),(4,1,2),(4,1,3),(4,1,4),(5,1,1),(5,1,2),(5,1,3),(5,1,4),(6,1,1),(6,1,2),(6,1,3),(6,1,4),(7,1,1),(7,1,2),(7,1,3),(7,1,4),(8,1,1),(8,1,2),(8,1,3),(8,1,4),(9,1,1),(9,1,2),(9,1,3),(9,1,4),(10,1,1),(10,1,2),(10,1,3),(10,1,4),(11,1,1),(11,1,2),(11,1,3),(11,1,4),(12,1,1),(12,1,2),(12,1,3),(12,1,4),(13,1,1),(13,1,2),(13,1,3),(13,1,4),(14,1,1),(14,1,2),(14,1,3),(14,1,4),(15,1,1),(15,1,2),(15,1,3),(15,1,4),(16,1,1),(16,1,2),(16,1,3),(16,1,4),(17,1,1),(17,1,2),(17,1,3),(17,1,4),(18,1,1),(18,1,2),(18,1,3),(18,1,4),(19,1,1),(19,1,2),(19,1,3),(19,1,4),(20,1,1),(20,1,2),(20,1,3),(20,1,4),(21,1,1),(21,1,2),(21,1,3),(21,1,4),(22,1,1),(22,1,2),(22,1,3),(22,1,4),(23,1,1),(23,1,2),(23,1,3),(23,1,4),(24,1,1),(24,1,2),(24,1,3),(24,1,4),(25,1,1),(25,1,2),(25,1,3),(25,1,4),(26,1,1),(26,1,2),(26,1,3),(26,1,4),(27,1,1),(27,1,2),(27,1,3),(27,1,4),(28,1,1),(28,1,2),(28,1,3),(28,1,4),(29,1,1),(29,1,2),(29,1,3),(29,1,4),(31,1,1),(31,1,2),(31,1,3),(31,1,4),(32,1,1),(32,1,2),(32,1,3),(32,1,4),(33,1,1),(33,1,2),(33,1,3),(33,1,4),(34,1,1),(34,1,2),(34,1,3),(34,1,4),(35,1,1),(35,1,2),(35,1,3),(35,1,4),(36,1,1),(36,1,2),(36,1,3),(36,1,4),(37,1,1),(37,1,2),(37,1,3),(37,1,4),(38,1,1),(38,1,2),(38,1,3),(38,1,4),(39,1,1),(39,1,2),(39,1,3),(39,1,4),(40,1,1),(40,1,2),(40,1,3),(40,1,4),(41,1,1),(41,1,2),(41,1,3),(41,1,4),(42,1,1),(42,1,2),(42,1,3),(42,1,4),(43,1,1),(43,1,2),(43,1,3),(43,1,4),(44,1,1),(44,1,2),(44,1,3),(44,1,4),(45,1,1),(45,1,2),(45,1,3),(45,1,4),(46,1,1),(46,1,2),(46,1,3),(46,1,4),(47,1,1),(47,1,2),(47,1,3),(47,1,4),(48,1,1),(48,1,2),(48,1,3),(48,1,4),(49,1,1),(49,1,2),(49,1,3),(49,1,4),(50,1,1),(50,1,2),(50,1,3),(50,1,4),(51,1,1),(51,1,2),(51,1,3),(51,1,4),(52,1,1),(52,1,2),(52,1,3),(52,1,4),(53,1,1),(53,1,2),(53,1,3),(53,1,4),(54,1,1),(54,1,2),(54,1,3),(54,1,4),(55,1,1),(55,1,2),(55,1,3),(55,1,4),(56,1,1),(56,1,2),(56,1,3),(56,1,4),(57,1,1),(57,1,2),(57,1,3),(57,1,4),(58,1,1),(58,1,2),(58,1,3),(58,1,4),(59,1,1),(59,1,2),(59,1,3),(59,1,4),(60,1,1),(60,1,2),(60,1,3),(60,1,4),(61,1,1),(61,1,2),(61,1,3),(61,1,4),(62,1,1),(62,1,2),(62,1,3),(62,1,4),(63,1,1),(63,1,2),(63,1,3),(63,1,4),(64,1,1),(64,1,2),(64,1,3),(64,1,4),(65,1,1),(65,1,2),(65,1,3),(65,1,4),(76,1,1),(76,1,2),(76,1,3),(76,1,4),(77,1,1),(77,1,2),(77,1,3),(77,1,4);
/*!40000 ALTER TABLE `ps_module_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module_preference`
--

DROP TABLE IF EXISTS `ps_module_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module_preference` (
  `id_module_preference` int(11) NOT NULL AUTO_INCREMENT,
  `id_employee` int(11) NOT NULL,
  `module` varchar(255) NOT NULL,
  `interest` tinyint(1) DEFAULT NULL,
  `favorite` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_module_preference`),
  UNIQUE KEY `employee_module` (`id_employee`,`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module_preference`
--

LOCK TABLES `ps_module_preference` WRITE;
/*!40000 ALTER TABLE `ps_module_preference` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_module_preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module_shop`
--

DROP TABLE IF EXISTS `ps_module_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module_shop` (
  `id_module` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `enable_device` tinyint(1) NOT NULL DEFAULT '7',
  PRIMARY KEY (`id_module`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module_shop`
--

LOCK TABLES `ps_module_shop` WRITE;
/*!40000 ALTER TABLE `ps_module_shop` DISABLE KEYS */;
INSERT INTO `ps_module_shop` VALUES (1,1,7),(2,1,3),(3,1,7),(4,1,7),(5,1,7),(6,1,7),(7,1,7),(8,1,7),(9,1,7),(10,1,7),(11,1,7),(12,1,7),(13,1,1),(14,1,7),(15,1,7),(16,1,7),(17,1,7),(18,1,7),(19,1,7),(20,1,7),(21,1,7),(22,1,7),(23,1,7),(24,1,7),(25,1,7),(26,1,7),(27,1,7),(28,1,7),(29,1,7),(31,1,7),(32,1,7),(33,1,7),(34,1,7),(35,1,7),(36,1,7),(37,1,3),(38,1,7),(39,1,7),(40,1,7),(41,1,7),(42,1,7),(43,1,7),(44,1,7),(45,1,7),(46,1,7),(47,1,7),(48,1,7),(49,1,7),(50,1,7),(51,1,7),(52,1,7),(53,1,7),(54,1,7),(55,1,7),(56,1,7),(57,1,7),(58,1,7),(59,1,7),(60,1,7),(61,1,7),(62,1,7),(63,1,7),(64,1,7),(65,1,7),(76,1,7),(77,1,7);
/*!40000 ALTER TABLE `ps_module_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_modules_perfs`
--

DROP TABLE IF EXISTS `ps_modules_perfs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_modules_perfs` (
  `id_modules_perfs` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `session` int(11) unsigned NOT NULL,
  `module` varchar(62) NOT NULL,
  `method` varchar(126) NOT NULL,
  `time_start` double unsigned NOT NULL,
  `time_end` double unsigned NOT NULL,
  `memory_start` int(10) unsigned NOT NULL,
  `memory_end` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_modules_perfs`),
  KEY `session` (`session`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_modules_perfs`
--

LOCK TABLES `ps_modules_perfs` WRITE;
/*!40000 ALTER TABLE `ps_modules_perfs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_modules_perfs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_newsletter`
--

DROP TABLE IF EXISTS `ps_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_newsletter` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `email` varchar(255) NOT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `ip_registration_newsletter` varchar(15) NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_newsletter`
--

LOCK TABLES `ps_newsletter` WRITE;
/*!40000 ALTER TABLE `ps_newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_operating_system`
--

DROP TABLE IF EXISTS `ps_operating_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_operating_system` (
  `id_operating_system` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_operating_system`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_operating_system`
--

LOCK TABLES `ps_operating_system` WRITE;
/*!40000 ALTER TABLE `ps_operating_system` DISABLE KEYS */;
INSERT INTO `ps_operating_system` VALUES (1,'Windows XP'),(2,'Windows Vista'),(3,'Windows 7'),(4,'Windows 8'),(5,'MacOsX'),(6,'Linux'),(7,'Android');
/*!40000 ALTER TABLE `ps_operating_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_carrier`
--

DROP TABLE IF EXISTS `ps_order_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_carrier` (
  `id_order_carrier` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) unsigned NOT NULL,
  `id_carrier` int(11) unsigned NOT NULL,
  `id_order_invoice` int(11) unsigned DEFAULT NULL,
  `weight` decimal(20,6) DEFAULT NULL,
  `shipping_cost_tax_excl` decimal(20,6) DEFAULT NULL,
  `shipping_cost_tax_incl` decimal(20,6) DEFAULT NULL,
  `tracking_number` varchar(64) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_carrier`),
  KEY `id_order` (`id_order`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_order_invoice` (`id_order_invoice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_carrier`
--

LOCK TABLES `ps_order_carrier` WRITE;
/*!40000 ALTER TABLE `ps_order_carrier` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_cart_rule`
--

DROP TABLE IF EXISTS `ps_order_cart_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_cart_rule` (
  `id_order_cart_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(10) unsigned NOT NULL,
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_order_invoice` int(10) unsigned DEFAULT '0',
  `name` varchar(254) NOT NULL,
  `value` decimal(17,2) NOT NULL DEFAULT '0.00',
  `value_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_cart_rule`),
  KEY `id_order` (`id_order`),
  KEY `id_cart_rule` (`id_cart_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_cart_rule`
--

LOCK TABLES `ps_order_cart_rule` WRITE;
/*!40000 ALTER TABLE `ps_order_cart_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_cart_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_detail`
--

DROP TABLE IF EXISTS `ps_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_detail` (
  `id_order_detail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(10) unsigned NOT NULL,
  `id_order_invoice` int(11) DEFAULT NULL,
  `id_warehouse` int(10) unsigned DEFAULT '0',
  `id_shop` int(11) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `product_attribute_id` int(10) unsigned DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_in_stock` int(10) NOT NULL DEFAULT '0',
  `product_quantity_refunded` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_return` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_reinjected` int(10) unsigned NOT NULL DEFAULT '0',
  `product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_percent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_amount_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_amount_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `group_reduction` decimal(10,2) NOT NULL DEFAULT '0.00',
  `product_quantity_discount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `product_ean13` varchar(13) DEFAULT NULL,
  `product_upc` varchar(12) DEFAULT NULL,
  `product_reference` varchar(32) DEFAULT NULL,
  `product_supplier_reference` varchar(32) DEFAULT NULL,
  `product_weight` decimal(20,6) NOT NULL,
  `id_tax_rules_group` int(11) unsigned DEFAULT '0',
  `tax_computation_method` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tax_name` varchar(16) NOT NULL,
  `tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `ecotax` decimal(21,6) NOT NULL DEFAULT '0.000000',
  `ecotax_tax_rate` decimal(5,3) NOT NULL DEFAULT '0.000',
  `discount_quantity_applied` tinyint(1) NOT NULL DEFAULT '0',
  `download_hash` varchar(255) DEFAULT NULL,
  `download_nb` int(10) unsigned DEFAULT '0',
  `download_deadline` datetime DEFAULT NULL,
  `total_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `purchase_supplier_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `original_product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `original_wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`id_order_detail`),
  KEY `order_detail_order` (`id_order`),
  KEY `product_id` (`product_id`),
  KEY `product_attribute_id` (`product_attribute_id`),
  KEY `id_tax_rules_group` (`id_tax_rules_group`),
  KEY `id_order_id_order_detail` (`id_order`,`id_order_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_detail`
--

LOCK TABLES `ps_order_detail` WRITE;
/*!40000 ALTER TABLE `ps_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_detail_tax`
--

DROP TABLE IF EXISTS `ps_order_detail_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_detail_tax` (
  `id_order_detail` int(11) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `unit_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `total_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  KEY `id_order_detail` (`id_order_detail`),
  KEY `id_tax` (`id_tax`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_detail_tax`
--

LOCK TABLES `ps_order_detail_tax` WRITE;
/*!40000 ALTER TABLE `ps_order_detail_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_detail_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_history`
--

DROP TABLE IF EXISTS `ps_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_history` (
  `id_order_history` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_employee` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `id_order_state` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_history`),
  KEY `order_history_order` (`id_order`),
  KEY `id_employee` (`id_employee`),
  KEY `id_order_state` (`id_order_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_history`
--

LOCK TABLES `ps_order_history` WRITE;
/*!40000 ALTER TABLE `ps_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_invoice`
--

DROP TABLE IF EXISTS `ps_order_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_invoice` (
  `id_order_invoice` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `delivery_number` int(11) NOT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `total_discount_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_discount_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products_wt` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `shipping_tax_computation_method` int(10) unsigned NOT NULL,
  `total_wrapping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_wrapping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `shop_address` text,
  `invoice_address` text,
  `delivery_address` text,
  `note` text,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_invoice`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_invoice`
--

LOCK TABLES `ps_order_invoice` WRITE;
/*!40000 ALTER TABLE `ps_order_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_invoice_payment`
--

DROP TABLE IF EXISTS `ps_order_invoice_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_invoice_payment` (
  `id_order_invoice` int(11) unsigned NOT NULL,
  `id_order_payment` int(11) unsigned NOT NULL,
  `id_order` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_order_invoice`,`id_order_payment`),
  KEY `order_payment` (`id_order_payment`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_invoice_payment`
--

LOCK TABLES `ps_order_invoice_payment` WRITE;
/*!40000 ALTER TABLE `ps_order_invoice_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_invoice_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_invoice_tax`
--

DROP TABLE IF EXISTS `ps_order_invoice_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_invoice_tax` (
  `id_order_invoice` int(11) NOT NULL,
  `type` varchar(15) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `amount` decimal(10,6) NOT NULL DEFAULT '0.000000',
  KEY `id_tax` (`id_tax`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_invoice_tax`
--

LOCK TABLES `ps_order_invoice_tax` WRITE;
/*!40000 ALTER TABLE `ps_order_invoice_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_invoice_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_message`
--

DROP TABLE IF EXISTS `ps_order_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_message` (
  `id_order_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_message`
--

LOCK TABLES `ps_order_message` WRITE;
/*!40000 ALTER TABLE `ps_order_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_message_lang`
--

DROP TABLE IF EXISTS `ps_order_message_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_message_lang` (
  `id_order_message` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id_order_message`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_message_lang`
--

LOCK TABLES `ps_order_message_lang` WRITE;
/*!40000 ALTER TABLE `ps_order_message_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_message_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_payment`
--

DROP TABLE IF EXISTS `ps_order_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_payment` (
  `id_order_payment` int(11) NOT NULL AUTO_INCREMENT,
  `order_reference` varchar(9) DEFAULT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `transaction_id` varchar(254) DEFAULT NULL,
  `card_number` varchar(254) DEFAULT NULL,
  `card_brand` varchar(254) DEFAULT NULL,
  `card_expiration` char(7) DEFAULT NULL,
  `card_holder` varchar(254) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_payment`),
  KEY `order_reference` (`order_reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_payment`
--

LOCK TABLES `ps_order_payment` WRITE;
/*!40000 ALTER TABLE `ps_order_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_return`
--

DROP TABLE IF EXISTS `ps_order_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_return` (
  `id_order_return` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `question` text NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order_return`),
  KEY `order_return_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_return`
--

LOCK TABLES `ps_order_return` WRITE;
/*!40000 ALTER TABLE `ps_order_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_return_detail`
--

DROP TABLE IF EXISTS `ps_order_return_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_return_detail` (
  `id_order_return` int(10) unsigned NOT NULL,
  `id_order_detail` int(10) unsigned NOT NULL,
  `id_customization` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_return`,`id_order_detail`,`id_customization`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_return_detail`
--

LOCK TABLES `ps_order_return_detail` WRITE;
/*!40000 ALTER TABLE `ps_order_return_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_return_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_return_state`
--

DROP TABLE IF EXISTS `ps_order_return_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_return_state` (
  `id_order_return_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_order_return_state`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_return_state`
--

LOCK TABLES `ps_order_return_state` WRITE;
/*!40000 ALTER TABLE `ps_order_return_state` DISABLE KEYS */;
INSERT INTO `ps_order_return_state` VALUES (1,'#4169E1'),(2,'#8A2BE2'),(3,'#32CD32'),(4,'#DC143C'),(5,'#108510');
/*!40000 ALTER TABLE `ps_order_return_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_return_state_lang`
--

DROP TABLE IF EXISTS `ps_order_return_state_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_return_state_lang` (
  `id_order_return_state` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_order_return_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_return_state_lang`
--

LOCK TABLES `ps_order_return_state_lang` WRITE;
/*!40000 ALTER TABLE `ps_order_return_state_lang` DISABLE KEYS */;
INSERT INTO `ps_order_return_state_lang` VALUES (1,1,'Pendiente de confirmación'),(2,1,'Pendiente del paquete'),(3,1,'Paquete recibido'),(4,1,'Devolución denegada'),(5,1,'Devolución completada');
/*!40000 ALTER TABLE `ps_order_return_state_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_slip`
--

DROP TABLE IF EXISTS `ps_order_slip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_slip` (
  `id_order_slip` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `id_customer` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `total_products_tax_excl` decimal(20,6) DEFAULT NULL,
  `total_products_tax_incl` decimal(20,6) DEFAULT NULL,
  `total_shipping_tax_excl` decimal(20,6) DEFAULT NULL,
  `total_shipping_tax_incl` decimal(20,6) DEFAULT NULL,
  `shipping_cost` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL,
  `shipping_cost_amount` decimal(10,2) NOT NULL,
  `partial` tinyint(1) NOT NULL,
  `order_slip_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order_slip`),
  KEY `order_slip_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_slip`
--

LOCK TABLES `ps_order_slip` WRITE;
/*!40000 ALTER TABLE `ps_order_slip` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_slip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_slip_detail`
--

DROP TABLE IF EXISTS `ps_order_slip_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_slip_detail` (
  `id_order_slip` int(10) unsigned NOT NULL,
  `id_order_detail` int(10) unsigned NOT NULL,
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `unit_price_tax_excl` decimal(20,6) DEFAULT NULL,
  `unit_price_tax_incl` decimal(20,6) DEFAULT NULL,
  `total_price_tax_excl` decimal(20,6) DEFAULT NULL,
  `total_price_tax_incl` decimal(20,6) DEFAULT NULL,
  `amount_tax_excl` decimal(20,6) DEFAULT NULL,
  `amount_tax_incl` decimal(20,6) DEFAULT NULL,
  PRIMARY KEY (`id_order_slip`,`id_order_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_slip_detail`
--

LOCK TABLES `ps_order_slip_detail` WRITE;
/*!40000 ALTER TABLE `ps_order_slip_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_slip_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_slip_detail_tax`
--

DROP TABLE IF EXISTS `ps_order_slip_detail_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_slip_detail_tax` (
  `id_order_slip_detail` int(11) unsigned NOT NULL,
  `id_tax` int(11) unsigned NOT NULL,
  `unit_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `total_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  KEY `id_order_slip_detail` (`id_order_slip_detail`),
  KEY `id_tax` (`id_tax`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_slip_detail_tax`
--

LOCK TABLES `ps_order_slip_detail_tax` WRITE;
/*!40000 ALTER TABLE `ps_order_slip_detail_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_slip_detail_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_state`
--

DROP TABLE IF EXISTS `ps_order_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_state` (
  `id_order_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice` tinyint(1) unsigned DEFAULT '0',
  `send_email` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) DEFAULT NULL,
  `color` varchar(32) DEFAULT NULL,
  `unremovable` tinyint(1) unsigned NOT NULL,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `logable` tinyint(1) NOT NULL DEFAULT '0',
  `delivery` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipped` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `paid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pdf_invoice` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pdf_delivery` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_state`),
  KEY `module_name` (`module_name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_state`
--

LOCK TABLES `ps_order_state` WRITE;
/*!40000 ALTER TABLE `ps_order_state` DISABLE KEYS */;
INSERT INTO `ps_order_state` VALUES (1,0,1,'cheque','#4169E1',1,0,0,0,0,0,0,0,0),(2,1,1,'','#32CD32',1,0,1,0,0,1,1,0,0),(3,1,1,'','#FF8C00',1,0,1,1,0,1,0,0,0),(4,1,1,'','#8A2BE2',1,0,1,1,1,1,0,0,0),(5,1,0,'','#108510',1,0,1,1,1,1,0,0,0),(6,0,1,'','#DC143C',1,0,0,0,0,0,0,0,0),(7,1,1,'','#ec2e15',1,0,0,0,0,0,0,0,0),(8,0,1,'','#8f0621',1,0,0,0,0,0,0,0,0),(9,1,1,'','#FF69B4',1,0,0,0,0,1,0,0,0),(10,0,1,'bankwire','#4169E1',1,0,0,0,0,0,0,0,0),(11,0,0,'','#4169E1',1,0,0,0,0,0,0,0,0),(12,1,1,'','#32CD32',1,0,1,0,0,1,0,0,0),(13,0,1,'','#FF69B4',1,0,0,0,0,0,0,0,0),(14,0,0,'cashondelivery','#4169E1',1,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `ps_order_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_state_lang`
--

DROP TABLE IF EXISTS `ps_order_state_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_state_lang` (
  `id_order_state` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `template` varchar(64) NOT NULL,
  PRIMARY KEY (`id_order_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_state_lang`
--

LOCK TABLES `ps_order_state_lang` WRITE;
/*!40000 ALTER TABLE `ps_order_state_lang` DISABLE KEYS */;
INSERT INTO `ps_order_state_lang` VALUES (1,1,'Pago mediante cheque pendiente','cheque'),(2,1,'Pago aceptado','payment'),(3,1,'Preparación en proceso','preparation'),(4,1,'Enviado','shipped'),(5,1,'Entregado',''),(6,1,'Cancelado','order_canceled'),(7,1,'Reembolso','refund'),(8,1,'Error en el pago','payment_error'),(9,1,'Productos fuera de línea','outofstock'),(10,1,'Pago por transferencia bancaria pendiente','bankwire'),(11,1,'Pago mediante PayPal pendiente',''),(12,1,'Pago a distancia aceptado','payment'),(13,1,'Productos fuera de línea','outofstock'),(14,1,'Awaiting cod validation','cashondelivery');
/*!40000 ALTER TABLE `ps_order_state_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_orders`
--

DROP TABLE IF EXISTS `ps_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_orders` (
  `id_order` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(9) DEFAULT NULL,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_carrier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_cart` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned NOT NULL,
  `id_address_invoice` int(10) unsigned NOT NULL,
  `current_state` int(10) unsigned NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `payment` varchar(255) NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `module` varchar(255) DEFAULT NULL,
  `recyclable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift_message` text,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_number` varchar(64) DEFAULT NULL,
  `total_discounts` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_discounts_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_discounts_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_real` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products_wt` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `carrier_tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `total_wrapping` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_wrapping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_wrapping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `round_mode` tinyint(1) NOT NULL DEFAULT '2',
  `round_type` tinyint(1) NOT NULL DEFAULT '1',
  `invoice_number` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_number` int(10) unsigned NOT NULL DEFAULT '0',
  `invoice_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `valid` int(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order`),
  KEY `reference` (`reference`),
  KEY `id_customer` (`id_customer`),
  KEY `id_cart` (`id_cart`),
  KEY `invoice_number` (`invoice_number`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `current_state` (`current_state`),
  KEY `id_shop` (`id_shop`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_orders`
--

LOCK TABLES `ps_orders` WRITE;
/*!40000 ALTER TABLE `ps_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_pack`
--

DROP TABLE IF EXISTS `ps_pack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_pack` (
  `id_product_pack` int(10) unsigned NOT NULL,
  `id_product_item` int(10) unsigned NOT NULL,
  `id_product_attribute_item` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product_pack`,`id_product_item`,`id_product_attribute_item`),
  KEY `product_item` (`id_product_item`,`id_product_attribute_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_pack`
--

LOCK TABLES `ps_pack` WRITE;
/*!40000 ALTER TABLE `ps_pack` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_pack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_page`
--

DROP TABLE IF EXISTS `ps_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_page` (
  `id_page` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_page_type` int(10) unsigned NOT NULL,
  `id_object` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_page`),
  KEY `id_page_type` (`id_page_type`),
  KEY `id_object` (`id_object`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_page`
--

LOCK TABLES `ps_page` WRITE;
/*!40000 ALTER TABLE `ps_page` DISABLE KEYS */;
INSERT INTO `ps_page` VALUES (1,1,NULL);
/*!40000 ALTER TABLE `ps_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_page_type`
--

DROP TABLE IF EXISTS `ps_page_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_page_type` (
  `id_page_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_page_type`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_page_type`
--

LOCK TABLES `ps_page_type` WRITE;
/*!40000 ALTER TABLE `ps_page_type` DISABLE KEYS */;
INSERT INTO `ps_page_type` VALUES (1,'index');
/*!40000 ALTER TABLE `ps_page_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_page_viewed`
--

DROP TABLE IF EXISTS `ps_page_viewed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_page_viewed` (
  `id_page` int(10) unsigned NOT NULL,
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_date_range` int(10) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_page`,`id_date_range`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_page_viewed`
--

LOCK TABLES `ps_page_viewed` WRITE;
/*!40000 ALTER TABLE `ps_page_viewed` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_page_viewed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_pagenotfound`
--

DROP TABLE IF EXISTS `ps_pagenotfound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_pagenotfound` (
  `id_pagenotfound` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `request_uri` varchar(256) NOT NULL,
  `http_referer` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_pagenotfound`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_pagenotfound`
--

LOCK TABLES `ps_pagenotfound` WRITE;
/*!40000 ALTER TABLE `ps_pagenotfound` DISABLE KEYS */;
INSERT INTO `ps_pagenotfound` VALUES (1,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockbestsellers/blockbestsellers.css.map','','2016-06-16 20:23:59'),(2,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockbanner/blockbanner.css.map','','2016-06-16 20:23:59'),(3,1,1,'/joyeria/themes/default-bootstrap/css/autoload/uniform.default.css.map','','2016-06-16 20:23:59'),(4,1,1,'/joyeria/themes/default-bootstrap/css/global.css.map','','2016-06-16 20:23:59'),(5,1,1,'/joyeria/themes/default-bootstrap/css/product_list.css.map','','2016-06-16 20:23:59'),(6,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcategories/blockcategories.css.map','','2016-06-16 20:23:59'),(7,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcurrencies/blockcurrencies.css.map','','2016-06-16 20:24:03'),(8,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocklanguages/blocklanguages.css.map','','2016-06-16 20:24:03'),(9,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockmyaccountfooter/blockmyaccount.css.map','','2016-06-16 20:24:03'),(10,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocknewproducts/blocknewproducts.css.map','','2016-06-16 20:24:04'),(11,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocknewsletter/blocknewsletter.css.map','','2016-06-16 20:24:04'),(12,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocksearch/blocksearch.css.map','','2016-06-16 20:24:06'),(13,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockspecials/blockspecials.css.map','','2016-06-16 20:24:08'),(14,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktopmenu/css/blocktopmenu.css.map','','2016-06-16 20:24:09'),(15,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktags/blocktags.css.map','','2016-06-16 20:24:09'),(16,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktopmenu/css/superfish-modified.css.map','','2016-06-16 20:24:09'),(17,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockuserinfo/blockuserinfo.css.map','','2016-06-16 20:24:09'),(18,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockviewed/blockviewed.css.map','','2016-06-16 20:24:12'),(19,1,1,'/joyeria/themes/default-bootstrap/css/modules/homeslider/homeslider.css.map','','2016-06-16 20:24:13'),(20,1,1,'/joyeria/themes/default-bootstrap/css/modules/homefeatured/homefeatured.css.map','','2016-06-16 20:24:13'),(21,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockspecials/blockspecials.css.map','','2016-06-16 20:24:13'),(22,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktags/blocktags.css.map','','2016-06-16 20:24:13'),(23,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktopmenu/css/blocktopmenu.css.map','','2016-06-16 20:24:14'),(24,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktopmenu/css/superfish-modified.css.map','','2016-06-16 20:24:16'),(25,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockuserinfo/blockuserinfo.css.map','','2016-06-16 20:24:17'),(26,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockviewed/blockviewed.css.map','','2016-06-16 20:24:17'),(27,1,1,'/joyeria/themes/default-bootstrap/css/modules/homeslider/homeslider.css.map','','2016-06-16 20:24:17'),(28,1,1,'/joyeria/themes/default-bootstrap/css/modules/homefeatured/homefeatured.css.map','','2016-06-16 20:24:17'),(29,1,1,'/joyeria/themes/default-bootstrap/css/global.css.map','','2016-06-16 20:24:18'),(30,1,1,'/joyeria/themes/default-bootstrap/css/autoload/uniform.default.css.map','','2016-06-16 20:24:20'),(31,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockbanner/blockbanner.css.map','','2016-06-16 20:24:21'),(32,1,1,'/joyeria/themes/default-bootstrap/css/product_list.css.map','','2016-06-16 20:24:21'),(33,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockbestsellers/blockbestsellers.css.map','','2016-06-16 20:24:22'),(34,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcart/blockcart.css.map','','2016-06-16 20:24:22'),(35,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcategories/blockcategories.css.map','','2016-06-16 20:24:23'),(36,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcurrencies/blockcurrencies.css.map','','2016-06-16 20:24:24'),(37,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocklanguages/blocklanguages.css.map','','2016-06-16 20:24:25'),(38,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcontact/blockcontact.css.map','','2016-06-16 20:24:26'),(39,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockmyaccountfooter/blockmyaccount.css.map','','2016-06-16 20:24:26'),(40,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocknewproducts/blocknewproducts.css.map','','2016-06-16 20:24:26'),(41,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocknewsletter/blocknewsletter.css.map','','2016-06-16 20:24:29'),(42,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocksearch/blocksearch.css.map','','2016-06-16 20:24:30'),(43,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockbanner/blockbanner.css.map','','2016-06-16 20:24:34'),(44,1,1,'/joyeria/themes/default-bootstrap/css/global.css.map','','2016-06-16 20:24:34'),(45,1,1,'/joyeria/themes/default-bootstrap/css/autoload/uniform.default.css.map','','2016-06-16 20:24:34'),(46,1,1,'/joyeria/themes/default-bootstrap/css/product_list.css.map','','2016-06-16 20:24:34'),(47,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcart/blockcart.css.map','','2016-06-16 20:24:34'),(48,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockbestsellers/blockbestsellers.css.map','','2016-06-16 20:24:34'),(49,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcategories/blockcategories.css.map','','2016-06-16 20:24:38'),(50,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcurrencies/blockcurrencies.css.map','','2016-06-16 20:24:38'),(51,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocklanguages/blocklanguages.css.map','','2016-06-16 20:24:38'),(52,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcontact/blockcontact.css.map','','2016-06-16 20:24:38'),(53,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocknewproducts/blocknewproducts.css.map','','2016-06-16 20:24:39'),(54,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockmyaccountfooter/blockmyaccount.css.map','','2016-06-16 20:24:39'),(55,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocknewsletter/blocknewsletter.css.map','','2016-06-16 20:24:42'),(56,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocksearch/blocksearch.css.map','','2016-06-16 20:24:43'),(57,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockspecials/blockspecials.css.map','','2016-06-16 20:24:43'),(58,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktags/blocktags.css.map','','2016-06-16 20:24:43'),(59,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktopmenu/css/blocktopmenu.css.map','','2016-06-16 20:24:43'),(60,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktopmenu/css/superfish-modified.css.map','','2016-06-16 20:24:43'),(61,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockviewed/blockviewed.css.map','','2016-06-16 20:24:47'),(62,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockuserinfo/blockuserinfo.css.map','','2016-06-16 20:24:47'),(63,1,1,'/joyeria/themes/default-bootstrap/css/modules/homeslider/homeslider.css.map','','2016-06-16 20:24:47'),(64,1,1,'/joyeria/themes/default-bootstrap/css/modules/homefeatured/homefeatured.css.map','','2016-06-16 20:24:47'),(65,1,1,'/joyeria/themes/default-bootstrap/css/autoload/uniform.default.css.map','','2016-06-16 20:29:06'),(66,1,1,'/joyeria/themes/default-bootstrap/css/global.css.map','','2016-06-16 20:29:06'),(67,1,1,'/joyeria/themes/default-bootstrap/css/product_list.css.map','','2016-06-16 20:29:06'),(68,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockbanner/blockbanner.css.map','','2016-06-16 20:29:06'),(69,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcart/blockcart.css.map','','2016-06-16 20:29:06'),(70,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcategories/blockcategories.css.map','','2016-06-16 20:29:06'),(71,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcurrencies/blockcurrencies.css.map','','2016-06-16 20:29:08'),(72,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocklanguages/blocklanguages.css.map','','2016-06-16 20:29:10'),(73,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcontact/blockcontact.css.map','','2016-06-16 20:29:10'),(74,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockmyaccountfooter/blockmyaccount.css.map','','2016-06-16 20:29:11'),(75,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocknewproducts/blocknewproducts.css.map','','2016-06-16 20:29:11'),(76,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocknewsletter/blocknewsletter.css.map','','2016-06-16 20:29:11'),(77,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocksearch/blocksearch.css.map','','2016-06-16 20:29:13'),(78,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockspecials/blockspecials.css.map','','2016-06-16 20:29:13'),(79,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockuserinfo/blockuserinfo.css.map','','2016-06-16 20:29:16'),(80,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktags/blocktags.css.map','','2016-06-16 20:29:16'),(81,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktopmenu/css/superfish-modified.css.map','','2016-06-16 20:29:16'),(82,1,1,'/joyeria/themes/default-bootstrap/css/modules/homeslider/homeslider.css.map','','2016-06-16 20:29:17'),(83,1,1,'/joyeria/themes/default-bootstrap/css/modules/homefeatured/homefeatured.css.map','','2016-06-16 20:29:18'),(84,1,1,'/joyeria/themes/default-bootstrap/css/autoload/uniform.default.css.map','','2016-06-16 20:33:58'),(85,1,1,'/joyeria/themes/default-bootstrap/css/product_list.css.map','','2016-06-16 20:33:58'),(86,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockbanner/blockbanner.css.map','','2016-06-16 20:33:58'),(87,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcategories/blockcategories.css.map','','2016-06-16 20:33:59'),(88,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcurrencies/blockcurrencies.css.map','','2016-06-16 20:34:00'),(89,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocklanguages/blocklanguages.css.map','','2016-06-16 20:34:00'),(90,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcontact/blockcontact.css.map','','2016-06-16 20:34:03'),(91,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockmyaccountfooter/blockmyaccount.css.map','','2016-06-16 20:34:03'),(92,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocknewproducts/blocknewproducts.css.map','','2016-06-16 20:34:03'),(93,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocknewsletter/blocknewsletter.css.map','','2016-06-16 20:34:04'),(94,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocksearch/blocksearch.css.map','','2016-06-16 20:34:05'),(95,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockspecials/blockspecials.css.map','','2016-06-16 20:34:05'),(96,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktags/blocktags.css.map','','2016-06-16 20:34:08'),(97,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktopmenu/css/blocktopmenu.css.map','','2016-06-16 20:34:08'),(98,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktopmenu/css/superfish-modified.css.map','','2016-06-16 20:34:08'),(99,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockuserinfo/blockuserinfo.css.map','','2016-06-16 20:34:09'),(100,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockviewed/blockviewed.css.map','','2016-06-16 20:34:10'),(101,1,1,'/joyeria/themes/default-bootstrap/css/modules/homeslider/homeslider.css.map','','2016-06-16 20:34:10'),(102,1,1,'/joyeria/themes/default-bootstrap/css/modules/homefeatured/homefeatured.css.map','','2016-06-16 20:34:12'),(103,1,1,'/joyeria/themes/default-bootstrap/css/global.css.map','','2016-06-16 20:37:34'),(104,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockbestsellers/blockbestsellers.css.map','','2016-06-16 20:37:35'),(105,1,1,'/joyeria/themes/default-bootstrap/css/autoload/uniform.default.css.map','','2016-06-16 20:37:35'),(106,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockbanner/blockbanner.css.map','','2016-06-16 20:37:35'),(107,1,1,'/joyeria/themes/default-bootstrap/css/product_list.css.map','','2016-06-16 20:37:35'),(108,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcategories/blockcategories.css.map','','2016-06-16 20:37:36'),(109,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcurrencies/blockcurrencies.css.map','','2016-06-16 20:37:39'),(110,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocklanguages/blocklanguages.css.map','','2016-06-16 20:37:39'),(111,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcontact/blockcontact.css.map','','2016-06-16 20:37:39'),(112,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockmyaccountfooter/blockmyaccount.css.map','','2016-06-16 20:37:39'),(113,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocknewsletter/blocknewsletter.css.map','','2016-06-16 20:37:41'),(114,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocksearch/blocksearch.css.map','','2016-06-16 20:37:41'),(115,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockspecials/blockspecials.css.map','','2016-06-16 20:37:43'),(116,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktags/blocktags.css.map','','2016-06-16 20:37:44'),(117,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktopmenu/css/blocktopmenu.css.map','','2016-06-16 20:37:44'),(118,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktopmenu/css/superfish-modified.css.map','','2016-06-16 20:37:44'),(119,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockuserinfo/blockuserinfo.css.map','','2016-06-16 20:37:46'),(120,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockviewed/blockviewed.css.map','','2016-06-16 20:37:46'),(121,1,1,'/joyeria/themes/default-bootstrap/css/modules/homeslider/homeslider.css.map','','2016-06-16 20:37:48'),(122,1,1,'/joyeria/themes/default-bootstrap/css/modules/homefeatured/homefeatured.css.map','','2016-06-16 20:37:48'),(123,1,1,'/joyeria/themes/default-bootstrap/css/global.css.map','','2016-06-16 21:31:52'),(124,1,1,'/joyeria/themes/default-bootstrap/css/autoload/uniform.default.css.map','','2016-06-16 21:31:53'),(125,1,1,'/joyeria/themes/default-bootstrap/css/product_list.css.map','','2016-06-16 21:31:53'),(126,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcurrencies/blockcurrencies.css.map','','2016-06-16 21:31:53'),(127,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcategories/blockcategories.css.map','','2016-06-16 21:31:53'),(128,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockbestsellers/blockbestsellers.css.map','','2016-06-16 21:31:53'),(129,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocklanguages/blocklanguages.css.map','','2016-06-16 21:31:54'),(130,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcontact/blockcontact.css.map','','2016-06-16 21:31:54'),(131,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockmyaccountfooter/blockmyaccount.css.map','','2016-06-16 21:31:54'),(132,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocknewproducts/blocknewproducts.css.map','','2016-06-16 21:31:54'),(133,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocksearch/blocksearch.css.map','','2016-06-16 21:31:54'),(134,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocknewsletter/blocknewsletter.css.map','','2016-06-16 21:31:54'),(135,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockspecials/blockspecials.css.map','','2016-06-16 21:31:54'),(136,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktags/blocktags.css.map','','2016-06-16 21:31:54'),(137,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktopmenu/css/blocktopmenu.css.map','','2016-06-16 21:31:55'),(138,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockuserinfo/blockuserinfo.css.map','','2016-06-16 21:31:55'),(139,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktopmenu/css/superfish-modified.css.map','','2016-06-16 21:31:55'),(140,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockviewed/blockviewed.css.map','','2016-06-16 21:31:55'),(141,1,1,'/joyeria/themes/default-bootstrap/css/modules/homeslider/homeslider.css.map','','2016-06-16 21:31:55'),(142,1,1,'/joyeria/themes/default-bootstrap/css/modules/homefeatured/homefeatured.css.map','','2016-06-16 21:31:55'),(143,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockbanner/blockbanner.css.map','','2016-06-17 11:00:15'),(144,1,1,'/joyeria/themes/default-bootstrap/css/autoload/uniform.default.css.map','','2016-06-17 11:00:15'),(145,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockbestsellers/blockbestsellers.css.map','','2016-06-17 11:00:15'),(146,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcart/blockcart.css.map','','2016-06-17 11:00:15'),(147,1,1,'/joyeria/themes/default-bootstrap/css/global.css.map','','2016-06-17 11:00:15'),(148,1,1,'/joyeria/themes/default-bootstrap/css/product_list.css.map','','2016-06-17 11:00:16'),(149,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcategories/blockcategories.css.map','','2016-06-17 11:00:16'),(150,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocklanguages/blocklanguages.css.map','','2016-06-17 11:00:16'),(151,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcurrencies/blockcurrencies.css.map','','2016-06-17 11:00:16'),(152,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcontact/blockcontact.css.map','','2016-06-17 11:00:17'),(153,1,1,'/joyeria/themes/default-bootstrap/css/global.css.map','','2016-06-17 11:06:38'),(154,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcart/blockcart.css.map','','2016-06-17 11:06:38'),(155,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockbestsellers/blockbestsellers.css.map','','2016-06-17 11:06:38'),(156,1,1,'/joyeria/themes/default-bootstrap/css/autoload/uniform.default.css.map','','2016-06-17 11:06:38'),(157,1,1,'/joyeria/themes/default-bootstrap/css/product_list.css.map','','2016-06-17 11:06:38'),(158,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockbanner/blockbanner.css.map','','2016-06-17 11:06:39'),(159,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcategories/blockcategories.css.map','','2016-06-17 11:06:39'),(160,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocklanguages/blocklanguages.css.map','','2016-06-17 11:06:39'),(161,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcurrencies/blockcurrencies.css.map','','2016-06-17 11:06:39'),(162,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocknewproducts/blocknewproducts.css.map','','2016-06-17 11:06:39'),(163,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcontact/blockcontact.css.map','','2016-06-17 11:06:40'),(164,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockmyaccountfooter/blockmyaccount.css.map','','2016-06-17 11:06:40'),(165,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocknewsletter/blocknewsletter.css.map','','2016-06-17 11:06:40'),(166,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocksearch/blocksearch.css.map','','2016-06-17 11:06:40'),(167,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockspecials/blockspecials.css.map','','2016-06-17 11:06:40'),(168,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktags/blocktags.css.map','','2016-06-17 11:06:40'),(169,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktopmenu/css/superfish-modified.css.map','','2016-06-17 11:06:40'),(170,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockuserinfo/blockuserinfo.css.map','','2016-06-17 11:06:41'),(171,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktopmenu/css/blocktopmenu.css.map','','2016-06-17 11:06:41'),(172,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockviewed/blockviewed.css.map','','2016-06-17 11:06:41'),(173,1,1,'/joyeria/themes/default-bootstrap/css/modules/homeslider/homeslider.css.map','','2016-06-17 11:06:41'),(174,1,1,'/joyeria/themes/default-bootstrap/css/modules/homefeatured/homefeatured.css.map','','2016-06-17 11:06:41'),(175,1,1,'/joyeria/index.php?controller=404','','2016-06-17 11:09:15'),(176,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockbestsellers/blockbestsellers.css.map','','2016-06-17 11:13:17'),(177,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcart/blockcart.css.map','','2016-06-17 11:13:17'),(178,1,1,'/joyeria/themes/default-bootstrap/css/global.css.map','','2016-06-17 11:13:17'),(179,1,1,'/joyeria/themes/default-bootstrap/css/product.css.map','','2016-06-17 11:13:18'),(180,1,1,'/joyeria/themes/default-bootstrap/css/autoload/uniform.default.css.map','','2016-06-17 11:13:18'),(181,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockbanner/blockbanner.css.map','','2016-06-17 11:13:18'),(182,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcategories/blockcategories.css.map','','2016-06-17 11:13:18'),(183,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcurrencies/blockcurrencies.css.map','','2016-06-17 11:13:18'),(184,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockmyaccountfooter/blockmyaccount.css.map','','2016-06-17 11:13:18'),(185,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocknewsletter/blocknewsletter.css.map','','2016-06-17 11:13:19'),(186,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocklanguages/blocklanguages.css.map','','2016-06-17 11:13:19'),(187,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocknewproducts/blocknewproducts.css.map','','2016-06-17 11:13:19'),(188,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcontact/blockcontact.css.map','','2016-06-17 11:13:19'),(189,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocksearch/blocksearch.css.map','','2016-06-17 11:13:19'),(190,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockspecials/blockspecials.css.map','','2016-06-17 11:13:19'),(191,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktopmenu/css/blocktopmenu.css.map','','2016-06-17 11:13:20'),(192,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockviewed/blockviewed.css.map','','2016-06-17 11:13:20'),(193,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktopmenu/css/superfish-modified.css.map','','2016-06-17 11:13:20'),(194,1,1,'/joyeria/themes/default-bootstrap/css/modules/homefeatured/homefeatured.css.map','','2016-06-17 11:13:20'),(195,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktags/blocktags.css.map','','2016-06-17 11:13:20'),(196,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockuserinfo/blockuserinfo.css.map','','2016-06-17 11:13:20'),(197,1,1,'/joyeria/themes/default-bootstrap/css/product.css.map','','2016-06-17 11:13:35'),(198,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockbanner/blockbanner.css.map','','2016-06-17 11:13:35'),(199,1,1,'/joyeria/themes/default-bootstrap/css/global.css.map','','2016-06-17 11:13:35'),(200,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockbestsellers/blockbestsellers.css.map','','2016-06-17 11:13:35'),(201,1,1,'/joyeria/themes/default-bootstrap/css/print.css.map','','2016-06-17 11:13:35'),(202,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcart/blockcart.css.map','','2016-06-17 11:13:35'),(203,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcategories/blockcategories.css.map','','2016-06-17 11:13:36'),(204,1,1,'/joyeria/themes/default-bootstrap/css/autoload/uniform.default.css.map','','2016-06-17 11:13:36'),(205,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcurrencies/blockcurrencies.css.map','','2016-06-17 11:13:36'),(206,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocklanguages/blocklanguages.css.map','','2016-06-17 11:13:36'),(207,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockmyaccountfooter/blockmyaccount.css.map','','2016-06-17 11:13:36'),(208,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocknewproducts/blocknewproducts.css.map','','2016-06-17 11:13:37'),(209,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocknewsletter/blocknewsletter.css.map','','2016-06-17 11:13:37'),(210,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktags/blocktags.css.map','','2016-06-17 11:13:37'),(211,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockspecials/blockspecials.css.map','','2016-06-17 11:13:37'),(212,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocksearch/blocksearch.css.map','','2016-06-17 11:13:37'),(213,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcontact/blockcontact.css.map','','2016-06-17 11:13:38'),(214,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktopmenu/css/blocktopmenu.css.map','','2016-06-17 11:13:39'),(215,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktopmenu/css/superfish-modified.css.map','','2016-06-17 11:13:39'),(216,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockviewed/blockviewed.css.map','','2016-06-17 11:13:39'),(217,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockuserinfo/blockuserinfo.css.map','','2016-06-17 11:13:39'),(218,1,1,'/joyeria/themes/default-bootstrap/css/modules/homefeatured/homefeatured.css.map','','2016-06-17 11:13:39'),(219,1,1,'/joyeria/themes/default-bootstrap/css/product_list.css.map','','2016-06-17 11:13:39'),(220,1,1,'/joyeria/themes/default-bootstrap/css/autoload/uniform.default.css.map','','2016-06-17 11:21:10'),(221,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockbestsellers/blockbestsellers.css.map','','2016-06-17 11:21:11'),(222,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcart/blockcart.css.map','','2016-06-17 11:21:11'),(223,1,1,'/joyeria/themes/default-bootstrap/css/global.css.map','','2016-06-17 11:21:11'),(224,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockbanner/blockbanner.css.map','','2016-06-17 11:21:11'),(225,1,1,'/joyeria/themes/default-bootstrap/css/product_list.css.map','','2016-06-17 11:21:11'),(226,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcontact/blockcontact.css.map','','2016-06-17 11:21:11'),(227,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcurrencies/blockcurrencies.css.map','','2016-06-17 11:21:12'),(228,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockcategories/blockcategories.css.map','','2016-06-17 11:21:12'),(229,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocklanguages/blocklanguages.css.map','','2016-06-17 11:21:12'),(230,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockmyaccountfooter/blockmyaccount.css.map','','2016-06-17 11:21:12'),(231,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocknewproducts/blocknewproducts.css.map','','2016-06-17 11:21:13'),(232,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktags/blocktags.css.map','','2016-06-17 11:21:13'),(233,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocknewsletter/blocknewsletter.css.map','','2016-06-17 11:21:13'),(234,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockspecials/blockspecials.css.map','','2016-06-17 11:21:13'),(235,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocksearch/blocksearch.css.map','','2016-06-17 11:21:13'),(236,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktopmenu/css/blocktopmenu.css.map','','2016-06-17 11:21:13'),(237,1,1,'/joyeria/themes/default-bootstrap/css/modules/blocktopmenu/css/superfish-modified.css.map','','2016-06-17 11:21:14'),(238,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockuserinfo/blockuserinfo.css.map','','2016-06-17 11:21:14'),(239,1,1,'/joyeria/themes/default-bootstrap/css/modules/homefeatured/homefeatured.css.map','','2016-06-17 11:21:14'),(240,1,1,'/joyeria/themes/default-bootstrap/css/modules/homeslider/homeslider.css.map','','2016-06-17 11:21:14'),(241,1,1,'/joyeria/themes/default-bootstrap/css/modules/blockviewed/blockviewed.css.map','','2016-06-17 11:21:14');
/*!40000 ALTER TABLE `ps_pagenotfound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_paypal_mx_transaction`
--

DROP TABLE IF EXISTS `ps_paypal_mx_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_paypal_mx_transaction` (
  `id_paypal_mx_transaction` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('payment','refund') NOT NULL,
  `source` enum('standard','express','advanced','payflow_pro','payflow_link') NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '0',
  `id_customer` int(11) unsigned NOT NULL,
  `id_cart` int(11) unsigned NOT NULL,
  `id_order` int(11) unsigned NOT NULL,
  `id_transaction` varchar(32) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `cc_type` varchar(16) NOT NULL,
  `cc_exp` varchar(8) NOT NULL,
  `cc_last_digits` int(11) NOT NULL,
  `cvc_check` tinyint(1) NOT NULL DEFAULT '0',
  `fee` decimal(10,2) NOT NULL,
  `mode` enum('live','test') NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_paypal_mx_transaction`),
  KEY `idx_transaction` (`type`,`id_order`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_paypal_mx_transaction`
--

LOCK TABLES `ps_paypal_mx_transaction` WRITE;
/*!40000 ALTER TABLE `ps_paypal_mx_transaction` DISABLE KEYS */;
INSERT INTO `ps_paypal_mx_transaction` VALUES (1,'payment','express',1,3,6,6,'6JC45726JN7552236',127.59,'MXN','','',0,0,10.48,'test','2016-06-01 14:53:08');
/*!40000 ALTER TABLE `ps_paypal_mx_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product`
--

DROP TABLE IF EXISTS `ps_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product` (
  `id_product` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` int(10) unsigned DEFAULT NULL,
  `id_manufacturer` int(10) unsigned DEFAULT NULL,
  `id_category_default` int(10) unsigned DEFAULT NULL,
  `id_shop_default` int(10) unsigned NOT NULL DEFAULT '1',
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `on_sale` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `online_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int(10) NOT NULL DEFAULT '0',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `width` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `height` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `depth` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `out_of_stock` int(10) unsigned NOT NULL DEFAULT '2',
  `quantity_discount` tinyint(1) DEFAULT '0',
  `customizable` tinyint(2) NOT NULL DEFAULT '0',
  `uploadable_files` tinyint(4) NOT NULL DEFAULT '0',
  `text_fields` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301','302') NOT NULL DEFAULT '',
  `id_product_redirected` int(10) unsigned NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date NOT NULL DEFAULT '0000-00-00',
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_is_pack` tinyint(1) NOT NULL DEFAULT '0',
  `cache_has_attachments` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `cache_default_attribute` int(10) unsigned DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0',
  `pack_stock_type` int(11) unsigned NOT NULL DEFAULT '3',
  PRIMARY KEY (`id_product`),
  KEY `product_supplier` (`id_supplier`),
  KEY `product_manufacturer` (`id_manufacturer`,`id_product`),
  KEY `id_category_default` (`id_category_default`),
  KEY `indexed` (`indexed`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB AUTO_INCREMENT=676 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product`
--

LOCK TABLES `ps_product` WRITE;
/*!40000 ALTER TABLE `ps_product` DISABLE KEYS */;
INSERT INTO `ps_product` VALUES (1,0,0,4,1,1,0,0,'','',0.000000,0,1,555.000000,0.000000,'',0.000000,0.00,'1','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-06-16 13:08:07',0,3),(2,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'2','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-06-16 13:08:07',0,3),(3,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'3','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-06-16 13:08:07',0,3),(5,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'5','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(6,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'6','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(7,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'7','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(8,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'8','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(9,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'9','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(10,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'10','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(11,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'11','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(12,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'12','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(13,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'13','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(14,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'14','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(15,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'15','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(16,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'16','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(17,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'17','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(18,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'18','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(19,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'19','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(20,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'20','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(21,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'21','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(22,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'22','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(23,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'23','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(24,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'24','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(25,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'25','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(26,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'26','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(27,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'27','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(28,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'28','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(29,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'29','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(30,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'30','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(31,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'31','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(32,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'32','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(33,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'33','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(34,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'34','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(35,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'35','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(36,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'36','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(37,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'37','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(38,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'38','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(39,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'39','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(40,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'40','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(41,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'41','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(42,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'42','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(43,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'43','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(44,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'44','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(45,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'45','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(46,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'46','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(47,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'47','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(48,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'48','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(49,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'49','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(50,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'50','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(51,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'51','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(52,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'52','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(53,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'53','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(54,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'54','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(55,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'55','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(56,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'56','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(57,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'57','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(58,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'58','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(59,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'59','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(60,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'60','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(61,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'61','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(62,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'62','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(63,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'63','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(64,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'64','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(65,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'65','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(66,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'66','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(67,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'67','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(68,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'68','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(69,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'69','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(70,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'70','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(71,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'71','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(72,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'72','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(73,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'73','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(74,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'74','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(75,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'75','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(76,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'76','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(77,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'77','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(78,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'78','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(79,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'79','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(80,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'80','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(81,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'81','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(82,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'82','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(83,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'83','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',0,3),(85,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'85','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(86,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'86','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(87,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'87','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(88,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'88','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(89,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'89','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(90,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'90','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(91,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'91','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(92,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'92','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(93,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'93','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(94,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'94','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(95,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'95','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(96,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'96','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(97,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'97','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(98,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'98','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(99,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'99','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(100,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'100','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(101,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'101','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(102,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'102','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(103,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'103','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(104,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'104','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(105,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'105','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(106,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'106','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(107,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'107','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(108,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'108','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(109,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'109','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(110,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'110','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(111,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'111','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(112,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'112','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(113,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'113','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(114,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'114','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(115,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'115','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(116,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'116','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(117,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'117','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(118,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'118','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(119,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'119','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(120,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'120','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(121,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'121','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(122,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'122','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(123,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'123','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(124,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'124','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(125,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'125','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(126,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'126','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(127,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'127','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(128,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'128','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(129,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'129','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(130,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'130','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(131,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'131','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(132,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'132','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(133,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'133','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(134,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'134','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(135,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'135','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(136,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'136','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(137,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'137','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(139,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'139','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(140,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'140','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(141,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'141','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(143,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'143','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(144,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'144','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(145,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'145','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(146,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'146','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(147,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'147','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(148,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'148','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(149,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'149','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(150,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'150','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(151,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'151','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(152,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'152','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(153,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'153','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(154,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'154','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(155,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'155','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(156,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'156','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(157,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'157','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(158,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'158','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(159,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'159','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(160,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'160','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(161,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'161','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(162,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'162','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(163,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'163','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(164,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'164','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(165,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'165','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(166,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'166','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(167,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'167','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(168,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'168','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(169,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'169','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(170,0,0,4,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00,'170','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',0,3),(488,0,0,1,1,1,0,0,'','',0.000000,0,1,295.000000,0.000000,'',0.625000,0.00,'488','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(489,0,0,1,1,1,0,0,'','',0.000000,0,1,297.000000,0.000000,'',0.625000,0.00,'489','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(490,0,0,1,1,1,0,0,'','',0.000000,0,1,257.000000,0.000000,'',0.625000,0.00,'490','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(491,0,0,1,1,1,0,0,'','',0.000000,0,1,219.000000,0.000000,'',0.625000,0.00,'491','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(492,0,0,1,1,1,0,0,'','',0.000000,0,1,172.000000,0.000000,'',0.625000,0.00,'492','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(493,0,0,1,1,1,0,0,'','',0.000000,0,1,226.000000,0.000000,'',0.625000,0.00,'493','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(494,0,0,1,1,1,0,0,'','',0.000000,0,1,83.000000,0.000000,'',0.625000,0.00,'494','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(495,0,0,1,1,1,0,0,'','',0.000000,0,1,196.000000,0.000000,'',0.625000,0.00,'495','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(496,0,0,1,1,1,0,0,'','',0.000000,0,1,244.000000,0.000000,'',0.625000,0.00,'496','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(497,0,0,1,1,1,0,0,'','',0.000000,0,1,260.000000,0.000000,'',0.625000,0.00,'497','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(498,0,0,1,1,1,0,0,'','',0.000000,0,1,239.000000,0.000000,'',0.625000,0.00,'498','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(499,0,0,1,1,1,0,0,'','',0.000000,0,1,114.000000,0.000000,'',0.625000,0.00,'499','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(500,0,0,1,1,1,0,0,'','',0.000000,0,1,156.000000,0.000000,'',0.625000,0.00,'500','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(501,0,0,1,1,1,0,0,'','',0.000000,0,1,199.000000,0.000000,'',0.625000,0.00,'501','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(502,0,0,1,1,1,0,0,'','',0.000000,0,1,260.000000,0.000000,'',0.625000,0.00,'502','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(503,0,0,1,1,1,0,0,'','',0.000000,0,1,270.000000,0.000000,'',0.625000,0.00,'503','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(504,0,0,1,1,1,0,0,'','',0.000000,0,1,193.000000,0.000000,'',0.625000,0.00,'504','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(505,0,0,1,1,1,0,0,'','',0.000000,0,1,319.000000,0.000000,'',0.625000,0.00,'505','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(506,0,0,1,1,1,0,0,'','',0.000000,0,1,223.000000,0.000000,'',0.625000,0.00,'506','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(507,0,0,1,1,1,0,0,'','',0.000000,0,1,201.000000,0.000000,'',0.625000,0.00,'507','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(508,0,0,1,1,1,0,0,'','',0.000000,0,1,68.000000,0.000000,'',0.625000,0.00,'508','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(509,0,0,1,1,1,0,0,'','',0.000000,0,1,197.000000,0.000000,'',0.625000,0.00,'509','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(510,0,0,1,1,1,0,0,'','',0.000000,0,1,184.000000,0.000000,'',0.625000,0.00,'510','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(511,0,0,1,1,1,0,0,'','',0.000000,0,1,177.000000,0.000000,'',0.625000,0.00,'511','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(512,0,0,1,1,1,0,0,'','',0.000000,0,1,160.000000,0.000000,'',0.625000,0.00,'512','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(513,0,0,1,1,1,0,0,'','',0.000000,0,1,204.000000,0.000000,'',0.625000,0.00,'513','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(514,0,0,1,1,1,0,0,'','',0.000000,0,1,93.000000,0.000000,'',0.625000,0.00,'514','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(515,0,0,1,1,1,0,0,'','',0.000000,0,1,213.000000,0.000000,'',0.625000,0.00,'515','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(516,0,0,1,1,1,0,0,'','',0.000000,0,1,260.000000,0.000000,'',0.625000,0.00,'516','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(517,0,0,1,1,1,0,0,'','',0.000000,0,1,177.000000,0.000000,'',0.625000,0.00,'517','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(518,0,0,1,1,1,0,0,'','',0.000000,0,1,250.000000,0.000000,'',0.625000,0.00,'518','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(519,0,0,1,1,1,0,0,'','',0.000000,0,1,112.000000,0.000000,'',0.625000,0.00,'519','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(520,0,0,1,1,1,0,0,'','',0.000000,0,1,146.000000,0.000000,'',0.625000,0.00,'520','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(521,0,0,1,1,1,0,0,'','',0.000000,0,1,156.000000,0.000000,'',0.625000,0.00,'521','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(522,0,0,1,1,1,0,0,'','',0.000000,0,1,109.000000,0.000000,'',0.625000,0.00,'522','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(523,0,0,1,1,1,0,0,'','',0.000000,0,1,150.000000,0.000000,'',0.625000,0.00,'523','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(524,0,0,1,1,1,0,0,'','',0.000000,0,1,88.000000,0.000000,'',0.625000,0.00,'524','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(525,0,0,1,1,1,0,0,'','',0.000000,0,1,207.000000,0.000000,'',0.625000,0.00,'525','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(526,0,0,1,1,1,0,0,'','',0.000000,0,1,223.000000,0.000000,'',0.625000,0.00,'526','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(527,0,0,1,1,1,0,0,'','',0.000000,0,1,255.000000,0.000000,'',0.625000,0.00,'527','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(528,0,0,1,1,1,0,0,'','',0.000000,0,1,198.000000,0.000000,'',0.625000,0.00,'528','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(529,0,0,1,1,1,0,0,'','',0.000000,0,1,156.000000,0.000000,'',0.625000,0.00,'529','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(530,0,0,1,1,1,0,0,'','',0.000000,0,1,270.000000,0.000000,'',0.625000,0.00,'530','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(531,0,0,1,1,1,0,0,'','',0.000000,0,1,317.000000,0.000000,'',0.625000,0.00,'531','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(532,0,0,1,1,1,0,0,'','',0.000000,0,1,187.000000,0.000000,'',0.625000,0.00,'532','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(533,0,0,1,1,1,0,0,'','',0.000000,0,1,291.000000,0.000000,'',0.625000,0.00,'533','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(534,0,0,1,1,1,0,0,'','',0.000000,0,1,57.000000,0.000000,'',0.625000,0.00,'534','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(535,0,0,1,1,1,0,0,'','',0.000000,0,1,188.000000,0.000000,'',0.625000,0.00,'535','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(536,0,0,1,1,1,0,0,'','',0.000000,0,1,226.000000,0.000000,'',0.625000,0.00,'536','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(537,0,0,1,1,1,0,0,'','',0.000000,0,1,260.000000,0.000000,'',0.625000,0.00,'537','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(538,0,0,1,1,1,0,0,'','',0.000000,0,1,199.000000,0.000000,'',0.625000,0.00,'538','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(539,0,0,1,1,1,0,0,'','',0.000000,0,1,321.000000,0.000000,'',0.625000,0.00,'539','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(540,0,0,1,1,1,0,0,'','',0.000000,0,1,261.000000,0.000000,'',0.625000,0.00,'540','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(541,0,0,1,1,1,0,0,'','',0.000000,0,1,160.000000,0.000000,'',0.625000,0.00,'541','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(542,0,0,1,1,1,0,0,'','',0.000000,0,1,252.000000,0.000000,'',0.625000,0.00,'542','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(543,0,0,1,1,1,0,0,'','',0.000000,0,1,297.000000,0.000000,'',0.625000,0.00,'543','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(544,0,0,1,1,1,0,0,'','',0.000000,0,1,236.000000,0.000000,'',0.625000,0.00,'544','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(545,0,0,1,1,1,0,0,'','',0.000000,0,1,248.000000,0.000000,'',0.625000,0.00,'545','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(546,0,0,1,1,1,0,0,'','',0.000000,0,1,125.000000,0.000000,'',0.625000,0.00,'546','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(547,0,0,1,1,1,0,0,'','',0.000000,0,1,325.000000,0.000000,'',0.625000,0.00,'547','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(548,0,0,1,1,1,0,0,'','',0.000000,0,1,325.000000,0.000000,'',0.625000,0.00,'548','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(549,0,0,1,1,1,0,0,'','',0.000000,0,1,205.000000,0.000000,'',0.625000,0.00,'549','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(550,0,0,1,1,1,0,0,'','',0.000000,0,1,164.000000,0.000000,'',0.625000,0.00,'550','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(551,0,0,1,1,1,0,0,'','',0.000000,0,1,236.000000,0.000000,'',0.625000,0.00,'551','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(552,0,0,1,1,1,0,0,'','',0.000000,0,1,187.000000,0.000000,'',0.625000,0.00,'552','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(553,0,0,1,1,1,0,0,'','',0.000000,0,1,208.000000,0.000000,'',0.625000,0.00,'553','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(554,0,0,1,1,1,0,0,'','',0.000000,0,1,173.000000,0.000000,'',0.625000,0.00,'554','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(555,0,0,1,1,1,0,0,'','',0.000000,0,1,291.000000,0.000000,'',0.625000,0.00,'555','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(556,0,0,1,1,1,0,0,'','',0.000000,0,1,166.000000,0.000000,'',0.625000,0.00,'556','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(557,0,0,1,1,1,0,0,'','',0.000000,0,1,79.000000,0.000000,'',0.625000,0.00,'557','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(558,0,0,1,1,1,0,0,'','',0.000000,0,1,102.000000,0.000000,'',0.625000,0.00,'558','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(559,0,0,1,1,1,0,0,'','',0.000000,0,1,65.000000,0.000000,'',0.625000,0.00,'559','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(560,0,0,1,1,1,0,0,'','',0.000000,0,1,73.000000,0.000000,'',0.625000,0.00,'560','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(561,0,0,1,1,1,0,0,'','',0.000000,0,1,100.000000,0.000000,'',0.625000,0.00,'561','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(562,0,0,1,1,1,0,0,'','',0.000000,0,1,49.000000,0.000000,'',0.625000,0.00,'562','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(563,0,0,1,1,1,0,0,'','',0.000000,0,1,113.000000,0.000000,'',0.625000,0.00,'563','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(564,0,0,1,1,1,0,0,'','',0.000000,0,1,76.000000,0.000000,'',0.625000,0.00,'564','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(565,0,0,1,1,1,0,0,'','',0.000000,0,1,161.000000,0.000000,'',0.625000,0.00,'565','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(566,0,0,1,1,1,0,0,'','',0.000000,0,1,80.000000,0.000000,'',0.625000,0.00,'566','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(567,0,0,1,1,1,0,0,'','',0.000000,0,1,59.000000,0.000000,'',0.625000,0.00,'567','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(568,0,0,1,1,1,0,0,'','',0.000000,0,1,99.000000,0.000000,'',0.625000,0.00,'568','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(569,0,0,1,1,1,0,0,'','',0.000000,0,1,64.000000,0.000000,'',0.625000,0.00,'569','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(570,0,0,1,1,1,0,0,'','',0.000000,0,1,63.000000,0.000000,'',0.625000,0.00,'570','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(571,0,0,1,1,1,0,0,'','',0.000000,0,1,133.000000,0.000000,'',0.625000,0.00,'571','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(572,0,0,1,1,1,0,0,'','',0.000000,0,1,82.000000,0.000000,'',0.625000,0.00,'572','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(573,0,0,1,1,1,0,0,'','',0.000000,0,1,75.000000,0.000000,'',0.625000,0.00,'573','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(574,0,0,1,1,1,0,0,'','',0.000000,0,1,102.000000,0.000000,'',0.625000,0.00,'574','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(575,0,0,1,1,1,0,0,'','',0.000000,0,1,63.000000,0.000000,'',0.625000,0.00,'575','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(576,0,0,1,1,1,0,0,'','',0.000000,0,1,97.000000,0.000000,'',0.625000,0.00,'576','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(577,0,0,1,1,1,0,0,'','',0.000000,0,1,90.000000,0.000000,'',0.625000,0.00,'577','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(578,0,0,1,1,1,0,0,'','',0.000000,0,1,90.000000,0.000000,'',0.625000,0.00,'578','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(579,0,0,1,1,1,0,0,'','',0.000000,0,1,81.000000,0.000000,'',0.625000,0.00,'579','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(580,0,0,1,1,1,0,0,'','',0.000000,0,1,67.000000,0.000000,'',0.625000,0.00,'580','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(581,0,0,1,1,1,0,0,'','',0.000000,0,1,83.000000,0.000000,'',0.625000,0.00,'581','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(582,0,0,1,1,1,0,0,'','',0.000000,0,1,69.000000,0.000000,'',0.625000,0.00,'582','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(583,0,0,1,1,1,0,0,'','',0.000000,0,1,77.000000,0.000000,'',0.625000,0.00,'583','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(584,0,0,1,1,1,0,0,'','',0.000000,0,1,55.000000,0.000000,'',0.625000,0.00,'584','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(585,0,0,1,1,1,0,0,'','',0.000000,0,1,117.000000,0.000000,'',0.625000,0.00,'585','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(586,0,0,1,1,1,0,0,'','',0.000000,0,1,37.000000,0.000000,'',0.625000,0.00,'586','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(587,0,0,1,1,1,0,0,'','',0.000000,0,1,163.000000,0.000000,'',0.625000,0.00,'587','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(588,0,0,1,1,1,0,0,'','',0.000000,0,1,177.000000,0.000000,'',0.625000,0.00,'588','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(589,0,0,1,1,1,0,0,'','',0.000000,0,1,196.000000,0.000000,'',0.625000,0.00,'589','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(590,0,0,1,1,1,0,0,'','',0.000000,0,1,94.000000,0.000000,'',0.625000,0.00,'590','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(591,0,0,1,1,1,0,0,'','',0.000000,0,1,79.000000,0.000000,'',0.625000,0.00,'591','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(592,0,0,1,1,1,0,0,'','',0.000000,0,1,88.000000,0.000000,'',0.625000,0.00,'592','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(593,0,0,1,1,1,0,0,'','',0.000000,0,1,122.000000,0.000000,'',0.625000,0.00,'593','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(594,0,0,1,1,1,0,0,'','',0.000000,0,1,120.000000,0.000000,'',0.625000,0.00,'594','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(595,0,0,1,1,1,0,0,'','',0.000000,0,1,43.000000,0.000000,'',0.625000,0.00,'595','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(596,0,0,1,1,1,0,0,'','',0.000000,0,1,83.000000,0.000000,'',0.625000,0.00,'596','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(597,0,0,1,1,1,0,0,'','',0.000000,0,1,63.000000,0.000000,'',0.625000,0.00,'597','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(598,0,0,1,1,1,0,0,'','',0.000000,0,1,52.000000,0.000000,'',0.625000,0.00,'598','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(599,0,0,1,1,1,0,0,'','',0.000000,0,1,82.000000,0.000000,'',0.625000,0.00,'599','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(600,0,0,1,1,1,0,0,'','',0.000000,0,1,127.000000,0.000000,'',0.625000,0.00,'600','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(601,0,0,1,1,1,0,0,'','',0.000000,0,1,117.000000,0.000000,'',0.625000,0.00,'601','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(602,0,0,1,1,1,0,0,'','',0.000000,0,1,98.000000,0.000000,'',0.625000,0.00,'602','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(603,0,0,1,1,1,0,0,'','',0.000000,0,1,135.000000,0.000000,'',0.625000,0.00,'603','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(604,0,0,1,1,1,0,0,'','',0.000000,0,1,64.000000,0.000000,'',0.625000,0.00,'604','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(605,0,0,1,1,1,0,0,'','',0.000000,0,1,57.000000,0.000000,'',0.625000,0.00,'605','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(606,0,0,1,1,1,0,0,'','',0.000000,0,1,57.000000,0.000000,'',0.625000,0.00,'606','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(607,0,0,1,1,1,0,0,'','',0.000000,0,1,119.000000,0.000000,'',0.625000,0.00,'607','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(608,0,0,1,1,1,0,0,'','',0.000000,0,1,109.000000,0.000000,'',0.625000,0.00,'608','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(609,0,0,1,1,1,0,0,'','',0.000000,0,1,57.000000,0.000000,'',0.625000,0.00,'609','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(610,0,0,1,1,1,0,0,'','',0.000000,0,1,52.000000,0.000000,'',0.625000,0.00,'610','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(611,0,0,1,1,1,0,0,'','',0.000000,0,1,57.000000,0.000000,'',0.625000,0.00,'611','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(612,0,0,1,1,1,0,0,'','',0.000000,0,1,119.000000,0.000000,'',0.625000,0.00,'612','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(613,0,0,1,1,1,0,0,'','',0.000000,0,1,99.000000,0.000000,'',0.625000,0.00,'613','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(614,0,0,1,1,1,0,0,'','',0.000000,0,1,88.000000,0.000000,'',0.625000,0.00,'614','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(615,0,0,1,1,1,0,0,'','',0.000000,0,1,70.000000,0.000000,'',0.625000,0.00,'615','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(616,0,0,1,1,1,0,0,'','',0.000000,0,1,84.000000,0.000000,'',0.625000,0.00,'616','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(617,0,0,1,1,1,0,0,'','',0.000000,0,1,84.000000,0.000000,'',0.625000,0.00,'617','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(618,0,0,1,1,1,0,0,'','',0.000000,0,1,97.000000,0.000000,'',0.625000,0.00,'618','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(619,0,0,1,1,1,0,0,'','',0.000000,0,1,110.000000,0.000000,'',0.625000,0.00,'619','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(620,0,0,1,1,1,0,0,'','',0.000000,0,1,135.000000,0.000000,'',0.625000,0.00,'620','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(621,0,0,1,1,1,0,0,'','',0.000000,0,1,101.000000,0.000000,'',0.625000,0.00,'621','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(622,0,0,1,1,1,0,0,'','',0.000000,0,1,108.000000,0.000000,'',0.625000,0.00,'622','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(623,0,0,1,1,1,0,0,'','',0.000000,0,1,109.000000,0.000000,'',0.625000,0.00,'623','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(624,0,0,1,1,1,0,0,'','',0.000000,0,1,88.000000,0.000000,'',0.625000,0.00,'624','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(625,0,0,1,1,1,0,0,'','',0.000000,0,1,68.000000,0.000000,'',0.625000,0.00,'625','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(626,0,0,1,1,1,0,0,'','',0.000000,0,1,94.000000,0.000000,'',0.625000,0.00,'626','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(627,0,0,1,1,1,0,0,'','',0.000000,0,1,88.000000,0.000000,'',0.625000,0.00,'627','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(628,0,0,1,1,1,0,0,'','',0.000000,0,1,139.000000,0.000000,'',0.625000,0.00,'628','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(629,0,0,1,1,1,0,0,'','',0.000000,0,1,64.000000,0.000000,'',0.625000,0.00,'629','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(630,0,0,1,1,1,0,0,'','',0.000000,0,1,260.000000,0.000000,'',0.625000,0.00,'630','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(631,0,0,1,1,1,0,0,'','',0.000000,0,1,143.000000,0.000000,'',0.625000,0.00,'631','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(632,0,0,1,1,1,0,0,'','',0.000000,0,1,291.000000,0.000000,'',0.625000,0.00,'632','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(633,0,0,1,1,1,0,0,'','',0.000000,0,1,483.000000,0.000000,'',0.625000,0.00,'633','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(634,0,0,1,1,1,0,0,'','',0.000000,0,1,192.000000,0.000000,'',0.625000,0.00,'634','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(635,0,0,1,1,1,0,0,'','',0.000000,0,1,141.000000,0.000000,'',0.625000,0.00,'635','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(636,0,0,1,1,1,0,0,'','',0.000000,0,1,311.000000,0.000000,'',0.625000,0.00,'636','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(637,0,0,1,1,1,0,0,'','',0.000000,0,1,141.000000,0.000000,'',0.625000,0.00,'637','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(638,0,0,1,1,1,0,0,'','',0.000000,0,1,241.000000,0.000000,'',0.625000,0.00,'638','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(639,0,0,1,1,1,0,0,'','',0.000000,0,1,162.000000,0.000000,'',0.625000,0.00,'639','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(640,0,0,1,1,1,0,0,'','',0.000000,0,1,177.000000,0.000000,'',0.625000,0.00,'640','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(641,0,0,1,1,1,0,0,'','',0.000000,0,1,181.000000,0.000000,'',0.625000,0.00,'641','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(642,0,0,1,1,1,0,0,'','',0.000000,0,1,316.000000,0.000000,'',0.625000,0.00,'642','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(643,0,0,1,1,1,0,0,'','',0.000000,0,1,252.000000,0.000000,'',0.625000,0.00,'643','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',0,3),(647,0,0,1,1,1,0,0,'','',0.000000,0,1,208.000000,0.000000,'',0.625000,0.00,'647','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(648,0,0,1,1,1,0,0,'','',0.000000,0,1,198.000000,0.000000,'',0.625000,0.00,'648','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(649,0,0,1,1,1,0,0,'','',0.000000,0,1,205.000000,0.000000,'',0.625000,0.00,'649','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(650,0,0,1,1,1,0,0,'','',0.000000,0,1,249.000000,0.000000,'',0.625000,0.00,'650','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(651,0,0,1,1,1,0,0,'','',0.000000,0,1,223.000000,0.000000,'',0.625000,0.00,'651','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(652,0,0,1,1,1,0,0,'','',0.000000,0,1,151.000000,0.000000,'',0.625000,0.00,'652','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(653,0,0,1,1,1,0,0,'','',0.000000,0,1,211.000000,0.000000,'',0.625000,0.00,'653','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(654,0,0,1,1,1,0,0,'','',0.000000,0,1,262.000000,0.000000,'',0.625000,0.00,'654','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(655,0,0,1,1,1,0,0,'','',0.000000,0,1,370.000000,0.000000,'',0.625000,0.00,'655','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(656,0,0,1,1,1,0,0,'','',0.000000,0,1,235.000000,0.000000,'',0.625000,0.00,'656','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(657,0,0,1,1,1,0,0,'','',0.000000,0,1,283.000000,0.000000,'',0.625000,0.00,'657','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(658,0,0,1,1,1,0,0,'','',0.000000,0,1,146.000000,0.000000,'',0.625000,0.00,'658','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(659,0,0,1,1,1,0,0,'','',0.000000,0,1,201.000000,0.000000,'',0.625000,0.00,'659','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(660,0,0,1,1,1,0,0,'','',0.000000,0,1,272.000000,0.000000,'',0.625000,0.00,'660','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(661,0,0,1,1,1,0,0,'','',0.000000,0,1,177.000000,0.000000,'',0.625000,0.00,'661','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(662,0,0,1,1,1,0,0,'','',0.000000,0,1,198.000000,0.000000,'',0.625000,0.00,'662','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(663,0,0,1,1,1,0,0,'','',0.000000,0,1,619.000000,0.000000,'',0.625000,0.00,'663','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(664,0,0,1,1,1,0,0,'','',0.000000,0,1,335.000000,0.000000,'',0.625000,0.00,'664','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(665,0,0,1,1,1,0,0,'','',0.000000,0,1,80.000000,0.000000,'',0.625000,0.00,'665','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(666,0,0,1,1,1,0,0,'','',0.000000,0,1,147.000000,0.000000,'',0.625000,0.00,'666','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(667,0,0,1,1,1,0,0,'','',0.000000,0,1,178.000000,0.000000,'',0.625000,0.00,'667','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(668,0,0,1,1,1,0,0,'','',0.000000,0,1,187.000000,0.000000,'',0.625000,0.00,'668','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(669,0,0,1,1,1,0,0,'','',0.000000,0,1,244.000000,0.000000,'',0.625000,0.00,'669','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(670,0,0,1,1,1,0,0,'','',0.000000,0,1,114.000000,0.000000,'',0.625000,0.00,'670','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(671,0,0,1,1,1,0,0,'','',0.000000,0,1,276.000000,0.000000,'',0.625000,0.00,'671','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(672,0,0,1,1,1,0,0,'','',0.000000,0,1,208.000000,0.000000,'',0.625000,0.00,'672','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(673,0,0,1,1,1,0,0,'','',0.000000,0,1,208.000000,0.000000,'',0.625000,0.00,'673','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(674,0,0,1,1,1,0,0,'','',0.000000,0,1,263.000000,0.000000,'',0.625000,0.00,'674','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3),(675,0,0,1,1,1,0,0,'','',0.000000,0,1,187.000000,0.000000,'',0.625000,0.00,'675','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',0,3);
/*!40000 ALTER TABLE `ps_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_attachment`
--

DROP TABLE IF EXISTS `ps_product_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_attachment` (
  `id_product` int(10) unsigned NOT NULL,
  `id_attachment` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_attachment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_attachment`
--

LOCK TABLES `ps_product_attachment` WRITE;
/*!40000 ALTER TABLE `ps_product_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_attribute`
--

DROP TABLE IF EXISTS `ps_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_attribute` (
  `id_product_attribute` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int(10) NOT NULL DEFAULT '0',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `default_on` tinyint(1) unsigned DEFAULT NULL,
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `available_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id_product_attribute`),
  UNIQUE KEY `product_default` (`id_product`,`default_on`),
  KEY `product_attribute_product` (`id_product`),
  KEY `reference` (`reference`),
  KEY `supplier_reference` (`supplier_reference`),
  KEY `id_product_id_product_attribute` (`id_product_attribute`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_attribute`
--

LOCK TABLES `ps_product_attribute` WRITE;
/*!40000 ALTER TABLE `ps_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_attribute_combination`
--

DROP TABLE IF EXISTS `ps_product_attribute_combination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_attribute_combination` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_product_attribute`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_attribute_combination`
--

LOCK TABLES `ps_product_attribute_combination` WRITE;
/*!40000 ALTER TABLE `ps_product_attribute_combination` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_attribute_combination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_attribute_image`
--

DROP TABLE IF EXISTS `ps_product_attribute_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_attribute_image` (
  `id_product_attribute` int(10) unsigned NOT NULL,
  `id_image` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product_attribute`,`id_image`),
  KEY `id_image` (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_attribute_image`
--

LOCK TABLES `ps_product_attribute_image` WRITE;
/*!40000 ALTER TABLE `ps_product_attribute_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_attribute_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_attribute_shop`
--

DROP TABLE IF EXISTS `ps_product_attribute_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_attribute_shop` (
  `id_product` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `default_on` tinyint(1) unsigned DEFAULT NULL,
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `available_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id_product_attribute`,`id_shop`),
  UNIQUE KEY `id_product` (`id_product`,`id_shop`,`default_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_attribute_shop`
--

LOCK TABLES `ps_product_attribute_shop` WRITE;
/*!40000 ALTER TABLE `ps_product_attribute_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_attribute_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_carrier`
--

DROP TABLE IF EXISTS `ps_product_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_carrier` (
  `id_product` int(10) unsigned NOT NULL,
  `id_carrier_reference` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_carrier_reference`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_carrier`
--

LOCK TABLES `ps_product_carrier` WRITE;
/*!40000 ALTER TABLE `ps_product_carrier` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_country_tax`
--

DROP TABLE IF EXISTS `ps_product_country_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_country_tax` (
  `id_product` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_tax` int(11) NOT NULL,
  PRIMARY KEY (`id_product`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_country_tax`
--

LOCK TABLES `ps_product_country_tax` WRITE;
/*!40000 ALTER TABLE `ps_product_country_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_country_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_download`
--

DROP TABLE IF EXISTS `ps_product_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_download` (
  `id_product_download` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `display_filename` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_expiration` datetime DEFAULT NULL,
  `nb_days_accessible` int(10) unsigned DEFAULT NULL,
  `nb_downloadable` int(10) unsigned DEFAULT '1',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shareable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_product_download`),
  UNIQUE KEY `id_product` (`id_product`),
  KEY `product_active` (`id_product`,`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_download`
--

LOCK TABLES `ps_product_download` WRITE;
/*!40000 ALTER TABLE `ps_product_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_group_reduction_cache`
--

DROP TABLE IF EXISTS `ps_product_group_reduction_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_group_reduction_cache` (
  `id_product` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `reduction` decimal(4,3) NOT NULL,
  PRIMARY KEY (`id_product`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_group_reduction_cache`
--

LOCK TABLES `ps_product_group_reduction_cache` WRITE;
/*!40000 ALTER TABLE `ps_product_group_reduction_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_group_reduction_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_lang`
--

DROP TABLE IF EXISTS `ps_product_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_lang` (
  `id_product` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `description_short` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `available_now` varchar(255) DEFAULT NULL,
  `available_later` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_product`,`id_shop`,`id_lang`),
  KEY `id_lang` (`id_lang`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_lang`
--

LOCK TABLES `ps_product_lang` WRITE;
/*!40000 ALTER TABLE `ps_product_lang` DISABLE KEYS */;
INSERT INTO `ps_product_lang` VALUES (1,1,1,'acero madre perla existente en acero amarillo rosa y plata','','juego-bvlgari','','','','Juego bvlgari','',''),(2,1,1,'acero existente en acero amarillo rosa y plata','','pulso-tous','','','','Pulso Tous','',''),(3,1,1,'acero existente en acero amarillo rosa y plata','','pulso-cartier','','','','Pulso cartier','',''),(5,1,1,'acero existente en acero amarillo rosa y plata','','pulso-tous','','','','Pulso Tous','',''),(6,1,1,'acero con zirconia en acero amarillo rosa y plata','','pulso-tiffany','','','','Pulso tiffany','',''),(7,1,1,'acero con zirconia en acero amarillo rosa y plata','','pulso-tous','','','','Pulso Tous','',''),(8,1,1,'acero existente en acero amarillo rosa y plata','','brazalete-mk','','','','Brazalete Mk','',''),(9,1,1,'acero con zirconia en acero amarillo rosa y plata','','juego-bvlgari','','','','Juego bvlgari','',''),(10,1,1,'acero con zirconia en acero amarillo rosa y plata','','pulso-bvlgari','','','','Pulso bvlgari','',''),(11,1,1,'acero con zirconia en acero amarillo rosa y plata','','pulso-channel-marquiz','','','','Pulso channel marquiz','',''),(12,1,1,'acero con zirconia en acero amarillo rosa y plata','','pulso-channel-doble-cz','','','','Pulso channel doble cz','',''),(13,1,1,'acero con zirconia y onix en acero amarillo rosa y plata','','juego-bvlgari-onix-3-cz','','','','Juego bvlgari onix 3 cz','',''),(14,1,1,'acero existente en acero amarillo rosa y plata','','pulso-tiffany-placa','','','','Pulso tiffany placa','',''),(15,1,1,'acero existente en acero amarillo rosa y plata','','juego-channel-zirconia','','','','Juego channel zirconia','',''),(16,1,1,'acero con zirconia en acero amarillo rosa y plata','','juego-bvlgari-zirconia','','','','Juego bvlgari zirconia','',''),(17,1,1,'acero existente en acero amarillo rosa y plata','','pulso-cartier-zirconia','','','','Pulso cartier zirconia','',''),(18,1,1,'acero existente en acero amarillo rosa y plata','','pulso-triple-tiffany-corazon','','','','Pulso triple tiffany corazon','',''),(19,1,1,'acero existente en acero amarillo rosa y plata','','juego-tous-marco-zirconia','','','','Juego tous marco zirconia','',''),(20,1,1,'acero existente en acero amarillo rosa y plata','','pulso-channel-num-5','','','','Pulso channel num. 5','',''),(21,1,1,'acero existente en acero amarillo rosa y plata','','pulso-doble-tous','','','','Pulso doble tous','',''),(22,1,1,'acero existente en acero amarillo rosa y plata','','broquel-tous','','','','Broquel tous','',''),(23,1,1,'acero existente en acero amarillo rosa y plata','','arete-largo-channel-num-5','','','','Arete largo channel num. 5','',''),(24,1,1,'acero existente en acero amarillo rosa y plata','','pulso-tiffany-corazon-grueso','','','','Pulso tiffany corazon grueso','',''),(25,1,1,'acero existente en acero amarillo rosa y plata','','broquel-bvlgari-madre-perla','','','','Broquel bvlgari madre perla','',''),(26,1,1,'acero existente en acero amarillo rosa y plata','','broquel-bvlgari-clasico-onix','','','','Broquel bvlgari clasico onix','',''),(27,1,1,'acero existente en acero amarillo rosa y plata','','media-arracada-cartier','','','','Media arracada cartier','',''),(28,1,1,'acero existente en acero amarillo rosa y plata','','pulso-cartier-con-desarmador','','','','Pulso cartier con desarmador','',''),(29,1,1,'acero existente en acero amarillo rosa y plata','','arracada-cartier-con-argolla','','','','Arracada cartier con argolla','',''),(30,1,1,'acero existente en acero amarillo rosa y plata','','anillo-cartier-zirconia','','','','Anillo cartier zirconia','',''),(31,1,1,'acero existente en acero amarillo rosa y plata','','juego-cartier-zirconia-3-argollas','','','','Juego cartier zirconia 3 argollas','',''),(32,1,1,'acero existente en acero amarillo rosa y plata','','anillo-alianza-channel','','','','Anillo alianza channel','',''),(33,1,1,'acero existente en acero amarillo rosa y plata','','juego-mk-con-marquiz','','','','Juego mk con marquiz','',''),(34,1,1,'acero existente en acero amarillo rosa y plata','','juego-bvlgari-zirconia-saliente','','','','Juego bvlgari zirconia saliente','',''),(35,1,1,'acero existente en acero amarillo rosa y plata','','anillo-alianza-tiffany-corazon','','','','Anillo alianza tiffany corazon','',''),(36,1,1,'acero existente en acero amarillo rosa y plata','','juego-triple-argolla-bvlgari','','','','Juego triple argolla bvlgari','',''),(37,1,1,'acero existente en acero amarillo rosa y plata','','juego-gucci-corazon','','','','Juego gucci corazon','',''),(38,1,1,'acero existente en acero amarillo rosa y plata','','juego-cartier-tornillo','','','','Juego cartier tornillo','',''),(39,1,1,'acero existente en acero amarillo rosa y plata','','juego-cartier-ceramica','','','','Juego cartier ceramica','',''),(40,1,1,'acero existente en acero amarillo rosa y plata','','juego-tiffany-argolla','','','','Juego tiffany argolla','',''),(41,1,1,'acero existente en acero solo amarillo','','juego-cuadro-tous-madre-perla','','','','Juego cuadro tous madre perla','',''),(42,1,1,'acero existente en acero solo amarillo','','juego-mk-cruz-con-zirconia','','','','Juego mk cruz con zirconia','',''),(43,1,1,'acero existente en acero amarillo rosa y plata','','media-arracada-cartier-baguette','','','','Media arracada cartier baguette','',''),(44,1,1,'acero existente en acero amarillo rosa y plata','','broquel-redondo-cartier-con-lineas','','','','Broquel redondo cartier con lineas','',''),(45,1,1,'acero existente en acero amarillo rosa y plata','','pulso-piel-acero-ferragamo','','','','Pulso piel acero ferragamo','',''),(46,1,1,'acero existente solo en amarillo y plata','','pulso-rolex-eslabon-clasico','','','','Pulso rolex eslabon clasico','',''),(47,1,1,'acero existente solo en amarillo y plata','','pulso-rolex-eslabon-clasico','','','','Pulso rolex eslabon clasico','',''),(48,1,1,'acero existente solo en amarillo y plata','','pulso-herradura-ferragamo-piel','','','','Pulso herradura ferragamo piel','',''),(49,1,1,'acero existente solo en amarillo y plata','','pulso-rolex-ancla','','','','Pulso rolex ancla','',''),(50,1,1,'acero existente en acero amarillo rosa y plata','','pulso-flecha-rolex','','','','Pulso flecha rolex','',''),(51,1,1,'acero existente en acero amarillo rosa y plata','','pulso-herradura-ferragamo-piel','','','','Pulso herradura ferragamo piel','',''),(52,1,1,'acero existente en acero amarillo rosa y plata','','pulso-flecha-rolex','','','','Pulso flecha rolex','',''),(53,1,1,'acero existente en acero amarillo rosa y plata','','broquel-tiffany-dog','','','','Broquel tiffany dog','',''),(54,1,1,'acero existente en acero solo amarillo','','juego-tous-redondo','','','','Juego tous redondo','',''),(55,1,1,'acero existente en acero amarillo rosa y plata','','broquel-bvlgari-colgante-zirconia','','','','Broquel bvlgari colgante zirconia','',''),(56,1,1,'acero existente en acero amarillo rosa y plata','','broquel-bvlgari-rombo-zirconia','','','','Broquel bvlgari rombo zirconia','',''),(57,1,1,'acero existente en acero amarillo rosa y plata','','juego-tous-perla-zirconia','','','','Juego tous perla zirconia','',''),(58,1,1,'acero existente en acero amarillo rosa y plata','','arracada-channel-zirconia','','','','Arracada channel zirconia','',''),(59,1,1,'acero existente en acero amarillo rosa y plata','','arracada-cartier-con-esmalte','','','','Arracada cartier con esmalte','',''),(60,1,1,'acero existente en acero amarillo rosa y plata','','arete-tiffany-corazon-turquesa','','','','Arete tiffany corazon turquesa','',''),(61,1,1,'acero existente en acero amarillo rosa y plata','','broquel-bvlgari-onix-rueda-saliente','','','','Broquel bvlgari onix rueda saliente','',''),(62,1,1,'acero existente en acero amarillo rosa y plata','','broquel-cartier-con-esmalte-cz','','','','Broquel cartier con esmalte cz','',''),(63,1,1,'acero existente en acero solo amarillo','','juego-channel-zirconia','','','','Juego channel zirconia','',''),(64,1,1,'acero existente en acero amarillo rosa y plata','','broquel-llave-tiffany','','','','Broquel llave tiffany','',''),(65,1,1,'acero existente en acero solo amarillo','','juego-mk','','','','Juego mk','',''),(66,1,1,'acero existente en acero amarillo rosa y plata','','huggie-mk-rombo','','','','Huggie mk rombo','',''),(67,1,1,'acero existente en acero amarillo rosa y plata','','broquel-bvlgari-onix-rueda-saliente','','','','Broquel bvlgari onix rueda saliente','',''),(68,1,1,'acero existente en acero amarillo rosa y plata','','juego-channel-oval-onix','','','','Juego channel oval onix','',''),(69,1,1,'acero existente en acero amarillo rosa y plata','','juego-cartier-corazon-madre-perla','','','','Juego cartier corazon madre perla','',''),(70,1,1,'acero existente en acero amarillo rosa y plata','','juego-channel-trebol-madre-perla','','','','Juego channel trebol madre perla','',''),(71,1,1,'acero existente en acero amarillo rosa y plata','','juego-cartier-corazon-onix','','','','Juego cartier corazon onix','',''),(72,1,1,'acero existente en acero amarillo rosa y plata','','juego-channel-trebol-onix','','','','Juego channel trebol onix','',''),(73,1,1,'acero existente en acero amarillo rosa y plata','','pulso-mk-placa','','','','Pulso mk placa','',''),(74,1,1,'acero existente en acero amarillo rosa y plata','','arete-channel-perla','','','','Arete channel perla','',''),(75,1,1,'acero existente en acero amarillo rosa y plata','','juego-corazon-cartier','','','','Juego corazon cartier','',''),(76,1,1,'acero existente en acero amarillo rosa y plata','','pulso-tous-cristal','','','','Pulso tous cristal','',''),(77,1,1,'acero existente en acero amarillo rosa y plata','','pulso-bvlgari-zirconia','','','','Pulso bvlgari zirconia','',''),(78,1,1,'acero existente en acero amarillo rosa y plata','','pulso-bvlgari-eslabon-clasico','','','','Pulso bvlgari eslabon clasico','',''),(79,1,1,'acero existente en acero amarillo rosa y plata','','pulso-mk-cuadro-zirconia-madre-perla','','','','Pulso mk cuadro zirconia madre perla','',''),(80,1,1,'acero existente en acero amarillo rosa y plata','','pulso-mk-animal-print','','','','Pulso mk animal print','',''),(81,1,1,'acero existente en acero amarillo rosa y plata','','pulso-mk-tradicional','','','','Pulso mk tradicional','',''),(82,1,1,'acero existente en acero amarillo rosa y plata','','juego-bvlgari-abanico','','','','Juego bvlgari abanico','',''),(83,1,1,'acero existente en acero amarillo rosa y plata','','pulso-mk-cuadro-zirconia-onix','','','','Pulso mk cuadro zirconia onix','',''),(85,1,1,'acero existente en acero amarillo rosa y plata','','pulso-bvlgari-clasico-zirconia','','','','Pulso bvlgari clasico zirconia','',''),(86,1,1,'acero existente en acero amarillo rosa y plata','','pulso-tiffany-corazon-zirconia','','','','Pulso tiffany corazon zirconia','',''),(87,1,1,'acero existente en acero amarillo rosa y plata','','pulso-mk-doble-animal-print','','','','Pulso mk doble animal print','',''),(88,1,1,'acero existente en acero amarillo rosa y plata','','pulso-tous-delgado-madre-perla','','','','Pulso tous delgado madre perla','',''),(89,1,1,'acero existente solo en amarillo y plata','','juego-candado-de-channel','','','','Juego candado de channel','',''),(90,1,1,'acero existente solo en amarillo y plata','','juego-channel-clasico','','','','Juego channel clasico','',''),(91,1,1,'acero existente en acero amarillo rosa y plata','','juego-bvlgari-zirconia','','','','Juego bvlgari zirconia','',''),(92,1,1,'acero existente en acero amarillo rosa y plata','','juego-channel-rombo','','','','Juego channel rombo','',''),(93,1,1,'acero existente en acero amarillo rosa y plata','','pulso-tous-delgado-onix','','','','Pulso tous delgado onix','',''),(94,1,1,'acero existente en acero amarillo rosa y plata','','anillo-tornillo-de-cartier','','','','Anillo tornillo de cartier','',''),(95,1,1,'acero existente en acero amarillo rosa y plata','','juego-tous-madre-perla-y-onix','','','','Juego tous madre perla y onix','',''),(96,1,1,'acero existente en acero solo amarillo','','juego-mk-candado','','','','Juego mk candado','',''),(97,1,1,'acero existente en acero solo amarillo','','juego-bvlgari-esposas','','','','Juego bvlgari esposas','',''),(98,1,1,'acero existente en acero amarillo rosa y plata','','juego-channel-czirconia-colgante','','','','Juego channel czirconia colgante','',''),(99,1,1,'acero existente solo en amarillo y plata','','juego-bvlgari-onix-3-cz','','','','Juego bvlgari onix 3 cz','',''),(100,1,1,'acero existente solo en amarillo y plata','','juego-bvlgari-gota','','','','Juego bvlgari gota','',''),(101,1,1,'acero existente solo en amarillo y plata','','juego-bvlgari-b','','','','Juego bvlgari B','',''),(102,1,1,'acero existente solo en amarillo y plata','','juego-bvlgari-doble-circulo','','','','Juego bvlgari doble circulo','',''),(103,1,1,'acero existente solo en amarillo y plata','','juego-bvlgari-oval','','','','Juego bvlgari oval','',''),(104,1,1,'acero existente en acero solo amarillo','','juego-bvlgari-cruz','','','','Juego bvlgari cruz','',''),(105,1,1,'acero existente en acero solo amarillo','','juego-bvlgari-baguette','','','','Juego bvlgari baguette','',''),(106,1,1,'acero existente solo en amarillo y plata','','juego-cartier-2-zirconias','','','','Juego cartier 2 zirconias','',''),(107,1,1,'acero existente solo en amarillo y plata','','juego-cartier-logo','','','','Juego cartier logo','',''),(108,1,1,'acero existente en acero solo amarillo','','juego-bvulgari-redondo-zirconia','','','','Juego bvulgari redondo zirconia','',''),(109,1,1,'acero existente solo en amarillo y plata','','juego-channel-zirconia','','','','Juego channel zirconia','',''),(110,1,1,'acero existente en acero solo amarillo','','juego-channel-num-5','','','','Juego channel num. 5','',''),(111,1,1,'acero existente en acero amarillo rosa y plata','','juego-tous-3-osos','','','','Juego tous 3 osos','',''),(112,1,1,'acero existente en acero amarillo rosa y plata','','pulso-channel-canal-zirconias','','','','Pulso channel canal zirconias','',''),(113,1,1,'acero existente en acero amarillo rosa y plata','','pulso-clavo-de-cartier-con-pasta','','','','Pulso clavo de cartier con pasta','',''),(114,1,1,'acero existente en acero amarillo rosa y plata','','juego-cartier-sencillo','','','','Juego cartier sencillo','',''),(115,1,1,'acero existente en acero amarillo rosa y plata','','arracada-mk-con-zirconias-cuadros','','','','Arracada mk con zirconias cuadros','',''),(116,1,1,'acero existente en acero amarillo rosa y plata','','arracada-cartier-tornillo','','','','Arracada cartier tornillo','',''),(117,1,1,'acero existente en acero amarillo rosa y plata','','pulso-channel-clasico','','','','Pulso channel clasico','',''),(118,1,1,'acero existente en acero amarillo rosa y plata','','pulso-tiffany-numeros-romanos','','','','Pulso tiffany numeros romanos','',''),(119,1,1,'acero existente en acero amarillo rosa y plata','','juego-cartier-zirconia-cambiante','','','','Juego cartier zirconia cambiante','',''),(120,1,1,'acero existente en acero amarillo rosa y plata','','broquel-cartier-madre-perla','','','','Broquel cartier madre perla','',''),(121,1,1,'acero existente en acero amarillo rosa y plata','','broquel-bvlgari-clasico-8mm','','','','Broquel bvlgari clasico 8mm','',''),(122,1,1,'acero existente en acero amarillo rosa y plata','','broquel-bvlgari-clasico-10mm','','','','Broquel bvlgari clasico 10mm','',''),(123,1,1,'acero existente en acero amarillo rosa y plata','','arete-tiffanny-argolla-colgante','','','','Arete tiffanny argolla colgante','',''),(124,1,1,'acero existente en acero amarillo rosa y plata','','arete-trebol-de-channel','','','','Arete trebol de channel','',''),(125,1,1,'acero existente en acero amarillo rosa y plata','','broquel-bvlgari-clasico-6mm','','','','Broquel bvlgari clasico 6mm','',''),(126,1,1,'acero existente en acero amarillo rosa y plata','','broquel-cuadro-de-channel','','','','Broquel cuadro de channel','',''),(127,1,1,'acero existente en acero amarillo rosa y plata','','broquel-channel-rombo','','','','Broquel channel rombo','',''),(128,1,1,'acero existente en acero amarillo rosa y plata','','broquel-corazon-cartier','','','','Broquel corazon cartier','',''),(129,1,1,'acero existente en acero amarillo rosa y plata','','broquel-bvlgari-pico','','','','Broquel bvlgari pico','',''),(130,1,1,'acero existente en acero amarillo rosa y plata','','anillo-cartier-zirconia-colgante','','','','Anillo cartier zirconia colgante','',''),(131,1,1,'acero existente en acero solo amarillo','','juego-mk-zirconia-con-onix','','','','Juego mk zirconia con onix','',''),(132,1,1,'acero existente en acero amarillo rosa y plata','','alianza-mk-con-zirconias','','','','Alianza mk con zirconias','',''),(133,1,1,'acero existente en acero solo amarillo','','juego-tous-corazon','','','','Juego tous corazon','',''),(134,1,1,'acero existente en acero plata','','juego-channel-logo','','','','Juego channel logo','',''),(135,1,1,'acero existente en acero solo amarillo','','juego-channel-logo','','','','Juego channel logo','',''),(136,1,1,'acero existente en acero plata','','juego-mk-onix-y-zirconias','','','','Juego mk onix y zirconias','',''),(137,1,1,'acero existente en acero amarillo rosa y plata','','anillo-de-mk-piel','','','','Anillo de mk piel','',''),(139,1,1,'acero existente en acero amarillo rosa y plata','','anillo-de-cartier-triangulo','','','','Anillo de cartier triangulo','',''),(140,1,1,'acero existente en acero plata','','juego-channel-rombo','','','','Juego channel rombo','',''),(141,1,1,'acero existente en acero solo amarillo','','juego-mk-placa','','','','Juego mk placa','',''),(143,1,1,'acero existente en acero solo amarillo','','juego-channel-logo','','','','Juego channel logo','',''),(144,1,1,'acero existente en acero bicolor','','juego-channel-rombo-bicolor','','','','Juego channel rombo bicolor','',''),(145,1,1,'acero existente en acero plata','','juego-bvlgari-flor','','','','Juego bvlgari flor','',''),(146,1,1,'acero existente en acero plata','','juego-mk-placa','','','','Juego mk placa','',''),(147,1,1,'acero existente en acero solo amarillo','','juego-bvlgari-flor','','','','Juego bvlgari flor','',''),(148,1,1,'acero existente en acero solo amarillo','','juego-bvlgari-alianza','','','','Juego bvlgari alianza','',''),(149,1,1,'acero existente en acero amarillo rosa y plata','','juego-tous-3-tous','','','','Juego tous 3 tous','',''),(150,1,1,'acero existente en acero amarillo rosa y plata','','juego-bvlgari-madre-perla','','','','Juego bvlgari madre perla','',''),(151,1,1,'acero existente en acero amarillo rosa y plata','','juego-bvlgari-2-circulos','','','','Juego bvlgari 2 circulos','',''),(152,1,1,'acero existente en acero amarillo rosa y plata','','juego-bvlgari-clasico-zirconias','','','','Juego bvlgari clasico zirconias','',''),(153,1,1,'acero existente en acero amarillo rosa y plata','','juego-channel-perla','','','','Juego channel perla','',''),(154,1,1,'acero existente en acero amarillo rosa y plata','','juego-tous-espejo','','','','Juego tous espejo','',''),(155,1,1,'acero existente en acero amarillo rosa y plata','','juego-cartier-tornillo','','','','Juego cartier tornillo','',''),(156,1,1,'acero existente en acero amarillo rosa y plata','','juego-channel-zirconias','','','','Juego channel zirconias','',''),(157,1,1,'acero existente en acero amarillo rosa y plata','','juego-channel-perlas','','','','Juego channel perlas','',''),(158,1,1,'acero existente en acero amarillo rosa y plata','','juego-bvulgari-3-argollas','','','','Juego bvulgari 3 argollas','',''),(159,1,1,'acero existente en acero amarillo rosa y plata','','juego-tiffany-corazon','','','','Juego tiffany corazon','',''),(160,1,1,'acero existente en acero amarillo rosa y plata','','arete-bvlgari-clasico-12mm','','','','Arete bvlgari clasico 12mm','',''),(161,1,1,'acero existente en acero amarillo rosa y plata','','broquel-tous-perla','','','','Broquel tous perla','',''),(162,1,1,'acero existente en acero amarillo rosa y plata','','broquel-tous-clasico','','','','Broquel tous clasico','',''),(163,1,1,'acero existente en acero amarillo rosa y plata','','broquel-channel-zirconia','','','','Broquel channel zirconia','',''),(164,1,1,'acero existente en acero amarillo rosa y plata','','broquel-tous-zirconias','','','','Broquel tous zirconias','',''),(165,1,1,'acero existente en acero amarillo rosa y plata','','juego-channel-cuadro','','','','Juego channel cuadro','',''),(166,1,1,'acero existente en acero amarillo rosa y plata','','broquel-cartier-tornillo','','','','Broquel cartier tornillo','',''),(167,1,1,'acero existente en acero amarillo rosa y plata','','broquel-tous-zirconias','','','','Broquel tous zirconias','',''),(168,1,1,'acero existente en acero amarillo rosa y plata','','broquel-bvlagri-zirconias-colgante','','','','Broquel bvlagri zirconias colgante','',''),(169,1,1,'acero existente en acero amarillo rosa y plata','','juego-cadenas-der-bvlgari','','','','Juego cadenas der bvlgari','',''),(170,1,1,'acero existente en acero amarillo rosa y plata','','pulso-channel-doble-zirconias','','','','Pulso channel doble zirconias','',''),(488,1,1,'','','gargantilla','','','','Gargantilla','',''),(489,1,1,'','','gargantilla','','','','Gargantilla','',''),(490,1,1,'','','gargantilla','','','','Gargantilla','',''),(491,1,1,'','','gargantilla','','','','Gargantilla','',''),(492,1,1,'','','gargantilla','','','','Gargantilla','',''),(493,1,1,'','','gargantilla','','','','Gargantilla','',''),(494,1,1,'','','gargantilla','','','','Gargantilla','',''),(495,1,1,'','','gargantilla','','','','Gargantilla','',''),(496,1,1,'','','gargantilla','','','','Gargantilla','',''),(497,1,1,'','','gargantilla','','','','Gargantilla','',''),(498,1,1,'','','gargantilla','','','','Gargantilla','',''),(499,1,1,'','','gargantilla','','','','Gargantilla','',''),(500,1,1,'','','gargantilla','','','','Gargantilla','',''),(501,1,1,'','','gargantilla','','','','Gargantilla','',''),(502,1,1,'','','gargantilla','','','','Gargantilla','',''),(503,1,1,'','','gargantilla','','','','Gargantilla','',''),(504,1,1,'','','gargantilla','','','','Gargantilla','',''),(505,1,1,'','','gargantilla','','','','Gargantilla','',''),(506,1,1,'','','gargantilla','','','','Gargantilla','',''),(507,1,1,'','','gargantilla','','','','Gargantilla','',''),(508,1,1,'','','gargantilla','','','','Gargantilla','',''),(509,1,1,'','','gargantilla','','','','Gargantilla','',''),(510,1,1,'','','gargantilla','','','','Gargantilla','',''),(511,1,1,'','','gargantilla','','','','Gargantilla','',''),(512,1,1,'','','gargantilla','','','','Gargantilla','',''),(513,1,1,'','','gargantilla','','','','Gargantilla','',''),(514,1,1,'','','gargantilla','','','','Gargantilla','',''),(515,1,1,'','','gargantilla','','','','Gargantilla','',''),(516,1,1,'','','gargantilla','','','','Gargantilla','',''),(517,1,1,'','','gargantilla','','','','Gargantilla','',''),(518,1,1,'','','gargantilla','','','','Gargantilla','',''),(519,1,1,'','','gargantilla','','','','Gargantilla','',''),(520,1,1,'','','gargantilla','','','','Gargantilla','',''),(521,1,1,'','','gargantilla','','','','Gargantilla','',''),(522,1,1,'','','gargantilla','','','','Gargantilla','',''),(523,1,1,'','','gargantilla','','','','Gargantilla','',''),(524,1,1,'','','gargantilla','','','','Gargantilla','',''),(525,1,1,'','','gargantilla','','','','Gargantilla','',''),(526,1,1,'','','gargantilla','','','','Gargantilla','',''),(527,1,1,'','','gargantilla','','','','Gargantilla','',''),(528,1,1,'','','gargantilla','','','','Gargantilla','',''),(529,1,1,'','','gargantilla','','','','Gargantilla','',''),(530,1,1,'','','gargantilla','','','','Gargantilla','',''),(531,1,1,'','','gargantilla','','','','Gargantilla','',''),(532,1,1,'','','gargantilla','','','','Gargantilla','',''),(533,1,1,'','','gargantilla','','','','Gargantilla','',''),(534,1,1,'','','gargantilla','','','','Gargantilla','',''),(535,1,1,'','','gargantilla','','','','Gargantilla','',''),(536,1,1,'','','gargantilla','','','','Gargantilla','',''),(537,1,1,'','','gargantilla','','','','Gargantilla','',''),(538,1,1,'','','gargantilla','','','','Gargantilla','',''),(539,1,1,'','','gargantilla','','','','Gargantilla','',''),(540,1,1,'','','gargantilla','','','','Gargantilla','',''),(541,1,1,'','','gargantilla','','','','Gargantilla','',''),(542,1,1,'','','gargantilla','','','','Gargantilla','',''),(543,1,1,'','','gargantilla','','','','Gargantilla','',''),(544,1,1,'','','gargantilla','','','','Gargantilla','',''),(545,1,1,'','','gargantilla','','','','Gargantilla','',''),(546,1,1,'','','gargantilla','','','','Gargantilla','',''),(547,1,1,'','','gargantilla','','','','Gargantilla','',''),(548,1,1,'','','gargantilla','','','','Gargantilla','',''),(549,1,1,'','','gargantilla','','','','Gargantilla','',''),(550,1,1,'','','gargantilla','','','','Gargantilla','',''),(551,1,1,'','','gargantilla','','','','Gargantilla','',''),(552,1,1,'','','gargantilla','','','','Gargantilla','',''),(553,1,1,'','','gargantilla','','','','Gargantilla','',''),(554,1,1,'','','gargantilla','','','','Gargantilla','',''),(555,1,1,'','','gargantilla','','','','Gargantilla','',''),(556,1,1,'','','pulsera','','','','Pulsera','',''),(557,1,1,'','','pulsera','','','','Pulsera','',''),(558,1,1,'','','pulsera','','','','Pulsera','',''),(559,1,1,'','','pulsera','','','','Pulsera','',''),(560,1,1,'','','pulsera','','','','Pulsera','',''),(561,1,1,'','','pulsera','','','','Pulsera','',''),(562,1,1,'','','pulsera','','','','Pulsera','',''),(563,1,1,'','','pulsera','','','','Pulsera','',''),(564,1,1,'','','pulsera','','','','Pulsera','',''),(565,1,1,'','','pulsera','','','','Pulsera','',''),(566,1,1,'','','pulsera','','','','Pulsera','',''),(567,1,1,'','','pulsera','','','','Pulsera','',''),(568,1,1,'','','pulsera','','','','Pulsera','',''),(569,1,1,'','','pulsera','','','','Pulsera','',''),(570,1,1,'','','pulsera','','','','Pulsera','',''),(571,1,1,'','','pulsera','','','','Pulsera','',''),(572,1,1,'','','pulsera','','','','Pulsera','',''),(573,1,1,'','','pulsera','','','','Pulsera','',''),(574,1,1,'','','pulsera','','','','Pulsera','',''),(575,1,1,'','','pulsera','','','','Pulsera','',''),(576,1,1,'','','pulsera','','','','Pulsera','',''),(577,1,1,'','','pulsera','','','','Pulsera','',''),(578,1,1,'','','pulsera','','','','Pulsera','',''),(579,1,1,'','','pulsera','','','','Pulsera','',''),(580,1,1,'','','pulsera','','','','Pulsera','',''),(581,1,1,'','','pulsera','','','','Pulsera','',''),(582,1,1,'','','pulsera','','','','Pulsera','',''),(583,1,1,'','','pulsera','','','','Pulsera','',''),(584,1,1,'','','pulsera','','','','Pulsera','',''),(585,1,1,'','','pulsera','','','','Pulsera','',''),(586,1,1,'','','pulsera','','','','Pulsera','',''),(587,1,1,'','','pulsera','','','','Pulsera','',''),(588,1,1,'','','pulsera','','','','Pulsera','',''),(589,1,1,'','','pulsera','','','','Pulsera','',''),(590,1,1,'','','pulsera','','','','Pulsera','',''),(591,1,1,'','','pulsera','','','','Pulsera','',''),(592,1,1,'','','pulsera','','','','Pulsera','',''),(593,1,1,'','','pulsera','','','','Pulsera','',''),(594,1,1,'','','pulsera','','','','Pulsera','',''),(595,1,1,'','','pulsera','','','','Pulsera','',''),(596,1,1,'','','pulsera','','','','Pulsera','',''),(597,1,1,'','','pulsera','','','','Pulsera','',''),(598,1,1,'','','pulsera','','','','Pulsera','',''),(599,1,1,'','','pulsera','','','','Pulsera','',''),(600,1,1,'','','pulsera','','','','Pulsera','',''),(601,1,1,'','','pulsera','','','','Pulsera','',''),(602,1,1,'','','pulsera','','','','Pulsera','',''),(603,1,1,'','','pulsera','','','','Pulsera','',''),(604,1,1,'','','pulsera','','','','Pulsera','',''),(605,1,1,'','','pulsera','','','','Pulsera','',''),(606,1,1,'','','pulsera','','','','Pulsera','',''),(607,1,1,'','','pulsera','','','','Pulsera','',''),(608,1,1,'','','pulsera','','','','Pulsera','',''),(609,1,1,'','','pulsera','','','','Pulsera','',''),(610,1,1,'','','pulsera','','','','Pulsera','',''),(611,1,1,'','','pulsera','','','','Pulsera','',''),(612,1,1,'','','pulsera','','','','Pulsera','',''),(613,1,1,'','','pulsera','','','','Pulsera','',''),(614,1,1,'','','pulsera','','','','Pulsera','',''),(615,1,1,'','','pulsera','','','','Pulsera','',''),(616,1,1,'','','pulsera','','','','Pulsera','',''),(617,1,1,'','','pulsera','','','','Pulsera','',''),(618,1,1,'','','pulsera','','','','Pulsera','',''),(619,1,1,'','','pulsera','','','','Pulsera','',''),(620,1,1,'','','pulsera','','','','Pulsera','',''),(621,1,1,'','','pulsera','','','','Pulsera','',''),(622,1,1,'','','pulsera','','','','Pulsera','',''),(623,1,1,'','','pulsera','','','','Pulsera','',''),(624,1,1,'','','pulsera','','','','Pulsera','',''),(625,1,1,'','','pulsera','','','','Pulsera','',''),(626,1,1,'','','pulsera','','','','Pulsera','',''),(627,1,1,'','','pulsera','','','','Pulsera','',''),(628,1,1,'','','pulsera','','','','Pulsera','',''),(629,1,1,'','','pulsera','','','','Pulsera','',''),(630,1,1,'','','collar','','','','Collar','',''),(631,1,1,'','','collar','','','','Collar','',''),(632,1,1,'','','collar','','','','Collar','',''),(633,1,1,'','','collar','','','','Collar','',''),(634,1,1,'','','collar','','','','Collar','',''),(635,1,1,'','','collar','','','','Collar','',''),(636,1,1,'','','collar','','','','Collar','',''),(637,1,1,'','','collar','','','','Collar','',''),(638,1,1,'','','collar','','','','Collar','',''),(639,1,1,'','','collar','','','','Collar','',''),(640,1,1,'','','collar','','','','Collar','',''),(641,1,1,'','','collar','','','','Collar','',''),(642,1,1,'','','collar','','','','Collar','',''),(643,1,1,'','','collar','','','','Collar','',''),(647,1,1,'','','collar','','','','Collar','',''),(648,1,1,'','','collar','','','','Collar','',''),(649,1,1,'','','collar','','','','Collar','',''),(650,1,1,'','','collar','','','','Collar','',''),(651,1,1,'','','collar','','','','Collar','',''),(652,1,1,'','','collar','','','','Collar','',''),(653,1,1,'','','collar','','','','Collar','',''),(654,1,1,'','','collar','','','','Collar','',''),(655,1,1,'','','collar','','','','Collar','',''),(656,1,1,'','','collar','','','','Collar','',''),(657,1,1,'','','collar','','','','Collar','',''),(658,1,1,'','','collar','','','','Collar','',''),(659,1,1,'','','collar','','','','Collar','',''),(660,1,1,'','','collar','','','','Collar','',''),(661,1,1,'','','collar','','','','Collar','',''),(662,1,1,'','','collar','','','','Collar','',''),(663,1,1,'','','collar','','','','Collar','',''),(664,1,1,'','','collar','','','','Collar','',''),(665,1,1,'','','collar','','','','Collar','',''),(666,1,1,'','','collar','','','','Collar','',''),(667,1,1,'','','collar','','','','Collar','',''),(668,1,1,'','','collar','','','','Collar','',''),(669,1,1,'','','collar','','','','Collar','',''),(670,1,1,'','','collar','','','','Collar','',''),(671,1,1,'','','collar','','','','Collar','',''),(672,1,1,'','','collar','','','','Collar','',''),(673,1,1,'','','collar','','','','Collar','',''),(674,1,1,'','','collar','','','','Collar','',''),(675,1,1,'','','collar','','','','Collar','','');
/*!40000 ALTER TABLE `ps_product_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_sale`
--

DROP TABLE IF EXISTS `ps_product_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_sale` (
  `id_product` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `sale_nbr` int(10) unsigned NOT NULL DEFAULT '0',
  `date_upd` date NOT NULL,
  PRIMARY KEY (`id_product`),
  KEY `quantity` (`quantity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_sale`
--

LOCK TABLES `ps_product_sale` WRITE;
/*!40000 ALTER TABLE `ps_product_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_shop`
--

DROP TABLE IF EXISTS `ps_product_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_shop` (
  `id_product` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  `id_category_default` int(10) unsigned DEFAULT NULL,
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `on_sale` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `online_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `customizable` tinyint(2) NOT NULL DEFAULT '0',
  `uploadable_files` tinyint(4) NOT NULL DEFAULT '0',
  `text_fields` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301','302') NOT NULL DEFAULT '',
  `id_product_redirected` int(10) unsigned NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date NOT NULL DEFAULT '0000-00-00',
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_default_attribute` int(10) unsigned DEFAULT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `pack_stock_type` int(11) unsigned NOT NULL DEFAULT '3',
  PRIMARY KEY (`id_product`,`id_shop`),
  KEY `id_category_default` (`id_category_default`),
  KEY `date_add` (`date_add`,`active`,`visibility`),
  KEY `indexed` (`indexed`,`active`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_shop`
--

LOCK TABLES `ps_product_shop` WRITE;
/*!40000 ALTER TABLE `ps_product_shop` DISABLE KEYS */;
INSERT INTO `ps_product_shop` VALUES (1,1,4,1,0,0,0.000000,1,555.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-06-16 13:08:07',3),(2,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-06-16 13:08:07',3),(3,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-06-16 13:08:07',3),(5,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(6,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(7,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(8,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(9,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(10,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(11,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(12,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(13,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(14,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(15,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(16,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(17,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(18,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(19,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(20,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(21,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(22,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(23,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(24,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(25,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(26,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(27,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(28,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(29,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(30,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(31,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(32,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(33,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(34,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(35,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(36,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(37,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(38,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(39,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(40,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(41,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(42,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(43,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(44,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(45,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(46,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(47,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(48,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(49,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(50,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(51,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(52,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(53,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(54,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(55,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(56,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(57,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(58,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(59,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(60,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(61,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(62,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(63,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(64,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(65,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(66,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(67,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(68,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(69,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(70,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(71,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(72,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(73,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(74,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(75,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(76,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(77,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(78,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(79,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(80,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(81,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(82,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(83,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:52:22',3),(85,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(86,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(87,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(88,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(89,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(90,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(91,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(92,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(93,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(94,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(95,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(96,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(97,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(98,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(99,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(100,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(101,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(102,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(103,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(104,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(105,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(106,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(107,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(108,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(109,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(110,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(111,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(112,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(113,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(114,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(115,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(116,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(117,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(118,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(119,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(120,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(121,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(122,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(123,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(124,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(125,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(126,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(127,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(128,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(129,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(130,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(131,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(132,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(133,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(134,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(135,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(136,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(137,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(139,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(140,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(141,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(143,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(144,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(145,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(146,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(147,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(148,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(149,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(150,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(151,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(152,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(153,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(154,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(155,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(156,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(157,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(158,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(159,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(160,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(161,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(162,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(163,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(164,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(165,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(166,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(167,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(168,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(169,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(170,1,4,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-06-16 13:08:07','2016-08-09 15:53:21',3),(488,1,1,1,0,0,0.000000,1,295.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(489,1,1,1,0,0,0.000000,1,297.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(490,1,1,1,0,0,0.000000,1,257.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(491,1,1,1,0,0,0.000000,1,219.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(492,1,1,1,0,0,0.000000,1,172.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(493,1,1,1,0,0,0.000000,1,226.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(494,1,1,1,0,0,0.000000,1,83.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(495,1,1,1,0,0,0.000000,1,196.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(496,1,1,1,0,0,0.000000,1,244.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(497,1,1,1,0,0,0.000000,1,260.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(498,1,1,1,0,0,0.000000,1,239.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(499,1,1,1,0,0,0.000000,1,114.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(500,1,1,1,0,0,0.000000,1,156.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(501,1,1,1,0,0,0.000000,1,199.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(502,1,1,1,0,0,0.000000,1,260.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(503,1,1,1,0,0,0.000000,1,270.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(504,1,1,1,0,0,0.000000,1,193.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(505,1,1,1,0,0,0.000000,1,319.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(506,1,1,1,0,0,0.000000,1,223.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(507,1,1,1,0,0,0.000000,1,201.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(508,1,1,1,0,0,0.000000,1,68.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(509,1,1,1,0,0,0.000000,1,197.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(510,1,1,1,0,0,0.000000,1,184.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(511,1,1,1,0,0,0.000000,1,177.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(512,1,1,1,0,0,0.000000,1,160.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(513,1,1,1,0,0,0.000000,1,204.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(514,1,1,1,0,0,0.000000,1,93.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(515,1,1,1,0,0,0.000000,1,213.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(516,1,1,1,0,0,0.000000,1,260.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(517,1,1,1,0,0,0.000000,1,177.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(518,1,1,1,0,0,0.000000,1,250.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(519,1,1,1,0,0,0.000000,1,112.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(520,1,1,1,0,0,0.000000,1,146.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(521,1,1,1,0,0,0.000000,1,156.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(522,1,1,1,0,0,0.000000,1,109.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(523,1,1,1,0,0,0.000000,1,150.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(524,1,1,1,0,0,0.000000,1,88.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(525,1,1,1,0,0,0.000000,1,207.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(526,1,1,1,0,0,0.000000,1,223.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(527,1,1,1,0,0,0.000000,1,255.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(528,1,1,1,0,0,0.000000,1,198.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(529,1,1,1,0,0,0.000000,1,156.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(530,1,1,1,0,0,0.000000,1,270.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(531,1,1,1,0,0,0.000000,1,317.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(532,1,1,1,0,0,0.000000,1,187.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(533,1,1,1,0,0,0.000000,1,291.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(534,1,1,1,0,0,0.000000,1,57.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(535,1,1,1,0,0,0.000000,1,188.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(536,1,1,1,0,0,0.000000,1,226.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(537,1,1,1,0,0,0.000000,1,260.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(538,1,1,1,0,0,0.000000,1,199.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(539,1,1,1,0,0,0.000000,1,321.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(540,1,1,1,0,0,0.000000,1,261.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(541,1,1,1,0,0,0.000000,1,160.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(542,1,1,1,0,0,0.000000,1,252.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(543,1,1,1,0,0,0.000000,1,297.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(544,1,1,1,0,0,0.000000,1,236.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(545,1,1,1,0,0,0.000000,1,248.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(546,1,1,1,0,0,0.000000,1,125.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(547,1,1,1,0,0,0.000000,1,325.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(548,1,1,1,0,0,0.000000,1,325.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(549,1,1,1,0,0,0.000000,1,205.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(550,1,1,1,0,0,0.000000,1,164.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(551,1,1,1,0,0,0.000000,1,236.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(552,1,1,1,0,0,0.000000,1,187.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(553,1,1,1,0,0,0.000000,1,208.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(554,1,1,1,0,0,0.000000,1,173.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(555,1,1,1,0,0,0.000000,1,291.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(556,1,1,1,0,0,0.000000,1,166.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(557,1,1,1,0,0,0.000000,1,79.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(558,1,1,1,0,0,0.000000,1,102.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(559,1,1,1,0,0,0.000000,1,65.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(560,1,1,1,0,0,0.000000,1,73.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(561,1,1,1,0,0,0.000000,1,100.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(562,1,1,1,0,0,0.000000,1,49.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(563,1,1,1,0,0,0.000000,1,113.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(564,1,1,1,0,0,0.000000,1,76.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(565,1,1,1,0,0,0.000000,1,161.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(566,1,1,1,0,0,0.000000,1,80.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(567,1,1,1,0,0,0.000000,1,59.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(568,1,1,1,0,0,0.000000,1,99.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(569,1,1,1,0,0,0.000000,1,64.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(570,1,1,1,0,0,0.000000,1,63.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(571,1,1,1,0,0,0.000000,1,133.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(572,1,1,1,0,0,0.000000,1,82.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(573,1,1,1,0,0,0.000000,1,75.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(574,1,1,1,0,0,0.000000,1,102.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(575,1,1,1,0,0,0.000000,1,63.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(576,1,1,1,0,0,0.000000,1,97.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(577,1,1,1,0,0,0.000000,1,90.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(578,1,1,1,0,0,0.000000,1,90.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(579,1,1,1,0,0,0.000000,1,81.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(580,1,1,1,0,0,0.000000,1,67.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(581,1,1,1,0,0,0.000000,1,83.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(582,1,1,1,0,0,0.000000,1,69.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(583,1,1,1,0,0,0.000000,1,77.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(584,1,1,1,0,0,0.000000,1,55.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(585,1,1,1,0,0,0.000000,1,117.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(586,1,1,1,0,0,0.000000,1,37.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(587,1,1,1,0,0,0.000000,1,163.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(588,1,1,1,0,0,0.000000,1,177.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(589,1,1,1,0,0,0.000000,1,196.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(590,1,1,1,0,0,0.000000,1,94.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(591,1,1,1,0,0,0.000000,1,79.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(592,1,1,1,0,0,0.000000,1,88.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(593,1,1,1,0,0,0.000000,1,122.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(594,1,1,1,0,0,0.000000,1,120.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(595,1,1,1,0,0,0.000000,1,43.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(596,1,1,1,0,0,0.000000,1,83.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(597,1,1,1,0,0,0.000000,1,63.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(598,1,1,1,0,0,0.000000,1,52.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(599,1,1,1,0,0,0.000000,1,82.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(600,1,1,1,0,0,0.000000,1,127.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(601,1,1,1,0,0,0.000000,1,117.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(602,1,1,1,0,0,0.000000,1,98.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(603,1,1,1,0,0,0.000000,1,135.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(604,1,1,1,0,0,0.000000,1,64.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(605,1,1,1,0,0,0.000000,1,57.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(606,1,1,1,0,0,0.000000,1,57.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(607,1,1,1,0,0,0.000000,1,119.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(608,1,1,1,0,0,0.000000,1,109.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(609,1,1,1,0,0,0.000000,1,57.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(610,1,1,1,0,0,0.000000,1,52.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(611,1,1,1,0,0,0.000000,1,57.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(612,1,1,1,0,0,0.000000,1,119.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(613,1,1,1,0,0,0.000000,1,99.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(614,1,1,1,0,0,0.000000,1,88.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(615,1,1,1,0,0,0.000000,1,70.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(616,1,1,1,0,0,0.000000,1,84.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(617,1,1,1,0,0,0.000000,1,84.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(618,1,1,1,0,0,0.000000,1,97.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(619,1,1,1,0,0,0.000000,1,110.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(620,1,1,1,0,0,0.000000,1,135.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(621,1,1,1,0,0,0.000000,1,101.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(622,1,1,1,0,0,0.000000,1,108.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(623,1,1,1,0,0,0.000000,1,109.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(624,1,1,1,0,0,0.000000,1,88.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(625,1,1,1,0,0,0.000000,1,68.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(626,1,1,1,0,0,0.000000,1,94.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(627,1,1,1,0,0,0.000000,1,88.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(628,1,1,1,0,0,0.000000,1,139.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(629,1,1,1,0,0,0.000000,1,64.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(630,1,1,1,0,0,0.000000,1,260.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(631,1,1,1,0,0,0.000000,1,143.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(632,1,1,1,0,0,0.000000,1,291.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(633,1,1,1,0,0,0.000000,1,483.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(634,1,1,1,0,0,0.000000,1,192.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(635,1,1,1,0,0,0.000000,1,141.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(636,1,1,1,0,0,0.000000,1,311.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(637,1,1,1,0,0,0.000000,1,141.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(638,1,1,1,0,0,0.000000,1,241.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(639,1,1,1,0,0,0.000000,1,162.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(640,1,1,1,0,0,0.000000,1,177.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(641,1,1,1,0,0,0.000000,1,181.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(642,1,1,1,0,0,0.000000,1,316.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(643,1,1,1,0,0,0.000000,1,252.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 13:33:08','2016-08-09 15:50:07',3),(647,1,1,1,0,0,0.000000,1,208.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(648,1,1,1,0,0,0.000000,1,198.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(649,1,1,1,0,0,0.000000,1,205.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(650,1,1,1,0,0,0.000000,1,249.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(651,1,1,1,0,0,0.000000,1,223.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(652,1,1,1,0,0,0.000000,1,151.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(653,1,1,1,0,0,0.000000,1,211.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(654,1,1,1,0,0,0.000000,1,262.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(655,1,1,1,0,0,0.000000,1,370.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(656,1,1,1,0,0,0.000000,1,235.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(657,1,1,1,0,0,0.000000,1,283.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(658,1,1,1,0,0,0.000000,1,146.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(659,1,1,1,0,0,0.000000,1,201.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(660,1,1,1,0,0,0.000000,1,272.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(661,1,1,1,0,0,0.000000,1,177.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(662,1,1,1,0,0,0.000000,1,198.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(663,1,1,1,0,0,0.000000,1,619.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(664,1,1,1,0,0,0.000000,1,335.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(665,1,1,1,0,0,0.000000,1,80.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(666,1,1,1,0,0,0.000000,1,147.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(667,1,1,1,0,0,0.000000,1,178.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(668,1,1,1,0,0,0.000000,1,187.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(669,1,1,1,0,0,0.000000,1,244.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(670,1,1,1,0,0,0.000000,1,114.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(671,1,1,1,0,0,0.000000,1,276.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(672,1,1,1,0,0,0.000000,1,208.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(673,1,1,1,0,0,0.000000,1,208.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(674,1,1,1,0,0,0.000000,1,263.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3),(675,1,1,1,0,0,0.000000,1,187.000000,0.000000,'',0.625000,0.00,0,0,0,1,'',0,1,'0000-00-00','new',1,0,'both',0,0,'2016-07-25 15:16:40','2016-08-09 15:50:07',3);
/*!40000 ALTER TABLE `ps_product_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_supplier`
--

DROP TABLE IF EXISTS `ps_product_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_supplier` (
  `id_product_supplier` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL DEFAULT '0',
  `id_supplier` int(11) unsigned NOT NULL,
  `product_supplier_reference` varchar(32) DEFAULT NULL,
  `product_supplier_price_te` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `id_currency` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_product_supplier`),
  UNIQUE KEY `id_product` (`id_product`,`id_product_attribute`,`id_supplier`),
  KEY `id_supplier` (`id_supplier`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_supplier`
--

LOCK TABLES `ps_product_supplier` WRITE;
/*!40000 ALTER TABLE `ps_product_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_tag`
--

DROP TABLE IF EXISTS `ps_product_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_tag` (
  `id_product` int(10) unsigned NOT NULL,
  `id_tag` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_tag`),
  KEY `id_tag` (`id_tag`),
  KEY `id_lang` (`id_lang`,`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_tag`
--

LOCK TABLES `ps_product_tag` WRITE;
/*!40000 ALTER TABLE `ps_product_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_profile`
--

DROP TABLE IF EXISTS `ps_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_profile` (
  `id_profile` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_profile`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_profile`
--

LOCK TABLES `ps_profile` WRITE;
/*!40000 ALTER TABLE `ps_profile` DISABLE KEYS */;
INSERT INTO `ps_profile` VALUES (1),(2),(3),(4);
/*!40000 ALTER TABLE `ps_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_profile_lang`
--

DROP TABLE IF EXISTS `ps_profile_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_profile_lang` (
  `id_lang` int(10) unsigned NOT NULL,
  `id_profile` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id_profile`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_profile_lang`
--

LOCK TABLES `ps_profile_lang` WRITE;
/*!40000 ALTER TABLE `ps_profile_lang` DISABLE KEYS */;
INSERT INTO `ps_profile_lang` VALUES (1,1,'SuperAdmin'),(1,2,'Especialista en logística'),(1,3,'Traductor'),(1,4,'Vendedor');
/*!40000 ALTER TABLE `ps_profile_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_quick_access`
--

DROP TABLE IF EXISTS `ps_quick_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_quick_access` (
  `id_quick_access` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `new_window` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id_quick_access`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_quick_access`
--

LOCK TABLES `ps_quick_access` WRITE;
/*!40000 ALTER TABLE `ps_quick_access` DISABLE KEYS */;
INSERT INTO `ps_quick_access` VALUES (1,0,'index.php?controller=AdminCategories&addcategory'),(2,0,'index.php?controller=AdminProducts&addproduct'),(3,0,'index.php?controller=AdminCartRules&addcart_rule');
/*!40000 ALTER TABLE `ps_quick_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_quick_access_lang`
--

DROP TABLE IF EXISTS `ps_quick_access_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_quick_access_lang` (
  `id_quick_access` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_quick_access`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_quick_access_lang`
--

LOCK TABLES `ps_quick_access_lang` WRITE;
/*!40000 ALTER TABLE `ps_quick_access_lang` DISABLE KEYS */;
INSERT INTO `ps_quick_access_lang` VALUES (1,1,'Nueva categoría'),(2,1,'Nuevo producto'),(3,1,'Nuevo vale');
/*!40000 ALTER TABLE `ps_quick_access_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_range_price`
--

DROP TABLE IF EXISTS `ps_range_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_range_price` (
  `id_range_price` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_range_price`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_range_price`
--

LOCK TABLES `ps_range_price` WRITE;
/*!40000 ALTER TABLE `ps_range_price` DISABLE KEYS */;
INSERT INTO `ps_range_price` VALUES (1,2,0.000000,10000.000000);
/*!40000 ALTER TABLE `ps_range_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_range_weight`
--

DROP TABLE IF EXISTS `ps_range_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_range_weight` (
  `id_range_weight` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_range_weight`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_range_weight`
--

LOCK TABLES `ps_range_weight` WRITE;
/*!40000 ALTER TABLE `ps_range_weight` DISABLE KEYS */;
INSERT INTO `ps_range_weight` VALUES (1,3,0.000000,10000.000000);
/*!40000 ALTER TABLE `ps_range_weight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_referrer`
--

DROP TABLE IF EXISTS `ps_referrer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_referrer` (
  `id_referrer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `passwd` varchar(32) DEFAULT NULL,
  `http_referer_regexp` varchar(64) DEFAULT NULL,
  `http_referer_like` varchar(64) DEFAULT NULL,
  `request_uri_regexp` varchar(64) DEFAULT NULL,
  `request_uri_like` varchar(64) DEFAULT NULL,
  `http_referer_regexp_not` varchar(64) DEFAULT NULL,
  `http_referer_like_not` varchar(64) DEFAULT NULL,
  `request_uri_regexp_not` varchar(64) DEFAULT NULL,
  `request_uri_like_not` varchar(64) DEFAULT NULL,
  `base_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `percent_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `click_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_referrer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_referrer`
--

LOCK TABLES `ps_referrer` WRITE;
/*!40000 ALTER TABLE `ps_referrer` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_referrer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_referrer_cache`
--

DROP TABLE IF EXISTS `ps_referrer_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_referrer_cache` (
  `id_connections_source` int(11) unsigned NOT NULL,
  `id_referrer` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_connections_source`,`id_referrer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_referrer_cache`
--

LOCK TABLES `ps_referrer_cache` WRITE;
/*!40000 ALTER TABLE `ps_referrer_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_referrer_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_referrer_shop`
--

DROP TABLE IF EXISTS `ps_referrer_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_referrer_shop` (
  `id_referrer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_visitors` int(11) DEFAULT NULL,
  `cache_visits` int(11) DEFAULT NULL,
  `cache_pages` int(11) DEFAULT NULL,
  `cache_registrations` int(11) DEFAULT NULL,
  `cache_orders` int(11) DEFAULT NULL,
  `cache_sales` decimal(17,2) DEFAULT NULL,
  `cache_reg_rate` decimal(5,4) DEFAULT NULL,
  `cache_order_rate` decimal(5,4) DEFAULT NULL,
  PRIMARY KEY (`id_referrer`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_referrer_shop`
--

LOCK TABLES `ps_referrer_shop` WRITE;
/*!40000 ALTER TABLE `ps_referrer_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_referrer_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_request_sql`
--

DROP TABLE IF EXISTS `ps_request_sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_request_sql` (
  `id_request_sql` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `sql` text NOT NULL,
  PRIMARY KEY (`id_request_sql`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_request_sql`
--

LOCK TABLES `ps_request_sql` WRITE;
/*!40000 ALTER TABLE `ps_request_sql` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_request_sql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_required_field`
--

DROP TABLE IF EXISTS `ps_required_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_required_field` (
  `id_required_field` int(11) NOT NULL AUTO_INCREMENT,
  `object_name` varchar(32) NOT NULL,
  `field_name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_required_field`),
  KEY `object_name` (`object_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_required_field`
--

LOCK TABLES `ps_required_field` WRITE;
/*!40000 ALTER TABLE `ps_required_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_required_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_risk`
--

DROP TABLE IF EXISTS `ps_risk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_risk` (
  `id_risk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `percent` tinyint(3) NOT NULL,
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_risk`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_risk`
--

LOCK TABLES `ps_risk` WRITE;
/*!40000 ALTER TABLE `ps_risk` DISABLE KEYS */;
INSERT INTO `ps_risk` VALUES (1,0,'#32CD32'),(2,35,'#FF8C00'),(3,75,'#DC143C'),(4,100,'#ec2e15');
/*!40000 ALTER TABLE `ps_risk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_risk_lang`
--

DROP TABLE IF EXISTS `ps_risk_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_risk_lang` (
  `id_risk` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id_risk`,`id_lang`),
  KEY `id_risk` (`id_risk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_risk_lang`
--

LOCK TABLES `ps_risk_lang` WRITE;
/*!40000 ALTER TABLE `ps_risk_lang` DISABLE KEYS */;
INSERT INTO `ps_risk_lang` VALUES (1,1,'None'),(2,1,'Low'),(3,1,'Medium'),(4,1,'High');
/*!40000 ALTER TABLE `ps_risk_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_scene`
--

DROP TABLE IF EXISTS `ps_scene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_scene` (
  `id_scene` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_scene`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_scene`
--

LOCK TABLES `ps_scene` WRITE;
/*!40000 ALTER TABLE `ps_scene` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_scene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_scene_category`
--

DROP TABLE IF EXISTS `ps_scene_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_scene_category` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_scene`,`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_scene_category`
--

LOCK TABLES `ps_scene_category` WRITE;
/*!40000 ALTER TABLE `ps_scene_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_scene_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_scene_lang`
--

DROP TABLE IF EXISTS `ps_scene_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_scene_lang` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id_scene`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_scene_lang`
--

LOCK TABLES `ps_scene_lang` WRITE;
/*!40000 ALTER TABLE `ps_scene_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_scene_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_scene_products`
--

DROP TABLE IF EXISTS `ps_scene_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_scene_products` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `x_axis` int(4) NOT NULL,
  `y_axis` int(4) NOT NULL,
  `zone_width` int(3) NOT NULL,
  `zone_height` int(3) NOT NULL,
  PRIMARY KEY (`id_scene`,`id_product`,`x_axis`,`y_axis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_scene_products`
--

LOCK TABLES `ps_scene_products` WRITE;
/*!40000 ALTER TABLE `ps_scene_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_scene_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_scene_shop`
--

DROP TABLE IF EXISTS `ps_scene_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_scene_shop` (
  `id_scene` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_scene`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_scene_shop`
--

LOCK TABLES `ps_scene_shop` WRITE;
/*!40000 ALTER TABLE `ps_scene_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_scene_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_search_engine`
--

DROP TABLE IF EXISTS `ps_search_engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_search_engine` (
  `id_search_engine` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `server` varchar(64) NOT NULL,
  `getvar` varchar(16) NOT NULL,
  PRIMARY KEY (`id_search_engine`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_search_engine`
--

LOCK TABLES `ps_search_engine` WRITE;
/*!40000 ALTER TABLE `ps_search_engine` DISABLE KEYS */;
INSERT INTO `ps_search_engine` VALUES (1,'google','q'),(2,'aol','q'),(3,'yandex','text'),(4,'ask.com','q'),(5,'nhl.com','q'),(6,'yahoo','p'),(7,'baidu','wd'),(8,'lycos','query'),(9,'exalead','q'),(10,'search.live','q'),(11,'voila','rdata'),(12,'altavista','q'),(13,'bing','q'),(14,'daum','q'),(15,'eniro','search_word'),(16,'naver','query'),(17,'msn','q'),(18,'netscape','query'),(19,'cnn','query'),(20,'about','terms'),(21,'mamma','query'),(22,'alltheweb','q'),(23,'virgilio','qs'),(24,'alice','qs'),(25,'najdi','q'),(26,'mama','query'),(27,'seznam','q'),(28,'onet','qt'),(29,'szukacz','q'),(30,'yam','k'),(31,'pchome','q'),(32,'kvasir','q'),(33,'sesam','q'),(34,'ozu','q'),(35,'terra','query'),(36,'mynet','q'),(37,'ekolay','q'),(38,'rambler','words');
/*!40000 ALTER TABLE `ps_search_engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_search_index`
--

DROP TABLE IF EXISTS `ps_search_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_search_index` (
  `id_product` int(11) unsigned NOT NULL,
  `id_word` int(11) unsigned NOT NULL,
  `weight` smallint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_word`,`id_product`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_search_index`
--

LOCK TABLES `ps_search_index` WRITE;
/*!40000 ALTER TABLE `ps_search_index` DISABLE KEYS */;
INSERT INTO `ps_search_index` VALUES (1,1,7),(1,2,7),(1,3,7),(1,4,9),(2,4,4),(1,5,9),(2,5,3),(1,6,10),(2,6,10),(3,6,10),(5,6,10),(6,6,10),(7,6,10),(1,7,1),(5,7,1),(6,7,1),(7,7,1),(1,8,1),(1,9,1),(1,10,1),(1,11,1),(6,11,1),(1,12,1),(1,13,1),(1,14,1),(1,15,1),(1,16,1),(1,17,1),(1,18,1),(1,19,1),(5,19,9),(6,19,6),(1,20,5),(2,20,5),(3,20,5),(5,20,5),(6,20,5),(7,20,5),(1,21,1),(2,21,1),(3,21,1),(5,21,1),(6,21,1),(7,21,1),(1,22,1),(2,22,1),(3,22,1),(5,22,1),(6,22,1),(7,22,1),(1,23,2),(2,23,2),(3,23,2),(5,23,2),(6,23,2),(7,23,2),(1,24,1),(2,24,1),(3,24,1),(5,24,1),(6,24,1),(7,24,1),(1,25,1),(2,25,1),(3,25,1),(5,25,1),(6,25,1),(7,25,1),(1,26,1),(2,26,1),(3,26,1),(5,26,1),(6,26,1),(7,26,1),(1,27,1),(2,27,1),(3,27,1),(5,27,1),(6,27,1),(7,27,1),(1,28,1),(2,28,1),(3,28,1),(5,28,1),(6,28,1),(7,28,1),(1,29,1),(2,29,1),(3,29,1),(5,29,1),(6,29,1),(7,29,1),(1,30,1),(2,30,1),(3,30,1),(5,30,1),(6,30,1),(7,30,1),(1,31,2),(2,31,2),(3,31,2),(5,31,2),(6,31,2),(7,31,2),(1,32,1),(2,32,1),(3,32,1),(5,32,1),(6,32,1),(7,32,1),(1,33,1),(2,33,1),(3,33,1),(5,33,1),(6,33,1),(7,33,1),(1,34,1),(2,34,1),(3,34,1),(5,34,1),(6,34,1),(7,34,1),(1,35,1),(2,35,1),(3,35,4),(5,35,4),(6,35,1),(7,35,1),(1,36,1),(2,36,1),(3,36,1),(5,36,1),(6,36,1),(7,36,1),(1,37,1),(2,37,1),(3,37,1),(5,37,1),(6,37,1),(7,37,1),(1,38,1),(2,38,1),(3,38,1),(5,38,1),(6,38,1),(7,38,1),(1,39,1),(2,39,1),(3,39,1),(5,39,1),(6,39,1),(7,39,1),(1,40,1),(2,40,1),(3,40,1),(5,40,1),(6,40,1),(7,40,1),(1,41,1),(2,41,1),(3,41,1),(5,41,1),(6,41,1),(7,41,1),(1,42,1),(2,42,1),(3,42,1),(5,42,1),(6,42,1),(7,42,1),(1,43,1),(2,43,1),(3,43,1),(5,43,1),(6,43,1),(7,43,1),(1,44,1),(2,44,1),(3,44,1),(5,44,1),(6,44,1),(7,44,1),(1,45,1),(2,45,1),(3,45,1),(5,45,1),(6,45,1),(7,45,1),(1,46,1),(2,46,1),(3,46,1),(5,46,1),(6,46,1),(7,46,1),(1,47,1),(2,47,1),(3,47,1),(5,47,1),(6,47,1),(7,47,1),(1,48,1),(2,48,1),(3,48,1),(5,48,1),(6,48,1),(7,48,1),(1,49,1),(2,49,1),(3,49,1),(5,49,1),(6,49,1),(7,49,1),(1,50,1),(2,50,1),(3,50,1),(5,50,1),(6,50,1),(7,50,1),(1,51,1),(2,51,1),(3,51,1),(5,51,1),(6,51,1),(7,51,1),(1,52,1),(2,52,1),(3,52,1),(5,52,1),(6,52,1),(7,52,1),(1,53,1),(2,53,1),(3,53,1),(5,53,1),(6,53,1),(7,53,1),(1,54,1),(2,54,1),(3,54,1),(5,54,1),(6,54,1),(7,54,1),(1,55,1),(2,55,1),(3,55,1),(5,55,1),(6,55,1),(7,55,1),(1,56,1),(2,56,1),(3,56,1),(5,56,1),(6,56,1),(7,56,1),(1,57,1),(2,57,1),(3,57,1),(5,57,1),(6,57,1),(7,57,1),(1,58,1),(2,58,1),(3,58,1),(5,58,1),(6,58,1),(7,58,1),(1,59,1),(2,59,1),(3,59,1),(5,59,1),(6,59,1),(7,59,1),(1,60,1),(2,60,1),(3,60,1),(5,60,1),(6,60,1),(7,60,1),(1,61,1),(2,61,1),(3,61,1),(5,61,1),(6,61,1),(7,61,1),(1,62,1),(2,62,1),(3,62,1),(5,62,1),(6,62,1),(1,63,1),(2,63,1),(3,63,1),(5,63,1),(6,63,1),(7,63,1),(1,64,1),(2,64,1),(3,64,1),(5,64,1),(6,64,2),(7,64,2),(1,65,2),(2,65,2),(3,65,2),(5,65,2),(6,65,2),(7,65,2),(1,66,1),(2,66,1),(3,66,1),(5,66,1),(6,66,1),(7,66,1),(1,67,1),(2,67,2),(3,67,1),(5,67,1),(6,67,1),(7,67,1),(1,68,1),(2,68,1),(3,68,1),(5,68,1),(6,68,1),(7,68,1),(1,69,1),(2,69,1),(3,69,1),(5,69,1),(6,69,1),(7,69,1),(1,70,1),(2,70,1),(3,70,1),(5,70,1),(6,70,1),(7,70,1),(1,71,1),(2,71,1),(3,71,1),(5,71,1),(6,71,1),(7,71,1),(1,72,1),(2,72,1),(3,72,1),(5,72,1),(6,72,1),(7,72,1),(1,73,1),(2,73,1),(3,73,1),(5,73,1),(6,73,1),(7,73,1),(1,74,1),(2,74,1),(3,74,1),(5,74,1),(6,74,1),(7,74,1),(1,75,1),(2,75,1),(3,75,1),(5,75,1),(6,75,1),(7,75,1),(1,76,1),(2,76,1),(3,76,1),(5,76,1),(6,76,1),(7,76,1),(1,77,1),(2,77,1),(3,77,1),(5,77,1),(6,77,1),(7,77,1),(1,78,3),(1,79,3),(2,79,3),(3,79,3),(5,79,3),(6,79,3),(7,79,3),(1,80,6),(3,80,7),(5,80,6),(1,81,6),(5,81,6),(1,82,2),(2,82,2),(3,82,3),(1,83,2),(2,83,2),(5,83,2),(2,84,7),(2,85,1),(2,86,1),(3,86,2),(6,86,2),(7,86,2),(2,87,3),(2,88,6),(5,88,6),(2,89,6),(6,89,6),(3,154,9),(5,154,10),(6,154,9),(7,154,9),(3,155,7),(5,155,7),(6,155,6),(7,155,7),(3,156,1),(3,157,1),(3,158,1),(3,159,1),(3,160,1),(3,161,1),(3,162,1),(3,163,1),(3,164,1),(3,165,1),(3,166,3),(3,167,2),(6,232,1),(7,232,1),(5,235,1),(5,238,2),(6,240,2),(5,304,1),(5,305,1),(5,306,1),(5,307,1),(5,308,1),(6,308,1),(5,309,2),(6,309,1),(5,310,1),(6,310,1),(5,311,1),(5,312,1),(5,313,6),(6,313,6),(7,313,6),(6,384,1),(7,384,7),(6,385,1),(7,385,1),(6,386,2),(7,386,2),(7,460,1),(7,461,1),(7,462,1),(7,463,6),(7,464,2),(7,465,2),(7,535,3),(6,610,3);
/*!40000 ALTER TABLE `ps_search_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_search_word`
--

DROP TABLE IF EXISTS `ps_search_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_search_word` (
  `id_word` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `word` varchar(15) NOT NULL,
  PRIMARY KEY (`id_word`),
  UNIQUE KEY `id_lang` (`id_lang`,`id_shop`,`word`)
) ENGINE=InnoDB AUTO_INCREMENT=611 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_search_word`
--

LOCK TABLES `ps_search_word` WRITE;
/*!40000 ALTER TABLE `ps_search_word` DISABLE KEYS */;
INSERT INTO `ps_search_word` VALUES (157,1,1,'100'),(306,1,1,'ajustables'),(12,1,1,'ajuste'),(82,1,1,'algodon'),(165,1,1,'alta'),(313,1,1,'amarillo'),(81,1,1,'azul'),(161,1,1,'blancas'),(89,1,1,'blanco'),(84,1,1,'blusa'),(87,1,1,'blusas'),(1,1,1,'camiseta'),(78,1,1,'camisetas'),(8,1,1,'cerrado'),(164,1,1,'cintura'),(167,1,1,'colorido'),(14,1,1,'combinala'),(13,1,1,'comodo'),(5,1,1,'corta'),(308,1,1,'debajo'),(309,1,1,'del'),(3,1,1,'destenido'),(156,1,1,'doble'),(85,1,1,'drapeado'),(2,1,1,'efecto'),(11,1,1,'elastico'),(7,1,1,'escote'),(17,1,1,'estaras'),(162,1,1,'falda'),(86,1,1,'femenino'),(305,1,1,'finos'),(307,1,1,'fruncido'),(384,1,1,'gasa'),(312,1,1,'inferior'),(83,1,1,'informal'),(166,1,1,'informales'),(535,1,1,'inicio'),(18,1,1,'lista'),(4,1,1,'manga'),(9,1,1,'material'),(464,1,1,'media'),(80,1,1,'naranja'),(160,1,1,'negras'),(16,1,1,'paja'),(311,1,1,'parte'),(310,1,1,'pecho'),(465,1,1,'pierna'),(610,1,1,'plata'),(386,1,1,'poliester'),(461,1,1,'pronunciado'),(159,1,1,'rayas'),(385,1,1,'rodilla'),(163,1,1,'skater'),(15,1,1,'sombrero'),(10,1,1,'suave'),(460,1,1,'tejido'),(304,1,1,'tirantes'),(158,1,1,'top'),(19,1,1,'verano'),(463,1,1,'verde'),(462,1,1,'yprestando');
/*!40000 ALTER TABLE `ps_search_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_sekeyword`
--

DROP TABLE IF EXISTS `ps_sekeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_sekeyword` (
  `id_sekeyword` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `keyword` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_sekeyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_sekeyword`
--

LOCK TABLES `ps_sekeyword` WRITE;
/*!40000 ALTER TABLE `ps_sekeyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_sekeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_shop`
--

DROP TABLE IF EXISTS `ps_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_shop` (
  `id_shop` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `id_category` int(11) unsigned NOT NULL DEFAULT '1',
  `id_theme` int(1) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`,`deleted`),
  KEY `id_category` (`id_category`),
  KEY `id_theme` (`id_theme`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_shop`
--

LOCK TABLES `ps_shop` WRITE;
/*!40000 ALTER TABLE `ps_shop` DISABLE KEYS */;
INSERT INTO `ps_shop` VALUES (1,1,'Joyeria Guadalajara',2,1,1,0);
/*!40000 ALTER TABLE `ps_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_shop_group`
--

DROP TABLE IF EXISTS `ps_shop_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_shop_group` (
  `id_shop_group` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `share_customer` tinyint(1) NOT NULL,
  `share_order` tinyint(1) NOT NULL,
  `share_stock` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_shop_group`),
  KEY `deleted` (`deleted`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_shop_group`
--

LOCK TABLES `ps_shop_group` WRITE;
/*!40000 ALTER TABLE `ps_shop_group` DISABLE KEYS */;
INSERT INTO `ps_shop_group` VALUES (1,'Default',0,0,0,1,0);
/*!40000 ALTER TABLE `ps_shop_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_shop_url`
--

DROP TABLE IF EXISTS `ps_shop_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_shop_url` (
  `id_shop_url` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL,
  `domain` varchar(150) NOT NULL,
  `domain_ssl` varchar(150) NOT NULL,
  `physical_uri` varchar(64) NOT NULL,
  `virtual_uri` varchar(64) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_shop_url`),
  UNIQUE KEY `full_shop_url` (`domain`,`physical_uri`,`virtual_uri`),
  UNIQUE KEY `full_shop_url_ssl` (`domain_ssl`,`physical_uri`,`virtual_uri`),
  KEY `id_shop` (`id_shop`,`main`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_shop_url`
--

LOCK TABLES `ps_shop_url` WRITE;
/*!40000 ALTER TABLE `ps_shop_url` DISABLE KEYS */;
INSERT INTO `ps_shop_url` VALUES (1,1,'localhost:8888','localhost:8888','/joyeria/','',1,1);
/*!40000 ALTER TABLE `ps_shop_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_smarty_cache`
--

DROP TABLE IF EXISTS `ps_smarty_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_smarty_cache` (
  `id_smarty_cache` char(40) NOT NULL,
  `name` char(40) NOT NULL,
  `cache_id` varchar(254) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id_smarty_cache`),
  KEY `name` (`name`),
  KEY `cache_id` (`cache_id`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_smarty_cache`
--

LOCK TABLES `ps_smarty_cache` WRITE;
/*!40000 ALTER TABLE `ps_smarty_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_smarty_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_smarty_last_flush`
--

DROP TABLE IF EXISTS `ps_smarty_last_flush`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_smarty_last_flush` (
  `type` enum('compile','template') NOT NULL DEFAULT 'compile',
  `last_flush` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_smarty_last_flush`
--

LOCK TABLES `ps_smarty_last_flush` WRITE;
/*!40000 ALTER TABLE `ps_smarty_last_flush` DISABLE KEYS */;
INSERT INTO `ps_smarty_last_flush` VALUES ('compile','2016-06-16 21:12:00'),('template','2016-07-25 15:17:02');
/*!40000 ALTER TABLE `ps_smarty_last_flush` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_smarty_lazy_cache`
--

DROP TABLE IF EXISTS `ps_smarty_lazy_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_smarty_lazy_cache` (
  `template_hash` varchar(32) NOT NULL DEFAULT '',
  `cache_id` varchar(255) NOT NULL DEFAULT '',
  `compile_id` varchar(32) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`template_hash`,`cache_id`,`compile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_smarty_lazy_cache`
--

LOCK TABLES `ps_smarty_lazy_cache` WRITE;
/*!40000 ALTER TABLE `ps_smarty_lazy_cache` DISABLE KEYS */;
INSERT INTO `ps_smarty_lazy_cache` VALUES ('079cc03315a459734d3e0649c5313044','blockbanner|1|1|145','','blockbanner\\1\\1\\145\\6a\\13\\ab\\6a13ab0394699f4af141cc54bc08f7f0f2f000c1.blockbanner.tpl.php','2016-07-25 15:19:10'),('07f83952d0d21d06ca02ceb5b0398af4','socialsharing|496|1|1|145','','socialsharing\\496\\1\\1\\145\\9e\\cc\\14\\9ecc1478af62de2eadee7dfe7e22bfe5e49840d5.socialsharing.tpl.php','2016-08-10 09:21:31'),('07f83952d0d21d06ca02ceb5b0398af4','socialsharing|505|1|1|145','','socialsharing\\505\\1\\1\\145\\9e\\cc\\14\\9ecc1478af62de2eadee7dfe7e22bfe5e49840d5.socialsharing.tpl.php','2016-08-10 09:21:53'),('07f83952d0d21d06ca02ceb5b0398af4','socialsharing|632|1|1|145','','socialsharing\\632\\1\\1\\145\\9e\\cc\\14\\9ecc1478af62de2eadee7dfe7e22bfe5e49840d5.socialsharing.tpl.php','2016-08-10 09:18:14'),('07f83952d0d21d06ca02ceb5b0398af4','socialsharing|633|1|1|145','','socialsharing\\633\\1\\1\\145\\9e\\cc\\14\\9ecc1478af62de2eadee7dfe7e22bfe5e49840d5.socialsharing.tpl.php','2016-08-10 09:16:55'),('07f83952d0d21d06ca02ceb5b0398af4','socialsharing|641|1|1|145','','socialsharing\\641\\1\\1\\145\\9e\\cc\\14\\9ecc1478af62de2eadee7dfe7e22bfe5e49840d5.socialsharing.tpl.php','2016-08-10 09:17:50'),('07f83952d0d21d06ca02ceb5b0398af4','socialsharing|647|1|1|145','','socialsharing\\647\\1\\1\\145\\9e\\cc\\14\\9ecc1478af62de2eadee7dfe7e22bfe5e49840d5.socialsharing.tpl.php','2016-08-10 09:18:35'),('07f83952d0d21d06ca02ceb5b0398af4','socialsharing|669|1|1|145','','socialsharing\\669\\1\\1\\145\\9e\\cc\\14\\9ecc1478af62de2eadee7dfe7e22bfe5e49840d5.socialsharing.tpl.php','2016-08-10 09:19:03'),('0bf8e9d474af7cf35065c9deb445bfcf','blocknewproducts|20160810|1|1|145','','blocknewproducts\\20160810\\1\\1\\145\\7c\\8d\\02\\7c8d02a50f9a339c4bbf56962b94b90b10c302ad.blocknewproducts.tpl.php','2016-08-10 09:16:46'),('23224971332b8688e8517d9720a18473','blockmyaccountfooter|1|1|145','','blockmyaccountfooter\\1\\1\\145\\02\\53\\05\\025305fdba62b85a52e3e56598ab58b15ea0dc24.blockmyaccountfooter.tpl.php','2016-07-25 15:19:09'),('2354d36e18c2fb772212fa9e5a607fd1','homefeatured|1|1|145','','homefeatured\\1\\1\\145\\69\\06\\22\\690622b473e85c98bb54a5adf90fe1d702a38d0c.homefeatured.tpl.php','2016-08-09 16:04:05'),('266215c601792a82efffe0c6f764b6a5','blocknewproducts-tab|20160809|1|1|145','','blocknewproducts_tab\\20160809\\1\\1\\145\\76\\63\\03\\766303c73d9c5c0c945262a284d26feee6565f88.tab.tpl.php','2016-08-09 16:04:05'),('266215c601792a82efffe0c6f764b6a5','blocknewproducts-tab|20160810|1|1|145','','blocknewproducts_tab\\20160810\\1\\1\\145\\76\\63\\03\\766303c73d9c5c0c945262a284d26feee6565f88.tab.tpl.php','2016-08-10 08:30:59'),('31140ec7b7d71551b8d46984727dc03d','homefeatured-tab|1|1|145','','homefeatured_tab\\1\\1\\145\\e6\\8f\\cd\\e68fcdc82f854e2d324faf4cd2305d3456bb0850.tab.tpl.php','2016-08-09 16:04:05'),('3641c8fd38dd15d17190374533b01f3e','blockcmsinfo|1|1|145','','blockcmsinfo\\1\\1\\145\\56\\ff\\d9\\56ffd961cf38092fd836e4d01943213373bacc49.blockcmsinfo.tpl.php','2016-07-25 15:19:09'),('3962aa5a60753c0332ad6ec7625ae1c7','blockstore|1|1|145','','blockstore\\1\\1\\145\\d7\\df\\6e\\d7df6e7dc538293dd940c7c721d5e97a93a7b94c.blockstore.tpl.php','2016-08-10 09:16:47'),('4a7f2668a1ded92f66f1630f4388d8ca','blockfacebook|1|1|145','','blockfacebook\\1\\1\\145\\12\\f1\\dd\\12f1ddfbffb2009cec83f5b43df31ec181706915.blockfacebook.tpl.php','2016-08-10 12:36:45'),('57eedfbdcf59173db2cc576b64912d5c','blockcategories|1|1|145|11|11|1','','blockcategories\\1\\1\\145\\11\\11\\1\\ab\\62\\62\\ab62626b0fa991a77745d41d7e1076844a80b08b.blockcategories.tpl.php','2016-08-10 09:16:46'),('57eedfbdcf59173db2cc576b64912d5c','blockcategories|1|1|145|9|9|1','','blockcategories\\1\\1\\145\\9\\9\\1\\ab\\62\\62\\ab62626b0fa991a77745d41d7e1076844a80b08b.blockcategories.tpl.php','2016-08-10 09:21:15'),('5a05ff5f9265efc625c263be3ff04cfb','homeslider|1|1|145','','homeslider\\1\\1\\145\\1a\\e9\\09\\1ae90991ab903157d1e9b2ce0b1c3d4a02cbf46e.homeslider.tpl.php','2016-07-25 15:19:10'),('6c81cf10e27a046d611b55f95fd9ed8a','blockspecials|20160810|15|20160810|1|1|145','','','2016-08-10 09:16:47'),('6c81cf10e27a046d611b55f95fd9ed8a','blockspecials|20160810|4|20160810|1|1|145','','','2016-08-10 09:21:15'),('6dcbcfded5e132311fdb9716e24de027','blocksearch-top|1|1|145','','blocksearch_top\\1\\1\\145\\82\\e7\\25\\82e725723c5290f9a24c83e2ddaba80763307336.blocksearch-top.tpl.php','2016-08-09 11:19:01'),('7900b712be7d8fabe39681f7f93914ab','blocktopmenu|1|1|145|category|11','','blocktopmenu\\1\\1\\145\\category\\11\\f8\\2b\\4e\\f82b4e02516885413e4751de8ac6b1b503d7e792.blocktopmenu.tpl.php','2016-08-10 09:16:45'),('7900b712be7d8fabe39681f7f93914ab','blocktopmenu|1|1|145|category|9','','blocktopmenu\\1\\1\\145\\category\\9\\f8\\2b\\4e\\f82b4e02516885413e4751de8ac6b1b503d7e792.blocktopmenu.tpl.php','2016-08-10 09:21:15'),('7900b712be7d8fabe39681f7f93914ab','blocktopmenu|1|1|145|index','','blocktopmenu\\1\\1\\145\\index\\f8\\2b\\4e\\f82b4e02516885413e4751de8ac6b1b503d7e792.blocktopmenu.tpl.php','2016-08-09 16:04:05'),('7900b712be7d8fabe39681f7f93914ab','blocktopmenu|1|1|145|product|496','','blocktopmenu\\1\\1\\145\\product\\496\\f8\\2b\\4e\\f82b4e02516885413e4751de8ac6b1b503d7e792.blocktopmenu.tpl.php','2016-08-10 09:21:31'),('7900b712be7d8fabe39681f7f93914ab','blocktopmenu|1|1|145|product|505','','blocktopmenu\\1\\1\\145\\product\\505\\f8\\2b\\4e\\f82b4e02516885413e4751de8ac6b1b503d7e792.blocktopmenu.tpl.php','2016-08-10 09:21:53'),('7900b712be7d8fabe39681f7f93914ab','blocktopmenu|1|1|145|product|632','','blocktopmenu\\1\\1\\145\\product\\632\\f8\\2b\\4e\\f82b4e02516885413e4751de8ac6b1b503d7e792.blocktopmenu.tpl.php','2016-08-10 09:18:14'),('7900b712be7d8fabe39681f7f93914ab','blocktopmenu|1|1|145|product|633','','blocktopmenu\\1\\1\\145\\product\\633\\f8\\2b\\4e\\f82b4e02516885413e4751de8ac6b1b503d7e792.blocktopmenu.tpl.php','2016-08-10 09:16:55'),('7900b712be7d8fabe39681f7f93914ab','blocktopmenu|1|1|145|product|641','','blocktopmenu\\1\\1\\145\\product\\641\\f8\\2b\\4e\\f82b4e02516885413e4751de8ac6b1b503d7e792.blocktopmenu.tpl.php','2016-08-10 09:17:50'),('7900b712be7d8fabe39681f7f93914ab','blocktopmenu|1|1|145|product|647','','blocktopmenu\\1\\1\\145\\product\\647\\f8\\2b\\4e\\f82b4e02516885413e4751de8ac6b1b503d7e792.blocktopmenu.tpl.php','2016-08-10 09:18:35'),('7900b712be7d8fabe39681f7f93914ab','blocktopmenu|1|1|145|product|669','','blocktopmenu\\1\\1\\145\\product\\669\\f8\\2b\\4e\\f82b4e02516885413e4751de8ac6b1b503d7e792.blocktopmenu.tpl.php','2016-08-10 09:19:03'),('7ffdca2e5bc6d4bd6e307ae3d60e1500','blockcontactinfos|1|1|145','','blockcontactinfos\\1\\1\\145\\e2\\d9\\10\\e2d910687566971c39daa636615f6bcb172433ca.blockcontactinfos.tpl.php','2016-07-25 15:19:09'),('8828cc9277877987aafacfd793e76469','productlist_colors|488|1|1','','','2016-08-10 09:21:15'),('8828cc9277877987aafacfd793e76469','productlist_colors|489|1|1','','','2016-08-10 09:21:15'),('8828cc9277877987aafacfd793e76469','productlist_colors|490|1|1','','','2016-08-10 09:21:15'),('8828cc9277877987aafacfd793e76469','productlist_colors|491|1|1','','','2016-08-10 09:21:15'),('8828cc9277877987aafacfd793e76469','productlist_colors|492|1|1','','','2016-08-10 09:21:15'),('8828cc9277877987aafacfd793e76469','productlist_colors|493|1|1','','','2016-08-10 09:21:15'),('8828cc9277877987aafacfd793e76469','productlist_colors|494|1|1','','','2016-08-10 09:21:15'),('8828cc9277877987aafacfd793e76469','productlist_colors|495|1|1','','','2016-08-10 09:21:15'),('8828cc9277877987aafacfd793e76469','productlist_colors|496|1|1','','','2016-08-10 09:21:15'),('8828cc9277877987aafacfd793e76469','productlist_colors|497|1|1','','','2016-08-10 09:21:15'),('8828cc9277877987aafacfd793e76469','productlist_colors|498|1|1','','','2016-08-10 09:21:15'),('8828cc9277877987aafacfd793e76469','productlist_colors|499|1|1','','','2016-08-10 09:21:15'),('8828cc9277877987aafacfd793e76469','productlist_colors|500|1|1','','','2016-08-10 09:21:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|501|1|1','','','2016-08-10 09:21:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|502|1|1','','','2016-08-10 09:21:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|503|1|1','','','2016-08-10 09:21:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|504|1|1','','','2016-08-10 09:21:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|505|1|1','','','2016-08-10 09:21:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|506|1|1','','','2016-08-10 09:21:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|507|1|1','','','2016-08-10 09:21:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|508|1|1','','','2016-08-10 09:21:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|509|1|1','','','2016-08-10 09:21:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|510|1|1','','','2016-08-10 09:21:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|511|1|1','','','2016-08-10 09:21:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|630|1|1','','','2016-08-10 09:16:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|631|1|1','','','2016-08-10 09:16:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|632|1|1','','','2016-08-10 09:16:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|633|1|1','','','2016-08-10 09:16:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|634|1|1','','','2016-08-10 09:16:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|635|1|1','','','2016-08-10 09:16:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|636|1|1','','','2016-08-10 09:16:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|637|1|1','','','2016-08-10 09:16:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|638|1|1','','','2016-08-10 09:16:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|639|1|1','','','2016-08-10 09:16:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|640|1|1','','','2016-08-10 09:16:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|641|1|1','','','2016-08-10 09:16:47'),('8828cc9277877987aafacfd793e76469','productlist_colors|642|1|1','','','2016-08-10 09:18:30'),('8828cc9277877987aafacfd793e76469','productlist_colors|643|1|1','','','2016-08-10 09:18:30'),('8828cc9277877987aafacfd793e76469','productlist_colors|647|1|1','','','2016-08-10 09:18:31'),('8828cc9277877987aafacfd793e76469','productlist_colors|648|1|1','','','2016-08-10 09:18:31'),('8828cc9277877987aafacfd793e76469','productlist_colors|649|1|1','','','2016-08-10 09:18:31'),('8828cc9277877987aafacfd793e76469','productlist_colors|650|1|1','','','2016-08-10 09:18:31'),('8828cc9277877987aafacfd793e76469','productlist_colors|651|1|1','','','2016-08-10 09:18:31'),('8828cc9277877987aafacfd793e76469','productlist_colors|652|1|1','','','2016-08-10 09:18:31'),('8828cc9277877987aafacfd793e76469','productlist_colors|653|1|1','','','2016-08-10 09:18:31'),('8828cc9277877987aafacfd793e76469','productlist_colors|654|1|1','','','2016-08-10 09:18:31'),('8828cc9277877987aafacfd793e76469','productlist_colors|655|1|1','','','2016-08-10 09:18:31'),('8828cc9277877987aafacfd793e76469','productlist_colors|656|1|1','','','2016-08-10 09:18:31'),('8828cc9277877987aafacfd793e76469','productlist_colors|657|1|1','','','2016-08-10 09:18:50'),('8828cc9277877987aafacfd793e76469','productlist_colors|658|1|1','','','2016-08-10 09:18:50'),('8828cc9277877987aafacfd793e76469','productlist_colors|659|1|1','','','2016-08-10 09:18:50'),('8828cc9277877987aafacfd793e76469','productlist_colors|660|1|1','','','2016-08-10 09:18:50'),('8828cc9277877987aafacfd793e76469','productlist_colors|661|1|1','','','2016-08-10 09:18:50'),('8828cc9277877987aafacfd793e76469','productlist_colors|662|1|1','','','2016-08-10 09:18:50'),('8828cc9277877987aafacfd793e76469','productlist_colors|663|1|1','','','2016-08-10 09:18:50'),('8828cc9277877987aafacfd793e76469','productlist_colors|664|1|1','','','2016-08-10 09:18:50'),('8828cc9277877987aafacfd793e76469','productlist_colors|665|1|1','','','2016-08-10 09:18:50'),('8828cc9277877987aafacfd793e76469','productlist_colors|666|1|1','','','2016-08-10 09:18:50'),('8828cc9277877987aafacfd793e76469','productlist_colors|667|1|1','','','2016-08-10 09:18:50'),('8828cc9277877987aafacfd793e76469','productlist_colors|668|1|1','','','2016-08-10 09:18:50'),('8828cc9277877987aafacfd793e76469','productlist_colors|669|1|1','','','2016-08-10 09:18:58'),('8828cc9277877987aafacfd793e76469','productlist_colors|670|1|1','','','2016-08-10 09:18:58'),('8828cc9277877987aafacfd793e76469','productlist_colors|671|1|1','','','2016-08-10 09:18:58'),('8828cc9277877987aafacfd793e76469','productlist_colors|672|1|1','','','2016-08-10 09:18:58'),('8828cc9277877987aafacfd793e76469','productlist_colors|673|1|1','','','2016-08-10 09:18:58'),('8828cc9277877987aafacfd793e76469','productlist_colors|674|1|1','','','2016-08-10 09:18:58'),('8828cc9277877987aafacfd793e76469','productlist_colors|675|1|1','','','2016-08-10 09:18:58'),('a15c8d5fee68efa35464e9a4de992a06','socialsharing_header|496|1|1|145','','socialsharing_header\\496\\1\\1\\145\\67\\1f\\e1\\671fe1eabcb158f99386a5038bb7329862ff4f12.socialsharing_header.tpl.php','2016-08-10 09:21:30'),('a15c8d5fee68efa35464e9a4de992a06','socialsharing_header|505|1|1|145','','socialsharing_header\\505\\1\\1\\145\\67\\1f\\e1\\671fe1eabcb158f99386a5038bb7329862ff4f12.socialsharing_header.tpl.php','2016-08-10 09:21:53'),('a15c8d5fee68efa35464e9a4de992a06','socialsharing_header|632|1|1|145','','socialsharing_header\\632\\1\\1\\145\\67\\1f\\e1\\671fe1eabcb158f99386a5038bb7329862ff4f12.socialsharing_header.tpl.php','2016-08-10 09:18:13'),('a15c8d5fee68efa35464e9a4de992a06','socialsharing_header|633|1|1|145','','socialsharing_header\\633\\1\\1\\145\\67\\1f\\e1\\671fe1eabcb158f99386a5038bb7329862ff4f12.socialsharing_header.tpl.php','2016-08-10 09:16:55'),('a15c8d5fee68efa35464e9a4de992a06','socialsharing_header|641|1|1|145','','socialsharing_header\\641\\1\\1\\145\\67\\1f\\e1\\671fe1eabcb158f99386a5038bb7329862ff4f12.socialsharing_header.tpl.php','2016-08-10 09:17:50'),('a15c8d5fee68efa35464e9a4de992a06','socialsharing_header|647|1|1|145','','socialsharing_header\\647\\1\\1\\145\\67\\1f\\e1\\671fe1eabcb158f99386a5038bb7329862ff4f12.socialsharing_header.tpl.php','2016-08-10 09:18:35'),('a15c8d5fee68efa35464e9a4de992a06','socialsharing_header|669|1|1|145','','socialsharing_header\\669\\1\\1\\145\\67\\1f\\e1\\671fe1eabcb158f99386a5038bb7329862ff4f12.socialsharing_header.tpl.php','2016-08-10 09:19:03'),('a31f4fa8f7c02eef7e8111581d99c3dc','productpaymentlogos|1|1|145','','productpaymentlogos\\1\\1\\145\\08\\a3\\42\\08a3421aff5a29214f7c5cec8e2adbc54153d570.productpaymentlogos.tpl.php','2016-08-10 09:16:55'),('b2542d334d5b07a4af3b3aa5fa6d7236','blocknewproducts-home|20160809|1|1|145','','blocknewproducts_home\\20160809\\1\\1\\145\\a8\\b1\\cf\\a8b1cfc95f2eb79b4b9bf1345977e6c719aaf8ae.blocknewproducts_home.tpl.php','2016-08-09 16:04:05'),('b2542d334d5b07a4af3b3aa5fa6d7236','blocknewproducts-home|20160810|1|1|145','','blocknewproducts_home\\20160810\\1\\1\\145\\a8\\b1\\cf\\a8b1cfc95f2eb79b4b9bf1345977e6c719aaf8ae.blocknewproducts_home.tpl.php','2016-08-10 08:31:00'),('c5b6cbafe3a5f4747b6b03eae4805efa','blockcategories|1|1|145|1','','blockcategories\\1\\1\\145\\1\\40\\78\\2b\\40782bda250f8f68018fff75dd4d3035c3ef205a.blockcategories_footer.tpl.php','2016-07-25 15:19:09'),('c5b6cbafe3a5f4747b6b03eae4805efa','blockcategories|1|1|145|11|1','','blockcategories\\1\\1\\145\\11\\1\\40\\78\\2b\\40782bda250f8f68018fff75dd4d3035c3ef205a.blockcategories_footer.tpl.php','2016-08-10 09:16:47'),('c5b6cbafe3a5f4747b6b03eae4805efa','blockcategories|1|1|145|1|1','','blockcategories\\1\\1\\145\\1\\1\\40\\78\\2b\\40782bda250f8f68018fff75dd4d3035c3ef205a.blockcategories_footer.tpl.php','2016-08-10 09:16:55'),('c5b6cbafe3a5f4747b6b03eae4805efa','blockcategories|1|1|145|9|1','','blockcategories\\1\\1\\145\\9\\1\\40\\78\\2b\\40782bda250f8f68018fff75dd4d3035c3ef205a.blockcategories_footer.tpl.php','2016-08-10 09:21:15'),('cfe7c755ca7a194036d8a635b3020f08','blockcontact|1|1|145','','blockcontact\\1\\1\\145\\ca\\8d\\95\\ca8d95ea6104ff536a5697e559774358f31d160d.nav.tpl.php','2016-07-25 15:19:10'),('dd18dd6d821005700de7f594c0f2757e','blocksocial|1|1|145','','blocksocial\\1\\1\\145\\93\\0b\\af\\930bafd6718c66811165c1bab17c380222caaccf.blocksocial.tpl.php','2016-07-25 15:19:09'),('e6ea5a14e80c0d9f217ae0ac7d76b6fd','blockcms|0|1|1|145','','blockcms\\0\\1\\1\\145\\84\\78\\52\\847852a5dabadd41fa78d71f350de130af6c5a72.blockcms.tpl.php','2016-08-10 09:16:46'),('e6ea5a14e80c0d9f217ae0ac7d76b6fd','blockcms|2|1|1|145','','blockcms\\2\\1\\1\\145\\84\\78\\52\\847852a5dabadd41fa78d71f350de130af6c5a72.blockcms.tpl.php','2016-07-25 15:19:09'),('efc7cbd8124656c1ea00720158e927de','blockspecials-home|20160809|1|1|145','','','2016-08-09 16:04:05'),('efc7cbd8124656c1ea00720158e927de','blockspecials-home|20160810|1|1|145','','','2016-08-10 12:36:45'),('fdba68d2437852fa43f4b546382eafe8','blockspecials-tab|20160809|1|1|145','','','2016-08-09 16:04:05'),('fdba68d2437852fa43f4b546382eafe8','blockspecials-tab|20160810|1|1|145','','','2016-08-10 12:36:45');
/*!40000 ALTER TABLE `ps_smarty_lazy_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_specific_price`
--

DROP TABLE IF EXISTS `ps_specific_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_specific_price` (
  `id_specific_price` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_specific_price_rule` int(11) unsigned NOT NULL,
  `id_cart` int(11) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(11) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  `price` decimal(20,6) NOT NULL,
  `from_quantity` mediumint(8) unsigned NOT NULL,
  `reduction` decimal(20,6) NOT NULL,
  `reduction_tax` tinyint(1) NOT NULL DEFAULT '1',
  `reduction_type` enum('amount','percentage') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  PRIMARY KEY (`id_specific_price`),
  UNIQUE KEY `id_product_2` (`id_product`,`id_product_attribute`,`id_customer`,`id_cart`,`from`,`to`,`id_shop`,`id_shop_group`,`id_currency`,`id_country`,`id_group`,`from_quantity`,`id_specific_price_rule`),
  KEY `id_product` (`id_product`,`id_shop`,`id_currency`,`id_country`,`id_group`,`id_customer`,`from_quantity`,`from`,`to`),
  KEY `from_quantity` (`from_quantity`),
  KEY `id_specific_price_rule` (`id_specific_price_rule`),
  KEY `id_cart` (`id_cart`),
  KEY `id_product_attribute` (`id_product_attribute`),
  KEY `id_shop` (`id_shop`),
  KEY `id_customer` (`id_customer`),
  KEY `from` (`from`),
  KEY `to` (`to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_specific_price`
--

LOCK TABLES `ps_specific_price` WRITE;
/*!40000 ALTER TABLE `ps_specific_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_specific_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_specific_price_priority`
--

DROP TABLE IF EXISTS `ps_specific_price_priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_specific_price_priority` (
  `id_specific_price_priority` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `priority` varchar(80) NOT NULL,
  PRIMARY KEY (`id_specific_price_priority`,`id_product`),
  UNIQUE KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_specific_price_priority`
--

LOCK TABLES `ps_specific_price_priority` WRITE;
/*!40000 ALTER TABLE `ps_specific_price_priority` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_specific_price_priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_specific_price_rule`
--

DROP TABLE IF EXISTS `ps_specific_price_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_specific_price_rule` (
  `id_specific_price_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_currency` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `from_quantity` mediumint(8) unsigned NOT NULL,
  `price` decimal(20,6) DEFAULT NULL,
  `reduction` decimal(20,6) NOT NULL,
  `reduction_tax` tinyint(1) NOT NULL DEFAULT '1',
  `reduction_type` enum('amount','percentage') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  PRIMARY KEY (`id_specific_price_rule`),
  KEY `id_product` (`id_shop`,`id_currency`,`id_country`,`id_group`,`from_quantity`,`from`,`to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_specific_price_rule`
--

LOCK TABLES `ps_specific_price_rule` WRITE;
/*!40000 ALTER TABLE `ps_specific_price_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_specific_price_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_specific_price_rule_condition`
--

DROP TABLE IF EXISTS `ps_specific_price_rule_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_specific_price_rule_condition` (
  `id_specific_price_rule_condition` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_specific_price_rule_condition_group` int(11) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id_specific_price_rule_condition`),
  KEY `id_specific_price_rule_condition_group` (`id_specific_price_rule_condition_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_specific_price_rule_condition`
--

LOCK TABLES `ps_specific_price_rule_condition` WRITE;
/*!40000 ALTER TABLE `ps_specific_price_rule_condition` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_specific_price_rule_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_specific_price_rule_condition_group`
--

DROP TABLE IF EXISTS `ps_specific_price_rule_condition_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_specific_price_rule_condition_group` (
  `id_specific_price_rule_condition_group` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_specific_price_rule` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_specific_price_rule_condition_group`,`id_specific_price_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_specific_price_rule_condition_group`
--

LOCK TABLES `ps_specific_price_rule_condition_group` WRITE;
/*!40000 ALTER TABLE `ps_specific_price_rule_condition_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_specific_price_rule_condition_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_state`
--

DROP TABLE IF EXISTS `ps_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_state` (
  `id_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(11) unsigned NOT NULL,
  `id_zone` int(11) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `iso_code` varchar(7) NOT NULL,
  `tax_behavior` smallint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_state`),
  KEY `id_country` (`id_country`),
  KEY `name` (`name`),
  KEY `id_zone` (`id_zone`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_state`
--

LOCK TABLES `ps_state` WRITE;
/*!40000 ALTER TABLE `ps_state` DISABLE KEYS */;
INSERT INTO `ps_state` VALUES (1,21,2,'Alabama','AL',0,1),(2,21,2,'Alaska','AK',0,1),(3,21,2,'Arizona','AZ',0,1),(4,21,2,'Arkansas','AR',0,1),(5,21,2,'California','CA',0,1),(6,21,2,'Colorado','CO',0,1),(7,21,2,'Connecticut','CT',0,1),(8,21,2,'Delaware','DE',0,1),(9,21,2,'Florida','FL',0,1),(10,21,2,'Georgia','GA',0,1),(11,21,2,'Hawaii','HI',0,1),(12,21,2,'Idaho','ID',0,1),(13,21,2,'Illinois','IL',0,1),(14,21,2,'Indiana','IN',0,1),(15,21,2,'Iowa','IA',0,1),(16,21,2,'Kansas','KS',0,1),(17,21,2,'Kentucky','KY',0,1),(18,21,2,'Louisiana','LA',0,1),(19,21,2,'Maine','ME',0,1),(20,21,2,'Maryland','MD',0,1),(21,21,2,'Massachusetts','MA',0,1),(22,21,2,'Michigan','MI',0,1),(23,21,2,'Minnesota','MN',0,1),(24,21,2,'Mississippi','MS',0,1),(25,21,2,'Missouri','MO',0,1),(26,21,2,'Montana','MT',0,1),(27,21,2,'Nebraska','NE',0,1),(28,21,2,'Nevada','NV',0,1),(29,21,2,'New Hampshire','NH',0,1),(30,21,2,'New Jersey','NJ',0,1),(31,21,2,'New Mexico','NM',0,1),(32,21,2,'New York','NY',0,1),(33,21,2,'North Carolina','NC',0,1),(34,21,2,'North Dakota','ND',0,1),(35,21,2,'Ohio','OH',0,1),(36,21,2,'Oklahoma','OK',0,1),(37,21,2,'Oregon','OR',0,1),(38,21,2,'Pennsylvania','PA',0,1),(39,21,2,'Rhode Island','RI',0,1),(40,21,2,'South Carolina','SC',0,1),(41,21,2,'South Dakota','SD',0,1),(42,21,2,'Tennessee','TN',0,1),(43,21,2,'Texas','TX',0,1),(44,21,2,'Utah','UT',0,1),(45,21,2,'Vermont','VT',0,1),(46,21,2,'Virginia','VA',0,1),(47,21,2,'Washington','WA',0,1),(48,21,2,'West Virginia','WV',0,1),(49,21,2,'Wisconsin','WI',0,1),(50,21,2,'Wyoming','WY',0,1),(51,21,2,'Puerto Rico','PR',0,1),(52,21,2,'US Virgin Islands','VI',0,1),(53,21,2,'District of Columbia','DC',0,1),(54,145,2,'Aguascalientes','AGS',0,1),(55,145,2,'Baja California','BCN',0,1),(56,145,2,'Baja California Sur','BCS',0,1),(57,145,2,'Campeche','CAM',0,1),(58,145,2,'Chiapas','CHP',0,1),(59,145,2,'Chihuahua','CHH',0,1),(60,145,2,'Coahuila','COA',0,1),(61,145,2,'Colima','COL',0,1),(62,145,2,'Distrito Federal','DIF',0,1),(63,145,2,'Durango','DUR',0,1),(64,145,2,'Guanajuato','GUA',0,1),(65,145,2,'Guerrero','GRO',0,1),(66,145,2,'Hidalgo','HID',0,1),(67,145,2,'Jalisco','JAL',0,1),(68,145,2,'Estado de México','MEX',0,1),(69,145,2,'Michoacán','MIC',0,1),(70,145,2,'Morelos','MOR',0,1),(71,145,2,'Nayarit','NAY',0,1),(72,145,2,'Nuevo León','NLE',0,1),(73,145,2,'Oaxaca','OAX',0,1),(74,145,2,'Puebla','PUE',0,1),(75,145,2,'Querétaro','QUE',0,1),(76,145,2,'Quintana Roo','ROO',0,1),(77,145,2,'San Luis Potosí','SLP',0,1),(78,145,2,'Sinaloa','SIN',0,1),(79,145,2,'Sonora','SON',0,1),(80,145,2,'Tabasco','TAB',0,1),(81,145,2,'Tamaulipas','TAM',0,1),(82,145,2,'Tlaxcala','TLA',0,1),(83,145,2,'Veracruz','VER',0,1),(84,145,2,'Yucatán','YUC',0,1),(85,145,2,'Zacatecas','ZAC',0,1),(86,4,2,'Ontario','ON',0,1),(87,4,2,'Quebec','QC',0,1),(88,4,2,'British Columbia','BC',0,1),(89,4,2,'Alberta','AB',0,1),(90,4,2,'Manitoba','MB',0,1),(91,4,2,'Saskatchewan','SK',0,1),(92,4,2,'Nova Scotia','NS',0,1),(93,4,2,'New Brunswick','NB',0,1),(94,4,2,'Newfoundland and Labrador','NL',0,1),(95,4,2,'Prince Edward Island','PE',0,1),(96,4,2,'Northwest Territories','NT',0,1),(97,4,2,'Yukon','YT',0,1),(98,4,2,'Nunavut','NU',0,1),(99,44,6,'Buenos Aires','B',0,1),(100,44,6,'Catamarca','K',0,1),(101,44,6,'Chaco','H',0,1),(102,44,6,'Chubut','U',0,1),(103,44,6,'Ciudad de Buenos Aires','C',0,1),(104,44,6,'Córdoba','X',0,1),(105,44,6,'Corrientes','W',0,1),(106,44,6,'Entre Ríos','E',0,1),(107,44,6,'Formosa','P',0,1),(108,44,6,'Jujuy','Y',0,1),(109,44,6,'La Pampa','L',0,1),(110,44,6,'La Rioja','F',0,1),(111,44,6,'Mendoza','M',0,1),(112,44,6,'Misiones','N',0,1),(113,44,6,'Neuquén','Q',0,1),(114,44,6,'Río Negro','R',0,1),(115,44,6,'Salta','A',0,1),(116,44,6,'San Juan','J',0,1),(117,44,6,'San Luis','D',0,1),(118,44,6,'Santa Cruz','Z',0,1),(119,44,6,'Santa Fe','S',0,1),(120,44,6,'Santiago del Estero','G',0,1),(121,44,6,'Tierra del Fuego','V',0,1),(122,44,6,'Tucumán','T',0,1),(123,10,1,'Agrigento','AG',0,1),(124,10,1,'Alessandria','AL',0,1),(125,10,1,'Ancona','AN',0,1),(126,10,1,'Aosta','AO',0,1),(127,10,1,'Arezzo','AR',0,1),(128,10,1,'Ascoli Piceno','AP',0,1),(129,10,1,'Asti','AT',0,1),(130,10,1,'Avellino','AV',0,1),(131,10,1,'Bari','BA',0,1),(132,10,1,'Barletta-Andria-Trani','BT',0,1),(133,10,1,'Belluno','BL',0,1),(134,10,1,'Benevento','BN',0,1),(135,10,1,'Bergamo','BG',0,1),(136,10,1,'Biella','BI',0,1),(137,10,1,'Bologna','BO',0,1),(138,10,1,'Bolzano','BZ',0,1),(139,10,1,'Brescia','BS',0,1),(140,10,1,'Brindisi','BR',0,1),(141,10,1,'Cagliari','CA',0,1),(142,10,1,'Caltanissetta','CL',0,1),(143,10,1,'Campobasso','CB',0,1),(144,10,1,'Carbonia-Iglesias','CI',0,1),(145,10,1,'Caserta','CE',0,1),(146,10,1,'Catania','CT',0,1),(147,10,1,'Catanzaro','CZ',0,1),(148,10,1,'Chieti','CH',0,1),(149,10,1,'Como','CO',0,1),(150,10,1,'Cosenza','CS',0,1),(151,10,1,'Cremona','CR',0,1),(152,10,1,'Crotone','KR',0,1),(153,10,1,'Cuneo','CN',0,1),(154,10,1,'Enna','EN',0,1),(155,10,1,'Fermo','FM',0,1),(156,10,1,'Ferrara','FE',0,1),(157,10,1,'Firenze','FI',0,1),(158,10,1,'Foggia','FG',0,1),(159,10,1,'Forlì-Cesena','FC',0,1),(160,10,1,'Frosinone','FR',0,1),(161,10,1,'Genova','GE',0,1),(162,10,1,'Gorizia','GO',0,1),(163,10,1,'Grosseto','GR',0,1),(164,10,1,'Imperia','IM',0,1),(165,10,1,'Isernia','IS',0,1),(166,10,1,'L\'Aquila','AQ',0,1),(167,10,1,'La Spezia','SP',0,1),(168,10,1,'Latina','LT',0,1),(169,10,1,'Lecce','LE',0,1),(170,10,1,'Lecco','LC',0,1),(171,10,1,'Livorno','LI',0,1),(172,10,1,'Lodi','LO',0,1),(173,10,1,'Lucca','LU',0,1),(174,10,1,'Macerata','MC',0,1),(175,10,1,'Mantova','MN',0,1),(176,10,1,'Massa','MS',0,1),(177,10,1,'Matera','MT',0,1),(178,10,1,'Medio Campidano','VS',0,1),(179,10,1,'Messina','ME',0,1),(180,10,1,'Milano','MI',0,1),(181,10,1,'Modena','MO',0,1),(182,10,1,'Monza e della Brianza','MB',0,1),(183,10,1,'Napoli','NA',0,1),(184,10,1,'Novara','NO',0,1),(185,10,1,'Nuoro','NU',0,1),(186,10,1,'Ogliastra','OG',0,1),(187,10,1,'Olbia-Tempio','OT',0,1),(188,10,1,'Oristano','OR',0,1),(189,10,1,'Padova','PD',0,1),(190,10,1,'Palermo','PA',0,1),(191,10,1,'Parma','PR',0,1),(192,10,1,'Pavia','PV',0,1),(193,10,1,'Perugia','PG',0,1),(194,10,1,'Pesaro-Urbino','PU',0,1),(195,10,1,'Pescara','PE',0,1),(196,10,1,'Piacenza','PC',0,1),(197,10,1,'Pisa','PI',0,1),(198,10,1,'Pistoia','PT',0,1),(199,10,1,'Pordenone','PN',0,1),(200,10,1,'Potenza','PZ',0,1),(201,10,1,'Prato','PO',0,1),(202,10,1,'Ragusa','RG',0,1),(203,10,1,'Ravenna','RA',0,1),(204,10,1,'Reggio Calabria','RC',0,1),(205,10,1,'Reggio Emilia','RE',0,1),(206,10,1,'Rieti','RI',0,1),(207,10,1,'Rimini','RN',0,1),(208,10,1,'Roma','RM',0,1),(209,10,1,'Rovigo','RO',0,1),(210,10,1,'Salerno','SA',0,1),(211,10,1,'Sassari','SS',0,1),(212,10,1,'Savona','SV',0,1),(213,10,1,'Siena','SI',0,1),(214,10,1,'Siracusa','SR',0,1),(215,10,1,'Sondrio','SO',0,1),(216,10,1,'Taranto','TA',0,1),(217,10,1,'Teramo','TE',0,1),(218,10,1,'Terni','TR',0,1),(219,10,1,'Torino','TO',0,1),(220,10,1,'Trapani','TP',0,1),(221,10,1,'Trento','TN',0,1),(222,10,1,'Treviso','TV',0,1),(223,10,1,'Trieste','TS',0,1),(224,10,1,'Udine','UD',0,1),(225,10,1,'Varese','VA',0,1),(226,10,1,'Venezia','VE',0,1),(227,10,1,'Verbano-Cusio-Ossola','VB',0,1),(228,10,1,'Vercelli','VC',0,1),(229,10,1,'Verona','VR',0,1),(230,10,1,'Vibo Valentia','VV',0,1),(231,10,1,'Vicenza','VI',0,1),(232,10,1,'Viterbo','VT',0,1),(233,111,3,'Aceh','AC',0,1),(234,111,3,'Bali','BA',0,1),(235,111,3,'Bangka','BB',0,1),(236,111,3,'Banten','BT',0,1),(237,111,3,'Bengkulu','BE',0,1),(238,111,3,'Central Java','JT',0,1),(239,111,3,'Central Kalimantan','KT',0,1),(240,111,3,'Central Sulawesi','ST',0,1),(241,111,3,'Coat of arms of East Java','JI',0,1),(242,111,3,'East kalimantan','KI',0,1),(243,111,3,'East Nusa Tenggara','NT',0,1),(244,111,3,'Lambang propinsi','GO',0,1),(245,111,3,'Jakarta','JK',0,1),(246,111,3,'Jambi','JA',0,1),(247,111,3,'Lampung','LA',0,1),(248,111,3,'Maluku','MA',0,1),(249,111,3,'North Maluku','MU',0,1),(250,111,3,'North Sulawesi','SA',0,1),(251,111,3,'North Sumatra','SU',0,1),(252,111,3,'Papua','PA',0,1),(253,111,3,'Riau','RI',0,1),(254,111,3,'Lambang Riau','KR',0,1),(255,111,3,'Southeast Sulawesi','SG',0,1),(256,111,3,'South Kalimantan','KS',0,1),(257,111,3,'South Sulawesi','SN',0,1),(258,111,3,'South Sumatra','SS',0,1),(259,111,3,'West Java','JB',0,1),(260,111,3,'West Kalimantan','KB',0,1),(261,111,3,'West Nusa Tenggara','NB',0,1),(262,111,3,'Lambang Provinsi Papua Barat','PB',0,1),(263,111,3,'West Sulawesi','SR',0,1),(264,111,3,'West Sumatra','SB',0,1),(265,111,3,'Yogyakarta','YO',0,1),(266,11,3,'Aichi','23',0,1),(267,11,3,'Akita','05',0,1),(268,11,3,'Aomori','02',0,1),(269,11,3,'Chiba','12',0,1),(270,11,3,'Ehime','38',0,1),(271,11,3,'Fukui','18',0,1),(272,11,3,'Fukuoka','40',0,1),(273,11,3,'Fukushima','07',0,1),(274,11,3,'Gifu','21',0,1),(275,11,3,'Gunma','10',0,1),(276,11,3,'Hiroshima','34',0,1),(277,11,3,'Hokkaido','01',0,1),(278,11,3,'Hyogo','28',0,1),(279,11,3,'Ibaraki','08',0,1),(280,11,3,'Ishikawa','17',0,1),(281,11,3,'Iwate','03',0,1),(282,11,3,'Kagawa','37',0,1),(283,11,3,'Kagoshima','46',0,1),(284,11,3,'Kanagawa','14',0,1),(285,11,3,'Kochi','39',0,1),(286,11,3,'Kumamoto','43',0,1),(287,11,3,'Kyoto','26',0,1),(288,11,3,'Mie','24',0,1),(289,11,3,'Miyagi','04',0,1),(290,11,3,'Miyazaki','45',0,1),(291,11,3,'Nagano','20',0,1),(292,11,3,'Nagasaki','42',0,1),(293,11,3,'Nara','29',0,1),(294,11,3,'Niigata','15',0,1),(295,11,3,'Oita','44',0,1),(296,11,3,'Okayama','33',0,1),(297,11,3,'Okinawa','47',0,1),(298,11,3,'Osaka','27',0,1),(299,11,3,'Saga','41',0,1),(300,11,3,'Saitama','11',0,1),(301,11,3,'Shiga','25',0,1),(302,11,3,'Shimane','32',0,1),(303,11,3,'Shizuoka','22',0,1),(304,11,3,'Tochigi','09',0,1),(305,11,3,'Tokushima','36',0,1),(306,11,3,'Tokyo','13',0,1),(307,11,3,'Tottori','31',0,1),(308,11,3,'Toyama','16',0,1),(309,11,3,'Wakayama','30',0,1),(310,11,3,'Yamagata','06',0,1),(311,11,3,'Yamaguchi','35',0,1),(312,11,3,'Yamanashi','19',0,1);
/*!40000 ALTER TABLE `ps_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_statssearch`
--

DROP TABLE IF EXISTS `ps_statssearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_statssearch` (
  `id_statssearch` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL,
  `results` int(6) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_statssearch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_statssearch`
--

LOCK TABLES `ps_statssearch` WRITE;
/*!40000 ALTER TABLE `ps_statssearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_statssearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_stock`
--

DROP TABLE IF EXISTS `ps_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_stock` (
  `id_stock` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_warehouse` int(11) unsigned NOT NULL,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `reference` varchar(32) NOT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `physical_quantity` int(11) unsigned NOT NULL,
  `usable_quantity` int(11) unsigned NOT NULL,
  `price_te` decimal(20,6) DEFAULT '0.000000',
  PRIMARY KEY (`id_stock`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `id_product` (`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_stock`
--

LOCK TABLES `ps_stock` WRITE;
/*!40000 ALTER TABLE `ps_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_stock_available`
--

DROP TABLE IF EXISTS `ps_stock_available`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_stock_available` (
  `id_stock_available` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `id_shop_group` int(11) unsigned NOT NULL,
  `quantity` int(10) NOT NULL DEFAULT '0',
  `depends_on_stock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `out_of_stock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_stock_available`),
  UNIQUE KEY `product_sqlstock` (`id_product`,`id_product_attribute`,`id_shop`,`id_shop_group`),
  KEY `id_shop` (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_product` (`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB AUTO_INCREMENT=676 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_stock_available`
--

LOCK TABLES `ps_stock_available` WRITE;
/*!40000 ALTER TABLE `ps_stock_available` DISABLE KEYS */;
INSERT INTO `ps_stock_available` VALUES (1,1,0,1,0,200,0,0),(2,2,0,1,0,200,0,0),(3,3,0,1,0,200,0,0),(5,5,0,1,0,200,0,0),(6,6,0,1,0,200,0,0),(7,7,0,1,0,200,0,0),(8,8,0,1,0,200,0,0),(9,9,0,1,0,200,0,0),(10,10,0,1,0,200,0,0),(11,11,0,1,0,200,0,0),(12,12,0,1,0,200,0,0),(13,13,0,1,0,200,0,0),(14,14,0,1,0,200,0,0),(15,15,0,1,0,200,0,0),(16,16,0,1,0,200,0,0),(17,17,0,1,0,200,0,0),(18,18,0,1,0,200,0,0),(19,19,0,1,0,200,0,0),(20,20,0,1,0,200,0,0),(21,21,0,1,0,200,0,0),(22,22,0,1,0,200,0,0),(23,23,0,1,0,200,0,0),(24,24,0,1,0,200,0,0),(25,25,0,1,0,200,0,0),(26,26,0,1,0,200,0,0),(27,27,0,1,0,200,0,0),(28,28,0,1,0,200,0,0),(29,29,0,1,0,200,0,0),(30,30,0,1,0,200,0,0),(31,31,0,1,0,200,0,0),(32,32,0,1,0,200,0,0),(33,33,0,1,0,200,0,0),(34,34,0,1,0,200,0,0),(35,35,0,1,0,200,0,0),(36,36,0,1,0,200,0,0),(37,37,0,1,0,200,0,0),(38,38,0,1,0,200,0,0),(39,39,0,1,0,200,0,0),(40,40,0,1,0,200,0,0),(41,41,0,1,0,200,0,0),(42,42,0,1,0,200,0,0),(43,43,0,1,0,200,0,0),(44,44,0,1,0,200,0,0),(45,45,0,1,0,200,0,0),(46,46,0,1,0,200,0,0),(47,47,0,1,0,200,0,0),(48,48,0,1,0,200,0,0),(49,49,0,1,0,200,0,0),(50,50,0,1,0,200,0,0),(51,51,0,1,0,200,0,0),(52,52,0,1,0,200,0,0),(53,53,0,1,0,200,0,0),(54,54,0,1,0,200,0,0),(55,55,0,1,0,200,0,0),(56,56,0,1,0,200,0,0),(57,57,0,1,0,200,0,0),(58,58,0,1,0,200,0,0),(59,59,0,1,0,200,0,0),(60,60,0,1,0,200,0,0),(61,61,0,1,0,200,0,0),(62,62,0,1,0,200,0,0),(63,63,0,1,0,200,0,0),(64,64,0,1,0,200,0,0),(65,65,0,1,0,200,0,0),(66,66,0,1,0,200,0,0),(67,67,0,1,0,200,0,0),(68,68,0,1,0,200,0,0),(69,69,0,1,0,200,0,0),(70,70,0,1,0,200,0,0),(71,71,0,1,0,200,0,0),(72,72,0,1,0,200,0,0),(73,73,0,1,0,200,0,0),(74,74,0,1,0,200,0,0),(75,75,0,1,0,200,0,0),(76,76,0,1,0,200,0,0),(77,77,0,1,0,200,0,0),(78,78,0,1,0,200,0,0),(79,79,0,1,0,200,0,0),(80,80,0,1,0,200,0,0),(81,81,0,1,0,200,0,0),(82,82,0,1,0,200,0,0),(83,83,0,1,0,200,0,0),(85,85,0,1,0,200,0,0),(86,86,0,1,0,200,0,0),(87,87,0,1,0,200,0,0),(88,88,0,1,0,200,0,0),(89,89,0,1,0,200,0,0),(90,90,0,1,0,200,0,0),(91,91,0,1,0,200,0,0),(92,92,0,1,0,200,0,0),(93,93,0,1,0,200,0,0),(94,94,0,1,0,200,0,0),(95,95,0,1,0,200,0,0),(96,96,0,1,0,200,0,0),(97,97,0,1,0,200,0,0),(98,98,0,1,0,200,0,0),(99,99,0,1,0,200,0,0),(100,100,0,1,0,200,0,0),(101,101,0,1,0,200,0,0),(102,102,0,1,0,200,0,0),(103,103,0,1,0,200,0,0),(104,104,0,1,0,200,0,0),(105,105,0,1,0,200,0,0),(106,106,0,1,0,200,0,0),(107,107,0,1,0,200,0,0),(108,108,0,1,0,200,0,0),(109,109,0,1,0,200,0,0),(110,110,0,1,0,200,0,0),(111,111,0,1,0,200,0,0),(112,112,0,1,0,200,0,0),(113,113,0,1,0,200,0,0),(114,114,0,1,0,200,0,0),(115,115,0,1,0,200,0,0),(116,116,0,1,0,200,0,0),(117,117,0,1,0,200,0,0),(118,118,0,1,0,200,0,0),(119,119,0,1,0,200,0,0),(120,120,0,1,0,200,0,0),(121,121,0,1,0,200,0,0),(122,122,0,1,0,200,0,0),(123,123,0,1,0,200,0,0),(124,124,0,1,0,200,0,0),(125,125,0,1,0,200,0,0),(126,126,0,1,0,200,0,0),(127,127,0,1,0,200,0,0),(128,128,0,1,0,200,0,0),(129,129,0,1,0,200,0,0),(130,130,0,1,0,200,0,0),(131,131,0,1,0,200,0,0),(132,132,0,1,0,200,0,0),(133,133,0,1,0,200,0,0),(134,134,0,1,0,200,0,0),(135,135,0,1,0,200,0,0),(136,136,0,1,0,200,0,0),(137,137,0,1,0,200,0,0),(139,139,0,1,0,200,0,0),(140,140,0,1,0,200,0,0),(141,141,0,1,0,200,0,0),(143,143,0,1,0,200,0,0),(144,144,0,1,0,200,0,0),(145,145,0,1,0,200,0,0),(146,146,0,1,0,200,0,0),(147,147,0,1,0,200,0,0),(148,148,0,1,0,200,0,0),(149,149,0,1,0,200,0,0),(150,150,0,1,0,200,0,0),(151,151,0,1,0,200,0,0),(152,152,0,1,0,200,0,0),(153,153,0,1,0,200,0,0),(154,154,0,1,0,200,0,0),(155,155,0,1,0,200,0,0),(156,156,0,1,0,200,0,0),(157,157,0,1,0,200,0,0),(158,158,0,1,0,200,0,0),(159,159,0,1,0,200,0,0),(160,160,0,1,0,200,0,0),(161,161,0,1,0,200,0,0),(162,162,0,1,0,200,0,0),(163,163,0,1,0,200,0,0),(164,164,0,1,0,200,0,0),(165,165,0,1,0,200,0,0),(166,166,0,1,0,200,0,0),(167,167,0,1,0,200,0,0),(168,168,0,1,0,200,0,0),(169,169,0,1,0,200,0,0),(170,170,0,1,0,200,0,0),(488,488,0,1,0,200,0,0),(489,489,0,1,0,200,0,0),(490,490,0,1,0,200,0,0),(491,491,0,1,0,200,0,0),(492,492,0,1,0,200,0,0),(493,493,0,1,0,200,0,0),(494,494,0,1,0,200,0,0),(495,495,0,1,0,200,0,0),(496,496,0,1,0,200,0,0),(497,497,0,1,0,200,0,0),(498,498,0,1,0,200,0,0),(499,499,0,1,0,200,0,0),(500,500,0,1,0,200,0,0),(501,501,0,1,0,200,0,0),(502,502,0,1,0,200,0,0),(503,503,0,1,0,200,0,0),(504,504,0,1,0,200,0,0),(505,505,0,1,0,200,0,0),(506,506,0,1,0,200,0,0),(507,507,0,1,0,200,0,0),(508,508,0,1,0,200,0,0),(509,509,0,1,0,200,0,0),(510,510,0,1,0,200,0,0),(511,511,0,1,0,200,0,0),(512,512,0,1,0,200,0,0),(513,513,0,1,0,200,0,0),(514,514,0,1,0,200,0,0),(515,515,0,1,0,200,0,0),(516,516,0,1,0,200,0,0),(517,517,0,1,0,200,0,0),(518,518,0,1,0,200,0,0),(519,519,0,1,0,200,0,0),(520,520,0,1,0,200,0,0),(521,521,0,1,0,200,0,0),(522,522,0,1,0,200,0,0),(523,523,0,1,0,200,0,0),(524,524,0,1,0,200,0,0),(525,525,0,1,0,200,0,0),(526,526,0,1,0,200,0,0),(527,527,0,1,0,200,0,0),(528,528,0,1,0,200,0,0),(529,529,0,1,0,200,0,0),(530,530,0,1,0,200,0,0),(531,531,0,1,0,200,0,0),(532,532,0,1,0,200,0,0),(533,533,0,1,0,200,0,0),(534,534,0,1,0,200,0,0),(535,535,0,1,0,200,0,0),(536,536,0,1,0,200,0,0),(537,537,0,1,0,200,0,0),(538,538,0,1,0,200,0,0),(539,539,0,1,0,200,0,0),(540,540,0,1,0,200,0,0),(541,541,0,1,0,200,0,0),(542,542,0,1,0,200,0,0),(543,543,0,1,0,200,0,0),(544,544,0,1,0,200,0,0),(545,545,0,1,0,200,0,0),(546,546,0,1,0,200,0,0),(547,547,0,1,0,200,0,0),(548,548,0,1,0,200,0,0),(549,549,0,1,0,200,0,0),(550,550,0,1,0,200,0,0),(551,551,0,1,0,200,0,0),(552,552,0,1,0,200,0,0),(553,553,0,1,0,200,0,0),(554,554,0,1,0,200,0,0),(555,555,0,1,0,200,0,0),(556,556,0,1,0,200,0,0),(557,557,0,1,0,200,0,0),(558,558,0,1,0,200,0,0),(559,559,0,1,0,200,0,0),(560,560,0,1,0,200,0,0),(561,561,0,1,0,200,0,0),(562,562,0,1,0,200,0,0),(563,563,0,1,0,200,0,0),(564,564,0,1,0,200,0,0),(565,565,0,1,0,200,0,0),(566,566,0,1,0,200,0,0),(567,567,0,1,0,200,0,0),(568,568,0,1,0,200,0,0),(569,569,0,1,0,200,0,0),(570,570,0,1,0,200,0,0),(571,571,0,1,0,200,0,0),(572,572,0,1,0,200,0,0),(573,573,0,1,0,200,0,0),(574,574,0,1,0,200,0,0),(575,575,0,1,0,200,0,0),(576,576,0,1,0,200,0,0),(577,577,0,1,0,200,0,0),(578,578,0,1,0,200,0,0),(579,579,0,1,0,200,0,0),(580,580,0,1,0,200,0,0),(581,581,0,1,0,200,0,0),(582,582,0,1,0,200,0,0),(583,583,0,1,0,200,0,0),(584,584,0,1,0,200,0,0),(585,585,0,1,0,200,0,0),(586,586,0,1,0,200,0,0),(587,587,0,1,0,200,0,0),(588,588,0,1,0,200,0,0),(589,589,0,1,0,200,0,0),(590,590,0,1,0,200,0,0),(591,591,0,1,0,200,0,0),(592,592,0,1,0,200,0,0),(593,593,0,1,0,200,0,0),(594,594,0,1,0,200,0,0),(595,595,0,1,0,200,0,0),(596,596,0,1,0,200,0,0),(597,597,0,1,0,200,0,0),(598,598,0,1,0,200,0,0),(599,599,0,1,0,200,0,0),(600,600,0,1,0,200,0,0),(601,601,0,1,0,200,0,0),(602,602,0,1,0,200,0,0),(603,603,0,1,0,200,0,0),(604,604,0,1,0,200,0,0),(605,605,0,1,0,200,0,0),(606,606,0,1,0,200,0,0),(607,607,0,1,0,200,0,0),(608,608,0,1,0,200,0,0),(609,609,0,1,0,200,0,0),(610,610,0,1,0,200,0,0),(611,611,0,1,0,200,0,0),(612,612,0,1,0,200,0,0),(613,613,0,1,0,200,0,0),(614,614,0,1,0,200,0,0),(615,615,0,1,0,200,0,0),(616,616,0,1,0,200,0,0),(617,617,0,1,0,200,0,0),(618,618,0,1,0,200,0,0),(619,619,0,1,0,200,0,0),(620,620,0,1,0,200,0,0),(621,621,0,1,0,200,0,0),(622,622,0,1,0,200,0,0),(623,623,0,1,0,200,0,0),(624,624,0,1,0,200,0,0),(625,625,0,1,0,200,0,0),(626,626,0,1,0,200,0,0),(627,627,0,1,0,200,0,0),(628,628,0,1,0,200,0,0),(629,629,0,1,0,200,0,0),(630,630,0,1,0,200,0,0),(631,631,0,1,0,200,0,0),(632,632,0,1,0,200,0,0),(633,633,0,1,0,200,0,0),(634,634,0,1,0,200,0,0),(635,635,0,1,0,200,0,0),(636,636,0,1,0,200,0,0),(637,637,0,1,0,200,0,0),(638,638,0,1,0,200,0,0),(639,639,0,1,0,200,0,0),(640,640,0,1,0,200,0,0),(641,641,0,1,0,200,0,0),(642,642,0,1,0,200,0,0),(643,643,0,1,0,200,0,0),(647,647,0,1,0,200,0,0),(648,648,0,1,0,200,0,0),(649,649,0,1,0,200,0,0),(650,650,0,1,0,200,0,0),(651,651,0,1,0,200,0,0),(652,652,0,1,0,200,0,0),(653,653,0,1,0,200,0,0),(654,654,0,1,0,200,0,0),(655,655,0,1,0,200,0,0),(656,656,0,1,0,200,0,0),(657,657,0,1,0,200,0,0),(658,658,0,1,0,200,0,0),(659,659,0,1,0,200,0,0),(660,660,0,1,0,200,0,0),(661,661,0,1,0,200,0,0),(662,662,0,1,0,200,0,0),(663,663,0,1,0,200,0,0),(664,664,0,1,0,200,0,0),(665,665,0,1,0,200,0,0),(666,666,0,1,0,200,0,0),(667,667,0,1,0,200,0,0),(668,668,0,1,0,200,0,0),(669,669,0,1,0,200,0,0),(670,670,0,1,0,200,0,0),(671,671,0,1,0,200,0,0),(672,672,0,1,0,200,0,0),(673,673,0,1,0,200,0,0),(674,674,0,1,0,200,0,0),(675,675,0,1,0,200,0,0);
/*!40000 ALTER TABLE `ps_stock_available` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_stock_mvt`
--

DROP TABLE IF EXISTS `ps_stock_mvt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_stock_mvt` (
  `id_stock_mvt` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_stock` int(11) unsigned NOT NULL,
  `id_order` int(11) unsigned DEFAULT NULL,
  `id_supply_order` int(11) unsigned DEFAULT NULL,
  `id_stock_mvt_reason` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `physical_quantity` int(11) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `sign` tinyint(1) NOT NULL DEFAULT '1',
  `price_te` decimal(20,6) DEFAULT '0.000000',
  `last_wa` decimal(20,6) DEFAULT '0.000000',
  `current_wa` decimal(20,6) DEFAULT '0.000000',
  `referer` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_stock_mvt`),
  KEY `id_stock` (`id_stock`),
  KEY `id_stock_mvt_reason` (`id_stock_mvt_reason`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_stock_mvt`
--

LOCK TABLES `ps_stock_mvt` WRITE;
/*!40000 ALTER TABLE `ps_stock_mvt` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_stock_mvt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_stock_mvt_reason`
--

DROP TABLE IF EXISTS `ps_stock_mvt_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_stock_mvt_reason` (
  `id_stock_mvt_reason` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sign` tinyint(1) NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_stock_mvt_reason`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_stock_mvt_reason`
--

LOCK TABLES `ps_stock_mvt_reason` WRITE;
/*!40000 ALTER TABLE `ps_stock_mvt_reason` DISABLE KEYS */;
INSERT INTO `ps_stock_mvt_reason` VALUES (1,1,'2016-05-31 08:01:52','2016-05-31 08:01:52',0),(2,-1,'2016-05-31 08:01:52','2016-05-31 08:01:52',0),(3,-1,'2016-05-31 08:01:52','2016-05-31 08:01:52',0),(4,-1,'2016-05-31 08:01:53','2016-05-31 08:01:53',0),(5,1,'2016-05-31 08:01:53','2016-05-31 08:01:53',0),(6,-1,'2016-05-31 08:01:53','2016-05-31 08:01:53',0),(7,1,'2016-05-31 08:01:54','2016-05-31 08:01:54',0),(8,1,'2016-05-31 08:01:54','2016-05-31 08:01:54',0);
/*!40000 ALTER TABLE `ps_stock_mvt_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_stock_mvt_reason_lang`
--

DROP TABLE IF EXISTS `ps_stock_mvt_reason_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_stock_mvt_reason_lang` (
  `id_stock_mvt_reason` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_stock_mvt_reason`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_stock_mvt_reason_lang`
--

LOCK TABLES `ps_stock_mvt_reason_lang` WRITE;
/*!40000 ALTER TABLE `ps_stock_mvt_reason_lang` DISABLE KEYS */;
INSERT INTO `ps_stock_mvt_reason_lang` VALUES (1,1,'Aumentar'),(2,1,'Disminuir'),(3,1,'Pedido del cliente'),(4,1,'Regulación tras inventario'),(5,1,'Regulación tras inventario'),(6,1,'Transferir a otro almacén'),(7,1,'Transferir desde otro almacén'),(8,1,'Pedido de suministros');
/*!40000 ALTER TABLE `ps_stock_mvt_reason_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_store`
--

DROP TABLE IF EXISTS `ps_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_store` (
  `id_store` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(10) unsigned NOT NULL,
  `id_state` int(10) unsigned DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `postcode` varchar(12) NOT NULL,
  `latitude` decimal(13,8) DEFAULT NULL,
  `longitude` decimal(13,8) DEFAULT NULL,
  `hours` varchar(254) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `note` text,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_store`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_store`
--

LOCK TABLES `ps_store` WRITE;
/*!40000 ALTER TABLE `ps_store` DISABLE KEYS */;
INSERT INTO `ps_store` VALUES (6,145,62,'Juan Miguel Martínez','Conocida','','Mexico','16410',25.94896900,-80.22643900,'a:7:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";}','','','','',1,'2016-06-01 12:02:02','2016-06-01 12:02:02');
/*!40000 ALTER TABLE `ps_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_store_shop`
--

DROP TABLE IF EXISTS `ps_store_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_store_shop` (
  `id_store` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_store`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_store_shop`
--

LOCK TABLES `ps_store_shop` WRITE;
/*!40000 ALTER TABLE `ps_store_shop` DISABLE KEYS */;
INSERT INTO `ps_store_shop` VALUES (6,1);
/*!40000 ALTER TABLE `ps_store_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supplier`
--

DROP TABLE IF EXISTS `ps_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supplier` (
  `id_supplier` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supplier`
--

LOCK TABLES `ps_supplier` WRITE;
/*!40000 ALTER TABLE `ps_supplier` DISABLE KEYS */;
INSERT INTO `ps_supplier` VALUES (1,'Fashion Supplier','2016-05-31 08:02:13','2016-05-31 08:02:13',1);
/*!40000 ALTER TABLE `ps_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supplier_lang`
--

DROP TABLE IF EXISTS `ps_supplier_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supplier_lang` (
  `id_supplier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_supplier`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supplier_lang`
--

LOCK TABLES `ps_supplier_lang` WRITE;
/*!40000 ALTER TABLE `ps_supplier_lang` DISABLE KEYS */;
INSERT INTO `ps_supplier_lang` VALUES (1,1,'','','','');
/*!40000 ALTER TABLE `ps_supplier_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supplier_shop`
--

DROP TABLE IF EXISTS `ps_supplier_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supplier_shop` (
  `id_supplier` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_supplier`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supplier_shop`
--

LOCK TABLES `ps_supplier_shop` WRITE;
/*!40000 ALTER TABLE `ps_supplier_shop` DISABLE KEYS */;
INSERT INTO `ps_supplier_shop` VALUES (1,1);
/*!40000 ALTER TABLE `ps_supplier_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supply_order`
--

DROP TABLE IF EXISTS `ps_supply_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supply_order` (
  `id_supply_order` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` int(11) unsigned NOT NULL,
  `supplier_name` varchar(64) NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  `id_supply_order_state` int(11) unsigned NOT NULL,
  `id_currency` int(11) unsigned NOT NULL,
  `id_ref_currency` int(11) unsigned NOT NULL,
  `reference` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `date_delivery_expected` datetime DEFAULT NULL,
  `total_te` decimal(20,6) DEFAULT '0.000000',
  `total_with_discount_te` decimal(20,6) DEFAULT '0.000000',
  `total_tax` decimal(20,6) DEFAULT '0.000000',
  `total_ti` decimal(20,6) DEFAULT '0.000000',
  `discount_rate` decimal(20,6) DEFAULT '0.000000',
  `discount_value_te` decimal(20,6) DEFAULT '0.000000',
  `is_template` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id_supply_order`),
  KEY `id_supplier` (`id_supplier`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `reference` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supply_order`
--

LOCK TABLES `ps_supply_order` WRITE;
/*!40000 ALTER TABLE `ps_supply_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_supply_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supply_order_detail`
--

DROP TABLE IF EXISTS `ps_supply_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supply_order_detail` (
  `id_supply_order_detail` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_supply_order` int(11) unsigned NOT NULL,
  `id_currency` int(11) unsigned NOT NULL,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `reference` varchar(32) NOT NULL,
  `supplier_reference` varchar(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `exchange_rate` decimal(20,6) DEFAULT '0.000000',
  `unit_price_te` decimal(20,6) DEFAULT '0.000000',
  `quantity_expected` int(11) unsigned NOT NULL,
  `quantity_received` int(11) unsigned NOT NULL,
  `price_te` decimal(20,6) DEFAULT '0.000000',
  `discount_rate` decimal(20,6) DEFAULT '0.000000',
  `discount_value_te` decimal(20,6) DEFAULT '0.000000',
  `price_with_discount_te` decimal(20,6) DEFAULT '0.000000',
  `tax_rate` decimal(20,6) DEFAULT '0.000000',
  `tax_value` decimal(20,6) DEFAULT '0.000000',
  `price_ti` decimal(20,6) DEFAULT '0.000000',
  `tax_value_with_order_discount` decimal(20,6) DEFAULT '0.000000',
  `price_with_order_discount_te` decimal(20,6) DEFAULT '0.000000',
  PRIMARY KEY (`id_supply_order_detail`),
  KEY `id_supply_order` (`id_supply_order`,`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`),
  KEY `id_product_product_attribute` (`id_product`,`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supply_order_detail`
--

LOCK TABLES `ps_supply_order_detail` WRITE;
/*!40000 ALTER TABLE `ps_supply_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_supply_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supply_order_history`
--

DROP TABLE IF EXISTS `ps_supply_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supply_order_history` (
  `id_supply_order_history` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_supply_order` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `id_state` int(11) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_supply_order_history`),
  KEY `id_supply_order` (`id_supply_order`),
  KEY `id_employee` (`id_employee`),
  KEY `id_state` (`id_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supply_order_history`
--

LOCK TABLES `ps_supply_order_history` WRITE;
/*!40000 ALTER TABLE `ps_supply_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_supply_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supply_order_receipt_history`
--

DROP TABLE IF EXISTS `ps_supply_order_receipt_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supply_order_receipt_history` (
  `id_supply_order_receipt_history` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_supply_order_detail` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `id_supply_order_state` int(11) unsigned NOT NULL,
  `quantity` int(11) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_supply_order_receipt_history`),
  KEY `id_supply_order_detail` (`id_supply_order_detail`),
  KEY `id_supply_order_state` (`id_supply_order_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supply_order_receipt_history`
--

LOCK TABLES `ps_supply_order_receipt_history` WRITE;
/*!40000 ALTER TABLE `ps_supply_order_receipt_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_supply_order_receipt_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supply_order_state`
--

DROP TABLE IF EXISTS `ps_supply_order_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supply_order_state` (
  `id_supply_order_state` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_note` tinyint(1) NOT NULL DEFAULT '0',
  `editable` tinyint(1) NOT NULL DEFAULT '0',
  `receipt_state` tinyint(1) NOT NULL DEFAULT '0',
  `pending_receipt` tinyint(1) NOT NULL DEFAULT '0',
  `enclosed` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_supply_order_state`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supply_order_state`
--

LOCK TABLES `ps_supply_order_state` WRITE;
/*!40000 ALTER TABLE `ps_supply_order_state` DISABLE KEYS */;
INSERT INTO `ps_supply_order_state` VALUES (1,0,1,0,0,0,'#faab00'),(2,1,0,0,0,0,'#273cff'),(3,0,0,0,1,0,'#ff37f5'),(4,0,0,1,1,0,'#ff3e33'),(5,0,0,1,0,1,'#00d60c'),(6,0,0,0,0,1,'#666666');
/*!40000 ALTER TABLE `ps_supply_order_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supply_order_state_lang`
--

DROP TABLE IF EXISTS `ps_supply_order_state_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supply_order_state_lang` (
  `id_supply_order_state` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_supply_order_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supply_order_state_lang`
--

LOCK TABLES `ps_supply_order_state_lang` WRITE;
/*!40000 ALTER TABLE `ps_supply_order_state_lang` DISABLE KEYS */;
INSERT INTO `ps_supply_order_state_lang` VALUES (1,1,'1 - Creación en curso'),(2,1,'2 - Pedido validado'),(3,1,'3 - Pendiente de recepción'),(4,1,'4 - Pedido recibido parcialmente'),(5,1,'5 - Pedido recibido completamente'),(6,1,'6 - Pedido cancelado');
/*!40000 ALTER TABLE `ps_supply_order_state_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tab`
--

DROP TABLE IF EXISTS `ps_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tab` (
  `id_tab` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) NOT NULL,
  `class_name` varchar(64) NOT NULL,
  `module` varchar(64) DEFAULT NULL,
  `position` int(10) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `hide_host_mode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tab`),
  KEY `class_name` (`class_name`),
  KEY `id_parent` (`id_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tab`
--

LOCK TABLES `ps_tab` WRITE;
/*!40000 ALTER TABLE `ps_tab` DISABLE KEYS */;
INSERT INTO `ps_tab` VALUES (1,0,'AdminDashboard',NULL,0,1,0),(2,-1,'AdminCms',NULL,0,1,0),(3,-1,'AdminCmsCategories',NULL,1,1,0),(4,-1,'AdminAttributeGenerator',NULL,2,1,0),(5,-1,'AdminSearch',NULL,3,1,0),(6,-1,'AdminLogin',NULL,4,1,0),(7,-1,'AdminShop',NULL,5,1,0),(8,-1,'AdminShopUrl',NULL,6,1,0),(9,0,'AdminCatalog',NULL,1,1,0),(10,0,'AdminParentOrders',NULL,2,1,0),(11,0,'AdminParentCustomer',NULL,3,1,0),(12,0,'AdminPriceRule',NULL,4,1,0),(13,0,'AdminParentModules',NULL,5,1,0),(14,0,'AdminParentShipping',NULL,6,1,0),(15,0,'AdminParentLocalization',NULL,7,1,0),(16,0,'AdminParentPreferences',NULL,8,1,0),(17,0,'AdminTools',NULL,9,1,0),(18,0,'AdminAdmin',NULL,10,1,0),(19,0,'AdminParentStats',NULL,11,1,0),(20,0,'AdminStock',NULL,12,1,0),(21,9,'AdminProducts',NULL,0,1,0),(22,9,'AdminCategories',NULL,1,1,0),(23,9,'AdminTracking',NULL,2,1,0),(24,9,'AdminAttributesGroups',NULL,3,1,0),(25,9,'AdminFeatures',NULL,4,1,0),(26,9,'AdminManufacturers',NULL,5,1,0),(27,9,'AdminSuppliers',NULL,6,1,0),(28,9,'AdminTags',NULL,7,1,0),(29,9,'AdminAttachments',NULL,8,1,0),(30,10,'AdminOrders',NULL,0,1,0),(31,10,'AdminInvoices',NULL,1,1,0),(32,10,'AdminReturn',NULL,2,1,0),(33,10,'AdminDeliverySlip',NULL,3,1,0),(34,10,'AdminSlip',NULL,4,1,0),(35,10,'AdminStatuses',NULL,5,1,0),(36,10,'AdminOrderMessage',NULL,6,1,0),(37,11,'AdminCustomers',NULL,0,1,0),(38,11,'AdminAddresses',NULL,1,1,0),(39,11,'AdminGroups',NULL,2,1,0),(40,11,'AdminCarts',NULL,3,1,0),(41,11,'AdminCustomerThreads',NULL,4,1,0),(42,11,'AdminContacts',NULL,5,1,0),(43,11,'AdminGenders',NULL,6,1,0),(44,11,'AdminOutstanding',NULL,7,0,0),(45,12,'AdminCartRules',NULL,0,1,0),(46,12,'AdminSpecificPriceRule',NULL,1,1,0),(47,12,'AdminMarketing',NULL,2,1,0),(48,14,'AdminCarriers',NULL,0,1,0),(49,14,'AdminShipping',NULL,1,1,0),(50,14,'AdminCarrierWizard',NULL,2,1,0),(51,15,'AdminLocalization',NULL,0,1,0),(52,15,'AdminLanguages',NULL,1,1,0),(53,15,'AdminZones',NULL,2,1,0),(54,15,'AdminCountries',NULL,3,1,0),(55,15,'AdminStates',NULL,4,1,0),(56,15,'AdminCurrencies',NULL,5,1,0),(57,15,'AdminTaxes',NULL,6,1,0),(58,15,'AdminTaxRulesGroup',NULL,7,1,0),(59,15,'AdminTranslations',NULL,8,1,0),(60,13,'AdminModules',NULL,0,1,0),(61,13,'AdminAddonsCatalog',NULL,1,1,0),(62,13,'AdminModulesPositions',NULL,2,1,0),(63,13,'AdminPayment',NULL,3,1,0),(64,16,'AdminPreferences',NULL,0,1,0),(65,16,'AdminOrderPreferences',NULL,1,1,0),(66,16,'AdminPPreferences',NULL,2,1,0),(67,16,'AdminCustomerPreferences',NULL,3,1,0),(68,16,'AdminThemes',NULL,4,1,0),(69,16,'AdminMeta',NULL,5,1,0),(70,16,'AdminCmsContent',NULL,6,1,0),(71,16,'AdminImages',NULL,7,1,0),(72,16,'AdminStores',NULL,8,1,0),(73,16,'AdminSearchConf',NULL,9,1,0),(74,16,'AdminMaintenance',NULL,10,1,0),(75,16,'AdminGeolocation',NULL,11,1,0),(76,17,'AdminInformation',NULL,0,1,0),(77,17,'AdminPerformance',NULL,1,1,0),(78,17,'AdminEmails',NULL,2,1,0),(79,17,'AdminShopGroup',NULL,3,0,0),(80,17,'AdminImport',NULL,4,1,0),(81,17,'AdminBackup',NULL,5,1,0),(82,17,'AdminRequestSql',NULL,6,1,0),(83,17,'AdminLogs',NULL,7,1,0),(84,17,'AdminWebservice',NULL,8,1,0),(85,18,'AdminAdminPreferences',NULL,0,1,0),(86,18,'AdminQuickAccesses',NULL,1,1,0),(87,18,'AdminEmployees',NULL,2,1,0),(88,18,'AdminProfiles',NULL,3,1,0),(89,18,'AdminAccess',NULL,4,1,0),(90,18,'AdminTabs',NULL,5,1,0),(91,19,'AdminStats',NULL,0,1,0),(92,19,'AdminSearchEngines',NULL,1,1,0),(93,19,'AdminReferrers',NULL,2,1,0),(94,20,'AdminWarehouses',NULL,0,1,0),(95,20,'AdminStockManagement',NULL,1,1,0),(96,20,'AdminStockMvt',NULL,2,1,0),(97,20,'AdminStockInstantState',NULL,3,1,0),(98,20,'AdminStockCover',NULL,4,1,0),(99,20,'AdminSupplyOrders',NULL,5,1,0),(100,20,'AdminStockConfiguration',NULL,6,1,0),(101,-1,'AdminBlockCategories','blockcategories',7,1,0),(102,-1,'AdminDashgoals','dashgoals',8,1,0),(103,-1,'AdminThemeConfigurator','themeconfigurator',9,1,0),(104,18,'AdminGamification','gamification',6,1,0),(105,-1,'AdminCronJobs','cronjobs',10,1,0);
/*!40000 ALTER TABLE `ps_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tab_advice`
--

DROP TABLE IF EXISTS `ps_tab_advice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tab_advice` (
  `id_tab` int(11) NOT NULL,
  `id_advice` int(11) NOT NULL,
  PRIMARY KEY (`id_tab`,`id_advice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tab_advice`
--

LOCK TABLES `ps_tab_advice` WRITE;
/*!40000 ALTER TABLE `ps_tab_advice` DISABLE KEYS */;
INSERT INTO `ps_tab_advice` VALUES (0,4),(0,30),(0,56),(1,3),(1,6),(1,7),(1,11),(1,12),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,29),(1,32),(1,33),(1,37),(1,38),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),(1,51),(1,52),(1,55),(1,58),(1,59),(1,63),(1,64),(1,66),(1,67),(1,68),(1,69),(1,70),(1,71),(1,72),(1,73),(1,74),(1,75),(1,76),(1,77),(1,78),(1,79),(1,80),(1,81),(9,13),(9,39),(9,65),(21,1),(21,5),(21,9),(21,10),(21,27),(21,31),(21,35),(21,36),(21,53),(21,57),(21,61),(21,62),(22,1),(22,27),(22,53),(30,9),(30,35),(30,61),(31,1),(31,27),(31,53),(37,8),(37,13),(37,34),(37,39),(37,60),(37,65),(39,13),(39,39),(39,65),(41,8),(41,34),(41,60),(59,2),(59,28),(59,54),(72,1),(72,27),(72,53);
/*!40000 ALTER TABLE `ps_tab_advice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tab_lang`
--

DROP TABLE IF EXISTS `ps_tab_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tab_lang` (
  `id_tab` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_tab`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tab_lang`
--

LOCK TABLES `ps_tab_lang` WRITE;
/*!40000 ALTER TABLE `ps_tab_lang` DISABLE KEYS */;
INSERT INTO `ps_tab_lang` VALUES (1,1,'Inicio'),(2,1,'Páginas estáticas/CMS'),(3,1,'Categorías CMS'),(4,1,'Generador de Combinaciones'),(5,1,'Buscar'),(6,1,'Identifíquese'),(7,1,'Tiendas'),(8,1,'URLs/Direcciones de la tienda'),(9,1,'Catálogo'),(10,1,'Pedidos'),(11,1,'Clientes'),(12,1,'Reglas de Descuentos'),(13,1,'Módulos y Servicios'),(14,1,'Transporte'),(15,1,'Localización'),(16,1,'Preferencias'),(17,1,'Parámetros Avanzados'),(18,1,'Administración'),(19,1,'Estadísticas'),(20,1,'Existencias'),(21,1,'Productos'),(22,1,'Categorías'),(23,1,'Monitoring'),(24,1,'Atributos de productos'),(25,1,'Características de productos'),(26,1,'Fabricantes'),(27,1,'Proveedores'),(28,1,'Etiquetas'),(29,1,'Adjuntos'),(30,1,'Pedidos'),(31,1,'Facturas'),(32,1,'Devoluciones de mercancía'),(33,1,'Albaranes de entrega'),(34,1,'Factura de abonos'),(35,1,'Estados'),(36,1,'Mensajes predefinidos'),(37,1,'Clientes'),(38,1,'Direcciones'),(39,1,'Grupos'),(40,1,'Carritos de compra'),(41,1,'Atención al cliente'),(42,1,'Datos'),(43,1,'Tratamientos'),(44,1,'Cuentas por pagar'),(45,1,'Vales descuento'),(46,1,'Reglas del catálogo'),(47,1,'Márketing'),(48,1,'Transportistas'),(49,1,'Preferencias'),(50,1,'Transportista'),(51,1,'Localización'),(52,1,'Idiomas'),(53,1,'Zona'),(54,1,'Países'),(55,1,'Provincias'),(56,1,'Monedas'),(57,1,'Tasas'),(58,1,'Reglas de tasas'),(59,1,'Traducciones'),(60,1,'Módulos y Servicios'),(61,1,'Catálogo de Módulos y Temas'),(62,1,'Posiciones de los módulos'),(63,1,'Pago'),(64,1,'Configuración'),(65,1,'Pedidos'),(66,1,'Productos'),(67,1,'Clientes'),(68,1,'Temas'),(69,1,'SEO + URLs'),(70,1,'CMS'),(71,1,'Imágenes'),(72,1,'Contactos de la tienda'),(73,1,'Buscar'),(74,1,'Mantenimiento'),(75,1,'Geolocalización'),(76,1,'Información'),(77,1,'Rendimiento'),(78,1,'Correo Electrónico'),(79,1,'Multitienda'),(80,1,'Importación CSV'),(81,1,'Copia BD'),(82,1,'Gestor SQL'),(83,1,'Registros/Logs'),(84,1,'Webservice'),(85,1,'Preferencias'),(86,1,'Acceso rápido'),(87,1,'Empleados'),(88,1,'Perfiles'),(89,1,'Permisos'),(90,1,'Menús'),(91,1,'Estadísticas'),(92,1,'Motores de búsqueda'),(93,1,'Afiliados'),(94,1,'Almacenes'),(95,1,'Gestión de existencias'),(96,1,'Movimiento de Stock'),(97,1,'Estado actual del stock'),(98,1,'Cobertura de stock'),(99,1,'Pedidos de materiales'),(100,1,'Configuración'),(101,1,'BlockCategories'),(102,1,'Dashgoals'),(103,1,'themeconfigurator'),(104,1,'Merchant Expertise'),(105,1,'Cron Jobs');
/*!40000 ALTER TABLE `ps_tab_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tab_module_preference`
--

DROP TABLE IF EXISTS `ps_tab_module_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tab_module_preference` (
  `id_tab_module_preference` int(11) NOT NULL AUTO_INCREMENT,
  `id_employee` int(11) NOT NULL,
  `id_tab` int(11) NOT NULL,
  `module` varchar(255) NOT NULL,
  PRIMARY KEY (`id_tab_module_preference`),
  UNIQUE KEY `employee_module` (`id_employee`,`id_tab`,`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tab_module_preference`
--

LOCK TABLES `ps_tab_module_preference` WRITE;
/*!40000 ALTER TABLE `ps_tab_module_preference` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_tab_module_preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tag`
--

DROP TABLE IF EXISTS `ps_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tag` (
  `id_tag` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_tag`),
  KEY `tag_name` (`name`),
  KEY `id_lang` (`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tag`
--

LOCK TABLES `ps_tag` WRITE;
/*!40000 ALTER TABLE `ps_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tag_count`
--

DROP TABLE IF EXISTS `ps_tag_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tag_count` (
  `id_group` int(10) unsigned NOT NULL DEFAULT '0',
  `id_tag` int(10) unsigned NOT NULL DEFAULT '0',
  `id_lang` int(10) unsigned NOT NULL DEFAULT '0',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '0',
  `counter` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_group`,`id_tag`),
  KEY `id_group` (`id_group`,`id_lang`,`id_shop`,`counter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tag_count`
--

LOCK TABLES `ps_tag_count` WRITE;
/*!40000 ALTER TABLE `ps_tag_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_tag_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tax`
--

DROP TABLE IF EXISTS `ps_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tax` (
  `id_tax` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rate` decimal(10,3) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tax`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tax`
--

LOCK TABLES `ps_tax` WRITE;
/*!40000 ALTER TABLE `ps_tax` DISABLE KEYS */;
INSERT INTO `ps_tax` VALUES (1,16.000,1,0),(2,11.000,1,0);
/*!40000 ALTER TABLE `ps_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tax_lang`
--

DROP TABLE IF EXISTS `ps_tax_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tax_lang` (
  `id_tax` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_tax`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tax_lang`
--

LOCK TABLES `ps_tax_lang` WRITE;
/*!40000 ALTER TABLE `ps_tax_lang` DISABLE KEYS */;
INSERT INTO `ps_tax_lang` VALUES (1,1,'IVA MX 16%'),(2,1,'IVA MX 11%');
/*!40000 ALTER TABLE `ps_tax_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tax_rule`
--

DROP TABLE IF EXISTS `ps_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tax_rule` (
  `id_tax_rule` int(11) NOT NULL AUTO_INCREMENT,
  `id_tax_rules_group` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_state` int(11) NOT NULL,
  `zipcode_from` varchar(12) NOT NULL,
  `zipcode_to` varchar(12) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `behavior` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tax_rule`),
  KEY `id_tax_rules_group` (`id_tax_rules_group`),
  KEY `id_tax` (`id_tax`),
  KEY `category_getproducts` (`id_tax_rules_group`,`id_country`,`id_state`,`zipcode_from`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tax_rule`
--

LOCK TABLES `ps_tax_rule` WRITE;
/*!40000 ALTER TABLE `ps_tax_rule` DISABLE KEYS */;
INSERT INTO `ps_tax_rule` VALUES (1,1,145,0,'0','0',1,0,''),(2,2,145,0,'0','0',2,0,'');
/*!40000 ALTER TABLE `ps_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tax_rules_group`
--

DROP TABLE IF EXISTS `ps_tax_rules_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tax_rules_group` (
  `id_tax_rules_group` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `active` int(11) NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_tax_rules_group`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tax_rules_group`
--

LOCK TABLES `ps_tax_rules_group` WRITE;
/*!40000 ALTER TABLE `ps_tax_rules_group` DISABLE KEYS */;
INSERT INTO `ps_tax_rules_group` VALUES (1,'MX Standard Rate (16%)',1,0,'2016-05-31 08:02:04','2016-05-31 08:02:04'),(2,'MX Reduced Rate (11%)',1,0,'2016-05-31 08:02:05','2016-05-31 08:02:05');
/*!40000 ALTER TABLE `ps_tax_rules_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tax_rules_group_shop`
--

DROP TABLE IF EXISTS `ps_tax_rules_group_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tax_rules_group_shop` (
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_tax_rules_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tax_rules_group_shop`
--

LOCK TABLES `ps_tax_rules_group_shop` WRITE;
/*!40000 ALTER TABLE `ps_tax_rules_group_shop` DISABLE KEYS */;
INSERT INTO `ps_tax_rules_group_shop` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `ps_tax_rules_group_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_theme`
--

DROP TABLE IF EXISTS `ps_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_theme` (
  `id_theme` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `directory` varchar(64) NOT NULL,
  `responsive` tinyint(1) NOT NULL DEFAULT '0',
  `default_left_column` tinyint(1) NOT NULL DEFAULT '0',
  `default_right_column` tinyint(1) NOT NULL DEFAULT '0',
  `product_per_page` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_theme`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_theme`
--

LOCK TABLES `ps_theme` WRITE;
/*!40000 ALTER TABLE `ps_theme` DISABLE KEYS */;
INSERT INTO `ps_theme` VALUES (1,'default-bootstrap','default-bootstrap',1,1,0,12);
/*!40000 ALTER TABLE `ps_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_theme_meta`
--

DROP TABLE IF EXISTS `ps_theme_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_theme_meta` (
  `id_theme_meta` int(11) NOT NULL AUTO_INCREMENT,
  `id_theme` int(11) NOT NULL,
  `id_meta` int(10) unsigned NOT NULL,
  `left_column` tinyint(1) NOT NULL DEFAULT '1',
  `right_column` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_theme_meta`),
  UNIQUE KEY `id_theme_2` (`id_theme`,`id_meta`),
  KEY `id_theme` (`id_theme`),
  KEY `id_meta` (`id_meta`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_theme_meta`
--

LOCK TABLES `ps_theme_meta` WRITE;
/*!40000 ALTER TABLE `ps_theme_meta` DISABLE KEYS */;
INSERT INTO `ps_theme_meta` VALUES (1,1,1,0,0),(2,1,2,1,0),(3,1,3,0,0),(4,1,4,0,0),(5,1,5,1,0),(6,1,6,1,0),(7,1,7,0,0),(8,1,8,1,0),(9,1,9,1,0),(10,1,10,0,0),(11,1,11,0,0),(12,1,12,0,0),(13,1,13,0,0),(14,1,14,0,0),(15,1,15,0,0),(16,1,16,0,0),(17,1,17,0,0),(18,1,18,0,0),(19,1,19,0,0),(20,1,20,0,0),(21,1,21,0,0),(22,1,22,1,0),(23,1,23,0,0),(24,1,24,0,0),(25,1,25,0,0),(26,1,26,0,0),(27,1,28,1,0),(28,1,29,0,0),(29,1,27,0,0),(32,1,32,0,0),(33,1,33,0,0),(34,1,34,0,0),(35,1,36,1,0),(36,1,37,1,0);
/*!40000 ALTER TABLE `ps_theme_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_theme_specific`
--

DROP TABLE IF EXISTS `ps_theme_specific`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_theme_specific` (
  `id_theme` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `entity` int(11) unsigned NOT NULL,
  `id_object` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_theme`,`id_shop`,`entity`,`id_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_theme_specific`
--

LOCK TABLES `ps_theme_specific` WRITE;
/*!40000 ALTER TABLE `ps_theme_specific` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_theme_specific` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_themeconfigurator`
--

DROP TABLE IF EXISTS `ps_themeconfigurator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_themeconfigurator` (
  `id_item` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `item_order` int(10) unsigned NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `title_use` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hook` varchar(100) DEFAULT NULL,
  `url` text,
  `target` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) DEFAULT NULL,
  `image_w` varchar(10) DEFAULT NULL,
  `image_h` varchar(10) DEFAULT NULL,
  `html` text,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_item`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_themeconfigurator`
--

LOCK TABLES `ps_themeconfigurator` WRITE;
/*!40000 ALTER TABLE `ps_themeconfigurator` DISABLE KEYS */;
INSERT INTO `ps_themeconfigurator` VALUES (1,1,1,1,'',0,'home','http://www.prestashop.com/',0,'banner-img1.jpg','383','267','',0),(2,1,1,2,'',0,'home','http://www.prestashop.com/',0,'banner-img2.jpg','383','267','',0),(3,1,1,3,'',0,'home','http://www.prestashop.com/',0,'banner-img3.jpg','383','267','',0),(4,1,1,4,'',0,'home','http://www.prestashop.com/',0,'banner-img4.jpg','383','142','',0),(5,1,1,5,'',0,'home','http://www.prestashop.com/',0,'banner-img5.jpg','777','142','',0),(6,1,1,6,'',0,'top','http://www.prestashop.com/',0,'banner-img6.jpg','381','219','',0),(7,1,1,7,'',0,'top','http://www.prestashop.com/',0,'banner-img7.jpg','381','219','',0);
/*!40000 ALTER TABLE `ps_themeconfigurator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_timezone`
--

DROP TABLE IF EXISTS `ps_timezone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_timezone` (
  `id_timezone` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_timezone`)
) ENGINE=InnoDB AUTO_INCREMENT=561 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_timezone`
--

LOCK TABLES `ps_timezone` WRITE;
/*!40000 ALTER TABLE `ps_timezone` DISABLE KEYS */;
INSERT INTO `ps_timezone` VALUES (1,'Africa/Abidjan'),(2,'Africa/Accra'),(3,'Africa/Addis_Ababa'),(4,'Africa/Algiers'),(5,'Africa/Asmara'),(6,'Africa/Asmera'),(7,'Africa/Bamako'),(8,'Africa/Bangui'),(9,'Africa/Banjul'),(10,'Africa/Bissau'),(11,'Africa/Blantyre'),(12,'Africa/Brazzaville'),(13,'Africa/Bujumbura'),(14,'Africa/Cairo'),(15,'Africa/Casablanca'),(16,'Africa/Ceuta'),(17,'Africa/Conakry'),(18,'Africa/Dakar'),(19,'Africa/Dar_es_Salaam'),(20,'Africa/Djibouti'),(21,'Africa/Douala'),(22,'Africa/El_Aaiun'),(23,'Africa/Freetown'),(24,'Africa/Gaborone'),(25,'Africa/Harare'),(26,'Africa/Johannesburg'),(27,'Africa/Kampala'),(28,'Africa/Khartoum'),(29,'Africa/Kigali'),(30,'Africa/Kinshasa'),(31,'Africa/Lagos'),(32,'Africa/Libreville'),(33,'Africa/Lome'),(34,'Africa/Luanda'),(35,'Africa/Lubumbashi'),(36,'Africa/Lusaka'),(37,'Africa/Malabo'),(38,'Africa/Maputo'),(39,'Africa/Maseru'),(40,'Africa/Mbabane'),(41,'Africa/Mogadishu'),(42,'Africa/Monrovia'),(43,'Africa/Nairobi'),(44,'Africa/Ndjamena'),(45,'Africa/Niamey'),(46,'Africa/Nouakchott'),(47,'Africa/Ouagadougou'),(48,'Africa/Porto-Novo'),(49,'Africa/Sao_Tome'),(50,'Africa/Timbuktu'),(51,'Africa/Tripoli'),(52,'Africa/Tunis'),(53,'Africa/Windhoek'),(54,'America/Adak'),(55,'America/Anchorage '),(56,'America/Anguilla'),(57,'America/Antigua'),(58,'America/Araguaina'),(59,'America/Argentina/Buenos_Aires'),(60,'America/Argentina/Catamarca'),(61,'America/Argentina/ComodRivadavia'),(62,'America/Argentina/Cordoba'),(63,'America/Argentina/Jujuy'),(64,'America/Argentina/La_Rioja'),(65,'America/Argentina/Mendoza'),(66,'America/Argentina/Rio_Gallegos'),(67,'America/Argentina/Salta'),(68,'America/Argentina/San_Juan'),(69,'America/Argentina/San_Luis'),(70,'America/Argentina/Tucuman'),(71,'America/Argentina/Ushuaia'),(72,'America/Aruba'),(73,'America/Asuncion'),(74,'America/Atikokan'),(75,'America/Atka'),(76,'America/Bahia'),(77,'America/Barbados'),(78,'America/Belem'),(79,'America/Belize'),(80,'America/Blanc-Sablon'),(81,'America/Boa_Vista'),(82,'America/Bogota'),(83,'America/Boise'),(84,'America/Buenos_Aires'),(85,'America/Cambridge_Bay'),(86,'America/Campo_Grande'),(87,'America/Cancun'),(88,'America/Caracas'),(89,'America/Catamarca'),(90,'America/Cayenne'),(91,'America/Cayman'),(92,'America/Chicago'),(93,'America/Chihuahua'),(94,'America/Coral_Harbour'),(95,'America/Cordoba'),(96,'America/Costa_Rica'),(97,'America/Cuiaba'),(98,'America/Curacao'),(99,'America/Danmarkshavn'),(100,'America/Dawson'),(101,'America/Dawson_Creek'),(102,'America/Denver'),(103,'America/Detroit'),(104,'America/Dominica'),(105,'America/Edmonton'),(106,'America/Eirunepe'),(107,'America/El_Salvador'),(108,'America/Ensenada'),(109,'America/Fort_Wayne'),(110,'America/Fortaleza'),(111,'America/Glace_Bay'),(112,'America/Godthab'),(113,'America/Goose_Bay'),(114,'America/Grand_Turk'),(115,'America/Grenada'),(116,'America/Guadeloupe'),(117,'America/Guatemala'),(118,'America/Guayaquil'),(119,'America/Guyana'),(120,'America/Halifax'),(121,'America/Havana'),(122,'America/Hermosillo'),(123,'America/Indiana/Indianapolis'),(124,'America/Indiana/Knox'),(125,'America/Indiana/Marengo'),(126,'America/Indiana/Petersburg'),(127,'America/Indiana/Tell_City'),(128,'America/Indiana/Vevay'),(129,'America/Indiana/Vincennes'),(130,'America/Indiana/Winamac'),(131,'America/Indianapolis'),(132,'America/Inuvik'),(133,'America/Iqaluit'),(134,'America/Jamaica'),(135,'America/Jujuy'),(136,'America/Juneau'),(137,'America/Kentucky/Louisville'),(138,'America/Kentucky/Monticello'),(139,'America/Knox_IN'),(140,'America/La_Paz'),(141,'America/Lima'),(142,'America/Los_Angeles'),(143,'America/Louisville'),(144,'America/Maceio'),(145,'America/Managua'),(146,'America/Manaus'),(147,'America/Marigot'),(148,'America/Martinique'),(149,'America/Mazatlan'),(150,'America/Mendoza'),(151,'America/Menominee'),(152,'America/Merida'),(153,'America/Mexico_City'),(154,'America/Miquelon'),(155,'America/Moncton'),(156,'America/Monterrey'),(157,'America/Montevideo'),(158,'America/Montreal'),(159,'America/Montserrat'),(160,'America/Nassau'),(161,'America/New_York'),(162,'America/Nipigon'),(163,'America/Nome'),(164,'America/Noronha'),(165,'America/North_Dakota/Center'),(166,'America/North_Dakota/New_Salem'),(167,'America/Panama'),(168,'America/Pangnirtung'),(169,'America/Paramaribo'),(170,'America/Phoenix'),(171,'America/Port-au-Prince'),(172,'America/Port_of_Spain'),(173,'America/Porto_Acre'),(174,'America/Porto_Velho'),(175,'America/Puerto_Rico'),(176,'America/Rainy_River'),(177,'America/Rankin_Inlet'),(178,'America/Recife'),(179,'America/Regina'),(180,'America/Resolute'),(181,'America/Rio_Branco'),(182,'America/Rosario'),(183,'America/Santarem'),(184,'America/Santiago'),(185,'America/Santo_Domingo'),(186,'America/Sao_Paulo'),(187,'America/Scoresbysund'),(188,'America/Shiprock'),(189,'America/St_Barthelemy'),(190,'America/St_Johns'),(191,'America/St_Kitts'),(192,'America/St_Lucia'),(193,'America/St_Thomas'),(194,'America/St_Vincent'),(195,'America/Swift_Current'),(196,'America/Tegucigalpa'),(197,'America/Thule'),(198,'America/Thunder_Bay'),(199,'America/Tijuana'),(200,'America/Toronto'),(201,'America/Tortola'),(202,'America/Vancouver'),(203,'America/Virgin'),(204,'America/Whitehorse'),(205,'America/Winnipeg'),(206,'America/Yakutat'),(207,'America/Yellowknife'),(208,'Antarctica/Casey'),(209,'Antarctica/Davis'),(210,'Antarctica/DumontDUrville'),(211,'Antarctica/Mawson'),(212,'Antarctica/McMurdo'),(213,'Antarctica/Palmer'),(214,'Antarctica/Rothera'),(215,'Antarctica/South_Pole'),(216,'Antarctica/Syowa'),(217,'Antarctica/Vostok'),(218,'Arctic/Longyearbyen'),(219,'Asia/Aden'),(220,'Asia/Almaty'),(221,'Asia/Amman'),(222,'Asia/Anadyr'),(223,'Asia/Aqtau'),(224,'Asia/Aqtobe'),(225,'Asia/Ashgabat'),(226,'Asia/Ashkhabad'),(227,'Asia/Baghdad'),(228,'Asia/Bahrain'),(229,'Asia/Baku'),(230,'Asia/Bangkok'),(231,'Asia/Beirut'),(232,'Asia/Bishkek'),(233,'Asia/Brunei'),(234,'Asia/Calcutta'),(235,'Asia/Choibalsan'),(236,'Asia/Chongqing'),(237,'Asia/Chungking'),(238,'Asia/Colombo'),(239,'Asia/Dacca'),(240,'Asia/Damascus'),(241,'Asia/Dhaka'),(242,'Asia/Dili'),(243,'Asia/Dubai'),(244,'Asia/Dushanbe'),(245,'Asia/Gaza'),(246,'Asia/Harbin'),(247,'Asia/Ho_Chi_Minh'),(248,'Asia/Hong_Kong'),(249,'Asia/Hovd'),(250,'Asia/Irkutsk'),(251,'Asia/Istanbul'),(252,'Asia/Jakarta'),(253,'Asia/Jayapura'),(254,'Asia/Jerusalem'),(255,'Asia/Kabul'),(256,'Asia/Kamchatka'),(257,'Asia/Karachi'),(258,'Asia/Kashgar'),(259,'Asia/Kathmandu'),(260,'Asia/Katmandu'),(261,'Asia/Kolkata'),(262,'Asia/Krasnoyarsk'),(263,'Asia/Kuala_Lumpur'),(264,'Asia/Kuching'),(265,'Asia/Kuwait'),(266,'Asia/Macao'),(267,'Asia/Macau'),(268,'Asia/Magadan'),(269,'Asia/Makassar'),(270,'Asia/Manila'),(271,'Asia/Muscat'),(272,'Asia/Nicosia'),(273,'Asia/Novosibirsk'),(274,'Asia/Omsk'),(275,'Asia/Oral'),(276,'Asia/Phnom_Penh'),(277,'Asia/Pontianak'),(278,'Asia/Pyongyang'),(279,'Asia/Qatar'),(280,'Asia/Qyzylorda'),(281,'Asia/Rangoon'),(282,'Asia/Riyadh'),(283,'Asia/Saigon'),(284,'Asia/Sakhalin'),(285,'Asia/Samarkand'),(286,'Asia/Seoul'),(287,'Asia/Shanghai'),(288,'Asia/Singapore'),(289,'Asia/Taipei'),(290,'Asia/Tashkent'),(291,'Asia/Tbilisi'),(292,'Asia/Tehran'),(293,'Asia/Tel_Aviv'),(294,'Asia/Thimbu'),(295,'Asia/Thimphu'),(296,'Asia/Tokyo'),(297,'Asia/Ujung_Pandang'),(298,'Asia/Ulaanbaatar'),(299,'Asia/Ulan_Bator'),(300,'Asia/Urumqi'),(301,'Asia/Vientiane'),(302,'Asia/Vladivostok'),(303,'Asia/Yakutsk'),(304,'Asia/Yekaterinburg'),(305,'Asia/Yerevan'),(306,'Atlantic/Azores'),(307,'Atlantic/Bermuda'),(308,'Atlantic/Canary'),(309,'Atlantic/Cape_Verde'),(310,'Atlantic/Faeroe'),(311,'Atlantic/Faroe'),(312,'Atlantic/Jan_Mayen'),(313,'Atlantic/Madeira'),(314,'Atlantic/Reykjavik'),(315,'Atlantic/South_Georgia'),(316,'Atlantic/St_Helena'),(317,'Atlantic/Stanley'),(318,'Australia/ACT'),(319,'Australia/Adelaide'),(320,'Australia/Brisbane'),(321,'Australia/Broken_Hill'),(322,'Australia/Canberra'),(323,'Australia/Currie'),(324,'Australia/Darwin'),(325,'Australia/Eucla'),(326,'Australia/Hobart'),(327,'Australia/LHI'),(328,'Australia/Lindeman'),(329,'Australia/Lord_Howe'),(330,'Australia/Melbourne'),(331,'Australia/North'),(332,'Australia/NSW'),(333,'Australia/Perth'),(334,'Australia/Queensland'),(335,'Australia/South'),(336,'Australia/Sydney'),(337,'Australia/Tasmania'),(338,'Australia/Victoria'),(339,'Australia/West'),(340,'Australia/Yancowinna'),(341,'Europe/Amsterdam'),(342,'Europe/Andorra'),(343,'Europe/Athens'),(344,'Europe/Belfast'),(345,'Europe/Belgrade'),(346,'Europe/Berlin'),(347,'Europe/Bratislava'),(348,'Europe/Brussels'),(349,'Europe/Bucharest'),(350,'Europe/Budapest'),(351,'Europe/Chisinau'),(352,'Europe/Copenhagen'),(353,'Europe/Dublin'),(354,'Europe/Gibraltar'),(355,'Europe/Guernsey'),(356,'Europe/Helsinki'),(357,'Europe/Isle_of_Man'),(358,'Europe/Istanbul'),(359,'Europe/Jersey'),(360,'Europe/Kaliningrad'),(361,'Europe/Kiev'),(362,'Europe/Lisbon'),(363,'Europe/Ljubljana'),(364,'Europe/London'),(365,'Europe/Luxembourg'),(366,'Europe/Madrid'),(367,'Europe/Malta'),(368,'Europe/Mariehamn'),(369,'Europe/Minsk'),(370,'Europe/Monaco'),(371,'Europe/Moscow'),(372,'Europe/Nicosia'),(373,'Europe/Oslo'),(374,'Europe/Paris'),(375,'Europe/Podgorica'),(376,'Europe/Prague'),(377,'Europe/Riga'),(378,'Europe/Rome'),(379,'Europe/Samara'),(380,'Europe/San_Marino'),(381,'Europe/Sarajevo'),(382,'Europe/Simferopol'),(383,'Europe/Skopje'),(384,'Europe/Sofia'),(385,'Europe/Stockholm'),(386,'Europe/Tallinn'),(387,'Europe/Tirane'),(388,'Europe/Tiraspol'),(389,'Europe/Uzhgorod'),(390,'Europe/Vaduz'),(391,'Europe/Vatican'),(392,'Europe/Vienna'),(393,'Europe/Vilnius'),(394,'Europe/Volgograd'),(395,'Europe/Warsaw'),(396,'Europe/Zagreb'),(397,'Europe/Zaporozhye'),(398,'Europe/Zurich'),(399,'Indian/Antananarivo'),(400,'Indian/Chagos'),(401,'Indian/Christmas'),(402,'Indian/Cocos'),(403,'Indian/Comoro'),(404,'Indian/Kerguelen'),(405,'Indian/Mahe'),(406,'Indian/Maldives'),(407,'Indian/Mauritius'),(408,'Indian/Mayotte'),(409,'Indian/Reunion'),(410,'Pacific/Apia'),(411,'Pacific/Auckland'),(412,'Pacific/Chatham'),(413,'Pacific/Easter'),(414,'Pacific/Efate'),(415,'Pacific/Enderbury'),(416,'Pacific/Fakaofo'),(417,'Pacific/Fiji'),(418,'Pacific/Funafuti'),(419,'Pacific/Galapagos'),(420,'Pacific/Gambier'),(421,'Pacific/Guadalcanal'),(422,'Pacific/Guam'),(423,'Pacific/Honolulu'),(424,'Pacific/Johnston'),(425,'Pacific/Kiritimati'),(426,'Pacific/Kosrae'),(427,'Pacific/Kwajalein'),(428,'Pacific/Majuro'),(429,'Pacific/Marquesas'),(430,'Pacific/Midway'),(431,'Pacific/Nauru'),(432,'Pacific/Niue'),(433,'Pacific/Norfolk'),(434,'Pacific/Noumea'),(435,'Pacific/Pago_Pago'),(436,'Pacific/Palau'),(437,'Pacific/Pitcairn'),(438,'Pacific/Ponape'),(439,'Pacific/Port_Moresby'),(440,'Pacific/Rarotonga'),(441,'Pacific/Saipan'),(442,'Pacific/Samoa'),(443,'Pacific/Tahiti'),(444,'Pacific/Tarawa'),(445,'Pacific/Tongatapu'),(446,'Pacific/Truk'),(447,'Pacific/Wake'),(448,'Pacific/Wallis'),(449,'Pacific/Yap'),(450,'Brazil/Acre'),(451,'Brazil/DeNoronha'),(452,'Brazil/East'),(453,'Brazil/West'),(454,'Canada/Atlantic'),(455,'Canada/Central'),(456,'Canada/East-Saskatchewan'),(457,'Canada/Eastern'),(458,'Canada/Mountain'),(459,'Canada/Newfoundland'),(460,'Canada/Pacific'),(461,'Canada/Saskatchewan'),(462,'Canada/Yukon'),(463,'CET'),(464,'Chile/Continental'),(465,'Chile/EasterIsland'),(466,'CST6CDT'),(467,'Cuba'),(468,'EET'),(469,'Egypt'),(470,'Eire'),(471,'EST'),(472,'EST5EDT'),(473,'Etc/GMT'),(474,'Etc/GMT+0'),(475,'Etc/GMT+1'),(476,'Etc/GMT+10'),(477,'Etc/GMT+11'),(478,'Etc/GMT+12'),(479,'Etc/GMT+2'),(480,'Etc/GMT+3'),(481,'Etc/GMT+4'),(482,'Etc/GMT+5'),(483,'Etc/GMT+6'),(484,'Etc/GMT+7'),(485,'Etc/GMT+8'),(486,'Etc/GMT+9'),(487,'Etc/GMT-0'),(488,'Etc/GMT-1'),(489,'Etc/GMT-10'),(490,'Etc/GMT-11'),(491,'Etc/GMT-12'),(492,'Etc/GMT-13'),(493,'Etc/GMT-14'),(494,'Etc/GMT-2'),(495,'Etc/GMT-3'),(496,'Etc/GMT-4'),(497,'Etc/GMT-5'),(498,'Etc/GMT-6'),(499,'Etc/GMT-7'),(500,'Etc/GMT-8'),(501,'Etc/GMT-9'),(502,'Etc/GMT0'),(503,'Etc/Greenwich'),(504,'Etc/UCT'),(505,'Etc/Universal'),(506,'Etc/UTC'),(507,'Etc/Zulu'),(508,'Factory'),(509,'GB'),(510,'GB-Eire'),(511,'GMT'),(512,'GMT+0'),(513,'GMT-0'),(514,'GMT0'),(515,'Greenwich'),(516,'Hongkong'),(517,'HST'),(518,'Iceland'),(519,'Iran'),(520,'Israel'),(521,'Jamaica'),(522,'Japan'),(523,'Kwajalein'),(524,'Libya'),(525,'MET'),(526,'Mexico/BajaNorte'),(527,'Mexico/BajaSur'),(528,'Mexico/General'),(529,'MST'),(530,'MST7MDT'),(531,'Navajo'),(532,'NZ'),(533,'NZ-CHAT'),(534,'Poland'),(535,'Portugal'),(536,'PRC'),(537,'PST8PDT'),(538,'ROC'),(539,'ROK'),(540,'Singapore'),(541,'Turkey'),(542,'UCT'),(543,'Universal'),(544,'US/Alaska'),(545,'US/Aleutian'),(546,'US/Arizona'),(547,'US/Central'),(548,'US/East-Indiana'),(549,'US/Eastern'),(550,'US/Hawaii'),(551,'US/Indiana-Starke'),(552,'US/Michigan'),(553,'US/Mountain'),(554,'US/Pacific'),(555,'US/Pacific-New'),(556,'US/Samoa'),(557,'UTC'),(558,'W-SU'),(559,'WET'),(560,'Zulu');
/*!40000 ALTER TABLE `ps_timezone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_warehouse`
--

DROP TABLE IF EXISTS `ps_warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_warehouse` (
  `id_warehouse` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_currency` int(11) unsigned NOT NULL,
  `id_address` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `reference` varchar(32) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `management_type` enum('WA','FIFO','LIFO') NOT NULL DEFAULT 'WA',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_warehouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_warehouse`
--

LOCK TABLES `ps_warehouse` WRITE;
/*!40000 ALTER TABLE `ps_warehouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_warehouse_carrier`
--

DROP TABLE IF EXISTS `ps_warehouse_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_warehouse_carrier` (
  `id_carrier` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_warehouse`,`id_carrier`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `id_carrier` (`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_warehouse_carrier`
--

LOCK TABLES `ps_warehouse_carrier` WRITE;
/*!40000 ALTER TABLE `ps_warehouse_carrier` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_warehouse_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_warehouse_product_location`
--

DROP TABLE IF EXISTS `ps_warehouse_product_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_warehouse_product_location` (
  `id_warehouse_product_location` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  `location` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_warehouse_product_location`),
  UNIQUE KEY `id_product` (`id_product`,`id_product_attribute`,`id_warehouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_warehouse_product_location`
--

LOCK TABLES `ps_warehouse_product_location` WRITE;
/*!40000 ALTER TABLE `ps_warehouse_product_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_warehouse_product_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_warehouse_shop`
--

DROP TABLE IF EXISTS `ps_warehouse_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_warehouse_shop` (
  `id_shop` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_warehouse`,`id_shop`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_warehouse_shop`
--

LOCK TABLES `ps_warehouse_shop` WRITE;
/*!40000 ALTER TABLE `ps_warehouse_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_warehouse_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_web_browser`
--

DROP TABLE IF EXISTS `ps_web_browser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_web_browser` (
  `id_web_browser` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_web_browser`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_web_browser`
--

LOCK TABLES `ps_web_browser` WRITE;
/*!40000 ALTER TABLE `ps_web_browser` DISABLE KEYS */;
INSERT INTO `ps_web_browser` VALUES (1,'Safari'),(2,'Safari iPad'),(3,'Firefox'),(4,'Opera'),(5,'IE 6'),(6,'IE 7'),(7,'IE 8'),(8,'IE 9'),(9,'IE 10'),(10,'IE 11'),(11,'Chrome');
/*!40000 ALTER TABLE `ps_web_browser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_webservice_account`
--

DROP TABLE IF EXISTS `ps_webservice_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_webservice_account` (
  `id_webservice_account` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `description` text,
  `class_name` varchar(50) NOT NULL DEFAULT 'WebserviceRequest',
  `is_module` tinyint(2) NOT NULL DEFAULT '0',
  `module_name` varchar(50) DEFAULT NULL,
  `active` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_webservice_account`),
  KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_webservice_account`
--

LOCK TABLES `ps_webservice_account` WRITE;
/*!40000 ALTER TABLE `ps_webservice_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_webservice_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_webservice_account_shop`
--

DROP TABLE IF EXISTS `ps_webservice_account_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_webservice_account_shop` (
  `id_webservice_account` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_webservice_account`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_webservice_account_shop`
--

LOCK TABLES `ps_webservice_account_shop` WRITE;
/*!40000 ALTER TABLE `ps_webservice_account_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_webservice_account_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_webservice_permission`
--

DROP TABLE IF EXISTS `ps_webservice_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_webservice_permission` (
  `id_webservice_permission` int(11) NOT NULL AUTO_INCREMENT,
  `resource` varchar(50) NOT NULL,
  `method` enum('GET','POST','PUT','DELETE','HEAD') NOT NULL,
  `id_webservice_account` int(11) NOT NULL,
  PRIMARY KEY (`id_webservice_permission`),
  UNIQUE KEY `resource_2` (`resource`,`method`,`id_webservice_account`),
  KEY `resource` (`resource`),
  KEY `method` (`method`),
  KEY `id_webservice_account` (`id_webservice_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_webservice_permission`
--

LOCK TABLES `ps_webservice_permission` WRITE;
/*!40000 ALTER TABLE `ps_webservice_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_webservice_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_zone`
--

DROP TABLE IF EXISTS `ps_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_zone` (
  `id_zone` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_zone`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_zone`
--

LOCK TABLES `ps_zone` WRITE;
/*!40000 ALTER TABLE `ps_zone` DISABLE KEYS */;
INSERT INTO `ps_zone` VALUES (1,'Europe',1),(2,'North America',1),(3,'Asia',1),(4,'Africa',1),(5,'Oceania',1),(6,'South America',1),(7,'Europe (non-EU)',1),(8,'Central America/Antilla',1);
/*!40000 ALTER TABLE `ps_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_zone_shop`
--

DROP TABLE IF EXISTS `ps_zone_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_zone_shop` (
  `id_zone` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_zone`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_zone_shop`
--

LOCK TABLES `ps_zone_shop` WRITE;
/*!40000 ALTER TABLE `ps_zone_shop` DISABLE KEYS */;
INSERT INTO `ps_zone_shop` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1);
/*!40000 ALTER TABLE `ps_zone_shop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-17 20:13:38
