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
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food` (
  `foodID` int NOT NULL AUTO_INCREMENT,
  `foodName` varchar(25) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `orderID` int DEFAULT NULL,
  `typeID` int DEFAULT NULL,
  `restaurantID` int DEFAULT NULL,
  PRIMARY KEY (`foodID`),
  KEY `orderID` (`orderID`),
  KEY `typeID` (`typeID`),
  KEY `restaurantID` (`restaurantID`),
  CONSTRAINT `food_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`),
  CONSTRAINT `food_ibfk_2` FOREIGN KEY (`typeID`) REFERENCES `menutype` (`typeID`),
  CONSTRAINT `food_ibfk_3` FOREIGN KEY (`restaurantID`) REFERENCES `restaurant` (`restaurantID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (1,'fried-chicken','Kng82DYY63i43','$4.90',1,1,3),(2,'spaghetti','Ere84ZCB14u41','$6.95',2,4,6),(3,'rice','Sue13RQG18w77','$8.29',3,4,5),(4,'noodles','Bcf34GBJ55d34','$5.68',4,4,6),(5,'pasta','Okl16EMR40e96','$8.75',5,3,2),(6,'springrolls','Vsd42JIA32i45','$7.89',6,2,2),(7,'pizza','Qsi16TOF78d26','$6.49',7,4,5),(8,'pho','Tut73NET65c63','$3.59',8,4,6),(9,'sandwich','Dhb25EOI15q79','$4.82',9,3,3),(10,'burger','Alk94ORL41w34','$1.99',10,2,2);
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-15 21:51:55
