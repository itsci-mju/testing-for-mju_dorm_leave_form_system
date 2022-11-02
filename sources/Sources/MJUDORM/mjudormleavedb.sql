-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: mjudormleavedb
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
-- Table structure for table `dormitory`
--

DROP TABLE IF EXISTS `dormitory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dormitory` (
  `dormID` int(11) NOT NULL,
  `dormName` varchar(100) NOT NULL,
  PRIMARY KEY (`dormID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dormitory`
--

LOCK TABLES `dormitory` WRITE;
/*!40000 ALTER TABLE `dormitory` DISABLE KEYS */;
INSERT INTO `dormitory` VALUES (0,'ส่วนกลาง'),(1,'หอพักชาญกสิกิจ'),(2,'เทพนฤมิต'),(3,'หอพักวิทยศิลป์'),(4,'หอพักวัฒนศิลป์'),(5,'หอพักสหศิลป์'),(6,'หอพักผดุงศิลป์'),(7,'หอพักศรีเกษตร'),(8,'หอพักสุมิตร'),(9,'หอพักฝึกหัดครู'),(10,'หอพักรัตมา'),(11,'หอพักอุดมศิลป์');
/*!40000 ALTER TABLE `dormitory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dormofficer`
--

DROP TABLE IF EXISTS `dormofficer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dormofficer` (
  `officerID` varchar(255) NOT NULL,
  `officerName` varchar(100) NOT NULL,
  PRIMARY KEY (`officerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dormofficer`
--

LOCK TABLES `dormofficer` WRITE;
/*!40000 ALTER TABLE `dormofficer` DISABLE KEYS */;
INSERT INTO `dormofficer` VALUES ('chanida','นางสาวชนิดา ทาแก้ว'),('chasinee','นางสาวชนัดดา ธีรวราบุตร'),('janpen','นางจันทร์เพ็ญ สะถา'),('jiranan','นางจิรนันท์ วรรณวิชิต'),('jirapon_s','นางสาวจิราภรณ์ ทรายคำ'),('kosin-l','นายโกสินทร์ หลวงละ'),('lak_y','นางเล็ก ยังศักดิ์'),('mon_jedsada','นายเจษฎา ทรายกันคำ'),('napat_t','นายณภัทร ธิการ'),('nitchamon','นางสาวณิชมน ธรรมรักษ์'),('panyawat-c','นายปัญญวัจน์ ชลวิชิต'),('saivasan_rp','นางสาวสายวสันต์ เรือนแปง'),('sumali2','นางสุมาลี ปานสีสด'),('supatta_n','นางสาวสุพัตรา งามตา'),('surachai-s','นายสุรชัย ศรีนรจันทร์'),('surasak_km','นายสุรศักดิ์ กำมะหยี่'),('wilaiporn_cr','นางวิไลพร ไชยคำร้อง');
/*!40000 ALTER TABLE `dormofficer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leavingform`
--

DROP TABLE IF EXISTS `leavingform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leavingform` (
  `requestDate` datetime(6) NOT NULL,
  `advisorApproveStatus` int(11) DEFAULT NULL,
  `finishDate` datetime(6) NOT NULL,
  `leaveDetail` text NOT NULL,
  `noLeaveDetail` text,
  `officerApproveStatus` int(11) DEFAULT NULL,
  `parentPhone` varchar(10) DEFAULT NULL,
  `startDate` datetime(6) NOT NULL,
  `typeLeave` text NOT NULL,
  `leave_stu` varchar(20) NOT NULL,
  PRIMARY KEY (`requestDate`),
  KEY `FKenx5ephaa7ym7wm9kqxcfmjue` (`leave_stu`),
  CONSTRAINT `FKenx5ephaa7ym7wm9kqxcfmjue` FOREIGN KEY (`leave_stu`) REFERENCES `student` (`stuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leavingform`
--

LOCK TABLES `leavingform` WRITE;
/*!40000 ALTER TABLE `leavingform` DISABLE KEYS */;
/*!40000 ALTER TABLE `leavingform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noleavedate`
--

DROP TABLE IF EXISTS `noleavedate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noleavedate` (
  `noleaveID` int(11) NOT NULL AUTO_INCREMENT,
  `detail` text,
  `finishDate` datetime(6) NOT NULL,
  `title` text NOT NULL,
  `startDate` datetime(6) NOT NULL,
  PRIMARY KEY (`noleaveID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noleavedate`
--

LOCK TABLES `noleavedate` WRITE;
/*!40000 ALTER TABLE `noleavedate` DISABLE KEYS */;
/*!40000 ALTER TABLE `noleavedate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noleavedate_dorm`
--

DROP TABLE IF EXISTS `noleavedate_dorm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noleavedate_dorm` (
  `noleavedate_noleaveID` int(11) NOT NULL,
  `dormitory_dormID` int(11) NOT NULL,
  PRIMARY KEY (`dormitory_dormID`,`noleavedate_noleaveID`),
  KEY `FKj3pi9ob42d3v56dvphckn8jf2` (`noleavedate_noleaveID`),
  CONSTRAINT `FK4v9v493bqf70e3y0xxix2hqw9` FOREIGN KEY (`dormitory_dormID`) REFERENCES `dormitory` (`dormID`),
  CONSTRAINT `FKj3pi9ob42d3v56dvphckn8jf2` FOREIGN KEY (`noleavedate_noleaveID`) REFERENCES `noleavedate` (`noleaveID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noleavedate_dorm`
--

LOCK TABLES `noleavedate_dorm` WRITE;
/*!40000 ALTER TABLE `noleavedate_dorm` DISABLE KEYS */;
/*!40000 ALTER TABLE `noleavedate_dorm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `typeofficer_typeId` int(11) NOT NULL,
  `dormofficer_officerID` varchar(255) NOT NULL,
  `dormitory_dormID` int(11) NOT NULL,
  PRIMARY KEY (`dormitory_dormID`,`dormofficer_officerID`,`typeofficer_typeId`),
  KEY `FK28ny28d4ncpa7cec9pvmwf59j` (`typeofficer_typeId`),
  KEY `FK2nr0hxve3q8kfcl1nbtm19f8d` (`dormofficer_officerID`),
  CONSTRAINT `FK28ny28d4ncpa7cec9pvmwf59j` FOREIGN KEY (`typeofficer_typeId`) REFERENCES `typeofficer` (`typeId`),
  CONSTRAINT `FK2nr0hxve3q8kfcl1nbtm19f8d` FOREIGN KEY (`dormofficer_officerID`) REFERENCES `dormofficer` (`officerID`),
  CONSTRAINT `FKn0jx6lc1583f1wpw0ged387on` FOREIGN KEY (`dormitory_dormID`) REFERENCES `dormitory` (`dormID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'panyawat-c',0),(1,'jiranan',2),(1,'napat_t',2),(1,'surasak_km',2),(1,'mon_jedsada',4),(1,'sumali2',4),(1,'lak_y',6),(1,'supatta_n',7),(1,'jirapon_s',8),(1,'chanida',9),(1,'saivasan_rp',10),(1,'chasinee',11),(1,'janpen',11),(2,'panyawat-c',0),(2,'napat_t',2),(2,'surasak_km',2),(2,'mon_jedsada',3),(2,'kosin-l',4),(2,'mon_jedsada',5),(2,'surachai-s',6),(2,'chanida',9),(2,'wilaiporn_cr',10),(2,'nitchamon',11),(3,'panyawat-c',0),(3,'surasak_km',0);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `stuID` varchar(20) NOT NULL,
  `stuName` varchar(100) NOT NULL,
  `stuRoom` int(11) NOT NULL,
  `stuToken` varchar(255) DEFAULT NULL,
  `stuMajor` varchar(100) NOT NULL,
  `stu_dorm` int(11) NOT NULL,
  PRIMARY KEY (`stuID`),
  KEY `FKt3doqrpxvkrrjw6eixbkqbdg6` (`stu_dorm`),
  CONSTRAINT `FKt3doqrpxvkrrjw6eixbkqbdg6` FOREIGN KEY (`stu_dorm`) REFERENCES `dormitory` (`dormID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typeofficer`
--

DROP TABLE IF EXISTS `typeofficer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typeofficer` (
  `typeId` int(11) NOT NULL,
  `typeName` varchar(255) NOT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typeofficer`
--

LOCK TABLES `typeofficer` WRITE;
/*!40000 ALTER TABLE `typeofficer` DISABLE KEYS */;
INSERT INTO `typeofficer` VALUES (1,'เจ้าหน้าที่หอพัก'),(2,'ที่ปรึกษาหอพัก'),(3,'เจ้าหน้าที่ส่วนกลาง');
/*!40000 ALTER TABLE `typeofficer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mjudormleavedb'
--

--
-- Dumping routines for database 'mjudormleavedb'
--
/*!50003 DROP PROCEDURE IF EXISTS `addleaveform` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addleaveform`( 
	in requestDate datetime(6), 
	in startDate datetime(6), 
	in finishDate datetime(6), 
    in typeLeave text,
	in leaveDetail text, 
	in parentPhone varchar(10),
	in leave_stu varchar(20) 
)
BEGIN
	insert into leavingform (requestDate, typeLeave, startDate, finishDate, leaveDetail, parentPhone, officerApproveStatus, advisorApproveStatus, leave_stu)
    values (requestDate, typeLeave, startDate, finishDate, leaveDetail, parentPhone, 0, 0,leave_stu);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addlinetoken` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addlinetoken`(in v_stuid varchar(20),in tokencode varchar(255))
BEGIN
	update student set stutoken = tokencode where stuID = v_stuid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addnoleavedate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addnoleavedate`(in title text,in detail text,in startDate datetime(6), in finishDate datetime(6))
BEGIN
	insert into noleavedate (title, detail, startDate , finishDate)
    values (title, detail, startDate , finishDate);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addnoleavedatedorm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addnoleavedatedorm`(in noleavedate_noleaveID int ,in  dormitory_dormID int)
BEGIN
	insert into noleavedate_dorm (noleavedate_noleaveID, dormitory_dormID) 
    values (noleavedate_noleaveID, dormitory_dormID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addofficer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addofficer`(in officerID varchar(255),in officerName varchar(100))
BEGIN
	insert into dormofficer (officerID, officerName) values(officerID, officerName);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addRolesOfficer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addRolesOfficer`(in dormofficer_officerID varchar(255),in typeofficer_typeId int, in dormitory_dormID int)
BEGIN
	insert into roles (typeofficer_typeId, dormofficer_officerID, dormitory_dormID)
    values(typeofficer_typeId,dormofficer_officerID,dormitory_dormID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addstudents` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addstudents`(
	in v_stuID varchar(255),
	in v_stuName varchar(255),
	in v_stuMajor varchar(255),
	in v_room int,
    in v_stu_dorm int
	)
BEGIN
			insert into student (stuID,stuName,stuMajor,stuRoom,stu_dorm)
			value (v_stuID,v_stuName,v_stuMajor,v_room,v_stu_dorm);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `advisorapprove` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `advisorapprove`(in v_requestDate datetime(6), in v_leave_stu varchar(20),in v_advisorApproveStatus int)
BEGIN
	update leavingform set advisorApproveStatus = v_advisorApproveStatus  where requestDate = v_requestDate and leave_stu = v_leave_stu ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `advisornotapprove` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `advisornotapprove`(in v_requestDate datetime(6), in v_leave_stu varchar(20),in v_advisorApproveStatus int , in v_textnot text)
BEGIN
	update leavingform 
    set advisorApproveStatus = v_advisorApproveStatus ,
		noLeaveDetail = v_textnot
    where requestDate = v_requestDate and leave_stu = v_leave_stu ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cancelleaveform` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cancelleaveform`(in v_requestDate datetime(6) ,in v_stuid varchar(20))
BEGIN
		delete from leavingform where requestDate = v_requestDate and leave_stu = v_stuid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deletenoleavedate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletenoleavedate`(in v_id int)
BEGIN
		delete from noleavedate_dorm where noleavedate_noleaveID = v_id;
		delete from noleavedate where noleaveID = v_id ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `officerapprove` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `officerapprove`(in v_requestDate datetime(6), in v_leave_stu varchar(20), in v_officerApproveStatus int)
BEGIN
	update leavingform set officerApproveStatus = v_officerApproveStatus  where requestDate = v_requestDate and leave_stu = v_leave_stu ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `officernotapprove` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `officernotapprove`(in v_requestDate datetime(6), in v_leave_stu varchar(20), in v_officerApproveStatus int,in v_textnot text)
BEGIN
	update leavingform 
    set officerApproveStatus = v_officerApproveStatus ,
		noLeaveDetail = v_textnot
    where requestDate = v_requestDate and leave_stu = v_leave_stu ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `removeofficer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `removeofficer`(in v_officerId varchar(255))
BEGIN
	delete from roles where dormofficer_officerID = v_officerId;
	delete from dormofficer where officerID = v_officerId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `removeRoles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `removeRoles`(in v_officerId varchar(255),in v_rid int)
BEGIN
	delete from roles where dormofficer_officerID = v_officerId and typeofficer_typeId = v_rid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `removestudents` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `removestudents`(in v_dorm int)
BEGIN
	delete leavingform from leavingform left join student  on leavingform.leave_stu = student.stuID  where stu_dorm = v_dorm;
    delete from student where stu_dorm = v_dorm;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateleaveform` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateleaveform`( 
	in v_requestDate datetime(6), 
	in v_startDate datetime(6), 
	in v_finishDate datetime(6), 
    in v_typeLeave text,
	in v_leaveDetail text, 
	in v_parentPhone varchar(10),
	in v_leave_stu varchar(20),
    in v_oldReDate datetime(6)
)
BEGIN
		update leavingform 
        set requestDate = v_requestDate , 
        startDate = v_startDate, 
        finishDate = v_finishDate,
        typeLeave = v_typeLeave,
        parentPhone = v_parentPhone,
        leaveDetail = v_leaveDetail
        where requestDate = v_oldReDate and leave_stu = v_leave_stu;
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-22 17:38:10
