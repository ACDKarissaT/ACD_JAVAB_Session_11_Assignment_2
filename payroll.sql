-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: payroll
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
-- Table structure for table `balance`
--

DROP TABLE IF EXISTS `balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `balance` (
  `idBalance` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) DEFAULT NULL,
  `Bank_Balance` decimal(10,2) DEFAULT NULL,
  `Loan_Amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idBalance`),
  KEY `emp_id_idx` (`emp_id`),
  CONSTRAINT `emp_id` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balance`
--

LOCK TABLES `balance` WRITE;
/*!40000 ALTER TABLE `balance` DISABLE KEYS */;
INSERT INTO `balance` VALUES (2,1,60.00,0.00),(3,15,67.00,33.00),(5,9,78.00,40.00),(31,2,44.00,43.00),(38,7,88.00,0.00),(39,12,60.00,91.00),(40,11,68.00,0.00),(50,13,26.00,0.00),(56,5,55.00,0.00),(60,10,10.00,29.00),(61,4,59.00,79.00),(69,6,56.00,62.00),(74,3,15.00,89.00),(76,8,79.00,67.00),(77,14,19.00,44.00);
/*!40000 ALTER TABLE `balance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `idDepartment` int(11) unsigned NOT NULL,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`idDepartment`),
  UNIQUE KEY `idDepartment_UNIQUE` (`idDepartment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'CSE'),(2,'HR');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(25) NOT NULL,
  `email` varchar(200) NOT NULL,
  `name_grade` varchar(45) NOT NULL,
  `join_date` date NOT NULL,
  `department_id` int(11) unsigned NOT NULL,
  `employee_phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `emp_id_UNIQUE` (`emp_id`),
  KEY `EMPL_DEP_REF_idx` (`department_id`),
  CONSTRAINT `EMPL_DEP_REF` FOREIGN KEY (`department_id`) REFERENCES `department` (`idDepartment`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Rob','zmillion0@ehow.com','Bengal vulture','2007-10-31',1,NULL),(2,'Rohim','rplatt1@goo.ne.jp','Vulture, turkey','2019-06-10',1,NULL),(3,'Robert','khardacre2@amazon.co.uk','Anaconda (unidentified)','2018-12-30',1,NULL),(4,'Bil','rpacitti3@google.com','Waterbuck, defassa','2018-09-13',1,NULL),(5,'John','fbelliard4@mapy.cz','Bear, american black','2019-08-15',1,NULL),(6,'Alex','djalland5@cdbaby.com','Rat, desert kangaroo','2018-10-06',1,NULL),(7,'Hari','thelgass6@plala.or.jp','Scaly-breasted lorikeet','2018-12-14',1,NULL),(8,'Daniel','jtetley7@skype.com','King vulture','2019-08-09',1,NULL),(9,'Igwe','arizzo8@bizjournals.com','Macaw, blue and yellow','2019-04-15',2,NULL),(10,'Karissa','mjaniemailc9@cdc.gov','Bohor reedbuck','2019-06-22',1,NULL),(11,'David','cpinckneya@npr.org','Short-beaked echidna','2019-03-12',1,NULL),(12,'Alice','bokieb@moonfruit.com','Asian water dragon','2019-06-06',1,NULL),(13,'Sarah','ssprionghallc@symantec.com','Seal, southern elephant','2019-07-14',2,NULL),(14,'Kate','jpentelowd@t-online.de','Falcon, peregrine','2019-03-09',1,NULL),(15,'CSEMP07001','llemonniere@php.net','Weaver, sociable','2019-02-12',1,NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary` (
  `Salaryid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) DEFAULT NULL,
  `base` decimal(10,2) DEFAULT NULL,
  `DA` decimal(10,2) DEFAULT NULL,
  `TA` decimal(10,2) DEFAULT NULL,
  `HRA` decimal(10,2) DEFAULT NULL,
  `TAX` decimal(10,2) DEFAULT NULL,
  `Gross` decimal(10,2) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  PRIMARY KEY (`Salaryid`),
  KEY `emp_id_for_idx` (`emp_id`),
  CONSTRAINT `emp_id_for` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=953 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (89,14,8000.00,93.00,46.00,48.00,35.00,25000.00,2019),(97,12,16.00,18.00,32.00,80.00,96.00,14.00,2019),(146,7,26.00,1.00,7.00,45.00,21.00,30.00,2019),(176,4,35.00,61.00,10.00,54.00,27.00,44.00,2019),(398,1,2.00,60.00,9.00,67.00,91.00,75.00,2019),(455,11,20.00,51.00,56.00,53.00,2.00,89.00,2019),(505,5,28.00,73.00,58.00,27.00,56.00,71.00,2019),(536,6,24.00,17.00,57.00,15.00,93.00,26.00,2019),(554,10,12.00,31.00,47.00,41.00,35.00,60.00,2019),(562,15,58.00,33.00,70.00,62.00,57.00,14.00,2019),(718,2,81.00,10.00,51.00,1.00,33.00,94.00,2019),(786,13,80.00,20.00,96.00,47.00,34.00,69.00,2019),(856,9,36.00,71.00,47.00,78.00,74.00,55.00,2019),(870,8,91.00,18.00,5.00,71.00,61.00,94.00,2019),(952,3,6.00,2.00,83.00,27.00,73.00,81.00,2019);
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_off`
--

DROP TABLE IF EXISTS `time_off`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_off` (
  `id_time_off` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) DEFAULT NULL,
  `Daysoff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_time_off`),
  KEY `emp_id_idx` (`emp_id`),
  CONSTRAINT `emp_id_off` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=857 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_off`
--

LOCK TABLES `time_off` WRITE;
/*!40000 ALTER TABLE `time_off` DISABLE KEYS */;
INSERT INTO `time_off` VALUES (118,13,91),(199,9,74),(254,4,32),(291,7,82),(305,14,41),(329,3,77),(352,15,47),(393,11,35),(433,12,92),(512,5,12),(571,1,9),(675,2,67),(807,10,42),(838,6,9),(856,8,31);
/*!40000 ALTER TABLE `time_off` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-23 19:00:51
