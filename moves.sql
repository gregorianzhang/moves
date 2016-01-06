-- MySQL dump 10.14  Distrib 5.5.46-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: moves
-- ------------------------------------------------------
-- Server version	5.5.46-MariaDB-1ubuntu0.14.04.2

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
-- Table structure for table `moves_db`
--

DROP TABLE IF EXISTS `moves_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moves_db` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `doubanid` bigint(20) DEFAULT NULL COMMENT '豆瓣id',
  `title` varchar(200) DEFAULT NULL COMMENT '电影名字',
  `images` varchar(1000) DEFAULT NULL COMMENT '电影封面',
  `year` int(4) DEFAULT NULL COMMENT '年份',
  `directors` varchar(200) DEFAULT NULL COMMENT '导演',
  `writers` varchar(200) DEFAULT NULL COMMENT '编剧',
  `casts` varchar(1000) DEFAULT NULL COMMENT '主演',
  `countries` varchar(100) DEFAULT NULL COMMENT '制片国家',
  `languages` varchar(20) DEFAULT NULL COMMENT '电影语言',
  `pubdates` varchar(200) DEFAULT NULL COMMENT '上映日期',
  `durations` varchar(200) DEFAULT NULL COMMENT '片长',
  `aka` varchar(300) DEFAULT NULL COMMENT '又名',
  `tag` varchar(300) DEFAULT NULL COMMENT 'tag',
  `genres` varchar(100) DEFAULT NULL COMMENT '类型',
  `summary` varchar(2000) DEFAULT NULL COMMENT '剧情简介',
  `imdb` varchar(100) DEFAULT NULL,
  `rating` int(2) DEFAULT '0' COMMENT '评分',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `doubanid` (`doubanid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moves_db`
--

LOCK TABLES `moves_db` WRITE;
/*!40000 ALTER TABLE `moves_db` DISABLE KEYS */;
/*!40000 ALTER TABLE `moves_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moves_people`
--

DROP TABLE IF EXISTS `moves_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moves_people` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `doubanid` bigint(20) DEFAULT NULL COMMENT '豆瓣人物id',
  `name` varchar(50) DEFAULT NULL,
  `name_en` varchar(50) DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `born_place` varchar(100) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `professions` varchar(200) DEFAULT NULL,
  `summary` varchar(2000) DEFAULT NULL,
  `constellation` varchar(50) DEFAULT NULL,
  `aka` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moves_people`
--

LOCK TABLES `moves_people` WRITE;
/*!40000 ALTER TABLE `moves_people` DISABLE KEYS */;
/*!40000 ALTER TABLE `moves_people` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-07  0:37:31
