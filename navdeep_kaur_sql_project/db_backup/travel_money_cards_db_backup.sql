-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: travel_money_cards
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `card_balances`
--

DROP TABLE IF EXISTS `card_balances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card_balances` (
  `card_number` bigint unsigned NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `balance` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`card_number`,`currency_code`),
  KEY `fk_card_balance_currency_code` (`currency_code`),
  CONSTRAINT `fk_card_balance_card_number` FOREIGN KEY (`card_number`) REFERENCES `money_cards` (`card_number`),
  CONSTRAINT `fk_card_balance_currency_code` FOREIGN KEY (`currency_code`) REFERENCES `currency_codes` (`currency_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_balances`
--

LOCK TABLES `card_balances` WRITE;
/*!40000 ALTER TABLE `card_balances` DISABLE KEYS */;
INSERT INTO `card_balances` VALUES (1000000000,'EUR',172.00),(1000000000,'HUF',522.00),(1000000001,'HRK',1650.30),(1000000001,'TRY',85.00),(1000000002,'HUF',504.40),(1000000003,'EUR',250.70),(1000000003,'HUF',2091.70),(1000000003,'NZD',1589.00),(1000000004,'USD',729.40),(1000000005,'CNY',1650.30),(1000000005,'EUR',409.00),(1000000006,'CAD',444.40),(1000000007,'CZK',236.50),(1000000008,'MXN',1992.30),(1000000009,'JPY',247.30),(1000000009,'NZD',223.00),(1000000010,'AUD',132.00),(1000000010,'HKD',1650.30),(1000000011,'CAD',472.30),(1000000012,'AUD',144.50),(1000000012,'HKD',210.40),(1000000013,'AUD',131.50),(1000000013,'HKD',1650.30),(1000000014,'CNY',10.50),(1000000014,'EUR',504.50),(1000000015,'BRL',370.95),(1000000015,'DKK',96.50),(1000000016,'BRL',315.60),(1000000016,'DKK',346.50),(1000000017,'BRL',370.95),(1000000017,'DKK',444.50),(1000000018,'CNY',370.95),(1000000018,'EUR',305.50),(1000000019,'AUD',350.50),(1000000019,'HKD',2475.45),(1000000020,'MXN',2705.95),(1000000021,'HRK',2475.45),(1000000021,'TRY',85.50),(1000000022,'SEK',1184.65),(1000000022,'SGD',1650.30),(1000000023,'CZK',439.45),(1000000024,'SEK',1164.65),(1000000024,'SGD',825.15),(1000000025,'JPY',1650.30),(1000000025,'NZD',78.50),(1000000026,'JPY',210.40),(1000000026,'NZD',349.50),(1000000027,'MXN',241.50),(1000000028,'BRL',247.30),(1000000028,'DKK',401.50),(1000000029,'JPY',1650.30),(1000000029,'NZD',217.50),(1000000030,'HRK',210.40),(1000000030,'TRY',171.50),(1000000031,'AUD',233.50),(1000000031,'HKD',21.00),(1000000032,'SEK',374.00),(1000000032,'SGD',0.00),(1000000033,'JPY',210.40),(1000000033,'NZD',288.50),(1000000034,'CNY',247.30),(1000000034,'EUR',467.50),(1000000035,'USD',302.90),(1000000036,'JPY',247.30),(1000000036,'NZD',207.50),(1000000037,'AUD',343.50),(1000000037,'HKD',247.30),(1000000038,'SEK',239.70),(1000000038,'SGD',105.20),(1000000039,'CZK',142.50),(1000000040,'HRK',247.30),(1000000040,'TRY',409.50),(1000000041,'CNY',210.40),(1000000041,'EUR',88.50),(1000000042,'MXN',376.80),(1000000043,'BRL',210.40),(1000000043,'DKK',104.50),(1000000044,'CNY',210.40),(1000000044,'EUR',459.50),(1000000045,'MXN',365.80),(1000000046,'USD',626.80),(1000000047,'CAD',1908.80),(1000000048,'JPY',1650.30),(1000000048,'NZD',313.50),(1000000049,'MXN',665.80),(1000000050,'HRK',210.40),(1000000050,'TRY',427.50),(1000000051,'AUD',351.50),(1000000051,'HKD',210.40),(1000000052,'CAD',391.00),(1000000053,'BRL',247.30),(1000000053,'DKK',470.50),(1000000054,'HRK',21.00),(1000000054,'TRY',196.50),(1000000055,'CZK',2045.80),(1000000056,'HRK',210.40),(1000000056,'TRY',199.50),(1000000057,'AUD',96.50),(1000000057,'HKD',210.40),(1000000058,'JPY',247.30),(1000000058,'NZD',386.50),(1000000059,'HRK',247.30),(1000000059,'TRY',388.50),(1000000060,'BRL',1650.30),(1000000060,'DKK',319.50),(1000000061,'JPY',1650.30),(1000000061,'NZD',347.50),(1000000062,'CZK',1775.80),(1000000063,'JPY',10.50),(1000000063,'NZD',248.50),(1000000064,'USD',460.00),(1000000065,'CZK',200.00),(1000000066,'AUD',141.50),(1000000066,'HKD',21.00),(1000000067,'AUD',278.50),(1000000067,'HKD',210.40),(1000000068,'HUF',98.50),(1000000069,'MXN',280.50),(1000000070,'JPY',247.30),(1000000070,'NZD',401.50),(1000000071,'SEK',1286.65),(1000000071,'SGD',825.15),(1000000072,'CAD',705.80),(1000000073,'MXN',291.00),(1000000074,'JPY',21.00),(1000000074,'NZD',449.50),(1000000075,'HRK',210.40),(1000000075,'TRY',313.50),(1000000076,'JPY',21.00),(1000000076,'NZD',499.50),(1000000077,'CZK',324.00),(1000000078,'CAD',270.90),(1000000079,'HUF',1878.80),(1000000080,'HUF',573.90),(1000000081,'CAD',362.80),(1000000082,'MXN',2116.80),(1000000083,'CAD',388.80),(1000000084,'CAD',1818.80),(1000000085,'CZK',2000.80),(1000000086,'CAD',473.80),(1000000087,'AUD',364.50),(1000000087,'HKD',210.40),(1000000088,'CZK',646.80),(1000000089,'SEK',0.00),(1000000089,'SGD',0.00),(1000000090,'SEK',297.15),(1000000090,'SGD',123.65),(1000000091,'HRK',10.50),(1000000091,'TRY',281.50),(1000000092,'SEK',500.00),(1000000092,'SGD',10.50),(1000000093,'AUD',221.50),(1000000093,'HKD',210.40),(1000000094,'HUF',396.50),(1000000095,'CZK',446.50),(1000000096,'HRK',21.00),(1000000096,'TRY',310.50),(1000000097,'HRK',247.30),(1000000097,'TRY',300.50),(1000000098,'MXN',705.80),(1000000099,'BRL',210.40),(1000000099,'DKK',109.50),(1000000100,'JPY',210.40),(1000000100,'NZD',334.50),(1000000101,'USD',309.90),(1000000102,'CNY',210.40),(1000000102,'EUR',301.50),(1000000103,'HUF',485.80),(1000000104,'AUD',488.50),(1000000104,'HKD',1650.30),(1000000105,'BRL',247.30),(1000000105,'DKK',415.50),(1000000106,'HUF',132.00),(1000000107,'USD',389.50),(1000000108,'USD',683.80),(1000000109,'CZK',2061.80),(1000000110,'AUD',246.50),(1000000110,'HKD',247.30),(1000000111,'SEK',0.00),(1000000111,'SGD',0.00),(1000000112,'USD',121.50),(1000000113,'CZK',295.90),(1000000114,'USD',730.80),(1000000115,'HUF',440.80),(1000000116,'JPY',21.00),(1000000116,'NZD',192.50),(1000000117,'SEK',987.65),(1000000117,'SGD',825.15),(1000000118,'CNY',210.40),(1000000118,'EUR',381.50),(1000000119,'CAD',371.90),(1000000120,'CAD',652.80),(1000000121,'AUD',124.50),(1000000121,'HKD',10.50),(1000000122,'JPY',247.30),(1000000122,'NZD',181.50),(1000000123,'AUD',244.50),(1000000123,'HKD',21.00),(1000000124,'SEK',441.70),(1000000124,'SGD',105.20),(1000000125,'CZK',480.00),(1000000126,'CNY',210.40),(1000000126,'EUR',298.50),(1000000127,'SEK',1154.65),(1000000127,'SGD',825.15),(1000000128,'HRK',10.50),(1000000128,'TRY',419.50),(1000000129,'SEK',1136.65),(1000000129,'SGD',825.15),(1000000130,'BRL',1650.30),(1000000130,'DKK',318.50),(1000000131,'USD',447.00),(1000000132,'SEK',429.00),(1000000132,'SGD',10.50),(1000000133,'USD',456.90),(1000000134,'CAD',362.90),(1000000135,'SEK',549.15),(1000000135,'SGD',123.65),(1000000136,'MXN',646.90),(1000000137,'AUD',465.50),(1000000137,'HKD',10.50),(1000000138,'HRK',10.50),(1000000138,'TRY',475.50),(1000000139,'CZK',574.80),(1000000140,'SEK',333.00),(1000000140,'SGD',10.50),(1000000141,'HUF',601.90),(1000000142,'MXN',322.00),(1000000143,'HUF',202.00),(1000000144,'HRK',210.40),(1000000144,'TRY',156.50),(1000000145,'JPY',247.30),(1000000145,'NZD',128.50),(1000000146,'CAD',255.50),(1000000147,'USD',109.00),(1000000148,'USD',404.90),(1000000149,'SEK',402.70),(1000000149,'SGD',105.20),(1000000150,'USD',487.80),(1000000151,'CAD',2126.80),(1000000152,'CAD',613.80),(1000000153,'JPY',21.00),(1000000153,'NZD',105.50),(1000000154,'HUF',680.90),(1000000155,'BRL',247.30),(1000000155,'DKK',110.50),(1000000156,'AUD',432.50),(1000000156,'HKD',247.30),(1000000157,'JPY',247.30),(1000000157,'NZD',430.50),(1000000158,'JPY',21.00),(1000000158,'NZD',495.50),(1000000159,'SEK',128.00),(1000000159,'SGD',0.00),(1000000160,'JPY',247.30),(1000000160,'NZD',92.50),(1000000161,'USD',458.90),(1000000162,'USD',608.90),(1000000163,'MXN',475.00),(1000000164,'CZK',594.90),(1000000165,'USD',498.50),(1000000166,'JPY',210.40),(1000000166,'NZD',257.50),(1000000167,'AUD',384.50),(1000000167,'HKD',21.00),(1000000168,'CAD',2085.80),(1000000169,'CZK',315.00),(1000000170,'MXN',510.90),(1000000171,'BRL',247.30),(1000000171,'DKK',449.50),(1000000172,'HRK',1650.30),(1000000172,'TRY',498.50),(1000000173,'CNY',1650.30),(1000000173,'EUR',474.50),(1000000174,'USD',2013.80),(1000000175,'AUD',310.50),(1000000175,'HKD',1650.30),(1000000176,'HUF',516.90),(1000000177,'MXN',1947.80),(1000000178,'CAD',317.80),(1000000179,'AUD',505.50),(1000000179,'HKD',1650.30),(1000000180,'CZK',553.90),(1000000181,'AUD',118.50),(1000000181,'HKD',1650.30),(1000000182,'HUF',124.50),(1000000183,'CNY',10.50),(1000000183,'EUR',424.50),(1000000184,'HRK',1650.30),(1000000184,'TRY',346.50),(1000000185,'BRL',1650.30),(1000000185,'DKK',320.50),(1000000186,'AUD',428.50),(1000000186,'HKD',1650.30),(1000000187,'AUD',311.50),(1000000187,'HKD',1650.30),(1000000188,'AUD',264.50),(1000000188,'HKD',210.40),(1000000189,'JPY',210.40),(1000000189,'NZD',399.50),(1000000190,'JPY',247.30),(1000000190,'NZD',73.50),(1000000191,'USD',2069.80),(1000000192,'SEK',357.70),(1000000192,'SGD',105.20),(1000000193,'CNY',1650.30),(1000000193,'EUR',493.50),(1000000194,'MXN',551.90),(1000000195,'MXN',1845.80),(1000000196,'CAD',2121.80),(1000000197,'HUF',606.80),(1000000198,'BRL',210.40),(1000000198,'DKK',310.50),(1000000199,'CZK',2127.80),(1000000200,'HRK',210.40),(1000000200,'TRY',296.50),(1000000201,'AUD',70.75),(1000000201,'EUR',152.75),(1000000202,'HUF',50.50);
/*!40000 ALTER TABLE `card_balances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `country_id` int NOT NULL AUTO_INCREMENT,
  `country_name` varchar(50) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan'),(2,'Albania'),(3,'Algeria'),(4,'Andorra'),(5,'Angola'),(6,'Antigua and Barbuda'),(7,'Argentina'),(8,'Armenia'),(9,'Australia'),(10,'Austria'),(11,'Azerbaijan'),(12,'The Bahamas'),(13,'Bahrain'),(14,'Bangladesh'),(15,'Barbados'),(16,'Belarus'),(17,'Belgium'),(18,'Belize'),(19,'Benin'),(20,'Bhutan'),(21,'Bolivia'),(22,'Bosnia and Herzegovina'),(23,'Botswana'),(24,'Brazil'),(25,'Brunei'),(26,'Bulgaria'),(27,'Burkina Faso'),(28,'Burundi'),(29,'Cambodia'),(30,'Cameroon'),(31,'Canada'),(32,'Cape Verde'),(33,'Central African Republic'),(34,'Chad'),(35,'Chile'),(36,'China'),(37,'Colombia'),(38,'Comoros'),(39,'Congo, Republic of the'),(40,'Congo, Democratic Republic of the'),(41,'Costa Rica'),(42,'Cote d\'Ivoire'),(43,'Croatia'),(44,'Cuba'),(45,'Cyprus'),(46,'Czech Republic'),(47,'Denmark'),(48,'Djibouti'),(49,'Dominica'),(50,'Dominican Republic'),(51,'East Timor (Timor-Leste)'),(52,'Ecuador'),(53,'Egypt'),(54,'El Salvador'),(55,'Equatorial Guinea'),(56,'Eritrea'),(57,'Estonia'),(58,'Ethiopia'),(59,'Fiji'),(60,'Finland'),(61,'France'),(62,'Gabon'),(63,'The Gambia'),(64,'Georgia'),(65,'Germany'),(66,'Ghana'),(67,'Greece'),(68,'Grenada'),(69,'Guatemala'),(70,'Guinea'),(71,'Guinea-Bissau'),(72,'Guyana'),(73,'Haiti'),(74,'Honduras'),(75,'Hungary'),(76,'Iceland'),(77,'India'),(78,'Indonesia'),(79,'Iran'),(80,'Iraq'),(81,'Ireland'),(82,'Israel'),(83,'Italy'),(84,'Jamaica'),(85,'Japan'),(86,'Jordan'),(87,'Kazakhstan'),(88,'Kenya'),(89,'Kiribati'),(90,'Korea, North'),(91,'Korea, South'),(92,'Kosovo'),(93,'Kuwait'),(94,'Kyrgyzstan'),(95,'Laos'),(96,'Latvia'),(97,'Lebanon'),(98,'Lesotho'),(99,'Liberia'),(100,'Libya'),(101,'Liechtenstein'),(102,'Lithuania'),(103,'Luxembourg'),(104,'Macedonia'),(105,'Madagascar'),(106,'Malawi'),(107,'Malaysia'),(108,'Maldives'),(109,'Mali'),(110,'Malta'),(111,'Marshall Islands'),(112,'Mauritania'),(113,'Mauritius'),(114,'Mexico'),(115,'Micronesia, Federated States of'),(116,'Moldova'),(117,'Monaco'),(118,'Mongolia'),(119,'Montenegro'),(120,'Morocco'),(121,'Mozambique'),(122,'Myanmar (Burma)'),(123,'Namibia'),(124,'Nauru'),(125,'Nepal'),(126,'Netherlands'),(127,'New Zealand'),(128,'Nicaragua'),(129,'Niger'),(130,'Nigeria'),(131,'Norway'),(132,'Oman'),(133,'Pakistan'),(134,'Palau'),(135,'Panama'),(136,'Papua New Guinea'),(137,'Paraguay'),(138,'Peru'),(139,'Philippines'),(140,'Poland'),(141,'Portugal'),(142,'Qatar'),(143,'Romania'),(144,'Russia'),(145,'Rwanda'),(146,'Saint Kitts and Nevis'),(147,'Saint Lucia'),(148,'Saint Vincent and the Grenadines'),(149,'Samoa'),(150,'San Marino'),(151,'Sao Tome and Principe'),(152,'Saudi Arabia'),(153,'Senegal'),(154,'Serbia'),(155,'Seychelles'),(156,'Sierra Leone'),(157,'Singapore'),(158,'Slovakia'),(159,'Slovenia'),(160,'Solomon Islands'),(161,'Somalia'),(162,'South Africa'),(163,'South Sudan'),(164,'Spain'),(165,'Sri Lanka'),(166,'Sudan'),(167,'Suriname'),(168,'Swaziland'),(169,'Sweden'),(170,'Switzerland'),(171,'Syria'),(172,'Taiwan'),(173,'Tajikistan'),(174,'Tanzania'),(175,'Thailand'),(176,'Togo'),(177,'Tonga'),(178,'Trinidad and Tobago'),(179,'Tunisia'),(180,'Turkey'),(181,'Turkmenistan'),(182,'Tuvalu'),(183,'Uganda'),(184,'Ukraine'),(185,'United Arab Emirates'),(186,'United Kingdom'),(187,'United States of America'),(188,'Uruguay'),(189,'Uzbekistan'),(190,'Vanuatu'),(191,'Vatican City (Holy See)'),(192,'Venezuela'),(193,'Vietnam'),(194,'Yemen'),(195,'Zambia'),(196,'Zimbabwe');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency_codes`
--

DROP TABLE IF EXISTS `currency_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency_codes` (
  `currency_code` varchar(3) NOT NULL,
  `currency_name` varchar(50) NOT NULL,
  PRIMARY KEY (`currency_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_codes`
--

LOCK TABLES `currency_codes` WRITE;
/*!40000 ALTER TABLE `currency_codes` DISABLE KEYS */;
INSERT INTO `currency_codes` VALUES ('AUD','Australian Dollar'),('BGN','Bulgarian Levs'),('BRL','Brazilian Reals'),('CAD','Canadian Dollar'),('CHF','Swiss Francs'),('CNY','Chinese Yuan Renminbi'),('CZK','Czech Koruna'),('DKK','Danish Kroner'),('EUR','Euros'),('GBP','Great Britain Pounds'),('HKD','Hong Kong Dollar'),('HRK','Croatian Kunas'),('HUF','Hungarian Florins'),('IDR','Indonesian Rupiah'),('ILS','Israeli Shekel'),('INR','Indian Rupee'),('JPY','Japanese Yen'),('KRW','Korean Won'),('MXN','Mexican Pesos'),('MYR','Malaysian Ringgits'),('NOK','Norwegian Kroner'),('NZD','New Zealand Dollar'),('PHP','Philippine Pesos'),('PLN','Polish Zloty'),('RON','Romanian Leus'),('RUB','Russian Rubles'),('SEK','Swedish Krona'),('SGD','Singapore Dollar'),('THB','Thai Baht'),('TRY','Turkish Lira'),('USD','US Dollar'),('ZAR','South African Rand');
/*!40000 ALTER TABLE `currency_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_addresses`
--

DROP TABLE IF EXISTS `customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_addresses` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `address_line1` varchar(50) NOT NULL,
  `address_line2` varchar(50) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int NOT NULL,
  PRIMARY KEY (`address_id`),
  UNIQUE KEY `uc_customer_address_customer_id` (`customer_id`),
  KEY `fk_customer_address_country_id` (`country_id`),
  CONSTRAINT `fk_customer_address_country_id` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`),
  CONSTRAINT `fk_customer_address_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_addresses`
--

LOCK TABLES `customer_addresses` WRITE;
/*!40000 ALTER TABLE `customer_addresses` DISABLE KEYS */;
INSERT INTO `customer_addresses` VALUES (1,1,'4 Maple Tree Lane',NULL,'Sutton','SN99 0AA',186),(2,2,'600-3307 Turpis. Rd.',NULL,'Tillicoultry','SQ3 4XS',186),(3,3,'Ap #271-913 Ut Road',NULL,'Bo\'ness','KJ3F 0YU',186),(4,4,'Ap #373-2091 Lobortis. Rd.','Perthshire','Wick','P4V 6IL',186),(5,5,'2082 Phasellus Road','Nairnshire','Lochgilphead','ST7X 3TA',186),(6,6,'Ap #954-7145 Ut Ave','Brecknockshire','New Galloway','RZ2U 4EU',186),(7,7,'4705 Nunc St.',NULL,'Ruthin','X2 7HS',186),(8,8,'940-9060 Tincidunt Rd.',NULL,'Whittlesey','NK98 5VO',186),(9,9,'Ap #827-2090 Erat Av.','Wiltshire','Builth Wells','Q6B 6RH',186),(10,10,'285-6377 Vulputate Avenue',NULL,'King\'s Lynn','E67 4HS',186),(11,11,'Ap #214-2337 Donec Avenue',NULL,'Dingwall','B4 4CI',186),(12,12,'5846 Eu Road','Buteshire','Newtonmore','D3 0YE',186),(13,13,'Ap #302-3813 Quam. Avenue',NULL,'Tregaron','BD5T 6LJ',186),(14,14,'P.O. Box 856, 4465 Magna. Street','Kinross-shire','Tain','TM2U 6RK',186),(15,15,'267-788 Integer St.',NULL,'Langholm','D9U 1OY',186),(16,16,'Ap #441-2828 Nec St.','Buteshire','Abergavenny','RI6K 4EH',186),(17,17,'963-1918 Tortor Street','Cornwall','Welshpool','NT5 5OP',186),(18,18,'932-289 Vestibulum St.','Rutland','Newcastle-upon-Tyne','OC21 7MM',186),(19,19,'P.O. Box 990 2241 Lorem Rd. ',NULL,'Canterbury','B80 3WL',186),(20,20,'298-8324 Nec Av.',NULL,'Glastonbury','BB91 8PD',186),(21,21,'878 Cras St.','Berkshire','Hinckley','F2R 2RC',186),(22,22,'6877 Habitant Road',NULL,'Lanark','H1I 3QF',186),(23,23,'8169 Felis Ave','Cornwall','Whitchurch','N5E 4XY',186),(24,24,'P.O. Box 210 1149 Phasellus Rd. ','Kincardineshire','Caerphilly','TT6W 7PR',186),(25,25,'4387 Dis St.','Monmouthshire','Kilsyth','A9P 8BH',186),(26,26,'763-3384 Odio. St.','West Lothian','Balfour','R6W 5RV',186),(27,27,'P.O. Box 258 5662 Urna Road ','Sussex','Wick','HR19 3HP',186),(28,28,'Ap #428-6647 Sed St. ','Hampshire','Helensburgh','AW03 4NM',186),(29,29,'P.O. Box 780 6960 Praesent Avenue ','Shetland','Llanwrtwd Wells','WB17 1RD',186),(30,30,'Ap #740-8404 Magna. St.',NULL,'Haverfordwest','EH9P 7WT',186),(31,31,'P.O. Box 365 8524 Integer Ave ',NULL,'Bolton','D3Q 4EV',186),(32,32,'814-5893 Gravida St.','Argyllshire','Dunoon','EA5 3YE',186),(33,33,'802-654 Parturient Street',NULL,'Llangefni','C29 9RX',186),(34,34,'955-4432 Sed St. ','Cornwall','Abingdon','X3 7LC',186),(35,35,'Ap #710-6419 Nonummy St.','Perthshire','Worthing','CG4B 6YV',186),(36,36,'176-2669 Auctor Rd. ','Midlothian','Fraserburgh','E3 2CY',186),(37,37,'Ap #290-9909 Mi Rd.','Buteshire','Haddington','D40 6QO',186),(38,38,'Ap #524-4485 Risus. St.',NULL,'Fishguard','IF7 4HK',186),(39,39,'Ap #701-9367 Sed Road ','Derbyshire','Ayr','W9H 1QJ',186),(40,40,'Ap #134-8146 A Av.','Caithness','Abingdon','ZQ1M 4RG',186),(41,41,'P.O. Box 805 8163 Mus. Rd. ',NULL,'Rochester','YC5N 3PM',186),(42,42,'P.O. Box 793 5183 Eget St. ','Anglesey','Brecon','KA8P 7WS',186),(43,43,'723-3096 Orci Avenue',NULL,'St. Asaph','SL1 6BX',186),(44,44,'3562 Rhoncus Ave','Flintshire','Sherborne','FQ6C 7KV',186),(45,45,'Ap #385-9979 Donec Rd.','Cheshire','Brixton','G88 6XC',186),(46,46,'P.O. Box 906 7454 Vestibulum. Road ','Kent','Ledbury','GF62 1GJ',186),(47,47,'P.O. Box 872 3618 Molestie Ave ','Kinross-shire','Motherwell','U8 1UV',186),(48,48,'P.O. Box 388 6743 Scelerisque Street ',NULL,'Woking','SQ9S 6ZL',186),(49,49,'Ap #317-1798 Dignissim. St.',NULL,'Darlington','AA4E 7YH',186),(50,50,'1803 Enim Ave','Devon','Great Yarmouth','F36 3LU',186),(51,51,'2630 Ligula St.','West Lothian','Dingwall','O4C 3VM',186),(52,52,'Ap #763-9689 Ornare Avenue','Surrey','Guildford','VH3 2EQ',186),(53,53,'956-7213 Integer Street',NULL,'Folkestone','I28 6GO',186),(54,54,'Ap #620-2256 Ultrices Ave',NULL,'Bolton','S7 7FB',186),(55,55,'585-2993 Aliquam Ave','Dorset','Windermere','DQ9Y 2WT',186),(56,56,'Ap #833-7519 Facilisis Avenue','Cambridgeshire','Tongue','QN7 1TM',186),(57,57,'P.O. Box 9459020 Sodales Road ','Sutherland','Monmouth','F59 4GR',186),(58,58,'P.O. Box 431 9309 Mollis Rd. ','Clackmannanshire','Aylesbury','B62 8HP',186),(59,59,'Ap #786-8442 Eu Street','Montgomeryshire','Perth','KC9J 6ET',186),(60,60,'P.O. Box 571 6885 Tempus St. ',NULL,'Alexandria','HW26 9XX',186),(61,61,'P.O. Box 377 6914 Imperdiet Avenue ','Morayshire','Milnathort','YP5A 1FL',186),(62,62,'P.O. Box 797 715 Phasellus St. ','Orkney','Truro','WH6O 0YV',186),(63,63,'532-2156 A Road ','Surrey','Northallerton','QS1Q 8WG',186),(64,64,'Ap #486-8347 Magna Street ','Morayshire','Stockport','TU5P 6ZQ',186),(65,65,'P.O. Box 237 7874 Dictum St. ',NULL,'Rhyl','IE4 8CR',186),(66,66,'482-8062 Augue Road','East Lothian','Lairg','YH7 4XW',186),(67,67,'422-6095 Laoreet Rd.','Caithness','Tillicoultry','U6H 6QB',186),(68,68,'741-7824 Nibh Ave','Selkirkshire','Retford','RJ51 2BR',186),(69,69,'9035 Ipsum Ave','Anglesey','Kelso','XF1B 4KJ',186),(70,70,'9781 Eu St.','Dunbartonshire','Holyhead','E7 4HI',186),(71,71,'Ap #948-7234 Taciti Ave','West Lothian','St. Asaph','F4 4PQ',186),(72,72,'Ap #315-8535 Nonummy. Ave',NULL,'Holywell','QA74 8KE',186),(73,73,'275-1228 Velit Ave','Anglesey','Halesowen','HW43 4WT',186),(74,74,'639-7212 Nullam Ave','Ross-shire','Auldearn','E4 6CO',186),(75,75,'Ap #962-4483 Hendrerit Road','Caithness','Uppingham. Cottesmore','S2 8IM',186),(76,76,'P.O. Box 295 3457 Molestie Road ',NULL,'Chester','U2L 8LL',186),(77,77,'631-318 Mollis. Rd.',NULL,'Tewkesbury','YN48 2ZI',186),(78,78,'8511 Cursus Road','Midlothian','St. Clears','Q6 2RF',186),(79,79,'940-806 Vel Avenue',NULL,'Wick','K47 8UJ',186),(80,80,'Ap #439-2242 Vitae Street',NULL,'Workington','Z1 4HN',186),(81,81,'P.O. Box 836 7459 Enim Rd. ','Selkirkshire','Salisbury','I10 7CF',186),(82,82,'Ap #319-6910 Et Ave ','Durham','Kircudbright','FR6I 4GT',186),(83,83,'495-2418 In St.',NULL,'Harlech','HI3 3NH',186),(84,84,'Ap #321-8843 Nullam St.','Ayrshire','Wrexham','VX4M 7LH',186),(85,85,'Ap #992-2766 Condimentum Ave',NULL,'Bungay','GB3 1YB',186),(86,86,'Ap #455-5281 Lorem Rd.','Brecknockshire','Stonehaven','F1Q 3GX',186),(87,87,'272-2757 Nunc Ave','Banffshire','Saltcoats','N11 0CS',186),(88,88,'9298 Orci. St.',NULL,'Machynlleth','Y3 4XP',186),(89,89,'P.O. Box 498 1258 Molestie Street ','Oxfordshire','Denbigh','AV1X 6NY',186),(90,90,'Ap #336-4686 Urna Avenue',NULL,'Tongue','Q7N 7GU',186),(91,91,'Ap #340-402 In Rd.',NULL,'Ramsey','N7 0BA',186),(92,92,'Ap #582-4475 Ut Street','Anglesey','Huntingdon','U81 6ZN',186),(93,93,'Ap #542-7394 Augue Ave',NULL,'Brora','VL5L 6RY',186),(94,94,'9253 Lobortis Street',NULL,'Linton','L1 3SK',186),(95,95,'P.O. Box 664 6188 Est. St. ','Argyllshire','Matlock','H4 5DN',186),(96,96,'5861 Risus Street','Inverness-shire','Ramsey','HL4 0CT',186),(97,97,'2743 Dolor. Street','Nairnshire','Keswick','WQ25 8MP',186),(98,98,'Ap #870-9391 Donec Rd.','Ross-shire','Abergavenny','F2 9MX',186),(99,99,'Ap #902-6362 Id Rd.','Orkney','Lossiemouth','TT1P 5LM',186),(100,100,'Ap #129-425 Orci. Street',NULL,'Newton Abbot','E7U 4AQ',186),(101,101,'275-7138 Eu Rd.','Dumfriesshire','Salisbury','KE1 8ER',186),(102,102,'165-4802 Sollicitudin Rd.','Leicestershire','Kirkcaldy','T7F 2TY',186),(103,103,'788-7072 Fermentum St.','Ayrshire','Largs','F4 2AI',186),(104,104,'5108 Mi. St.',NULL,'Salisbury','P1 8DM',186),(105,105,'385-5478 Cursus Rd.','Argyllshire','Basingstoke','H4U 8SR',186),(106,106,'Ap #296-1049 Gravida Road','Warwickshire','Luton','O4S 0GO',186),(107,107,'Ap #722-3352 Dui Road','Morayshire','Carnoustie','O99 3OT',186),(108,108,'Ap #121-9427 Risus. St.','Selkirkshire','Ross-on-Wye','WX8 6ON',186),(109,109,'346-1380 Urna Avenue ','Somerset','Haddington','YT6N 3RU',186),(110,110,'P.O. Box 135 9932 At Rd. ','Devon','Melton Mowbray','HV11 5CI',186),(111,111,'Ap #570-3062 Aliquet Rd.','Banffshire','Cannock','VJ25 5UQ',186),(112,112,'622-5054 Eget Rd.','Selkirkshire','Tredegar','QL4W 3VN',186),(113,113,'914-457 Ut Rd.','Brecknockshire','Shaftesbury','NU7 2UF',186),(114,114,'P.O. Box 203 8928 Purus Rd. ',NULL,'Kelso','ET3B 8GQ',186),(115,115,'537-8793 Magna Rd.','Berkshire','Malvern','DD15 5SX',186),(116,116,'P.O. Box 928 9982 Nulla Road ','Dorset','Callander','NY99 1PU',186),(117,117,'7030 Fermentum Rd.','Angus','Exeter','RL99 8PH',186),(118,118,'P.O. Box 671 1992 Lorem Road ','Clackmannanshire','Llandovery','M33 4SU',186),(119,119,'Ap #891-9749 Magna. St.','Norfolk','Coupar Angus','LJ1Z 6SQ',186),(120,120,'868-7657 Enim. Av.','Carmarthenshire','Broxburn','T87 0OP',186),(121,121,'P.O. Box 727 5149 Nonummy St. ','Inverness-shire','Tranent','I1 3XS',186),(122,122,'Ap #438-9734 Imperdiet Ave','Somerset','New Galloway','HC78 7EE',186),(123,123,'8327 Rhoncus. Ave','Selkirkshire','Glenrothes','N78 8VH',186),(124,124,'Ap #270-2920 Dolor. St.',NULL,'Kilmarnock','O4 8SF',186),(125,125,'5304 Ridiculus Street','Cheshire','Carmarthen','GK4 8QN',186),(126,126,'Ap #908-5480 Taciti Rd.','Lancashire','Haddington','UT9 4SN',186),(127,127,'715-3939 Hymenaeos. Street','Flintshire','Southwell','Y9G 5TX',186),(128,128,'Ap #579-8076 Quam Road',NULL,'Bridgwater','M61 2BL',186),(129,129,'Ap #196-7129 Magna. St.','Derbyshire','Edinburgh','HM82 5NV',186),(130,130,'Ap #420-5773 Aliquam Rd.','Denbighshire','Dumfries','N51 8AI',186),(131,131,'Ap #649-1073 Nibh Ave',NULL,'Kirkcaldy','O4P 6XA',186),(132,132,'8814 Sollicitudin Avenue',NULL,'Kircudbright','F9 4PR',186),(133,133,'Ap #408-8851 In Street','Inverness-shire','Brora','RI3 2YI',186),(134,134,'Ap #288-6816 Sit Road','Essex','Stourbridge','X0H 5JT',186),(135,135,'777-7088 Cras Street','Rutland','Balfour','GO1W 2GE',186),(136,136,'Ap #666-9824 Lorem Av.','Surrey','Stranraer','TO9 4VF',186),(137,137,'Ap #969-758 Nec Road','Morayshire','Shrewsbury','RE9I 3RH',186),(138,138,'785-7519 Ac Avenue','Montgomeryshire','Bromyard','E2J 9YX',186),(139,139,'Ap #199-2439 Nulla. Rd.',NULL,'Market Drayton','RK14 3FQ',186),(140,140,'Ap #714-8029 Blandit Street',NULL,'Talgarth','K27 1VM',186),(141,141,'226-955 Eu Avenue','Midlothian','Sanquhar','JC2T 2WY',186),(142,142,'704-5500 Facilisis St.',NULL,'St. Austell','S5M 6MH',186),(143,143,'Ap #405-8408 Ut Road ',NULL,'Kettering','F6 5QU',186),(144,144,'418-3364 At St.','Berwickshire','Margate','XP1 9BI',186),(145,145,'Ap #598-1095 Vulputate Rd. ','Oxfordshire','Coupar Angus','F2 3HT',186),(146,146,'262 Ac Road',NULL,'Winchester','FE8R 1GK',186),(147,147,'Ap #406-6359 Metus Avenue',NULL,'Clydebank','MY6G 8TF',186),(148,148,'P.O. Box 996 7769 Etiam St. ','Berkshire','Crieff','O5 1LF',186),(149,149,'5925 Convallis Ave','Caithness','Hereford','LW3W 7CD',186),(150,150,'P.O. Box 987 5260 Diam Rd. ','Lancashire','Buckingham','GQ3 5VQ',186),(151,151,'162-9303 Vehicula Road',NULL,'Irvine','J2K 4PX',186),(152,152,'113-4408 Eu Road','Dunbartonshire','Tregaron','YP2F 6MQ',186),(153,153,'P.O. Box 529 2285 Curae Street ','Norfolk','Millport','ZS42 5AD',186),(154,154,'Ap #935-6376 Quis Avenue',NULL,'Newcastle-upon-Tyne','E56 6UX',186),(155,155,'P.O. Box 699 1522 Fames Avenue ','Cornwall','Carmarthen','A1U 4EP',186),(156,156,'370-8525 Sit Rd.','Rutland','Welshpool','DT8T 6UU',186),(157,157,'403-3076 Lorem Rd.',NULL,'Banff','Q7 3QU',186),(158,158,'601-4532 Dictum Rd.','Cardiganshire','Dunbar','X94 1ED',186),(159,159,'P.O. Box 957 9714 Ornare. Street ','Banffshire','Hartlepool','H08 7RY',186),(160,160,'800-9395 Sem Street',NULL,'Troon','TS6V 2SF',186),(161,161,'494-3787 Et St.','Flintshire','Thurso','PL84 2OM',186),(162,162,'Ap #326-1081 Mauris. Road','Sutherland','Thurso','QT3 7OS',186),(163,163,'4784 Lectus. St.','Shropshire','Stevenage','N5B 1GD',186),(164,164,'P.O. Box 627 6134 Nunc Street ',NULL,'Coalville','F7 6YL',186),(165,165,'971-6658 Ut Avenue','Pembrokeshire','Kirkby Lonsdale','EB8 8TA',186),(166,166,'Ap #523-4762 Donec St.','Caithness','Lossiemouth','QK4 9HN',186),(167,167,'700-8883 Mauris Rd.','Perthshire','Colchester','I72 8HV',186),(168,168,'Ap #515-9771 Phasellus St.','Inverness-shire','Slough','U3B 3AJ',186),(169,169,'Ap #593-2607 Ornare Street','Inverness-shire','Bromley','X1 5LC',186),(170,170,'P.O. Box 402 7890 Egestas Avenue ',NULL,'Alness','NS4U 7PR',186),(171,171,'9590 Vitae Avenue ','Buteshire','Kilmarnock','IH0P 0TM',186),(172,172,'Ap #744-6008 Felis St.','Stirlingshire','Kington','JM56 2LJ',186),(173,173,'989-7742 Arcu. St.','Merionethshire','Sheffield','L74 1EC',186),(174,174,'569-1665 Nullam St.','Denbighshire','Bracknell','Y7 2SB',186),(175,175,'P.O. Box 859 4645 Metus. St. ','Rutland','Kinross','RL5F 8DQ',186),(176,176,'145-2809 Urna. Road','Sussex','Baltasound','P9N 4GA',186),(177,177,'4250 Fusce St.','Argyllshire','Abingdon','J73 6TG',186),(178,178,'671-3618 Mi St. ',NULL,'Brechin','NS36 8IM',186),(179,179,'446-5269 Cursus Rd.',NULL,'Tywyn','UT1 1DB',186),(180,180,'Ap #496-8300 Nonummy Ave','Norfolk','Leicester','E62 3NY',186),(181,181,'794-7690 Luctus Street','Durham','Croydon','A7D 4PM',186),(182,182,'854-1953 Erat. Street','Hampshire','Scalloway','LM6 2WO',186),(183,183,'Ap #357-7354 Feugiat St.',NULL,'Appleby','SX62 1XK',186),(184,184,'P.O. Box 852 617 Aliquam Ave ',NULL,'Shaftesbury','FA85 6LK',186),(185,185,'667-3313 Amet St.','Roxburghshire','Southwell','BR15 2WJ',186),(186,186,'Ap #887-4813 Est. Rd.',NULL,'Solihull','CS5R 6UQ',186),(187,187,'321-3364 Turpis Rd.','Berwickshire','Greenlaw','XB6 7RD',186),(188,188,'394 Magnis Road','Wigtownshire','Millport','VL43 4HX',186),(189,189,'Ap #295-6074 At St.','Somerset','Whittlesey','W4 2FO',186),(190,190,'7351 Aliquet Avenue',NULL,'Dunoon','W59 2IG',186),(191,191,'298-6613 Egestas Av.',NULL,'Dingwall','H91 9JB',186),(192,192,'Ap #121-5805 Enim. Ave','Flintshire','Ramsey','SL12 7RF',186),(193,193,'Ap #668-1700 Non Rd.','Caithness','Buckley','D4 2ZY',186),(194,194,'P.O. Box 811 1588 Malesuada Street ','Wiltshire','Thurso','Y6H 7FB',186),(195,195,'556-5208 Ut Ave','Kincardineshire','Alloa','G2 5EJ',186),(196,196,'789-5446 Augue Street',NULL,'Caerphilly','R8Q 5ES',186),(197,197,'Ap #501-5404 Mauris Rd.','Surrey','Basildon','JG6 8NM',186),(198,198,'Ap #618-9878 Egestas Ave','Dunbartonshire','Wigtown','C7 4JR',186),(199,199,'Ap #556-6283 Vitae St.','Argyllshire','Tregaron','N9 8XU',186),(200,200,'703-6809 Eu St.',NULL,'Cheltenham','T0J 1ZU',186),(201,201,'P.O. Box 528 7548 Donec Av. ',NULL,'Glasgow','LV2 5EG',186),(202,202,'4, Main Avenue',NULL,'Nottingham','NG99 1AA',186),(203,203,'4 New Gate Lane',NULL,'Newcastle','NE99 0WW',186);
/*!40000 ALTER TABLE `customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customer_card_balance`
--

DROP TABLE IF EXISTS `customer_card_balance`;
/*!50001 DROP VIEW IF EXISTS `customer_card_balance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_card_balance` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `card_number`,
 1 AS `expiry_date`,
 1 AS `currency_code`,
 1 AS `currency_name`,
 1 AS `balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customer_details`
--

DROP TABLE IF EXISTS `customer_details`;
/*!50001 DROP VIEW IF EXISTS `customer_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_details` AS SELECT 
 1 AS `customer_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email`,
 1 AS `phone`,
 1 AS `address_line1`,
 1 AS `city`,
 1 AS `postcode`,
 1 AS `Country`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Joe','Smith','joesmith@example.com',NULL),(2,'Kylan','Rivas','kylan-rivas@hotmail.com','07624 351788'),(3,'Ferdinand','Welch','welch_ferdinand@hotmail.couk','0881 551 4957'),(4,'Dane','Wallace','dane.wallace8405@hotmail.couk','0800 1111'),(5,'Xander','Powers','xanderpowers@yahoo.ca','07352 562851'),(6,'Zenaida','Gibbs','zenaida-gibbs@outlook.couk','0957 737 8422'),(7,'Lana','Wiggins','lana_wiggins789@yahoo.org','07141 710619'),(8,'Zenaida','Moran','moran.zenaida3802@protonmail.ca','076 6074 6528'),(9,'Burke','King','burke-king@hotmail.couk','0868 462 3168'),(10,'Chase','Green','chase.green@hotmail.couk','070 0238 6508'),(11,'Galvin','Cox','cox_galvin@google.org','0800 830 8462'),(12,'Hermione','Miles','miles_hermione@protonmail.net','0988 745 3669'),(13,'Amaya','Webster','amaya_webster@icloud.ca','07624 787563'),(14,'Erich','Kennedy','kerich9370@outlook.couk','0857 024 2823'),(15,'Amber','Adkins','aadkins@yahoo.couk','0954 486 1526'),(16,'Nayda','Cortez','nayda_cortez4506@aol.ca','0800 709 1465'),(17,'Barrett','Ross','r.barrett@icloud.edu','0955 770 1586'),(18,'Ray','Cameron','cameron-ray@aol.couk','07624 377837'),(19,'Lareina','Roy','roy.lareina@outlook.org','0800 383301'),(20,'Idola','Snider','s-idola4358@google.ca','07379 718826'),(21,'Patricia','Albert','p.albert6987@protonmail.couk','070 6795 8536'),(22,'Mechelle','Dorsey','dorsey_mechelle2722@hotmail.ca','07624 616552'),(23,'Iris','Snyder','i_snyder@protonmail.net','0800 1111'),(24,'Adam','Bowen','adam-bowen@icloud.couk','0800 1111'),(25,'Jaden','Roth','rothjaden3307@aol.edu','07624 424138'),(26,'Whitney','Dodson','dodsonwhitney4103@protonmail.net','07451 249548'),(27,'Lester','Orr','orr.lester5463@hotmail.ca','07624 122704'),(28,'Robin','Herman','rherman@google.org','076 3453 5845'),(29,'Zachary','Mckay','z_mckay2381@yahoo.net','070 5434 2467'),(30,'Gareth','Wilson','garethwilson5242@icloud.net','0800 1111'),(31,'Emery','Jones','j-emery3759@google.net','0800 1111'),(32,'Akeem','Cain','a-cain@aol.net','0500 147684'),(33,'Olga','Heath','oheath3833@outlook.net','0800 848116'),(34,'Jacob','Cross','j-cross3672@outlook.ca','07876 682587'),(35,'Vaughan','Pace','p_vaughan@aol.net','07624 623974'),(36,'Tanek','Small','t.small@aol.com','0895 184 1148'),(37,'Sean','Underwood','underwood.sean@outlook.ca','07762 424723'),(38,'Lyle','Camacho','l_camacho@icloud.edu','0800 1111'),(39,'Virginia','Miller','millervirginia7511@hotmail.couk','07247 228947'),(40,'Galena','Bruce','bruce-galena8563@yahoo.ca','0875 769 4917'),(41,'Malik','Noble','m.noble5516@protonmail.couk','0943 577 6315'),(42,'Winifred','Macias','macias-winifred7384@protonmail.edu','0800 1111'),(43,'Charlotte','Byrd','charlotte_byrd9782@google.org','070 9186 6806'),(44,'Penelope','Oneal','o.penelope@icloud.com','0884 468 5805'),(45,'Lance','Kane','lkane7362@outlook.edu','070 3214 1039'),(46,'Aurora','Harper','aharper1651@yahoo.net','0923 385 5651'),(47,'Ria','Gomez','g.ria@hotmail.couk','0800 766791'),(48,'Fatima','Donovan','f.donovan@hotmail.couk','0800 801764'),(49,'Brendan','Hurley','bhurley9512@outlook.ca','070 1820 1893'),(50,'Reece','Zimmerman','z_reece@icloud.ca','0909 536 3866'),(51,'Imogene','Rivers','riversimogene6777@yahoo.couk','0877 129 3880'),(52,'Stella','Guerra','guerrastella2589@aol.edu','070 8103 7256'),(53,'Victoria','Meadows','m-victoria7198@outlook.ca','0835 545 9676'),(54,'Abbot','Jimenez','a.jimenez@protonmail.ca','0832 082 6882'),(55,'Giselle','Silva','silva_giselle1595@hotmail.ca','0907 330 1766'),(56,'Ora','Aguilar','o.aguilar3033@protonmail.couk','076 7715 1188'),(57,'Hayes','Joyce','joyce-hayes@google.ca','0878 417 0444'),(58,'Dylan','Knight','knight.dylan@google.com','07806 798668'),(59,'Lee','Morse','l-morse@protonmail.ca','0500 067373'),(60,'Linda','Cooke','cooke_linda@yahoo.com','0800 817 6083'),(61,'Tanner','Morgan','m_tanner8562@yahoo.org','0985 862 4984'),(62,'Ava','Durham','d-ava@protonmail.org','070 5473 7372'),(63,'Reagan','Lowery','loweryreagan9630@yahoo.com','0844 354 1345'),(64,'Jayme','Mercer','j.mercer@google.edu','0800 756618'),(65,'Clayton','Pugh','cpugh@hotmail.org','07230 818447'),(66,'Ainsley','Travis','travis.ainsley@icloud.net','0800 620 1713'),(67,'Roary','Simpson','roary-simpson1363@outlook.org','0800 481513'),(68,'Medge','Watkins','wmedge@aol.org','07624 040324'),(69,'Chava','White','chava_white7056@icloud.ca','0995 274 2782'),(70,'Olga','Matthews','omatthews@protonmail.ca','0813 661 2718'),(71,'Raya','Armstrong','a.raya@yahoo.couk','0982 383 2806'),(72,'Bertha','Miller','millerbertha8812@icloud.com','070 9635 2226'),(73,'Lavinia','James','l.james7785@protonmail.couk','0800 1111'),(74,'Derek','Mercado','derek_mercado@google.ca','07624 677493'),(75,'Armando','Cole','c_armando9866@google.net','076 3912 1822'),(76,'Merritt','Hartman','hartmanmerritt@hotmail.com','07424 377929'),(77,'James','Moody','j_moody5117@protonmail.org','07624 246624'),(78,'Avye','Richards','avye.richards5344@outlook.org','0889 541 7394'),(79,'Kermit','Blackburn','k.blackburn1161@hotmail.net','076 4631 5822'),(80,'Montana','Mercer','m_mercer6875@icloud.net','0800 076474'),(81,'Ivana','Harmon','iharmon@hotmail.org','0800 800361'),(82,'Christine','Banks','banks_christine462@aol.org','0951 097 7243'),(83,'Buckminster','Fernandez','b-fernandez1143@yahoo.ca','07624 724134'),(84,'Jason','Price','p.jason@protonmail.edu','0804 623 7832'),(85,'Nita','Gilmore','n-gilmore6409@hotmail.net','0800 1111'),(86,'Nero','Gould','g-nero1410@hotmail.edu','0500 824159'),(87,'Catherine','Robertson','robertson_catherine7462@aol.ca','0800 1111'),(88,'Xander','Noble','xnoble@hotmail.ca','0800 812 3289'),(89,'Phillip','Greer','pgreer1798@protonmail.edu','07624 276321'),(90,'Peter','Hicks','hicks.peter5494@yahoo.ca','070 6552 6534'),(91,'Sophia','Acevedo','a_sophia6044@google.com','0800 625 3430'),(92,'Cairo','Greer','greercairo@outlook.edu','0800 1111'),(93,'Clare','Baker','cbaker5506@yahoo.org','0893 609 8734'),(94,'Cynthia','Hawkins','h.cynthia@icloud.org','076 8046 0345'),(95,'Keaton','Noel','knoel@yahoo.ca','0800 687 2648'),(96,'Chancellor','Callahan','callahan.chancellor@protonmail.org','076 7731 6455'),(97,'Theodore','Gay','gaytheodore@icloud.org','070 1374 1516'),(98,'Scarlett','Jackson','jackson.scarlett5840@yahoo.com','0971 765 5545'),(99,'Lucas','Webb','webb_lucas5918@aol.couk','07485 009637'),(100,'Octavia','Byers','octavia-byers1838@hotmail.org','0800 1111'),(101,'Sophia','Santiago','ssantiago5255@hotmail.net','07624 434626'),(102,'Finn','Merritt','merritt.finn288@protonmail.com','076 4072 8596'),(103,'Bertha','Burch','bertha_burch6235@protonmail.net','076 2554 1872'),(104,'Jason','Hurley','hurley_jason2265@outlook.net','076 4775 8128'),(105,'Dalton','Collins','dalton.collins9964@google.ca','0800 1111'),(106,'Katell','Mcbride','mcbride_katell5436@aol.edu','0500 607415'),(107,'Emily','James','e.james9442@protonmail.couk','070 5678 3247'),(108,'Alice','Rogers','rogers-alice@google.couk','070 5376 3655'),(109,'Joelle','Ferguson','fergusonjoelle@outlook.com','0800 435484'),(110,'Yuri','Landry','yuri_landry@yahoo.org','0800 121216'),(111,'Amanda','Nelson','amanda_nelson4721@google.ca','076 1673 9881'),(112,'Damian','Harding','harding.damian8471@protonmail.org','076 4355 7251'),(113,'Knox','Mays','m.knox@hotmail.com','0800 1111'),(114,'Wesley','Faulkner','faulkner-wesley@hotmail.net','0500 832558'),(115,'Keith','Hogan','khogan7268@google.ca','0800 1111'),(116,'Cheryl','Simpson','cherylsimpson7777@yahoo.org','0500 241537'),(117,'Travis','Lee','l.travis@google.org','076 2410 3253'),(118,'Hilda','Hatfield','hatfieldhilda@yahoo.ca','07624 606761'),(119,'MacKensie','Dean','deanmackensie@hotmail.ca','0913 562 5282'),(120,'Joshua','Stokes','j-stokes@hotmail.net','0800 1111'),(121,'Jenna','Gutierrez','j_gutierrez7857@icloud.org','07624 545872'),(122,'Nathan','Herman','h.nathan4480@aol.ca','070 9190 8481'),(123,'Ira','Browning','browning_ira1445@outlook.ca','0800 279861'),(124,'Curran','Keith','k-curran9084@icloud.com','0910 665 2748'),(125,'Nevada','Cunningham','cunninghamnevada@google.ca','076 0692 3686'),(126,'Merrill','Hubbard','hubbard_merrill@google.ca','0885 268 6542'),(127,'Uta','Hahn','h.uta5019@aol.com','07467 253354'),(128,'Harper','Frank','h-frank1829@outlook.edu','076 4335 8412'),(129,'Tanya','Buck','buck_tanya@icloud.edu','076 5888 9261'),(130,'Blake','Carpenter','cblake@hotmail.org','0800 1111'),(131,'Dora','Goff','dora_goff@google.couk','07624 217140'),(132,'Maryam','Carney','maryam.carney7116@protonmail.edu','0800 354126'),(133,'Chandler','Walters','walterschandler5934@yahoo.org','076 6731 7339'),(134,'Ulla','Mckay','m_ulla@protonmail.com','076 5033 4649'),(135,'Brandon','Durham','durhambrandon@hotmail.org','0800 572 3165'),(136,'Kiayada','Kennedy','kennedykiayada@hotmail.net','07624 382333'),(137,'Malcolm','Fry','fry-malcolm6353@hotmail.com','076 2343 8401'),(138,'Ocean','Gutierrez','o.gutierrez@protonmail.ca','0916 475 0014'),(139,'Keith','Graves','kgraves6806@google.couk','0500 178487'),(140,'Myles','Mcneil','mcneil-myles@yahoo.couk','070 3734 9716'),(141,'Nicole','Meadows','m_nicole1321@hotmail.ca','0927 124 4584'),(142,'MacKenzie','Mcguire','mackenzie.mcguire3177@icloud.net','0500 013288'),(143,'Martha','Singleton','m-singleton@aol.com','0990 661 1886'),(144,'Merrill','Bird','b.merrill@aol.ca','07475 627199'),(145,'Seth','Rodriquez','seth_rodriquez@aol.com','07634 314687'),(146,'Elvis','Peck','pelvis@yahoo.com','0962 014 5224'),(147,'Autumn','Harvey','h.autumn4616@protonmail.edu','070 3561 3435'),(148,'Benjamin','Head','headbenjamin2789@aol.couk','076 4295 4148'),(149,'Larissa','Snider','s.larissa@protonmail.com','070 5011 7302'),(150,'Fay','Swanson','f-swanson@yahoo.net','07624 828008'),(151,'Farrah','Brady','fbrady8532@google.couk','0800 1111'),(152,'Veda','Warren','v-warren8920@google.com','0800 576742'),(153,'Chaim','Vang','vang-chaim@hotmail.org','0800 956 8075'),(154,'Pascale','Bean','p_bean@hotmail.ca','070 3928 5742'),(155,'Wilma','Hurley','wilma-hurley@yahoo.edu','070 5652 1204'),(156,'Quon','Ashley','qashley9753@protonmail.net','076 2210 1771'),(157,'Daniel','Woodward','d.woodward@yahoo.net','0800 550 8725'),(158,'Brian','Mejia','mbrian3877@icloud.couk','070 7897 3211'),(159,'Alea','Cabrera','cabrera-alea@protonmail.org','0833 148 0763'),(160,'Jordan','Kirkland','jordan.kirkland7548@yahoo.com','0928 233 9497'),(161,'Whilemina','Dyer','w.dyer6496@yahoo.ca','0800 1111'),(162,'Fletcher','Perry','f_perry3831@icloud.com','070 6782 3142'),(163,'Clarke','Mason','m-clarke@hotmail.org','0800 1111'),(164,'Reuben','Ellison','rellison@outlook.net','0500 566399'),(165,'Phillip','Cobb','p.cobb6128@hotmail.com','07125 789037'),(166,'April','Valenzuela','v_april1193@protonmail.com','070 5921 8586'),(167,'Dylan','Moon','d-moon5638@protonmail.com','0800 246425'),(168,'Cally','Harmon','c.harmon3840@protonmail.ca','076 7202 8351'),(169,'Hamish','Glover','glover-hamish3490@hotmail.edu','0800 045 2345'),(170,'Maia','Blackburn','blackburnmaia@aol.org','0860 818 6696'),(171,'August','Calhoun','august-calhoun@hotmail.net','0500 557645'),(172,'Edward','Albert','e_albert5521@google.ca','0500 835235'),(173,'Rae','Anthony','r-anthony@hotmail.edu','0906 554 7680'),(174,'Kalia','Payne','k.payne@aol.org','07624 628255'),(175,'Aimee','Sims','simsaimee@google.edu','0500 981356'),(176,'Xena','Hull','x-hull@hotmail.com','0800 1111'),(177,'Montana','Jackson','mjackson@outlook.net','0500 819311'),(178,'Iola','Richardson','i-richardson@icloud.couk','0800 326 6403'),(179,'Armando','Nicholson','n.armando@outlook.edu','07624 491354'),(180,'Kyle','Hart','k-hart@google.couk','076 2928 2850'),(181,'Brenna','Mccoy','mccoybrenna@yahoo.net','0800 397 4926'),(182,'Josephine','Roy','j-roy@protonmail.net','0924 634 8624'),(183,'Angela','Sellers','sangela1657@google.couk','0800 1111'),(184,'Rina','Burke','rina_burke@icloud.net','0800 384658'),(185,'Garrison','Mcknight','g_mcknight@aol.com','07481 329527'),(186,'Byron','Jensen','jensenbyron7105@icloud.org','070 6172 6557'),(187,'Imogene','Guerra','i.guerra1083@icloud.net','0500 763575'),(188,'Hiram','Gamble','g-hiram997@hotmail.edu','0800 1111'),(189,'Victor','Middleton','middletonvictor@google.net','0801 522 8125'),(190,'Madaline','Young','madalineyoung6558@google.net','07624 397705'),(191,'Dean','Pittman','p.dean1763@icloud.couk','0500 331683'),(192,'Alvin','Boyd','boydalvin@aol.com','076 5804 9821'),(193,'Roth','Ochoa','ochoa-roth5185@aol.couk','07082 363186'),(194,'Christian','Rowe','christian-rowe9690@aol.com','07624 524476'),(195,'Ruth','Christensen','rchristensen@protonmail.org','076 3596 1454'),(196,'Ava','Lowe','loweava@aol.org','0822 375 0129'),(197,'Montana','Stein','mstein@yahoo.com','0976 462 8411'),(198,'Herman','Charles','charles_herman7449@hotmail.ca','0854 436 4568'),(199,'Jenna','Hunter','jennahunter7982@hotmail.net','0800 678 1812'),(200,'Gisela','Gibbs','gibbs_gisela@outlook.ca','0800 514137'),(201,'Wang','Sheppard','sheppardwang2262@protonmail.couk','0800 1111'),(202,'Lisa','Homewood','lisa@gmail.co.uk','01685 89745'),(203,'Robert','Bakers','rbakers@outlook.uk',NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `expired_cards_with_balance`
--

DROP TABLE IF EXISTS `expired_cards_with_balance`;
/*!50001 DROP VIEW IF EXISTS `expired_cards_with_balance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `expired_cards_with_balance` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `card_number`,
 1 AS `expiry_date`,
 1 AS `currency_code`,
 1 AS `currency_name`,
 1 AS `balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `money_cards`
--

DROP TABLE IF EXISTS `money_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `money_cards` (
  `card_number` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `expiry_date_month` int NOT NULL,
  `expiry_date_year` int NOT NULL,
  PRIMARY KEY (`card_number`),
  KEY `fk_money_cards_customer_id` (`customer_id`),
  CONSTRAINT `fk_money_cards_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_cards`
--

LOCK TABLES `money_cards` WRITE;
/*!40000 ALTER TABLE `money_cards` DISABLE KEYS */;
INSERT INTO `money_cards` VALUES (1000000000,1,10,2027),(1000000001,2,8,2022),(1000000002,3,9,2026),(1000000003,4,11,2028),(1000000004,5,9,2026),(1000000005,6,8,2025),(1000000006,7,9,2026),(1000000007,8,7,2024),(1000000008,9,8,2025),(1000000009,10,10,2027),(1000000010,11,8,2025),(1000000011,12,10,2027),(1000000012,33,9,2020),(1000000013,14,8,2025),(1000000014,15,7,2024),(1000000015,16,10,2027),(1000000016,47,9,2026),(1000000017,18,10,2027),(1000000018,19,10,2027),(1000000019,20,8,2025),(1000000020,21,8,2025),(1000000021,22,8,2025),(1000000022,23,8,2025),(1000000023,24,10,2027),(1000000024,25,8,2022),(1000000025,26,8,2025),(1000000026,27,9,2026),(1000000027,28,11,2028),(1000000028,29,10,2027),(1000000029,30,8,2025),(1000000030,31,9,2026),(1000000031,32,11,2028),(1000000032,33,7,2024),(1000000033,34,9,2026),(1000000034,35,10,2027),(1000000035,36,9,2026),(1000000036,37,10,2022),(1000000037,38,10,2027),(1000000038,39,9,2026),(1000000039,40,11,2028),(1000000040,41,10,2027),(1000000041,42,9,2026),(1000000042,43,10,2027),(1000000043,44,9,2026),(1000000044,45,9,2026),(1000000045,46,10,2027),(1000000046,47,10,2027),(1000000047,48,8,2025),(1000000048,49,8,2025),(1000000049,50,10,2020),(1000000050,51,9,2026),(1000000051,52,9,2026),(1000000052,53,7,2024),(1000000053,54,10,2027),(1000000054,55,11,2028),(1000000055,56,8,2025),(1000000056,57,9,2026),(1000000057,58,9,2026),(1000000058,59,10,2027),(1000000059,60,10,2027),(1000000060,61,8,2025),(1000000061,62,8,2022),(1000000062,63,8,2025),(1000000063,64,7,2024),(1000000064,65,7,2024),(1000000065,66,7,2024),(1000000066,67,11,2028),(1000000067,68,9,2026),(1000000068,69,11,2028),(1000000069,70,11,2028),(1000000070,71,10,2027),(1000000071,72,8,2022),(1000000072,73,10,2027),(1000000073,74,7,2024),(1000000074,75,11,2028),(1000000075,76,9,2026),(1000000076,77,11,2028),(1000000077,78,7,2024),(1000000078,79,9,2026),(1000000079,80,8,2025),(1000000080,81,9,2026),(1000000081,82,10,2027),(1000000082,83,8,2025),(1000000083,84,10,2020),(1000000084,85,8,2025),(1000000085,86,8,2025),(1000000086,87,10,2027),(1000000087,88,9,2026),(1000000088,89,10,2027),(1000000089,90,7,2024),(1000000090,91,10,2027),(1000000091,92,7,2022),(1000000092,93,11,2028),(1000000093,94,9,2026),(1000000094,95,11,2028),(1000000095,69,11,2028),(1000000096,97,11,2028),(1000000097,98,10,2027),(1000000098,99,10,2027),(1000000099,100,9,2026),(1000000100,101,9,2026),(1000000101,102,9,2026),(1000000102,103,9,2020),(1000000103,104,10,2027),(1000000104,105,8,2025),(1000000105,106,10,2027),(1000000106,107,7,2024),(1000000107,108,11,2028),(1000000108,109,10,2027),(1000000109,110,8,2025),(1000000110,111,10,2027),(1000000111,112,7,2024),(1000000112,113,11,2028),(1000000113,114,9,2026),(1000000114,115,10,2027),(1000000115,129,10,2027),(1000000116,117,11,2028),(1000000117,118,8,2025),(1000000118,119,9,2026),(1000000119,120,9,2026),(1000000120,121,10,2027),(1000000121,122,7,2024),(1000000122,123,10,2022),(1000000123,124,11,2028),(1000000124,125,9,2026),(1000000125,126,7,2024),(1000000126,127,9,2026),(1000000127,128,8,2025),(1000000128,129,7,2024),(1000000129,130,8,2025),(1000000130,131,8,2025),(1000000131,132,7,2024),(1000000132,133,11,2028),(1000000133,134,9,2026),(1000000134,135,9,2026),(1000000135,136,10,2027),(1000000136,137,9,2026),(1000000137,138,7,2024),(1000000138,139,7,2024),(1000000139,140,10,2027),(1000000140,141,11,2028),(1000000141,142,9,2026),(1000000142,143,7,2024),(1000000143,144,7,2024),(1000000144,145,9,2026),(1000000145,146,10,2027),(1000000146,147,11,2028),(1000000147,148,7,2024),(1000000148,149,9,2020),(1000000149,150,9,2026),(1000000150,151,10,2027),(1000000151,152,8,2025),(1000000152,153,10,2027),(1000000153,154,11,2028),(1000000154,155,9,2026),(1000000155,156,10,2027),(1000000156,157,10,2027),(1000000157,158,10,2027),(1000000158,159,11,2028),(1000000159,160,7,2024),(1000000160,161,10,2027),(1000000161,162,9,2026),(1000000162,163,9,2026),(1000000163,164,7,2024),(1000000164,165,9,2026),(1000000165,166,11,2022),(1000000166,167,9,2026),(1000000167,168,11,2028),(1000000168,169,8,2025),(1000000169,170,7,2024),(1000000170,171,9,2026),(1000000171,172,10,2027),(1000000172,173,8,2020),(1000000173,174,8,2022),(1000000174,175,8,2025),(1000000175,176,8,2025),(1000000176,177,9,2026),(1000000177,178,8,2025),(1000000178,179,10,2027),(1000000179,180,8,2020),(1000000180,181,9,2026),(1000000181,182,8,2025),(1000000182,183,11,2020),(1000000183,184,7,2024),(1000000184,185,8,2025),(1000000185,159,8,2022),(1000000186,187,8,2025),(1000000187,188,8,2025),(1000000188,189,9,2026),(1000000189,190,9,2022),(1000000190,191,10,2027),(1000000191,192,8,2020),(1000000192,193,9,2026),(1000000193,194,8,2025),(1000000194,195,9,2026),(1000000195,196,8,2025),(1000000196,197,8,2025),(1000000197,198,10,2027),(1000000198,199,9,2026),(1000000199,200,8,2025),(1000000200,201,9,2026),(1000000201,202,8,2025),(1000000202,203,8,2025);
/*!40000 ALTER TABLE `money_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'travel_money_cards'
--
/*!50003 DROP FUNCTION IF EXISTS `error_if_invalid_card` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nav`@`%` FUNCTION `error_if_invalid_card`(
  p_first_name VARCHAR(50),
  p_last_name VARCHAR(50),
  p_card_number BIGINT,
  p_expiry_date_month INT,
  p_expiry_date_year INT
) RETURNS bit(1)
    DETERMINISTIC
BEGIN 

-- declare variables
DECLARE card_expiry_date DATE;

-- parse date
SELECT DATE(CONCAT(p_expiry_date_year, '-', p_expiry_date_month, '-01')) INTO card_expiry_date;

-- check if card expiry date is valid
IF (card_expiry_date < CURDATE())
THEN SIGNAL SQLSTATE '45000'
SET
  MESSAGE_TEXT = 'Card is expired';

END IF;

-- check if card details are valid
IF NOT EXISTS (
  SELECT
    *
  FROM
    customers AS cust
    JOIN money_cards AS crd ON crd.customer_id = cust.customer_id
  WHERE
    cust.first_name = p_first_name
    AND cust.last_name = p_last_name
    AND crd.card_number = p_card_number
    AND crd.expiry_date_month = p_expiry_date_month
    AND crd.expiry_date_year = p_expiry_date_year
) THEN SIGNAL SQLSTATE '45000'
SET
  MESSAGE_TEXT = 'Invalid card details';

END IF;

RETURN 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `error_if_invalid_currency_code` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nav`@`%` FUNCTION `error_if_invalid_currency_code`(p_currency_code VARCHAR(3)) RETURNS bit(1)
    DETERMINISTIC
BEGIN 

-- check if valid currency
IF NOT EXISTS(
  SELECT
    *
  FROM
    currency_codes
  WHERE
    currency_code = p_currency_code
)
THEN SIGNAL SQLSTATE '45000'
SET
  MESSAGE_TEXT = 'Invalid currency code';

END IF;

RETURN 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_country_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nav`@`%` FUNCTION `get_country_id`(p_country_name VARCHAR(50)) RETURNS int
    DETERMINISTIC
BEGIN 
-- declare variables
DECLARE r_country_id INT;

-- find country_id using country name
SELECT
  country_id INTO r_country_id
FROM
  countries
WHERE
  country_name = p_country_name
LIMIT 1;  

-- check if valid country
IF(r_country_id IS NULL)
THEN SIGNAL SQLSTATE '45000'
SET
  MESSAGE_TEXT = 'Invalid country name';

END IF;

RETURN r_country_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_human_readable_expiry_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nav`@`%` FUNCTION `get_human_readable_expiry_date`(p_expiry_date_month INT, p_expiry_date_year INT) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN 

  RETURN DATE_FORMAT(DATE(CONCAT(p_expiry_date_year, '-', p_expiry_date_month, '-01')), '%M %Y');

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_random_card_expiry_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nav`@`%` FUNCTION `get_random_card_expiry_date`() RETURNS date
    NO SQL
BEGIN 
-- declare variables
DECLARE r_expiry_date DATE;
DECLARE random_num INT;

-- random date
SELECT ROUND((RAND() * (5-1))+1) INTO random_num;
SELECT DATE_ADD(CURDATE(), INTERVAL random_num YEAR) INTO r_expiry_date;

IF(DATE_FORMAT(r_expiry_date, '%m') < 7)
THEN
  SELECT DATE_ADD(r_expiry_date, INTERVAL random_num MONTH) INTO r_expiry_date;
END IF;

RETURN r_expiry_date;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_new_customer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nav`@`%` PROCEDURE `create_new_customer`(
  IN p_first_name VARCHAR(50),
  IN p_last_name VARCHAR(50),
  IN p_email VARCHAR(50),
  IN p_phone VARCHAR(50),
  IN p_address_line1 VARCHAR(50),
  IN p_address_line2 VARCHAR(50),
  IN p_city VARCHAR(50),
  IN p_postcode VARCHAR(10),
  IN p_country VARCHAR(50),
  IN p_initial_balance DECIMAL(12, 2),
  IN p_initial_balance_currency_code VARCHAR(3)
)
BEGIN
-- declare variables
DECLARE customer_country_id INT;

DECLARE new_customer_id INT;

DECLARE new_card_number INT;

DECLARE new_card_expiry_date DATE;

-- find country_id using country name
select `travel_money_cards`.`get_country_id`(p_country) INTO customer_country_id;

-- check if valid currency code
select `travel_money_cards`.`error_if_invalid_currency_code`(p_initial_balance_currency_code);

-- create new customer
INSERT INTO
  customers (first_name, last_name, email, phone) VALUE (p_first_name, p_last_name, p_email, p_phone);

-- find new customer's id
SELECT LAST_INSERT_ID() INTO new_customer_id;

-- create new customer's address
INSERT INTO
  customer_addresses (
    customer_id,
    address_line1,
    address_line2,
    city,
    postcode,
    country_id
  ) VALUE (
    new_customer_id,
    p_address_line1,
    p_address_line2,
    p_city,
    p_postcode,
    customer_country_id
  );

-- calculate card expiry date  
SELECT `travel_money_cards`.`get_random_card_expiry_date`() INTO new_card_expiry_date;

-- create a default card for new customer
INSERT INTO
  money_cards (customer_id, expiry_date_month, expiry_date_year) 
VALUE (new_customer_id, DATE_FORMAT(new_card_expiry_date, '%m'), DATE_FORMAT(new_card_expiry_date, '%Y'));

-- find new card number
SELECT LAST_INSERT_ID() INTO new_card_number;

-- load card with intial balance
INSERT INTO
  card_balances (card_number, currency_code, balance) VALUE (
    new_card_number,
    p_initial_balance_currency_code,
    p_initial_balance
  );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reload_card` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nav`@`%` PROCEDURE `reload_card`(
  IN p_first_name VARCHAR(50),
  IN p_last_name VARCHAR(50),
  IN p_card_number BIGINT,
  IN p_expiry_date_month INT,
  IN p_expiry_date_year INT,
  IN p_amount DECIMAL(12, 2),
  IN p_currency_code VARCHAR(3)
)
BEGIN
-- declare variables
DECLARE new_balance DECIMAL(12, 2);

-- check if card details are valid
SELECT `travel_money_cards`.`error_if_invalid_card`(p_first_name, p_last_name, p_card_number, p_expiry_date_month, p_expiry_date_year);

-- check if valid currency code
select `travel_money_cards`.`error_if_invalid_currency_code`(p_currency_code);

-- load card
IF NOT EXISTS (
  SELECT
    *
  FROM
    card_balances
  WHERE
    card_number = p_card_number
    AND currency_code = p_currency_code
) THEN
INSERT INTO
  card_balances (card_number, currency_code, balance) VALUE (p_card_number, p_currency_code, p_amount);

ELSE
UPDATE card_balances
SET
  balance = balance + p_amount
WHERE
  card_number = p_card_number
  AND currency_code = p_currency_code;

END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `customer_card_balance`
--

/*!50001 DROP VIEW IF EXISTS `customer_card_balance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`nav`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_card_balance` AS select `cust`.`first_name` AS `first_name`,`cust`.`last_name` AS `last_name`,`crd`.`card_number` AS `card_number`,`travel_money_cards`.`get_human_readable_expiry_date`(`crd`.`expiry_date_month`,`crd`.`expiry_date_year`) AS `expiry_date`,`curr`.`currency_code` AS `currency_code`,`curr`.`currency_name` AS `currency_name`,`bal`.`balance` AS `balance` from (((`customers` `cust` join `money_cards` `crd` on((`crd`.`customer_id` = `cust`.`customer_id`))) join `card_balances` `bal` on((`bal`.`card_number` = `crd`.`card_number`))) join `currency_codes` `curr` on((`curr`.`currency_code` = `bal`.`currency_code`))) order by `cust`.`customer_id`,`crd`.`card_number`,`bal`.`currency_code` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customer_details`
--

/*!50001 DROP VIEW IF EXISTS `customer_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`nav`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_details` AS select `cust`.`customer_id` AS `customer_id`,`cust`.`first_name` AS `first_name`,`cust`.`last_name` AS `last_name`,`cust`.`email` AS `email`,`cust`.`phone` AS `phone`,`addr`.`address_line1` AS `address_line1`,`addr`.`city` AS `city`,`addr`.`postcode` AS `postcode`,(select `countries`.`country_name` from `countries` where (`countries`.`country_id` = `addr`.`country_id`)) AS `Country` from (`customers` `cust` join `customer_addresses` `addr` on((`addr`.`customer_id` = `cust`.`customer_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `expired_cards_with_balance`
--

/*!50001 DROP VIEW IF EXISTS `expired_cards_with_balance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`nav`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `expired_cards_with_balance` AS select `cust`.`first_name` AS `first_name`,`cust`.`last_name` AS `last_name`,`crd`.`card_number` AS `card_number`,`travel_money_cards`.`get_human_readable_expiry_date`(`crd`.`expiry_date_month`,`crd`.`expiry_date_year`) AS `expiry_date`,`curr`.`currency_code` AS `currency_code`,`curr`.`currency_name` AS `currency_name`,`bal`.`balance` AS `balance` from (((`customers` `cust` join `money_cards` `crd` on((`crd`.`customer_id` = `cust`.`customer_id`))) join `card_balances` `bal` on((`bal`.`card_number` = `crd`.`card_number`))) join `currency_codes` `curr` on((`curr`.`currency_code` = `bal`.`currency_code`))) where ((`bal`.`balance` > 0) and (cast(concat(`crd`.`expiry_date_year`,'-',`crd`.`expiry_date_month`,'-01') as date) < curdate())) order by `cust`.`customer_id`,`crd`.`card_number`,`bal`.`currency_code` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07 23:57:18
