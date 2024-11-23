-- MySQL dump 10.13  Distrib 8.0.40, for macos14 (arm64)
--
-- Host: localhost    Database: sys
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `order_id` int NOT NULL,
  `order_date` date NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `order_status` varchar(50) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `review_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `review_id` (`review_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`review_id`) REFERENCES `Review` (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,'2024-11-01',59.97,'Shipped','123 Main St','123 Main St',NULL),(2,'2024-11-02',39.99,'Pending','456 Oak St','456 Oak St',NULL),(3,'2024-11-03',59.99,'Shipped','789 Pine St','789 Pine St',NULL),(4,'2024-11-04',9.99,'Cancelled','321 Elm St','321 Elm St',NULL),(5,'2024-11-05',299.99,'Shipped','654 Spruce St','654 Spruce St',NULL),(6,'2024-11-04',892.77,'Shipped','Address 280','Address 280',NULL),(7,'2024-11-06',353.10,'Shipped','Address 260','Address 260',NULL),(8,'2024-11-15',151.80,'Shipped','Address 2774','Address 2774',NULL),(9,'2024-11-15',716.14,'Shipped','Address 184','Address 184',NULL),(10,'2024-11-07',876.40,'Shipped','Address 2960','Address 2960',NULL),(11,'2024-11-15',968.37,'Shipped','Address 67','Address 67',NULL),(12,'2024-11-01',488.96,'Shipped','Address 1860','Address 1860',NULL),(13,'2024-11-19',137.53,'Shipped','Address 1290','Address 1290',NULL),(14,'2024-11-02',898.02,'Shipped','Address 2669','Address 2669',NULL),(15,'2024-11-21',892.58,'Shipped','Address 2232','Address 2232',NULL),(16,'2024-11-08',47.62,'Shipped','Address 1964','Address 1964',NULL),(17,'2024-11-27',217.31,'Shipped','Address 225','Address 225',NULL),(18,'2024-11-06',851.83,'Shipped','Address 1374','Address 1374',NULL),(19,'2024-11-26',653.15,'Shipped','Address 2692','Address 2692',NULL),(20,'2024-11-20',463.49,'Shipped','Address 2002','Address 2002',NULL),(21,'2024-11-13',815.17,'Shipped','Address 501','Address 501',NULL),(22,'2024-11-01',158.80,'Shipped','Address 98','Address 98',NULL),(23,'2024-11-17',306.97,'Shipped','Address 357','Address 357',NULL),(24,'2024-11-08',195.49,'Shipped','Address 1227','Address 1227',NULL),(25,'2024-11-30',428.93,'Shipped','Address 482','Address 482',NULL),(26,'2024-11-28',362.67,'Shipped','Address 352','Address 352',NULL),(27,'2024-11-04',734.18,'Shipped','Address 2966','Address 2966',NULL),(28,'2024-11-19',729.51,'Shipped','Address 492','Address 492',NULL),(29,'2024-11-25',210.23,'Shipped','Address 1995','Address 1995',NULL),(30,'2024-11-01',707.27,'Shipped','Address 1129','Address 1129',NULL),(31,'2024-11-27',237.86,'Shipped','Address 2054','Address 2054',NULL),(32,'2024-11-26',345.02,'Shipped','Address 1457','Address 1457',NULL),(33,'2024-11-10',311.41,'Shipped','Address 1710','Address 1710',NULL),(34,'2024-11-02',235.75,'Shipped','Address 71','Address 71',NULL),(35,'2024-11-06',27.19,'Shipped','Address 2517','Address 2517',NULL),(36,'2024-11-06',172.25,'Shipped','Address 239','Address 239',NULL),(37,'2024-11-23',641.62,'Shipped','Address 2353','Address 2353',NULL),(38,'2024-11-24',400.48,'Shipped','Address 1409','Address 1409',NULL),(39,'2024-11-06',416.31,'Shipped','Address 2358','Address 2358',NULL),(40,'2024-11-04',643.36,'Shipped','Address 1581','Address 1581',NULL),(41,'2024-11-30',273.53,'Shipped','Address 2733','Address 2733',NULL),(42,'2024-11-30',865.74,'Shipped','Address 1462','Address 1462',NULL),(43,'2024-11-30',642.47,'Shipped','Address 43','Address 43',NULL),(44,'2024-11-12',409.23,'Shipped','Address 1408','Address 1408',NULL),(45,'2024-11-27',750.97,'Shipped','Address 2574','Address 2574',NULL),(46,'2024-11-13',575.42,'Shipped','Address 2388','Address 2388',NULL),(47,'2024-11-30',306.04,'Shipped','Address 1429','Address 1429',NULL),(48,'2024-11-07',365.56,'Shipped','Address 49','Address 49',NULL),(49,'2024-11-07',925.83,'Shipped','Address 2394','Address 2394',NULL),(50,'2024-11-09',505.54,'Shipped','Address 406','Address 406',NULL),(51,'2024-11-27',253.43,'Shipped','Address 2462','Address 2462',NULL),(52,'2024-11-16',34.54,'Shipped','Address 822','Address 822',NULL),(53,'2024-11-04',44.86,'Shipped','Address 19','Address 19',NULL),(54,'2024-11-22',170.07,'Shipped','Address 2872','Address 2872',NULL),(55,'2024-11-07',100.42,'Shipped','Address 742','Address 742',NULL),(56,'2024-11-18',439.68,'Shipped','Address 2590','Address 2590',NULL),(57,'2024-11-15',384.04,'Shipped','Address 744','Address 744',NULL),(58,'2024-11-14',974.61,'Shipped','Address 196','Address 196',NULL),(59,'2024-11-30',332.43,'Shipped','Address 807','Address 807',NULL),(60,'2024-11-08',44.53,'Shipped','Address 1873','Address 1873',NULL),(61,'2024-11-04',425.57,'Shipped','Address 340','Address 340',NULL),(62,'2024-11-06',890.74,'Shipped','Address 641','Address 641',NULL),(63,'2024-11-07',905.46,'Shipped','Address 464','Address 464',NULL),(64,'2024-11-21',417.07,'Shipped','Address 1759','Address 1759',NULL),(65,'2024-11-18',32.27,'Shipped','Address 1894','Address 1894',NULL),(66,'2024-11-14',987.21,'Shipped','Address 64','Address 64',NULL),(67,'2024-11-25',92.80,'Shipped','Address 2415','Address 2415',NULL),(68,'2024-11-23',592.57,'Shipped','Address 2922','Address 2922',NULL),(69,'2024-11-04',187.62,'Shipped','Address 1201','Address 1201',NULL),(70,'2024-11-02',266.73,'Shipped','Address 2902','Address 2902',NULL),(71,'2024-11-25',735.87,'Shipped','Address 55','Address 55',NULL),(72,'2024-11-19',194.22,'Shipped','Address 619','Address 619',NULL),(73,'2024-11-20',511.17,'Shipped','Address 62','Address 62',NULL),(74,'2024-11-21',407.45,'Shipped','Address 2811','Address 2811',NULL),(75,'2024-11-06',356.72,'Shipped','Address 1868','Address 1868',NULL),(76,'2024-11-15',172.80,'Shipped','Address 2727','Address 2727',NULL),(77,'2024-11-24',172.30,'Shipped','Address 281','Address 281',NULL),(78,'2024-11-07',92.13,'Shipped','Address 147','Address 147',NULL),(79,'2024-11-29',457.98,'Shipped','Address 1090','Address 1090',NULL),(80,'2024-11-18',703.70,'Shipped','Address 1934','Address 1934',NULL),(81,'2024-11-24',584.42,'Shipped','Address 880','Address 880',NULL),(82,'2024-11-24',932.21,'Shipped','Address 644','Address 644',NULL),(83,'2024-11-04',318.33,'Shipped','Address 1734','Address 1734',NULL),(84,'2024-11-25',999.34,'Shipped','Address 2559','Address 2559',NULL),(85,'2024-11-21',364.11,'Shipped','Address 1532','Address 1532',NULL),(86,'2024-11-21',76.78,'Shipped','Address 500','Address 500',NULL),(87,'2024-11-04',140.02,'Shipped','Address 2993','Address 2993',NULL),(88,'2024-11-30',285.93,'Shipped','Address 1946','Address 1946',NULL),(89,'2024-11-03',536.22,'Shipped','Address 254','Address 254',NULL),(90,'2024-11-26',618.54,'Shipped','Address 829','Address 829',NULL),(91,'2024-11-27',422.15,'Shipped','Address 1510','Address 1510',NULL),(92,'2024-11-24',757.55,'Shipped','Address 891','Address 891',NULL),(93,'2024-11-10',81.77,'Shipped','Address 1256','Address 1256',NULL),(94,'2024-11-08',541.17,'Shipped','Address 1382','Address 1382',NULL),(95,'2024-11-14',679.59,'Shipped','Address 2917','Address 2917',NULL),(96,'2024-11-30',957.19,'Shipped','Address 658','Address 658',NULL),(97,'2024-11-18',976.04,'Shipped','Address 1701','Address 1701',NULL),(98,'2024-11-29',748.52,'Shipped','Address 2021','Address 2021',NULL),(99,'2024-11-24',576.89,'Shipped','Address 80','Address 80',NULL),(100,'2024-11-22',74.01,'Shipped','Address 1107','Address 1107',NULL),(101,'2024-11-05',235.64,'Shipped','Address 517','Address 517',NULL),(102,'2024-11-12',641.56,'Shipped','Address 1860','Address 1860',NULL),(103,'2024-11-15',976.34,'Shipped','Address 605','Address 605',NULL),(104,'2024-11-17',169.20,'Shipped','Address 1508','Address 1508',NULL),(105,'2024-11-09',424.77,'Shipped','Address 1490','Address 1490',NULL),(106,'2024-11-09',543.15,'Shipped','Address 515','Address 515',NULL),(107,'2024-11-14',218.73,'Shipped','Address 1206','Address 1206',NULL),(108,'2024-11-09',498.13,'Shipped','Address 999','Address 999',NULL),(109,'2024-11-15',566.77,'Shipped','Address 2142','Address 2142',NULL),(110,'2024-11-03',236.21,'Shipped','Address 2689','Address 2689',NULL),(111,'2024-11-27',897.28,'Shipped','Address 2481','Address 2481',NULL),(112,'2024-11-01',408.92,'Shipped','Address 1074','Address 1074',NULL),(113,'2024-11-11',91.93,'Shipped','Address 107','Address 107',NULL),(114,'2024-11-19',713.10,'Shipped','Address 1591','Address 1591',NULL),(115,'2024-11-18',901.27,'Shipped','Address 57','Address 57',NULL),(116,'2024-11-03',419.73,'Shipped','Address 330','Address 330',NULL),(117,'2024-11-01',154.74,'Shipped','Address 709','Address 709',NULL),(118,'2024-11-24',529.42,'Shipped','Address 1036','Address 1036',NULL),(119,'2024-11-21',848.77,'Shipped','Address 449','Address 449',NULL),(120,'2024-11-23',202.07,'Shipped','Address 2483','Address 2483',NULL),(121,'2024-11-03',936.59,'Shipped','Address 1692','Address 1692',NULL),(122,'2024-11-24',684.90,'Shipped','Address 1274','Address 1274',NULL),(123,'2024-11-22',455.58,'Shipped','Address 1154','Address 1154',NULL),(124,'2024-11-01',680.52,'Shipped','Address 223','Address 223',NULL),(125,'2024-11-17',134.26,'Shipped','Address 2907','Address 2907',NULL),(126,'2024-11-15',121.38,'Shipped','Address 57','Address 57',NULL),(127,'2024-11-11',530.77,'Shipped','Address 2014','Address 2014',NULL),(128,'2024-11-06',218.48,'Shipped','Address 2740','Address 2740',NULL),(129,'2024-11-22',670.99,'Shipped','Address 1126','Address 1126',NULL),(130,'2024-11-02',406.85,'Shipped','Address 2985','Address 2985',NULL),(131,'2024-11-11',498.98,'Shipped','Address 178','Address 178',NULL),(132,'2024-11-22',23.95,'Shipped','Address 425','Address 425',NULL),(133,'2024-11-22',337.79,'Shipped','Address 2330','Address 2330',NULL),(134,'2024-11-07',266.35,'Shipped','Address 1861','Address 1861',NULL),(135,'2024-11-21',317.65,'Shipped','Address 1825','Address 1825',NULL),(136,'2024-11-27',971.45,'Shipped','Address 489','Address 489',NULL),(137,'2024-11-16',497.23,'Shipped','Address 100','Address 100',NULL),(138,'2024-11-21',54.72,'Shipped','Address 1676','Address 1676',NULL),(139,'2024-11-20',761.97,'Shipped','Address 1000','Address 1000',NULL),(140,'2024-11-02',20.52,'Shipped','Address 542','Address 542',NULL),(141,'2024-11-30',150.41,'Shipped','Address 207','Address 207',NULL),(142,'2024-11-12',880.57,'Shipped','Address 2195','Address 2195',NULL),(143,'2024-11-13',591.63,'Shipped','Address 420','Address 420',NULL),(144,'2024-11-13',754.22,'Shipped','Address 2339','Address 2339',NULL),(145,'2024-11-20',456.40,'Shipped','Address 1967','Address 1967',NULL),(146,'2024-11-30',293.40,'Shipped','Address 1271','Address 1271',NULL),(147,'2024-11-28',583.69,'Shipped','Address 2650','Address 2650',NULL),(148,'2024-11-07',542.69,'Shipped','Address 2192','Address 2192',NULL),(149,'2024-11-26',742.57,'Shipped','Address 650','Address 650',NULL),(150,'2024-11-11',998.53,'Shipped','Address 2361','Address 2361',NULL),(151,'2024-11-24',581.33,'Shipped','Address 2643','Address 2643',NULL),(152,'2024-11-20',46.85,'Shipped','Address 1806','Address 1806',NULL),(153,'2024-11-16',959.74,'Shipped','Address 1572','Address 1572',NULL),(154,'2024-11-12',169.58,'Shipped','Address 2005','Address 2005',NULL),(155,'2024-11-01',860.42,'Shipped','Address 2958','Address 2958',NULL),(156,'2024-11-20',226.59,'Shipped','Address 1873','Address 1873',NULL),(157,'2024-11-25',620.45,'Shipped','Address 2333','Address 2333',NULL),(158,'2024-11-17',368.34,'Shipped','Address 1132','Address 1132',NULL),(159,'2024-11-22',690.16,'Shipped','Address 2521','Address 2521',NULL),(160,'2024-11-15',690.46,'Shipped','Address 2259','Address 2259',NULL),(161,'2024-11-23',522.39,'Shipped','Address 902','Address 902',NULL),(162,'2024-11-09',912.83,'Shipped','Address 1649','Address 1649',NULL),(163,'2024-11-16',298.84,'Shipped','Address 551','Address 551',NULL),(164,'2024-11-25',123.63,'Shipped','Address 597','Address 597',NULL),(165,'2024-11-14',810.73,'Shipped','Address 1707','Address 1707',NULL),(166,'2024-11-12',758.73,'Shipped','Address 1045','Address 1045',NULL),(167,'2024-11-14',760.85,'Shipped','Address 1958','Address 1958',NULL),(168,'2024-11-11',713.30,'Shipped','Address 2471','Address 2471',NULL),(169,'2024-11-07',226.31,'Shipped','Address 2276','Address 2276',NULL),(170,'2024-11-05',684.27,'Shipped','Address 1317','Address 1317',NULL),(171,'2024-11-16',57.43,'Shipped','Address 1575','Address 1575',NULL),(172,'2024-11-01',964.18,'Shipped','Address 1714','Address 1714',NULL),(173,'2024-11-16',284.93,'Shipped','Address 597','Address 597',NULL),(174,'2024-11-09',966.77,'Shipped','Address 550','Address 550',NULL),(175,'2024-11-13',553.11,'Shipped','Address 2102','Address 2102',NULL),(176,'2024-11-04',485.62,'Shipped','Address 2740','Address 2740',NULL),(177,'2024-11-06',530.28,'Shipped','Address 2890','Address 2890',NULL),(178,'2024-11-25',304.92,'Shipped','Address 40','Address 40',NULL),(179,'2024-11-19',273.10,'Shipped','Address 2538','Address 2538',NULL),(180,'2024-11-16',29.75,'Shipped','Address 2384','Address 2384',NULL),(181,'2024-11-14',891.06,'Shipped','Address 93','Address 93',NULL),(182,'2024-11-14',41.54,'Shipped','Address 2032','Address 2032',NULL),(183,'2024-11-10',615.91,'Shipped','Address 1336','Address 1336',NULL),(184,'2024-11-09',157.87,'Shipped','Address 1272','Address 1272',NULL),(185,'2024-11-03',962.05,'Shipped','Address 2678','Address 2678',NULL),(186,'2024-11-19',128.05,'Shipped','Address 2253','Address 2253',NULL),(187,'2024-11-17',612.87,'Shipped','Address 580','Address 580',NULL),(188,'2024-11-13',292.25,'Shipped','Address 1993','Address 1993',NULL),(189,'2024-11-22',840.21,'Shipped','Address 740','Address 740',NULL),(190,'2024-11-11',187.18,'Shipped','Address 337','Address 337',NULL),(191,'2024-11-08',893.19,'Shipped','Address 2006','Address 2006',NULL),(192,'2024-11-08',731.04,'Shipped','Address 1049','Address 1049',NULL),(193,'2024-11-01',911.65,'Shipped','Address 2259','Address 2259',NULL),(194,'2024-11-16',57.34,'Shipped','Address 1703','Address 1703',NULL),(195,'2024-11-29',117.34,'Shipped','Address 249','Address 249',NULL),(196,'2024-11-23',432.54,'Shipped','Address 804','Address 804',NULL),(197,'2024-11-26',518.13,'Shipped','Address 529','Address 529',NULL),(198,'2024-11-14',900.39,'Shipped','Address 1277','Address 1277',NULL),(199,'2024-11-12',93.54,'Shipped','Address 69','Address 69',NULL),(200,'2024-11-19',209.64,'Shipped','Address 1788','Address 1788',NULL),(201,'2024-11-15',585.12,'Shipped','Address 1734','Address 1734',NULL),(202,'2024-11-24',252.65,'Shipped','Address 2687','Address 2687',NULL),(203,'2024-11-17',206.87,'Shipped','Address 1300','Address 1300',NULL),(204,'2024-11-17',363.51,'Shipped','Address 2476','Address 2476',NULL),(205,'2024-11-01',369.08,'Shipped','Address 376','Address 376',NULL),(206,'2024-11-19',145.61,'Shipped','Address 295','Address 295',NULL),(207,'2024-11-02',837.03,'Shipped','Address 463','Address 463',NULL),(208,'2024-11-25',896.36,'Shipped','Address 1226','Address 1226',NULL),(209,'2024-11-14',778.39,'Shipped','Address 681','Address 681',NULL),(210,'2024-11-19',856.68,'Shipped','Address 2961','Address 2961',NULL),(211,'2024-11-15',364.86,'Shipped','Address 2269','Address 2269',NULL),(212,'2024-11-22',780.91,'Shipped','Address 342','Address 342',NULL),(213,'2024-11-15',516.55,'Shipped','Address 939','Address 939',NULL),(214,'2024-11-12',73.26,'Shipped','Address 1297','Address 1297',NULL),(215,'2024-11-03',541.02,'Shipped','Address 2543','Address 2543',NULL),(216,'2024-11-20',230.23,'Shipped','Address 243','Address 243',NULL),(217,'2024-11-26',820.97,'Shipped','Address 280','Address 280',NULL),(218,'2024-11-04',989.17,'Shipped','Address 2495','Address 2495',NULL),(219,'2024-11-17',856.82,'Shipped','Address 1151','Address 1151',NULL),(220,'2024-11-30',216.21,'Shipped','Address 1199','Address 1199',NULL),(221,'2024-11-12',744.21,'Shipped','Address 1305','Address 1305',NULL),(222,'2024-11-20',276.31,'Shipped','Address 2076','Address 2076',NULL),(223,'2024-11-24',510.02,'Shipped','Address 219','Address 219',NULL),(224,'2024-11-04',699.50,'Shipped','Address 2207','Address 2207',NULL),(225,'2024-11-03',929.61,'Shipped','Address 2200','Address 2200',NULL),(226,'2024-11-01',690.88,'Shipped','Address 1462','Address 1462',NULL),(227,'2024-11-22',830.98,'Shipped','Address 134','Address 134',NULL),(228,'2024-11-12',352.23,'Shipped','Address 2358','Address 2358',NULL),(229,'2024-11-23',228.52,'Shipped','Address 1242','Address 1242',NULL),(230,'2024-11-18',825.42,'Shipped','Address 2778','Address 2778',NULL),(231,'2024-11-28',513.56,'Shipped','Address 2307','Address 2307',NULL),(232,'2024-11-01',477.71,'Shipped','Address 2997','Address 2997',NULL),(233,'2024-11-07',304.11,'Shipped','Address 1040','Address 1040',NULL),(234,'2024-11-26',214.21,'Shipped','Address 2309','Address 2309',NULL),(235,'2024-11-11',935.74,'Shipped','Address 2088','Address 2088',NULL),(236,'2024-11-25',394.38,'Shipped','Address 439','Address 439',NULL),(237,'2024-11-17',157.09,'Shipped','Address 2965','Address 2965',NULL),(238,'2024-11-13',296.02,'Shipped','Address 728','Address 728',NULL),(239,'2024-11-11',763.32,'Shipped','Address 2129','Address 2129',NULL),(240,'2024-11-15',308.50,'Shipped','Address 591','Address 591',NULL),(241,'2024-11-26',736.93,'Shipped','Address 2653','Address 2653',NULL),(242,'2024-11-06',947.02,'Shipped','Address 1556','Address 1556',NULL),(243,'2024-11-16',787.64,'Shipped','Address 2848','Address 2848',NULL),(244,'2024-11-28',137.54,'Shipped','Address 468','Address 468',NULL),(245,'2024-11-19',284.89,'Shipped','Address 1156','Address 1156',NULL),(246,'2024-11-08',257.95,'Shipped','Address 1976','Address 1976',NULL),(247,'2024-11-28',656.62,'Shipped','Address 147','Address 147',NULL),(248,'2024-11-30',267.21,'Shipped','Address 820','Address 820',NULL),(249,'2024-11-26',733.69,'Shipped','Address 1883','Address 1883',NULL),(250,'2024-11-20',481.73,'Shipped','Address 1762','Address 1762',NULL),(251,'2024-11-25',157.29,'Shipped','Address 2508','Address 2508',NULL),(252,'2024-11-03',665.35,'Shipped','Address 1283','Address 1283',NULL),(253,'2024-11-17',288.16,'Shipped','Address 206','Address 206',NULL),(254,'2024-11-09',62.14,'Shipped','Address 1797','Address 1797',NULL),(255,'2024-11-01',882.74,'Shipped','Address 1735','Address 1735',NULL),(256,'2024-11-19',613.83,'Shipped','Address 1648','Address 1648',NULL),(257,'2024-11-14',483.61,'Shipped','Address 718','Address 718',NULL),(258,'2024-11-21',212.90,'Shipped','Address 1055','Address 1055',NULL),(259,'2024-11-24',719.69,'Shipped','Address 2178','Address 2178',NULL),(260,'2024-11-24',215.95,'Shipped','Address 1225','Address 1225',NULL),(261,'2024-11-18',111.98,'Shipped','Address 2244','Address 2244',NULL),(262,'2024-11-11',781.53,'Shipped','Address 1507','Address 1507',NULL),(263,'2024-11-11',334.54,'Shipped','Address 1189','Address 1189',NULL),(264,'2024-11-18',974.08,'Shipped','Address 725','Address 725',NULL),(265,'2024-11-24',195.64,'Shipped','Address 2850','Address 2850',NULL),(266,'2024-11-18',136.50,'Shipped','Address 1322','Address 1322',NULL),(267,'2024-11-05',461.60,'Shipped','Address 608','Address 608',NULL),(268,'2024-11-16',786.69,'Shipped','Address 648','Address 648',NULL),(269,'2024-11-27',745.46,'Shipped','Address 1549','Address 1549',NULL),(270,'2024-11-11',935.23,'Shipped','Address 538','Address 538',NULL),(271,'2024-11-15',642.12,'Shipped','Address 2123','Address 2123',NULL),(272,'2024-11-28',60.88,'Shipped','Address 2907','Address 2907',NULL),(273,'2024-11-19',369.92,'Shipped','Address 1184','Address 1184',NULL),(274,'2024-11-02',23.19,'Shipped','Address 1912','Address 1912',NULL),(275,'2024-11-03',157.55,'Shipped','Address 685','Address 685',NULL),(276,'2024-11-23',503.73,'Shipped','Address 2058','Address 2058',NULL),(277,'2024-11-09',135.27,'Shipped','Address 389','Address 389',NULL),(278,'2024-11-20',732.38,'Shipped','Address 1667','Address 1667',NULL),(279,'2024-11-30',537.32,'Shipped','Address 1232','Address 1232',NULL),(280,'2024-11-06',892.48,'Shipped','Address 1728','Address 1728',NULL),(281,'2024-11-15',175.05,'Shipped','Address 2473','Address 2473',NULL),(282,'2024-11-13',919.09,'Shipped','Address 196','Address 196',NULL),(283,'2024-11-12',607.68,'Shipped','Address 2007','Address 2007',NULL),(284,'2024-11-17',587.07,'Shipped','Address 2791','Address 2791',NULL),(285,'2024-11-05',428.22,'Shipped','Address 2844','Address 2844',NULL),(286,'2024-11-03',511.76,'Shipped','Address 653','Address 653',NULL),(287,'2024-11-15',125.21,'Shipped','Address 2933','Address 2933',NULL),(288,'2024-11-30',486.06,'Shipped','Address 2906','Address 2906',NULL),(289,'2024-11-14',629.56,'Shipped','Address 374','Address 374',NULL),(290,'2024-11-16',464.67,'Shipped','Address 1562','Address 1562',NULL),(291,'2024-11-03',895.28,'Shipped','Address 984','Address 984',NULL),(292,'2024-11-12',745.46,'Shipped','Address 81','Address 81',NULL),(293,'2024-11-07',148.04,'Shipped','Address 1585','Address 1585',NULL),(294,'2024-11-16',428.37,'Shipped','Address 1126','Address 1126',NULL),(295,'2024-11-25',498.46,'Shipped','Address 2399','Address 2399',NULL),(296,'2024-11-11',543.24,'Shipped','Address 2675','Address 2675',NULL),(297,'2024-11-28',284.75,'Shipped','Address 2680','Address 2680',NULL),(298,'2024-11-21',386.31,'Shipped','Address 2808','Address 2808',NULL),(299,'2024-11-16',635.81,'Shipped','Address 2118','Address 2118',NULL),(300,'2024-11-04',734.25,'Shipped','Address 1581','Address 1581',NULL);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-22 19:27:46