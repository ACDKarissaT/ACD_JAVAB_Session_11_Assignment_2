-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bankdb
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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `account_number` varchar(45) NOT NULL,
  `account_type` text NOT NULL,
  `date_of_creation` date NOT NULL,
  `account_balance` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`account_number`),
  UNIQUE KEY `account_number_UNIQUE` (`account_number`),
  KEY `ACC_CUSTOMER_REF_idx` (`customer_id`),
  CONSTRAINT `ACC_CUSTOMER_REF` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('1','savings','2019-09-18',5135.05,1),('10','savings','2019-05-10',35184.15,10),('11','monthly','2018-01-12',351,11),('12','savings','2008-03-07',38548.15,12),('13','monthly','2019-09-18',3581.11,13),('14','savings','2019-05-10',3854.44,14),('15','savings','2017-03-07',384.14,15),('16','monthly','2019-09-18',5843.15,16),('17','savings','2017-03-07',35814.15,17),('18','monthly','2018-01-12',844.1,18),('19','savings','2017-03-07',584.44,19),('2','savings','2018-01-12',368514.21,2),('20','monthly','2017-03-07',843.11,20),('3','savings','2017-07-05',843.41,3),('4','fixed','2019-09-18',51358,4),('5','monthly','2019-05-10',546.15,5),('6','savings','2008-01-12',516.35,6),('7','monthly','2019-05-10',6384.51,7),('8','savings','2019-09-18',513.15,8),('9','monthly','2018-01-12',3514.13,9),('TU001','savings','2019-09-18',3000.45,21);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` text NOT NULL,
  `customer_address` text NOT NULL,
  `customer_age` int(11) NOT NULL,
  `customer_contactNumber` text NOT NULL,
  `customer_email` text NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_id_UNIQUE` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Aditya','9830 Mayfair Court',25,'404-789-6747','Aditya@gmail.com'),(2,'Alex','5 Wintergreen Avenue ',15,'546-615-5445','Alex@gmail.com'),(3,'Ben','76 Valley Farms Ave.',85,'354-684-6518','Ben@gmail.com'),(4,'Mark','9151 North Monroe Ave.',24,'351-651-6516','Mark@gmail.com'),(5,'Hari','26 Williams St. ',65,'651-651-6541','Hari@gmail.com'),(6,'Karissa','679 Augusta Lane ',21,'812-183-5615','Karissa@gmail.com'),(7,'Cameron','152 Strawberry St. ',23,'183-584-1335','Cameron@gmail.com'),(8,'Daniel','518 Depot Lane ',25,'185-651-3513','Daniel@gmail.com'),(9,'Zair','988 Annadale Ave. ',28,'266-162-1354','Zair@gmail.com'),(10,'Rahib','9777 Poor House Rd. ',31,'138-984-3183','Rahib@gmail.com'),(11,'Tom','2 Hill Field Dr. ',38,'135-483-3874','Tom@gmail.com'),(12,'Luis','27 Atlantic St. ',30,'123-135-4683','Luis@gmail.com'),(13,'Jose','7681 Lookout Street ',50,'415-435-3518','Jose@gmail.com'),(14,'Pedro','9 Ridgewood St. ',61,'115-143-4386','Pedro@gmail.com'),(15,'Phil','137 Academy Drive',21,'135-796-4684','Phil@gmail.com'),(16,'Sarah','7359 County Dr. ',22,'468-358-6348','Sarah@gmail.com'),(17,'Betty','75 Griffin Street ',34,'486-438-6384','Betty@gmail.com'),(18,'Tina','304 West Pierce Ave. ',25,'346-483-4322','Tina@gmail.com'),(19,'Patricia','736 Military Court ',75,'153-483-2355','Patricia@gmail.com'),(20,'Mandy','5 Circle St. ',18,'153-477-4788','Mandy@gmail.com'),(21,'ABC','3 T Street',20,'123-456-7890','kat@gmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans`
--

DROP TABLE IF EXISTS `loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loans` (
  `loan_id` int(11) NOT NULL,
  `loan_amount` double NOT NULL,
  `loan_date` text NOT NULL,
  `account_id` varchar(45) NOT NULL,
  PRIMARY KEY (`loan_id`),
  UNIQUE KEY `loan_id_UNIQUE` (`loan_id`),
  KEY `LOAN_ACCOUNT_REF_idx` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans`
--

LOCK TABLES `loans` WRITE;
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
INSERT INTO `loans` VALUES (1,50001,'Aug-19-2018','1'),(2,3000,'Feb-07-2019','10');
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `transaction_amount` int(11) NOT NULL,
  `action` text NOT NULL,
  `transaction_date` text NOT NULL,
  `transaction_account` varchar(45) NOT NULL,
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `transaction_id_UNIQUE` (`transaction_id`),
  KEY `TRAN_ACCOUNT_REF_idx` (`transaction_account`),
  CONSTRAINT `TRAN_ACCOUNT_REF` FOREIGN KEY (`transaction_account`) REFERENCES `accounts` (`account_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,50000,'withdraw','20-Jan-08','12'),(2,20000,'deposit','20-Jan-08','12'),(3,160000,'deposit','12-Apr-08','3'),(4,250000,'withdraw','15-Jun-08','14'),(5,130000,'deposit','1-Mar-08','13'),(6,458000,'withdraw','12-Apr-08','11'),(7,3628000,'withdraw','31-Jul-08','6'),(8,154823,'deposit','15-Jun-08','1'),(9,875642,'withdraw','20-Jan-08','2'),(10,852365,'withdraw','12-Apr-08','8'),(11,516457,'deposit','15-Jun-08','9'),(12,152645,'withdraw','1-Mar-08','15'),(13,254265,'deposit','12-Apr-08','11'),(14,652365,'deposit','31-Jul-08','17'),(15,485745,'withdraw','15-Jun-08','19'),(16,1238543,'deposit','15-Jun-08','20'),(17,653513,'deposit','28-Aug-08','16'),(18,20542,'deposit','20-Jan-08','18'),(19,30123,'withdraw','21-Dec-08','7'),(20,62453,'deposit','15-Feb-08','3'),(21,2513546,'deposit','28-Aug-08','5'),(22,95362,'deposit','28-Aug-08','4'),(23,200230,'deposit','28-Aug-08','10'),(24,12032,'withdraw','29-Aug-08','10'),(25,25026,'deposit','15-Jun-08','2'),(26,42135,'deposit','31-Jul-08','3'),(27,589654,'withdraw','28-Aug-08','15'),(28,23654,'deposit','28-Aug-08','2'),(29,36523,'withdraw','28-Aug-08','14'),(30,752654,'withdraw','28-Aug-08','13'),(31,236521,'deposit','31-Jul-08','16'),(32,32012,'withdraw','15-Jun-08','11'),(33,45752,'withdraw','29-Aug-08','13'),(34,365420,'deposit','31-Jul-08','4'),(35,251025,'withdraw','15-Jun-08','3'),(36,120325,'deposit','28-Aug-08','2'),(37,75643,'deposit','28-Aug-08','8'),(38,62354,'deposit','31-Jul-08','9'),(39,250125,'withdraw','15-Jun-08','7'),(40,45235,'deposit','28-Aug-08','6'),(41,125324,'deposit','28-Aug-08','4'),(42,25032,'deposit','31-Jul-08','1'),(43,85650,'deposit','28-Aug-08','3'),(44,2542303,'deposit','24-Jun-08','2'),(45,1542853,'withdraw','28-Aug-08','4'),(46,6584235,'deposit','29-Aug-08','2'),(47,56235,'deposit','29-Aug-08','3'),(48,254852,'deposit','28-Aug-08','12'),(49,62357,'withdraw','28-Aug-08','15'),(50,85000,'deposit','31-Jul-08','16'),(51,200,'deposit','20-Aug-2017','TU001');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-23 19:01:24
