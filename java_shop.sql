-- MySQL dump 10.13  Distrib 5.7.37, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	5.7.37-log

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
-- Current Database: `shop`
--



--
-- Table structure for table `b_ad`
--

DROP TABLE IF EXISTS `b_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_ad` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `link` varchar(500) DEFAULT NULL,
  `create_time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_ad`
--

LOCK TABLES `b_ad` WRITE;
/*!40000 ALTER TABLE `b_ad` DISABLE KEYS */;
INSERT INTO `b_ad` VALUES (1,'8164fc3b-f47b-4b0e-ba26-50602d4ef276.png','www.google.com','1681724561446'),(3,'64c66b8f-b82e-4c7a-b714-9adc32cd5ff6.jpeg','http://www.baidu.com111','1681725297763'),(4,'5f299ffb-c2f8-4ade-980e-cba7d4938519.png','http://www.baidu.com/kkk','1681725339563'),(6,'eb71dae5-b84d-4b9a-8e36-5b2adf25c4e2.png','www.bing.com','1682734858115');
/*!40000 ALTER TABLE `b_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_address`
--

DROP TABLE IF EXISTS `b_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `def` varchar(10) DEFAULT NULL,
  `create_time` varchar(30) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `b_address_user_id_a37a8d6a_fk_b_user_id` (`user_id`),
  CONSTRAINT `b_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_address`
--

LOCK TABLES `b_address` WRITE;
/*!40000 ALTER TABLE `b_address` DISABLE KEYS */;
INSERT INTO `b_address` VALUES (19,'单独',NULL,NULL,NULL,'1683465050274',NULL),(22,'aa','d',NULL,NULL,'1683543865613',NULL),(23,'d','d',NULL,NULL,'1683543878597',NULL),(25,'李冰冰','17899990011','广州市中山路8号','0','1683543980977',2),(26,'刘若琳','15899999999','济南市历下区奥体西路99号','1','1683544028303',2),(27,'刘德华','12322222223','香港中路888号','0','1683544308777',2);
/*!40000 ALTER TABLE `b_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_banner`
--

DROP TABLE IF EXISTS `b_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_banner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `create_time` varchar(30) DEFAULT NULL,
  `thing_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `b_banner_thing_id_3f307d00_fk_b_thing_id` (`thing_id`),
  CONSTRAINT `b_banner_thing_id_3f307d00_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_banner`
--

LOCK TABLES `b_banner` WRITE;
/*!40000 ALTER TABLE `b_banner` DISABLE KEYS */;
INSERT INTO `b_banner` VALUES (1,'e095d91d-e5d4-4280-a8f0-6dfa35256b97.png','1681778975288',2),(3,'4cbec89a-e1ec-4b9b-8f59-5424270e2e28.png','1681779092845',1);
/*!40000 ALTER TABLE `b_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_classification`
--

DROP TABLE IF EXISTS `b_classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_classification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `create_time` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_classification`
--

LOCK TABLES `b_classification` WRITE;
/*!40000 ALTER TABLE `b_classification` DISABLE KEYS */;
INSERT INTO `b_classification` VALUES (1,'服装','1681347523973'),(2,'零食','1681347533598'),(3,'图书','1681347534635'),(4,'儿童玩具','1681347558409'),(5,'厨房用品','1681347559996'),(6,'电器','1681347562381'),(7,'办公用品','1681347567736');
/*!40000 ALTER TABLE `b_classification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_comment`
--

DROP TABLE IF EXISTS `b_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) DEFAULT NULL,
  `comment_time` varchar(30) DEFAULT NULL,
  `like_count` int(11) NOT NULL DEFAULT '0',
  `user_id` bigint(20) DEFAULT NULL,
  `thing_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `b_comment_user_id_46f0670f_fk_b_user_id` (`user_id`),
  KEY `b_comment_thing_id_57ab492b_fk_b_thing_id` (`thing_id`),
  CONSTRAINT `b_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_comment`
--

LOCK TABLES `b_comment` WRITE;
/*!40000 ALTER TABLE `b_comment` DISABLE KEYS */;
INSERT INTO `b_comment` VALUES (8,'aa','1683427717415',10,2,2),(9,'大大','1683431295759',3,2,2),(10,'请求','1683432294300',11,2,2),(11,'问问','1683432299591',11,2,2),(12,'啊啊','1683460886756',0,2,2),(13,'哈哈哈','1683722530385',3,2,55),(14,'009999','1683722533784',1,2,55);
/*!40000 ALTER TABLE `b_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_error_log`
--

DROP TABLE IF EXISTS `b_error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_error_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `method` varchar(10) DEFAULT NULL,
  `content` text,
  `log_time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_error_log`
--

LOCK TABLES `b_error_log` WRITE;
/*!40000 ALTER TABLE `b_error_log` DISABLE KEYS */;
INSERT INTO `b_error_log` VALUES (1,'127.0.0.1','/myapp/index/thing/getCollectThingList','GET','操作失败User matching query does not exist.','2023-03-11 14:13:50.128264'),(2,'127.0.0.1','/myapp/index/thing/getWishThingList','GET','操作失败User matching query does not exist.','2023-03-11 14:13:50.195484'),(3,'127.0.0.1','/myapp/index/thing/getWishThingList','GET','操作失败User matching query does not exist.','2023-03-11 14:13:58.169226'),(4,'127.0.0.1','/myapp/index/thing/getCollectThingList','GET','操作失败User matching query does not exist.','2023-03-11 14:14:30.967563'),(5,'127.0.0.1','/myapp/index/thing/getWishThingList','GET','操作失败User matching query does not exist.','2023-03-11 19:45:54.362008'),(6,'127.0.0.1','/myapp/index/thing/getCollectThingList','GET','操作失败User matching query does not exist.','2023-03-11 19:45:54.364847');
/*!40000 ALTER TABLE `b_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_notice`
--

DROP TABLE IF EXISTS `b_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_notice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `create_time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_notice`
--

LOCK TABLES `b_notice` WRITE;
/*!40000 ALTER TABLE `b_notice` DISABLE KEYS */;
INSERT INTO `b_notice` VALUES (1,'test','今日新货打折出售','2023-03-12 10:41:47.053444'),(2,'新品','新到联想电脑30台1999元','1681465796380'),(4,'test','测试消息123哈哈哈哈','1681465829203');
/*!40000 ALTER TABLE `b_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_op_log`
--

DROP TABLE IF EXISTS `b_op_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_op_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) DEFAULT NULL,
  `re_time` varchar(30) DEFAULT NULL,
  `re_ua` varchar(255) DEFAULT NULL,
  `re_url` varchar(200) DEFAULT NULL,
  `re_method` varchar(10) DEFAULT NULL,
  `re_content` varchar(200) DEFAULT NULL,
  `access_time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18151 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_op_log`
--

LOCK TABLES `b_op_log` WRITE;
/*!40000 ALTER TABLE `b_op_log` DISABLE KEYS */;
INSERT INTO `b_op_log` VALUES (4694,'127.0.0.1','2023-05-01 01:32:41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36','/api/admin/overview/count','GET',NULL,'134'),(4695,'127.0.0.1','2023-05-02 01:33:53','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36','/api/admin/overview/count','GET',NULL,'152'),(4696,'127.0.0.1','2023-05-03 01:33:54','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36','/api/admin/overview/count','GET',NULL,'24'),(4697,'127.0.0.1','2023-05-03 01:33:54','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36','/api/admin/overview/count','GET',NULL,'20'),(4698,'127.0.0.2','2023-05-03 01:33:55','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36','/api/admin/overview/count','GET',NULL,'16'),(4699,'127.0.0.1','2023-05-03 01:33:55','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36','/api/admin/overview/count','GET',NULL,'15'),(18148,'127.0.0.1','2023-05-14 10:41:46.505','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36','/api/thing/list','GET',NULL,'65'),(18149,'127.0.0.1','2023-05-14 10:41:47.485','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36','/api/thing/list','GET',NULL,'19'),(18150,'127.0.0.1','2023-05-14 10:41:48.046','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36','/api/thing/list','GET',NULL,'17');
/*!40000 ALTER TABLE `b_op_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_order`
--

DROP TABLE IF EXISTS `b_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` varchar(2) DEFAULT NULL,
  `order_time` varchar(30) DEFAULT NULL,
  `pay_time` varchar(30) DEFAULT NULL,
  `thing_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `order_number` varchar(13) DEFAULT NULL,
  `receiver_address` varchar(50) DEFAULT NULL,
  `receiver_name` varchar(20) DEFAULT NULL,
  `receiver_phone` varchar(20) DEFAULT NULL,
  `remark` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `b_order_thing_id_4e345e2c_fk_b_thing_id` (`thing_id`),
  KEY `b_order_user_id_64854046_fk_b_user_id` (`user_id`),
  CONSTRAINT `b_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_order`
--

LOCK TABLES `b_order` WRITE;
/*!40000 ALTER TABLE `b_order` DISABLE KEYS */;
INSERT INTO `b_order` VALUES (54,'7','1683376907183',NULL,3,2,0,NULL,NULL,NULL,NULL,NULL),(55,'7','1683376907927',NULL,3,2,0,NULL,NULL,NULL,NULL,NULL),(56,'1','1683377036614',NULL,1,2,1,NULL,NULL,NULL,NULL,NULL),(57,'1','1683377039846',NULL,1,2,1,NULL,NULL,NULL,NULL,NULL),(58,'1','1683465611246',NULL,NULL,NULL,1,NULL,'43','的地方','33',NULL),(59,'1','1683465715612',NULL,81,2,1,NULL,'43','的地方','33',NULL),(60,'1','1683465887152',NULL,81,2,1,'1683465887152','43','的地方','33',NULL),(61,'7','1683465918344',NULL,81,2,1,'1683465918344','43','的地方','33',NULL),(63,'7','1683797981173',NULL,2,2,8,'1683797981173','香港中路888号','刘德华','12322222223',NULL),(64,'1','1683961620448',NULL,80,2,3,'1683961620448','香港中路888号','刘德华','12322222223','99');
/*!40000 ALTER TABLE `b_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_tag`
--

DROP TABLE IF EXISTS `b_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `create_time` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_tag`
--

LOCK TABLES `b_tag` WRITE;
/*!40000 ALTER TABLE `b_tag` DISABLE KEYS */;
INSERT INTO `b_tag` VALUES (1,'测试','0'),(2,'汽车','1681347572848'),(4,'烧烤','1681347572848'),(5,'潮牌','1681347572848'),(6,'儿童','1681347572848'),(7,'编程','1681347572848'),(8,'科技','1681347572848'),(9,'吃货','1681347572848'),(10,'游乐园','0'),(11,'家电','1681347572848'),(12,'配件','1681347572848'),(13,'无线','1681347572848'),(14,'文具','1681347572848'),(16,'好吃的','1681382971561'),(18,'豆豆','1682592402128');
/*!40000 ALTER TABLE `b_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_thing`
--

DROP TABLE IF EXISTS `b_thing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_thing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `cover` varchar(100) DEFAULT NULL,
  `description` longtext,
  `price` varchar(50) DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `repertory` int(11) NOT NULL,
  `score` int(11) DEFAULT '0',
  `create_time` varchar(30) DEFAULT NULL,
  `pv` int(11) DEFAULT '0',
  `recommend_count` int(11) DEFAULT '0',
  `wish_count` int(11) DEFAULT '0',
  `collect_count` int(11) DEFAULT '0',
  `classification_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `b_thing_classification_id_47675ac4_fk_b_classification_id` (`classification_id`),
  CONSTRAINT `b_thing_ibfk_1` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_thing`
--

LOCK TABLES `b_thing` WRITE;
/*!40000 ALTER TABLE `b_thing` DISABLE KEYS */;
INSERT INTO `b_thing` (
  `title`,
  `cover`,
  `description`,
  `price`,
  `status`,
  `repertory`,
  `score`,
  `create_time`,
  `pv`,
  `recommend_count`,
  `wish_count`,
  `collect_count`,
  `classification_id`
) VALUES

-- 1-20条
('大象', '6238478-fm.jpg', '一部以大象为主角的温情故事，探讨动物与人类的情感联结及自然生态的重要性。', '50.54', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('神州奇侠：剑气长江/温瑞安', '1740901215832.jpg', '温瑞安经典武侠作品，讲述少侠萧秋水在江湖纷争中仗剑行侠、守护正义的热血传奇。', '34.32', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('孙子兵法解析', '1202349722_44_0_original_800x800.jpg', '深度解析《孙子兵法》的军事哲学与谋略思想，结合古今战例提炼管理与处世智慧。', '14.26', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('欢迎来到人间(精)', '6062871-fm.jpg', '现代都市小说，通过主人公的人生轨迹探讨人性善恶、命运抉择与社会现实的复杂交织。', '41.99', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('笠翁对韵', '1201843068_49_0_original_800x800.jpg', '清代李渔编写的蒙学经典，以对仗工整的韵律形式培养儿童汉语语感与传统文化素养。', '21.16', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('兄弟', '1ebee5fc-ab16-4ab1-9c84-619a0f2c0a3e.jpg', '余华长篇小说，讲述改革开放背景下兄弟俩的命运沉浮，折射时代变迁中的人性光辉与挣扎。', '60.0', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('声律启蒙', '3b453f0d-e3b9-461b-aa31-e29b1b9b0326.jpg', '古代声韵学启蒙读物，以优美的对句形式帮助读者掌握诗词格律，提升文学鉴赏能力。', '18.98', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('第七天(精)', '4bd87592-ecee-4535-9f4f-500e78b36d72.jpg', '余华的魔幻现实主义作品，通过死后七天的视角揭露社会现象，探讨生命价值与尊严。', '37.0', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('食南之徒', '6258473-fm.jpg', '美食文化散文集，聚焦南方特色菜系与市井烟火，展现食物背后的地域文化与人生故事。', '36.96', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('医生的淬炼(毕淑敏医学文学选编)', '5931796-fm.jpg', '毕淑敏的医学文学作品集，收录从医经历与感悟，诠释医者仁心与生命教育的深刻内涵。', '44.2', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('西游再见悟空', '1202311219_0_0_original_800x800.jpg', '重新诠释西游题材的幻想小说，以悟空的视角探讨自由、宿命与人性救赎的永恒主题。', '19.0', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('大医院里的小医生', '6148055-fm.jpg', '医疗行业纪实小说，讲述年轻医生在医院中的成长历程，展现医患关系与职业信仰的碰撞。', '45.44', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('山海经', '56fb20bd-9881-4ed7-a6db-bb041b0a0ecb.jpg', '先秦古籍中的神话地理总集，收录上古神兽、奇异国度与神话传说，充满奇幻色彩与文化底蕴。', '61.0', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('去老万玉家', '6266667-fm.jpg', '乡村题材小说，通过走访老万玉家的经历，展现乡村变迁中的人情冷暖与时代记忆。', '46.02', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('星空与半棵树(精)', '6030303-fm.jpg', '都市情感小说，以星空与半棵树为意象，讲述年轻人在爱情与理想中的迷茫、成长与抉择。', '63.36', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('河边的错误/读客当代文学文库', '6215380-fm.jpg', '余华的悬疑短篇小说，围绕河边离奇凶案展开，探讨真相与荒诞、理性与疯狂的哲学命题。', '30.0', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('阿娜河畔(精)', '6091030-fm.jpg', '少数民族题材小说，以阿娜河畔为背景，描绘当地人民的生活画卷与民族文化的独特魅力。', '38.66', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('丰乳肥臀', '298f82ab-f7f5-4833-8ea0-35148b1c6edf.jpg', '莫言的长篇小说，以母亲上官鲁氏的一生为主线，展现二十世纪中国社会的苦难与坚韧。', '29.0', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('你想活出怎样的人生', 'd909907f-c2fa-4cdd-a226-3463f1048b7e.jpg', '日本作家吉野源三郎的哲理小说，通过少年的成长故事探讨人性、道德与社会价值的深层意义。', '33.24', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('红岩', '394a10bc-4aab-467a-aa21-76e4379b3c13.jpg', '红色经典小说，讲述解放战争时期革命者在狱中与敌人斗争的英勇事迹，歌颂革命先烈的牺牲精神。', '39.5', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),

-- 21-40条
('大江大河四部曲(共4册)', '4166686-fm.jpg', '阿耐的长篇小说系列，以改革开放为背景，展现三位青年在时代浪潮中的奋斗历程与命运转折。', '144.0', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('借命而生/读客当代文学文库', '5992826-fm.jpg', '双雪涛的中篇小说，讲述越狱犯与警察之间跨越二十年的博弈，探讨自由、正义与人性的复杂关系。', '24.9', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('草原动物园', '5900512-fm.jpg', '马伯庸的历史小说，以清末草原上的动物园为切入点，描绘中西文化碰撞中的荒诞与真实。', '40.34', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('十八岁出门远行', '6215375-fm.jpg', '余华的短篇小说集，收录青春成长题材作品，以荒诞笔触展现少年初次面对世界的迷茫与感悟。', '30.0', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('在细雨中呼喊(精)', '2f62c68c-ca72-4256-a11f-b64c700e6b59.jpg', '余华的长篇小说，通过主人公的回忆讲述家族故事，探讨孤独、亲情与时代烙印的深刻主题。', '45.0', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('许三观卖血记(精)', 'e0387bf3-8679-466a-8d63-0fe325716c01.jpg', '余华的现实主义小说，讲述许三观靠卖血维持生计的一生，展现普通人在苦难中的坚韧与乐观。', '45.0', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('云落(精)', '6302314-fm.jpg', '仙侠题材小说，讲述主角在云落谷中的奇遇与修炼历程，描绘奇幻世界中的恩怨情仇与大道追寻。', '38.66', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('龙与地下铁', '6186476-fm.jpg', '马伯庸的奇幻小说，以龙与地铁共存的都市为背景，讲述少年与龙的冒险故事，充满想象力与童趣。', '32.88', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('大医：破晓篇（全2册）', '5839593-fm.jpg', '紫金陈的医疗题材小说，讲述民国时期医生在乱世中悬壶济世、守护生命的热血传奇。', '71.28', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('国学经典巨著·点校本：喻世明言', '41468698-0b75-4b07-8aff-121df6e3dde3.jpg', '明代冯梦龙编纂的短篇小说集，收录宋元明时期的民间故事，反映社会世态与道德观念。', '11.9', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('世说新语(上下)(精)', '4729950-fm.jpg', '南朝宋刘义庆编撰的志人小说集，记载魏晋名士的言行轶事，展现魏晋风度与时代精神。', '78.8', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('世界三大短篇小说集（全3册）', '2607b052-1e3f-4c97-be89-274ff2fcd86d.jpg', '收录莫泊桑、契诃夫、欧·亨利的经典短篇小说，展现不同文化背景下的人性洞察与文学魅力。', '27.8', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('三十六计解析', '1202349724_0_0_original_800x800.jpg', '解析中国古代三十六计的谋略智慧，结合军事、商业案例讲解策略运用与竞争思维。', '14.26', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('北流(附别册及支册)', '5821606-fm.jpg', '现代诗歌集，收录诗人北流的代表作，以凝练的语言探讨生命、爱情与存在的哲学命题。', '47.9', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('大辽河', '869518b1-ceae-4dd7-9c32-fa7c3d05f7d3.jpg', '东北地域题材小说，以大辽河为背景，讲述沿岸居民的生活变迁，展现乡土文化与时代发展的冲突。', '36.9', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('山月记', '589ceedd-d4b5-40c9-b78e-92a361c7dce2.jpg', '日本作家中岛敦的短篇小说集，以中国古典故事为蓝本，探讨人性中的孤独、骄傲与自我救赎。', '18.66', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('守鹤人', '5493937-fm.jpg', '动物保护题材小说，讲述守鹤人守护丹顶鹤的故事，呼吁关注濒危物种与生态环境保护。', '27.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('生死疲劳', 'f5c7b74d-3e86-457a-b876-3b1354a51912.jpg', '莫言的魔幻现实主义小说，以西门闹转世为动物的视角，展现中国农村的历史变迁与生命轮回。', '36.5', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('乖，摸摸头2.0', '4b98a078-f243-4ac6-aa60-51e46d5b8966.jpg', '大冰的励志散文集，收录江湖故事与人生感悟，传递温暖与勇气，鼓励读者追求自由与梦想。', '24.04', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('蛙', '6fa9528f-41fa-4485-ad4e-689f79e156e1.jpg', '莫言的长篇小说，以乡村医生姑姑的一生为主线，反映计划生育政策下的社会变迁与家庭伦理。', '24.0', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),

-- 41-60条
('文城', '9b79654a-00d0-4cec-b0f5-0fc2ae9006b4.jpg', '余华的长篇小说，讲述林祥福跨越千里寻找文城的历程，展现乱世中的命运漂泊与人性坚守。', '45.0', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('我们刚刚好遇见最美好', '4915084-fm.jpg', '青春校园爱情小说，记录男女主角从相遇、相知到相爱的甜蜜故事，洋溢着青春的纯真与美好。', '36.8', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('我嫌弃的样子你都有(2019全新修成正果版新增领证番外)...', '4876042-fm.jpg', '都市言情小说，讲述欢喜冤家从互怼到相爱的搞笑温馨历程，新增婚后番外展现圆满结局。', '39.8', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('全职高手(10激战线下全新典藏版)', '4262400-fm.jpg', '电竞题材小说，讲述职业选手叶修在荣耀游戏中重返巅峰的故事，展现团队协作与职业精神。', '45.6', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('逆臣(1)', '4371066-fm.jpg', '古代权谋小说，讲述少年在乱世中被迫卷入权力斗争，从平民到逆臣的逆袭与内心挣扎。', '37.81', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('肖定丽小森林童话·花奶奶系列   花奶奶去旅行/花耳朵狗...', '90ef5735-27a2-4c2c-9eea-507350cbe192.jpg', '儿童童话集，收录花奶奶与动物朋友们的奇幻旅程，充满童真与自然教育意义。', '66.0', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('周律师恋爱吗', '4497751-fm.jpg', '职场言情小说，讲述高冷律师与实习助理的职场爱情故事，融合法律案件与甜蜜互动。', '34.01', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('太平年', '4340196-fm.jpg', '古代言情小说，以太平盛世为背景，讲述贵族女子在家族纷争中的生存智慧与情感抉择。', '39.9', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('若即若离', '4157484-fm.jpg', '现代都市情感小说，探讨情侣在亲密关系中的信任危机与成长，展现爱情中的迷茫与和解。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('超级战兵(10重返世俗)', '4181807-fm.jpg', '军事科幻小说，讲述退役战兵重返都市，在暗流涌动中守护正义，展现铁血柔情与强者风范。', '26.6', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('金粉世家', '05cf14c1-3d07-4b18-ac3c-8051d15118de.jpg', '张恨水的经典小说，以民国豪门金家为背景，讲述冷清秋与金燕西的爱情悲剧，揭露封建家族的兴衰。', '83.6', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('时光之蜗', '4417878-fm.jpg', '青春成长小说，以蜗牛为意象，讲述少女在青春期的蜕变故事，探讨梦想、友情与自我认同。', '42.75', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('梦庄记事(插图本)', '5404512-fm.jpg', '散文随笔录，收录作者在梦庄的所见所闻，以细腻笔触描绘田园生活与人文情怀，配有精美插图。', '38.0', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('泥土芳香', '5442233-fm.jpg', '乡村题材散文集，聚焦农村生活与乡土文化，展现农民的质朴情感与土地的深厚底蕴。', '68.0', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('故乡的黑土(民译汉)', '5014990-fm.jpg', '少数民族文学作品，以母语翻译呈现故乡的黑土地文化，讲述游牧民族的生活史诗与精神传承。', '38.0', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('颜容如画', '4691779-fm.jpg', '古代言情小说，讲述容貌出众的女子在宫廷权谋中的生存之道，融合爱情、悬疑与成长元素。', '39.8', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('绯色樱花圆梦纪(Ⅰ)/恋之水晶系列/意林轻文库', '3795620-fm.jpg', '日系轻小说，讲述少女在樱花校园中追寻梦想的故事，充满青春活力与浪漫幻想。', '23.8', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('我的美丽妈妈/社会万花筒之中国好故事系列丛书', '3806538-fm.jpg', '儿童故事集，通过多个温馨故事展现妈妈的爱与陪伴，培养儿童情感认知与社会价值观。', '24.8', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('直到你喜欢我为止', '4192941-fm.jpg', '校园暗恋题材小说，讲述女主从默默喜欢到勇敢追爱的历程，展现青春里的纯粹与勇敢。', '34.2', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('你只能喜欢我(2)', '4342297-fm.jpg', '都市言情续集，延续主角的爱情故事，探讨恋爱中的独占欲与信任，展现情感的进阶与成熟。', '34.96', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),

-- 61-80条
('巅峰荣耀(第1卷)', '4242406-fm.jpg', '电竞系列小说开篇，讲述电竞新人组建战队挑战职业联赛，展现热血竞技与团队凝聚力。', '42.75', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('风流千金(民国海派绝版小说)', '4904504-fm.jpg', '民国言情小说，讲述千金小姐在新旧时代交替中的爱情抉择，展现海派文化的繁华与沧桑。', '45.0', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('江河入海', '5002113-fm.jpg', '家族史诗小说，以江河入海为隐喻，讲述家族三代人在时代洪流中的命运起伏与精神传承。', '68.0', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('往生', '5411006-fm.jpg', '悬疑灵异小说，围绕“往生”主题展开神秘事件调查，探讨生死边界与人性的终极追问。', '39.0', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('妇妌传', '5294577-fm.jpg', '古代传奇小说，讲述商代女性妇妌的一生，展现青铜器时代的王朝兴衰与女性智慧。', '89.0', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('那是初雪的呢喃', '4533858-fm.jpg', '青春言情小说，以初雪为契机讲述浪漫邂逅，描绘冬季恋歌中的甜蜜与遗憾。', '34.96', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('行乞家族', '4758883-fm.jpg', '社会现实小说，聚焦行乞群体的真实生活，揭露底层社会的苦难与人性挣扎。', '37.05', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('情怨恨不相逢未嫁时(周瘦鹃小说集)', '4695040-fm.jpg', '民国言情小说集，收录周瘦鹃的经典作品，以细腻笔触描绘旧时代女性的爱情悲剧与命运无奈。', '47.31', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('失踪表演(精)', '4575511-fm.jpg', '悬疑推理小说，讲述明星失踪事件背后的复杂阴谋，情节跌宕起伏，充满反转与悬念。', '39.9', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('蚩尤/中华传奇人物故事汇', '4558930-fm.jpg', '上古神话人物传记，讲述蚩尤与黄帝的涿鹿之战，展现远古英雄的传奇事迹与华夏文明起源。', '14.25', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('来自天堂的呼唤', '9d94c2df-ee37-4def-9801-6a4e0881d51f.jpg', '亲情题材小说，讲述主角在亲人离世后收到“天堂来信”，展开跨越生死的心灵对话。', '49.8', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('天泓', '97875059636031519709-fm.jpg', '科幻小说，以未来水资源危机为背景，讲述人类在“天泓计划”中探索外星水源的冒险。', '23.75', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('捕梦网', '97872270420061582606-fm.jpg', '悬疑小说，围绕神秘捕梦网引发的连环怪事，探讨梦境与现实的交织及潜意识的力量。', '24.7', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('布丁里的银纽扣/言情伦理系列/中国当代故事文学读本系列', '2975871-fm.jpg', '短篇故事集，收录言情与伦理题材作品，通过生活小事展现人性善恶与情感纠葛。', '14.25', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('拯救乳房(精装典藏本)(精)/毕淑敏文集', '3050810-fm.jpg', '毕淑敏的长篇小说，关注乳腺癌患者群体，探讨生命尊严、医疗伦理与女性自我救赎。', '52.06', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('十里花屯的枪声/悦读好故事系列丛书', '3853864-fm.jpg', '红色革命故事集，讲述抗战时期乡村游击队的英勇事迹，弘扬爱国主义精神与革命传统。', '33.25', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('迷恋游戏的男孩/悦读好故事系列丛书', '3853857-fm.jpg', '青少年教育故事，讲述男孩从沉迷游戏到找回自我的历程，引导正确对待网络与学习。', '33.25', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('西游记(全本无障碍)(精)/中国古典文学馆/亲近经典', '3870819-fm.jpg', '四大名著之一，无障碍注释版《西游记》，讲述唐僧师徒西天取经的奇幻冒险，适合青少年阅读。', '47.31', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('爱情针法/言情伦理系列/中国当代故事文学读本系列', '3623699-fm.jpg', '言情短篇小说集，以“针法”为隐喻，讲述现代都市男女的情感困惑与成长感悟。', '14.25', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('南北史通俗演义(绣像本)/蔡东藩历朝通俗演义', '3610270-fm.jpg', '蔡东藩的历史演义小说，通俗讲述南北朝历史，展现朝代更迭中的英雄人物与政治斗争。', '40.85', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),

-- 81-100条
('大生意人(4舍得)', '3268160-fm.jpg', '商战题材小说系列，讲述清末商人在商场中的博弈与抉择，第四部聚焦“舍得”智慧的终极考验。', '34.2', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('全职高手(17挺进四强全新典藏版)', '4072554-fm.jpg', '电竞小说续集，记录战队挺进职业联赛四强的关键战役，展现团队协作与战术策略的巅峰对决。', '45.6', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('首席智囊(6大结局)', '3372962-fm.jpg', '官场权谋小说大结局，讲述首席智囊在政治漩涡中破局而出，揭示权力斗争的终极真相。', '37.81', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('东周列国志(上下绣像珍藏本)/博集典藏馆古典系列', '3474388-fm.jpg', '明代冯梦龙的历史小说，描绘东周时期列国纷争的宏大场景，展现乱世中的谋略与人性。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('封神演义(上下绣像珍藏本)/博集典藏馆古典系列', '3474389-fm.jpg', '明代许仲琳的神魔小说，讲述商周交替时期的神话故事，充满奇幻色彩与宿命论思想。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('隋唐演义(上下绣像珍藏本)/博集典藏馆古典系列', '3474390-fm.jpg', '清代褚人获的历史演义小说，描绘隋唐时期的英雄豪杰与朝代更迭，展现乱世豪情与儿女情长。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('说岳全传(上下绣像珍藏本)/博集典藏馆古典系列', '3474391-fm.jpg', '清代钱彩的英雄传奇小说，讲述南宋抗金名将岳飞的生平事迹，弘扬爱国精神与忠义情怀。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('三侠五义(上下绣像珍藏本)/博集典藏馆古典系列', '3474392-fm.jpg', '清代石玉昆的侠义小说，讲述包拯断案与侠义之士行侠仗义的故事，展现正义与邪恶的较量。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('儿女英雄传(上下绣像珍藏本)/博集典藏馆古典系列', '3474393-fm.jpg', '清代文康的侠义言情小说，讲述安骥与何玉凤的爱情故事，融合侠义精神与家庭伦理。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('荡寇志(上下绣像珍藏本)/博集典藏馆古典系列', '3474394-fm.jpg', '清代俞万春的小说，续写《水浒传》，讲述朝廷剿灭梁山义军的故事，展现不同的价值观与历史观。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('施公案(上下绣像珍藏本)/博集典藏馆古典系列', '3474395-fm.jpg', '清代无名氏的侠义公案小说，讲述施仕纶为官断案与黄天霸等侠义之士辅佐的故事。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('彭公案(上下绣像珍藏本)/博集典藏馆古典系列', '3474396-fm.jpg', '清代贪梦道人创作的侠义公案小说，讲述彭朋为官清廉，除恶扬善，以及江湖豪杰辅佐的故事。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('隋唐两朝志传(上下绣像珍藏本)/博集典藏馆古典系列', '3474397-fm.jpg', '明代罗贯中的历史演义小说，讲述隋唐两朝的兴衰历程，展现历史变迁中的英雄人物。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('残唐五代史演义(上下绣像珍藏本)/博集典藏馆古典系列', '3474398-fm.jpg', '明代罗贯中的历史演义小说，讲述残唐五代时期的政治动荡与军事纷争。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('杨家将演义(上下绣像珍藏本)/博集典藏馆古典系列', '3474399-fm.jpg', '明代熊大木的英雄传奇小说，讲述北宋杨家将抗辽保国的忠勇事迹，弘扬爱国主义精神。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('英烈传(上下绣像珍藏本)/博集典藏馆古典系列', '3474400-fm.jpg', '明代徐渭的历史演义小说，讲述朱元璋建立明朝的过程，展现乱世英雄的崛起与权谋斗争。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('飞龙全传(上下绣像珍藏本)/博集典藏馆古典系列', '3474401-fm.jpg', '清代吴璿的历史演义小说，讲述宋太祖赵匡胤的传奇一生，展现其从平民到皇帝的奋斗历程。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('粉妆楼(上下绣像珍藏本)/博集典藏馆古典系列', '3474402-fm.jpg', '清代作者不详的侠义言情小说，讲述罗成后人的故事，融合侠义与爱情元素。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('小五义(上下绣像珍藏本)/博集典藏馆古典系列', '3474403-fm.jpg', '清代石玉昆的侠义小说，讲述小五义等年轻侠义之士的故事，延续《三侠五义》的情节。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('续小五义(上下绣像珍藏本)/博集典藏馆古典系列', '3474404-fm.jpg', '清代石玉昆的侠义小说，继续讲述小五义的江湖 adventures，展现新一代侠义之士的成长。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),

-- 101-120条
('七侠五义(上下绣像珍藏本)/博集典藏馆古典系列', '3474405-fm.jpg', '清代石玉昆的侠义小说，讲述包拯断案与七侠五义行侠仗义的故事，展现正义与邪恶的较量。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('侠义风月传(上下绣像珍藏本)/博集典藏馆古典系列', '3474406-fm.jpg', '清代名教中人的言情小说，讲述铁中玉与水冰心的爱情故事，展现才子佳人的浪漫与智慧。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('好逑传(上下绣像珍藏本)/博集典藏馆古典系列', '3474407-fm.jpg', '清代名教中人的言情小说，讲述铁中玉与水冰心的爱情故事，展现才子佳人的浪漫与智慧。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('玉娇梨(上下绣像珍藏本)/博集典藏馆古典系列', '3474408-fm.jpg', '清代张匀的言情小说，讲述才子佳人的爱情故事，展现古代婚姻制度与男女情感。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('平山冷燕(上下绣像珍藏本)/博集典藏馆古典系列', '3474409-fm.jpg', '清代天花藏主人的言情小说，讲述才子佳人的诗词唱和与爱情故事，展现古代文人的生活情趣。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('再生缘(上下绣像珍藏本)/博集典藏馆古典系列', '3474410-fm.jpg', '清代陈端生的弹词小说，讲述才女孟丽君女扮男装的传奇经历，展现古代女性的智慧与勇气。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('镜花缘(上下绣像珍藏本)/博集典藏馆古典系列', '3474411-fm.jpg', '清代李汝珍的神魔小说，讲述唐敖等人游历海外诸国的奇遇，展现作者的社会理想与对女性的尊重。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('野叟曝言(上下绣像珍藏本)/博集典藏馆古典系列', '3474412-fm.jpg', '清代夏敬渠的长篇小说，讲述文素臣的传奇一生，展现作者的政治理想与道德观念。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('老残游记(上下绣像珍藏本)/博集典藏馆古典系列', '3474413-fm.jpg', '清代刘鹗的社会批判小说，以老残的游历为主线，揭露晚清社会的黑暗与人民的苦难。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('孽海花(上下绣像珍藏本)/博集典藏馆古典系列', '3474414-fm.jpg', '清代曾朴的历史小说，以金雯青和傅彩云的故事为主线，展现清末社会的变迁与文化冲突。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('官场现形记(上下绣像珍藏本)/博集典藏馆古典系列', '3474415-fm.jpg', '清代李宝嘉的讽刺小说，揭露晚清官场的腐败与黑暗，展现封建官僚的丑态。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('二十年目睹之怪现状(上下绣像珍藏本)/博集典藏馆古典系列', '3474416-fm.jpg', '清代吴趼人的社会小说，以“九死一生”的经历为主线，揭露晚清社会的种种怪现状。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('文明小史(上下绣像珍藏本)/博集典藏馆古典系列', '3474417-fm.jpg', '清代李宝嘉的社会小说，描绘清末社会的变迁与中西文化的冲突，展现时代转型期的社会风貌。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('中国现在记(上下绣像珍藏本)/博集典藏馆古典系列', '3474418-fm.jpg', '清代吴趼人的社会小说，揭露清末官场的腐败与社会的黑暗，展现人民的苦难与反抗。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('市声(上下绣像珍藏本)/博集典藏馆古典系列', '3474419-fm.jpg', '清代姬文的社会小说，描绘清末商业社会的种种现象，展现商人的经营之道与社会矛盾。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('发财秘诀(上下绣像珍藏本)/博集典藏馆古典系列', '3474420-fm.jpg', '清代吴趼人的社会小说，揭露清末社会的投机取巧与道德沦丧，展现人性的贪婪与虚伪。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('活地狱(上下绣像珍藏本)/博集典藏馆古典系列', '3474421-fm.jpg', '清代李宝嘉的社会小说，揭露清末监狱的黑暗与司法制度的腐败，展现囚犯的苦难生活。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('瞎骗奇闻(上下绣像珍藏本)/博集典藏馆古典系列', '3474422-fm.jpg', '清代吴趼人的社会小说，揭露清末社会的种种骗局与欺诈行为，展现人性的丑恶与社会的病态。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('糊涂世界(上下绣像珍藏本)/博集典藏馆古典系列', '3474423-fm.jpg', '清代吴趼人的社会小说，描绘清末官场与社会的种种糊涂现象，展现官僚的昏庸与社会的混乱。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1),
('苦社会(上下绣像珍藏本)/博集典藏馆古典系列', '3474424-fm.jpg', '清代佚名的社会小说，描绘清末华工在海外的苦难生活，展现他们的艰辛与抗争。', '36.1', '0', 100, 0, NOW(), 0, 0, 0, 0, FLOOR(RAND()*7)+1);
/*!40000 ALTER TABLE `b_thing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_thing_collect`
--

DROP TABLE IF EXISTS `b_thing_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_thing_collect` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `b_thing_collect_thing_id_user_id_45b9f252_uniq` (`thing_id`,`user_id`),
  KEY `b_thing_collect_user_id_e5d69968_fk_b_user_id` (`user_id`),
  CONSTRAINT `b_thing_collect_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_thing_collect`
--

LOCK TABLES `b_thing_collect` WRITE;
/*!40000 ALTER TABLE `b_thing_collect` DISABLE KEYS */;
INSERT INTO `b_thing_collect` VALUES (12,2,2),(9,10,2),(13,80,2),(8,81,2);
/*!40000 ALTER TABLE `b_thing_collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_thing_tag`
--

DROP TABLE IF EXISTS `b_thing_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_thing_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `b_thing_tag_thing_id_tag_id_a5d426b2_uniq` (`thing_id`,`tag_id`),
  KEY `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id` (`tag_id`),
  CONSTRAINT `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `b_tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `b_thing_tag_thing_id_fb8ecf3f_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=398 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_thing_tag`
--

LOCK TABLES `b_thing_tag` WRITE;
/*!40000 ALTER TABLE `b_thing_tag` DISABLE KEYS */;
INSERT INTO `b_thing_tag` VALUES (373,1,2),(374,2,4),(375,2,5),(372,6,6),(371,7,6),(387,8,5),(388,8,6),(385,9,1),(386,9,6),(368,10,5),(369,10,6),(366,11,5),(367,11,6),(364,12,5),(365,12,6),(362,13,5),(363,13,6),(360,14,5),(361,14,6),(357,15,2),(358,15,5),(359,15,6),(355,16,5),(356,16,6),(354,17,4),(352,18,4),(353,18,5),(350,19,7),(351,19,8),(348,20,7),(349,20,8),(346,21,7),(347,21,8),(344,22,7),(345,22,8),(342,23,7),(343,23,8),(340,24,7),(341,24,8),(338,25,7),(339,25,8),(336,26,7),(337,26,8),(334,27,4),(335,27,6),(332,28,4),(333,28,9),(331,29,9),(330,30,9),(384,31,9),(329,32,9),(328,33,9),(327,34,9),(326,35,9),(325,36,9),(323,37,5),(324,37,10),(321,38,5),(322,38,10),(319,39,5),(320,39,10),(317,40,5),(318,40,10),(382,41,5),(383,41,10),(315,42,5),(316,42,10),(313,43,5),(314,43,10),(311,44,5),(312,44,10),(309,45,5),(310,45,10),(307,46,5),(308,46,10),(305,47,8),(306,47,11),(302,48,5),(303,48,8),(304,48,11),(299,49,5),(300,49,8),(301,49,11),(296,50,5),(297,50,8),(298,50,11),(293,51,5),(294,51,8),(295,51,11),(289,52,5),(290,52,8),(291,52,9),(292,52,11),(287,53,8),(288,53,11),(282,54,5),(283,54,6),(284,54,7),(285,54,10),(286,54,11),(380,55,8),(381,55,11),(378,56,8),(379,56,11),(376,57,8),(377,57,12),(394,58,8),(395,58,12),(396,58,16),(397,58,18),(278,59,8),(279,59,12),(276,60,8),(277,60,12),(274,61,8),(275,61,12),(272,62,8),(273,62,12),(270,63,8),(271,63,12),(268,64,8),(269,64,12),(266,65,8),(267,65,12),(264,66,8),(265,66,12),(261,67,7),(262,67,8),(263,67,9),(259,68,13),(260,68,14),(255,69,8),(256,69,9),(257,69,12),(258,69,14),(252,70,11),(253,70,13),(254,70,14),(249,71,12),(250,71,13),(251,71,14),(246,72,12),(247,72,13),(248,72,14),(243,73,12),(244,73,13),(245,73,14),(240,74,8),(241,74,13),(242,74,14),(237,75,11),(238,75,13),(239,75,14),(389,76,12),(390,76,13),(391,76,14),(392,76,16),(393,76,18),(229,77,5),(230,77,6),(231,77,7),(232,77,8),(233,77,11),(226,78,9),(227,78,10),(228,78,11),(223,79,10),(224,79,12),(225,79,14),(221,80,6),(222,80,10),(216,81,4),(217,81,5),(218,81,8),(219,81,11),(220,81,12);
/*!40000 ALTER TABLE `b_thing_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_thing_wish`
--

DROP TABLE IF EXISTS `b_thing_wish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_thing_wish` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `b_thing_wish_thing_id_user_id_9d647bbb_uniq` (`thing_id`,`user_id`),
  KEY `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` (`user_id`),
  CONSTRAINT `b_thing_wish_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_thing_wish`
--

LOCK TABLES `b_thing_wish` WRITE;
/*!40000 ALTER TABLE `b_thing_wish` DISABLE KEYS */;
INSERT INTO `b_thing_wish` VALUES (15,1,2),(8,2,2),(16,80,2);
/*!40000 ALTER TABLE `b_thing_wish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user`
--

DROP TABLE IF EXISTS `b_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(2) DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `mobile` varchar(13) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `description` longtext,
  `create_time` varchar(30) DEFAULT NULL,
  `score` int(11) DEFAULT '0',
  `push_email` varchar(40) DEFAULT NULL,
  `push_switch` tinyint(1) DEFAULT '0',
  `token` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user`
--

LOCK TABLES `b_user` WRITE;
/*!40000 ALTER TABLE `b_user` DISABLE KEYS */;
INSERT INTO `b_user` VALUES (2,'ddd','a4c9855f2a97a78b604d0fb258880b21','1','0','test','ec794bf4-da3c-4c69-ad67-ae17ef3803b1.jpeg','13211112222','13333@111.com',NULL,'333000',NULL,8,'hh333@mail.cn',1,'a4c9855f2a97a78b604d0fb258880b21'),(3,'www','dcf7e9c1ca5211b175e1572e6980d4b5','1','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,'dcf7e9c1ca5211b175e1572e6980d4b5'),(5,'sss','37e8f6ae0ef304cccadd6c19481b331b','1','0',NULL,NULL,NULL,NULL,NULL,NULL,'1683425605400',3,NULL,NULL,'37e8f6ae0ef304cccadd6c19481b331b'),(7,'admin123','f159053ec4a0e4a0e3c66cfd7c254853','2','0',NULL,NULL,NULL,NULL,NULL,NULL,'1683963040980',0,NULL,0,'f159053ec4a0e4a0e3c66cfd7c254853'),(8,'admin','6d854ca8c1479c069dad7d5b7ccdfd28','3','0',NULL,NULL,NULL,NULL,NULL,NULL,'1683963080205',0,NULL,0,'9116392dc24b7b84483ba00b0d72b80c'),(9,'admin1','ea73c7f54285c49f6d23ef6062d71f2f','3','0',NULL,NULL,NULL,NULL,NULL,NULL,'1683967886490',0,NULL,0,'ee9aa725dbbb485c1fe8b150d6b0f2c1');
/*!40000 ALTER TABLE `b_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-14 10:59:14
