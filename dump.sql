-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: GJweb
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answerrecord`
--

DROP TABLE IF EXISTS `answerrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `answerrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `chapter` text NOT NULL,
  `section` text NOT NULL,
  `question` text NOT NULL,
  `choice` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `answerrecord_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  CONSTRAINT `answerrecord_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answerrecord`
--

LOCK TABLES `answerrecord` WRITE;
/*!40000 ALTER TABLE `answerrecord` DISABLE KEYS */;
INSERT INTO `answerrecord` VALUES (1,1,3,'Java鍙橀噺','鏁存暟','Java鏈€澶х殑鏁存暟绫诲瀷鏄?,'B'),(2,1,3,'Java鍙橀噺','鏁存暟','Test','A');
/*!40000 ALTER TABLE `answerrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collect`
--

DROP TABLE IF EXISTS `collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) NOT NULL,
  `question` text,
  `answer` text,
  `note` text,
  PRIMARY KEY (`id`),
  KEY `stu_id` (`stu_id`),
  CONSTRAINT `collect_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collect`
--

LOCK TABLES `collect` WRITE;
/*!40000 ALTER TABLE `collect` DISABLE KEYS */;
/*!40000 ALTER TABLE `collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `subtitle` text,
  `background` text,
  `introduce` text,
  `content` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_id` (`teacher_id`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (3,2,'Java','Java','http://localhost:8080/img/cdab2b4d-2b27-4329-9096-ef4b0e6943b2.jpg','Java','[{\"section\": [{\"question\": [], \"sectionname\": \"Java鍒涘鍏徃\", \"singleChoice\": []}, {\"question\": [], \"sectionname\": \"Java鍒涘浜篭", \"singleChoice\": []}], \"chapter_name\": \"Java鍘嗗彶\"}, {\"section\": [{\"question\": [{\"answer\": \"int锛宻hort...\", \"question\": \"java鏀寔鍝簺鏁存暟绫诲瀷锛焅"}], \"sectionname\": \"鏁存暟\", \"singleChoice\": [{\"choiceA\": \"long\", \"choiceB\": \"int\", \"choiceC\": \"long long\", \"choiceD\": \"byte\", \"question\": \"Java鏈€澶х殑鏁存暟绫诲瀷鏄痋", \"right_choice\": \"C\"}, {\"choiceA\": \"閫夐」A\", \"choiceB\": \"閫夐」B\", \"choiceC\": \"閫夐」C\", \"choiceD\": \"閫夐」D\", \"question\": \"Test\", \"right_choice\": \"A\"}]}, {\"question\": [], \"sectionname\": \"瀛楃涓瞈", \"singleChoice\": []}], \"chapter_name\": \"Java鍙橀噺\"}]'),(4,2,'灏忓鏁板','鍒濈瓑鏁板','http://localhost:8080/img/876ad50e-01d1-4eb8-9e3d-7923e034a8f0.jpg','閫傜敤浜庡榫勫墠鍎跨','[{\"section\": [{\"question\": [{\"answer\": \"2\", \"question\": \"1+1\"}], \"sectionname\": \"涓€浣嶆暟鐨勫姞娉昞", \"singleChoice\": [{\"choiceA\": \"2\", \"choiceB\": \"3\", \"choiceC\": \"4\", \"choiceD\": \"5\", \"question\": \"1+2=锛焅", \"right_choice\": \"B\"}]}, {\"question\": [{\"answer\": \"44\", \"question\": \"2+42\"}], \"sectionname\": \"涓や綅鏁扮殑鍔犳硶\", \"singleChoice\": [{\"choiceA\": \"44\", \"choiceB\": \"7\", \"choiceC\": \"9\", \"choiceD\": \"11\", \"question\": \"22+22\", \"right_choice\": \"A\"}]}], \"chapter_name\": \"鍔犳硶\"}, {\"section\": [{\"question\": [{\"answer\": \"5\", \"question\": \"7-2\"}], \"sectionname\": \"涓€浣嶆暟鐨勫噺娉昞", \"singleChoice\": []}, {\"question\": [{\"answer\": \"92\", \"question\": \"99-7\"}], \"sectionname\": \"涓や綅鏁扮殑鍑忔硶\", \"singleChoice\": []}], \"chapter_name\": \"鍑忔硶\"}]');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coursestudent`
--

DROP TABLE IF EXISTS `coursestudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `coursestudent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `progress` float NOT NULL,
  `studysection` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `coursestudent_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `coursestudent_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursestudent`
--

LOCK TABLES `coursestudent` WRITE;
/*!40000 ALTER TABLE `coursestudent` DISABLE KEYS */;
INSERT INTO `coursestudent` VALUES (1,3,1,0.25,'[]'),(2,3,2,0.3,'[]');
/*!40000 ALTER TABLE `coursestudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `signature` text NOT NULL,
  `mailbox` text,
  `sex` text,
  `name` text,
  `studentnumber` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'jpg','1965386147@qq.com','鐢?,'Jack','16302010045'),(2,'jkp','1965386142@qq.com','male','Marin','163020110048');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `password` text NOT NULL,
  `head` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (2,'Java','jsav','http://localhost:8080/img/7f489b9d-32e4-4c44-9044-0dc5ebf03531.jpg');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-25 15:45:54
