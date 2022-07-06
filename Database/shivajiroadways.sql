CREATE DATABASE  IF NOT EXISTS `shivajiroadways` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shivajiroadways`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: shivajiroadways
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `profilePic` blob,
  PRIMARY KEY (`email`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`email`) REFERENCES `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('swarooppatil0025@gmail.com','Swaroop','1234567890','1234',_binary 'swarooppatil0025.jpg'),('khotpavankumar17@gmail.com','Pavan2','1234567890','1234',_binary 'pavan.jpeg'),('kdmritesh1811@gmail.com','Ritesh','9999999900','12345678',_binary 'ritesh.jpeg'),('swarooppatil1028@gmail.com','Swar','8956210553','12345',_binary '"swaroop".jpg'),('swaroop.patil19@vit.edu','Swar2802','9898989898','123456789',_binary 'swaroop.jpg');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conductor`
--

DROP TABLE IF EXISTS `conductor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conductor` (
  `email` varchar(50) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `profilePic` blob,
  PRIMARY KEY (`email`),
  CONSTRAINT `conductor_ibfk_1` FOREIGN KEY (`email`) REFERENCES `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conductor`
--

LOCK TABLES `conductor` WRITE;
/*!40000 ALTER TABLE `conductor` DISABLE KEYS */;
INSERT INTO `conductor` VALUES ('pavankumar.khot19@vit.edu','Pavanu','9307268996','1234','2001-04-07',_binary 'pavan.jpeg');
/*!40000 ALTER TABLE `conductor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `email` varchar(50) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `licenceNo` varchar(10) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `profilePic` blob,
  PRIMARY KEY (`email`),
  CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`email`) REFERENCES `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES ('swaroop1234@gmail.com','Swaroop','87410258963','1234','ABCDABCD21',00,'2001-02-28',_binary 'swaroo1234.JPG');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email` (
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES ('swarooppatil0025@gmail.com'),('khotpavankumar17@gmail.com'),('kdmritesh1811@gmail.com'),('swaroop00@gmail.com'),('swaroop1@gmail.com'),('swaroop2@gmail.com'),('swarooppatil1028@gmail.com'),('swaroop3@gmail.com'),('swaroop1234@gmail.com'),('swaroop4@gmail.com'),('pavankumar.khot19@vit.edu'),('swaroop12345@gmail.com'),('swaroop.patil19@vit.edu'),('swaroop5@gmail.com'),('swaroop6@gmail.com'),('swaroop7@gmail.com');
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_request`
--

DROP TABLE IF EXISTS `leave_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leave_request` (
  `applicationNo` int(11) NOT NULL AUTO_INCREMENT,
  `reason` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`applicationNo`),
  KEY `email` (`email`),
  CONSTRAINT `leave_request_ibfk_1` FOREIGN KEY (`email`) REFERENCES `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1019 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_request`
--

LOCK TABLES `leave_request` WRITE;
/*!40000 ALTER TABLE `leave_request` DISABLE KEYS */;
INSERT INTO `leave_request` VALUES (1000,'Hospitalization','Casual Leave (CL)','2022-03-16','2022-03-27','Pune','declined','swaroop12345@gmail.com'),(1013,'Recovery After Hospitalization','Half Pay Leave (HPL)','2022-03-16','2022-03-27','Pune','approved','swaroop12345@gmail.com'),(1014,'Election Duty','Leave Without Pay (LWP)','2022-03-16','2022-03-27','Pune','approved','swaroop12345@gmail.com'),(1015,'Casual/Incidental','Casual Leave (CL)','2022-03-17','2022-03-19','Pune','declined','swaroop12345@gmail.com'),(1016,'Hospitalization','Casual Leave (CL)','2022-03-17','2022-03-28','Pune','approved','swaroop12345@gmail.com'),(1017,'Medical Ground','Maternity Leave (ML)','2022-03-17','2022-03-18','Pune','pending','swaroop12345@gmail.com'),(1018,'Casual/Incidental','Maternity Leave (ML)','2022-03-22','2022-03-28','Pune','pending','swaroop12345@gmail.com');
/*!40000 ALTER TABLE `leave_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passanger`
--

DROP TABLE IF EXISTS `passanger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passanger` (
  `email` varchar(50) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `walletBalance` int(11) DEFAULT NULL,
  `profilePic` blob,
  PRIMARY KEY (`email`),
  CONSTRAINT `passanger_ibfk_1` FOREIGN KEY (`email`) REFERENCES `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passanger`
--

LOCK TABLES `passanger` WRITE;
/*!40000 ALTER TABLE `passanger` DISABLE KEYS */;
INSERT INTO `passanger` VALUES ('swarooppatil00@gmail.com','Swaroop','800','1234',90,_binary 'Screenshot (95).png'),('swap0@gmail.com','Shubham','1234567890','12345',5,_binary 's.jpg'),('swaroop00@gmail.com','Pruthviraj','962559000','1234',170,_binary '1234.jpg');
/*!40000 ALTER TABLE `passanger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy`
--

DROP TABLE IF EXISTS `policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `policy` (
  `pNo` int(11) NOT NULL AUTO_INCREMENT,
  `pName` varchar(50) DEFAULT NULL,
  `pDescription` varchar(15000) DEFAULT NULL,
  PRIMARY KEY (`pNo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy`
--

LOCK TABLES `policy` WRITE;
/*!40000 ALTER TABLE `policy` DISABLE KEYS */;
INSERT INTO `policy` VALUES (6,'Term & Conditions',' ');
/*!40000 ALTER TABLE `policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `reportNo` int(11) NOT NULL AUTO_INCREMENT,
  `routeNo` varchar(50) DEFAULT NULL,
  `standName` varchar(255) DEFAULT NULL,
  `busNo` varchar(10) DEFAULT NULL,
  `description` varchar(999) DEFAULT NULL,
  `submittedBy` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`reportNo`),
  KEY `submittedBy` (`submittedBy`),
  CONSTRAINT `report_ibfk_1` FOREIGN KEY (`submittedBy`) REFERENCES `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (13,'33','Abhishek','DL 1234','burned by roits','swaroop12345@gmail.com');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
  `serialNo` int(11) NOT NULL AUTO_INCREMENT,
  `routeNo` varchar(50) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`serialNo`),
  UNIQUE KEY `routeNo` (`routeNo`)
) ENGINE=InnoDB AUTO_INCREMENT=741 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (1,'2A','Chh.ShivajiNagar','Katraj'),(2,'11','Swargate','Upper Depot'),(3,'11A','Swargate','Narhegaon'),(4,'11K','Kondhwa Hospital','Swargate'),(5,'12AC','Sahakarnagar','Sangamwadi'),(6,'13','Swargate','Alandi'),(7,'13A','Swargate','Taljai Pathar Dhankawadi'),(8,'15AC','Katraj','Baner Depot'),(9,'20','Marketyard','Ganapati Matha'),(10,'21','Pune Station','Kothrud Depot'),(11,'21N','Upper Depot','Pune Station'),(12,'22','Pune Station','VimaanNagar'),(13,'24','Swargate','S.R.P.F.Camp (Wanvadi)');
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routestands`
--

DROP TABLE IF EXISTS `routestands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routestands` (
  `standNo` int(11) NOT NULL,
  `routeNo` varchar(50) DEFAULT NULL,
  `standName` varchar(255) DEFAULT NULL,
  KEY `routeNo` (`routeNo`),
  CONSTRAINT `routestands_ibfk_1` FOREIGN KEY (`routeNo`) REFERENCES `route` (`routeNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routestands`
--

LOCK TABLES `routestands` WRITE;
/*!40000 ALTER TABLE `routestands` DISABLE KEYS */;
INSERT INTO `routestands` VALUES (1,'2A','ShivajiNagar'),(2,'2A','COEP Hostel'),(3,'2A','Shivaji Putala'),(4,'2A','Ma.Na.Pa Bhavan'),(5,'2A','Vasant Takies'),(6,'2A','Mandai'),(7,'2A','Shahu Chowk'),(8,'2A','Shivaji Maratha School'),(9,'2A','Gokul Bhavan'),(10,'2A','Swargate'),(11,'2A','Laxmi Narayan Theater'),(12,'2A','S.T. Colony'),(13,'2A','Bhapkar Petrol Pump'),(14,'2A','Bharati Vidyapeeth'),(15,'2A','Katraj'),(1,'11','Swargate'),(2,'11','Laxmi Narayan Theatre'),(3,'11','S.T.Colony (Panchami Hotel) Brts'),(4,'11','Bhapkar Petrol Pump Brts'),(5,'11','Pushpa Mangal Karyalaya'),(6,'11','E.S.I. Hospital'),(7,'11','Vasant Baug'),(8,'11','Kothari Corner'),(9,'11','Bibewadi'),(10,'11','Bharat Jyoti'),(11,'11','Lower Indiranagar'),(12,'11','Chintamaninagar'),(13,'11','State Bank Colony'),(14,'11','Upper Indiranagar'),(15,'11','Upper Depot'),(1,'11A','Swargate'),(2,'11A','Parvati Payatha'),(3,'11A','Dandekar Pul'),(4,'11A','Panmala'),(5,'11A','Jal Shudhikaran Kendra Parvati'),(6,'11A','Ganesh Mala'),(7,'11A','P.L.Deshpande Udyan / Navshya Maruti Chowk'),(8,'11A','Vitthalwadi Jakat Naka'),(9,'11A','Jaidevnagar'),(10,'11A','Rajaram Pul'),(11,'11A','Vitthalwadi Sinhgad Road'),(12,'11A','Hingane Khurd'),(13,'11A','Anandnagar Sinhgad Road'),(14,'11A','Ganesh Park'),(15,'11A','Manikbaug'),(16,'11A','Indian Hume Company'),(17,'11A','Fun Time'),(18,'11A','Vadgaon Budruk Phata'),(19,'11A','Patil Colony'),(20,'11A','Dhayari Phata'),(21,'11A','Gokulnagar Narhe Road'),(22,'11A','Datta Mandir Narhe Road'),(23,'11A','Dhayareshwar Industries (Surbhi)'),(24,'11A','Bhargav Industries'),(25,'11A','Manaji Nagar'),(26,'11A','J.K. Industries'),(27,'11A','Shree Industries'),(28,'11A','Narhegaon'),(1,'11K','Kondhwa Hospital'),(2,'11K','Sinhgad College'),(3,'11K','Ganraj Marble'),(4,'11K','Angraj Nagar'),(5,'11K','Khadi Machine Chowk Kondhwa'),(6,'11K','Khadi Machine Chowk'),(7,'11K','Kondhwa Budruk'),(8,'11K','Ramdas Maral'),(9,'11K','Talab Farm'),(10,'11K','Kondhwa Police Station'),(11,'11K','Chaitanya Vidyalaya'),(12,'11K','Kondhwa Khurd'),(13,'11K','Kondhwa School'),(14,'11K','Uco Bank'),(15,'11K','Kamela'),(16,'11K','Lullanagar'),(17,'11K','Mount Convent School'),(18,'11K','Defence Colony'),(19,'11K','Marketyard'),(20,'11K','Godown Marketyard'),(21,'11K','Wakhar Mahamandal Marketyard'),(22,'11K','Giridhar Bhavan'),(23,'11K','Sant Namdev Vidyalay'),(24,'11K','Maharshi Nagar'),(25,'11K','Mukund Nagar'),(26,'11K','Ahireshwarwadi'),(27,'11K','Kirloskar Press'),(28,'11K','Laxmi Narayan Theatre'),(29,'11K','Swargate'),(1,'12AC','Sangamwadi'),(2,'12AC','Luxury Bus Offices Sangamwadi'),(3,'12AC','COEP Hostel'),(4,'12AC','Shivaji Putala'),(5,'12AC','Ma.Na.Pa.Bhavan'),(6,'12AC','Shaniwarwada'),(7,'12AC','Vasant Talkies (Appa Balwant Chowk)'),(8,'12AC','Mandai'),(9,'12AC','Shahu Chowk'),(10,'12AC','Shivaji Maratha School'),(11,'12AC','Swargate'),(12,'12AC','Laxmi Narayan Theatre'),(13,'12AC','S.T.Colony'),(14,'12AC','Panchami Hotel'),(15,'12AC','Shiv Darshan'),(16,'12AC','Laxminagar Corner'),(17,'12AC','Sarang Society'),(18,'12AC','Dashabhuja Ganpati Mandir'),(19,'12AC','Chintamani Society'),(20,'12AC','Sahakarnagar'),
(1,'13','Swargate'),(2,'13','Ghorpade Peth'),(3,'13','S.T. Divisional Office'),(4,'13','Meera Society'),(5,'13','Golibar Maidan'),(6,'13','Juna Pulgate'),(7,'13','Bombay Garage'),(8,'13','Central Bank'),(9,'13','Westend / Arora Towers'),(10,'13','G.P.O.'),(11,'13','Sasoon Hospital'),(12,'13','Pune Station'),(13,'13','Ruby Hall (Jehangir Hospital)'),(14,'13','Guruprasad Bungalow'),(15,'13','Hotel Sun & Sand'),(16,'13','Bund Garden'),(17,'13','Yerwada'),(18,'13','Shadal Baba Dargah'),(19,'13','Kendriya Vidyalay Brts'),(20,'13','Deccan College Brts'),(21,'13','Ambedkar Society Brts'),(22,'13','Home Guard Office Brts'),(23,'13','Phule Nagar Brts'),(24,'13','Mental Hospital Corner Brts'),(25,'13','Sathe Biscuit Company Brts'),(26,'13','Vishrantwadi'),(27,'13','R.D. Colony'),(28,'13','Kalas Gaon'),(29,'13','Pathanbaba Dargah'),(30,'13','Mhaske Wasti'),(31,'13','Parade Ground'),(32,'13','Bopkhel Phata'),(33,'13','Wireless Company'),(34,'13','Wireless Hospital'),(35,'13','A.I.T. College'),(36,'13','Wadke Mala Dighi'),(37,'13','Dighi Gaon'),(38,'13','Parandenagar'),(39,'13','Dattanagar Dighi'),(40,'13','Telco Godown'),(41,'13','Magazine Chowk'),(42,'13','Moze Vidyalay'),(43,'13','Sai Mandir'),(44,'13','Nirma Company'),(45,'13','Gokhale Mala (Sankalpa Garden)'),(46,'13','Wadmukhwadi'),(47,'13','Choviswadi'),(48,'13','Charholi Phata'),(49,'13','Kate Wasti'),(50,'13','Kate Wasti Petrol Pump'),(51,'13','Dehu Phata'),(52,'13','Alandi S.T. Stand'),(53,'13','Alandi'),
(1,'13A','Taljai Pathar Dhankawadi'),(2,'13A','Shankar Darshan Society'),(3,'13A','Hatti Chowk'),(4,'13A','Sambhajinagar Dhankawadi'),(5,'13A','K.K. Market / Vishweshwar Bank'),(6,'13A','Padmavati'),(7,'13A','Power House Padmavati'),(8,'13A','Date Bus Stop'),(9,'13A','Dyaneshwar Society Padmavati'),(10,'13A','Gandhi Training Centre'),(11,'13A','Sarang Society'),(12,'13A','Laxminagar Corner'),(13,'13A','Shiv Darshan'),(14,'13A','Parvati Darshan'),(15,'13A','Swargate'),(1,'15AC','Katraj'),(2,'15AC','Katraj Wonder City'),(3,'15AC','Santoshnagar Katraj'),(4,'15AC','Dattanagar Katraj'),(5,'15AC','Trimurti Garden / Ambegaon D-Mart'),(6,'15AC','Vitthal Nagar Ambegaon'),(7,'15AC','Abhinav College Ambegaon'),(8,'15AC','Ambegaon'),(9,'15AC','Shubham Hotel'),(10,'15AC','Krushnai Mangal Karyalay'),(11,'15AC','Navale Pul'),(12,'15AC','Vadgaon Bridge'),(13,'15AC','Daulatnagar'),(14,'15AC','Warje Bridge'),(15,'15AC','Naadbramha Society'),(16,'15AC','Cipla Centre / Popular Nagar Warje'),(17,'15AC','Atul Nagar Warje'),(18,'15AC','Runwal Society'),(19,'15AC','Sai Sayajinagar'),(20,'15AC','Rosary School'),(21,'15AC','Futira Complex'),(22,'15AC','Raviraj Residency'),(23,'15AC','Chandani Chowk'),(24,'15AC','Paranjape Scheme'),(25,'15AC','Nisarg Society'),(26,'15AC','Omkar Garden Chowk (Highway Corner)'),(27,'15AC','D.S.K. Toyota Showroom'),(28,'15AC','H.R.A. Reliance'),(29,'15AC','Pashan Tale'),(30,'15AC','Sutarwadi Pashan'),(31,'15AC','Sayali Restaurant'),(32,'15AC','Suskhind Phata'),(33,'15AC','Girme Park'),(34,'15AC','Bitwise Tower'),(35,'15AC','Yashoda Nivas'),(36,'15AC','Radha Chowk (Mhalunge Phata)'),(37,'15AC','Baner Depot / D Mart'),(1,'20','Marketyard'),(2,'20','Wakhar Mahamandal Marketyard'),(3,'20','Giridhar Bhavan'),(4,'20','Sant Namdev Vidyalay'),(5,'20','Maharshi Nagar'),(6,'20','Mukund Nagar'),(7,'20','Ahireshwarwadi'),(8,'20','Kirloskar Press'),(9,'20','Swargate'),(10,'20','Sarasbaug'),(11,'20','Madiwale Colony'),(12,'20','S.P. College'),(13,'20','Maharashtra Mandal'),(14,'20','Sahitya Parishad'),(15,'20','Deccan Corner'),(16,'20','Garware College Metro Station'),(17,'20','Sonal Hall'),(18,'20','Nal Stop'),(19,'20','Mahadev Mandir (Nal Stop)'),(20,'20','Mehendale Garage'),(21,'20','Date Engineering'),(22,'20','Karnataka High School'),(23,'20','Prasanna Bungalow'),(24,'20','Alankar Police Chowky'),(25,'20','Nav Sahyadri'),(26,'20','United Western Sabhagruha'),(27,'20','Madhusanchay Society (Navsahayadri)'),(28,'20','Vitthal Mandir'),(29,'20','Shreeman Society'),(30,'20','Shipra Society'),(31,'20','Sahwas Corner'),(32,'20','Canal Corner'),(33,'20','Provision Stores'),(34,'20','Karvenagar'),(35,'20','Galinde Path'),(36,'20','Tapodham'),(37,'20','Warje Bridge (Warje Gaon)'),(38,'20','Warje Malwadi'),(39,'20','Dnyanesh Society'),(40,'20','Ganpati Matha'),(1,'21','Pune Station'),(2,'21','Income Tax Office'),(3,'21','G.P.O.'),(4,'21','Sasoon Hospital (Collector Kacheri)'),(5,'21','Gadital Juna Bazar'),(6,'21','Kumbharwada'),(7,'21','Ma.Na.Pa.Bhavan (River Side)'),(8,'21','Balgandharva / Sambhaji Maharaj Udyan'),(9,'21','Deccan Gymkhana'),(10,'21','Deccan Corner'),(11,'21','Garware College Metro Station'),(12,'21','Sonal Hall'),(13,'21','Nal Stop'),(14,'21','S.N.D.T.College'),(15,'21','Paud Phata'),(16,'21','More Vidyalaya Paud Road'),(17,'21','Ideal Colony'),(18,'21','Anandnagar Kothrud'),(19,'21','Jai Bhavaninagar'),(20,'21','Pratiknagar'),(21,'21','Vanaz Corner'),(22,'21','Vanaz Company'),(23,'21','Kachara Depot'),(24,'21','Bharati Nagar'),(25,'21','Kothrud Depot'),
(1,'21N','Upper Depot'),(2,'21N','Upper Indiranagar'),(3,'21N','State Bank Colony'),(4,'21N','Chintamaninagar'),(5,'21N','Lower Indiranagar'),(6,'21N','Bharat Jyoti'),(7,'21N','Bibewadi'),(8,'21N','Kothari Corner'),(9,'21N','Vasantbaug Chowk'),(10,'21N','Kumar Park'),(11,'21N','Zala Complex'),(12,'21N','Gangadham Corner Upper Road'),(13,'21N','Marketyard'),(14,'21N','Wakhar Mahamandal Marketyard'),(15,'21N','Giridhar Bhavan'),(16,'21N','P And T Colony'),(17,'21N','Apsara Talkies'),(18,'21N','Sonawne Hospital'),(19,'21N','Ramoshi Gate'),(20,'21N','A.D. Camp Chowk'),(21,'21N','Nana Peth'),(22,'21N','Power House Rastapeth'),(23,'21N','Empolyment Office'),(24,'21N','Jilha Parishad State Bank'),(25,'21N','Sasoon Hospital (Collector Kacheri)'),(26,'21N','Pune Station Depot'),(27,'21N','Pune Station'),
(1,'22','Viman Nagar'),(2,'22','Konark Campus'),(3,'22','Gangapuram Mhada'),(4,'22','Konark Nagar'),(5,'22','Corporation Bank'),(6,'22','Dattamandir Chowk'),(7,'22','Kailas Market'),(8,'22','Bekarnagar'),(9,'22','Green Oaks'),(10,'22','Viman Nagar Corner'),(11,'22','Novotel Hotel'),(12,'22','Wadgaonsheri Phata'),(13,'22','Ramwadi Jakat Naka'),(14,'22','Agakhan Palace'),(15,'22','Shastrinagar'),(16,'22','Wadia Bungalow'),(17,'22','Gunjan Corner'),(18,'22','Yerwada Gaon'),(19,'22','Bund Garden'),(20,'22','Hotel Sun & Sand'),(21,'22','Guruprasad Bungalow'),(22,'22','Ruby Hall (Jehangir Hospital)'),(23,'22','Alankar Talkies'),(24,'22','Income Tax Office (Sadhu Vaswani Chowk)'),(25,'22','G.P.O.'),(26,'22','Sasoon Hospital (Collector Kacheri)'),
(1,'24','Swargate'),(2,'24','Ghorpade Peth'),(3,'24','S.T. Divisional Office'),(4,'24','Meera Society'),(5,'24','Golibar Maidan'),(6,'24','Pulgate'),(7,'24','Race Course'),(8,'24','Bhairoba Nala'),(9,'24','Fatimanagar'),(10,'24','Parmar Nagar'),(11,'24','Shivarkar Udyan'),(12,'24','Jambhulkarnagar'),(13,'24','Jagtap Chowk'),(14,'24','Kedarinagar Corner'),(15,'24','S.R.P.F.Camp (Wanvadi)');
/*!40000 ALTER TABLE `routestands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary` (
  `transactionNo` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transactionNo`),
  KEY `email` (`email`),
  CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`email`) REFERENCES `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1017 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (1001,'"swarooppatil1028"@gmail.com',20000,'2022-03-17 09:41:09'),(1002,'swaroop12345@gmail.com',20000,'2022-03-17 09:46:32'),(1003,'swaroop12345@gmail.com',30000,'2022-03-17 09:47:00'),(1004,'"swarooppatil1028"@gmail.com',NULL,'2022-03-17 15:14:00'),(1007,'swaroop12345@gmail.com',NULL,'2022-03-17 15:14:46'),(1008,'swaroop12345@gmail.com',2300,'2022-03-17 15:15:04'),(1009,'swaroop12345@gmail.com',300,'2022-03-17 15:27:03'),(1011,'swaroop12345@gmail.com',600,'2022-03-17 15:30:23'),(1000,'swaroop1234@gmail.com',4000,'2022-03-17 15:31:45'),(1013,'pavankumar.khot19@vit.edu',18000,'2022-03-17 15:33:49'),(1014,'swaroop12345@gmail.com',7000,'2022-03-18 00:33:35');
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `ticketNo` int(11) NOT NULL AUTO_INCREMENT,
  `routeNo` varchar(50) NOT NULL,
  `source` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `bookingTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `feedback` varchar(999) DEFAULT NULL,
  `type` varchar(4) DEFAULT NULL,
  `noOfpassangers` int(11) DEFAULT NULL,
  `fare` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticketNo`),
  KEY `routeNo` (`routeNo`),
  KEY `email` (`email`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`routeNo`) REFERENCES `route` (`routeNo`),
  CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`email`) REFERENCES `passanger` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1042 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1003,'15AC','Swargate','Upper Depot','swaroop00@gmail.com','2022-03-13 16:56:53',NULL,'ORD',1,15),(1007,'11A','Shivaji Maharaj Putala Dapodi','Dapodi Gaon','swaroop00@gmail.com','2022-03-13 17:05:01',NULL,'ORD',1,15),(1019,'11K','Swargate','Kondhawa Hospital','swaroop00@gmail.com','2022-03-13 17:10:38',NULL,'ORD',1,10),(1020,'11K','Laxmi Narayan Theatre','Marketyard','swaroop00@gmail.com','2022-03-13 17:14:02',NULL,'ORD',1,10),(1021,'11A','Shivaji Maharaj Putala Dapodi','Dapodi Gaon','swaroop00@gmail.com','2022-03-13 17:15:22',NULL,'ORD',1,15),(1022,'2A','Swargate','COEP Hostel','swaroop00@gmail.com','2022-03-14 06:30:28',NULL,'ORD',1,5),(1023,'11A','Shivaji Maharaj Putala Dapodi','Dapodi Gaon','swaroop00@gmail.com','2022-03-14 06:35:00',NULL,'ORD',1,15),(1024,'11A','Rajaram Pul','Manaji Nagar','swaroop00@gmail.com','2022-03-14 06:39:25',NULL,'ORD',1,5),(1025,'11A','Swargate','Narhegaon','swaroop00@gmail.com','2022-03-14 06:40:09',NULL,'ORD',1,5),(1026,'11A','Dapodi Gaon','Bopodi','swaroop00@gmail.com','2022-03-14 06:40:22',NULL,'ORD',1,5),(1027,'11A','Dapodi Gaon','Bopodi','swaroop00@gmail.com','2022-03-14 06:41:16',NULL,'ORD',1,5),(1032,'13A','Swargate','Taljai Pathar','swap0@gmail.com','2022-03-15 06:13:58',NULL,'ORD',1,15),(1033,'15AC','Katraj','Baner Depot','swap0@gmail.com','2022-03-15 06:14:23','The management is quite good and the service by this website is appreciated','AC',1,25),(1034,'20','Marketyard','Ganapati Matha','swap0@gmail.com','2022-03-15 06:14:57',NULL,'ORD',1,5),(1037,'13','Swargate','Alandi','swaroop00@gmail.com','2022-03-16 13:37:20',NULL,'ORD',1,10),(1038,'11','Upper Depot','Swargate','swaroop00@gmail.com','2022-03-17 18:58:27',NULL,'ORD',1,15),(1039,'24','Swargate','S.R.P.F. Camp','swaroop00@gmail.com','2022-03-19 05:43:10',NULL,'ORD',1,5),(1040,'21','Pune Station','Kothrud Depot','swaroop00@gmail.com','2022-03-20 18:24:56','Thank you','AC',13,325);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketchecker`
--

DROP TABLE IF EXISTS `ticketchecker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticketchecker` (
  `email` varchar(50) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `profilePic` blob,
  PRIMARY KEY (`email`),
  CONSTRAINT `ticketchecker_ibfk_1` FOREIGN KEY (`email`) REFERENCES `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketchecker`
--

LOCK TABLES `ticketchecker` WRITE;
/*!40000 ALTER TABLE `ticketchecker` DISABLE KEYS */;
INSERT INTO `ticketchecker` VALUES ('swaroop12345@gmail.com','swap','9999999999','12345','2001-03-28',_binary 'forced-perspective-photography-of-cars-running-on-road-below-799443.jpg'),('swaroop5@gmail.com','swar28','886009709','1234','2001-04-28',_binary 'swaroo1234.JPG'),('swaroop7@gmail.com','swa282','1234567890','1234','2001-0-28',_binary 'swaroo1234.JPG');
/*!40000 ALTER TABLE `ticketchecker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ticketoutput`
--

DROP TABLE IF EXISTS `ticketoutput`;
/*!50001 DROP VIEW IF EXISTS `ticketoutput`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ticketoutput` AS SELECT 
 1 AS `bookingDate`,
 1 AS `ticketNo`,
 1 AS `routeNo`,
 1 AS `source`,
 1 AS `destination`,
 1 AS `type`,
 1 AS `email`,
 1 AS `noOfPassangers`,
 1 AS `fare`,
 1 AS `feedback`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `ticketoutput`
--

/*!50001 DROP VIEW IF EXISTS `ticketoutput`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ticketoutput` AS select date_format(`ticket`.`bookingTime`,'%m/%d/%Y %H:%i:%S') AS `bookingDate`,concat(substr(`ticket`.`source`,1,3),'_',substr(`ticket`.`destination`,1,3),`ticket`.`ticketNo`) AS `ticketNo`,`ticket`.`routeNo` AS `routeNo`,`ticket`.`source` AS `source`,`ticket`.`destination` AS `destination`,`ticket`.`type` AS `type`,`ticket`.`email` AS `email`,`ticket`.`noOfpassangers` AS `noOfPassangers`,`ticket`.`fare` AS `fare`,`ticket`.`feedback` AS `feedback` from `ticket` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-21 22:35:44