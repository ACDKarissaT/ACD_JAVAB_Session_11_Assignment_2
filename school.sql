-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: school
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
-- Table structure for table `academic_programs`
--

DROP TABLE IF EXISTS `academic_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_programs` (
  `program_code` varchar(45) NOT NULL,
  `program_name` varchar(45) NOT NULL,
  `duration` int(11) NOT NULL,
  `department_code` varchar(45) NOT NULL,
  PRIMARY KEY (`program_code`),
  UNIQUE KEY `program_code_UNIQUE` (`program_code`),
  KEY `PROGRAM_DEP_REF_idx` (`department_code`),
  CONSTRAINT `PROGRAM_DEP_REF` FOREIGN KEY (`department_code`) REFERENCES `departments` (`department_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_programs`
--

LOCK TABLES `academic_programs` WRITE;
/*!40000 ALTER TABLE `academic_programs` DISABLE KEYS */;
INSERT INTO `academic_programs` VALUES ('AP001','MCA',8,'DC001'),('AP002','M.Tech',6,'DC001'),('AP003','Biology',7,'DC002'),('AP004','Mathematics',5,'DC003'),('AP005','English',4,'DC004');
/*!40000 ALTER TABLE `academic_programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `course_number` varchar(45) NOT NULL,
  `course_name` varchar(45) NOT NULL,
  `course_credit` varchar(45) NOT NULL,
  `department_code` varchar(45) NOT NULL,
  PRIMARY KEY (`course_number`),
  UNIQUE KEY `course_number_UNIQUE` (`course_number`),
  KEY `COURSES_DEP_idx` (`department_code`),
  CONSTRAINT `COURSES_DEP` FOREIGN KEY (`department_code`) REFERENCES `departments` (`department_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES ('CN01','Computer Science 101','4','DC001'),('CN02','DBMS','4','DC001'),('CN03','Biology 101','4','DC002'),('CN04','Math 101','3','DC003'),('CN05','English 101','3','DC004'),('CN06','Automated systematic strategy','3','DC003'),('CN07','Horizontal asymmetric structure','4','DC002'),('CN08','Face to face grid-enabled customer loyalty','4','DC003'),('CN09','Reverse-engineered 24 hour utilisation','4','DC003'),('CN10','Decentralized demand-driven open architecture','1','DC004'),('CN100','Implemented scalable customer loyalty','3','DC003'),('CN11','Persistent eco-centric pricing structure','3','DC002'),('CN12','Extended web-enabled project','4','DC004'),('CN13','Customizable context-sensitive strategy','1','DC004'),('CN14','Versatile cohesive system engine','4','DC002'),('CN15','Inverse fault-tolerant productivity','1','DC004'),('CN16','Ergonomic interactive orchestration','4','DC002'),('CN17','Persevering neutral conglomeration','4','DC001'),('CN18','Team-oriented dedicated forecast','4','DC004'),('CN19','Reactive 5th generation middleware','4','DC004'),('CN20','Programmable fresh-thinking system engine','4','DC004'),('CN21','Managed transitional core','3','DC004'),('CN22','Exclusive object-oriented knowledge user','4','DC001'),('CN23','Up-sized mobile local area network','4','DC004'),('CN24','Multi-layered context-sensitive protocol','4','DC001'),('CN25','Triple-buffered system-worthy moratorium','4','DC004'),('CN26','Re-engineered interactive policy','4','DC003'),('CN27','User-friendly grid-enabled open architecture','4','DC004'),('CN28','Profit-focused hybrid structure','2','DC003'),('CN29','Profound logistical structure','4','DC003'),('CN31','Innovative high-level database','2','DC004'),('CN32','Distributed encompassing application','4','DC003'),('CN33','Reverse-engineered dynamic paradigm','3','DC003'),('CN34','Distributed contextually-based secured line','4','DC002'),('CN35','Reverse-engineered value-added monitoring','1','DC004'),('CN36','Persevering reciprocal middleware','3','DC004'),('CN37','Function-based upward-trending encoding','4','DC003'),('CN38','De-engineered needs-based Graphic Interface','2','DC003'),('CN39','Realigned empowering benchmark','3','DC004'),('CN40','Cloned motivating moratorium','1','DC003'),('CN41','Up-sized discrete time-frame','3','DC004'),('CN42','Persistent client-driven orchestration','4','DC004'),('CN43','Stand-alone eco-centric migration','2','DC004'),('CN44','Managed content-based emulation','2','DC003'),('CN45','Implemented 5th generation initiative','4','DC002'),('CN46','Cross-group zero administration frame','4','DC002'),('CN47','Pre-emptive national neural-net','4','DC001'),('CN48','Customizable incremental model','2','DC001'),('CN49','Right-sized motivating protocol','4','DC004'),('CN50','Triple-buffered national moderator','1','DC004');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_registered`
--

DROP TABLE IF EXISTS `courses_registered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_registered` (
  `student_code` varchar(45) NOT NULL,
  `course_code` varchar(45) NOT NULL,
  `sem` varchar(45) NOT NULL,
  `grade` int(11) DEFAULT NULL,
  `id_sem_stu_course` varchar(45) GENERATED ALWAYS AS (concat(`sem`,`student_code`,`course_code`)) STORED NOT NULL,
  PRIMARY KEY (`id_sem_stu_course`),
  UNIQUE KEY `id_sem_stu_course_UNIQUE` (`id_sem_stu_course`),
  KEY `CREQ_STUDENT_idx` (`student_code`),
  KEY `CREQ_COURSE_idx` (`course_code`),
  CONSTRAINT `CREQ_COURSE` FOREIGN KEY (`course_code`) REFERENCES `courses` (`course_number`),
  CONSTRAINT `CREQ_STUDENT` FOREIGN KEY (`student_code`) REFERENCES `students` (`roll_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_registered`
--

LOCK TABLES `courses_registered` WRITE;
/*!40000 ALTER TABLE `courses_registered` DISABLE KEYS */;
INSERT INTO `courses_registered` (`student_code`, `course_code`, `sem`, `grade`) VALUES ('CSI08008','CN25','FALL2016',86),('CSI08008','CN42','FALL2016',66),('CSI08014','CN48','FALL2016',23),('CSI08008','CN24','FALL2017',3),('CSI08012','CN02','FALL2017',91),('CSI08016','CN19','FALL2017',70),('CSI08001','CN37','FALL2018',98),('CSI08003','CN42','FALL2018',98),('CSI08004','CN14','FALL2018',60),('CSI08010','CN05','FALL2018',22),('CSI08010','CN45','FALL2018',93),('CSI08014','CN10','FALL2018',65),('CSI08014','CN48','FALL2018',21),('CSI08018','CN12','FALL2018',80),('CSI08018','CN34','FALL2018',60),('CSI08019','CN18','FALL2018',87),('CSI08002','CN45','FALL2019',89),('CSI08002','CN50','FALL2019',10),('CSI08004','CN02','FALL2019',4),('CSI08004','CN18','FALL2019',55),('CSI08004','CN34','FALL2019',95),('CSI08009','CN07','FALL2019',20),('CSI08009','CN13','FALL2019',47),('CSI08009','CN23','FALL2019',36),('CSI08012','CN50','FALL2019',45),('CSI08013','CN28','FALL2019',70),('CSI08015','CN43','FALL2019',5),('CSI08016','CN18','FALL2019',91),('CSI08017','CN16','FALL2019',90),('CSI08019','CN11','FALL2019',90),('CSI08019','CN23','FALL2019',86),('CSI08020','CN05','FALL2019',5),('CSI08002','CN17','SPRING2016',59),('CSI08007','CN46','SPRING2016',44),('CSI08009','CN49','SPRING2016',51),('CSI08005','CN49','SPRING2017',52),('CSI08006','CN05','SPRING2017',81),('CSI08013','CN18','SPRING2017',50),('CSI08014','CN42','SPRING2017',23),('CSI08002','CN35','SPRING2018',96),('CSI08004','CN37','SPRING2018',67),('CSI08006','CN11','SPRING2018',27),('CSI08009','CN33','SPRING2018',81),('CSI08009','CN43','SPRING2018',94),('CSI08015','CN24','SPRING2018',68),('CSI08016','CN34','SPRING2018',47),('CSI08008','CN16','SPRING2019',77),('CSI08009','CN29','SPRING2019',67),('CSI08011','CN42','SPRING2019',39),('CSI08012','CN22','SPRING2019',79),('CSI08012','CN31','SPRING2019',75),('CSI08014','CN09','SPRING2019',56),('CSI08016','CN09','SPRING2019',76),('CSI08017','CN16','SPRING2019',60),('CSI08018','CN31','SPRING2019',71),('CSI08019','CN16','SPRING2019',89),('CSI08019','CN19','SPRING2019',29),('CSI08019','CN42','SPRING2019',35),('CSI08004','CN43','SUMMER2016',93),('CSI08009','CN19','SUMMER2016',45),('CSI08009','CN24','SUMMER2016',63),('CSI08015','CN21','SUMMER2016',56),('CSI08017','CN14','SUMMER2016',40),('CSI08020','CN15','SUMMER2016',93),('CSI08020','CN41','SUMMER2016',18),('CSI08011','CN24','SUMMER2017',19),('CSI08012','CN33','SUMMER2017',64),('CSI08015','CN34','SUMMER2017',66),('CSI08018','CN17','SUMMER2017',100),('CSI08020','CN05','SUMMER2017',2),('CSI08005','CN38','SUMMER2018',13),('CSI08006','CN50','SUMMER2018',26),('CSI08008','CN31','SUMMER2018',98),('CSI08009','CN09','SUMMER2018',45),('CSI08009','CN30','SUMMER2018',69),('CSI08017','CN49','SUMMER2018',88),('CSI08020','CN23','SUMMER2018',1),('CSI08020','CN36','SUMMER2018',58),('CSI08001','CN22','SUMMER2019',56),('CSI08001','CN32','SUMMER2019',78),('CSI08002','CN28','SUMMER2019',56),('CSI08004','CN01','SUMMER2019',98),('CSI08004','CN38','SUMMER2019',51),('CSI08004','CN47','SUMMER2019',94),('CSI08006','CN01','SUMMER2019',46),('CSI08006','CN15','SUMMER2019',72),('CSI08006','CN17','SUMMER2019',85),('CSI08006','CN22','SUMMER2019',72),('CSI08007','CN06','SUMMER2019',42),('CSI08008','CN07','SUMMER2019',83),('CSI08010','CN50','SUMMER2019',59),('CSI08011','CN24','SUMMER2019',45),('CSI08013','CN07','SUMMER2019',12),('CSI08015','CN04','SUMMER2019',15),('CSI08015','CN25','SUMMER2019',30),('CSI08015','CN48','SUMMER2019',93),('CSI08018','CN05','SUMMER2019',77),('CSI08019','CN09','SUMMER2019',77),('CSI08020','CN10','SUMMER2019',19),('CSI08020','CN34','SUMMER2019',19);
/*!40000 ALTER TABLE `courses_registered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_required`
--

DROP TABLE IF EXISTS `courses_required`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_required` (
  `program_code` varchar(45) NOT NULL,
  `course_code` varchar(45) NOT NULL,
  `id_program_course` varchar(45) GENERATED ALWAYS AS (concat(`program_code`,`course_code`)) STORED NOT NULL,
  `course_type` varchar(45) NOT NULL,
  PRIMARY KEY (`id_program_course`),
  UNIQUE KEY `id_program_course_UNIQUE` (`id_program_course`),
  KEY `CR_PROGRAM_REF_idx` (`program_code`),
  KEY `CR_COURSE_REF_idx` (`course_code`),
  CONSTRAINT `CR_COURSE_REF` FOREIGN KEY (`course_code`) REFERENCES `courses` (`course_number`),
  CONSTRAINT `CR_PROGRAM_REF` FOREIGN KEY (`program_code`) REFERENCES `academic_programs` (`program_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_required`
--

LOCK TABLES `courses_required` WRITE;
/*!40000 ALTER TABLE `courses_required` DISABLE KEYS */;
INSERT INTO `courses_required` (`program_code`, `course_code`, `course_type`) VALUES ('AP001','CN01','core'),('AP001','CN04','elective'),('AP001','CN05','core'),('AP001','CN15','elective'),('AP001','CN23','elective'),('AP001','CN30','core'),('AP001','CN35','core'),('AP001','CN39','core'),('AP001','CN42','core'),('AP002','CN01','core'),('AP002','CN04','core'),('AP002','CN05','core'),('AP002','CN27','core'),('AP002','CN30','elective'),('AP002','CN38','core'),('AP002','CN41','core'),('AP002','CN42','elective'),('AP002','CN47','core'),('AP003','CN01','core'),('AP003','CN02','elective'),('AP003','CN20','core'),('AP003','CN27','core'),('AP003','CN33','core'),('AP003','CN34','elective'),('AP003','CN35','core'),('AP003','CN40','elective'),('AP003','CN42','core'),('AP003','CN43','elective'),('AP003','CN48','core'),('AP004','CN01','elective'),('AP004','CN03','core'),('AP004','CN10','elective'),('AP004','CN13','elective'),('AP004','CN16','core'),('AP004','CN19','elective'),('AP004','CN20','elective'),('AP004','CN21','elective'),('AP004','CN22','elective'),('AP004','CN25','elective'),('AP004','CN27','core'),('AP004','CN28','elective'),('AP004','CN32','elective'),('AP004','CN33','elective'),('AP004','CN36','elective'),('AP004','CN37','elective'),('AP004','CN40','elective'),('AP004','CN41','elective'),('AP004','CN42','core'),('AP004','CN48','elective'),('AP004','CN49','core'),('AP004','CN50','elective'),('AP005','CN02','core'),('AP005','CN03','elective'),('AP005','CN06','core'),('AP005','CN07','elective'),('AP005','CN09','core'),('AP005','CN12','elective'),('AP005','CN13','elective'),('AP005','CN14','elective'),('AP005','CN15','core'),('AP005','CN18','core'),('AP005','CN21','elective'),('AP005','CN22','elective'),('AP005','CN23','core'),('AP005','CN24','core'),('AP005','CN26','core'),('AP005','CN29','elective'),('AP005','CN30','core'),('AP005','CN31','core'),('AP005','CN32','core'),('AP005','CN34','elective'),('AP005','CN35','core'),('AP005','CN39','core'),('AP005','CN40','core'),('AP005','CN41','elective'),('AP005','CN42','core'),('AP005','CN44','elective'),('AP005','CN46','elective'),('AP005','CN48','elective'),('AP005','CN49','elective'),('AP005','CN50','core');
/*!40000 ALTER TABLE `courses_required` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_taught`
--

DROP TABLE IF EXISTS `courses_taught`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_taught` (
  `teacher_code` varchar(45) NOT NULL,
  `course_code` varchar(45) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `id_sem_teacher_course` varchar(45) GENERATED ALWAYS AS (concat(`semester`,`course_code`,`teacher_code`)) STORED NOT NULL,
  PRIMARY KEY (`id_sem_teacher_course`),
  UNIQUE KEY `id_teacher_course_UNIQUE` (`id_sem_teacher_course`),
  KEY `CT_COURSES_REF_idx` (`course_code`),
  KEY `CT_TEACHER_REF` (`teacher_code`),
  CONSTRAINT `CT_COURSES_REF` FOREIGN KEY (`course_code`) REFERENCES `courses` (`course_number`),
  CONSTRAINT `CT_TEACHER_REF` FOREIGN KEY (`teacher_code`) REFERENCES `teachers` (`employee_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_taught`
--

LOCK TABLES `courses_taught` WRITE;
/*!40000 ALTER TABLE `courses_taught` DISABLE KEYS */;
INSERT INTO `courses_taught` (`teacher_code`, `course_code`, `semester`) VALUES ('TC001','CN25','FALL2016'),('TC001','CN42','FALL2016'),('TC001','CN48','FALL2016'),('TC001','CN02','FALL2017'),('TC002','CN19','FALL2017'),('TC002','CN24','FALL2017'),('TC002','CN05','FALL2018'),('TC003','CN10','FALL2018'),('TC003','CN12','FALL2018'),('TC003','CN14','FALL2018'),('TC003','CN18','FALL2018'),('TC004','CN34','FALL2018'),('TC004','CN37','FALL2018'),('TC004','CN42','FALL2018'),('TC004','CN45','FALL2018'),('TC005','CN48','FALL2018'),('TC005','CN02','FALL2019'),('TC005','CN05','FALL2019'),('TC005','CN07','FALL2019'),('TC005','CN11','FALL2019'),('TC005','CN13','FALL2019'),('TC005','CN16','FALL2019'),('TC006','CN18','FALL2019'),('TC007','CN18','FALL2019'),('TC006','CN23','FALL2019'),('TC007','CN23','FALL2019'),('TC006','CN28','FALL2019'),('TC006','CN34','FALL2019'),('TC006','CN43','FALL2019'),('TC007','CN45','FALL2019'),('TC007','CN50','FALL2019'),('TC008','CN50','FALL2019'),('TC008','CN17','SPRING2016'),('TC008','CN46','SPRING2016'),('TC008','CN49','SPRING2016'),('TC008','CN05','SPRING2017'),('TC009','CN18','SPRING2017'),('TC009','CN42','SPRING2017'),('TC009','CN49','SPRING2017'),('TC009','CN11','SPRING2018'),('TC010','CN24','SPRING2018'),('TC010','CN33','SPRING2018'),('TC010','CN34','SPRING2018'),('TC010','CN35','SPRING2018'),('TC011','CN37','SPRING2018'),('TC011','CN43','SPRING2018'),('TC011','CN09','SPRING2019'),('TC011','CN16','SPRING2019'),('TC011','CN19','SPRING2019'),('TC012','CN22','SPRING2019'),('TC012','CN29','SPRING2019'),('TC012','CN31','SPRING2019'),('TC012','CN42','SPRING2019'),('TC012','CN14','SUMMER2016'),('TC013','CN15','SUMMER2016'),('TC013','CN19','SUMMER2016'),('TC013','CN21','SUMMER2016'),('TC013','CN24','SUMMER2016'),('TC013','CN41','SUMMER2016'),('TC014','CN43','SUMMER2016'),('TC014','CN05','SUMMER2017'),('TC014','CN17','SUMMER2017'),('TC014','CN24','SUMMER2017'),('TC014','CN33','SUMMER2017'),('TC014','CN34','SUMMER2017'),('TC015','CN09','SUMMER2018'),('TC015','CN23','SUMMER2018'),('TC015','CN30','SUMMER2018'),('TC015','CN31','SUMMER2018'),('TC015','CN36','SUMMER2018'),('TC015','CN38','SUMMER2018'),('TC016','CN49','SUMMER2018'),('TC016','CN50','SUMMER2018'),('TC016','CN01','SUMMER2019'),('TC017','CN04','SUMMER2019'),('TC017','CN05','SUMMER2019'),('TC017','CN06','SUMMER2019'),('TC017','CN07','SUMMER2019'),('TC017','CN09','SUMMER2019'),('TC017','CN10','SUMMER2019'),('TC017','CN15','SUMMER2019'),('TC018','CN17','SUMMER2019'),('TC018','CN22','SUMMER2019'),('TC019','CN22','SUMMER2019'),('TC019','CN24','SUMMER2019'),('TC019','CN25','SUMMER2019'),('TC019','CN28','SUMMER2019'),('TC019','CN32','SUMMER2019'),('TC020','CN34','SUMMER2019'),('TC020','CN38','SUMMER2019'),('TC020','CN47','SUMMER2019'),('TC020','CN48','SUMMER2019'),('TC020','CN50','SUMMER2019');
/*!40000 ALTER TABLE `courses_taught` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `department_code` varchar(45) NOT NULL,
  `department_name` varchar(45) NOT NULL,
  `department_head` varchar(45) NOT NULL,
  PRIMARY KEY (`department_code`),
  UNIQUE KEY `department_code_UNIQUE` (`department_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES ('DC001','CSE','T001'),('DC002','Biology','T002'),('DC003','Mathematics','T003'),('DC004','English','T004');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program_enrollment`
--

DROP TABLE IF EXISTS `program_enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `program_enrollment` (
  `student_code` varchar(45) NOT NULL,
  `program_code` varchar(45) NOT NULL,
  `id_program_student` varchar(45) GENERATED ALWAYS AS (concat(`program_code`,`student_code`)) STORED NOT NULL,
  PRIMARY KEY (`id_program_student`),
  UNIQUE KEY `id_program_student_UNIQUE` (`id_program_student`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program_enrollment`
--

LOCK TABLES `program_enrollment` WRITE;
/*!40000 ALTER TABLE `program_enrollment` DISABLE KEYS */;
INSERT INTO `program_enrollment` (`student_code`, `program_code`) VALUES ('CSI08006','AP001'),('CSI08007','AP002'),('CSI08008','AP002'),('CSI08010','AP002'),('CSI08001','AP003'),('CSI08002','AP004'),('CSI08012','AP004'),('CSI08003','AP005'),('CSI08004','AP005'),('CSI08005','AP005'),('CSI08009','AP005'),('CSI08011','AP005'),('CSI08013','AP005'),('CSI08014','AP005'),('CSI08015','AP005'),('CSI08016','AP005'),('CSI08017','AP005'),('CSI08018','AP005'),('CSI08019','AP005'),('CSI08020','AP005');
/*!40000 ALTER TABLE `program_enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `roll_number` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `street` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `zip` int(11) NOT NULL,
  `semester` varchar(45) NOT NULL,
  PRIMARY KEY (`roll_number`),
  UNIQUE KEY `roll_number_UNIQUE` (`roll_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('CSI08001','Rafaello Decent','Oak','Miami','Florida',49075,'SUMMER2018'),('CSI08002','Mycah Lichtfoth','Michigan','TEZPUR','California',75233,'SPRING2017'),('CSI08003','Kareem Selby','Sloan','Austin','Texas',4201,'SUMMER2019'),('CSI08004','Tomlin McTerlagh','Brentwood','Clearwater','Florida',28262,'SUMMER2019'),('CSI08005','Winni Males','Farmco','Cleveland','Ohio',38538,'SUMMER2016'),('CSI08006','Danit Kelsow','Duke','Brooklyn','New York',18622,'FALL2019'),('CSI08007','Maryann Spedroni','Pankratz','Tezpur','California',83610,'FALL2018'),('CSI08008','Burt Faircley','Loftsgordon','Miami','Florida',7632,'FALL2019'),('CSI08009','Violet Priestman','Tony','Houston','Texas',5180,'FALL2019'),('CSI08010','Brenda Doleman','Jana','Tezpur','Michigan',84360,'SUMMER2019'),('CSI08011','Muffin Crilly','Pennsylvania','Tallahassee','Florida',72962,'SUMMER2018'),('CSI08012','Griffith Littledike','Northview','Denver','Colorado',44572,'SPRING2018'),('CSI08013','Keene Hussy','Marcy','Pomona','California',74966,'FALL2019'),('CSI08014','Hazel Shilito','Warner','Pittsburgh','Pennsylvania',57243,'FALL2018'),('CSI08015','Carena Easun','Hazelcrest','Fayetteville','North Carolina',42263,'FALL2019'),('CSI08016','Giacopo Garrold','Del Sol','Fort Pierce','Florida',75723,'SUMMER2017'),('CSI08017','Zena Shew','Barnett','Bronx','New York',10547,'SPRING2019'),('CSI08018','Minda Golledge','Shelley','Cambridge','Massachusetts',74680,'SUMMER2016'),('CSI08019','Kassey Dahlberg','Dapin','Cleveland','Ohio',86847,'SPRING2018'),('CSI08020','Eric Cescon','Muir','Erie','Pennsylvania',61771,'SUMMER2018');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `employee_code` varchar(45) NOT NULL,
  `teacher_name` varchar(45) NOT NULL,
  `department_code` varchar(45) NOT NULL,
  `designation` varchar(45) NOT NULL,
  PRIMARY KEY (`employee_code`),
  UNIQUE KEY `employee_code_UNIQUE` (`employee_code`),
  KEY `TEACHER_DEP_REF_idx` (`department_code`),
  CONSTRAINT `TEACHER_DEP_REF` FOREIGN KEY (`department_code`) REFERENCES `departments` (`department_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES ('TC001','Harmonie Eustice','DC001','Full Time '),('TC002','Mikaela Whitaker','DC002','Full Time '),('TC003','Ansel Heijnen','DC003','Full Time '),('TC004','Lyndsie Seccombe','DC004','Full Time '),('TC005','Reed Jevons','DC004','Part Time '),('TC006','Torrin Tarry','DC003','Part Time '),('TC007','Brennan O\'Farrell','DC004','Full Time '),('TC008','Lynnelle Pohlke','DC004','Part Time '),('TC009','Grayce Barock','DC001','Part Time '),('TC010','Dacey Worrall','DC004','Part Time ');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-23 19:00:27
