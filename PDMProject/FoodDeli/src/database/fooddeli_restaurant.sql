CREATE DATABASE  IF NOT EXISTS `fooddeli` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fooddeli`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fooddeli
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurantID` int NOT NULL AUTO_INCREMENT,
  `address` varchar(50) DEFAULT NULL,
  `contact_no` varchar(50) DEFAULT NULL,
  `restName` varchar(50) DEFAULT NULL,
  `adminID` int DEFAULT NULL,
  PRIMARY KEY (`restaurantID`),
  KEY `adminID` (`adminID`),
  CONSTRAINT `restaurant_ibfk_1` FOREIGN KEY (`adminID`) REFERENCES `adminis` (`adminID`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'864-4077 Magna. Avenue','(522) 363-0751','Sophia',5),(2,'Ap #625-1289 Elit. St.','(473) 711-4456','Addison',4),(3,'969-2557 Aliquet Street','(488) 255-3153','Regina',6),(4,'Ap #549-2262 Sed St.','(498) 414-0752','Patricia',4),(5,'2641 Facilisi. Avenue','(573) 678-3270','Jennifer',2),(6,'600-3148 Mi. Avenue','(883) 644-7573','Wylie',4),(7,'6246 Ornare Avenue','(157) 364-7274','Wayne',2),(8,'Ap #421-9303 Sagittis. Ave','(354) 285-1679','Sybil',5),(9,'377-1635 At, Road','(727) 836-1878','Susan',5),(10,'P.O. Box 454, 3652 Consectetuer Av.','(774) 335-8297','Drake',4);
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-15 21:51:54
