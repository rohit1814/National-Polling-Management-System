-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: NationalPolling
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.17.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Candidate_Ans`
--

DROP TABLE IF EXISTS `Candidate_Ans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_Ans` (
  `Ans_id` int(11) DEFAULT NULL,
  `Answer` text,
  `C_id` int(11) DEFAULT NULL,
  `Ques_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Ans`
--

LOCK TABLES `Candidate_Ans` WRITE;
/*!40000 ALTER TABLE `Candidate_Ans` DISABLE KEYS */;
/*!40000 ALTER TABLE `Candidate_Ans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidate_Reg`
--

DROP TABLE IF EXISTS `Candidate_Reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_Reg` (
  `C_Id` int(11) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `FatherName` varchar(50) DEFAULT NULL,
  `Dob` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Party` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Photo` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `ContactNo` varchar(50) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `ElectionReason` varchar(50) DEFAULT NULL,
  `V_id` varchar(50) DEFAULT NULL,
  `Approved` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Reg`
--

LOCK TABLES `Candidate_Reg` WRITE;
/*!40000 ALTER TABLE `Candidate_Reg` DISABLE KEYS */;
INSERT INTO `Candidate_Reg` VALUES (222,'abc','lkj','xyz','16-06-1998','UP','Alld','BJP','win','','.com','Alld','837597239','abc','[C@50555eb1','win','111','yes'),(456,'rohit','Guru','Kesari','16bjune 1998','UP','Alld','BJP','sfn','','kesari.com','Alld','7843999348','rohit','[k, e, s, a, r, w, a, n, i]','win','111','yes'),(333,'Amit','fkshk','Kumar','jknglkn','Bihar','patna','Congress','bjdba','','jsdkl','jdbfjb','958934699','amit','[k, u, m, a, r]','bsdjgbjb','120','yes');
/*!40000 ALTER TABLE `Candidate_Reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidate_Sign`
--

DROP TABLE IF EXISTS `Candidate_Sign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_Sign` (
  `C_id` int(11) DEFAULT NULL,
  `E_SignPath` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Sign`
--

LOCK TABLES `Candidate_Sign` WRITE;
/*!40000 ALTER TABLE `Candidate_Sign` DISABLE KEYS */;
/*!40000 ALTER TABLE `Candidate_Sign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `City_Master`
--

DROP TABLE IF EXISTS `City_Master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `City_Master` (
  `C_id` int(11) DEFAULT NULL,
  `S_id` int(11) DEFAULT NULL,
  `City_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `City_Master`
--

LOCK TABLES `City_Master` WRITE;
/*!40000 ALTER TABLE `City_Master` DISABLE KEYS */;
/*!40000 ALTER TABLE `City_Master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoginMaster`
--

DROP TABLE IF EXISTS `LoginMaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LoginMaster` (
  `UserName` varchar(50) DEFAULT NULL,
  `Pwd` varchar(50) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  `Enabled` varchar(50) DEFAULT NULL,
  `VotEnable` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoginMaster`
--

LOCK TABLES `LoginMaster` WRITE;
/*!40000 ALTER TABLE `LoginMaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `LoginMaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Promise`
--

DROP TABLE IF EXISTS `Promise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Promise` (
  `Promise` varchar(100) DEFAULT NULL,
  `Id` int(11) DEFAULT NULL,
  `C_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Promise`
--

LOCK TABLES `Promise` WRITE;
/*!40000 ALTER TABLE `Promise` DISABLE KEYS */;
INSERT INTO `Promise` VALUES ('Hello',101,222),('May i help u',345,456),('ksd',101,0);
/*!40000 ALTER TABLE `Promise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QuestionAsk`
--

DROP TABLE IF EXISTS `QuestionAsk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QuestionAsk` (
  `Ques_id` int(11) DEFAULT NULL,
  `Question` varchar(200) DEFAULT NULL,
  `V_id` int(11) DEFAULT NULL,
  `C_id` int(11) DEFAULT NULL,
  `Answered` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QuestionAsk`
--

LOCK TABLES `QuestionAsk` WRITE;
/*!40000 ALTER TABLE `QuestionAsk` DISABLE KEYS */;
/*!40000 ALTER TABLE `QuestionAsk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `State_Master`
--

DROP TABLE IF EXISTS `State_Master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `State_Master` (
  `S_id` int(11) DEFAULT NULL,
  `S_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `State_Master`
--

LOCK TABLES `State_Master` WRITE;
/*!40000 ALTER TABLE `State_Master` DISABLE KEYS */;
/*!40000 ALTER TABLE `State_Master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Voter_Reg`
--

DROP TABLE IF EXISTS `Voter_Reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Voter_Reg` (
  `Voter_id` int(11) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `FatherName` varchar(50) DEFAULT NULL,
  `DOB` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `E_mail` varchar(50) DEFAULT NULL,
  `Contact_No` decimal(18,0) DEFAULT NULL,
  `Pin_Code` int(11) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  `V_Photo` varchar(150) DEFAULT NULL,
  `V_ids` varchar(150) DEFAULT NULL,
  `Approve` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Voter_Reg`
--

LOCK TABLES `Voter_Reg` WRITE;
/*!40000 ALTER TABLE `Voter_Reg` DISABLE KEYS */;
INSERT INTO `Voter_Reg` VALUES (111,'bjbjbj','jbb','df','jbjj','vhvhvh','jbjkbj','bjbjjk','jbjbl',5676558,6557,'abc','[a, m, i, t]','voter','','111','\0'),(101,'rohit','kesari','Guru','16 june 1998','Manipur','manipur','alld','kesari.com',7985533639,795002,'hello','[h, e, y, B, o, y]','voter','','101','\0');
/*!40000 ALTER TABLE `Voter_Reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VotingResult`
--

DROP TABLE IF EXISTS `VotingResult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VotingResult` (
  `C_id` int(11) DEFAULT NULL,
  `Vote_Result` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VotingResult`
--

LOCK TABLES `VotingResult` WRITE;
/*!40000 ALTER TABLE `VotingResult` DISABLE KEYS */;
/*!40000 ALTER TABLE `VotingResult` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-22 16:50:14
