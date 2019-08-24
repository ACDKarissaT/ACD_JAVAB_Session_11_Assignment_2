-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: session11
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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `client_number` varchar(45) NOT NULL,
  `client_name` varchar(45) NOT NULL,
  `client_address` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `state` varchar(45) NOT NULL,
  `total_balance` decimal(8,2) NOT NULL,
  PRIMARY KEY (`client_number`),
  UNIQUE KEY `client_number_UNIQUE` (`client_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES ('1','Joe','234 street lane','city1',12345,'GA',5000.00),('2','bob','32 lane street','city2',73693,'GA',300.00),('3','Rob','87 khjdfoi n','city3',90283,'NY',0.00),('4','sal','87 dofj lane','souwe',12356,'NJ',400.00),('5','val','83 duck street','sdlkjf',12853,'FL',200.00),('6','client','874 dog lane','TEZPUR',34798,'NC',0.00),('7','client2','4th street','city4',12346,'ASSAM',800.00),('CN01003','hey','123 hey way','uhm',12345,'NH',1200.00);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_number` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) NOT NULL,
  `selling_price` decimal(8,2) NOT NULL,
  `manufacturer_name` varchar(45) NOT NULL,
  `product_description` varchar(45) DEFAULT NULL,
  `new_price` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`product_number`),
  UNIQUE KEY `product_number_UNIQUE` (`product_number`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'toy',50.00,'toy co','HDD1034',NULL),(2,'chair',20.00,'chair co','DVDRW',NULL),(3,'pen',2.00,'pen co','pen',NULL),(4,'light',40.00,'light co','light',NULL),(5,'table',50.00,'chair co','table',NULL),(6,'duck',5.00,'toy co','DVDRW',NULL),(7,'pencil',1.00,'pen co','pencil',NULL),(8,'ball',10.00,'toy co','ball',NULL),(9,'giant ball',4000.00,'toy co','ball',NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_sales`
--

DROP TABLE IF EXISTS `product_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_sales` (
  `product_sales_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_number` int(11) NOT NULL,
  `sales_order_number` varchar(45) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`product_sales_id`),
  UNIQUE KEY `product_sales_id_UNIQUE` (`product_sales_id`),
  KEY `PRODUCT_SALE_PROD_REF_idx` (`product_number`),
  KEY `PS_ON_REF_idx` (`sales_order_number`),
  CONSTRAINT `PS_ON_REF` FOREIGN KEY (`sales_order_number`) REFERENCES `transaction` (`sales_order_number`),
  CONSTRAINT `PS_PROD_REF` FOREIGN KEY (`product_number`) REFERENCES `product` (`product_number`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sales`
--

LOCK TABLES `product_sales` WRITE;
/*!40000 ALTER TABLE `product_sales` DISABLE KEYS */;
INSERT INTO `product_sales` VALUES (1,1,'2',3),(2,3,'1',1),(3,3,'2',1);
/*!40000 ALTER TABLE `product_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_details`
--

DROP TABLE IF EXISTS `sales_order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_order_details` (
  `detail_id` int(11) NOT NULL,
  `order_number` varchar(45) NOT NULL,
  `new_product_rate` varchar(45) NOT NULL,
  PRIMARY KEY (`detail_id`),
  UNIQUE KEY `detail_id_UNIQUE` (`detail_id`),
  KEY `SOD_ON_REF_idx` (`order_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_order_details`
--

LOCK TABLES `sales_order_details` WRITE;
/*!40000 ALTER TABLE `sales_order_details` DISABLE KEYS */;
INSERT INTO `sales_order_details` VALUES (1,'ON01008','2');
/*!40000 ALTER TABLE `sales_order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesman`
--

DROP TABLE IF EXISTS `salesman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesman` (
  `salesman_id` int(11) NOT NULL AUTO_INCREMENT,
  `salesman_name` varchar(45) NOT NULL,
  `addresses` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `state` varchar(45) NOT NULL,
  `salary` decimal(8,2) NOT NULL,
  PRIMARY KEY (`salesman_id`),
  UNIQUE KEY `salesman_id_UNIQUE` (`salesman_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesman`
--

LOCK TABLES `salesman` WRITE;
/*!40000 ALTER TABLE `salesman` DISABLE KEYS */;
INSERT INTO `salesman` VALUES (1,'ross','34 jsdklfjk','jfodf',12347,'NJ',50000.00),(2,'ge','34 kdjflk','difjoj',72813,'GA',78000.00),(3,'by','48 shdflkh','sdfjls',34798,'NY',90000.00),(4,'kat','46 jfklsiodf','sdlkjfo',23498,'CA',100000.00),(5,'tim','67 djflsdo','sjdfklsd',87492,'FL',54000.00);
/*!40000 ALTER TABLE `salesman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `sales_order_number` varchar(45) NOT NULL,
  `sales_order_date` datetime NOT NULL,
  `client_number` varchar(45) NOT NULL,
  `salesman_number` int(11) NOT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT '0',
  `delivery_date` date NOT NULL,
  `status` varchar(45) NOT NULL,
  `cancel_date` date DEFAULT NULL,
  PRIMARY KEY (`sales_order_number`),
  UNIQUE KEY `sales_order_number_UNIQUE` (`sales_order_number`),
  KEY `TC_REF_idx` (`client_number`),
  KEY `TS_REF_idx` (`salesman_number`),
  CONSTRAINT `TC_REF` FOREIGN KEY (`client_number`) REFERENCES `client` (`client_number`),
  CONSTRAINT `TS_REF` FOREIGN KEY (`salesman_number`) REFERENCES `salesman` (`salesman_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES ('1','2019-02-10 01:23:00','1',1,0,'2019-03-19','cancelled','2019-03-10'),('2','2018-04-30 12:38:00','2',3,1,'2019-05-04','delivered',NULL),('ON01008','2006-04-20 02:30:00','3',1,1,'2016-08-08','delivered',NULL);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-23 18:59:36
