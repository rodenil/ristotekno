-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: ristotekno_development
-- ------------------------------------------------------
-- Server version	5.5.29-0ubuntu0.12.10.1

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
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130130000033'),('20130130000034'),('20130130000035'),('20130130000036'),('20130130000037'),('20130130000038'),('20130130000039'),('20130130000040'),('20130130000041'),('20130130000042'),('20130130000043'),('20130130000044'),('20130130000045'),('20130130000046'),('20130130000047'),('20130130000048'),('20130130000049'),('20130130000050'),('20130130000051'),('20130130000052'),('20130130000053'),('20130130000054'),('20130130000055'),('20130130000056'),('20130130000057'),('20130130000058'),('20130130000059');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_activators`
--

DROP TABLE IF EXISTS `spree_activators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_activators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `starts_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `event_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `match_policy` varchar(255) DEFAULT 'all',
  `code` varchar(255) DEFAULT NULL,
  `advertise` tinyint(1) DEFAULT '0',
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_activators`
--

LOCK TABLES `spree_activators` WRITE;
/*!40000 ALTER TABLE `spree_activators` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_activators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_addresses`
--

DROP TABLE IF EXISTS `spree_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `alternative_phone` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addresses_on_firstname` (`firstname`),
  KEY `index_addresses_on_lastname` (`lastname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_addresses`
--

LOCK TABLES `spree_addresses` WRITE;
/*!40000 ALTER TABLE `spree_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_adjustments`
--

DROP TABLE IF EXISTS `spree_adjustments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_adjustments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `adjustable_id` int(11) DEFAULT NULL,
  `adjustable_type` varchar(255) DEFAULT NULL,
  `originator_id` int(11) DEFAULT NULL,
  `originator_type` varchar(255) DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `mandatory` tinyint(1) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT NULL,
  `eligible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_adjustments_on_order_id` (`adjustable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_adjustments`
--

LOCK TABLES `spree_adjustments` WRITE;
/*!40000 ALTER TABLE `spree_adjustments` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_adjustments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_assets`
--

DROP TABLE IF EXISTS `spree_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `viewable_id` int(11) DEFAULT NULL,
  `viewable_type` varchar(255) DEFAULT NULL,
  `attachment_width` int(11) DEFAULT NULL,
  `attachment_height` int(11) DEFAULT NULL,
  `attachment_file_size` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `attachment_content_type` varchar(255) DEFAULT NULL,
  `attachment_file_name` varchar(255) DEFAULT NULL,
  `type` varchar(75) DEFAULT NULL,
  `attachment_updated_at` datetime DEFAULT NULL,
  `alt` text,
  PRIMARY KEY (`id`),
  KEY `index_assets_on_viewable_id` (`viewable_id`),
  KEY `index_assets_on_viewable_type_and_type` (`viewable_type`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_assets`
--

LOCK TABLES `spree_assets` WRITE;
/*!40000 ALTER TABLE `spree_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_calculators`
--

DROP TABLE IF EXISTS `spree_calculators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_calculators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `calculable_id` int(11) DEFAULT NULL,
  `calculable_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_calculators`
--

LOCK TABLES `spree_calculators` WRITE;
/*!40000 ALTER TABLE `spree_calculators` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_calculators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_configurations`
--

DROP TABLE IF EXISTS `spree_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_configurations_on_name_and_type` (`name`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_configurations`
--

LOCK TABLES `spree_configurations` WRITE;
/*!40000 ALTER TABLE `spree_configurations` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_countries`
--

DROP TABLE IF EXISTS `spree_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso_name` varchar(255) DEFAULT NULL,
  `iso` varchar(255) DEFAULT NULL,
  `iso3` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `numcode` int(11) DEFAULT NULL,
  `states_required` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=999 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_countries`
--

LOCK TABLES `spree_countries` WRITE;
/*!40000 ALTER TABLE `spree_countries` DISABLE KEYS */;
INSERT INTO `spree_countries` VALUES (1,'AFGHANISTAN','AF','AFG','Afghanistan',4,1),(2,'ALBANIA','AL','ALB','Albania',8,1),(3,'ALGERIA','DZ','DZA','Algeria',12,1),(4,'AMERICAN SAMOA','AS','ASM','American Samoa',16,1),(5,'ANDORRA','AD','AND','Andorra',20,1),(6,'ANGOLA','AO','AGO','Angola',24,1),(7,'ANGUILLA','AI','AIA','Anguilla',660,1),(8,'ANTIGUA AND BARBUDA','AG','ATG','Antigua and Barbuda',28,1),(9,'ARGENTINA','AR','ARG','Argentina',32,1),(10,'ARMENIA','AM','ARM','Armenia',51,1),(11,'ARUBA','AW','ABW','Aruba',533,1),(12,'AUSTRALIA','AU','AUS','Australia',36,1),(13,'AUSTRIA','AT','AUT','Austria',40,1),(14,'AZERBAIJAN','AZ','AZE','Azerbaijan',31,1),(15,'BAHAMAS','BS','BHS','Bahamas',44,1),(16,'BAHRAIN','BH','BHR','Bahrain',48,1),(17,'BANGLADESH','BD','BGD','Bangladesh',50,1),(18,'BARBADOS','BB','BRB','Barbados',52,1),(19,'BELARUS','BY','BLR','Belarus',112,1),(20,'BELGIUM','BE','BEL','Belgium',56,1),(21,'BELIZE','BZ','BLZ','Belize',84,1),(22,'BENIN','BJ','BEN','Benin',204,1),(23,'BERMUDA','BM','BMU','Bermuda',60,1),(24,'BHUTAN','BT','BTN','Bhutan',64,1),(25,'BOLIVIA','BO','BOL','Bolivia',68,1),(26,'BOSNIA AND HERZEGOVINA','BA','BIH','Bosnia and Herzegovina',70,1),(27,'BOTSWANA','BW','BWA','Botswana',72,1),(28,'BRAZIL','BR','BRA','Brazil',76,1),(29,'BRUNEI DARUSSALAM','BN','BRN','Brunei Darussalam',96,1),(30,'BULGARIA','BG','BGR','Bulgaria',100,1),(31,'BURKINA FASO','BF','BFA','Burkina Faso',854,1),(32,'BURUNDI','BI','BDI','Burundi',108,1),(33,'CAMBODIA','KH','KHM','Cambodia',116,1),(34,'CAMEROON','CM','CMR','Cameroon',120,1),(35,'CANADA','CA','CAN','Canada',124,1),(36,'CAPE VERDE','CV','CPV','Cape Verde',132,1),(37,'CAYMAN ISLANDS','KY','CYM','Cayman Islands',136,1),(38,'CENTRAL AFRICAN REPUBLIC','CF','CAF','Central African Republic',140,1),(39,'CHAD','TD','TCD','Chad',148,1),(40,'CHILE','CL','CHL','Chile',152,1),(41,'CHINA','CN','CHN','China',156,1),(42,'COLOMBIA','CO','COL','Colombia',170,1),(43,'COMOROS','KM','COM','Comoros',174,1),(44,'CONGO','CG','COG','Congo',178,1),(45,'CONGO, THE DEMOCRATIC REPUBLIC OF THE','CD','COD','Congo, the Democratic Republic of the',180,1),(46,'COOK ISLANDS','CK','COK','Cook Islands',184,1),(47,'COSTA RICA','CR','CRI','Costa Rica',188,1),(48,'COTE D\'IVOIRE','CI','CIV','Cote D\'Ivoire',384,1),(49,'CROATIA','HR','HRV','Croatia',191,1),(50,'CUBA','CU','CUB','Cuba',192,1),(51,'CYPRUS','CY','CYP','Cyprus',196,1),(52,'CZECH REPUBLIC','CZ','CZE','Czech Republic',203,1),(53,'DENMARK','DK','DNK','Denmark',208,1),(54,'DJIBOUTI','DJ','DJI','Djibouti',262,1),(55,'DOMINICA','DM','DMA','Dominica',212,1),(56,'DOMINICAN REPUBLIC','DO','DOM','Dominican Republic',214,1),(57,'ECUADOR','EC','ECU','Ecuador',218,1),(58,'EGYPT','EG','EGY','Egypt',818,1),(59,'EL SALVADOR','SV','SLV','El Salvador',222,1),(60,'EQUATORIAL GUINEA','GQ','GNQ','Equatorial Guinea',226,1),(61,'ERITREA','ER','ERI','Eritrea',232,1),(62,'ESTONIA','EE','EST','Estonia',233,1),(63,'ETHIOPIA','ET','ETH','Ethiopia',231,1),(64,'FALKLAND ISLANDS (MALVINAS)','FK','FLK','Falkland Islands (Malvinas)',238,1),(65,'FAROE ISLANDS','FO','FRO','Faroe Islands',234,1),(66,'FIJI','FJ','FJI','Fiji',242,1),(67,'FINLAND','FI','FIN','Finland',246,1),(68,'FRANCE','FR','FRA','France',250,1),(69,'FRENCH GUIANA','GF','GUF','French Guiana',254,1),(70,'FRENCH POLYNESIA','PF','PYF','French Polynesia',258,1),(71,'GABON','GA','GAB','Gabon',266,1),(72,'GAMBIA','GM','GMB','Gambia',270,1),(73,'GEORGIA','GE','GEO','Georgia',268,1),(74,'GERMANY','DE','DEU','Germany',276,1),(75,'GHANA','GH','GHA','Ghana',288,1),(76,'GIBRALTAR','GI','GIB','Gibraltar',292,1),(77,'GREECE','GR','GRC','Greece',300,1),(78,'GREENLAND','GL','GRL','Greenland',304,1),(79,'GRENADA','GD','GRD','Grenada',308,1),(80,'GUADELOUPE','GP','GLP','Guadeloupe',312,1),(81,'GUAM','GU','GUM','Guam',316,1),(82,'GUATEMALA','GT','GTM','Guatemala',320,1),(83,'GUINEA','GN','GIN','Guinea',324,1),(84,'GUINEA-BISSAU','GW','GNB','Guinea-Bissau',624,1),(85,'GUYANA','GY','GUY','Guyana',328,1),(86,'HAITI','HT','HTI','Haiti',332,1),(87,'HOLY SEE (VATICAN CITY STATE)','VA','VAT','Holy See (Vatican City State)',336,1),(88,'HONDURAS','HN','HND','Honduras',340,1),(89,'HONG KONG','HK','HKG','Hong Kong',344,1),(90,'HUNGARY','HU','HUN','Hungary',348,1),(91,'ICELAND','IS','ISL','Iceland',352,1),(92,'INDIA','IN','IND','India',356,1),(93,'INDONESIA','ID','IDN','Indonesia',360,1),(94,'IRAN, ISLAMIC REPUBLIC OF','IR','IRN','Iran, Islamic Republic of',364,1),(95,'IRAQ','IQ','IRQ','Iraq',368,1),(96,'IRELAND','IE','IRL','Ireland',372,1),(97,'ISRAEL','IL','ISR','Israel',376,1),(98,'ITALY','IT','ITA','Italy',380,1),(99,'JAMAICA','JM','JAM','Jamaica',388,1),(100,'JAPAN','JP','JPN','Japan',392,1),(101,'JORDAN','JO','JOR','Jordan',400,1),(102,'KAZAKHSTAN','KZ','KAZ','Kazakhstan',398,1),(103,'KENYA','KE','KEN','Kenya',404,1),(104,'KIRIBATI','KI','KIR','Kiribati',296,1),(105,'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','KP','PRK','North Korea',408,1),(106,'KOREA, REPUBLIC OF','KR','KOR','South Korea',410,1),(107,'KUWAIT','KW','KWT','Kuwait',414,1),(108,'KYRGYZSTAN','KG','KGZ','Kyrgyzstan',417,1),(109,'LAO PEOPLE\'S DEMOCRATIC REPUBLIC','LA','LAO','Lao People\'s Democratic Republic',418,1),(110,'LATVIA','LV','LVA','Latvia',428,1),(111,'LEBANON','LB','LBN','Lebanon',422,1),(112,'LESOTHO','LS','LSO','Lesotho',426,1),(113,'LIBERIA','LR','LBR','Liberia',430,1),(114,'LIBYAN ARAB JAMAHIRIYA','LY','LBY','Libyan Arab Jamahiriya',434,1),(115,'LIECHTENSTEIN','LI','LIE','Liechtenstein',438,1),(116,'LITHUANIA','LT','LTU','Lithuania',440,1),(117,'LUXEMBOURG','LU','LUX','Luxembourg',442,1),(118,'MACAO','MO','MAC','Macao',446,1),(119,'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','MK','MKD','Macedonia',807,1),(120,'MADAGASCAR','MG','MDG','Madagascar',450,1),(121,'MALAWI','MW','MWI','Malawi',454,1),(122,'MALAYSIA','MY','MYS','Malaysia',458,1),(123,'MALDIVES','MV','MDV','Maldives',462,1),(124,'MALI','ML','MLI','Mali',466,1),(125,'MALTA','MT','MLT','Malta',470,1),(126,'MARSHALL ISLANDS','MH','MHL','Marshall Islands',584,1),(127,'MARTINIQUE','MQ','MTQ','Martinique',474,1),(128,'MAURITANIA','MR','MRT','Mauritania',478,1),(129,'MAURITIUS','MU','MUS','Mauritius',480,1),(130,'MEXICO','MX','MEX','Mexico',484,1),(131,'MICRONESIA, FEDERATED STATES OF','FM','FSM','Micronesia, Federated States of',583,1),(132,'MOLDOVA, REPUBLIC OF','MD','MDA','Moldova, Republic of',498,1),(133,'MONACO','MC','MCO','Monaco',492,1),(134,'MONGOLIA','MN','MNG','Mongolia',496,1),(135,'MONTSERRAT','MS','MSR','Montserrat',500,1),(136,'MOROCCO','MA','MAR','Morocco',504,1),(137,'MOZAMBIQUE','MZ','MOZ','Mozambique',508,1),(138,'MYANMAR','MM','MMR','Myanmar',104,1),(139,'NAMIBIA','NA','NAM','Namibia',516,1),(140,'NAURU','NR','NRU','Nauru',520,1),(141,'NEPAL','NP','NPL','Nepal',524,1),(142,'NETHERLANDS','NL','NLD','Netherlands',528,1),(143,'NETHERLANDS ANTILLES','AN','ANT','Netherlands Antilles',530,1),(144,'NEW CALEDONIA','NC','NCL','New Caledonia',540,1),(145,'NEW ZEALAND','NZ','NZL','New Zealand',554,1),(146,'NICARAGUA','NI','NIC','Nicaragua',558,1),(147,'NIGER','NE','NER','Niger',562,1),(148,'NIGERIA','NG','NGA','Nigeria',566,1),(149,'NIUE','NU','NIU','Niue',570,1),(150,'NORFOLK ISLAND','NF','NFK','Norfolk Island',574,1),(151,'NORTHERN MARIANA ISLANDS','MP','MNP','Northern Mariana Islands',580,1),(152,'NORWAY','NO','NOR','Norway',578,1),(153,'OMAN','OM','OMN','Oman',512,1),(154,'PAKISTAN','PK','PAK','Pakistan',586,1),(155,'PALAU','PW','PLW','Palau',585,1),(156,'PANAMA','PA','PAN','Panama',591,1),(157,'PAPUA NEW GUINEA','PG','PNG','Papua New Guinea',598,1),(158,'PARAGUAY','PY','PRY','Paraguay',600,1),(159,'PERU','PE','PER','Peru',604,1),(160,'PHILIPPINES','PH','PHL','Philippines',608,1),(161,'PITCAIRN','PN','PCN','Pitcairn',612,1),(162,'POLAND','PL','POL','Poland',616,1),(163,'PORTUGAL','PT','PRT','Portugal',620,1),(164,'PUERTO RICO','PR','PRI','Puerto Rico',630,1),(165,'QATAR','QA','QAT','Qatar',634,1),(166,'REUNION','RE','REU','Reunion',638,1),(167,'ROMANIA','RO','ROM','Romania',642,1),(168,'RUSSIAN FEDERATION','RU','RUS','Russian Federation',643,1),(169,'RWANDA','RW','RWA','Rwanda',646,1),(170,'SAINT HELENA','SH','SHN','Saint Helena',654,1),(171,'SAINT KITTS AND NEVIS','KN','KNA','Saint Kitts and Nevis',659,1),(172,'SAINT LUCIA','LC','LCA','Saint Lucia',662,1),(173,'SAINT PIERRE AND MIQUELON','PM','SPM','Saint Pierre and Miquelon',666,1),(174,'SAINT VINCENT AND THE GRENADINES','VC','VCT','Saint Vincent and the Grenadines',670,1),(175,'SAMOA','WS','WSM','Samoa',882,1),(176,'SAN MARINO','SM','SMR','San Marino',674,1),(177,'SAO TOME AND PRINCIPE','ST','STP','Sao Tome and Principe',678,1),(178,'SAUDI ARABIA','SA','SAU','Saudi Arabia',682,1),(179,'SENEGAL','SN','SEN','Senegal',686,1),(180,'SEYCHELLES','SC','SYC','Seychelles',690,1),(181,'SIERRA LEONE','SL','SLE','Sierra Leone',694,1),(182,'SINGAPORE','SG','SGP','Singapore',702,1),(183,'SLOVAKIA','SK','SVK','Slovakia',703,1),(184,'SLOVENIA','SI','SVN','Slovenia',705,1),(185,'SOLOMON ISLANDS','SB','SLB','Solomon Islands',90,1),(186,'SOMALIA','SO','SOM','Somalia',706,1),(187,'SOUTH AFRICA','ZA','ZAF','South Africa',710,1),(188,'SPAIN','ES','ESP','Spain',724,1),(189,'SRI LANKA','LK','LKA','Sri Lanka',144,1),(190,'SUDAN','SD','SDN','Sudan',736,1),(191,'SURINAME','SR','SUR','Suriname',740,1),(192,'SVALBARD AND JAN MAYEN','SJ','SJM','Svalbard and Jan Mayen',744,1),(193,'SWAZILAND','SZ','SWZ','Swaziland',748,1),(194,'SWEDEN','SE','SWE','Sweden',752,1),(195,'SWITZERLAND','CH','CHE','Switzerland',756,1),(196,'SYRIAN ARAB REPUBLIC','SY','SYR','Syrian Arab Republic',760,1),(197,'TAIWAN, PROVINCE OF CHINA','TW','TWN','Taiwan',158,1),(198,'TAJIKISTAN','TJ','TJK','Tajikistan',762,1),(199,'TANZANIA, UNITED REPUBLIC OF','TZ','TZA','Tanzania, United Republic of',834,1),(200,'THAILAND','TH','THA','Thailand',764,1),(201,'TOGO','TG','TGO','Togo',768,1),(202,'TOKELAU','TK','TKL','Tokelau',772,1),(203,'TONGA','TO','TON','Tonga',776,1),(204,'TRINIDAD AND TOBAGO','TT','TTO','Trinidad and Tobago',780,1),(205,'TUNISIA','TN','TUN','Tunisia',788,1),(206,'TURKEY','TR','TUR','Turkey',792,1),(207,'TURKMENISTAN','TM','TKM','Turkmenistan',795,1),(208,'TURKS AND CAICOS ISLANDS','TC','TCA','Turks and Caicos Islands',796,1),(209,'TUVALU','TV','TUV','Tuvalu',798,1),(210,'UGANDA','UG','UGA','Uganda',800,1),(211,'UKRAINE','UA','UKR','Ukraine',804,1),(212,'UNITED ARAB EMIRATES','AE','ARE','United Arab Emirates',784,1),(213,'UNITED KINGDOM','GB','GBR','United Kingdom',826,1),(214,'UNITED STATES','US','USA','United States',840,1),(215,'URUGUAY','UY','URY','Uruguay',858,1),(216,'UZBEKISTAN','UZ','UZB','Uzbekistan',860,1),(217,'VANUATU','VU','VUT','Vanuatu',548,1),(218,'VENEZUELA','VE','VEN','Venezuela',862,1),(219,'VIET NAM','VN','VNM','Viet Nam',704,1),(220,'VIRGIN ISLANDS, BRITISH','VG','VGB','Virgin Islands, British',92,1),(221,'VIRGIN ISLANDS, U.S.','VI','VIR','Virgin Islands, U.S.',850,1),(222,'WALLIS AND FUTUNA','WF','WLF','Wallis and Futuna',876,1),(223,'WESTERN SAHARA','EH','ESH','Western Sahara',732,1),(224,'YEMEN','YE','YEM','Yemen',887,1),(225,'ZAMBIA','ZM','ZMB','Zambia',894,1),(226,'ZIMBABWE','ZW','ZWE','Zimbabwe',716,1),(998,NULL,'RS','SRB','Serbia',999,1);
/*!40000 ALTER TABLE `spree_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_credit_cards`
--

DROP TABLE IF EXISTS `spree_credit_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_credit_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `cc_type` varchar(255) DEFAULT NULL,
  `last_digits` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `start_month` varchar(255) DEFAULT NULL,
  `start_year` varchar(255) DEFAULT NULL,
  `issue_number` varchar(255) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `gateway_customer_profile_id` varchar(255) DEFAULT NULL,
  `gateway_payment_profile_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_credit_cards`
--

LOCK TABLES `spree_credit_cards` WRITE;
/*!40000 ALTER TABLE `spree_credit_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_credit_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_gateways`
--

DROP TABLE IF EXISTS `spree_gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) DEFAULT 'development',
  `server` varchar(255) DEFAULT 'test',
  `test_mode` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_gateways`
--

LOCK TABLES `spree_gateways` WRITE;
/*!40000 ALTER TABLE `spree_gateways` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_inventory_units`
--

DROP TABLE IF EXISTS `spree_inventory_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_inventory_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lock_version` int(11) DEFAULT '0',
  `state` varchar(255) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `return_authorization_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_inventory_units_on_order_id` (`order_id`),
  KEY `index_inventory_units_on_shipment_id` (`shipment_id`),
  KEY `index_inventory_units_on_variant_id` (`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_inventory_units`
--

LOCK TABLES `spree_inventory_units` WRITE;
/*!40000 ALTER TABLE `spree_inventory_units` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_inventory_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_line_items`
--

DROP TABLE IF EXISTS `spree_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_line_items_on_order_id` (`order_id`),
  KEY `index_spree_line_items_on_variant_id` (`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_line_items`
--

LOCK TABLES `spree_line_items` WRITE;
/*!40000 ALTER TABLE `spree_line_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_log_entries`
--

DROP TABLE IF EXISTS `spree_log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `details` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_log_entries`
--

LOCK TABLES `spree_log_entries` WRITE;
/*!40000 ALTER TABLE `spree_log_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_mail_methods`
--

DROP TABLE IF EXISTS `spree_mail_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_mail_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_mail_methods`
--

LOCK TABLES `spree_mail_methods` WRITE;
/*!40000 ALTER TABLE `spree_mail_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_mail_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_types`
--

DROP TABLE IF EXISTS `spree_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `presentation` varchar(100) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_types`
--

LOCK TABLES `spree_option_types` WRITE;
/*!40000 ALTER TABLE `spree_option_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_types_prototypes`
--

DROP TABLE IF EXISTS `spree_option_types_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_types_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_types_prototypes`
--

LOCK TABLES `spree_option_types_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_option_types_prototypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_option_types_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_values`
--

DROP TABLE IF EXISTS `spree_option_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `presentation` varchar(255) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_values`
--

LOCK TABLES `spree_option_values` WRITE;
/*!40000 ALTER TABLE `spree_option_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_option_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_values_variants`
--

DROP TABLE IF EXISTS `spree_option_values_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_values_variants` (
  `variant_id` int(11) DEFAULT NULL,
  `option_value_id` int(11) DEFAULT NULL,
  KEY `index_option_values_variants_on_variant_id_and_option_value_id` (`variant_id`,`option_value_id`),
  KEY `index_spree_option_values_variants_on_variant_id` (`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_values_variants`
--

LOCK TABLES `spree_option_values_variants` WRITE;
/*!40000 ALTER TABLE `spree_option_values_variants` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_option_values_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_orders`
--

DROP TABLE IF EXISTS `spree_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(15) DEFAULT NULL,
  `item_total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `state` varchar(255) DEFAULT NULL,
  `adjustment_total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `user_id` int(11) DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `payment_total` decimal(8,2) DEFAULT '0.00',
  `shipping_method_id` int(11) DEFAULT NULL,
  `shipment_state` varchar(255) DEFAULT NULL,
  `payment_state` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `special_instructions` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `last_ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_orders_on_number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_orders`
--

LOCK TABLES `spree_orders` WRITE;
/*!40000 ALTER TABLE `spree_orders` DISABLE KEYS */;
INSERT INTO `spree_orders` VALUES (1,'R024324834',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-01-30 00:09:29','2013-01-30 00:09:29','EUR',NULL);
/*!40000 ALTER TABLE `spree_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payment_methods`
--

DROP TABLE IF EXISTS `spree_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) DEFAULT 'development',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payment_methods`
--

LOCK TABLES `spree_payment_methods` WRITE;
/*!40000 ALTER TABLE `spree_payment_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payments`
--

DROP TABLE IF EXISTS `spree_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `response_code` varchar(255) DEFAULT NULL,
  `avs_response` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payments`
--

LOCK TABLES `spree_payments` WRITE;
/*!40000 ALTER TABLE `spree_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_preferences`
--

DROP TABLE IF EXISTS `spree_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` text,
  `key` varchar(255) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_preferences_on_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_preferences`
--

LOCK TABLES `spree_preferences` WRITE;
/*!40000 ALTER TABLE `spree_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_prices`
--

DROP TABLE IF EXISTS `spree_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_prices`
--

LOCK TABLES `spree_prices` WRITE;
/*!40000 ALTER TABLE `spree_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_option_types`
--

DROP TABLE IF EXISTS `spree_product_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_option_types`
--

LOCK TABLES `spree_product_option_types` WRITE;
/*!40000 ALTER TABLE `spree_product_option_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_product_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_properties`
--

DROP TABLE IF EXISTS `spree_product_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_product_properties_on_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_properties`
--

LOCK TABLES `spree_product_properties` WRITE;
/*!40000 ALTER TABLE `spree_product_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_product_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products`
--

DROP TABLE IF EXISTS `spree_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `available_on` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `count_on_hand` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `on_demand` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_spree_products_on_available_on` (`available_on`),
  KEY `index_spree_products_on_deleted_at` (`deleted_at`),
  KEY `index_spree_products_on_name` (`name`),
  KEY `index_spree_products_on_permalink` (`permalink`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products`
--

LOCK TABLES `spree_products` WRITE;
/*!40000 ALTER TABLE `spree_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products_promotion_rules`
--

DROP TABLE IF EXISTS `spree_products_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products_promotion_rules` (
  `product_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_products_promotion_rules_on_product_id` (`product_id`),
  KEY `index_products_promotion_rules_on_promotion_rule_id` (`promotion_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products_promotion_rules`
--

LOCK TABLES `spree_products_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_products_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_products_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products_taxons`
--

DROP TABLE IF EXISTS `spree_products_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products_taxons` (
  `product_id` int(11) DEFAULT NULL,
  `taxon_id` int(11) DEFAULT NULL,
  KEY `index_spree_products_taxons_on_product_id` (`product_id`),
  KEY `index_spree_products_taxons_on_taxon_id` (`taxon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products_taxons`
--

LOCK TABLES `spree_products_taxons` WRITE;
/*!40000 ALTER TABLE `spree_products_taxons` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_products_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_action_line_items`
--

DROP TABLE IF EXISTS `spree_promotion_action_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_action_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_action_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_action_line_items`
--

LOCK TABLES `spree_promotion_action_line_items` WRITE;
/*!40000 ALTER TABLE `spree_promotion_action_line_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_action_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_actions`
--

DROP TABLE IF EXISTS `spree_promotion_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activator_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_actions`
--

LOCK TABLES `spree_promotion_actions` WRITE;
/*!40000 ALTER TABLE `spree_promotion_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rules`
--

DROP TABLE IF EXISTS `spree_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activator_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_group_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_promotion_rules_on_product_group_id` (`product_group_id`),
  KEY `index_promotion_rules_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rules`
--

LOCK TABLES `spree_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rules_users`
--

DROP TABLE IF EXISTS `spree_promotion_rules_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rules_users` (
  `user_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_promotion_rules_users_on_promotion_rule_id` (`promotion_rule_id`),
  KEY `index_promotion_rules_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rules_users`
--

LOCK TABLES `spree_promotion_rules_users` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rules_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rules_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_properties`
--

DROP TABLE IF EXISTS `spree_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `presentation` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_properties`
--

LOCK TABLES `spree_properties` WRITE;
/*!40000 ALTER TABLE `spree_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_properties_prototypes`
--

DROP TABLE IF EXISTS `spree_properties_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_properties_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_properties_prototypes`
--

LOCK TABLES `spree_properties_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_properties_prototypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_properties_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_prototypes`
--

DROP TABLE IF EXISTS `spree_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_prototypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_prototypes`
--

LOCK TABLES `spree_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_prototypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_return_authorizations`
--

DROP TABLE IF EXISTS `spree_return_authorizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_return_authorizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `reason` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_return_authorizations`
--

LOCK TABLES `spree_return_authorizations` WRITE;
/*!40000 ALTER TABLE `spree_return_authorizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_return_authorizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_roles`
--

DROP TABLE IF EXISTS `spree_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=930089100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_roles`
--

LOCK TABLES `spree_roles` WRITE;
/*!40000 ALTER TABLE `spree_roles` DISABLE KEYS */;
INSERT INTO `spree_roles` VALUES (770229923,'user'),(930089099,'admin');
/*!40000 ALTER TABLE `spree_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_roles_users`
--

DROP TABLE IF EXISTS `spree_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_roles_users` (
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `index_spree_roles_users_on_role_id` (`role_id`),
  KEY `index_spree_roles_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_roles_users`
--

LOCK TABLES `spree_roles_users` WRITE;
/*!40000 ALTER TABLE `spree_roles_users` DISABLE KEYS */;
INSERT INTO `spree_roles_users` VALUES (930089099,1),(930089099,1);
/*!40000 ALTER TABLE `spree_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipments`
--

DROP TABLE IF EXISTS `spree_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracking` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cost` decimal(8,2) DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `shipping_method_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shipments_on_number` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipments`
--

LOCK TABLES `spree_shipments` WRITE;
/*!40000 ALTER TABLE `spree_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_categories`
--

DROP TABLE IF EXISTS `spree_shipping_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_categories`
--

LOCK TABLES `spree_shipping_categories` WRITE;
/*!40000 ALTER TABLE `spree_shipping_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_shipping_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_methods`
--

DROP TABLE IF EXISTS `spree_shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `display_on` varchar(255) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `match_none` tinyint(1) DEFAULT NULL,
  `match_all` tinyint(1) DEFAULT NULL,
  `match_one` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_methods`
--

LOCK TABLES `spree_shipping_methods` WRITE;
/*!40000 ALTER TABLE `spree_shipping_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_skrill_transactions`
--

DROP TABLE IF EXISTS `spree_skrill_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_skrill_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_skrill_transactions`
--

LOCK TABLES `spree_skrill_transactions` WRITE;
/*!40000 ALTER TABLE `spree_skrill_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_skrill_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_state_changes`
--

DROP TABLE IF EXISTS `spree_state_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_state_changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `previous_state` varchar(255) DEFAULT NULL,
  `stateful_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `stateful_type` varchar(255) DEFAULT NULL,
  `next_state` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_state_changes`
--

LOCK TABLES `spree_state_changes` WRITE;
/*!40000 ALTER TABLE `spree_state_changes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_state_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_states`
--

DROP TABLE IF EXISTS `spree_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `abbr` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1061493586 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_states`
--

LOCK TABLES `spree_states` WRITE;
/*!40000 ALTER TABLE `spree_states` DISABLE KEYS */;
INSERT INTO `spree_states` VALUES (6764998,'District of Columbia','DC',214),(17199670,'Utah','UT',214),(37199952,'Louisiana','LA',214),(41111624,'Virginia','VA',214),(51943165,'North Dakota','ND',214),(66390489,'Wyoming','WY',214),(69729944,'New Mexico','NM',214),(69870734,'Connecticut','CT',214),(91367981,'West Virginia','WV',214),(103680699,'Wisconsin','WI',214),(177087202,'North Carolina','NC',214),(179539703,'Nevada','NV',214),(199950338,'Hawaii','HI',214),(248548169,'Oklahoma','OK',214),(267271847,'Florida','FL',214),(276110813,'California','CA',214),(298914262,'Oregon','OR',214),(308473843,'Kentucky','KY',214),(385551075,'Massachusetts','MA',214),(403740659,'Alaska','AK',214),(414569975,'Washington','WA',214),(426832442,'New Hampshire','NH',214),(471470972,'Arkansas','AR',214),(471711976,'Pennsylvania','PA',214),(474001862,'Rhode Island','RI',214),(480368357,'Maryland','MD',214),(485193526,'Ohio','OH',214),(525212995,'Texas','TX',214),(532363768,'Mississippi','MS',214),(536031023,'Colorado','CO',214),(597434151,'South Carolina','SC',214),(615306087,'South Dakota','SD',214),(625629523,'Illinois','IL',214),(653576146,'Missouri','MO',214),(673350891,'Nebraska','NE',214),(721598219,'Delaware','DE',214),(726305632,'Tennessee','TN',214),(750950030,'New Jersey','NJ',214),(769938586,'Indiana','IN',214),(825306985,'Iowa','IA',214),(876916760,'Georgia','GA',214),(889445952,'New York','NY',214),(931624400,'Michigan','MI',214),(948208802,'Arizona','AZ',214),(969722173,'Kansas','KS',214),(982433740,'Idaho','ID',214),(989115415,'Vermont','VT',214),(999156632,'Montana','MT',214),(1032288924,'Minnesota','MN',214),(1055056709,'Maine','ME',214),(1061493585,'Alabama','AL',214);
/*!40000 ALTER TABLE `spree_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tax_categories`
--

DROP TABLE IF EXISTS `spree_tax_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tax_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tax_categories`
--

LOCK TABLES `spree_tax_categories` WRITE;
/*!40000 ALTER TABLE `spree_tax_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_tax_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tax_rates`
--

DROP TABLE IF EXISTS `spree_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tax_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(8,5) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `included_in_price` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `show_rate_in_label` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tax_rates`
--

LOCK TABLES `spree_tax_rates` WRITE;
/*!40000 ALTER TABLE `spree_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxonomies`
--

DROP TABLE IF EXISTS `spree_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxonomies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxonomies`
--

LOCK TABLES `spree_taxonomies` WRITE;
/*!40000 ALTER TABLE `spree_taxonomies` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxons`
--

DROP TABLE IF EXISTS `spree_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `taxonomy_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `icon_file_name` varchar(255) DEFAULT NULL,
  `icon_content_type` varchar(255) DEFAULT NULL,
  `icon_file_size` int(11) DEFAULT NULL,
  `icon_updated_at` datetime DEFAULT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taxons_on_parent_id` (`parent_id`),
  KEY `index_taxons_on_permalink` (`permalink`),
  KEY `index_taxons_on_taxonomy_id` (`taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxons`
--

LOCK TABLES `spree_taxons` WRITE;
/*!40000 ALTER TABLE `spree_taxons` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tokenized_permissions`
--

DROP TABLE IF EXISTS `spree_tokenized_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tokenized_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissable_id` int(11) DEFAULT NULL,
  `permissable_type` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tokenized_name_and_type` (`permissable_id`,`permissable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tokenized_permissions`
--

LOCK TABLES `spree_tokenized_permissions` WRITE;
/*!40000 ALTER TABLE `spree_tokenized_permissions` DISABLE KEYS */;
INSERT INTO `spree_tokenized_permissions` VALUES (1,1,'Spree::Order','7b1d31ec59d8ae86','2013-01-30 00:09:29','2013-01-30 00:09:29');
/*!40000 ALTER TABLE `spree_tokenized_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_trackers`
--

DROP TABLE IF EXISTS `spree_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment` varchar(255) DEFAULT NULL,
  `analytics_id` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_trackers`
--

LOCK TABLES `spree_trackers` WRITE;
/*!40000 ALTER TABLE `spree_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_users`
--

DROP TABLE IF EXISTS `spree_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrypted_password` varchar(128) DEFAULT NULL,
  `password_salt` varchar(128) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `persistence_token` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `perishable_token` varchar(255) DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `failed_attempts` int(11) NOT NULL DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `authentication_token` varchar(255) DEFAULT NULL,
  `unlock_token` varchar(255) DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `spree_api_key` varchar(48) DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_idx_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_users`
--

LOCK TABLES `spree_users` WRITE;
/*!40000 ALTER TABLE `spree_users` DISABLE KEYS */;
INSERT INTO `spree_users` VALUES (1,'f4fbd08267cc7c79de0c60f3d2296c7020f9309196f521fd4a1bbef2a0c20665d20af628b01671a53a9b30baeed5b31fe27c2cf0512e5eb266f4c9d35166fda0','xFPLNcMHyL9uuZTmzNqw','spree@example.com',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'spree@example.com',NULL,NULL,NULL,NULL,NULL,NULL,'2013-01-30 00:09:55','2013-01-30 00:09:55',NULL,NULL);
/*!40000 ALTER TABLE `spree_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_variants`
--

DROP TABLE IF EXISTS `spree_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_variants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) NOT NULL DEFAULT '',
  `weight` decimal(8,2) DEFAULT NULL,
  `height` decimal(8,2) DEFAULT NULL,
  `width` decimal(8,2) DEFAULT NULL,
  `depth` decimal(8,2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_master` tinyint(1) DEFAULT '0',
  `product_id` int(11) DEFAULT NULL,
  `count_on_hand` int(11) DEFAULT '0',
  `cost_price` decimal(8,2) DEFAULT NULL,
  `cost_currency` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `lock_version` int(11) DEFAULT '0',
  `on_demand` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_spree_variants_on_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_variants`
--

LOCK TABLES `spree_variants` WRITE;
/*!40000 ALTER TABLE `spree_variants` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_zone_members`
--

DROP TABLE IF EXISTS `spree_zone_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_zone_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zoneable_id` int(11) DEFAULT NULL,
  `zoneable_type` varchar(255) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1017582645 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_zone_members`
--

LOCK TABLES `spree_zone_members` WRITE;
/*!40000 ALTER TABLE `spree_zone_members` DISABLE KEYS */;
INSERT INTO `spree_zone_members` VALUES (4914820,13,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(5807739,96,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(35022990,188,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(91991191,163,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(120011419,52,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(120937060,117,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(195044517,214,'Spree::Country',2,'2009-06-04 17:22:41','2009-06-04 17:22:41'),(244414130,68,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(394938353,162,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(423866172,20,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(424792003,90,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(477297967,184,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(506358563,53,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(507251676,116,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(546142054,142,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(690576312,62,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(691747661,110,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(729140670,183,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(739772837,213,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(776249265,30,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(777453396,74,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(807406092,51,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(808610553,125,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(847027202,167,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(890329113,194,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(929017584,98,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(966149671,67,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),(1017582644,35,'Spree::Country',2,'2009-06-04 17:22:41','2009-06-04 17:22:41');
/*!40000 ALTER TABLE `spree_zone_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_zones`
--

DROP TABLE IF EXISTS `spree_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `default_tax` tinyint(1) DEFAULT '0',
  `zone_members_count` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_zones`
--

LOCK TABLES `spree_zones` WRITE;
/*!40000 ALTER TABLE `spree_zones` DISABLE KEYS */;
INSERT INTO `spree_zones` VALUES (1,'EU_VAT','Countries that make up the EU VAT zone.',0,0,'2009-06-04 17:22:26','2009-06-04 17:22:26'),(2,'North America','USA + Canada',0,0,'2009-06-04 17:22:41','2009-06-04 17:22:41');
/*!40000 ALTER TABLE `spree_zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-01-30  0:10:14
