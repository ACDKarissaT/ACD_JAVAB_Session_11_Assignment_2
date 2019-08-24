-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: library_information_system
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
-- Table structure for table `book_table`
--

DROP TABLE IF EXISTS `book_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_table` (
  `b_id` varchar(12) NOT NULL,
  `book_name` varchar(45) NOT NULL,
  `book_author` varchar(45) NOT NULL,
  `book_publisher` varchar(45) NOT NULL,
  `book_subject` varchar(45) NOT NULL,
  `book_issue_date` date NOT NULL,
  `book_department` int(11) NOT NULL,
  `student_id` varchar(45) NOT NULL,
  PRIMARY KEY (`b_id`),
  UNIQUE KEY `b_id_UNIQUE` (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_table`
--

LOCK TABLES `book_table` WRITE;
/*!40000 ALTER TABLE `book_table` DISABLE KEYS */;
INSERT INTO `book_table` VALUES ('BK001','Come Undone (Cosa voglio di più)','Caressa Cogan','Little-Metz','Fiction','2017-05-21',1,'CSB06008'),('BK0010','Big Star: Nothing Can Hurt Me','Briny Heisler','Hamill Inc','Non-Fiction','2008-08-24',2,'CSB06008'),('BK0011','All or Nothing','Caressa Cogan','Torp-Nikolaus','ora','2008-12-12',3,'CSB06008'),('BK0012','Dragon (Wu Xia)','Gilbertina Buckell','Ankunding, Feeney and Spencer','Non-Fiction','2003-06-25',4,'CSB06008'),('BK0013','Wicked City (Yôjû toshi)','Clywd Haddleton','Flatley, Hahn and Dooley','Non-Fiction','2008-08-25',5,'CSB06008'),('BK0014','Immigrants (L.A. Dolce Vita)','Gilbertina Buckell','Hamill Inc','Non-Fiction','2002-05-17',6,'CSB06008'),('BK0015','Man from the Future, The (O Homem do Futuro)','Georgine Hadwick','Green Inc','Fantasy','2008-08-26',7,'CSB06008'),('BK0016','Mistress America','Caressa Cogan','Anderson, Leffler and Kuvalis','Action','2005-04-06',8,'CSB06008'),('BK0017','Castle of Purity (El castillo de la pureza)','Gilbertina Buckell','Hamill Inc','Fantasy','2000-07-11',9,'CSB06008'),('BK0018','Nest, The (Nid de Guêpes)','Caressa Cogan','Conroy, Stamm and Tremblay','Fantasy','2016-05-03',10,'CSB06008'),('BK0019','The Night Evelyn Came Out of the Grave','Virgil McTurley','Homenick LLC','Non-Fiction','2007-09-11',11,'CSB06007'),('BK002','Polly of the Circus','Virgil McTurley','Fahey, Gottlieb and Bednar','Non-Fiction','2018-06-20',12,'CSB06007'),('BK0020','Persepolis','Caressa Cogan','Greenfelder, Morar and Crooks','Biography','1996-11-04',13,'CSB06007'),('BK0021','I Am Fishead','Cass Wellstead','Walsh-Stracke','Horror','2009-06-04',14,'CSB06007'),('BK0022','Wooden Man\'s Bride, The (Yan shen)','Mandi Tirrell','Hamill Inc','Sci-Fi','2015-06-09',15,'CSB06007'),('BK0023','Iceman Cometh, The','Gilbertina Buckell','Kohler-Effertz','Action','2004-02-18',1,'CSB06007'),('BK0024','Legal Deceit','Halsey Arcase','Simonis-McKenzie','Biography','2017-08-19',2,'CSB06001'),('BK0025','Sunset','Elita Dowtry','Walsh-Stracke','Fantasy','2009-02-12',3,'CSB06001'),('BK0026','Mission to Mir','Ken Memory','Hamill Inc','Biography','2006-02-11',4,'CSB06001'),('BK0027','Anna Christie','Gloriana Pien','Harris-Kessler','Horror','2012-06-04',5,'CSB06011'),('BK0028','New Barbarians, The (I nuovi barbari)','Jemmy Cantopher','Walsh-Stracke','Non-Fiction','2002-05-02',6,'CSB06001'),('BK0029','Sittin\' on a Backyard Fence','Theodor Aslen','Hamill Inc','Biography','2007-10-22',7,'CSB06001'),('BK003','Damnation Alley','ABC','Sporer and Sons','ora','1996-11-19',8,'CSB06001'),('BK0030','Database System','E.Navathe','Langosh Inc','Biography','2008-06-11',9,'CSB06001'),('BK0031','Morning for the Osone Family','Annalee Rosenstein','Walsh-Stracke','Horror','2019-03-13',10,'CSB06001'),('BK0032','Crimes of the Heart','Christen Allmond','Ratke, Blanda and Koss','Fiction','2006-01-03',11,'CSB06001'),('BK0033','Keeper of the Flame','Bonita Cahillane','Jerde, Pouros and Batz','Biography','1999-07-21',12,'CSB06001'),('BK0034','Slams, The','Tory Wasiela','Walsh-Stracke','ora','2010-07-03',13,'CSB06001'),('BK0035','Big Sleep, The','Bunny Bareham','Cartwright LLC','Horror','2002-04-04',14,'CSB06001'),('BK0036','GhostWatcher','Chiquia Cabrer','Huel and Sons','Fiction','2005-11-07',15,'CSB06001'),('BK0037','Front Page, The','Horatius Grundle','Stehr Group','ora','1996-06-26',1,'CSB06001'),('BK0038','Boys Are Back, The','Jere Dencs','Labadie, Jakubowski and Boyle','Fantasy','2015-09-24',2,'CSB06001'),('BK0039','Hide and Seek','Virgil McTurley','Ankunding, Muller and Mann','Fantasy','1997-04-10',3,'CSB06001'),('BK004','Guide, The (O Xenagos)','Caressa Cogan','Bednar LLC','Non-Fiction','1998-06-21',4,'CSB06001'),('BK0040','Days of Thunder','Emmi Clegg','Willms-Reynolds','ora','2004-07-23',5,'CSB06001'),('BK0041','Dave Chappelle: For What it\'s Worth','Brendin Dunbobbin','Heller Inc','Adventure','2010-06-05',6,'CSB06001'),('BK0042','Delirious','Virgil McTurley','Weimann-Zieme','ora','2007-03-30',7,'CSB06008'),('BK0043','XIII: The Conspiracy','Virgil McTurley','Pouros, Macejkovic and Botsford','Horror','1996-03-06',8,'CSB06008'),('BK0044','On the Beach','Virgil McTurley','Huel and Sons','Sci-Fi','1999-12-31',9,'CSB06008'),('BK0045','Dead Fury','Alastair Pickervance','Murray-Effertz','ora','2006-04-18',10,'CSB06001'),('BK0046','16 Blocks','Sheff Towne','Torphy, Fisher and Runolfsdottir','Fantasy','2013-12-30',11,'CSB06008'),('BK0047','Hondo','Ric Crowter','Swift LLC','Adventure','2000-07-15',12,'CSB06008'),('BK0048','301, 302 (301/302)','Virgil McTurley','Walsh-Stracke','Action','1999-05-26',13,'CSB06008'),('BK0049','Upside Down: The Creation Records Story','Kerstin Easterbrook','Davis, Paucek and Keebler','ora','2013-11-12',14,'CSB06008'),('BK005','The Forbidden Room','Gilbertina Buckell','Williamson-Kohler','Biography','2008-08-22',15,'CSB06008'),('BK0050','Morgen','Rodolphe Tennock','Huel and Sons','Horror','2015-12-22',1,'CSB06008'),('BK006','Mission: Impossible - Ghost Protocol','Gilbertina Buckell','Mann Group','Adventure','2004-02-26',2,'CSB06008'),('BK007','Pandorum','Caressa Cogan','Huel and Sons','ora','2008-08-23',3,'CSB06008'),('BK008','Crazies, The (a.k.a. Code Name: Trixie)','Gilbertina Buckell','Schneider-Oberbrunner','Horror','2018-01-30',4,'CSB06008'),('BK009','The Reunion','Caressa Cogan','Walter, Rippin and Lynch','Adventure','2002-12-26',5,'CSB06008');
/*!40000 ALTER TABLE `book_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_table`
--

DROP TABLE IF EXISTS `department_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department_table` (
  `dept_id` int(11) NOT NULL,
  `dept_name` text,
  `dept_total_books` int(11) DEFAULT NULL,
  PRIMARY KEY (`dept_id`),
  UNIQUE KEY `dept_id_UNIQUE` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_table`
--

LOCK TABLES `department_table` WRITE;
/*!40000 ALTER TABLE `department_table` DISABLE KEYS */;
INSERT INTO `department_table` VALUES (1,'Sales1',9),(2,'Accounting1',1),(3,'Business Development1',10),(4,'Engineering',2),(5,'Services1',4),(6,'Business Development2',10),(7,'Sales2',8),(8,'Sales3',1),(9,'Accounting2',2),(10,'Accounting3',10),(11,'Sales4',3),(12,'Services2',6),(13,'Training1',3),(14,'Sales5',4),(15,'Training2',8);
/*!40000 ALTER TABLE `department_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal_table`
--

DROP TABLE IF EXISTS `journal_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journal_table` (
  `j_id` int(11) NOT NULL,
  `journal_name` text NOT NULL,
  `journal_author` text NOT NULL,
  `journal_publisher` text NOT NULL,
  `journal_subject` text NOT NULL,
  `journal_issue_date` date NOT NULL,
  `journal_department` int(11) NOT NULL,
  PRIMARY KEY (`j_id`),
  UNIQUE KEY `j_id_UNIQUE` (`j_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_table`
--

LOCK TABLES `journal_table` WRITE;
/*!40000 ALTER TABLE `journal_table` DISABLE KEYS */;
INSERT INTO `journal_table` VALUES (1,'Quiet American, The','Cornell Beldam','Reilly, Baumbach and Gislason','Action','2015-06-06',1),(2,'Svensson, Svensson - I nöd och lust','Brear Spratling','Reynolds, Beer and Okuneva','Fantasy','2005-11-16',2),(3,'High School High','Ninnette Bembridge','Schulist LLC','Horror','2010-04-17',3),(4,'Jumper','Lynnea Powrie','Zboncak, Ernser and Wehner','Sci-Fi','1999-04-15',4),(5,'Pollock','Dodie Dagwell','Zulauf Group','Biography','1999-03-03',5),(6,'Alice','Gunner Fransseni','Schuppe-Wisoky','Action','2006-06-25',6),(7,'G@me','Garrik Newcome','Jacobi-Murazik','Horror','2009-06-25',7),(8,'Protector, The','Quintilla Coast','Connelly-Schiller','Biography','1997-03-28',8),(9,'Suit for Wedding, A (a.k.a. The Wedding Suit) (Lebassi Baraye Arossi)','Tristam Christopher','Stiedemann, Schmitt and Thiel','Fiction','2004-06-16',9),(10,'After the Thin Man','Lusa Kobes','Carroll, Ernser and Gerlach','Biography','2015-03-15',10),(11,'Get Over It','Marlene Weinmann','Anderson Inc','Non-Fiction','2019-02-13',1),(12,'The War','Ludwig Orbon','Bernier and Sons','Non-Fiction','2000-02-20',1),(13,'No End in Sight','Coletta Conradie','White LLC','Biography','1996-03-13',2),(14,'Hip Hop Witch, Da','Toby Van Son','Abernathy, Romaguera and Harris','Non-Fiction','2004-04-26',3),(15,'On the Line','Zacharie Tringham','Ratke-Turcotte','Action','2000-03-23',4),(16,'Love and Pain and the Whole Damn Thing','Winnifred Christon','Renner Group','Fiction','2011-05-18',5),(17,'Sand Pebbles, The','Roi Burdell','McGlynn, Schaden and Prohaska','Fiction','2007-02-01',6),(18,'Before and After','Carmelita Tebbit','Schumm-Hirthe','Action','2010-03-11',8),(19,'Rings','Sarena Ellesmere','Bauch, Legros and Murphy','Non-Fiction','2017-06-13',2),(20,'Love of Siam, The (Rak haeng Siam)','Godart Sauter','Lesch Group','Non-Fiction','2012-10-09',4),(21,'All Blossoms Again: Pedro Costa, Director (Tout refleurit: Pedro Costa, cinéaste)','Annis Heymann','Luettgen-VonRueden','Horror','2006-03-07',4),(22,'Paris, I Love You (Paris, je t\'aime)','Andee Stennine','Windler-Schroeder','Fiction','1997-11-24',5),(23,'1000 Eyes of Dr. Mabuse, The (Die 1000 Augen des Dr. Mabuse)','Mei Awmack','Balistreri-Streich','Sci-Fi','2015-02-22',6),(24,'Small Faces','Michele Warland','Williamson, Tromp and Bartoletti','Sci-Fi','2019-05-23',7),(25,'ABC Africa','Viole Coleman','Gleason-Dooley','Horror','2009-03-05',8),(26,'Osmosis (Osmose)','Marcelo Lodewick','Aufderhar LLC','Non-Fiction','2007-06-11',9),(27,'Hit and Run (Hit & Run)','Missie Beese','Stokes-Kris','Action','2009-03-27',2),(28,'AVP: Alien vs. Predator','Aime Wooff','Spinka, Bogisich and Franecki','Action','2007-03-07',3),(29,'Bigger Than the Sky','Morganica Oganesian','Grady, Tremblay and Bednar','Fantasy','2009-03-09',4),(30,'All Night Long','Lukas Addionisio','Heidenreich and Sons','Fiction','1998-12-23',5),(31,'Full of It','Estella Ivison','D\'Amore-Rutherford','Sci-Fi','2005-07-02',6),(32,'Harum Scarum','Llywellyn Trainor','Ondricka-Homenick','Sci-Fi','2012-05-23',7),(33,'Arrowhead','Gloriane Wilhelmy','Ward and Sons','Sci-Fi','2016-01-15',8),(34,'Snow Angels','Devondra Fylan','Veum Inc','Adventure','2008-10-19',9),(35,'Thérèse','Brok Dudgeon','Grant, Johnston and Graham','Fiction','2008-05-23',3),(36,'Tycoon','Colette Georgeot','Trantow and Sons','Action','2004-04-28',2),(37,'Bad Moon','Michaella Wilby','Pfannerstill LLC','Horror','1997-09-02',4),(38,'Shooter, The','Tito Keightley','Konopelski-Langosh','Adventure','2003-07-06',5),(39,'Wild Tigers I Have Known','Evered Ripon','Wiza Group','Sci-Fi','1996-09-28',3),(40,'Coup de torchon (Clean Slate)','Freddie Metherell','Durgan, Dickinson and Hane','Horror','2008-07-13',6),(41,'Secretariat','Ilyse Birtle','Carter-Nolan','Action','1999-02-10',7),(42,'High Strung','Verile Leeb','Medhurst, Auer and Abbott','Sci-Fi','2017-03-12',8),(43,'Norman','Sonnie Kingman','Feeney, Fritsch and Friesen','Biography','1997-08-25',9),(44,'Carriers','Norina Brychan','Baumbach-DuBuque','Fantasy','2000-05-20',10),(45,'The Diary of Anne Frank','Ellis Miquelet','Balistreri-Deckow','Biography','2002-09-19',12),(46,'And Your Mother Too (Y tu mamá también)','Brig Balbeck','Maggio, Leuschke and Huel','Fiction','1997-07-12',13),(47,'Public Access','Laura Tschiersch','Towne, Jenkins and Skiles','Action','1998-08-16',14),(48,'Stoker','Kaleb Fossett','Monahan-O\'Connell','Sci-Fi','2010-12-18',15),(49,'The First Movie','Ignacio Abel','Lowe-Cremin','Fantasy','2000-10-25',1),(50,'Captain Video: Master of the Stratosphere','Garrot Kraft','Nitzsche LLC','Horror','2018-06-17',2);
/*!40000 ALTER TABLE `journal_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magazine_table`
--

DROP TABLE IF EXISTS `magazine_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magazine_table` (
  `m_id` int(11) NOT NULL,
  `magazine_name` text NOT NULL,
  `magazine_author` text NOT NULL,
  `magazine_publisher` text NOT NULL,
  `magazine_subject` text NOT NULL,
  `magazine_issue_date` date NOT NULL,
  `magazine_department` int(11) NOT NULL,
  PRIMARY KEY (`m_id`),
  UNIQUE KEY `m_id_UNIQUE` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magazine_table`
--

LOCK TABLES `magazine_table` WRITE;
/*!40000 ALTER TABLE `magazine_table` DISABLE KEYS */;
INSERT INTO `magazine_table` VALUES (1,'Perfect Blue','Dagmar Frascone','Zulauf-Boyle','Fiction','2000-12-06',1),(2,'Flash Gordon Conquers the Universe','Lucinda Gianninotti','Murray LLC','Adventure','2002-11-19',1),(3,'Seasoning House, The','Robena Lukasen','Farrell-Kautzer','Non-Fiction','1996-09-10',1),(4,'Silent World, The (Le monde du silence)','Wilow Sher','Bashirian-Donnelly','Action','2007-10-26',1),(5,'Wyatt Earp','Irita MacGilpatrick','Schoen LLC','Action','1996-08-25',1),(6,'1','Lyn Wanka','Jacobs, Skiles and Mraz','Horror','2014-07-03',1),(7,'Anaconda','Berkeley Ferby','Hermann-Osinski','Sci-Fi','2012-11-30',1),(8,'My Left Eye Sees Ghosts (Ngo joh aan gin diy gwai)','Levon Kuschke','Bogan-Jerde','Non-Fiction','1996-08-26',1),(9,'Mifune\'s Last Song (Mifunes sidste sang)','Gwyneth Forte','Homenick Inc','Fiction','2007-08-15',1),(10,'Siete minutos (Seven Minutes)','Ferguson Monnery','Gutmann Inc','Fiction','2017-05-06',1),(11,'Are All Men Pedophiles','Nobie Cowburn','Bogisich-Mitchell','Action','2007-04-15',1),(12,'Babette Goes to War','Layton Apark','Hamill-Schmidt','Fiction','2008-06-04',1),(13,'Sphinx','Cosetta Flannigan','Runolfsson-Lakin','Horror','2000-10-27',1),(14,'Object of My Affection, The','Gladys O\'Shevlan','Bartoletti, Deckow and Stamm','Fantasy','2001-08-25',1),(15,'Gate of Heavenly Peace, The','Merrily Robotham','Schroeder, Funk and Homenick','Non-Fiction','2008-11-07',1),(16,'20,000 Years in Sing Sing','Vasili Gaven','Lesch-Boehm','Fantasy','2017-07-17',2),(17,'Dracula A.D. 1972','Rosy Rotherham','Bradtke, Brown and Klein','Adventure','2016-04-17',3),(18,'Operación Cannabis','Michal Spatoni','Cruickshank-McLaughlin','Fantasy','2017-03-10',4),(19,'Last Truck: Closing of a GM Plant, The','Susannah Eames','Powlowski, Koepp and Kemmer','Adventure','2013-03-31',5),(20,'Top Secret!','Renelle Nacci','Yost Inc','Sci-Fi','2006-04-23',6),(21,'Blank Generation, The','Yalonda Barnewelle','Runolfsson, Robel and Halvorson','Horror','2017-03-31',7),(22,'Critical Care','Armand Dumingos','Ritchie, Bins and Orn','Action','2010-08-16',8),(23,'Morgan!','Lacie Naughton','Daugherty-Runolfsdottir','Biography','2017-12-17',9),(24,'Average Little Man, An (Un borghese piccolo piccolo)','Yorke Nutkin','Frami LLC','Action','2009-10-18',10),(25,'Dark House','Cele Muckley','Mertz Inc','Fiction','2005-11-24',1),(26,'Recollections of the Yellow House (Recordações da Casa Amarela)','Aldrich Soro','DuBuque, Flatley and Medhurst','Fiction','2005-11-14',1),(27,'Giant','Lorita Moorerud','Gibson and Sons','Non-Fiction','2004-08-25',1),(28,'Unholy Three, The','Alia Feechan','Padberg and Sons','Action','2015-06-03',1),(29,'Lewis Black: Stark Raving Black','Rikki Tottem','Kerluke-Will','Non-Fiction','1998-07-26',1),(30,'Conjuring, The','Trumaine Parry','Roberts and Sons','Sci-Fi','2017-09-15',2),(31,'Parting Glances','Gill Crucitti','Morar and Sons','Sci-Fi','2018-12-31',2),(32,'Twice-Told Tales','Faina Caird','Klocko-Grimes','Non-Fiction','1999-04-04',2),(33,'Raspberry Boat Refugee','Sileas Korba','Kuhic, Reinger and Block','Sci-Fi','2016-11-07',2),(34,'Stuart Little 2','Ches Hing','Grant-Rosenbaum','Adventure','2011-04-13',2),(35,'Last Days, The','Del Room','Considine-Reichert','Non-Fiction','1996-02-21',3),(36,'This Is England','Hector Trussman','Welch-Gaylord','Adventure','2002-03-22',4),(37,'Out of the Furnace (Dust to Dust) (Low Dweller, The)','Harald Pamphilon','Raynor Inc','Fantasy','2012-03-17',5),(38,'The Wild Bunch: An Album in Montage','Lurline Christophers','Murazik-Barrows','Fantasy','1998-10-10',5),(39,'Chocolate','Terencio Minchi','Hyatt-Ortiz','Sci-Fi','1997-06-05',6),(40,'Carnage','Gard Handyside','Fritsch Group','Horror','1997-04-25',6),(41,'Wuthering Heights','Gwendolen Manilo','Jenkins, Kiehn and Waters','Adventure','2000-10-31',6),(42,'Play it to the Bone','Rowland Cossons','Waelchi LLC','Fiction','1998-08-24',2),(43,'Last Remake of Beau Geste, The','Minni Gresham','Rogahn and Sons','Horror','2017-11-22',2),(44,'Hunger','Nickie Perree','Rosenbaum and Sons','Sci-Fi','2006-03-17',2),(45,'Fathom','Muire Hintzer','Wintheiser LLC','Fantasy','2011-03-23',2),(46,'Way You Wanted Me, The (Sellaisena kuin sinä minut halusit)','Angeli Satchel','Heathcote-Ritchie','Biography','2016-10-31',2),(47,'Untamed Heart','Job Haggerwood','Romaguera-Bergnaum','Sci-Fi','2011-02-06',2),(48,'Prairie Fever','Andeee Bisterfeld','Mraz, Tillman and Wehner','Fantasy','1995-10-21',2),(49,'Fat Man and Little Boy','Natty Westby','Lehner-Feil','Biography','1996-01-20',2),(50,'Love and Honor','Gilbertina Blamphin','Zboncak and Sons','Biography','1995-12-24',2);
/*!40000 ALTER TABLE `magazine_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_table`
--

DROP TABLE IF EXISTS `student_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_table` (
  `st_id` varchar(45) NOT NULL,
  `st_name` text,
  `st_total_books` int(11) DEFAULT NULL,
  PRIMARY KEY (`st_id`),
  UNIQUE KEY `st_id_UNIQUE` (`st_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_table`
--

LOCK TABLES `student_table` WRITE;
/*!40000 ALTER TABLE `student_table` DISABLE KEYS */;
INSERT INTO `student_table` VALUES ('CSB06001','Reinaldos Coe',2),('CSB06002','Tilly Goldring',4),('CSB06003','Magdalen Baillie',4),('CSB06004','Gertruda Bontoft',1),('CSB06005','Walton Gilliatt',2),('CSB06006','Carleen Goodluck',5),('CSB06007','Maryellen Canedo',6),('CSB06008','Darrel Lighterness',5),('CSB06009','Eloisa Berthon',8),('CSB06010','Hetti Bosket',2),('CSB06011','Janie Stanistreet',7),('CSB06012','Noak Giannazzo',6),('CSB06013','Giles Eannetta',8),('CSB06014','Bendite Topling',1),('CSB06015','Elvina Sayle',4);
/*!40000 ALTER TABLE `student_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-23 19:02:20
