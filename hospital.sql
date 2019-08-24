-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `beds`
--

DROP TABLE IF EXISTS `beds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beds` (
  `bed_number` int(11) NOT NULL,
  `ward_number` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beds`
--

LOCK TABLES `beds` WRITE;
/*!40000 ALTER TABLE `beds` DISABLE KEYS */;
INSERT INTO `beds` VALUES (123,5,'not allotted',1),(456,13,'allotted',2),(789,13,'allotted',3),(12,13,'allotted',4),(89,13,'not alloted',5),(832,13,'allotted',6),(352,10,'not allotted',7),(87,10,'allotted',8),(943,10,'not allotted',9),(547,10,'not allotted',10),(823,10,'allotted',11),(318,10,'not allotted',12);
/*!40000 ALTER TABLE `beds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `specialization` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'XYZ','xtra spec'),(2,'dasher','hauling'),(3,'prancer','hauling'),(4,'donner','hauling'),(5,'vixen','hauling'),(6,'ABC','super surgeon');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_registration`
--

DROP TABLE IF EXISTS `patient_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_registration` (
  `registration_number` varchar(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `bed_number` int(11) DEFAULT NULL,
  `referral_doctor` int(11) DEFAULT NULL,
  PRIMARY KEY (`registration_number`),
  KEY `patient_registration_FK` (`bed_number`),
  KEY `patient_registration_FK_1` (`referral_doctor`),
  CONSTRAINT `patient_registration_FK` FOREIGN KEY (`bed_number`) REFERENCES `beds` (`id`),
  CONSTRAINT `patient_registration_FK_1` FOREIGN KEY (`referral_doctor`) REFERENCES `doctors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_registration`
--

LOCK TABLES `patient_registration` WRITE;
/*!40000 ALTER TABLE `patient_registration` DISABLE KEYS */;
INSERT INTO `patient_registration` VALUES ('PT001','Bill','Potomac','male',21,'2001-12-11',1,2),('PT002','Tom','Potomac','male',73,'2001-12-11',9,2),('PT003','Jane','Potomac','female',34,'2003-12-11',3,4),('PT004','Bob','Blari','male',17,'2003-12-11',4,1),('PT005','Elizabeth','Peachtree','female',36,'2009-12-17',10,1),('PT011','Ram','Warry','male',45,'2009-12-11',6,1),('PT014','James','GHn','male',20,'2010-12-11',8,3),('PT023','Mike','Monson','male',89,'2006-12-11',2,6);
/*!40000 ALTER TABLE `patient_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_name` varchar(40) DEFAULT NULL,
  `test_number` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `results` varchar(50) DEFAULT NULL,
  `referral_doctor` int(11) DEFAULT NULL,
  `patient_reg_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tests_FK` (`referral_doctor`),
  KEY `tests_FK_1` (`patient_reg_number`),
  CONSTRAINT `tests_FK` FOREIGN KEY (`referral_doctor`) REFERENCES `doctors` (`id`),
  CONSTRAINT `tests_FK_1` FOREIGN KEY (`patient_reg_number`) REFERENCES `patient_registration` (`registration_number`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` VALUES (1,'blood test',1,'2008-07-20','normal',3,'PT001'),(2,'blood test',1,'2008-07-20','dying',1,'PT002'),(3,'blood test',1,'2009-07-21','not dying',6,'PT002');
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-23 19:01:56
