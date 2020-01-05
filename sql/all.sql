CREATE DATABASE  IF NOT EXISTS `product` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `product`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: product
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `burger`
--

DROP TABLE IF EXISTS `burger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `burger` (
  `ID` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(20) NOT NULL,
  `nofile` varchar(20) NOT NULL,
  `pathfile` varchar(20) NOT NULL,
  `ll` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `burger`
--

LOCK TABLES `burger` WRITE;
/*!40000 ALTER TABLE `burger` DISABLE KEYS */;
INSERT INTO `burger` VALUES (3,'厚片培根漢堡',70,'15','item','300'),(1,'招牌漢堡',80,'13','item','299'),(2,'煙熏雞蛋堡',60,'14','item','300'),(5,'薯餅滿福堡',50,'17','item','300'),(6,'豬肉滿福堡',70,'18','item','300'),(4,'鮪魚玉米堡',60,'16','item','300');
/*!40000 ALTER TABLE `burger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `no` int(20) NOT NULL,
  `nofile` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` int(255) NOT NULL,
  `price` int(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  `total_price` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'1','1','1',1,1,'1',1),(3,'3','item','起司蛋餅',8,60,'yolo',480),(4,'4','item','肉鬆蛋餅',1,60,'eric',60),(5,'6','item','蘿蔔糕',1,70,'eric',70),(6,'13','item','招牌漢堡',1,80,'0412',80);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counter` (
  `count` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES (74);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guestboard`
--

DROP TABLE IF EXISTS `guestboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guestboard` (
  `no` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  `mean` varchar(255) NOT NULL,
  `aa` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestboard`
--

LOCK TABLES `guestboard` WRITE;
/*!40000 ALTER TABLE `guestboard` DISABLE KEYS */;
INSERT INTO `guestboard` VALUES (1,'我','11','test','t','2020-01-03'),(2,'球','11','cp','往','2020-01-03'),(3,'你好','0831','安安','哈囉','2020-01-03'),(4,'123','test','123','13\r\n','2020-01-03'),(5,'酥酥酥','12345','哈囉','哈囉囉囉囉','2020-01-03'),(6,'132','11','123','test','2020-01-03'),(7,'vdfv','123456','dfv','dfv','2020-01-03'),(10,'test','eric','test','132','2019-12-29');
/*!40000 ALTER TABLE `guestboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guestbook`
--

DROP TABLE IF EXISTS `guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guestbook` (
  `no` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `mail` varchar(30) DEFAULT NULL,
  `subject` varchar(30) DEFAULT NULL,
  `content` text,
  `putdate` date DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestbook`
--

LOCK TABLES `guestbook` WRITE;
/*!40000 ALTER TABLE `guestbook` DISABLE KEYS */;
INSERT INTO `guestbook` VALUES (6,'test','tet','ete','tett','2019-12-04',NULL),(7,'test','tet','ete','tett','2019-12-04',NULL),(8,'test','ts','tet','etete','2019-12-04',NULL),(9,'test','ts','tet','etete','2019-12-04',NULL),(10,'test','ts','tet','etete','2019-12-04',NULL),(13,'測試','wwww','測試','測試','2019-12-04',NULL);
/*!40000 ALTER TABLE `guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hot`
--

DROP TABLE IF EXISTS `hot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hot` (
  `ID` int(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `nofile` varchar(20) DEFAULT NULL,
  `pathfile` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hot`
--

LOCK TABLES `hot` WRITE;
/*!40000 ALTER TABLE `hot` DISABLE KEYS */;
INSERT INTO `hot` VALUES (1,'招牌漢堡',80,'13','item'),(2,'厚片培根漢堡',70,'15','item'),(3,'薯餅滿福堡',50,'17','item'),(4,'肉鬆蛋餅',60,'4','item'),(5,'奶茶',50,'12','item'),(6,'玉米培根蛋餅',70,'1','item');
/*!40000 ALTER TABLE `hot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `name` varchar(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `pwdcheck` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `tel` int(255) NOT NULL DEFAULT '1',
  `email` varchar(255) NOT NULL,
  `rank` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('mm','0412','04120412','04120412','6666','man',6666,'mm@com.tw','2'),('123','12345','123','123','123131','man',12313231,'12313121@123132123','0'),('222','222','222','222','222','man',222,'222@com.tw','0'),('5','5','5','5','5','man',5,'5@G','0'),('curry','987654321','123456789','123456789','rgrgregr','man',1232165,'1g586r4g5rg45@gamil.com','0'),('ERIC','eric','1234','1234','1234','man',912345678,'eric@gmail.com','0');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `ID` int(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `nofile` varchar(20) DEFAULT NULL,
  `pathfile` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'玉米培根蛋餅',70,'1','item'),(2,'蔥抓餅',50,'2','item'),(3,'起司蛋餅',60,'3','item'),(4,'肉鬆蛋餅',60,'4','item'),(5,'蔥油蛋餅',60,'5','item'),(6,'蘿蔔糕',70,'6','item'),(7,'異國蔥抓餅',50,'7','item'),(8,'雙層肉蛋堡',100,'8','item'),(9,'雞塊',60,'9','item'),(10,'歐洲紅茶',30,'10','item'),(11,'清香綠茶',40,'11','item'),(12,'奶茶',50,'12','item'),(13,'招牌漢堡',80,'13','item'),(14,'煙熏雞蛋堡',60,'14','item'),(15,'厚片培根漢堡',70,'15','item'),(16,'鮪魚玉米堡',60,'16','item'),(17,'薯餅滿福堡',50,'17','item'),(18,'豬肉滿福堡',70,'18','item');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omelet`
--

DROP TABLE IF EXISTS `omelet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `omelet` (
  `ID` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(20) NOT NULL,
  `nofile` varchar(20) NOT NULL,
  `pathfile` varchar(20) NOT NULL,
  `ll` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omelet`
--

LOCK TABLES `omelet` WRITE;
/*!40000 ALTER TABLE `omelet` DISABLE KEYS */;
INSERT INTO `omelet` VALUES (1,'玉米培根蛋餅',70,'1','item','298'),(4,'肉鬆蛋餅',60,'4','item','300'),(2,'蔥抓餅',50,'2','item','300'),(5,'蔥油蛋餅',60,'5','item','300'),(6,'蘿蔔糕',70,'6','item','300'),(3,'起司蛋餅',60,'3','item','300');
/*!40000 ALTER TABLE `omelet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `no` int(11) NOT NULL,
  `nofile` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `id` varchar(255) NOT NULL,
  `buyer` varchar(20) NOT NULL,
  `payway` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'13','item','招牌漢堡',1,80,80,'eric','ERIC','貨到付款','1234'),(6,'1','item','玉米培根蛋餅',2,70,140,'0412','mm','貨到付款','6666'),(2,'8','item','雙層肉蛋堡',1,100,100,'0412','mm','貨到付款','6666');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `others`
--

DROP TABLE IF EXISTS `others`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `others` (
  `ID` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(20) NOT NULL,
  `nofile` varchar(20) NOT NULL,
  `pathfile` varchar(20) NOT NULL,
  `ll` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `others`
--

LOCK TABLES `others` WRITE;
/*!40000 ALTER TABLE `others` DISABLE KEYS */;
INSERT INTO `others` VALUES (6,'奶茶',50,'12','item','300'),(4,'歐洲紅茶',30,'10','item','300'),(5,'清香綠茶',40,'11','item','300'),(1,'異國蔥抓餅',50,'7','item','300'),(2,'雙層肉蛋堡',100,'8','item','299'),(3,'雞塊',60,'9','item','300');
/*!40000 ALTER TABLE `others` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'product'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-03 16:34:56
