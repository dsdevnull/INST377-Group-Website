CREATE DATABASE  IF NOT EXISTS `377project` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `377project`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: ec2-54-204-169-35.compute-1.amazonaws.com    Database: 377project
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `band_id` int(11) NOT NULL,
  `album_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  KEY `fk_band_album_id_idx` (`band_id`),
  CONSTRAINT `fk_band_album_id` FOREIGN KEY (`band_id`) REFERENCES `band` (`band_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,11,'Demon Days'),(2,11,'Plastic  Beach'),(3,11,'The Now Now'),(4,15,'OK Computer'),(5,15,'In Rainbows'),(6,15,'Pablo Honey'),(7,12,'Pinkerton'),(8,12,'Pacific Daydream'),(9,12,'Raditude'),(10,8,'Decoration Day'),(11,8,'English Oceans'),(12,8,'American Band'),(13,6,'The Sunset Tree'),(14,6,'Beat the Champ'),(15,6,'Goths'),(16,18,'Trooper');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `band`
--

DROP TABLE IF EXISTS `band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `band` (
  `band_id` int(11) NOT NULL AUTO_INCREMENT,
  `num_albums` int(11) DEFAULT NULL,
  `genre_id` int(11) NOT NULL,
  `band_name` varchar(45) NOT NULL,
  PRIMARY KEY (`band_id`),
  KEY `genre_id_fk_idx` (`genre_id`),
  CONSTRAINT `genre_id_fk` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `band`
--

LOCK TABLES `band` WRITE;
/*!40000 ALTER TABLE `band` DISABLE KEYS */;
INSERT INTO `band` VALUES (1,5,1,'Fleet Foxes'),(2,3,1,'Odesza'),(3,4,4,'Iron and Wine'),(4,2,4,'Shovels and Rope'),(5,4,2,'Lucius'),(6,3,1,'Mountain Goats'),(7,2,2,'Devil Makes Three'),(8,8,1,'Drive-By Truckers'),(9,4,5,'Rihanna'),(10,5,4,'Animal Collective'),(11,6,3,'Gorillaz'),(12,7,2,'Weezer'),(13,5,3,'Neutral Milk Hotel'),(14,4,1,'Metric'),(15,9,3,'Radiohead'),(16,NULL,1,'test'),(17,NULL,2,'TESTBAND'),(18,NULL,2,'Iron Maiden');
/*!40000 ALTER TABLE `band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `genre_type` varchar(45) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Indie'),(2,'Rock'),(3,'Alternative'),(4,'Folk'),(5,'Pop'),(6,'Rap'),(7,'Classic Rock'),(8,'Electronic'),(9,'Ska');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song` (
  `song_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `song_name` varchar(45) NOT NULL,
  PRIMARY KEY (`song_id`),
  KEY `album_id_fk_idx` (`album_id`),
  CONSTRAINT `album_id_fk` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,2,'Empire Ants'),(2,1,'November has Come'),(3,1,'Dare'),(4,4,'Airbag'),(5,4,'Let Down'),(6,4,'No Suprises'),(7,9,'Love Is The Answer'),(8,9,'Let It All Hang Out'),(9,9,'In the Mall'),(10,10,'Sink Hole'),(11,10,'Marry Me'),(12,10,'Outfit'),(13,13,'This Year'),(14,13,'Dance Music'),(15,13,'Magpie'),(16,16,'Trooper');
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `user_id` int(100) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email_address` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'Carl','Whitmore','onestab@optonline.net','hyrdijf','cwhitmore'),(2,'Phillipa','Ho','parksh@outlook.com','fuievr5','phillipaho'),(3,'Tahir','Ahmad','jsmith@sbcglobal.net','password1','tahmad'),(4,'Arran','Philip','hutton@me.com','plqakosw','aphillip'),(5,'Bret','Burris','bester@mac.com','ijedfrhu','bburris'),(6,'Leyton','Downes','camenisch@me.com','password2','ldownes'),(7,'Amani','Quintero','themer@live.com','password3','aquintero'),(8,'Safiyah','Wilkins','jlbaumga@me.com','typo99i','swilkins'),(9,'Liya','Lowery','bruck@verizon.net','mkxsjndc','llowery'),(10,'Elen','Couch','penna@optonline.net','vaiuvldpd','ecouch'),(11,'one','two','three','four','five'),(12,'one','two','three','four','five'),(13,'Roberto','Leo','best@gmail.com','12345678','r_leo'),(14,'Duncan','Squires','test@email.com','testpassword','dsquire1'),(15,'$','sfSDF','sdfg','sfg','sfdg'),(16,'test','name','email@email.com','passworddfg','tester'),(17,'Roberto','Leo','best@gmail.com','12345678','r_leo');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-16 19:37:54
