-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db7
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Web Development','2018-05-10'),(2,'Tech Gadgets','2018-05-11'),(3,'Business','2018-05-17'),(4,'Health & Wellness','2018-10-28'),(5,'DataBase','2018-11-18');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (2,'Apple'),(3,'Asus'),(4,'Acer'),(5,'Microsoft'),(7,'Samsuna');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_topics`
--

DROP TABLE IF EXISTS `new_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `new_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `tag` varchar(45) DEFAULT NULL,
  `content` varchar(3000) DEFAULT NULL,
  `img_url` varchar(300) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_topics`
--

LOCK TABLES `new_topics` WRITE;
/*!40000 ALTER TABLE `new_topics` DISABLE KEYS */;
INSERT INTO `new_topics` VALUES (1,'海上人口販運風暴','血淚漁場二部曲','你所看到的圖片，是由一張張上到台灣遠洋漁船作業的漁工臉孔組成。他們來自世界16個國家，為了改變命運，把自己的護照和身分，交給台灣的仲介和船東，台灣人則向世界最貧窮的國家如北韓、柬埔寨、坦尚尼亞等國家買漁工。這2萬名低價、多國籍的漁工，就像一個個商品，為了掙一個月300、400美元的低薪，承擔高風險上船，有時會遭遇非人化的待遇。','https://storage.googleapis.com/twreporter-multimedia/images/20181218141913-a0926556fee70c312d3479a60101914c-desktop.jpg','https://www.twreporter.org/topics/slave-fishermen',NULL),(2,'生命權與死亡權的相對論','安樂死公投抛出的善終難題','今夜\\n無月\\n海一片漆黑\\n岸也漆黑\\n我該等太陽\\n還是月亮？\\n生命向晚，如何才是抵達安詳彼岸之徑，是自古難尋的解答，一如伊朗詩人導演阿巴斯．基阿魯斯達米（Abbas Kiarostami）的詩篇〈隨風而行〉所述。\\n臨終「醫療選擇」是人們最難下定的決心，也是最難達成的「共識」──無論家庭或社會。 隨著高齡化社會後「多死時代」來臨，安寧療護與安樂死（醫助自殺）辯證更為激昂，安寧療護把死亡視為生命的一部分，不延續無效醫療、但照護到病人自然死的最後一刻，講求「生命權」；安樂死則主張生命一旦過於不堪，應有主動喊卡的自主權利，講求「死亡權」。\\n「生命權」與「死亡權」的選題，考驗的不只是醫療能量、法律制度、更是家庭價值與人生哲學。\\n《報導者》 藉由推動台灣第一個安樂死公投的婦產科醫師江盛、因家庭照護風暴而梳理父子親情的皇冠出版社社長平雲的經歷與體悟，凸顯善終與照護不同的信仰與掙扎；並盤點全台安寧病房及人力，呈現目前全台安寧資源「四缺」的窘況，善終在台灣，如同「天邊的彩虹」，好美、卻好遙遠⋯⋯ 。台灣社會要一起思考的是：安樂死的需求，是善終不該迴避的選項？還是臨終照護不被滿足的出口？','https://storage.googleapis.com/twreporter-multimedia/images/20181206170820-2ec92e64a6e4a2a8bc97ca4973ad8477-desktop.jpg','https://www.twreporter.org/topics/good-death-debate',NULL);
/*!40000 ALTER TABLE `new_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photography`
--

DROP TABLE IF EXISTS `photography`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `photography` (
  `id` int(11) NOT NULL,
  `title` varchar(225) DEFAULT NULL,
  `tag` varchar(225) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `img_url` varchar(225) DEFAULT NULL,
  `url` varchar(225) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photography`
--

LOCK TABLES `photography` WRITE;
/*!40000 ALTER TABLE `photography` DISABLE KEYS */;
INSERT INTO `photography` VALUES (1,'劉子正／新紀實攝影的樣態','影像．聲音','女性紀實攝影師Daniella Zalcman在不久前的評論文章〈紀實攝影需要⾰命〉 （Documentary photography needs revolution），文中特別提到幾個對於「紀實攝影」所面臨的困局，我在這裡加以延伸談論一下這些論點。','https://www.twreporter.org/images/20181224235435-fc542dfd22dd1400513e71470a725f01-tablet.jpg','https://www.twreporter.org/a/photo-pattern-of-new-documentary-photography','2018.12.26');
/*!40000 ALTER TABLE `photography` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `date` date DEFAULT NULL,
  `article` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (3,'Post 3','Health & Wellness','2018-12-14','<p>this is the post 3</p>\r\n'),(4,'Post Four','Web Development','2018-12-15','<p>this is post four</p>\r\n'),(5,'Post Five','Web Development','2018-09-18','<p>this is the post five</p>\r\n'),(6,'Post Six','Tech Gadgets','2018-12-18','<p>this is post six</p>\r\n'),(9,'Post 10','Web Development','2018-12-16','<p>This is post 10.</p>\r\n'),(10,'Post 7','Tech Gadgets','2018-12-16','<p>This is post 7</p>\r\n');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid_idx` (`cid`),
  CONSTRAINT `cid` FOREIGN KEY (`cid`) REFERENCES `company` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,'Surdace Pro 6.8GB/256GB',5,876,30),(3,'iPad Pro. 12.9-inch 64GB',2,999,20),(4,'iPad Pro. 12.9-inch 512GB',2,1299.99,10),(5,'Galaxv Note 9. 6GB/128GB',7,748.89,15),(6,'Asus 5Z. 6GB/128GB',3,519.76,30),(7,'Dell XPS-13. 8GB/256GB',NULL,868,10);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`name`),
  KEY `foreign_user_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'John Doe','jdoe@gmail.com','123456789'),(2,'Harry White','harry@yahoo.com','789456123'),(3,'Mary Johnson','mary@gmail.com','abcdefg123'),(4,'Robert','robert@gmail.com','123456'),(5,'Mary Smith','marysmith@gmail.com','msmith');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-04 16:10:17
