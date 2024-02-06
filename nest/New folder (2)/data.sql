-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts_bankaccount`
--

DROP TABLE IF EXISTS `accounts_bankaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_bankaccount` (
  `id` tinyint(4) DEFAULT NULL,
  `bank_name` varchar(13) DEFAULT NULL,
  `account_number` int(11) DEFAULT NULL,
  `swift_code` varchar(5) DEFAULT NULL,
  `account_name` varchar(13) DEFAULT NULL,
  `country` varchar(5) DEFAULT NULL,
  `paypal_email` varchar(21) DEFAULT NULL,
  `description` varchar(7) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `date_update` varchar(10) DEFAULT NULL,
  `vendor_profile_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bankaccount`
--

LOCK TABLES `accounts_bankaccount` WRITE;
/*!40000 ALTER TABLE `accounts_bankaccount` DISABLE KEYS */;
INSERT INTO `accounts_bankaccount` VALUES (6,'National Bank',6546456,'4555H','mohamed selem','egypt','info@mohamedselem.com','GGGGGGG','2022-05-08','2022-05-18',2);
/*!40000 ALTER TABLE `accounts_bankaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_profile`
--

DROP TABLE IF EXISTS `accounts_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_profile` (
  `id` tinyint(4) DEFAULT NULL,
  `image` varchar(32) DEFAULT NULL,
  `mobile_number` varchar(22) DEFAULT NULL,
  `address` varchar(19) DEFAULT NULL,
  `city` varchar(14) DEFAULT NULL,
  `post_code` int(11) DEFAULT NULL,
  `country` varchar(13) DEFAULT NULL,
  `state` varchar(14) DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL,
  `code` varchar(5) DEFAULT NULL,
  `referrals` tinyint(4) DEFAULT NULL,
  `blance` decimal(5,2) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `date_update` varchar(10) DEFAULT NULL,
  `recommended_by_id` varchar(0) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `display_name` varchar(11) DEFAULT NULL,
  `slug` varchar(5) DEFAULT NULL,
  `bio` varchar(167) DEFAULT NULL,
  `requested` decimal(3,1) DEFAULT NULL,
  `admission` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_profile`
--

LOCK TABLES `accounts_profile` WRITE;
/*!40000 ALTER TABLE `accounts_profile` DISABLE KEYS */;
INSERT INTO `accounts_profile` VALUES (2,'profile_pic/vendor-1_GOFMpD1.png','(+91) - 540-025-124553','5171 W Campbell Ave','undefined Kent',11736,'United States','undefined Kent','vendor','selem',0,908.55,'2022-02-05','2022-11-29','',1,'Nature Food','selem','Got a smooth, buttery spread in your fridge? Chances are good that it\'s Good Chef. This brand made Lionto\'s list of the most popular grocery brands across the country.',10.0,1);
/*!40000 ALTER TABLE `accounts_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_sociallink`
--

DROP TABLE IF EXISTS `accounts_sociallink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_sociallink` (
  `id` tinyint(4) DEFAULT NULL,
  `facebook` varchar(25) DEFAULT NULL,
  `twitter` varchar(20) DEFAULT NULL,
  `instagram` varchar(26) DEFAULT NULL,
  `pinterest` varchar(34) DEFAULT NULL,
  `vendor_profile_id` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_sociallink`
--

LOCK TABLES `accounts_sociallink` WRITE;
/*!40000 ALTER TABLE `accounts_sociallink` DISABLE KEYS */;
INSERT INTO `accounts_sociallink` VALUES (2,'alithemes-facebook','alithemes-twitter','alithemes-instagram','alithemes-pinterest','2'),(3,'https://www.facebook.com/','https://twitter.com/','https://www.pinterest.com/','https://www.instagram.com/explore/','');
/*!40000 ALTER TABLE `accounts_sociallink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` smallint(6) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(27) DEFAULT NULL,
  `name` varchar(34) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_user','Can add user'),(14,4,'change_user','Can change user'),(15,4,'delete_user','Can delete user'),(16,4,'view_user','Can view user'),(17,5,'add_contenttype','Can add content type'),(18,5,'change_contenttype','Can change content type'),(19,5,'delete_contenttype','Can delete content type'),(20,5,'view_contenttype','Can view content type'),(21,6,'add_session','Can add session'),(22,6,'change_session','Can change session'),(23,6,'delete_session','Can delete session'),(24,6,'view_session','Can view session'),(25,7,'add_subcategory','Can add sub category'),(26,7,'change_subcategory','Can change sub category'),(27,7,'delete_subcategory','Can delete sub category'),(28,7,'view_subcategory','Can view sub category'),(29,8,'add_maincategory','Can add main category'),(30,8,'change_maincategory','Can change main category'),(31,8,'delete_maincategory','Can delete main category'),(32,8,'view_maincategory','Can view main category'),(33,9,'add_product','Can add product'),(34,9,'change_product','Can change product'),(35,9,'delete_product','Can delete product'),(36,9,'view_product','Can view product'),(37,10,'add_minicategory','Can add mini category'),(38,10,'change_minicategory','Can change mini category'),(39,10,'delete_minicategory','Can delete mini category'),(40,10,'view_minicategory','Can view mini category'),(41,11,'add_supercategory','Can add super category'),(42,11,'change_supercategory','Can change super category'),(43,11,'delete_supercategory','Can delete super category'),(44,11,'view_supercategory','Can view super category'),(45,12,'add_productimage','Can add product image'),(46,12,'change_productimage','Can change product image'),(47,12,'delete_productimage','Can delete product image'),(48,12,'view_productimage','Can view product image'),(49,13,'add_profile','Can add profile'),(50,13,'change_profile','Can change profile'),(51,13,'delete_profile','Can delete profile'),(52,13,'view_profile','Can view profile'),(53,14,'add_orderdetails','Can add order details'),(54,14,'change_orderdetails','Can change order details'),(55,14,'delete_orderdetails','Can delete order details'),(56,14,'view_orderdetails','Can view order details'),(57,15,'add_order','Can add order'),(58,15,'change_order','Can change order'),(59,15,'delete_order','Can delete order'),(60,15,'view_order','Can view order'),(61,16,'add_coupon','Can add coupon'),(62,16,'change_coupon','Can change coupon'),(63,16,'delete_coupon','Can delete coupon'),(64,16,'view_coupon','Can view coupon'),(65,17,'add_payment','Can add payment'),(66,17,'change_payment','Can change payment'),(67,17,'delete_payment','Can delete payment'),(68,17,'view_payment','Can view payment'),(69,18,'add_country','Can add country'),(70,18,'change_country','Can change country'),(71,18,'delete_country','Can delete country'),(72,18,'view_country','Can view country'),(73,19,'add_carousel','Can add carousel'),(74,19,'change_carousel','Can change carousel'),(75,19,'delete_carousel','Can delete carousel'),(76,19,'view_carousel','Can view carousel'),(77,20,'add_ads','Can add ads'),(78,20,'change_ads','Can change ads'),(79,20,'delete_ads','Can delete ads'),(80,20,'view_ads','Can view ads'),(81,20,'add_homeads','Can add home ads'),(82,20,'change_homeads','Can change home ads'),(83,20,'delete_homeads','Can delete home ads'),(84,20,'view_homeads','Can view home ads'),(85,20,'add_homead','Can add home ad'),(86,20,'change_homead','Can change home ad'),(87,20,'delete_homead','Can delete home ad'),(88,20,'view_homead','Can view home ad'),(89,20,'add_homeadsidebar','Can add home ad sidebar'),(90,20,'change_homeadsidebar','Can change home ad sidebar'),(91,20,'delete_homeadsidebar','Can delete home ad sidebar'),(92,20,'view_homeadsidebar','Can view home ad sidebar'),(93,21,'add_homeadmiddlebar','Can add home ad middlebar'),(94,21,'change_homeadmiddlebar','Can change home ad middlebar'),(95,21,'delete_homeadmiddlebar','Can delete home ad middlebar'),(96,21,'view_homeadmiddlebar','Can view home ad middlebar'),(97,22,'add_homeadmiddlesmall','Can add home ad middle small'),(98,22,'change_homeadmiddlesmall','Can change home ad middle small'),(99,22,'delete_homeadmiddlesmall','Can delete home ad middle small'),(100,22,'view_homeadmiddlesmall','Can view home ad middle small'),(101,22,'add_homeadsupplier','Can add home ad supplier'),(102,22,'change_homeadsupplier','Can change home ad supplier'),(103,22,'delete_homeadsupplier','Can delete home ad supplier'),(104,22,'view_homeadsupplier','Can view home ad supplier'),(105,23,'add_homeaddaily','Can add home ad daily'),(106,23,'change_homeaddaily','Can change home ad daily'),(107,23,'delete_homeaddaily','Can delete home ad daily'),(108,23,'view_homeaddaily','Can view home ad daily'),(109,24,'add_homeaddealtime','Can add home ad deal time'),(110,24,'change_homeaddealtime','Can change home ad deal time'),(111,24,'delete_homeaddealtime','Can delete home ad deal time'),(112,24,'view_homeaddealtime','Can view home ad deal time'),(113,25,'add_vendordetailsadimage','Can add vendor details ad image'),(114,25,'change_vendordetailsadimage','Can change vendor details ad image'),(115,25,'delete_vendordetailsadimage','Can delete vendor details ad image'),(116,25,'view_vendordetailsadimage','Can view vendor details ad image'),(117,26,'add_shopadsidebar','Can add shop ad sidebar'),(118,26,'change_shopadsidebar','Can change shop ad sidebar'),(119,26,'delete_shopadsidebar','Can delete shop ad sidebar'),(120,26,'view_shopadsidebar','Can view shop ad sidebar'),(121,27,'add_hotdealad','Can add hot deal ad'),(122,27,'change_hotdealad','Can change hot deal ad'),(123,27,'delete_hotdealad','Can delete hot deal ad'),(124,27,'view_hotdealad','Can view hot deal ad'),(125,28,'add_orderdetailssupplier','Can add order details supplier'),(126,28,'change_orderdetailssupplier','Can change order details supplier'),(127,28,'delete_orderdetailssupplier','Can delete order details supplier'),(128,28,'view_orderdetailssupplier','Can view order details supplier'),(129,29,'add_ordersupplier','Can add order supplier'),(130,29,'change_ordersupplier','Can change order supplier'),(131,29,'delete_ordersupplier','Can delete order supplier'),(132,29,'view_ordersupplier','Can view order supplier'),(133,30,'add_newsletter','Can add News letter'),(134,30,'change_newsletter','Can change News letter'),(135,30,'delete_newsletter','Can delete News letter'),(136,30,'view_newsletter','Can view News letter'),(137,31,'add_productrating','Can add product rating'),(138,31,'change_productrating','Can change product rating'),(139,31,'delete_productrating','Can delete product rating'),(140,31,'view_productrating','Can view product rating'),(141,32,'add_comment','Can add comment'),(142,32,'change_comment','Can change comment'),(143,32,'delete_comment','Can delete comment'),(144,32,'view_comment','Can view comment'),(145,33,'add_post','Can add post'),(146,33,'change_post','Can change post'),(147,33,'delete_post','Can delete post'),(148,33,'view_post','Can view post'),(149,34,'add_postreport','Can add post report'),(150,34,'change_postreport','Can change post report'),(151,34,'delete_postreport','Can delete post report'),(152,34,'view_postreport','Can view post report'),(153,35,'add_report','Can add report'),(154,35,'change_report','Can change report'),(155,35,'delete_report','Can delete report'),(156,35,'view_report','Can view report'),(157,36,'add_postview','Can add post view'),(158,36,'change_postview','Can change post view'),(159,36,'delete_postview','Can delete post view'),(160,36,'view_postview','Can view post view'),(161,37,'add_reportuser','Can add report user'),(162,37,'change_reportuser','Can change report user'),(163,37,'delete_reportuser','Can delete report user'),(164,37,'view_reportuser','Can view report user'),(165,38,'add_headtextad','Can add head text ad'),(166,38,'change_headtextad','Can change head text ad'),(167,38,'delete_headtextad','Can delete head text ad'),(168,38,'view_headtextad','Can view head text ad'),(169,39,'add_socaillinks','Can add Socail links'),(170,39,'change_socaillinks','Can change Socail links'),(171,39,'delete_socaillinks','Can delete Socail links'),(172,39,'view_socaillinks','Can view Socail links'),(173,40,'add_contactinfo','Can add Contact Us'),(174,40,'change_contactinfo','Can change Contact Us'),(175,40,'delete_contactinfo','Can delete Contact Us'),(176,40,'view_contactinfo','Can view Contact Us'),(177,41,'add_messages_list','Can add messages_ list'),(178,41,'change_messages_list','Can change messages_ list'),(179,41,'delete_messages_list','Can delete messages_ list'),(180,41,'view_messages_list','Can view messages_ list'),(181,41,'add_messageslist','Can add messages list'),(182,41,'change_messageslist','Can change messages list'),(183,41,'delete_messageslist','Can delete messages list'),(184,41,'view_messageslist','Can view messages list'),(185,42,'add_aboutus','Can add about us'),(186,42,'change_aboutus','Can change about us'),(187,42,'delete_aboutus','Can delete about us'),(188,42,'view_aboutus','Can view about us'),(189,42,'add_pageslist','Can add Pages List'),(190,42,'change_pageslist','Can change Pages List'),(191,42,'delete_pageslist','Can delete Pages List'),(192,42,'view_pageslist','Can view Pages List'),(193,43,'add_supportnumber','Can add Support Number'),(194,43,'change_supportnumber','Can change Support Number'),(195,43,'delete_supportnumber','Can delete Support Number'),(196,43,'view_supportnumber','Can view Support Number'),(197,44,'add_sitesetting','Can add Site Setting'),(198,44,'change_sitesetting','Can change Site Setting'),(199,44,'delete_sitesetting','Can delete Site Setting'),(200,44,'view_sitesetting','Can view Site Setting'),(201,45,'add_bankaccount','Can add bank account'),(202,45,'change_bankaccount','Can change bank account'),(203,45,'delete_bankaccount','Can delete bank account'),(204,45,'view_bankaccount','Can view bank account'),(205,46,'add_sociallink','Can add social link'),(206,46,'change_sociallink','Can change social link'),(207,46,'delete_sociallink','Can delete social link'),(208,46,'view_sociallink','Can view social link'),(209,47,'add_vendorpayments','Can add vendor payments'),(210,47,'change_vendorpayments','Can change vendor payments'),(211,47,'delete_vendorpayments','Can delete vendor payments'),(212,47,'view_vendorpayments','Can view vendor payments'),(213,48,'add_stripesetting','Can add stripe setting'),(214,48,'change_stripesetting','Can change stripe setting'),(215,48,'delete_stripesetting','Can delete stripe setting'),(216,48,'view_stripesetting','Can view stripe setting'),(217,49,'add_captchastore','Can add captcha store'),(218,49,'change_captchastore','Can change captcha store'),(219,49,'delete_captchastore','Can delete captcha store'),(220,49,'view_captchastore','Can view captcha store'),(221,50,'add_currency','Can add currency'),(222,50,'change_currency','Can change currency'),(223,50,'delete_currency','Can delete currency'),(224,50,'view_currency','Can view currency'),(225,51,'add_homepagetheme','Can add Home Page Theme'),(226,51,'change_homepagetheme','Can change Home Page Theme'),(227,51,'delete_homepagetheme','Can delete Home Page Theme'),(228,51,'view_homepagetheme','Can view Home Page Theme'),(229,52,'add_productsize','Can add product size'),(230,52,'change_productsize','Can change product size'),(231,52,'delete_productsize','Can delete product size'),(232,52,'view_productsize','Can view product size');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` tinyint(4) DEFAULT NULL,
  `password` varchar(88) DEFAULT NULL,
  `last_login` varchar(10) DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(5) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL,
  `email` varchar(13) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` varchar(0) DEFAULT NULL,
  `first_name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$JPyEtpQ97e6DWaf7QXefTT$t/7z8YyjKeF26+lks6t8FiUPFt9sAnmsQygSPJhy4jA=','2023-07-10',1,'selem','','mail@test.com',1,1,'','');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comment`
--

DROP TABLE IF EXISTS `blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_comment` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `body` varchar(0) DEFAULT NULL,
  `comment_date` varchar(0) DEFAULT NULL,
  `active` varchar(0) DEFAULT NULL,
  `post_id` varchar(0) DEFAULT NULL,
  `profile_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comment`
--

LOCK TABLES `blog_comment` WRITE;
/*!40000 ALTER TABLE `blog_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post` (
  `id` tinyint(4) DEFAULT NULL,
  `title` varchar(57) DEFAULT NULL,
  `post_date` varchar(0) DEFAULT NULL,
  `post_update` varchar(10) DEFAULT NULL,
  `post_image` varchar(29) DEFAULT NULL,
  `views` tinyint(4) DEFAULT NULL,
  `posttags` varchar(0) DEFAULT NULL,
  `post_Slug` varchar(56) DEFAULT NULL,
  `author_id` tinyint(4) DEFAULT NULL,
  `post_supercategory_id` tinyint(4) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post`
--

LOCK TABLES `blog_post` WRITE;
/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
INSERT INTO `blog_post` VALUES (1,'Best smartwatch 2022: the top wearables you can buy today','','2022-10-30','blog/posts/blog-1_Zx8UVMs.png',4,'','best-smartwatch-2022-the-top-wearables-you-can-buy-today',2,23,'<p>Helping everyone live happier, healthier lives at home through their kitchen. Kitchn is a daily food magazine on the Web celebrating life in the kitchen through home cooking and kitchen intelligence.</p>\r\n\r\n<p>We&#39;ve reviewed and ranked all of the best smartwatches on the market right now, and we&#39;ve made a definitive list of the top 10 devices you can buy today. One of the 10 picks below may just be your perfect next smartwatch.</p>\r\n\r\n<p>Those top-end wearables span from the Apple Watch to Fitbits, Garmin watches to Tizen-sporting Samsung watches. There&#39;s also Wear OS which is Google&#39;s own wearable operating system in the vein of Apple&#39;s watchOS - you&rsquo;ll see it show up in a lot of these devices.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet cons</p>\r\n\r\n<p>Throughout our review process, we look at the design, features, battery life, spec, price and more for each smartwatch, rank it against the competition and enter it into the list you&#39;ll find below.</p>\r\n\r\n<p>&nbsp;</p>');
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captcha_captchastore` (
  `challenge` varchar(4) DEFAULT NULL,
  `response` varchar(4) DEFAULT NULL,
  `hashkey` varchar(40) DEFAULT NULL,
  `expiration` varchar(10) DEFAULT NULL,
  `id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_captchastore`
--

LOCK TABLES `captcha_captchastore` WRITE;
/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
INSERT INTO `captcha_captchastore` VALUES ('XDDO','xddo','9e124e0c7edacdd696613df2b2c887bf4975f971','2022-05-19',1),('RJQQ','rjqq','ca904608ebdca2a831c9955dc3a00d74fbecf215','2022-05-19',2),('SHCU','shcu','e8044a85dceabb60d58a7eb8e6706c162922447f','2022-05-19',3),('PDGJ','pdgj','296a32877afa6ea8df363ebf8506b3c6de6d4a2e','2022-05-19',4),('LKAD','lkad','62e31181ac7a21aea734268aecf6372ec434a9bb','2022-05-19',5),('DFXW','dfxw','beff0a9544caeb1a943a38918303cfd6b1086a51','2022-05-19',6),('ZQKH','zqkh','26fb4b6494c2ad65338ca453a84bd8c437a4ca14','2022-05-19',7),('UGTM','ugtm','455955575b50fbb764f84ce8db48d24addf5d255','2022-05-28',8),('TNIS','tnis','cee000f64eb30fd9403fc0af1bafb258ff7c82ad','2022-10-22',9);
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_maincategory`
--

DROP TABLE IF EXISTS `categories_maincategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_maincategory` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(23) DEFAULT NULL,
  `super_category_id` varchar(2) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `date_update` varchar(10) DEFAULT NULL,
  `slug` varchar(21) DEFAULT NULL,
  `category_image` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_maincategory`
--

LOCK TABLES `categories_maincategory` WRITE;
/*!40000 ALTER TABLE `categories_maincategory` DISABLE KEYS */;
INSERT INTO `categories_maincategory` VALUES (8,'Custard apple','23','2022-02-17','2022-05-28','custard-apple',''),(9,'Coffe & Tea','23','2022-02-17','2022-05-28','coffe-tea',''),(17,'Cake & Milk','23','2022-04-17','2022-05-28','cake-milk',''),(18,'Oganic Kiwi','23','2022-04-17','2022-05-28','oganic-kiwi',''),(19,'Peach','','2022-04-17','2022-05-28','peach',''),(20,'Red Apple','23','2022-04-17','2022-05-28','red-apple',''),(21,'Snack','23','2022-04-17','2022-05-28','snack',''),(22,'Vegetables','23','2022-04-17','2022-05-28','vegetables',''),(23,'Strawberry','23','2022-04-17','2022-05-28','strawberry',''),(24,'Black plum','23','2022-04-17','2022-05-28','black-plum',''),(25,'Makeup','24','2022-05-12','2022-05-12','makeup',''),(26,'Books','25','2022-05-12','2022-05-12','books',''),(27,'Mobile Phones & Tablets','26','2022-05-12','2022-05-12','mobile-phones-tablets',''),(28,'Clothing','27','2022-05-12','2022-05-12','clothing','');
/*!40000 ALTER TABLE `categories_maincategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_minicategory`
--

DROP TABLE IF EXISTS `categories_minicategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_minicategory` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(22) DEFAULT NULL,
  `sub_category_id` tinyint(4) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `date_update` varchar(10) DEFAULT NULL,
  `slug` varchar(20) DEFAULT NULL,
  `category_image` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_minicategory`
--

LOCK TABLES `categories_minicategory` WRITE;
/*!40000 ALTER TABLE `categories_minicategory` DISABLE KEYS */;
INSERT INTO `categories_minicategory` VALUES (7,'Tropical Fruits',7,'2022-02-28','2022-02-28','tropical-fruits',''),(8,'Eye Shadows',8,'2022-05-12','2022-05-12','eye-shadows',''),(9,'Comic & Graphic Novels',9,'2022-05-12','2022-05-12','comic-graphic-novels',''),(10,'Wall Chargers',10,'2022-05-12','2022-05-12','wall-chargers',''),(11,'Kids Costumes',11,'2022-05-12','2022-05-12','kids-costumes',''),(12,'Black Tea',12,'2022-05-19','2022-05-19','black-tea',''),(13,'Milk Powder',13,'2022-05-19','2022-05-19','milk-powder',''),(14,'Kiwifruit',14,'2022-05-19','2022-05-19','kiwifruit',''),(16,'Seed Snacks',16,'2022-05-19','2022-05-19','seed-snacks',''),(17,'Frozen Vegetables',17,'2022-05-19','2022-05-19','frozen-vegetables',''),(18,'Jams',18,'2022-05-19','2022-05-19','jams',''),(19,'plum',19,'2022-05-19','2022-05-19','plum',''),(20,'Apple',20,'2022-05-19','2022-05-19','apple','');
/*!40000 ALTER TABLE `categories_minicategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_subcategory`
--

DROP TABLE IF EXISTS `categories_subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_subcategory` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(21) DEFAULT NULL,
  `main_category_id` tinyint(4) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `date_update` varchar(10) DEFAULT NULL,
  `slug` varchar(19) DEFAULT NULL,
  `category_image` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_subcategory`
--

LOCK TABLES `categories_subcategory` WRITE;
/*!40000 ALTER TABLE `categories_subcategory` DISABLE KEYS */;
INSERT INTO `categories_subcategory` VALUES (7,'Fruits',8,'2022-02-28','2022-06-05','fruits',''),(8,'Eye Makeup',25,'2022-05-12','2022-05-12','eye-makeup',''),(9,'Fiction',26,'2022-05-12','2022-05-12','fiction',''),(10,'Chargers & Batteries',27,'2022-05-12','2022-05-12','chargers-batteries',''),(11,'Kids Jumpsuits & Sets',28,'2022-05-12','2022-05-12','kids-jumpsuits-sets',''),(12,'Tea',9,'2022-05-19','2022-05-19','tea',''),(13,'Milk',17,'2022-05-19','2022-05-19','milk',''),(14,'Tropical Fruit',18,'2022-05-19','2022-05-19','tropical-fruit',''),(16,'Pantry',21,'2022-05-19','2022-05-19','pantry',''),(17,'Frozen Food',22,'2022-05-19','2022-05-19','frozen-food',''),(18,'Jams & Spreads',23,'2022-05-19','2022-05-19','jams-spreads',''),(19,'Spices & Seasonings',24,'2022-05-19','2022-05-19','spices-seasonings',''),(20,'Fresh Fruits',20,'2022-05-19','2022-05-19','fresh-fruits-4l26g','');
/*!40000 ALTER TABLE `categories_subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_supercategory`
--

DROP TABLE IF EXISTS `categories_supercategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_supercategory` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(21) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `date_update` varchar(10) DEFAULT NULL,
  `slug` varchar(20) DEFAULT NULL,
  `category_image` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_supercategory`
--

LOCK TABLES `categories_supercategory` WRITE;
/*!40000 ALTER TABLE `categories_supercategory` DISABLE KEYS */;
INSERT INTO `categories_supercategory` VALUES (23,'Food & Beverage','2022-02-08','2022-05-28','food-beverage',''),(24,'Beauty & Fragrances','2022-05-12','2022-05-12','beauty-fragrances',''),(25,'Office & Stationery','2022-05-12','2022-05-12','office-stationery',''),(26,'Consumer Electronics','2022-05-12','2022-05-12','consumer-electronics',''),(27,'Fashion & Accessories','2022-05-12','2022-05-12','fashion-accessories','');
/*!40000 ALTER TABLE `categories_supercategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_messageslist`
--

DROP TABLE IF EXISTS `contact_messageslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_messageslist` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(11) DEFAULT NULL,
  `email` varchar(21) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `subject` varchar(6) DEFAULT NULL,
  `message` varchar(6) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `date_update` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_messageslist`
--

LOCK TABLES `contact_messageslist` WRITE;
/*!40000 ALTER TABLE `contact_messageslist` DISABLE KEYS */;
INSERT INTO `contact_messageslist` VALUES (1,'مصطفی جلیلی','mjs13761376@yahoo.com',9105000781,'تست یک','تست یک','2023-06-04','2023-06-04');
/*!40000 ALTER TABLE `contact_messageslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies_currency`
--

DROP TABLE IF EXISTS `currencies_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies_currency` (
  `code` varchar(3) DEFAULT NULL,
  `symbol` varchar(1) DEFAULT NULL,
  `factor` decimal(3,2) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `is_base` tinyint(4) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT NULL,
  `info` varchar(2) DEFAULT NULL,
  `name` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies_currency`
--

LOCK TABLES `currencies_currency` WRITE;
/*!40000 ALTER TABLE `currencies_currency` DISABLE KEYS */;
INSERT INTO `currencies_currency` VALUES ('USD','$',1.00,1,1,1,'{}','USD'),('EUR','€',0.95,1,0,0,'{}','EUR');
/*!40000 ALTER TABLE `currencies_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` smallint(6) DEFAULT NULL,
  `action_time` varchar(10) DEFAULT NULL,
  `object_id` varchar(3) DEFAULT NULL,
  `object_repr` varchar(83) DEFAULT NULL,
  `change_message` text,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-02-03','1','Fashion & Accessories','[{\"added\": {}}]',8,1,1),(2,'2022-02-03','2','Clothing & Footwear','[{\"added\": {}}]',8,1,1),(3,'2022-02-03','3','Clothing','[{\"added\": {}}]',8,1,1),(4,'2022-02-03','1','Product object (1)','[{\"added\": {}}]',9,1,1),(5,'2022-02-03','3','Clothing','',8,1,3),(6,'2022-02-03','2','Clothing & Footwear','',8,1,3),(7,'2022-02-03','1','Fashion & Accessories','',8,1,3),(8,'2022-02-03','1','مأكولات ومشروبات','[{\"added\": {}}]',11,1,1),(9,'2022-02-03','1','المؤن','[{\"added\": {}}]',8,1,1),(10,'2022-02-03','1','البهارات والتوابل','[{\"added\": {}}]',7,1,1),(11,'2022-02-03','1','الملح','[{\"added\": {}}]',10,1,1),(12,'2022-02-03','1','مأكولات ومشروبات','[{\"added\": {\"name\": \"main category\", \"object\": \"u0627u0644u062du0644u0648u064au0627u062a\"}}]',11,1,2),(13,'2022-02-03','2','الحلويات','[{\"added\": {\"name\": \"sub category\", \"object\": \"u0627u0644u0643u0648u0643u064au0632 u0648u0627u0644u0628u0633u0643u0648u064au062a\"}}]',8,1,2),(14,'2022-02-03','2','الحلويات','[{\"added\": {\"name\": \"sub category\", \"object\": \"u0627u0644u0634u0648u0643u0648u0644u0627u062au0629\"}}]',8,1,2),(15,'2022-02-03','3','الشوكولاتة','[{\"added\": {\"name\": \"mini category\", \"object\": \"u062du0644u0648u0649 u0627u0644u0634u0648u0643u0648u0644u0627u062au0629\"}}, {\"added\": {\"name\": \"mini category\", \"object\": \"u0623u0644u0648u0627u062d u0627u0644u0634u0648u0643u0648u0644u0627u062au0629\"}}]',7,1,2),(16,'2022-02-03','2','HELLO','[{\"added\": {}}]',9,1,1),(17,'2022-02-03','2','HELLO','',9,1,3),(18,'2022-02-04','2','الألبان والألبان','[{\"added\": {}}]',11,1,1),(19,'2022-02-04','2','الألبان','[{\"changed\": {\"fields\": [\"Name\"]}}]',11,1,2),(20,'2022-02-04','3','الملابس والجمال','[{\"added\": {}}]',11,1,1),(21,'2022-02-04','4','أغذية الحيوانات الأليفة','[{\"added\": {}}]',11,1,1),(22,'2022-02-04','5','مأكولات بحرية طازجة','[{\"added\": {}}]',11,1,1),(23,'2022-02-04','1','helll smsmsmhhhhhh','[{\"added\": {}}]',9,1,1),(24,'2022-02-04','1','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Product Image\"]}}]',9,1,2),(25,'2022-02-04','1','helll smsmsmhhhhhh','[{\"added\": {}}]',12,1,1),(26,'2022-02-04','2','helll smsmsmhhhhhh','[{\"added\": {}}]',12,1,1),(27,'2022-02-04','3','helll smsmsmhhhhhh','[{\"added\": {}}]',12,1,1),(28,'2022-02-04','1','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Price\", \"Discount\", \"Dimensions\", \"WEIGHT_KG\", \"WEIGHT_OZ\", \"Piece WEIGHT_GM\", \"Piece WEIGHT_OZ\", \"Pieces/set\", \"Available\", \"SKU\", \"Sale\", \"Hot\"]}}]',9,1,2),(29,'2022-02-04','1','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Tags\"]}}]',9,1,2),(30,'2022-02-04','1','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Full Description\"]}}]',9,1,2),(31,'2022-02-05','1','selem','[]',4,1,2),(32,'2022-02-05','2','selem profile.','[{\"added\": {}}]',13,1,1),(33,'2022-02-05','1','code21','[{\"added\": {}}]',16,1,1),(34,'2022-02-05','2','helll smsmsmhhhhhh','[{\"added\": {}}]',9,1,1),(35,'2022-02-05','5','Payment ID:5- order:4','',17,1,3),(36,'2022-02-06','2','selem profile.','[{\"changed\": {\"fields\": [\"Blance\"]}}]',13,1,2),(37,'2022-02-06','2','selem profile.','[{\"changed\": {\"fields\": [\"Blance\"]}}]',13,1,2),(38,'2022-02-06','2','selem profile.','[{\"changed\": {\"fields\": [\"Blance\"]}}]',13,1,2),(39,'2022-02-07','3','منتجات الألبان والبيض','[{\"added\": {}}]',8,1,1),(40,'2022-02-07','3','منتجات الألبان والبيض','[{\"changed\": {\"fields\": [\"Super category\"]}}]',8,1,2),(41,'2022-02-07','6','مستلزمات المكتب','[{\"added\": {}}]',11,1,1),(42,'2022-02-07','7','الكترونيات','[{\"added\": {}}]',11,1,1),(43,'2022-02-07','8','المنزل والحديقة والأثاث','[{\"added\": {}}]',11,1,1),(44,'2022-02-07','9','الصحة والعناية الشخصية','[{\"added\": {}}]',11,1,1),(45,'2022-02-07','10','أزياء وأكسسوارات','[{\"added\": {}}]',11,1,1),(46,'2022-02-07','11','الجمال والعطور','[{\"added\": {}}]',11,1,1),(47,'2022-02-07','12','إنشاءات وعقارات','[{\"added\": {}}]',11,1,1),(48,'2022-02-07','1','مأكولات ومشروبات','[]',11,1,2),(49,'2022-02-07','13','سيارات','[{\"added\": {}}]',11,1,1),(50,'2022-02-07','5','مأكولات بحرية طازجة','[]',11,1,2),(51,'2022-02-07','4','hhhhhhhhh','[{\"changed\": {\"fields\": [\"Name\"]}}]',11,1,2),(52,'2022-02-07','11','الجمال والعطور','[]',11,1,2),(53,'2022-02-07','1','مأكولات ومشروبات','[]',11,1,2),(54,'2022-02-07','10','أزياء وأكسسوارات','[]',11,1,2),(55,'2022-02-07','10','أزياء وأكسسوارات','[]',11,1,2),(56,'2022-02-07','14','hhhhhhhhh','[{\"added\": {}}]',11,1,1),(57,'2022-02-07','12','إنشاءات وعقارات','[]',11,1,2),(58,'2022-02-07','15','إنشاءات وعقارات','[{\"added\": {}}]',11,1,1),(59,'2022-02-07','9','الصحة والعناية الشخصية','[]',11,1,2),(60,'2022-02-07','2','منتج واحد','[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1,2),(61,'2022-02-07','2','منتج واحد','[{\"changed\": {\"fields\": [\"Slugfiy\"]}}]',9,1,2),(62,'2022-02-07','2','منتج واحد','[]',9,1,2),(63,'2022-02-07','2','منتج واحد','[{\"changed\": {\"fields\": [\"Slugfiy\"]}}]',9,1,2),(64,'2022-02-07','2','منتج واحد','[]',9,1,2),(65,'2022-02-07','10','أزياء وأكسسوارات','[{\"changed\": {\"fields\": [\"Slugfiy\"]}}]',11,1,2),(66,'2022-02-07','10','أزياء وأكسسوارات','[]',11,1,2),(67,'2022-02-07','16','بقبقبق','[{\"added\": {}}]',11,1,1),(68,'2022-02-07','16','بقبقبق','[]',11,1,2),(69,'2022-02-07','16','بقبقبق','[]',11,1,2),(70,'2022-02-07','17','بقبقبق','[{\"added\": {}}]',11,1,1),(71,'2022-02-07','17','بقبقبق','[{\"changed\": {\"fields\": [\"Slugfiy\"]}}]',11,1,2),(72,'2022-02-07','18','بقبقبق','[{\"added\": {}}]',11,1,1),(73,'2022-02-07','19','بقبقبق','[{\"added\": {}}]',11,1,1),(74,'2022-02-07','19','بقبقبق','[]',11,1,2),(75,'2022-02-07','19','بقبقبق','[]',11,1,2),(76,'2022-02-07','19','بقبقبق','[{\"changed\": {\"fields\": [\"Slugfiy\"]}}]',11,1,2),(77,'2022-02-07','19','بقبقبق','[{\"changed\": {\"fields\": [\"Slugfiy\"]}}]',11,1,2),(78,'2022-02-07','2','منتج واحد','[{\"changed\": {\"fields\": [\"Slugfiy\"]}}]',9,1,2),(79,'2022-02-07','1','منتج واحد','[{\"changed\": {\"fields\": [\"Name\", \"Slugfiy\"]}}]',9,1,2),(80,'2022-02-07','3','منتجات الألبان والبيض','[]',8,1,2),(81,'2022-02-07','4','منتجات الألبان والبيض','[{\"added\": {}}]',8,1,1),(82,'2022-02-07','3','الشوكولاتة','[]',7,1,2),(83,'2022-02-07','3','الشوكولاتة','[]',7,1,2),(84,'2022-02-07','4','الشوكولاتة','[{\"added\": {}}]',7,1,1),(85,'2022-02-07','3','ألواح الشوكولاتة','[]',10,1,2),(86,'2022-02-07','3','ألواح الشوكولاتة','[{\"changed\": {\"fields\": [\"Slugfiy\"]}}]',10,1,2),(87,'2022-02-07','3','ألواح الشوكولاتة','[{\"changed\": {\"fields\": [\"Slugfiy\"]}}]',10,1,2),(88,'2022-02-07','4','ألواح الشوكولاتة','[{\"added\": {}}]',10,1,1),(89,'2022-02-07','20','بقبقبق','[{\"added\": {}}]',11,1,1),(90,'2022-02-07','21','ت','[{\"added\": {}}]',11,1,1),(91,'2022-02-07','22','ت','[{\"added\": {}}]',11,1,1),(92,'2022-02-08','2','helll-smsmsmhhhhhh-gge7p','[{\"changed\": {\"fields\": [\"Name\", \"Slugfiy\"]}}]',9,1,2),(93,'2022-02-08','2','helll-smsmsmhhhhhh-gge7p','[{\"changed\": {\"fields\": [\"Product\"]}}]',9,1,2),(94,'2022-02-08','1','منتج واحد','[{\"changed\": {\"fields\": [\"Product\"]}}]',9,1,2),(95,'2022-02-08','2','helll-smsmsmhhhhhh-gge7p','[{\"changed\": {\"fields\": [\"Product Vendor\"]}}]',9,1,2),(96,'2022-02-08','2','helll-smsmsmhhhhhh-gge7p','',9,1,3),(97,'2022-02-08','1','منتج واحد','',9,1,3),(98,'2022-02-08','1','HELLO','[{\"added\": {}}]',9,1,1),(99,'2022-02-08','2','helll smsmsmhhhhhh','[{\"added\": {}}]',9,1,1),(100,'2022-02-08','1','HELLO','[]',9,1,2),(101,'2022-02-08','2','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Price\"]}}]',9,1,2),(102,'2022-02-08','22','ت','',11,1,3),(103,'2022-02-08','21','ت','',11,1,3),(104,'2022-02-08','20','بقبقبق','',11,1,3),(105,'2022-02-08','19','بقبقبق','',11,1,3),(106,'2022-02-08','18','بقبقبق','',11,1,3),(107,'2022-02-08','17','بقبقبق','',11,1,3),(108,'2022-02-08','16','بقبقبق','',11,1,3),(109,'2022-02-08','15','إنشاءات وعقارات','',11,1,3),(110,'2022-02-08','14','hhhhhhhhh','',11,1,3),(111,'2022-02-08','13','سيارات','',11,1,3),(112,'2022-02-08','4','منتجات الألبان والبيض','',8,1,3),(113,'2022-02-08','3','منتجات الألبان والبيض','',8,1,3),(114,'2022-02-08','2','الحلويات','',8,1,3),(115,'2022-02-08','1','المؤن','',8,1,3),(116,'2022-02-08','12','إنشاءات وعقارات','',11,1,3),(117,'2022-02-08','11','الجمال والعطور','',11,1,3),(118,'2022-02-08','10','أزياء وأكسسوارات','',11,1,3),(119,'2022-02-08','9','الصحة والعناية الشخصية','',11,1,3),(120,'2022-02-08','8','المنزل والحديقة والأثاث','',11,1,3),(121,'2022-02-08','7','الكترونيات','',11,1,3),(122,'2022-02-08','6','مستلزمات المكتب','',11,1,3),(123,'2022-02-08','5','مأكولات بحرية طازجة','',11,1,3),(124,'2022-02-08','4','hhhhhhhhh','',11,1,3),(125,'2022-02-08','3','الملابس والجمال','',11,1,3),(126,'2022-02-08','2','الألبان','',11,1,3),(127,'2022-02-08','1','مأكولات ومشروبات','',11,1,3),(128,'2022-02-08','23','Food & Beverage','[{\"added\": {}}]',11,1,1),(129,'2022-02-08','5','Pantry','[{\"added\": {}}]',8,1,1),(130,'2022-02-08','6','Beverages','[{\"added\": {}}]',8,1,1),(131,'2022-02-08','7','Confectionery','[{\"added\": {}}]',8,1,1),(132,'2022-02-08','5','Spices & Seasonings','[{\"added\": {}}]',7,1,1),(133,'2022-02-08','6','Snacks','[{\"added\": {}}]',7,1,1),(134,'2022-02-08','5','Chips','[{\"added\": {}}]',10,1,1),(135,'2022-02-08','6','Crackers','[{\"added\": {}}]',10,1,1),(136,'2022-02-08','3','Veggie Bites Khakhra 200 gr','[{\"added\": {}}]',9,1,1),(137,'2022-02-08','4','Veggie Bites Khakhra 200 gr','[{\"added\": {}}]',12,1,1),(138,'2022-02-08','24','Office & Stationery','[{\"added\": {}}]',11,1,1),(139,'2022-02-08','25','Consumer Electronics','[{\"added\": {}}]',11,1,1),(140,'2022-02-08','26','Home, Garden & Furniture','[{\"added\": {}}]',11,1,1),(141,'2022-02-08','27','Health & Personal Care','[{\"added\": {}}]',11,1,1),(142,'2022-02-08','28','Fashion & Accessories','[{\"added\": {}}]',11,1,1),(143,'2022-02-08','29','Beauty & Fragrances','[{\"added\": {}}]',11,1,1),(144,'2022-02-08','30','Construction & Hardware','[{\"added\": {}}]',11,1,1),(145,'2022-02-08','31','Food & Beverage','[{\"added\": {}}]',11,1,1),(146,'2022-02-08','31','Automotive','[{\"changed\": {\"fields\": [\"Name\", \"Slugfiy\"]}}]',11,1,2),(147,'2022-02-08','32','Sports & Fitness','[{\"added\": {}}]',11,1,1),(148,'2022-02-08','33','Toys','[{\"added\": {}}]',11,1,1),(149,'2022-02-08','34','Baby Centre','[{\"added\": {}}]',11,1,1),(150,'2022-02-08','35','Pet & Animal Care','[{\"added\": {}}]',11,1,1),(151,'2022-02-08','36','Machinery & Equipment','[{\"added\": {}}]',11,1,1),(152,'2022-02-09','4','Sunwhite Cracker Chips Black Pepper 90 gr','[{\"added\": {}}]',9,1,1),(153,'2022-02-09','5','Popular Popcorn Creamy Caramel 27 gr','[{\"added\": {}}]',9,1,1),(154,'2022-02-09','6','Amica Alfredo\'s Black Truffle Potato Chips','[{\"added\": {}}]',9,1,1),(155,'2022-02-09','7','Wheafree Gluten Free Namkeen Mixture 400 gr','[{\"added\": {}}]',9,1,1),(156,'2022-02-09','6','Amica Alfredo\'s Black Truffle Potato Chips','[{\"changed\": {\"fields\": [\"Product Image\"]}}]',9,1,2),(157,'2022-02-09','8','Wheafree Gluten Free Cake Rusk Non Veg','[{\"added\": {}}]',9,1,1),(158,'2022-02-09','8','Wheafree Gluten Free Cake Rusk Non Veg','[{\"changed\": {\"fields\": [\"Discount\"]}}]',9,1,2),(159,'2022-02-16','3','Veggie Bites Khakhra 200 gr','[{\"changed\": {\"fields\": [\"Product Image Sale\"]}}]',9,1,2),(160,'2022-02-16','4','Sunwhite Cracker Chips Black Pepper 90 gr','[{\"changed\": {\"fields\": [\"Product Image Sale\"]}}]',9,1,2),(161,'2022-02-16','23','Food & Beverage','[{\"changed\": {\"fields\": [\"Category Image\"]}}]',11,1,2),(162,'2022-02-16','23','Food & Beverage','[{\"changed\": {\"fields\": [\"Category Image\"]}}]',11,1,2),(163,'2022-02-16','8','Wheafree Gluten Free Cake Rusk Non Veg','[{\"changed\": {\"fields\": [\"Super Category\"]}}]',9,1,2),(164,'2022-02-16','8','Wheafree Gluten Free Cake Rusk Non Veg','[{\"changed\": {\"fields\": [\"Super Category\"]}}]',9,1,2),(165,'2022-02-16','8','Wheafree Gluten Free Cake Rusk Non Veg','[{\"changed\": {\"fields\": [\"Product Image Sale\"]}}]',9,1,2),(166,'2022-02-16','8','Wheafree Gluten Free Cake Rusk Non Veg','[{\"changed\": {\"fields\": [\"Super Category\"]}}]',9,1,2),(167,'2022-02-16','8','Wheafree Gluten Free Cake Rusk Non Veg','[{\"changed\": {\"fields\": [\"Main Category\"]}}]',9,1,2),(168,'2022-02-16','7','Wheafree Gluten Free Namkeen Mixture 400 gr','[{\"changed\": {\"fields\": [\"Mini Category\"]}}]',9,1,2),(169,'2022-02-16','6','Amica Alfredo\'s Black Truffle Potato Chips','[{\"changed\": {\"fields\": [\"Sub Category\"]}}]',9,1,2),(170,'2022-02-16','7','Wheafree Gluten Free Namkeen Mixture 400 gr','[{\"changed\": {\"fields\": [\"Mini Category\"]}}]',9,1,2),(171,'2022-02-16','8','Wheafree Gluten Free Cake Rusk Non Veg','[{\"changed\": {\"fields\": [\"Sub Category\"]}}]',9,1,2),(172,'2022-02-16','7','Wheafree Gluten Free Namkeen Mixture 400 gr','[{\"changed\": {\"fields\": [\"Product Image Sale\"]}}]',9,1,2),(173,'2022-02-16','6','Amica Alfredo\'s Black Truffle Potato Chips','[{\"changed\": {\"fields\": [\"Product Image Sale\"]}}]',9,1,2),(174,'2022-02-16','5','Popular Popcorn Creamy Caramel 27 gr','[{\"changed\": {\"fields\": [\"Product Image Sale\"]}}]',9,1,2),(175,'2022-02-16','8','Wheafree Gluten Free Cake Rusk Non Veg','[{\"changed\": {\"fields\": [\"Mini Category\"]}}]',9,1,2),(176,'2022-02-16','8','Wheafree Gluten Free Cake Rusk Non Veg','[{\"changed\": {\"fields\": [\"Product Image Sale\"]}}]',9,1,2),(177,'2022-02-16','7','Wheafree Gluten Free Namkeen Mixture 400 gr','[{\"changed\": {\"fields\": [\"Product Image Sale\"]}}]',9,1,2),(178,'2022-02-16','6','Amica Alfredo\'s Black Truffle Potato Chips','[{\"changed\": {\"fields\": [\"Product Image Sale\"]}}]',9,1,2),(179,'2022-02-16','5','Popular Popcorn Creamy Caramel 27 gr','[{\"changed\": {\"fields\": [\"Product Image Sale\"]}}]',9,1,2),(180,'2022-02-16','4','Sunwhite Cracker Chips Black Pepper 90 gr','[{\"changed\": {\"fields\": [\"Product Image Sale\"]}}]',9,1,2),(181,'2022-02-17','1','Don’t miss amazing grocery deals','[{\"added\": {}}]',19,1,1),(182,'2022-02-17','2','Fresh Vegetables Big discount','[{\"added\": {}}]',19,1,1),(183,'2022-02-17','1','Everyday Fresh & Clean with Our Products','[{\"added\": {}}]',20,1,1),(184,'2022-02-17','1','Everyday Fresh & Clean with Our Products','[{\"changed\": {\"fields\": [\"Image position\"]}}]',20,1,2),(185,'2022-02-17','2','The best Organic Products Online','[{\"added\": {}}]',20,1,1),(186,'2022-02-17','2','The best Organic Products Online','',20,1,3),(187,'2022-02-17','3','The best Organic Products Online','[{\"added\": {}}]',20,1,1),(188,'2022-02-17','7','Confectionery','',8,1,3),(189,'2022-02-17','6','Beverages','',8,1,3),(190,'2022-02-17','5','Pantry','',8,1,3),(191,'2022-02-17','8','Custard apple','[{\"added\": {}}]',8,1,1),(192,'2022-02-17','9','Coffe & Tea','[{\"added\": {}}]',8,1,1),(193,'2022-02-17','10','Cake & Milk','[{\"added\": {}}]',8,1,1),(194,'2022-02-17','11','Oganic Kiwi','[{\"added\": {}}]',8,1,1),(195,'2022-02-17','12','Peach','[{\"added\": {}}]',8,1,1),(196,'2022-02-17','13','Red Apple','[{\"added\": {}}]',8,1,1),(197,'2022-02-17','14','Snack','[{\"added\": {}}]',8,1,1),(198,'2022-02-17','15','Vegetables','[{\"added\": {}}]',8,1,1),(199,'2022-02-17','16','Strawberry','[{\"added\": {}}]',8,1,1),(200,'2022-02-17','1','Everyday Fresh & Clean with Our Products','[{\"added\": {}}]',21,1,1),(201,'2022-02-17','2','Make your Breakfast Healthy and Easy','[{\"added\": {}}]',21,1,1),(202,'2022-02-17','3','The best Organic Products Online','[{\"added\": {}}]',21,1,1),(203,'2022-02-17','9','Seeds of Change Organic Quinoa, Brown, & Red Rice','[{\"added\": {}}]',9,1,1),(204,'2022-02-17','9','Seeds of Change Organic Quinoa, Brown, & Red Rice','[{\"changed\": {\"fields\": [\"Product Image Sale\"]}}]',9,1,2),(205,'2022-02-17','10','Seeds of Change Organic Quinoa, Brown, & Red Rice','[{\"added\": {}}]',9,1,1),(206,'2022-02-17','11','Angie’s Boomchickapop Sweet & Salty Kettle Corn','[{\"added\": {}}]',9,1,1),(207,'2022-02-17','12','Foster Farms Takeout Crispy Classic Buffalo Wings','[{\"added\": {}}]',9,1,1),(208,'2022-02-17','13','Blue Diamond Almonds Lightly Salted Vegetables','[{\"added\": {}}]',9,1,1),(209,'2022-02-17','14','Chobani Complete Vanilla Greek Yogurt','[{\"added\": {}}]',9,1,1),(210,'2022-02-17','14','Chobani Complete Vanilla Greek Yogurt','[{\"changed\": {\"fields\": [\"Discount\"]}}]',9,1,2),(211,'2022-02-17','1','Everyday Fresh with Our Products','[{\"added\": {}}]',22,1,1),(212,'2022-02-17','2','100% guaranteed all Fresh items','[{\"added\": {}}]',22,1,1),(213,'2022-02-17','3','Special grocery sale off this month','[{\"added\": {}}]',22,1,1),(214,'2022-02-17','4','Enjoy 15% OFF for all vegetable and fruit','[{\"added\": {}}]',22,1,1),(215,'2022-02-17','4','Enjoy 15% OFF for all vegetable','[{\"changed\": {\"fields\": [\"Title\"]}}]',22,1,2),(216,'2022-02-17','1','Bring nature into your home','[{\"added\": {}}]',23,1,1),(217,'2022-02-17','11','Angie’s Boomchickapop Sweet & Salty Kettle Corn','[{\"changed\": {\"fields\": [\"Product Vendor\"]}}]',9,1,2),(218,'2022-02-18','15','Canada Dry Ginger Ale – 2 L Bottle - 200ml - 400g','[{\"added\": {}}]',9,1,1),(219,'2022-02-18','16','Encore Seafoods Stuffed Alaskan Salmon','[{\"added\": {}}]',9,1,1),(220,'2022-02-18','17','Gorton’s Beer Battered Fish Fillets with soft paper','[{\"added\": {}}]',9,1,1),(221,'2022-02-18','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"added\": {}}]',9,1,1),(222,'2022-02-18','1','Seeds of Change Organic Quinoa, Brown, & Red Rice','[{\"added\": {}}]',24,1,1),(223,'2022-02-18','2','Perdue Simply Smart Organics Gluten Free','[{\"added\": {}}]',24,1,1),(224,'2022-02-18','3','Signature Wood-Fired Mushroom and Caramelized','[{\"added\": {}}]',24,1,1),(225,'2022-02-18','4','Simply Lemonade with Raspberry Juice','[{\"added\": {}}]',24,1,1),(226,'2022-02-18','4','Simply Lemonade with Raspberry Juice','[{\"changed\": {\"fields\": [\"Price\", \"Discount\"]}}]',24,1,2),(227,'2022-02-18','3','Signature Wood-Fired Mushroom and Caramelized','[{\"changed\": {\"fields\": [\"Price\", \"Discount\"]}}]',24,1,2),(228,'2022-02-18','2','Perdue Simply Smart Organics Gluten Free','[{\"changed\": {\"fields\": [\"Price\", \"Discount\"]}}]',24,1,2),(229,'2022-02-18','1','Seeds of Change Organic Quinoa, Brown, & Red Rice','[{\"changed\": {\"fields\": [\"Price\", \"Discount\"]}}]',24,1,2),(230,'2022-02-18','2','selem','[{\"changed\": {\"fields\": [\"Image\"]}}]',13,1,2),(231,'2022-02-18','1','test3','[{\"changed\": {\"fields\": [\"Image\"]}}]',13,1,2),(232,'2022-02-18','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Available\"]}}]',9,1,2),(233,'2022-02-18','17','Gorton’s Beer Battered Fish Fillets with soft paper','[{\"changed\": {\"fields\": [\"Available\"]}}]',9,1,2),(234,'2022-02-18','30','30','[{\"changed\": {\"fields\": [\"Is finished\"]}}]',15,1,2),(235,'2022-02-18','30','30','[{\"changed\": {\"fields\": [\"Is finished\"]}}]',15,1,2),(236,'2022-02-18','31','31','[{\"changed\": {\"fields\": [\"Is finished\"]}}]',15,1,2),(237,'2022-02-18','31','31','[{\"changed\": {\"fields\": [\"Is finished\"]}}]',15,1,2),(238,'2022-02-18','31','31','[{\"changed\": {\"fields\": [\"Is finished\"]}}]',15,1,2),(239,'2022-02-18','31','31','[{\"changed\": {\"fields\": [\"Is finished\"]}}]',15,1,2),(240,'2022-02-18','38','38','[{\"changed\": {\"fields\": [\"Amount\", \"Is finished\"]}}]',15,1,2),(241,'2022-02-18','39','39','[{\"changed\": {\"fields\": [\"Amount\", \"Is finished\"]}}]',15,1,2),(242,'2022-02-18','39','39','[{\"changed\": {\"fields\": [\"Is finished\"]}}]',15,1,2),(243,'2022-02-18','41','41','[{\"changed\": {\"fields\": [\"Amount\", \"Is finished\", \"Status\"]}}]',15,1,2),(244,'2022-02-19','41','41','[{\"changed\": {\"fields\": [\"Coupon\"]}}]',15,1,2),(245,'2022-02-19','41','41','[{\"changed\": {\"fields\": [\"Is finished\"]}}]',15,1,2),(246,'2022-02-19','41','41','[{\"changed\": {\"fields\": [\"Is finished\"]}}]',15,1,2),(247,'2022-02-19','41','41','[{\"changed\": {\"fields\": [\"Is finished\"]}}]',15,1,2),(248,'2022-02-19','41','41','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(249,'2022-02-19','41','41','[{\"changed\": {\"fields\": [\"Is finished\", \"Status\"]}}]',15,1,2),(250,'2022-02-19','41','41','[{\"changed\": {\"fields\": [\"Is finished\", \"Status\"]}}]',15,1,2),(251,'2022-02-19','41','41','[{\"changed\": {\"fields\": [\"Is finished\"]}}]',15,1,2),(252,'2022-02-19','41','41','[{\"changed\": {\"fields\": [\"Is finished\"]}}]',15,1,2),(253,'2022-02-19','1','selem','[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,1,2),(254,'2022-02-19','2','selem','[{\"changed\": {\"fields\": [\"Mobile number\", \"Address\", \"City\", \"Post code\", \"Country\", \"State\"]}}]',13,1,2),(255,'2022-02-19','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"SET WEIGHT_KG\"]}}]',9,1,2),(256,'2022-02-20','2','selem','[]',13,1,2),(257,'2022-02-20','2','selem','[]',13,1,2),(258,'2022-02-20','2','selem','[]',13,1,2),(259,'2022-02-20','2','selem','[]',13,1,2),(260,'2022-02-20','2','selem','[]',13,1,2),(261,'2022-02-20','2','selem','[]',13,1,2),(262,'2022-02-20','36','Machinery & Equipment','[]',11,1,2),(263,'2022-02-20','36','Machinery & Equipment','[]',11,1,2),(264,'2022-02-20','36','Machinery & Equipment','[]',11,1,2),(265,'2022-02-20','16','Strawberry','[]',8,1,2),(266,'2022-02-20','2','selem','[]',13,1,2),(267,'2022-02-20','2','selem','[{\"changed\": {\"fields\": [\"Slugfiy\"]}}]',13,1,2),(268,'2022-02-20','2','selem','[]',13,1,2),(269,'2022-02-20','2','selem','[]',13,1,2),(270,'2022-02-20','2','selem','[{\"changed\": {\"fields\": [\"Status\"]}}]',13,1,2),(271,'2022-02-22','1','1','[{\"added\": {}}]',25,1,1),(272,'2022-02-22','1','Save 17% on Oganic Juice','[{\"added\": {}}]',26,1,1),(273,'2022-02-26','1','http://127.0.0.1:8000/product-details/wheafree-gluten-free-namkeen-mixture-400-gr','[{\"added\": {}}]',27,1,1),(274,'2022-02-26','2','30','[{\"added\": {}}]',27,1,1),(275,'2022-02-26','3','50','[{\"added\": {}}]',27,1,1),(276,'2022-02-27','2','selem','[{\"changed\": {\"fields\": [\"Status\"]}}]',13,1,2),(277,'2022-02-27','2','selem','[{\"changed\": {\"fields\": [\"Status\"]}}]',13,1,2),(278,'2022-02-28','9','11111111','',12,1,3),(279,'2022-02-28','8','11111111','',12,1,3),(280,'2022-02-28','7','11111111','',12,1,3),(281,'2022-02-28','6','11111111','',12,1,3),(282,'2022-02-28','5','yyyyyyyyyy','',12,1,3),(283,'2022-02-28','60','60','',15,1,3),(284,'2022-02-28','59','59','',15,1,3),(285,'2022-02-28','57','57','',15,1,3),(286,'2022-02-28','55','55','',15,1,3),(287,'2022-02-28','54','54','',15,1,3),(288,'2022-02-28','38','38','',15,1,3),(289,'2022-02-28','23','23','',15,1,3),(290,'2022-02-28','21','21','',15,1,3),(291,'2022-02-28','20','20','',15,1,3),(292,'2022-02-28','19','19','',15,1,3),(293,'2022-02-28','18','18','',15,1,3),(294,'2022-02-28','17','17','',15,1,3),(295,'2022-02-28','16','16','',15,1,3),(296,'2022-02-28','15','15','',15,1,3),(297,'2022-02-28','14','14','',15,1,3),(298,'2022-02-28','13','13','',15,1,3),(299,'2022-02-28','12','12','',15,1,3),(300,'2022-02-28','11','11','',15,1,3),(301,'2022-02-28','10','10','',15,1,3),(302,'2022-02-28','9','9','',15,1,3),(303,'2022-02-28','8','8','',15,1,3),(304,'2022-02-28','7','7','',15,1,3),(305,'2022-02-28','6','6','',15,1,3),(306,'2022-02-28','5','5','',15,1,3),(307,'2022-02-28','4','4','',15,1,3),(308,'2022-02-28','23','1111111','[{\"changed\": {\"fields\": [\"Name\", \"Full Description\"]}}]',9,1,2),(309,'2022-02-28','27','11111111','',9,1,3),(310,'2022-02-28','26','yyyyyyyyyy','',9,1,3),(311,'2022-02-28','25','rrrrrrrrrrrrrrrrrrrrrrrrrr','',9,1,3),(312,'2022-02-28','24','tttt','',9,1,3),(313,'2022-02-28','23','1111111','',9,1,3),(314,'2022-02-28','22','helll smsmsm','',9,1,3),(315,'2022-02-28','21','helll smsmsmfref','',9,1,3),(316,'2022-02-28','20','helll smsmsmhhhhhh','',9,1,3),(317,'2022-02-28','19','freeeee','',9,1,3),(318,'2022-02-28','28','helll smsmsmhhhhhh','',9,1,3),(319,'2022-02-28','29','helll smsmsmhhhhhh','',9,1,3),(320,'2022-02-28','30','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Product Image\", \"Full Description\"]}}]',9,1,2),(321,'2022-02-28','21','helll smsmsmhhhhhh','',12,1,3),(322,'2022-02-28','20','helll smsmsmhhhhhh','',12,1,3),(323,'2022-02-28','19','helll smsmsmhhhhhh','',12,1,3),(324,'2022-02-28','18','helll smsmsmhhhhhh','',12,1,3),(325,'2022-02-28','31','helll smsmsmhhhhhh','',9,1,3),(326,'2022-02-28','30','helll smsmsmhhhhhh','',9,1,3),(327,'2022-02-28','32','helll smsmsmhhhhhh','',9,1,3),(328,'2022-02-28','33','helll smsmsmhhhhhh','',9,1,3),(329,'2022-02-28','35','','',9,1,3),(330,'2022-02-28','34','helll smsmsmhhhhhh','',9,1,3),(331,'2022-02-28','36','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Full Description\", \"Discount\", \"Sale\"]}}]',9,1,2),(332,'2022-02-28','36','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Discount\"]}}]',9,1,2),(333,'2022-02-28','36','helll smsmsmhhhhhh','',9,1,3),(334,'2022-02-28','7','Fresh Fruits','[{\"added\": {}}]',7,1,1),(335,'2022-02-28','7','Tropical Fruits','[{\"added\": {}}]',10,1,1),(336,'2022-02-28','8','Fresh Fruits','[{\"added\": {}}]',7,1,1),(337,'2022-02-28','8','test','[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1,2),(338,'2022-02-28','8','red apples','[{\"added\": {}}]',10,1,1),(339,'2022-02-28','8','Red Apples','[{\"changed\": {\"fields\": [\"Name\"]}}]',10,1,2),(340,'2022-02-28','7','Fresh Fruits','[{\"changed\": {\"fields\": [\"Main category\"]}}]',7,1,2),(341,'2022-02-28','8','test','[{\"changed\": {\"fields\": [\"Main category\"]}}]',7,1,2),(342,'2022-02-28','9','apple tea','[{\"added\": {}}]',7,1,1),(343,'2022-02-28','9','Herbal Tea','[{\"added\": {}}]',10,1,1),(344,'2022-02-28','16','Strawberry','[{\"changed\": {\"fields\": [\"Super category\"]}}]',8,1,2),(345,'2022-02-28','9','apple tea','[{\"changed\": {\"fields\": [\"Main category\"]}}]',7,1,2),(346,'2022-02-28','10','test2','[{\"added\": {}}]',10,1,1),(347,'2022-02-28','10','testsub','[{\"added\": {}}]',7,1,1),(348,'2022-02-28','11','test3sub','[{\"added\": {}}]',10,1,1),(349,'2022-02-28','37','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Product Image\", \"Full Description\"]}}]',9,1,2),(350,'2022-02-28','37','helll smsmsmhhhhhh','',9,1,3),(351,'2022-02-28','38','helll smsmsmhhhhhh','',9,1,3),(352,'2022-02-28','39','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Mini Category\", \"Full Description\"]}}]',9,1,2),(353,'2022-02-28','39','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Mini Category\"]}}]',9,1,2),(354,'2022-02-28','39','helll smsmsmhhhhhh','',9,1,3),(355,'2022-03-01','40','helll smsmsmhhhhhh','',9,1,3),(356,'2022-03-01','41','helll smsmsmhhhhhh','',9,1,3),(357,'2022-03-01','42','helll smsmsmhhhhhh','',9,1,3),(358,'2022-03-01','43','helll smsmsmhhhhhh','',9,1,3),(359,'2022-03-01','44','helll smsmsmhhhhhh','',9,1,3),(360,'2022-03-01','45','helll smsmsmhhhhhh','',9,1,3),(361,'2022-03-01','46','helll smsmsmhhhhhh','',9,1,3),(362,'2022-03-01','47','helll smsmsmhhhhhh','',9,1,3),(363,'2022-03-01','48','helll smsmsmhhhhhh','',9,1,3),(364,'2022-03-01','49','helll smsmsmhhhhhh','',9,1,3),(365,'2022-03-01','50','helll smsmsmhhhhhh','',9,1,3),(366,'2022-03-01','51','helll smsmsmhhhhhh','',9,1,3),(367,'2022-03-01','52','helll smsmsmhhhhhh','',9,1,3),(368,'2022-03-01','53','helll smsmsmhhhhhh','',9,1,3),(369,'2022-03-01','54','helll smsmsmhhhhhh','',9,1,3),(370,'2022-03-01','55','helll smsmsmhhhhhh','',9,1,3),(371,'2022-03-01','56','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Full Description\", \"Slugfiy\"]}}]',9,1,2),(372,'2022-03-01','56','helll smsmsmhhhhhh','',9,1,3),(373,'2022-03-01','57','11','',9,1,3),(374,'2022-03-01','58','helll smsmsmhhhhhh','',9,1,3),(375,'2022-03-01','60','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Full Description\", \"Discount\"]}}]',9,1,2),(376,'2022-03-01','60','helll smsmsmhhhhhh','',9,1,3),(377,'2022-03-01','59','helll smsmsmhhhhhh','',9,1,3),(378,'2022-03-01','61','helll smsmsmhhhhhh','',9,1,3),(379,'2022-03-01','62','helll smsmsmhhhhhh','',9,1,3),(380,'2022-03-01','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Promotional\", \"PRDISactive\"]}}]',9,1,2),(381,'2022-03-01','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"PRDISactive\"]}}]',9,1,2),(382,'2022-03-01','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"PRDISactive\"]}}]',9,1,2),(383,'2022-03-01','63','helll smsmsmhhhhhh','',9,1,3),(384,'2022-03-01','64','helll smsmsmhhhhhh','',9,1,3),(385,'2022-03-01','65','helll smsmsmhhhhhh','',9,1,3),(386,'2022-03-01','66','helll smsmsmhhhhhh','',9,1,3),(387,'2022-03-01','67','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Full Description\", \"PRDISactive\"]}}]',9,1,2),(388,'2022-03-01','67','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Product Deleted\"]}}]',9,1,2),(389,'2022-03-01','67','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Product Deleted\"]}}]',9,1,2),(390,'2022-03-01','67','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"PRDISactive\"]}}]',9,1,2),(391,'2022-03-01','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"PRDISactive\"]}}]',9,1,2),(392,'2022-03-01','17','Gorton’s Beer Battered Fish Fillets with soft paper','[]',9,1,2),(393,'2022-03-01','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Product Image\"]}}]',9,1,2),(394,'2022-03-01','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"PRDISactive\", \"Product Deleted\"]}}]',9,1,2),(395,'2022-03-01','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Product Deleted\"]}}]',9,1,2),(396,'2022-03-01','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[]',9,1,2),(397,'2022-03-01','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Product Deleted\"]}}]',9,1,2),(398,'2022-03-01','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Product Deleted\"]}}]',9,1,2),(399,'2022-03-01','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Product Deleted\"]}}]',9,1,2),(400,'2022-03-01','19','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Full Description\", \"Promotional\"]}}]',9,1,2),(401,'2022-03-01','19','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Promotional\"]}}]',9,1,2),(402,'2022-03-01','19','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Discount\"]}}]',9,1,2),(403,'2022-03-01','19','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Discount\"]}}]',9,1,2),(404,'2022-03-01','19','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"PRDISactive\"]}}]',9,1,2),(405,'2022-03-02','2','helll smsmsmhhhhhh','[{\"added\": {}}]',12,1,1),(406,'2022-03-02','3','helll smsmsmhhhhhh','[{\"added\": {}}]',12,1,1),(407,'2022-03-02','4','helll smsmsmhhhhhh','[{\"added\": {}}]',12,1,1),(408,'2022-03-02','4','helll smsmsmhhhhhh','',12,1,3),(409,'2022-03-02','3','helll smsmsmhhhhhh','',12,1,3),(410,'2022-03-02','2','helll smsmsmhhhhhh','',12,1,3),(411,'2022-03-02','1','helll smsmsmhhhhhh','',12,1,3),(412,'2022-03-02','5','helll smsmsmhhhhhh','[{\"added\": {}}]',12,1,1),(413,'2022-03-02','19','helll smsmsmhhhhhh','',9,1,3),(414,'2022-03-02','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Mini Category\", \"Sub Category\"]}}]',9,1,2),(415,'2022-03-02','24','helll smsmsmhhhhhh','',9,1,3),(416,'2022-03-02','23','helll smsmsmhhhhhh 4','',9,1,3),(417,'2022-03-02','22','helll smsmsmhhhhhh 3','',9,1,3),(418,'2022-03-02','21','helll smsmsmhhhhhh2','',9,1,3),(419,'2022-03-02','20','helll smsmsmhhhhhh','',9,1,3),(420,'2022-03-02','9','Seeds of Change Organic Quinoa, Brown, & Red Rice','[{\"added\": {}}]',12,1,1),(421,'2022-03-02','10','helll smsmsmhhhhhh','[{\"added\": {}}]',12,1,1),(422,'2022-03-02','12','helll smsmsmhhhhhh1','[{\"added\": {}}]',12,1,1),(423,'2022-03-02','13','helll smsmsmhhhhhh1','[{\"added\": {}}]',12,1,1),(424,'2022-03-02','14','helll smsmsmhhhhhh1','[{\"added\": {}}]',12,1,1),(425,'2022-03-02','8','helll smsmsmhhhhhh','',12,1,3),(426,'2022-03-02','9','Seeds of Change Organic Quinoa, Brown, & Red Rice','',12,1,3),(427,'2022-03-02','10','helll smsmsmhhhhhh','',12,1,3),(428,'2022-03-02','11','helll smsmsmhhhhhh1','',12,1,3),(429,'2022-03-02','12','helll smsmsmhhhhhh1','',12,1,3),(430,'2022-03-02','13','helll smsmsmhhhhhh1','',12,1,3),(431,'2022-03-02','14','helll smsmsmhhhhhh1','',12,1,3),(432,'2022-03-02','16','helll smsmsmhhhhhh1','[{\"added\": {}}]',12,1,1),(433,'2022-03-02','17','helll smsmsmhhhhhh1','[{\"added\": {}}]',12,1,1),(434,'2022-03-02','18','helll smsmsmhhhhhh1','[{\"added\": {}}]',12,1,1),(435,'2022-03-02','26','helll smsmsmhhhhhh1','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(436,'2022-03-02','25','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"PRDISactive\", \"Product Deleted\"]}}]',9,1,2),(437,'2022-03-02','15','helll smsmsmhhhhhh1','',12,1,3),(438,'2022-03-02','16','helll smsmsmhhhhhh1','',12,1,3),(439,'2022-03-02','17','helll smsmsmhhhhhh1','',12,1,3),(440,'2022-03-02','18','helll smsmsmhhhhhh1','',12,1,3),(441,'2022-03-02','26','helll smsmsmhhhhhh1','',9,1,3),(442,'2022-03-02','25','helll smsmsmhhhhhh','',9,1,3),(443,'2022-03-02','27','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"PRDISactive\", \"Product Deleted\"]}}]',9,1,2),(444,'2022-03-02','27','helll smsmsmhhhhhh','[]',9,1,2),(445,'2022-03-02','27','helll smsmsmhhhhhh','[]',9,1,2),(446,'2022-03-02','27','helll smsmsmhhhhhh','[]',9,1,2),(447,'2022-03-02','9','Seeds of Change Organic Quinoa, Brown, & Red Rice','[]',9,1,2),(448,'2022-03-02','9','Seeds of Change Organic Quinoa, Brown, & Red Rice','[]',9,1,2),(449,'2022-03-02','9','Seeds of Change Organic Quinoa, Brown, & Red Rice','[]',9,1,2),(450,'2022-03-02','9','Seeds of Change Organic Quinoa, Brown, & Red Rice','[]',9,1,2),(451,'2022-03-02','9','Seeds of Change Organic Quinoa, Brown, & Red Rice','[]',9,1,2),(452,'2022-03-02','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[]',9,1,2),(453,'2022-03-02','12','Foster Farms Takeout Crispy Classic Buffalo Wings','[]',9,1,2),(454,'2022-03-02','11','Angie’s Boomchickapop Sweet & Salty Kettle Corn','[]',9,1,2),(455,'2022-03-02','11','Angie’s Boomchickapop Sweet & Salty Kettle Corn','[]',9,1,2),(456,'2022-03-02','11','Angie’s Boomchickapop Sweet & Salty Kettle Corn','[]',9,1,2),(457,'2022-03-02','10','Seeds of Change Organic Quinoa, Brown, & Red Rice','[]',9,1,2),(458,'2022-03-02','10','Seeds of Change Organic Quinoa, Brown, & Red Rice','[]',9,1,2),(459,'2022-03-02','28','helll smsmsmhhhhhh','',9,1,3),(460,'2022-03-02','27','helll smsmsmhhhhhh','',9,1,3),(461,'2022-03-02','29','helll smsmsmhhhhhh','',9,1,3),(462,'2022-03-02','30','helll smsmsmhhhhhh','[]',9,1,2),(463,'2022-03-02','30','helll smsmsmhhhhhh','[]',9,1,2),(464,'2022-03-02','30','helll smsmsmhhhhhh','[]',9,1,2),(465,'2022-03-02','30','helll smsmsmhhhhhh','[]',9,1,2),(466,'2022-03-02','30','helll smsmsmhhhhhh','[]',9,1,2),(467,'2022-03-02','30','helll smsmsmhhhhhh','[]',9,1,2),(468,'2022-03-02','30','helll smsmsmhhhhhh','[]',9,1,2),(469,'2022-03-02','30','helll smsmsmhhhhhh','[]',9,1,2),(470,'2022-03-02','30','helll smsmsmhhhhhh','[]',9,1,2),(471,'2022-03-02','30','helll smsmsmhhhhhh','[]',9,1,2),(472,'2022-03-02','30','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Product Image\"]}}]',9,1,2),(473,'2022-03-02','30','helll smsmsmhhhhhh','[]',9,1,2),(474,'2022-03-02','30','helll smsmsmhhhhhh','[]',9,1,2),(475,'2022-03-02','30','helll smsmsmhhhhhh','[]',9,1,2),(476,'2022-03-02','30','helll smsmsmhhhhhh','[]',9,1,2),(477,'2022-03-02','30','helll smsmsmhhhhhh','[]',9,1,2),(478,'2022-03-02','30','helll smsmsmhhhhhh','[]',9,1,2),(479,'2022-03-02','30','helll smsmsmhhhhhh','[]',9,1,2),(480,'2022-03-02','30','helll smsmsmhhhhhh','[]',9,1,2),(481,'2022-03-02','30','helll smsmsmhhhhhh','[]',9,1,2),(482,'2022-03-02','31','helll smsmsmhhhhhh','[]',9,1,2),(483,'2022-03-02','31','helll smsmsmhhhhhh','[]',9,1,2),(484,'2022-03-02','31','helll smsmsmhhhhhh','[]',9,1,2),(485,'2022-03-02','31','helll smsmsmhhhhhh','[]',9,1,2),(486,'2022-03-02','31','helll smsmsmhhhhhh','[]',9,1,2),(487,'2022-03-02','31','helll smsmsmhhhhhh','',9,1,3),(488,'2022-03-02','30','helll smsmsmhhhhhh','',9,1,3),(489,'2022-03-02','32','helll smsmsmhhhhhh','',9,1,3),(490,'2022-03-02','33','helll smsmsmhhhhhh','',9,1,3),(491,'2022-03-02','34','helll smsmsmhhhhhh','',9,1,3),(492,'2022-03-02','35','helll smsmsmhhhhhh','',9,1,3),(493,'2022-03-03','36','helll smsmsmhhhhhh','',9,1,3),(494,'2022-03-03','37','hhhhhhhh','',9,1,3),(495,'2022-03-03','38','hhhhhhhh','',9,1,3),(496,'2022-03-03','39','hhhhhhhh','',9,1,3),(497,'2022-03-03','40','hhhhhhhh','',9,1,3),(498,'2022-03-03','41','hhhhhhhh','',9,1,3),(499,'2022-03-03','42','hhhhhhhh','',9,1,3),(500,'2022-03-03','43','hhhhhhhh','',9,1,3),(501,'2022-03-03','44','hhhhhhhh','',9,1,3),(502,'2022-03-03','45','hhhhhhhh','',9,1,3),(503,'2022-03-03','46','hhhhhhhh','[]',9,1,2),(504,'2022-03-03','46','hhhhhhhh','[]',9,1,2),(505,'2022-03-03','46','hhhhhhhh','[{\"changed\": {\"fields\": [\"Product Image\"]}}]',9,1,2),(506,'2022-03-03','46','hhhhhhhh','[]',9,1,2),(507,'2022-03-03','46','hhhhhhhh','[]',9,1,2),(508,'2022-03-03','46','hhhhhhhh','[]',9,1,2),(509,'2022-03-03','46','hhhhhhhh','[]',9,1,2),(510,'2022-03-03','46','hhhhhhhh','[]',9,1,2),(511,'2022-03-03','46','hhhhhhhh','[]',9,1,2),(512,'2022-03-03','46','hhhhhhhh','[]',9,1,2),(513,'2022-03-03','46','hhhhhhhh','[]',9,1,2),(514,'2022-03-03','46','hhhhhhhh','[]',9,1,2),(515,'2022-03-03','46','hhhhhhhh','[]',9,1,2),(516,'2022-03-03','46','hhhhhhhh','',9,1,3),(517,'2022-03-03','47','hhhhhhhh','',9,1,3),(518,'2022-03-03','48','fd','[]',9,1,2),(519,'2022-03-03','48','fd','[]',9,1,2),(520,'2022-03-03','48','fd','',9,1,3),(521,'2022-03-03','50','hhhhhhhh','[]',9,1,2),(522,'2022-03-03','50','hhhhhhhh','[]',9,1,2),(523,'2022-03-03','50','hhhhhhhh','',9,1,3),(524,'2022-03-03','49','hhhhhhhh','',9,1,3),(525,'2022-03-03','51','hhh','',9,1,3),(526,'2022-03-03','52','hhh','',9,1,3),(527,'2022-03-03','53','hhh','',9,1,3),(528,'2022-03-03','54','hhh','',9,1,3),(529,'2022-03-03','55','hh','',9,1,3),(530,'2022-03-03','56','hhh','',9,1,3),(531,'2022-03-03','57','hhh','',9,1,3),(532,'2022-03-03','58','hhh','',9,1,3),(533,'2022-03-03','59','hhh','',9,1,3),(534,'2022-03-03','60','rferfre','',9,1,3),(535,'2022-03-03','61','hhh','',9,1,3),(536,'2022-03-03','62','hhh','',9,1,3),(537,'2022-03-03','63','hhh','',9,1,3),(538,'2022-03-03','64','hhh','',9,1,3),(539,'2022-03-03','65','444','[]',9,1,2),(540,'2022-03-03','65','444','[]',9,1,2),(541,'2022-03-10','61','61','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(542,'2022-03-10','61','61','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(543,'2022-03-10','61','61','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(544,'2022-03-10','61','61','[{\"changed\": {\"fields\": [\"Email client\"]}}]',15,1,2),(545,'2022-03-10','1','code21','[{\"changed\": {\"fields\": [\"Discount\"]}}]',16,1,2),(546,'2022-03-10','1','code21','[{\"changed\": {\"fields\": [\"Discount\"]}}]',16,1,2),(547,'2022-03-10','64','64','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(548,'2022-03-10','64','64','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(549,'2022-03-10','64','64','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(550,'2022-03-10','64','64','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(551,'2022-03-10','61','61','[{\"changed\": {\"fields\": [\"User\", \"Supplier\"]}}]',15,1,2),(552,'2022-03-10','11','test10','[{\"changed\": {\"fields\": [\"Status\"]}}]',13,1,2),(553,'2022-03-10','61','61','[{\"changed\": {\"fields\": [\"User\"]}}]',15,1,2),(554,'2022-03-10','61','61','[{\"changed\": {\"fields\": [\"Supplier\"]}}]',15,1,2),(555,'2022-03-10','61','61','[{\"changed\": {\"fields\": [\"Supplier\"]}}]',15,1,2),(556,'2022-03-10','61','61','[{\"changed\": {\"fields\": [\"Supplier\"]}}]',15,1,2),(557,'2022-03-10','61','61','[]',15,1,2),(558,'2022-03-11','62','62','[{\"changed\": {\"fields\": [\"Is finished\"]}}]',15,1,2),(559,'2022-03-11','61','61','[{\"changed\": {\"fields\": [\"Supplier\"]}}]',15,1,2),(560,'2022-03-11','62','62','[{\"changed\": {\"fields\": [\"Is finished\"]}}]',15,1,2),(561,'2022-03-11','66','rferfre','',9,1,3),(562,'2022-03-11','65','444','',9,1,3),(563,'2022-03-11','63','63','[{\"changed\": {\"fields\": [\"Amount\"]}}, {\"changed\": {\"name\": \"order details\", \"object\": \"Order Details ID:78-user:selem-product id:18-order id:63\", \"fields\": [\"Supplier\"]}}]',15,1,2),(564,'2022-03-18','64','64','[]',15,1,2),(565,'2022-03-18','61','61','[]',15,1,2),(566,'2022-03-18','64','64','[]',15,1,2),(567,'2022-03-18','3','3','',29,1,3),(568,'2022-03-18','2','2','',29,1,3),(569,'2022-03-18','1','1','',29,1,3),(570,'2022-03-18','64','64','[{\"changed\": {\"fields\": [\"Vendors\"]}}]',15,1,2),(571,'2022-03-18','61','61','[{\"changed\": {\"fields\": [\"Vendors\"]}}]',15,1,2),(572,'2022-03-18','67','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Product Vendor\"]}}]',9,1,2),(573,'2022-03-18','67','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Product Vendor\"]}}]',9,1,2),(574,'2022-03-18','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Product Vendor\"]}}]',9,1,2),(575,'2022-03-18','65','65','[{\"changed\": {\"fields\": [\"Vendors\", \"Amount\"]}}]',15,1,2),(576,'2022-03-23','68','helll smsmsmhhhhhh11','[{\"changed\": {\"fields\": [\"Product Vendor\"]}}]',9,1,2),(577,'2022-03-23','20','20','',29,1,3),(578,'2022-03-23','19','19','',29,1,3),(579,'2022-03-23','18','18','',29,1,3),(580,'2022-03-23','17','17','',29,1,3),(581,'2022-03-23','16','16','',29,1,3),(582,'2022-03-23','15','15','',29,1,3),(583,'2022-03-23','14','14','',29,1,3),(584,'2022-03-23','13','13','',29,1,3),(585,'2022-03-23','12','12','',29,1,3),(586,'2022-03-23','11','11','',29,1,3),(587,'2022-03-23','65','65','',15,1,3),(588,'2022-03-23','10','10','',29,1,3),(589,'2022-03-23','9','9','',29,1,3),(590,'2022-03-23','8','8','',29,1,3),(591,'2022-03-23','7','7','',29,1,3),(592,'2022-03-23','6','6','',29,1,3),(593,'2022-03-23','5','5','',29,1,3),(594,'2022-03-23','4','4','',29,1,3),(595,'2022-03-23','61','61','[]',15,1,2),(596,'2022-03-23','66','66','',15,1,3),(597,'2022-03-23','61','61','[{\"changed\": {\"fields\": [\"Is finished\", \"Status\"]}}]',15,1,2),(598,'2022-03-23','68','68','',15,1,3),(599,'2022-03-23','67','67','',15,1,3),(600,'2022-03-23','61','61','',15,1,3),(601,'2022-03-23','1','1','',29,1,3),(602,'2022-03-23','2','2','',29,1,3),(603,'2022-03-23','69','69','',15,1,3),(604,'2022-03-23','70','70','',15,1,3),(605,'2022-03-23','3','3','',29,1,3),(606,'2022-03-23','4','4','',29,1,3),(607,'2022-03-23','71','71','',15,1,3),(608,'2022-03-23','72','72','[{\"changed\": {\"fields\": [\"Sub total\", \"Amount\", \"WEIGHT\"]}}, {\"changed\": {\"name\": \"order details\", \"object\": \"Order Details ID:93-user:selem-product id:69-order id:72\", \"fields\": [\"Quantity\"]}}]',15,1,2),(609,'2022-03-23','5','5','',29,1,3),(610,'2022-03-23','74','74','',15,1,3),(611,'2022-03-23','6','6','',29,1,3),(612,'2022-03-23','8','8','',29,1,3),(613,'2022-03-23','75','75','',15,1,3),(614,'2022-03-23','76','76','',15,1,3),(615,'2022-03-23','77','77','',15,1,3),(616,'2022-03-23','78','78','',15,1,3),(617,'2022-03-23','15','15','',29,1,3),(618,'2022-03-23','82','82','',15,1,3),(619,'2022-03-23','20','20','',29,1,3),(620,'2022-03-23','19','19','',29,1,3),(621,'2022-03-23','85','85','',15,1,3),(622,'2022-03-23','87','87','',15,1,3),(623,'2022-03-23','25','25','',29,1,3),(624,'2022-03-23','90','90','',15,1,3),(625,'2022-03-24','55','55','[{\"changed\": {\"fields\": [\"Amount\"]}}, {\"changed\": {\"name\": \"order details supplier\", \"object\": \"Order Details ID:56-user:selem-product id:69-order id:104\", \"fields\": [\"Quantity\"]}}]',29,1,2),(626,'2022-03-24','55','55','[{\"changed\": {\"name\": \"order details supplier\", \"object\": \"Order Details ID:56-user:selem-product id:69-order id:104\", \"fields\": [\"Quantity\"]}}]',29,1,2),(627,'2022-03-24','103','103','',15,1,3),(628,'2022-03-24','69','helll smsmsmhhhhhh1','',9,1,3),(629,'2022-03-24','68','helll smsmsmhhhhhh11','',9,1,3),(630,'2022-03-24','67','helll smsmsmhhhhhh','',9,1,3),(631,'2022-03-24','111','111','',15,1,3),(632,'2022-03-24','112','112','',15,1,3),(633,'2022-03-24','114','114','',15,1,3),(634,'2022-03-24','115','115','',15,1,3),(635,'2022-03-24','117','117','',15,1,3),(636,'2022-03-24','79','79','[]',29,1,2),(637,'2022-03-24','16','Encore Seafoods Stuffed Alaskan Salmon','[{\"changed\": {\"fields\": [\"Available\"]}}]',9,1,2),(638,'2022-03-24','124','124','',15,1,3),(639,'2022-03-24','126','126','',15,1,3),(640,'2022-03-24','125','125','',15,1,3),(641,'2022-03-24','91','91','[{\"changed\": {\"fields\": [\"Status\"]}}]',29,1,2),(642,'2022-03-24','90','90','[{\"changed\": {\"fields\": [\"Status\"]}}]',29,1,2),(643,'2022-03-24','90','90','[{\"changed\": {\"fields\": [\"Is finished\"]}}]',29,1,2),(644,'2022-03-24','127','127','[{\"changed\": {\"fields\": [\"Is finished\", \"Status\"]}}]',15,1,2),(645,'2022-03-24','92','92','[{\"changed\": {\"fields\": [\"Is finished\", \"Status\"]}}]',29,1,2),(646,'2022-03-24','128','128','',15,1,3),(647,'2022-03-24','127','127','',15,1,3),(648,'2022-03-24','129','129','',15,1,3),(649,'2022-03-24','130','130','[{\"changed\": {\"fields\": [\"Is finished\", \"Status\"]}}]',15,1,2),(650,'2022-03-24','130','130','',15,1,3),(651,'2022-03-24','131','131','[{\"changed\": {\"fields\": [\"Is finished\", \"Status\"]}}]',15,1,2),(652,'2022-03-24','132','132','[{\"changed\": {\"fields\": [\"Is finished\", \"Status\"]}}]',15,1,2),(653,'2022-03-24','134','134','',15,1,3),(654,'2022-03-24','133','133','',15,1,3),(655,'2022-03-24','132','132','',15,1,3),(656,'2022-03-24','131','131','',15,1,3),(657,'2022-03-24','136','136','[{\"changed\": {\"fields\": [\"Is finished\", \"Status\"]}}]',15,1,2),(658,'2022-03-24','135','135','[{\"changed\": {\"fields\": [\"Is finished\", \"Status\"]}}]',15,1,2),(659,'2022-03-24','136','136','',15,1,3),(660,'2022-03-24','135','135','',15,1,3),(661,'2022-03-24','137','137','',15,1,3),(662,'2022-03-24','138','138','',15,1,3),(663,'2022-03-24','140','140','',15,1,3),(664,'2022-03-25','141','141','',15,1,3),(665,'2022-03-25','142','142','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(666,'2022-03-25','143','143','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(667,'2022-03-25','2','selem','[{\"changed\": {\"fields\": [\"Blance\"]}}]',13,1,2),(668,'2022-03-25','144','144','',15,1,3),(669,'2022-03-25','143','143','',15,1,3),(670,'2022-03-25','142','142','',15,1,3),(671,'2022-03-25','145','145','',15,1,3),(672,'2022-03-25','146','146','',15,1,3),(673,'2022-03-25','147','147','',15,1,3),(674,'2022-03-25','148','148','',15,1,3),(675,'2022-03-25','128','128','',29,1,3),(676,'2022-03-25','14','test13','[{\"changed\": {\"fields\": [\"Blance\"]}}]',13,1,2),(677,'2022-03-25','2','selem','[{\"changed\": {\"fields\": [\"Blance\"]}}]',13,1,2),(678,'2022-03-25','151','151','',15,1,3),(679,'2022-03-25','150','150','',15,1,3),(680,'2022-03-25','149','149','',15,1,3),(681,'2022-03-25','153','153','',15,1,3),(682,'2022-03-25','152','152','',15,1,3),(683,'2022-03-25','14','test13','[{\"changed\": {\"fields\": [\"Blance\"]}}]',13,1,2),(684,'2022-03-25','2','selem','[{\"changed\": {\"fields\": [\"Blance\"]}}]',13,1,2),(685,'2022-03-25','154','154','',15,1,3),(686,'2022-03-25','14','test13','[{\"changed\": {\"fields\": [\"Blance\"]}}]',13,1,2),(687,'2022-03-25','2','selem','[{\"changed\": {\"fields\": [\"Blance\"]}}]',13,1,2),(688,'2022-03-25','155','155','',15,1,3),(689,'2022-03-25','14','test13','[{\"changed\": {\"fields\": [\"Blance\"]}}]',13,1,2),(690,'2022-03-25','2','selem','[{\"changed\": {\"fields\": [\"Blance\"]}}]',13,1,2),(691,'2022-03-25','2','selem','[{\"changed\": {\"fields\": [\"Blance\"]}}]',13,1,2),(692,'2022-03-25','156','156','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(693,'2022-03-25','156','156','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(694,'2022-03-25','156','156','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(695,'2022-03-25','156','156','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(696,'2022-03-25','156','156','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(697,'2022-03-25','156','156','[{\"changed\": {\"fields\": [\"Email client\"]}}, {\"added\": {\"name\": \"payment\", \"object\": \"Payment ID:172- order:156\"}}]',15,1,2),(698,'2022-03-25','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[]',9,1,2),(699,'2022-03-25','17','Gorton’s Beer Battered Fish Fillets with soft paper','[{\"changed\": {\"fields\": [\"Mini Category\", \"Sub Category\"]}}]',9,1,2),(700,'2022-03-25','156','156','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(701,'2022-03-25','156','156','',15,1,3),(702,'2022-03-26','2','selem','[{\"changed\": {\"fields\": [\"Blance\"]}}]',13,1,2),(703,'2022-03-26','160','160','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(704,'2022-03-26','70','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"PRDISactive\", \"Product Deleted\"]}}]',9,1,2),(705,'2022-03-27','16','Encore Seafoods Stuffed Alaskan Salmon','[{\"changed\": {\"fields\": [\"Mini Category\", \"Sub Category\"]}}]',9,1,2),(706,'2022-03-27','9','Seeds of Change Organic Quinoa, Brown, & Red Rice','[{\"changed\": {\"fields\": [\"Mini Category\", \"Sub Category\"]}}]',9,1,2),(707,'2022-03-27','10','Seeds of Change Organic Quinoa, Brown, & Red Rice','[{\"changed\": {\"fields\": [\"Mini Category\", \"Sub Category\"]}}]',9,1,2),(708,'2022-03-27','11','Angie’s Boomchickapop Sweet & Salty Kettle Corn','[{\"changed\": {\"fields\": [\"Mini Category\", \"Sub Category\", \"Main Category\", \"Super Category\"]}}]',9,1,2),(709,'2022-03-27','13','Blue Diamond Almonds Lightly Salted Vegetables','[{\"changed\": {\"fields\": [\"Mini Category\", \"Sub Category\"]}}]',9,1,2),(710,'2022-03-27','14','Chobani Complete Vanilla Greek Yogurt','[{\"changed\": {\"fields\": [\"Mini Category\", \"Sub Category\"]}}]',9,1,2),(711,'2022-03-27','15','Canada Dry Ginger Ale – 2 L Bottle - 200ml - 400g','[{\"changed\": {\"fields\": [\"Mini Category\", \"Sub Category\"]}}]',9,1,2),(712,'2022-03-27','72','helll smsmsmhhhhhh','',9,1,3),(713,'2022-03-28','73','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1,2),(714,'2022-03-28','73','alert(\"Hello! I am an alert box!!\");','[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1,2),(715,'2022-03-28','73','<script> function myFunction() {   alert(\"Hello\nHow are you?\"); } </script>','[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1,2),(716,'2022-03-28','73','<script>                    alert(\"Hello\nHow are you?\");                 </script>','[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1,2),(717,'2022-03-28','73','<script>                    alert(\"Hello\nHow are you?\");                 </script>','[{\"changed\": {\"fields\": [\"Full Description\"]}}]',9,1,2),(718,'2022-03-28','73','اثممخ','[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1,2),(719,'2022-03-28','71','<h1>lol</h1>','[{\"changed\": {\"fields\": [\"Full Description\"]}}]',9,1,2),(720,'2022-03-28','73','اثممخ','[{\"changed\": {\"fields\": [\"Full Description\"]}}]',9,1,2),(721,'2022-03-28','73','HELLO','[{\"changed\": {\"fields\": [\"Name\", \"Short Description\"]}}]',9,1,2),(722,'2022-03-28','73','HELLO','[{\"changed\": {\"fields\": [\"Full Description\"]}}]',9,1,2),(723,'2022-03-28','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Product Image\"]}}]',9,1,2),(724,'2022-03-28','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Product Image\"]}}]',9,1,2),(725,'2022-03-28','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',9,1,3),(726,'2022-03-28','75','helll smsmsmhhhhhh','',9,1,3),(727,'2022-03-28','74','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',9,1,3),(728,'2022-03-28','76','helll smsmsmhhhhhh','',9,1,3),(729,'2022-03-28','78','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Product Vendor\"]}}]',9,1,2),(730,'2022-03-28','78','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Product Vendor\"]}}]',9,1,2),(731,'2022-03-28','14','test13','[{\"changed\": {\"fields\": [\"Display name\", \"Bio\", \"Mobile number\", \"Address\", \"City\", \"Post code\", \"Country\", \"State\"]}}]',13,1,2),(732,'2022-03-28','78','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Product Vendor\"]}}]',9,1,2),(733,'2022-03-28','14','test13','[{\"changed\": {\"fields\": [\"Image\"]}}]',13,1,2),(734,'2022-03-28','78','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Product Vendor\"]}}]',9,1,2),(735,'2022-03-28','78','helll smsmsmhhhhhh','[{\"changed\": {\"fields\": [\"Product Vendor\"]}}]',9,1,2),(736,'2022-03-28','14','test13','[{\"changed\": {\"fields\": [\"Image\"]}}]',13,1,2),(737,'2022-03-28','14','test13','[{\"changed\": {\"fields\": [\"Image\"]}}]',13,1,2),(738,'2022-04-17','78','helll smsmsmhhhhhh','',9,1,3),(739,'2022-04-17','77','<script>alert(\'Hello! I am an alert box!!\');</script>','',9,1,3),(740,'2022-04-17','71','<h1>lol</h1>','',9,1,3),(741,'2022-04-17','70','helll smsmsmhhhhhh','',9,1,3),(742,'2022-04-17','4','Simply Lemonade with Raspberry Juice','[{\"changed\": {\"fields\": [\"Deal Time\"]}}]',24,1,2),(743,'2022-04-17','3','Signature Wood-Fired Mushroom and Caramelized','[{\"changed\": {\"fields\": [\"Deal Time\"]}}]',24,1,2),(744,'2022-04-17','2','Perdue Simply Smart Organics Gluten Free','[{\"changed\": {\"fields\": [\"Deal Time\"]}}]',24,1,2),(745,'2022-04-17','1','Seeds of Change Organic Quinoa, Brown, & Red Rice','[{\"changed\": {\"fields\": [\"Deal Time\"]}}]',24,1,2),(746,'2022-04-17','79','combo Pack','',9,1,3),(747,'2022-04-17','73','\"  onload=\"alert(\'123\');','[{\"changed\": {\"fields\": [\"PRDISactive\", \"Product Deleted\"]}}]',9,1,2),(748,'2022-04-17','36','Machinery & Equipment','',11,1,3),(749,'2022-04-17','35','Pet & Animal Care','',11,1,3),(750,'2022-04-17','34','Baby Centre','',11,1,3),(751,'2022-04-17','33','Toys','',11,1,3),(752,'2022-04-17','32','Sports & Fitness','',11,1,3),(753,'2022-04-17','31','Automotive','',11,1,3),(754,'2022-04-17','30','Construction & Hardware','',11,1,3),(755,'2022-04-17','29','Beauty & Fragrances','',11,1,3),(756,'2022-04-17','28','Fashion & Accessories','',11,1,3),(757,'2022-04-17','27','Health & Personal Care','',11,1,3),(758,'2022-04-17','26','Home, Garden & Furniture','',11,1,3),(759,'2022-04-17','25','Consumer Electronics','',11,1,3),(760,'2022-04-17','24','Office & Stationery','',11,1,3),(761,'2022-04-17','23','Food & Beverage','',11,1,3),(762,'2022-04-17','26','Home, Garden & Furniture','',11,1,3),(763,'2022-04-17','25','Consumer Electronics','',11,1,3),(764,'2022-04-17','24','Office & Stationery','',11,1,3),(765,'2022-04-17','23','Food & Beverage','',11,1,3),(766,'2022-04-17','26','Home, Garden & Furniture','',11,1,3),(767,'2022-04-17','25','Consumer Electronics','',11,1,3),(768,'2022-04-17','24','Office & Stationery','',11,1,3),(769,'2022-04-17','23','Food & Beverage','',11,1,3),(770,'2022-04-17','26','Home, Garden & Furniture','',11,1,3),(771,'2022-04-17','25','Consumer Electronics','',11,1,3),(772,'2022-04-17','24','Office & Stationery','',11,1,3),(773,'2022-04-17','23','Food & Beverage','',11,1,3),(774,'2022-04-17','16','Strawberry','',8,1,3),(775,'2022-04-17','15','Vegetables','',8,1,3),(776,'2022-04-17','14','Snack','',8,1,3),(777,'2022-04-17','13','Red Apple','',8,1,3),(778,'2022-04-17','12','Peach','',8,1,3),(779,'2022-04-17','11','Oganic Kiwi','',8,1,3),(780,'2022-04-17','10','Cake & Milk','',8,1,3),(781,'2022-04-17','9','Coffe & Tea','',8,1,3),(782,'2022-04-17','8','Custard apple','',8,1,3),(783,'2022-04-17','9','Herbal Tea','',10,1,3),(784,'2022-04-17','11','test3sub','',10,1,3),(785,'2022-04-17','10','test2','',10,1,3),(786,'2022-04-17','8','Red Apples','',10,1,3),(787,'2022-04-17','7','Tropical Fruits','',10,1,3),(788,'2022-04-17','10','testsub','',7,1,3),(789,'2022-04-17','9','apple tea','',7,1,3),(790,'2022-04-17','8','test','',7,1,3),(791,'2022-04-17','7','Fresh Fruits','',7,1,3),(792,'2022-04-17','8','test','',7,1,3),(793,'2022-04-17','7','Fresh Fruits','',7,1,3),(794,'2022-04-17','26','Home, Garden & Furniture','',11,1,3),(795,'2022-04-17','25','Consumer Electronics','',11,1,3),(796,'2022-04-17','24','Office & Stationery','',11,1,3),(797,'2022-04-17','23','Food & Beverage','',11,1,3),(798,'2022-04-17','24','Office & Stationery','',11,1,3),(799,'2022-04-17','23','Food & Beverage','',11,1,3),(800,'2022-04-17','16','Strawberry','',8,1,3),(801,'2022-04-17','15','Vegetables','',8,1,3),(802,'2022-04-17','14','Snack','',8,1,3),(803,'2022-04-17','13','Red Apple','',8,1,3),(804,'2022-04-17','12','Peach','',8,1,3),(805,'2022-04-17','11','Oganic Kiwi','',8,1,3),(806,'2022-04-17','10','Cake & Milk','',8,1,3),(807,'2022-04-17','9','Coffe & Tea','',8,1,3),(808,'2022-04-17','11','test3sub','',10,1,3),(809,'2022-04-17','10','test2','',10,1,3),(810,'2022-04-17','8','Red Apples','',10,1,3),(811,'2022-04-17','7','Tropical Fruits','',10,1,3),(812,'2022-04-17','15','Vegetables','',8,1,3),(813,'2022-04-17','14','Snack','',8,1,3),(814,'2022-04-17','13','Red Apple','',8,1,3),(815,'2022-04-17','12','Peach','',8,1,3),(816,'2022-04-17','11','Oganic Kiwi','',8,1,3),(817,'2022-04-17','10','Cake & Milk','',8,1,3),(818,'2022-04-17','9','Coffe & Tea','',8,1,3),(819,'2022-04-17','8','Custard apple','',8,1,3),(820,'2022-04-17','15','Vegetables','',8,1,3),(821,'2022-04-17','14','Snack','',8,1,3),(822,'2022-04-17','13','Red Apple','',8,1,3),(823,'2022-04-17','12','Peach','',8,1,3),(824,'2022-04-17','11','Oganic Kiwi','',8,1,3),(825,'2022-04-17','10','Cake & Milk','',8,1,3),(826,'2022-04-17','9','Coffe & Tea','',8,1,3),(827,'2022-04-17','8','Custard apple','',8,1,3),(828,'2022-04-17','8','test','',7,1,3),(829,'2022-04-17','15','Vegetables','',8,1,3),(830,'2022-04-17','16','Strawberry','',8,1,3),(831,'2022-04-17','14','Snack','',8,1,3),(832,'2022-04-17','13','Red Apple','',8,1,3),(833,'2022-04-17','12','Peach','',8,1,3),(834,'2022-04-17','11','Oganic Kiwi','',8,1,3),(835,'2022-04-17','10','Cake & Milk','',8,1,3),(836,'2022-04-17','9','Coffe & Tea','',8,1,3),(837,'2022-04-17','8','Custard apple','',8,1,3),(838,'2022-04-17','10','Cake & Milk','',8,1,3),(839,'2022-04-17','9','Coffe & Tea','',8,1,3),(840,'2022-04-17','37','Promotions & Bundle Meals','[{\"added\": {}}]',11,1,1),(841,'2022-04-17','38','McWaffar','[{\"added\": {}}]',11,1,1),(842,'2022-04-17','39','Beef','[{\"added\": {}}]',11,1,1),(843,'2022-04-17','40','Chicken','[{\"added\": {}}]',11,1,1),(844,'2022-04-17','41','Fish','[{\"added\": {}}]',11,1,1),(845,'2022-04-17','42','Sides','[{\"added\": {}}]',11,1,1),(846,'2022-04-17','43','Beverages','[{\"added\": {}}]',11,1,1),(847,'2022-04-17','44','Happy Meals','[{\"added\": {}}]',11,1,1),(848,'2022-04-17','45','Sauces','[{\"added\": {}}]',11,1,1),(849,'2022-04-17','46','Desserts','[{\"added\": {}}]',11,1,1),(850,'2022-04-17','17','Cake & Milk','[{\"added\": {}}]',8,1,1),(851,'2022-04-17','18','Oganic Kiwi','[{\"added\": {}}]',8,1,1),(852,'2022-04-17','19','Peach','[{\"added\": {}}]',8,1,1),(853,'2022-04-17','20','Red Apple','[{\"added\": {}}]',8,1,1),(854,'2022-04-17','21','Snack','[{\"added\": {}}]',8,1,1),(855,'2022-04-17','22','Vegetables','[{\"added\": {}}]',8,1,1),(856,'2022-04-17','23','Strawberry','[{\"added\": {}}]',8,1,1),(857,'2022-04-17','24','Black plum','[{\"added\": {}}]',8,1,1),(858,'2022-04-25','46','Desserts','',11,1,3),(859,'2022-04-25','45','Sauces','',11,1,3),(860,'2022-04-25','44','Happy Meals','',11,1,3),(861,'2022-04-25','43','Beverages','',11,1,3),(862,'2022-04-25','42','Sides','',11,1,3),(863,'2022-04-25','41','Fish','',11,1,3),(864,'2022-04-25','40','Chicken','',11,1,3),(865,'2022-04-25','39','Beef','',11,1,3),(866,'2022-04-25','38','McWaffar','',11,1,3),(867,'2022-04-25','37','Promotions & Bundle Meals','',11,1,3),(868,'2022-04-25','9','Seeds of Change Organic Quinoa, Brown, & Red Rice','[{\"changed\": {\"fields\": [\"PRDISactive\", \"Product Deleted\"]}}]',9,1,2),(869,'2022-04-25','10','Seeds of Change Organic Quinoa, Brown, & Red Rice','[{\"changed\": {\"fields\": [\"PRDISactive\", \"Product Deleted\"]}}]',9,1,2),(870,'2022-04-25','11','Angie’s Boomchickapop Sweet & Salty Kettle Corn','[{\"changed\": {\"fields\": [\"PRDISactive\", \"Product Deleted\"]}}]',9,1,2),(871,'2022-04-25','12','Foster Farms Takeout Crispy Classic Buffalo Wings','[{\"changed\": {\"fields\": [\"PRDISactive\", \"Product Deleted\"]}}]',9,1,2),(872,'2022-04-25','13','Blue Diamond Almonds Lightly Salted Vegetables','[{\"changed\": {\"fields\": [\"PRDISactive\", \"Product Deleted\"]}}]',9,1,2),(873,'2022-04-25','14','Chobani Complete Vanilla Greek Yogurt','[{\"changed\": {\"fields\": [\"PRDISactive\", \"Product Deleted\"]}}]',9,1,2),(874,'2022-04-25','15','Canada Dry Ginger Ale – 2 L Bottle - 200ml - 400g','[{\"changed\": {\"fields\": [\"PRDISactive\", \"Product Deleted\"]}}]',9,1,2),(875,'2022-04-25','17','Gorton’s Beer Battered Fish Fillets with soft paper','[{\"changed\": {\"fields\": [\"PRDISactive\", \"Product Deleted\"]}}]',9,1,2),(876,'2022-04-25','16','Encore Seafoods Stuffed Alaskan Salmon','[{\"changed\": {\"fields\": [\"PRDISactive\", \"Product Deleted\"]}}]',9,1,2),(877,'2022-04-25','17','Gorton’s Beer Battered Fish Fillets with soft paper','[{\"changed\": {\"fields\": [\"Product Image\"]}}]',9,1,2),(878,'2022-04-25','10','All Natural Italian-Style Chicken Meatballs','[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1,2),(879,'2022-04-25','73','\"  onload=\"alert(\'2\');','[{\"changed\": {\"fields\": [\"Name\", \"PRDISactive\", \"Product Deleted\"]}}]',9,1,2),(880,'2022-04-25','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Short Description\", \"PRDISactive\", \"Product Deleted\"]}}]',9,1,2),(881,'2022-04-25','73','\"  onload=\"alert(\'2\');','[{\"changed\": {\"fields\": [\"PRDISactive\", \"Product Deleted\"]}}]',9,1,2),(882,'2022-04-30','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(883,'2022-05-02','1','id: 1 email: info@mohamedselem.com.','[{\"added\": {}}]',30,1,1),(884,'2022-05-02','12','id: 12 email: test@gmail.com.','',30,1,3),(885,'2022-05-02','11','id: 11 email: .','',30,1,3),(886,'2022-05-02','10','id: 10 email: .','',30,1,3),(887,'2022-05-02','9','id: 9 email: .','',30,1,3),(888,'2022-05-02','8','id: 8 email: .','',30,1,3),(889,'2022-05-02','7','id: 7 email: .','',30,1,3),(890,'2022-05-02','6','id: 6 email: .','',30,1,3),(891,'2022-05-02','5','id: 5 email: .','',30,1,3),(892,'2022-05-02','4','id: 4 email: .','',30,1,3),(893,'2022-05-02','3','id: 3 email: .','',30,1,3),(894,'2022-05-02','2','id: 2 email: .','',30,1,3),(895,'2022-05-02','17','id: 17 email: .','',30,1,3),(896,'2022-05-03','90','\"  onload=\"alert(\'2\');','[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1,2),(897,'2022-05-03','90','alert(\"Hello! I am an alert box!!\");','[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1,2),(898,'2022-05-03','90','<script>alert(\"Hello! I am an alert box!!\");</script>','[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1,2),(899,'2022-05-03','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1,2),(900,'2022-05-03','1','Seeds of Change Organic Quinoa, Brown, & Red Rice','[{\"added\": {}}]',31,1,1),(901,'2022-05-03','2','Seeds of Change Organic Quinoa, Brown, & Red Rice','',31,1,3),(902,'2022-05-03','1','Seeds of Change Organic Quinoa, Brown, & Red Rice','',31,1,3),(903,'2022-05-03','4','Gorton’s Beer Battered Fish Fillets with soft paper','',31,1,3),(904,'2022-05-03','3','Seeds of Change Organic Quinoa, Brown, & Red Rice','',31,1,3),(905,'2022-05-03','5','Gorton’s Beer Battered Fish Fillets with soft paper','',31,1,3),(906,'2022-05-03','6','Gorton’s Beer Battered Fish Fillets with soft paper','',31,1,3),(907,'2022-05-03','7','Gorton’s Beer Battered Fish Fillets with soft paper','',31,1,3),(908,'2022-05-03','8','Gorton’s Beer Battered Fish Fillets with soft paper','',31,1,3),(909,'2022-05-03','9','Gorton’s Beer Battered Fish Fillets with soft paper','',31,1,3),(910,'2022-05-03','10','Gorton’s Beer Battered Fish Fillets with soft paper','[{\"changed\": {\"fields\": [\"Active\"]}}]',31,1,2),(911,'2022-05-04','10','Gorton’s Beer Battered Fish Fillets with soft paper','[{\"changed\": {\"fields\": [\"Rate\"]}}]',31,1,2),(912,'2022-05-04','10','Gorton’s Beer Battered Fish Fillets with soft paper','[{\"changed\": {\"fields\": [\"Rate\"]}}]',31,1,2),(913,'2022-05-04','10','Gorton’s Beer Battered Fish Fillets with soft paper','[{\"changed\": {\"fields\": [\"Rate\"]}}]',31,1,2),(914,'2022-05-04','10','Gorton’s Beer Battered Fish Fillets with soft paper','',31,1,3),(915,'2022-05-04','1','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Active\"]}}]',31,1,2),(916,'2022-05-04','2','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Active\"]}}]',31,1,2),(917,'2022-05-04','6','Blue Diamond Almonds Lightly Salted Vegetables','',31,1,3),(918,'2022-05-04','5','Angie’s Boomchickapop Sweet & Salty Kettle Corn','',31,1,3),(919,'2022-05-04','4','Chobani Complete Vanilla Greek Yogurt','',31,1,3),(920,'2022-05-04','3','All Natural Italian-Style Chicken Meatballs','',31,1,3),(921,'2022-05-04','2','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',31,1,3),(922,'2022-05-04','1','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',31,1,3),(923,'2022-05-04','7','Blue Diamond Almonds Lightly Salted Vegetables','',31,1,3),(924,'2022-05-04','8','Blue Diamond Almonds Lightly Salted Vegetables','',31,1,3),(925,'2022-05-04','9','Blue Diamond Almonds Lightly Salted Vegetables','[{\"changed\": {\"fields\": [\"Active\"]}}]',31,1,2),(926,'2022-05-04','10','Blue Diamond Almonds Lightly Salted Vegetables','[{\"changed\": {\"fields\": [\"Active\"]}}]',31,1,2),(927,'2022-05-04','11','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Active\"]}}]',31,1,2),(928,'2022-05-04','11','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',31,1,3),(929,'2022-05-04','10','Blue Diamond Almonds Lightly Salted Vegetables','',31,1,3),(930,'2022-05-04','9','Blue Diamond Almonds Lightly Salted Vegetables','',31,1,3),(931,'2022-05-04','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Feedbak average\", \"Feedbak number\"]}}]',9,1,2),(932,'2022-05-04','13','Angie’s Boomchickapop Sweet & Salty Kettle Corn','[{\"changed\": {\"fields\": [\"Active\"]}}]',31,1,2),(933,'2022-05-04','14','All Natural Italian-Style Chicken Meatballs','[{\"changed\": {\"fields\": [\"Active\"]}}]',31,1,2),(934,'2022-05-05','21','Angie’s Boomchickapop Sweet & Salty Kettle Corn','',31,1,3),(935,'2022-05-05','20','Foster Farms Takeout Crispy Classic Buffalo Wings','',31,1,3),(936,'2022-05-05','19','Foster Farms Takeout Crispy Classic Buffalo Wings','',31,1,3),(937,'2022-05-05','18','Foster Farms Takeout Crispy Classic Buffalo Wings','',31,1,3),(938,'2022-05-05','17','Encore Seafoods Stuffed Alaskan Salmon','',31,1,3),(939,'2022-05-05','16','Encore Seafoods Stuffed Alaskan Salmon','',31,1,3),(940,'2022-05-05','15','Canada Dry Ginger Ale – 2 L Bottle - 200ml - 400g','',31,1,3),(941,'2022-05-05','14','All Natural Italian-Style Chicken Meatballs','',31,1,3),(942,'2022-05-05','13','Angie’s Boomchickapop Sweet & Salty Kettle Corn','',31,1,3),(943,'2022-05-05','12','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',31,1,3),(944,'2022-05-05','11','Angie’s Boomchickapop Sweet & Salty Kettle Corn','[{\"changed\": {\"fields\": [\"Full Description\", \"Feedbak average\", \"Feedbak number\", \"Start_1\"]}}]',9,1,2),(945,'2022-05-05','11','Angie’s Boomchickapop Sweet & Salty Kettle Corn','[{\"changed\": {\"fields\": [\"Feedbak number\", \"Start_2\", \"Start_4\"]}}]',9,1,2),(946,'2022-05-05','23','Angie’s Boomchickapop Sweet & Salty Kettle Corn','',31,1,3),(947,'2022-05-05','22','Angie’s Boomchickapop Sweet & Salty Kettle Corn','',31,1,3),(948,'2022-05-05','11','Angie’s Boomchickapop Sweet & Salty Kettle Corn','[{\"changed\": {\"fields\": [\"Start_3\", \"Start_5\"]}}]',9,1,2),(949,'2022-05-05','11','Angie’s Boomchickapop Sweet & Salty Kettle Corn','[{\"changed\": {\"fields\": [\"Feedbak average\", \"Feedbak number\"]}}]',9,1,2),(950,'2022-05-05','25','Angie’s Boomchickapop Sweet & Salty Kettle Corn','',31,1,3),(951,'2022-05-05','24','Angie’s Boomchickapop Sweet & Salty Kettle Corn','',31,1,3),(952,'2022-05-05','1','Best smartwatch 2022: the top wearables you can buy today','[{\"added\": {}}]',33,1,1),(953,'2022-05-05','2','Summer Quinoa Salad Jars with Lemon Dill','[{\"added\": {}}]',33,1,1),(954,'2022-05-05','2','Summer Quinoa Salad Jars with Lemon Dill','[{\"changed\": {\"fields\": [\"Views\"]}}]',33,1,2),(955,'2022-05-05','1','127.0.0.1','',36,1,3),(956,'2022-05-05','1','Best smartwatch 2022: the top wearables you can buy today','[{\"changed\": {\"fields\": [\"Author\"]}}]',33,1,2),(957,'2022-05-05','1','Commented mohamed selem on Summer Quinoa Salad Jars with Lemon Dill.','[{\"changed\": {\"fields\": [\"Active\"]}}]',32,1,2),(958,'2022-05-05','7','Commented mohamed selem on Summer Quinoa Salad Jars with Lemon Dill.','[{\"changed\": {\"fields\": [\"Publisher\"]}}]',32,1,2),(959,'2022-05-05','6','Commented mohamed selem on Summer Quinoa Salad Jars with Lemon Dill.','[{\"changed\": {\"fields\": [\"Publisher\"]}}]',32,1,2),(960,'2022-05-05','5','Commented mohamed selem on Summer Quinoa Salad Jars with Lemon Dill.','[{\"changed\": {\"fields\": [\"Publisher\"]}}]',32,1,2),(961,'2022-05-05','1','Commented mohamed selem on Summer Quinoa Salad Jars with Lemon Dill.','[{\"changed\": {\"fields\": [\"Profile\"]}}]',32,1,2),(962,'2022-05-05','2','Commented mohamed selem on Summer Quinoa Salad Jars with Lemon Dill.','[{\"changed\": {\"fields\": [\"Profile\"]}}]',32,1,2),(963,'2022-05-05','3','Commented mohamed selem on Summer Quinoa Salad Jars with Lemon Dill.','[{\"changed\": {\"fields\": [\"Profile\"]}}]',32,1,2),(964,'2022-05-05','4','Commented mohamed selem on Summer Quinoa Salad Jars with Lemon Dill.','[{\"changed\": {\"fields\": [\"Profile\"]}}]',32,1,2),(965,'2022-05-05','1','1','[{\"added\": {}}]',38,1,1),(966,'2022-05-05','1','1','[{\"changed\": {\"fields\": [\"Title\"]}}]',38,1,2),(967,'2022-05-05','1','1','[{\"changed\": {\"fields\": [\"Title\"]}}]',38,1,2),(968,'2022-05-06','1','id: 1','[{\"added\": {}}]',39,1,1),(969,'2022-05-06','1','id: 1','[{\"changed\": {\"fields\": [\"Pinterest\", \"Instagram\"]}}]',39,1,2),(970,'2022-05-06','1','id: 1 email contact@Evara.com.','[{\"added\": {}}]',40,1,1),(971,'2022-05-06','2','id: 2 email contact@Evara.com.','[{\"added\": {}}]',40,1,1),(972,'2022-05-06','3','id: 3 email contact@Evara.com.','[{\"added\": {}}]',40,1,1),(973,'2022-05-06','3','id: 3 email contact@Evara.com.','[{\"changed\": {\"fields\": [\"Map link\"]}}]',40,1,2),(974,'2022-05-06','2','id: 2 email contact@Evara.com.','[{\"changed\": {\"fields\": [\"Map link\"]}}]',40,1,2),(975,'2022-05-06','1','id: 1 email contact@Evara.com.','[{\"changed\": {\"fields\": [\"Map link\"]}}]',40,1,2),(976,'2022-05-06','1','id: 1 email contact@Evara.com.','[{\"changed\": {\"fields\": [\"Map link\"]}}]',40,1,2),(977,'2022-05-06','1','id: 1 email contact@Evara.com.','[{\"changed\": {\"fields\": [\"Map link\"]}}]',40,1,2),(978,'2022-05-06','1','1','[{\"added\": {}}]',41,1,1),(979,'2022-05-07','1','Page Name: About Us','[{\"added\": {}}]',42,1,1),(980,'2022-05-07','1','Page Name: About Us','[]',42,1,2),(981,'2022-05-07','2','Page Name: About Us','[{\"added\": {}}]',42,1,1),(982,'2022-05-07','2','Page Name: About Us','',42,1,3),(983,'2022-05-07','1','Page Name: About Us','[{\"changed\": {\"fields\": [\"Content\"]}}]',42,1,2),(984,'2022-05-07','1','Page Name: About Us','[{\"changed\": {\"fields\": [\"Content\"]}}]',42,1,2),(985,'2022-05-07','1','Page Name: About Us','[]',42,1,2),(986,'2022-05-07','1','Page Name: About Us','[{\"changed\": {\"fields\": [\"Content\"]}}]',42,1,2),(987,'2022-05-07','1','Page Name: About Us','[{\"changed\": {\"fields\": [\"Content\"]}}]',42,1,2),(988,'2022-05-07','1','Page Name: About Us','[{\"changed\": {\"fields\": [\"Content\"]}}]',42,1,2),(989,'2022-05-07','2','Page Name: Terms Of Service','[{\"added\": {}}]',42,1,1),(990,'2022-05-07','3','Page Name: Refund Policy','[{\"added\": {}}]',42,1,1),(991,'2022-05-07','3','Page Name: Refund Policy','[{\"changed\": {\"fields\": [\"Active\"]}}]',42,1,2),(992,'2022-05-07','3','Page Name: Refund Policy','[{\"changed\": {\"fields\": [\"Active\"]}}]',42,1,2),(993,'2022-05-07','1','id: 1 number 1900 - 8888.','[{\"added\": {}}]',43,1,1),(994,'2022-05-07','2','id: 2 number 1900 - 6666.','[{\"added\": {}}]',43,1,1),(995,'2022-05-07','1','id: 1 site name Nest.','[{\"added\": {}}]',44,1,1),(996,'2022-05-07','1','id: 1 site name Nest.','[{\"changed\": {\"fields\": [\"Site favicon\"]}}]',44,1,2),(997,'2022-05-07','1','id: 1 site name Nest.','[{\"changed\": {\"fields\": [\"Site Logo\"]}}]',44,1,2),(998,'2022-05-07','1','id: 1 site name Nest.','',44,1,3),(999,'2022-05-07','2','id: 2 site name Nest.','[{\"added\": {}}]',44,1,1),(1000,'2022-05-07','2','id: 2 site name Nest.','[{\"changed\": {\"fields\": [\"Login screen\"]}}]',44,1,2),(1001,'2022-05-08','1','554544554','[{\"added\": {}}]',45,1,1),(1002,'2022-05-08','1','hhhhhhhhhhhhh','',45,1,3),(1003,'2022-05-08','2','قببق','',45,1,3),(1004,'2022-05-08','3','BankAccount object (3)','',45,1,3),(1005,'2022-05-08','4','BankAccount object (4)','',45,1,3),(1006,'2022-05-08','1','SocialLink object (1)','',46,1,3),(1007,'2022-05-08','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Product Deleted\"]}}]',9,1,2),(1008,'2022-05-08','5','BankAccount object (5)','',45,1,3),(1009,'2022-05-08','1','VendorPayments object (1)','[{\"added\": {}}]',47,1,1),(1010,'2022-05-08','1','VendorPayments object (1)','[{\"changed\": {\"fields\": [\"Fee\"]}}]',47,1,2),(1011,'2022-05-08','1','VendorPayments object (1)','[{\"changed\": {\"fields\": [\"Request amount\"]}}]',47,1,2),(1012,'2022-05-08','168','168','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(1013,'2022-05-08','167','167','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(1014,'2022-05-08','163','163','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(1015,'2022-05-08','161','161','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(1016,'2022-05-08','162','162','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(1017,'2022-05-08','165','165','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(1018,'2022-05-08','1','VendorPayments object (1)','[{\"changed\": {\"fields\": [\"Status\"]}}]',47,1,2),(1019,'2022-05-08','1','VendorPayments object (1)','[{\"changed\": {\"fields\": [\"Status\"]}}]',47,1,2),(1020,'2022-05-08','1','VendorPayments object (1)','[{\"changed\": {\"fields\": [\"Method\"]}}]',47,1,2),(1021,'2022-05-08','2','VendorPayments object (2)','[{\"added\": {}}]',47,1,1),(1022,'2022-05-09','6','VendorPayments object (6)','',47,1,3),(1023,'2022-05-09','5','VendorPayments object (5)','',47,1,3),(1024,'2022-05-09','4','VendorPayments object (4)','',47,1,3),(1025,'2022-05-09','3','VendorPayments object (3)','',47,1,3),(1026,'2022-05-09','2','VendorPayments object (2)','',47,1,3),(1027,'2022-05-09','1','VendorPayments object (1)','',47,1,3),(1028,'2022-05-09','2','selem','[{\"changed\": {\"fields\": [\"Blance\", \"Requested\"]}}]',13,1,2),(1029,'2022-05-09','2','id: 2 site name Nest.','[{\"changed\": {\"fields\": [\"Site Title\"]}}]',44,1,2),(1030,'2022-05-09','2','id: 2 site name Nest.','[{\"changed\": {\"fields\": [\"Site Title\"]}}]',44,1,2),(1031,'2022-05-09','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"SET WEIGHT_KG\"]}}]',9,1,2),(1032,'2022-05-09','17','Gorton’s Beer Battered Fish Fillets with soft paper','[]',9,1,2),(1033,'2022-05-09','1','StripeSetting object (1)','[{\"added\": {}}]',48,1,1),(1034,'2022-05-12','2','selem','[{\"changed\": {\"fields\": [\"Requested\"]}}]',13,1,2),(1035,'2022-05-12','2','selem','[{\"changed\": {\"fields\": [\"Blance\"]}}]',13,1,2),(1036,'2022-05-12','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"PRDISactive\", \"Product Deleted\"]}}]',9,1,2),(1037,'2022-05-12','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Product Deleted\"]}}]',9,1,2),(1038,'2022-05-12','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"PRDISactive\", \"Product Deleted\"]}}]',9,1,2),(1039,'2022-05-12','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Product Deleted\"]}}]',9,1,2),(1040,'2022-05-12','9','Seeds of Change Organic Quinoa, Brown, & Red Rice','[{\"changed\": {\"fields\": [\"Full Description\", \"PRDISactive\", \"Product Deleted\"]}}]',9,1,2),(1041,'2022-05-12','24','Beauty & Fragrances','[{\"added\": {}}]',11,1,1),(1042,'2022-05-12','25','Makeup','[{\"added\": {}}]',8,1,1),(1043,'2022-05-12','8','Eye Makeup','[{\"added\": {}}]',7,1,1),(1044,'2022-05-12','8','Eye Shadows','[{\"added\": {}}]',10,1,1),(1045,'2022-05-12','25','Office & Stationery','[{\"added\": {}}]',11,1,1),(1046,'2022-05-12','26','Books','[{\"added\": {}}]',8,1,1),(1047,'2022-05-12','9','Fiction','[{\"added\": {}}]',7,1,1),(1048,'2022-05-12','9','Comic & Graphic Novels','[{\"added\": {}}]',10,1,1),(1049,'2022-05-12','26','Consumer Electronics','[{\"added\": {}}]',11,1,1),(1050,'2022-05-12','27','Mobile Phones & Tablets','[{\"added\": {}}]',8,1,1),(1051,'2022-05-12','10','Chargers & Batteries','[{\"added\": {}}]',7,1,1),(1052,'2022-05-12','10','Wall Chargers','[{\"added\": {}}]',10,1,1),(1053,'2022-05-12','27','Fashion & Accessories','[{\"added\": {}}]',11,1,1),(1054,'2022-05-12','28','Clothing','[{\"added\": {}}]',8,1,1),(1055,'2022-05-12','11','Kids Jumpsuits & Sets','[{\"added\": {}}]',7,1,1),(1056,'2022-05-12','11','Kids Costumes','[{\"added\": {}}]',10,1,1),(1057,'2022-05-12','7','test6','[{\"changed\": {\"fields\": [\"Display name\", \"Bio\", \"Mobile number\", \"Address\", \"City\", \"Post code\", \"Country\", \"State\"]}}]',13,1,2),(1058,'2022-05-12','7','test6','[{\"changed\": {\"fields\": [\"Image\"]}}]',13,1,2),(1059,'2022-05-12','3','SocialLink object (3)','[{\"added\": {}}]',46,1,1),(1060,'2022-05-12','2','selem','[{\"changed\": {\"fields\": [\"Mobile number\", \"Address\", \"City\", \"Country\", \"State\"]}}]',13,1,2),(1061,'2022-05-12','12','test11','[{\"changed\": {\"fields\": [\"Image\", \"Display name\", \"Bio\", \"Mobile number\", \"Address\", \"City\", \"Post code\", \"Country\", \"State\"]}}]',13,1,2),(1062,'2022-05-12','13','test12','[{\"changed\": {\"fields\": [\"Image\", \"Display name\", \"Bio\", \"Mobile number\", \"Address\", \"City\", \"Post code\", \"Country\", \"State\"]}}]',13,1,2),(1063,'2022-05-12','14','test13','[{\"changed\": {\"fields\": [\"Image\", \"Display name\", \"Bio\", \"Mobile number\", \"Address\", \"City\", \"Post code\", \"Country\", \"State\"]}}]',13,1,2),(1064,'2022-05-12','17','test16','[{\"changed\": {\"fields\": [\"Image\", \"Display name\", \"Bio\", \"Mobile number\", \"Address\", \"City\", \"Post code\", \"Country\", \"State\"]}}]',13,1,2),(1065,'2022-05-12','18','test17','[{\"changed\": {\"fields\": [\"Image\", \"Display name\", \"Bio\", \"Mobile number\", \"Address\", \"City\", \"Post code\", \"Country\", \"State\"]}}]',13,1,2),(1066,'2022-05-12','16','test15','[{\"changed\": {\"fields\": [\"Status\"]}}]',13,1,2),(1067,'2022-05-12','16','test15','[{\"changed\": {\"fields\": [\"Image\", \"Display name\", \"Bio\", \"Mobile number\", \"Address\", \"City\", \"Post code\", \"Country\", \"State\"]}}]',13,1,2),(1068,'2022-05-12','1','Bring nature into your home','[{\"changed\": {\"fields\": [\"Ad URL\"]}}]',23,1,2),(1069,'2022-05-12','4','Simply Lemonade with Raspberry Juice','[{\"changed\": {\"fields\": [\"Product URL\"]}}]',24,1,2),(1070,'2022-05-12','3','Signature Wood-Fired Mushroom and Caramelized','[{\"changed\": {\"fields\": [\"Product URL\"]}}]',24,1,2),(1071,'2022-05-12','2','Perdue Simply Smart Organics Gluten Free','[{\"changed\": {\"fields\": [\"Product URL\"]}}]',24,1,2),(1072,'2022-05-12','1','Seeds of Change Organic Quinoa, Brown, & Red Rice','[{\"changed\": {\"fields\": [\"Product URL\"]}}]',24,1,2),(1073,'2022-05-12','3','The best Organic Products Online','[{\"changed\": {\"fields\": [\"Ad URL\"]}}]',21,1,2),(1074,'2022-05-12','2','Make your Breakfast Healthy and Easy','[{\"changed\": {\"fields\": [\"Ad URL\"]}}]',21,1,2),(1075,'2022-05-12','1','Everyday Fresh & Clean with Our Products','[{\"changed\": {\"fields\": [\"Ad URL\"]}}]',21,1,2),(1076,'2022-05-12','3','The best Organic Products Online','[{\"changed\": {\"fields\": [\"Ad URL\"]}}]',20,1,2),(1077,'2022-05-12','1','Everyday Fresh & Clean with Our Products','[{\"changed\": {\"fields\": [\"Ad URL\"]}}]',20,1,2),(1078,'2022-05-12','1','1','[{\"changed\": {\"fields\": [\"Product URL\"]}}]',25,1,2),(1079,'2022-05-12','4','Enjoy 15% OFF for all vegetable','[{\"changed\": {\"fields\": [\"Supplier\"]}}]',22,1,2),(1080,'2022-05-12','3','Special grocery sale off this month','[{\"changed\": {\"fields\": [\"Supplier\"]}}]',22,1,2),(1081,'2022-05-12','2','100% guaranteed all Fresh items','[{\"changed\": {\"fields\": [\"Supplier\"]}}]',22,1,2),(1082,'2022-05-12','1','Everyday Fresh with Our Products','[{\"changed\": {\"fields\": [\"Supplier\"]}}]',22,1,2),(1083,'2022-05-12','1','Save 17% on Oganic Juice','[{\"changed\": {\"fields\": [\"Ad URL\"]}}]',26,1,2),(1084,'2022-05-12','3','50','[{\"changed\": {\"fields\": [\"Ad URL\"]}}]',27,1,2),(1085,'2022-05-12','2','30','[{\"changed\": {\"fields\": [\"Ad URL\"]}}]',27,1,2),(1086,'2022-05-12','1','25','[{\"changed\": {\"fields\": [\"Ad URL\"]}}]',27,1,2),(1087,'2022-05-12','2','Fresh Vegetables Big discount','[{\"changed\": {\"fields\": [\"CARURL\"]}}]',19,1,2),(1088,'2022-05-12','1','Don’t miss amazing grocery deals','[{\"changed\": {\"fields\": [\"CARURL\"]}}]',19,1,2),(1089,'2022-05-12','1','1','[{\"changed\": {\"fields\": [\"Ad URL\"]}}]',38,1,2),(1090,'2022-05-12','4','Simply Lemonade with Raspberry Juice','[{\"changed\": {\"fields\": [\"Deal Time\"]}}]',24,1,2),(1091,'2022-05-12','3','Signature Wood-Fired Mushroom and Caramelized','[{\"changed\": {\"fields\": [\"Deal Time\"]}}]',24,1,2),(1092,'2022-05-12','2','Perdue Simply Smart Organics Gluten Free','[{\"changed\": {\"fields\": [\"Deal Time\"]}}]',24,1,2),(1093,'2022-05-12','1','Seeds of Change Organic Quinoa, Brown, & Red Rice','[{\"changed\": {\"fields\": [\"Deal Time\"]}}]',24,1,2),(1094,'2022-05-17','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1095,'2022-05-17','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1096,'2022-05-17','12','Foster Farms Takeout Crispy Classic Buffalo Wings','[{\"changed\": {\"fields\": [\"Sub Category\", \"Mini Category\", \"Full Description\"]}}]',9,1,2),(1097,'2022-05-18','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Feedbak average\", \"Feedbak number\"]}}]',9,1,2),(1098,'2022-05-18','17','Gorton’s Beer Battered Fish Fillets with soft paper','[{\"changed\": {\"fields\": [\"Available\"]}}]',9,1,2),(1099,'2022-05-18','73','\"  onload=\"alert(\'2\');','',9,1,3),(1100,'2022-05-18','180','180','[]',15,1,2),(1101,'2022-05-18','17','Gorton’s Beer Battered Fish Fillets with soft paper','[{\"changed\": {\"fields\": [\"Promotional\"]}}]',9,1,2),(1102,'2022-05-18','9','Seeds of Change Organic Quinoa, Brown, & Red Rice','[{\"changed\": {\"fields\": [\"Full Description\", \"Promotional\"]}}]',9,1,2),(1103,'2022-05-18','6','BankAccount object (6)','[{\"changed\": {\"fields\": [\"Bank name\", \"Account name\", \"Country\"]}}]',45,1,2),(1104,'2022-05-18','35','id: 35 email: u@g.b.','',30,1,3),(1105,'2022-05-18','34','id: 34 email: d@ftt.','',30,1,3),(1106,'2022-05-18','33','id: 33 email: d@fhh.','',30,1,3),(1107,'2022-05-18','32','id: 32 email: d@fj.','',30,1,3),(1108,'2022-05-18','31','id: 31 email: f@fff.','',30,1,3),(1109,'2022-05-18','30','id: 30 email: d@dl.','',30,1,3),(1110,'2022-05-18','29','id: 29 email: d@d.','',30,1,3),(1111,'2022-05-18','28','id: 28 email: d@f.','',30,1,3),(1112,'2022-05-18','27','id: 27 email: 2@gg.','',30,1,3),(1113,'2022-05-18','26','id: 26 email: f@f.','',30,1,3),(1114,'2022-05-18','23','id: 23 email: w2@2.','',30,1,3),(1115,'2022-05-18','22','id: 22 email: bdb@g.bg.','',30,1,3),(1116,'2022-05-18','21','id: 21 email: test@gmaicl.com.','',30,1,3),(1117,'2022-05-18','20','id: 20 email: 56d@gmail.com.','',30,1,3),(1118,'2022-05-18','19','id: 19 email: bdbdd@g.g.','',30,1,3),(1119,'2022-05-18','18','id: 18 email: testccc@gmail.com.','',30,1,3),(1120,'2022-05-18','16','id: 16 email: testf@gmail.com.','',30,1,3),(1121,'2022-05-18','15','id: 15 email: bdb@g.g.','',30,1,3),(1122,'2022-05-18','13','id: 13 email: 56@gmail.com.','',30,1,3),(1123,'2022-05-18','1','id: 1 email: info@mohamedselem.com.','',30,1,3),(1124,'2022-05-18','14','id: 14 email: test@gmail.com.','',30,1,3),(1125,'2022-05-18','24','id: 24 email: f@j.','',30,1,3),(1126,'2022-05-18','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[]',9,1,2),(1127,'2022-05-18','174','174','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(1128,'2022-05-18','173','173','[{\"changed\": {\"fields\": [\"Status\"]}}]',15,1,2),(1129,'2022-05-18','1','selem','[{\"changed\": {\"fields\": [\"password\"]}}]',4,1,2),(1130,'2022-05-19','89','Happy Meal® Chicken MACDO®','',9,1,3),(1131,'2022-05-19','88','McNuggets® 6 Pieces','',9,1,3),(1132,'2022-05-19','87','Big Tasty®','',9,1,3),(1133,'2022-05-19','86','Big Mac®','',9,1,3),(1134,'2022-05-19','85','Cheeseburger','',9,1,3),(1135,'2022-05-19','84','Premium Grand Share Box','',9,1,3),(1136,'2022-05-19','83','Premium Share Box','',9,1,3),(1137,'2022-05-19','82','Grand Share Box','',9,1,3),(1138,'2022-05-19','81','Share Box','',9,1,3),(1139,'2022-05-19','80','Mix 2 Meal','',9,1,3),(1140,'2022-05-19','7','VendorPayments object (7)','[{\"changed\": {\"fields\": [\"Fee\", \"Status\"]}}]',47,1,2),(1141,'2022-05-19','8','VendorPayments object (8)','[{\"changed\": {\"fields\": [\"Status\"]}}]',47,1,2),(1142,'2022-05-19','9','VendorPayments object (9)','[{\"changed\": {\"fields\": [\"Status\"]}}]',47,1,2),(1143,'2022-05-19','188','188','[{\"changed\": {\"fields\": [\"Shipping\"]}}]',15,1,2),(1144,'2022-05-19','12','Tea','[{\"added\": {}}]',7,1,1),(1145,'2022-05-19','12','Black Tea','[{\"added\": {}}]',10,1,1),(1146,'2022-05-19','13','Milk','[{\"added\": {}}]',7,1,1),(1147,'2022-05-19','13','Milk Powder','[{\"added\": {}}]',10,1,1),(1148,'2022-05-19','14','Tropical Fruit','[{\"added\": {}}]',7,1,1),(1149,'2022-05-19','14','Kiwifruit','[{\"added\": {}}]',10,1,1),(1150,'2022-05-19','15','Fresh Fruits','[{\"added\": {}}]',7,1,1),(1151,'2022-05-19','15','Apples','[{\"added\": {}}]',10,1,1),(1152,'2022-05-19','16','Pantry','[{\"added\": {}}]',7,1,1),(1153,'2022-05-19','16','Seed Snacks','[{\"added\": {}}]',10,1,1),(1154,'2022-05-19','15','Apple','[{\"changed\": {\"fields\": [\"Name\"]}}]',10,1,2),(1155,'2022-05-19','17','Frozen Food','[{\"added\": {}}]',7,1,1),(1156,'2022-05-19','17','Frozen Vegetables','[{\"added\": {}}]',10,1,1),(1157,'2022-05-19','18','Jams & Spreads','[{\"added\": {}}]',7,1,1),(1158,'2022-05-19','18','Jams','[{\"added\": {}}]',10,1,1),(1159,'2022-05-19','19','Spices & Seasonings','[{\"added\": {}}]',7,1,1),(1160,'2022-05-19','19','plum','[{\"added\": {}}]',10,1,1),(1161,'2022-05-19','20','Fresh Fruits','[{\"added\": {}}]',7,1,1),(1162,'2022-05-19','20','Apple','[{\"added\": {}}]',10,1,1),(1163,'2022-05-19','15','Apple','',10,1,3),(1164,'2022-05-19','15','Fresh Fruits','',7,1,3),(1165,'2022-05-22','11','VendorPayments object (11)','',47,1,3),(1166,'2022-05-22','10','VendorPayments object (10)','',47,1,3),(1167,'2022-05-22','9','VendorPayments object (9)','',47,1,3),(1168,'2022-05-22','8','VendorPayments object (8)','',47,1,3),(1169,'2022-05-22','7','VendorPayments object (7)','',47,1,3),(1170,'2022-05-22','190','190','',15,1,3),(1171,'2022-05-22','189','189','',15,1,3),(1172,'2022-05-22','187','187','',15,1,3),(1173,'2022-05-22','186','186','',15,1,3),(1174,'2022-05-22','185','185','',15,1,3),(1175,'2022-05-22','184','184','',15,1,3),(1176,'2022-05-22','183','183','',15,1,3),(1177,'2022-05-22','182','182','',15,1,3),(1178,'2022-05-22','181','181','',15,1,3),(1179,'2022-05-22','179','179','',15,1,3),(1180,'2022-05-22','178','178','',15,1,3),(1181,'2022-05-22','175','175','',15,1,3),(1182,'2022-05-22','174','174','',15,1,3),(1183,'2022-05-22','173','173','',15,1,3),(1184,'2022-05-22','172','172','',15,1,3),(1185,'2022-05-22','168','168','',15,1,3),(1186,'2022-05-22','167','167','',15,1,3),(1187,'2022-05-22','165','165','',15,1,3),(1188,'2022-05-22','164','164','',15,1,3),(1189,'2022-05-22','163','163','',15,1,3),(1190,'2022-05-22','162','162','',15,1,3),(1191,'2022-05-22','161','161','',15,1,3),(1192,'2022-05-22','160','160','',15,1,3),(1193,'2022-05-22','159','159','',15,1,3),(1194,'2022-05-22','158','158','',15,1,3),(1195,'2022-05-22','25','id: 25 email: f@r.','',30,1,3),(1196,'2022-05-22','7','EtwnZYQ4wgmGE9z','',4,1,3),(1197,'2022-05-22','23','Lina','',4,1,3),(1198,'2022-05-22','22','admin','',4,1,3),(1199,'2022-05-22','2','mohamedselem','',4,1,3),(1200,'2022-05-22','6','mohamedselem+','',4,1,3),(1201,'2022-05-22','3','test1','',4,1,3),(1202,'2022-05-22','14','test10','',4,1,3),(1203,'2022-05-22','15','test11','',4,1,3),(1204,'2022-05-22','16','test12','',4,1,3),(1205,'2022-05-22','17','test13','',4,1,3),(1206,'2022-05-22','18','test14','',4,1,3),(1207,'2022-05-22','19','test15','',4,1,3),(1208,'2022-05-22','20','test16','',4,1,3),(1209,'2022-05-22','21','test17','',4,1,3),(1210,'2022-05-22','4','test2','',4,1,3),(1211,'2022-05-22','24','test20','',4,1,3),(1212,'2022-05-22','5','test3','',4,1,3),(1213,'2022-05-22','8','test4','',4,1,3),(1214,'2022-05-22','9','test5','',4,1,3),(1215,'2022-05-22','10','test6','',4,1,3),(1216,'2022-05-22','11','test7','',4,1,3),(1217,'2022-05-22','12','test8','',4,1,3),(1218,'2022-05-22','13','test9','',4,1,3),(1219,'2022-05-22','25','اختبار','',4,1,3),(1220,'2022-05-22','1','selem','[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]',4,1,2),(1221,'2022-05-22','1','1','[{\"changed\": {\"fields\": [\"Title\"]}}]',38,1,2),(1222,'2022-05-28','2','id: 2 site name Nest.','[{\"changed\": {\"fields\": [\"Login screen\"]}}]',44,1,2),(1223,'2022-05-28','2','id: 2 site name Nest.','',44,1,3),(1224,'2022-05-28','3','id: 3 site name Nest.','[{\"added\": {}}]',44,1,1),(1225,'2022-05-28','3','id: 3 site name Nest.','[{\"changed\": {\"fields\": [\"Shipping fee\"]}}]',44,1,2),(1226,'2022-05-28','7','7','',41,1,3),(1227,'2022-05-28','6','6','',41,1,3),(1228,'2022-05-28','5','5','',41,1,3),(1229,'2022-05-28','4','4','',41,1,3),(1230,'2022-05-28','3','3','',41,1,3),(1231,'2022-05-28','2','2','',41,1,3),(1232,'2022-05-28','1','1','',41,1,3),(1233,'2022-05-28','192','192','',15,1,3),(1234,'2022-05-28','191','191','',15,1,3),(1235,'2022-05-28','3','The best Organic Products Online','[{\"changed\": {\"fields\": [\"Image\"]}}]',20,1,2),(1236,'2022-05-28','1','Everyday Fresh & Clean with Our Products','[{\"changed\": {\"fields\": [\"Image\"]}}]',20,1,2),(1237,'2022-05-28','2','Fresh Vegetables Big discount','[{\"changed\": {\"fields\": [\"Image\"]}}]',19,1,2),(1238,'2022-05-28','1','Don’t miss amazing grocery deals','[{\"changed\": {\"fields\": [\"Image\"]}}]',19,1,2),(1239,'2022-05-28','8','Custard apple','[{\"changed\": {\"fields\": [\"Category Image\"]}}]',8,1,2),(1240,'2022-05-28','9','Coffe & Tea','[{\"changed\": {\"fields\": [\"Category Image\"]}}]',8,1,2),(1241,'2022-05-28','17','Cake & Milk','[{\"changed\": {\"fields\": [\"Category Image\"]}}]',8,1,2),(1242,'2022-05-28','18','Oganic Kiwi','[{\"changed\": {\"fields\": [\"Category Image\"]}}]',8,1,2),(1243,'2022-05-28','19','Peach','[{\"changed\": {\"fields\": [\"Category Image\"]}}]',8,1,2),(1244,'2022-05-28','20','Red Apple','[{\"changed\": {\"fields\": [\"Category Image\"]}}]',8,1,2),(1245,'2022-05-28','21','Snack','[{\"changed\": {\"fields\": [\"Category Image\"]}}]',8,1,2),(1246,'2022-05-28','22','Vegetables','[{\"changed\": {\"fields\": [\"Category Image\"]}}]',8,1,2),(1247,'2022-05-28','23','Strawberry','[{\"changed\": {\"fields\": [\"Category Image\"]}}]',8,1,2),(1248,'2022-05-28','24','Black plum','[{\"changed\": {\"fields\": [\"Category Image\"]}}]',8,1,2),(1249,'2022-05-28','23','Food & Beverage','[{\"changed\": {\"fields\": [\"Category Image\"]}}]',11,1,2),(1250,'2022-05-28','3','50','[{\"changed\": {\"fields\": [\"Image\"]}}]',27,1,2),(1251,'2022-05-28','2','30','[{\"changed\": {\"fields\": [\"Image\"]}}]',27,1,2),(1252,'2022-05-28','1','25','[{\"changed\": {\"fields\": [\"Image\"]}}]',27,1,2),(1253,'2022-05-28','3','The best Organic Products Online','[{\"changed\": {\"fields\": [\"Image\"]}}]',21,1,2),(1254,'2022-05-28','3','The best Organic Products Online','[{\"changed\": {\"fields\": [\"Image\"]}}]',21,1,2),(1255,'2022-05-28','3','The best Organic Products Online','[{\"changed\": {\"fields\": [\"Image\"]}}]',21,1,2),(1256,'2022-05-28','2','Make your Breakfast Healthy and Easy','[{\"changed\": {\"fields\": [\"Image\"]}}]',21,1,2),(1257,'2022-05-28','1','Everyday Fresh & Clean with Our Products','[{\"changed\": {\"fields\": [\"Image\"]}}]',21,1,2),(1258,'2022-05-28','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Product Image\", \"Additional  Image_1\"]}}]',9,1,2),(1259,'2022-05-28','17','Gorton’s Beer Battered Fish Fillets with soft paper','[{\"changed\": {\"fields\": [\"Product Image\", \"Additional  Image_1\"]}}]',9,1,2),(1260,'2022-05-28','16','Encore Seafoods Stuffed Alaskan Salmon','[{\"changed\": {\"fields\": [\"Product Image\"]}}]',9,1,2),(1261,'2022-05-28','15','Canada Dry Ginger Ale – 2 L Bottle - 200ml - 400g','[{\"changed\": {\"fields\": [\"Product Image\"]}}]',9,1,2),(1262,'2022-05-28','14','Chobani Complete Vanilla Greek Yogurt','[{\"changed\": {\"fields\": [\"Product Image\"]}}]',9,1,2),(1263,'2022-05-28','13','Blue Diamond Almonds Lightly Salted Vegetables','[{\"changed\": {\"fields\": [\"Product Image\", \"Full Description\"]}}]',9,1,2),(1264,'2022-05-28','12','Foster Farms Takeout Crispy Classic Buffalo Wings','[{\"changed\": {\"fields\": [\"Product Image\", \"Full Description\"]}}]',9,1,2),(1265,'2022-05-28','11','Angie’s Boomchickapop Sweet & Salty Kettle Corn','[{\"changed\": {\"fields\": [\"Product Image\", \"Full Description\"]}}]',9,1,2),(1266,'2022-05-28','10','All Natural Italian-Style Chicken Meatballs','[{\"changed\": {\"fields\": [\"Product Image\", \"Full Description\"]}}]',9,1,2),(1267,'2022-05-28','9','Seeds of Change Organic Quinoa, Brown, & Red Rice','[{\"changed\": {\"fields\": [\"Product Image\"]}}]',9,1,2),(1268,'2022-05-28','4','Enjoy 15% OFF for all vegetable','[{\"changed\": {\"fields\": [\"Image\"]}}]',22,1,2),(1269,'2022-05-28','3','Special grocery sale off this month','[{\"changed\": {\"fields\": [\"Image\"]}}]',22,1,2),(1270,'2022-05-28','2','100% guaranteed all Fresh items','[{\"changed\": {\"fields\": [\"Image\"]}}]',22,1,2),(1271,'2022-05-28','1','Everyday Fresh with Our Products','[{\"changed\": {\"fields\": [\"Image\"]}}]',22,1,2),(1272,'2022-05-28','1','Bring nature into your home','[{\"changed\": {\"fields\": [\"Image\"]}}]',23,1,2),(1273,'2022-05-28','4','Simply Lemonade with Raspberry Juice','[{\"changed\": {\"fields\": [\"Image\"]}}]',24,1,2),(1274,'2022-05-28','3','Signature Wood-Fired Mushroom and Caramelized','[{\"changed\": {\"fields\": [\"Image\"]}}]',24,1,2),(1275,'2022-05-28','2','Perdue Simply Smart Organics Gluten Free','[{\"changed\": {\"fields\": [\"Image\"]}}]',24,1,2),(1276,'2022-05-28','1','Seeds of Change Organic Quinoa, Brown, & Red Rice','[{\"changed\": {\"fields\": [\"Image\"]}}]',24,1,2),(1277,'2022-05-28','3','id: 3 site name Nest.','[{\"changed\": {\"fields\": [\"Footer Image\"]}}]',44,1,2),(1278,'2022-05-28','3','id: 3 site name Nest.','[{\"changed\": {\"fields\": [\"Login screen\"]}}]',44,1,2),(1279,'2022-05-28','1','1','[{\"changed\": {\"fields\": [\"Image\"]}}]',25,1,2),(1280,'2022-05-28','1','Save 17% on Oganic Juice','[{\"changed\": {\"fields\": [\"Image\"]}}]',26,1,2),(1281,'2022-05-28','1','Best smartwatch 2022: the top wearables you can buy today','[{\"changed\": {\"fields\": [\"Post Image\"]}}]',33,1,2),(1282,'2022-06-05','7','Fruits','[{\"changed\": {\"fields\": [\"Name\", \"Slugfiy\"]}}]',7,1,2),(1283,'2022-06-11','USD','USD','[{\"added\": {}}]',50,1,1),(1284,'2022-06-11','EUR','EUR','[{\"added\": {}}]',50,1,1),(1285,'2022-06-11','USD','USD','[{\"changed\": {\"fields\": [\"Name\", \"Info\"]}}]',50,1,2),(1286,'2022-06-11','EUR','EUR','[{\"changed\": {\"fields\": [\"Name\", \"Info\"]}}]',50,1,2),(1287,'2022-06-11','3','id: 3 site name Nest.','[{\"changed\": {\"fields\": [\"Footer Image\"]}}]',44,1,2),(1288,'2022-06-17','195','195','',29,1,3),(1289,'2022-06-17','191','191','',29,1,3),(1290,'2022-06-17','190','190','',29,1,3),(1291,'2022-06-17','189','189','',29,1,3),(1292,'2022-06-17','201','201','',15,1,3),(1293,'2022-06-17','197','197','',15,1,3),(1294,'2022-06-17','196','196','',15,1,3),(1295,'2022-06-17','195','195','',15,1,3),(1296,'2022-06-18','3','id: 3 site name Nest.','[{\"changed\": {\"fields\": [\"Login screen\"]}}]',44,1,2),(1297,'2022-06-18','217','217','',15,1,3),(1298,'2022-06-18','211','211','',15,1,3),(1299,'2022-06-18','210','210','',15,1,3),(1300,'2022-06-18','209','209','',15,1,3),(1301,'2022-06-18','207','207','',15,1,3),(1302,'2022-06-18','206','206','',15,1,3),(1303,'2022-06-18','205','205','',15,1,3),(1304,'2022-06-18','204','204','',15,1,3),(1305,'2022-06-18','203','203','',15,1,3),(1306,'2022-06-18','202','202','',15,1,3),(1307,'2022-06-18','193','193','',15,1,3),(1308,'2022-06-18','194','194','',15,1,3),(1309,'2022-06-18','221','221','',15,1,3),(1310,'2022-06-18','220','220','',15,1,3),(1311,'2022-06-18','219','219','',15,1,3),(1312,'2022-06-18','224','224','',15,1,3),(1313,'2022-06-18','223','223','',15,1,3),(1314,'2022-06-18','222','222','',15,1,3),(1315,'2022-06-20','246','246','',15,1,3),(1316,'2022-06-20','245','245','',15,1,3),(1317,'2022-06-20','244','244','',15,1,3),(1318,'2022-06-20','243','243','',15,1,3),(1319,'2022-06-20','242','242','',15,1,3),(1320,'2022-06-20','241','241','',15,1,3),(1321,'2022-06-20','240','240','',15,1,3),(1322,'2022-06-20','239','239','',15,1,3),(1323,'2022-06-20','238','238','',15,1,3),(1324,'2022-06-20','237','237','',15,1,3),(1325,'2022-06-20','236','236','',15,1,3),(1326,'2022-06-20','235','235','',15,1,3),(1327,'2022-06-20','234','234','',15,1,3),(1328,'2022-06-20','233','233','',15,1,3),(1329,'2022-06-20','232','232','',15,1,3),(1330,'2022-06-20','231','231','',15,1,3),(1331,'2022-06-20','230','230','',15,1,3),(1332,'2022-06-20','229','229','',15,1,3),(1333,'2022-06-20','228','228','',15,1,3),(1334,'2022-06-20','227','227','',15,1,3),(1335,'2022-06-20','226','226','',15,1,3),(1336,'2022-06-24','261','261','',15,1,3),(1337,'2022-06-24','260','260','',15,1,3),(1338,'2022-06-24','259','259','',15,1,3),(1339,'2022-06-24','258','258','',15,1,3),(1340,'2022-06-24','257','257','',15,1,3),(1341,'2022-06-24','256','256','',15,1,3),(1342,'2022-06-24','255','255','',15,1,3),(1343,'2022-06-24','254','254','',15,1,3),(1344,'2022-06-24','253','253','',15,1,3),(1345,'2022-06-24','252','252','',15,1,3),(1346,'2022-06-24','251','251','',15,1,3),(1347,'2022-06-24','250','250','',15,1,3),(1348,'2022-06-24','249','249','',15,1,3),(1349,'2022-06-24','248','248','',15,1,3),(1350,'2022-06-24','247','247','',15,1,3),(1351,'2022-06-24','39','id: 39 email: d@f.','',30,1,3),(1352,'2022-06-24','38','id: 38 email: d@dl.','',30,1,3),(1353,'2022-06-24','37','id: 37 email: d@d.','',30,1,3),(1354,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1355,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1356,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1357,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1358,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1359,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1360,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1361,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1362,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1363,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1364,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1365,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1366,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1367,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1368,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1369,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1370,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1371,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1372,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1373,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1374,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1375,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1376,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1377,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1378,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1379,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1380,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1381,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1382,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1383,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1384,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1385,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1386,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1387,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1388,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1389,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1390,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1391,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1392,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1393,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1394,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1395,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1396,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1397,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1398,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1399,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1400,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1401,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1402,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1403,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1404,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1405,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1406,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1407,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1408,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1409,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1410,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1411,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1412,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1413,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1414,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1415,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1416,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1417,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1418,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1419,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1420,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1421,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1422,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1423,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1424,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1425,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1426,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1427,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1428,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1429,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1430,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1431,'2022-06-27','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1432,'2022-06-28','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1433,'2022-06-28','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1434,'2022-06-28','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1435,'2022-07-14','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Additional  Image_1\"]}}]',9,1,2),(1436,'2022-07-14','2','selem','[{\"changed\": {\"fields\": [\"Admission\"]}}]',13,1,2),(1437,'2022-07-20','270','270','',15,1,3),(1438,'2022-07-20','269','269','',15,1,3),(1439,'2022-07-20','268','268','',15,1,3),(1440,'2022-07-20','267','267','',15,1,3),(1441,'2022-07-20','266','266','',15,1,3),(1442,'2022-07-20','265','265','',15,1,3),(1443,'2022-08-01','2','Fresh Vegetables Big discount','[{\"changed\": {\"fields\": [\"Image\"]}}]',19,1,2),(1444,'2022-08-01','1','Don’t miss amazing grocery deals','[{\"changed\": {\"fields\": [\"Image\"]}}]',19,1,2),(1445,'2022-08-01','2','Fresh Vegetables Big discount','[{\"changed\": {\"fields\": [\"Image\"]}}]',19,1,2),(1446,'2022-08-01','1','index-1','[{\"added\": {}}]',51,1,1),(1447,'2022-08-01','2','index-2','[{\"added\": {}}]',51,1,1),(1448,'2022-08-01','3','index-3','[{\"added\": {}}]',51,1,1),(1449,'2022-08-01','1','selem','[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1,2),(1450,'2022-08-01','1','selem','[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1,2),(1451,'2022-08-01','1','selem','[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1,2),(1452,'2022-08-01','2','index-2','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1453,'2022-08-01','3','index-3','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1454,'2022-08-01','1','index-1','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1455,'2022-08-01','2','index-2','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1456,'2022-08-01','2','index-2','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1457,'2022-08-01','3','index-3','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1458,'2022-08-01','1','index-1','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1459,'2022-08-01','2','index-2','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1460,'2022-08-01','4','index-4','[{\"added\": {}}]',51,1,1),(1461,'2022-08-01','1','index-1','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1462,'2022-08-01','4','index-4','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1463,'2022-08-01','1','index-1','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1464,'2022-08-01','4','index-4','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1465,'2022-08-01','1','index-1','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1466,'2022-08-01','2','index-2','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1467,'2022-08-01','2','index-2','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1468,'2022-08-01','3','index-3','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1469,'2022-08-01','3','index-3','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1470,'2022-08-01','4','index-4','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1471,'2022-08-02','1','index-1','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1472,'2022-08-02','4','index-4','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1473,'2022-08-07','5','random','[{\"added\": {}}]',51,1,1),(1474,'2022-08-07','1','index-1','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1475,'2022-08-14','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','[{\"changed\": {\"fields\": [\"Digital File\"]}}]',9,1,2),(1476,'2022-08-14','262','262','[{\"changed\": {\"fields\": [\"Is finished\", \"Status\"]}}]',15,1,2),(1477,'2022-08-14','92','helll smsmsmhhhhhh','',9,1,3),(1478,'2022-08-14','91','helll smsmsmhhhhhh','',9,1,3),(1479,'2022-10-07','7','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1480,'2022-10-07','6','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1481,'2022-10-07','5','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1482,'2022-10-07','4','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1483,'2022-10-07','3','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1484,'2022-10-07','2','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1485,'2022-10-07','1','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1486,'2022-10-07','14','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1487,'2022-10-07','13','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1488,'2022-10-07','12','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1489,'2022-10-07','11','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1490,'2022-10-07','10','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1491,'2022-10-07','9','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1492,'2022-10-07','8','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1493,'2022-10-07','19','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1494,'2022-10-07','18','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1495,'2022-10-07','17','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1496,'2022-10-07','16','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1497,'2022-10-07','15','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1498,'2022-10-07','20','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1499,'2022-10-07','40','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1500,'2022-10-07','61','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1501,'2022-10-07','60','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1502,'2022-10-07','59','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1503,'2022-10-07','58','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1504,'2022-10-07','57','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1505,'2022-10-07','56','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1506,'2022-10-07','55','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1507,'2022-10-07','54','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1508,'2022-10-07','53','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1509,'2022-10-07','52','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1510,'2022-10-07','51','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1511,'2022-10-07','50','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1512,'2022-10-07','49','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1513,'2022-10-07','48','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1514,'2022-10-07','46','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1515,'2022-10-07','45','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1516,'2022-10-07','44','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1517,'2022-10-07','43','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1518,'2022-10-07','42','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1519,'2022-10-07','41','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1520,'2022-10-07','39','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1521,'2022-10-07','38','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1522,'2022-10-07','37','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1523,'2022-10-07','36','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1524,'2022-10-07','35','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1525,'2022-10-07','63','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1526,'2022-10-07','64','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1527,'2022-10-07','65','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',52,1,3),(1528,'2022-10-07','90','Haagen-Dazs Caramel Cone Ice Cream Ketchup','',9,1,3),(1529,'2022-10-07','93','test','[{\"added\": {\"name\": \"product size\", \"object\": \"test\"}}]',9,1,2),(1530,'2022-10-07','93','test','[{\"deleted\": {\"name\": \"product size\", \"object\": \"test\"}}]',9,1,2),(1531,'2022-10-07','93','Haagen-Dazs Caramel Cone','[{\"changed\": {\"fields\": [\"Name\", \"Short Description\"]}}]',9,1,2),(1532,'2022-10-07','94','TESAT','',9,1,3),(1533,'2022-10-07','264','264','',15,1,3),(1534,'2022-10-07','263','263','',15,1,3),(1535,'2022-10-07','262','262','',15,1,3),(1536,'2022-10-30','1','Best smartwatch 2022: the top wearables you can buy today','[{\"changed\": {\"fields\": [\"Slugfiy\"]}}]',33,1,2),(1537,'2022-10-30','1','Best smartwatch 2022: the top wearables you can buy today','[{\"changed\": {\"fields\": [\"Slugfiy\"]}}]',33,1,2),(1538,'2022-11-29','279','279','[{\"changed\": {\"fields\": [\"Amount\"]}}]',15,1,2),(1539,'2022-11-29','279','279','[{\"changed\": {\"fields\": [\"Amount\"]}}]',15,1,2),(1540,'2022-11-29','278','278','[{\"changed\": {\"fields\": [\"Amount\"]}}]',15,1,2),(1541,'2023-06-04','1','index-1','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1542,'2023-06-04','5','random','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1543,'2023-06-04','1','index-1','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1544,'2023-06-04','2','index-2','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1545,'2023-06-04','2','index-2','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1546,'2023-06-04','3','index-3','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1547,'2023-06-04','3','index-3','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1548,'2023-06-04','4','index-4','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1549,'2023-06-04','4','index-4','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2),(1550,'2023-06-04','5','random','[{\"changed\": {\"fields\": [\"Active\"]}}]',51,1,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(12) DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (45,'accounts','bankaccount'),(13,'accounts','profile'),(46,'accounts','sociallink'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(32,'blog','comment'),(33,'blog','post'),(49,'captcha','captchastore'),(8,'categories','maincategory'),(10,'categories','minicategory'),(7,'categories','subcategory'),(11,'categories','supercategory'),(41,'contact','messageslist'),(5,'contenttypes','contenttype'),(50,'currencies','currency'),(19,'home','carousel'),(38,'home','headtextad'),(23,'home','homeaddaily'),(24,'home','homeaddealtime'),(21,'home','homeadmiddlebar'),(20,'home','homeadsidebar'),(22,'home','homeadsupplier'),(27,'home','hotdealad'),(26,'home','shopadsidebar'),(25,'home','vendordetailsadimage'),(30,'newsletters','newsletter'),(18,'orders','country'),(16,'orders','coupon'),(15,'orders','order'),(14,'orders','orderdetails'),(28,'orders','orderdetailssupplier'),(29,'orders','ordersupplier'),(17,'orders','payment'),(42,'pages','pageslist'),(47,'payments','vendorpayments'),(9,'products','product'),(12,'products','productimage'),(31,'products','productrating'),(52,'products','productsize'),(34,'reports','postreport'),(36,'reports','postview'),(35,'reports','report'),(37,'reports','reportuser'),(6,'sessions','session'),(40,'settings','contactinfo'),(51,'settings','homepagetheme'),(44,'settings','sitesetting'),(39,'settings','socaillinks'),(48,'settings','stripesetting'),(43,'settings','supportnumber');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` smallint(6) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(53) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-02-03'),(2,'auth','0001_initial','2022-02-03'),(3,'admin','0001_initial','2022-02-03'),(4,'admin','0002_logentry_remove_auto_add','2022-02-03'),(5,'admin','0003_logentry_add_action_flag_choices','2022-02-03'),(6,'contenttypes','0002_remove_content_type_name','2022-02-03'),(7,'auth','0002_alter_permission_name_max_length','2022-02-03'),(8,'auth','0003_alter_user_email_max_length','2022-02-03'),(9,'auth','0004_alter_user_username_opts','2022-02-03'),(10,'auth','0005_alter_user_last_login_null','2022-02-03'),(11,'auth','0006_require_contenttypes_0002','2022-02-03'),(12,'auth','0007_alter_validators_add_error_messages','2022-02-03'),(13,'auth','0008_alter_user_username_max_length','2022-02-03'),(14,'auth','0009_alter_user_last_name_max_length','2022-02-03'),(15,'auth','0010_alter_group_name_max_length','2022-02-03'),(16,'auth','0011_update_proxy_permissions','2022-02-03'),(17,'auth','0012_alter_user_first_name_max_length','2022-02-03'),(18,'sessions','0001_initial','2022-02-03'),(19,'categories','0001_initial','2022-02-03'),(20,'products','0001_initial','2022-02-03'),(21,'categories','0002_auto_20220203_0558','2022-02-03'),(22,'categories','0003_auto_20220203_0605','2022-02-03'),(23,'categories','0004_auto_20220203_0652','2022-02-03'),(24,'products','0002_auto_20220203_0652','2022-02-03'),(25,'products','0003_auto_20220203_0653','2022-02-03'),(26,'products','0004_auto_20220203_0654','2022-02-03'),(27,'products','0005_product_prdslug','2022-02-04'),(28,'products','0006_product_product_image','2022-02-04'),(29,'products','0007_productimage','2022-02-04'),(30,'products','0008_alter_productimage_prdiimage','2022-02-04'),(31,'products','0009_alter_productimage_prdiimage','2022-02-04'),(32,'products','0010_auto_20220204_0538','2022-02-04'),(33,'products','0011_auto_20220204_0542','2022-02-04'),(34,'products','0012_auto_20220204_0543','2022-02-04'),(35,'products','0013_auto_20220204_0548','2022-02-04'),(36,'products','0014_auto_20220204_0557','2022-02-04'),(37,'accounts','0001_initial','2022-02-05'),(38,'orders','0001_initial','2022-02-05'),(39,'orders','0002_payment','2022-02-05'),(40,'orders','0003_country','2022-02-05'),(41,'orders','0004_payment_country_code','2022-02-05'),(42,'categories','0005_rename_main_category_maincategory_super_category','2022-02-07'),(43,'categories','0006_auto_20220207_0740','2022-02-07'),(44,'categories','0007_alter_supercategory_slug','2022-02-07'),(45,'categories','0008_alter_supercategory_slug','2022-02-07'),(46,'products','0015_alter_product_prdslug','2022-02-07'),(47,'categories','0009_auto_20220207_0803','2022-02-07'),(48,'products','0016_product_product_vendor','2022-02-08'),(49,'products','0017_alter_product_product_vendor','2022-02-08'),(50,'products','0018_alter_product_product_vendor','2022-02-08'),(51,'products','0019_alter_product_product_vendor','2022-02-08'),(52,'products','0020_alter_product_product_vendor','2022-02-08'),(53,'products','0021_alter_product_product_vendor','2022-02-08'),(54,'products','0022_auto_20220208_2246','2022-02-08'),(55,'products','0023_product_product_image_sale','2022-02-16'),(56,'products','0024_alter_product_product_image_sale','2022-02-16'),(57,'categories','0010_auto_20220216_0650','2022-02-16'),(58,'categories','0011_alter_maincategory_category_image','2022-02-16'),(59,'categories','0012_auto_20220216_0657','2022-02-16'),(60,'categories','0013_supercategory_product_count','2022-02-16'),(61,'categories','0014_remove_supercategory_product_count','2022-02-16'),(62,'home','0001_initial','2022-02-17'),(63,'home','0002_alter_carousel_carimage','2022-02-17'),(64,'home','0003_ads','2022-02-17'),(65,'home','0004_rename_ads_homeads','2022-02-17'),(66,'home','0005_rename_homeads_homead','2022-02-17'),(67,'home','0006_homead_image_position','2022-02-17'),(68,'categories','0015_alter_maincategory_super_category','2022-02-17'),(69,'categories','0016_auto_20220217_0724','2022-02-17'),(70,'products','0025_auto_20220217_0725','2022-02-17'),(71,'categories','0017_auto_20220217_0754','2022-02-17'),(72,'home','0007_alter_carousel_carimage','2022-02-17'),(73,'categories','0018_auto_20220217_0756','2022-02-17'),(74,'home','0008_alter_carousel_carimage','2022-02-17'),(75,'home','0009_rename_homead_homeadsidebar','2022-02-17'),(76,'home','0010_homeadmiddlebar','2022-02-17'),(77,'home','0011_auto_20220217_1032','2022-02-17'),(78,'home','0012_alter_homeadmiddlesmall_ad_url','2022-02-17'),(79,'home','0013_rename_homeadmiddlesmall_homeadsupplier','2022-02-17'),(80,'home','0014_auto_20220217_1118','2022-02-17'),(81,'home','0015_homeaddealtime','2022-02-18'),(82,'home','0016_auto_20220218_0331','2022-02-18'),(83,'home','0017_alter_homeaddealtime_prddiscountprice','2022-02-18'),(84,'accounts','0002_profile_display_name','2022-02-20'),(85,'accounts','0003_profile_slug','2022-02-20'),(86,'accounts','0004_profile_bio','2022-02-20'),(87,'accounts','0005_alter_profile_code','2022-02-21'),(88,'home','0018_vendordetailsadimage','2022-02-22'),(89,'home','0019_auto_20220222_1435','2022-02-22'),(90,'home','0020_hotdealad','2022-02-26'),(91,'products','0026_remove_product_product_image_sale','2022-02-27'),(92,'products','0027_product_product_image_sale','2022-02-27'),(93,'products','0028_remove_product_product_image_sale','2022-02-27'),(94,'products','0029_alter_product_product_image','2022-03-01'),(95,'products','0030_alter_product_product_image','2022-03-01'),(96,'products','0031_alter_product_product_image','2022-03-01'),(97,'products','0032_alter_product_product_image','2022-03-01'),(98,'products','0033_auto_20220301_1729','2022-03-01'),(99,'products','0034_auto_20220301_1739','2022-03-01'),(100,'products','0035_remove_product_prdisactive','2022-03-01'),(101,'products','0036_product_prdisactive','2022-03-01'),(102,'products','0037_alter_product_prdisactive','2022-03-01'),(103,'products','0038_alter_product_prdisactive','2022-03-01'),(104,'products','0039_alter_product_prdisactive','2022-03-01'),(105,'products','0040_auto_20220301_1950','2022-03-01'),(106,'products','0041_remove_product_prdcost','2022-03-01'),(107,'products','0042_product_prdisdeleted','2022-03-01'),(108,'products','0043_alter_product_product_name','2022-03-01'),(109,'products','0044_alter_product_product_image','2022-03-01'),(110,'products','0045_alter_productimage_prdiimage','2022-03-01'),(111,'products','0046_alter_productimage_options','2022-03-02'),(112,'products','0047_alter_productimage_options','2022-03-02'),(113,'products','0048_alter_productimage_options','2022-03-02'),(114,'products','0049_alter_product_product_image','2022-03-02'),(115,'products','0050_auto_20220302_1505','2022-03-02'),(116,'products','0051_alter_product_content','2022-03-02'),(117,'products','0052_alter_product_prdslug','2022-03-02'),(118,'orders','0005_order_email_client','2022-03-10'),(119,'orders','0006_auto_20220310_0400','2022-03-10'),(120,'orders','0007_auto_20220310_2044','2022-03-10'),(121,'orders','0008_auto_20220310_2112','2022-03-10'),(122,'orders','0009_auto_20220311_1840','2022-03-11'),(123,'orders','0010_orderdetailssupplier_ordersupplier','2022-03-11'),(124,'orders','0011_payment_order_supplier','2022-03-11'),(125,'orders','0012_orderdetailssupplier_order_supplier','2022-03-11'),(126,'orders','0013_remove_orderdetailssupplier_order','2022-03-18'),(127,'orders','0014_orderdetailssupplier_order','2022-03-18'),(128,'orders','0015_auto_20220318_1514','2022-03-18'),(129,'orders','0016_order_vendors','2022-03-18'),(130,'orders','0017_remove_order_vendors','2022-03-18'),(131,'orders','0018_auto_20220323_1554','2022-03-23'),(132,'orders','0019_ordersupplier_vendors','2022-03-23'),(133,'orders','0020_rename_vendors_ordersupplier_vendor','2022-03-23'),(134,'orders','0021_ordersupplier_order','2022-03-23'),(135,'orders','0022_auto_20220323_1617','2022-03-23'),(136,'orders','0023_auto_20220323_1729','2022-03-23'),(137,'orders','0024_auto_20220323_1730','2022-03-23'),(138,'orders','0025_auto_20220323_1731','2022-03-23'),(139,'orders','0026_orderdetailssupplier_order_details','2022-03-23'),(140,'orders','0027_remove_payment_order_supplier','2022-03-23'),(141,'orders','0028_ordersupplier_weight','2022-03-24'),(142,'accounts','0006_auto_20220429_0555','2022-04-29'),(143,'categories','0019_auto_20220429_0555','2022-04-29'),(144,'home','0021_auto_20220429_0555','2022-04-29'),(145,'orders','0029_auto_20220429_0555','2022-04-29'),(146,'products','0053_auto_20220429_0555','2022-04-29'),(147,'newsletters','0001_initial','2022-05-02'),(148,'newsletters','0002_auto_20220502_2259','2022-05-02'),(149,'products','0054_productrating','2022-05-03'),(150,'products','0055_auto_20220503_2217','2022-05-03'),(151,'products','0056_auto_20220503_2336','2022-05-03'),(152,'products','0057_auto_20220504_0220','2022-05-04'),(153,'products','0058_auto_20220504_1815','2022-05-04'),(154,'products','0059_auto_20220504_1856','2022-05-04'),(155,'products','0060_auto_20220504_2115','2022-05-04'),(156,'products','0061_auto_20220505_0211','2022-05-05'),(157,'products','0062_auto_20220505_0512','2022-05-05'),(158,'blog','0001_initial','2022-05-05'),(159,'blog','0002_auto_20220505_1841','2022-05-05'),(160,'reports','0001_initial','2022-05-05'),(161,'reports','0002_auto_20220505_2123','2022-05-05'),(162,'reports','0003_auto_20220505_2129','2022-05-05'),(163,'blog','0003_auto_20220505_2157','2022-05-05'),(164,'blog','0004_auto_20220505_2351','2022-05-05'),(165,'blog','0005_comment_publisher','2022-05-05'),(166,'blog','0006_auto_20220506_0020','2022-05-05'),(167,'home','0022_headtextad','2022-05-05'),(168,'home','0023_auto_20220506_0109','2022-05-05'),(169,'settings','0001_initial','2022-05-06'),(170,'settings','0002_contactinfo','2022-05-06'),(171,'settings','0003_auto_20220506_0252','2022-05-06'),(172,'settings','0004_auto_20220506_0257','2022-05-06'),(173,'settings','0005_contactinfo_active','2022-05-06'),(174,'settings','0006_contactinfo_map_link','2022-05-06'),(175,'contact','0001_initial','2022-05-06'),(176,'contact','0002_auto_20220506_0441','2022-05-06'),(177,'contact','0003_auto_20220506_0444','2022-05-06'),(178,'contact','0004_auto_20220506_0446','2022-05-06'),(179,'contact','0005_auto_20220506_0447','2022-05-06'),(180,'pages','0001_initial','2022-05-06'),(181,'pages','0002_auto_20220507_0153','2022-05-07'),(182,'contact','0006_auto_20220507_0155','2022-05-06'),(183,'pages','0003_auto_20220507_0155','2022-05-07'),(184,'pages','0004_auto_20220507_0230','2022-05-07'),(185,'pages','0005_pageslist_active','2022-05-07'),(186,'pages','0006_auto_20220507_0341','2022-05-07'),(187,'settings','0007_auto_20220507_0351','2022-05-07'),(188,'settings','0008_sitesetting','2022-05-07'),(189,'settings','0009_sitesetting_site_url','2022-05-07'),(190,'settings','0010_auto_20220507_0454','2022-05-07'),(191,'accounts','0007_bankaccount','2022-05-08'),(192,'accounts','0008_auto_20220508_0341','2022-05-08'),(193,'accounts','0009_sociallink','2022-05-08'),(194,'payments','0001_initial','2022-05-08'),(195,'accounts','0010_profile_requested','2022-05-08'),(196,'payments','0002_vendorpayments_fee','2022-05-08'),(197,'payments','0003_vendorpayments_method','2022-05-08'),(198,'payments','0004_auto_20220509_0229','2022-05-09'),(199,'payments','0005_auto_20220509_0232','2022-05-09'),(200,'payments','0006_auto_20220509_0253','2022-05-09'),(201,'settings','0011_auto_20220509_0857','2022-05-09'),(202,'settings','0012_delete_stripesetting','2022-05-09'),(203,'home','0024_homeaddealtime_supplier_url','2022-05-18'),(204,'captcha','0001_initial','2022-05-19'),(205,'captcha','0002_alter_captchastore_id','2022-05-19'),(206,'settings','0013_auto_20220522_2031','2022-05-22'),(207,'settings','0014_sitesetting_footer_image','2022-05-28'),(208,'settings','0015_sitesetting_shipping','2022-05-28'),(209,'products','0063_auto_20220611_1431','2022-06-11'),(210,'currencies','0001_initial','2022-06-11'),(211,'currencies','0002_alter_model','2022-06-11'),(212,'currencies','0003_currency_info','2022-06-11'),(213,'currencies','0004_code_primary','2022-06-11'),(214,'currencies','0005_alter_help_text','2022-06-11'),(215,'currencies','0006_increase_name_max_length','2022-06-11'),(216,'accounts','0011_profile_admission','2022-07-14'),(217,'orders','0030_auto_20220720_2037','2022-07-20'),(218,'settings','0016_homepagetheme','2022-08-01'),(219,'accounts','0012_auto_20220814_0432','2022-08-14'),(220,'blog','0007_auto_20220814_0432','2022-08-14'),(221,'categories','0020_auto_20220814_0432','2022-08-14'),(222,'contact','0007_alter_messageslist_id','2022-08-14'),(223,'home','0025_auto_20220814_0432','2022-08-14'),(224,'newsletters','0003_alter_newsletter_id','2022-08-14'),(225,'orders','0031_auto_20220814_0432','2022-08-14'),(226,'pages','0007_alter_pageslist_id','2022-08-14'),(227,'payments','0007_alter_vendorpayments_id','2022-08-14'),(228,'products','0064_auto_20220814_0432','2022-08-14'),(229,'reports','0004_auto_20220814_0432','2022-08-14'),(230,'settings','0017_auto_20220814_0432','2022-08-14'),(231,'products','0065_alter_product_digital_file','2022-08-14'),(232,'products','0066_productsize','2022-10-07'),(233,'products','0067_alter_productsize_name_variation','2022-10-07'),(234,'products','0068_alter_productsize_name_variation','2022-10-07');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(32) DEFAULT NULL,
  `session_data` text,
  `expire_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('blwed6hykxwfhsd7vcehgjnu1x5jl7vq','.eJxVjMsOwiAQRf-FtSE8hgIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmkp1-t4jpkdsO6I7t1nnqbV3myHeFH3Twa6f8vBzu30HFUb-1J1UmoiRtLEApaknZaOlsIgPCo4zeaA1WGaeFKi7TlAjACQTji4rs_QHzIDfW:1nFS0V:zO99uGBqkLNs4eeo1dWSWKGOR4Ub634cNknDsfjTs4w','2022-02-17'),('dvdny93mias4luudqq80rdbnszcavhj4','.eJxVjsEOwiAQRP-FsyEFlgIevfcbGtgFWzUlKe3J-O9CwkFPk-zMvpk3m_15LPNZ4j6vxK5MsMvvLXh8xq0Z9PDbPXPM27GvgbcI727hU6b4uvXsH2DxZanfjmQaiVCYkIAwKEFRK2ENkobBeRGcVgqM1FYNMtlIIxKAHTxol2SoUKwdldREtpV5pz4aPl_BE0CD:1nGVVP:-6hmQfpSesseScjSI0fMSE9iTiIbM1v-bDp5bM1JpKQ','2022-02-20'),('pbm2c0xguovwcz2md0y59dybqbcthb08','.eJxVjssOwiAQRf-FdUPKAAVcuvcbGpgBqRpI-lgZ_12asNDVJPdx5r7Z7I89z8cW13khdmGCDb9a8PiM5TTo4cu9cqxlX5fAzwjv7sZvleLr2rN_gOy33NqOIE1EKExIijBIQVFLYQ2SVqPzIjgtpTKgrRwh2UgTklJ29Eq7BKFB60p9JMDAsH1s3POAYJ8vB4RAsw:1nGbWa:WrdjswIMAkU_XEiZ6rAmnV10eZZAf3MMnO4_fNnld_Y','2022-02-20'),('0lazay31nqzkycgda4bm5p0geq40jbyg','eyJvcmRlcl9pZCI6IjIwIn0:1nGXnR:sUml3HAkIPCuukvzgxVq3e2V0wMcSqPVqvVphv-_0tE','2022-02-20'),('lz7o2apywaf3l2o99zdycbcv7u9oc21z','eyJvcmRlcl9pZCI6IjE5In0:1nGYdR:VphnLP5ytAhX3iuVUENdrJrSfdth3xyQj6_29siMZ2M','2022-02-20'),('o8b7bbtp2c81frz6fhv4st04s0j36qsg','eyJvcmRlcl9pZCI6IjIwIn0:1nGYh5:zTWo8-ySk1HERQTaolQjugvOmiKhc85C9fj6aVZUlMU','2022-02-20'),('938ymqja67u5p6jnsl6vxnhnrfhcapak','eyJvcmRlcl9pZCI6IjUifQ:1nGZ51:7QanNDzNIO8Tc3m7QhiEHoBMBiDsx48FTZUkv8YD__o','2022-02-20'),('mfex8b81z432n1xiogpmibppx64mpb7b','.eJxVjMsOwiAQRf-FtSE8hgIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmkp1-t4jpkdsO6I7t1nnqbV3myHeFH3Twa6f8vBzu30HFUb-1J1UmoiRtLEApaknZaOlsIgPCo4zeaA1WGaeFKi7TlAjACQTji4rs_QHzIDfW:1nHV9b:-o611YWxzI2pWhZZzs_YPFFylieigD-bQD4sIl73ETI','2022-02-22'),('wkaii9242m4o22mlvy82f8fi24c9ysog','.eJxVjEsOAiEQBe_C2hC-Qrt07xkIdIOMGkiGmZXx7oZkFrp9VfXeLMR9q2EfeQ0LsQuz7PS7pYjP3CagR2z3zrG3bV0Snwo_6OC3Tvl1Pdy_gxpHnbXVSgCgVcpb4xA0eKtcUVISFYMFHIF0wmgUPmfI3mkQLmHSvpwJ2OcLthQ3FA:1nKyBT:S9XFJFbZdADKzBcbMjGfsCZ-rczwCvPvW8ftPw238o0','2022-03-04'),('dlbcfyri8fgrslrkscialanvbh1alo7e','.eJxVjEsOAiEQBe_C2hC-Qrt07xkIdIOMGkiGmZXx7oZkFrp9VfXeLMR9q2EfeQ0LsQuz7PS7pYjP3CagR2z3zrG3bV0Snwo_6OC3Tvl1Pdy_gxpHnbXVSgCgVcpb4xA0eKtcUVISFYMFHIF0wmgUPmfI3mkQLmHSvpwJ2OcLthQ3FA:1nL1HP:C7sb1vLa6VbZwWsBkdc1A9eyO37L3FbLwYlYymCg8Zs','2022-03-04'),('kcngtbheymguuej5hx1vvy2ek9j0vgb0','.eJxVjMsOwiAQRf-FtSE8hgIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmkp1-t4jpkdsO6I7t1nnqbV3myHeFH3Twa6f8vBzu30HFUb-1J1UmoiRtLEApaknZaOlsIgPCo4zeaA1WGaeFKi7TlAjACQTji4rs_QHzIDfW:1nMBlt:hy2suFg-gZiQ8vJnIMhoVYDpAYs4L-PFqGXS61sMPR8','2022-03-07'),('jcep4sx9nlu221v76xnitzq9jxmzyqpa','.eJxVjMsOwiAQRf-FtSE8hgIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmkp1-t4jpkdsO6I7t1nnqbV3myHeFH3Twa6f8vBzu30HFUb-1J1UmoiRtLEApaknZaOlsIgPCo4zeaA1WGaeFKi7TlAjACQTji4rs_QHzIDfW:1nMBNF:8f9mV5JXUBLO-N9JRY7BmaUe56UWjODq4LwIZ2_49S0','2022-03-07'),('pup6tpmokwzcijvkn3vlv0eoyeoekr80','e30:1nMPtm:fw7B3JiUCIXPHlTnjaVMf-xF9Ld8ZdeGgqmawvlhJt4','2022-03-08'),('6i42g26z7rnyemidpuokzp20y13e5ebo','e30:1nMPug:PxiYbh2P7vzKhfna2OUi6EBuPqfaLHryy2FOpDR_-KQ','2022-03-08'),('5a9xy4r65hfammmgjsqvmy05skxe0u7v','e30:1nMPvl:JUeDJlnYaFQaPJGmQVS33g0XWKXcZmulB6H9hI-qPYA','2022-03-08'),('0t2afr510n5ymff1a5l8vh4l5rj2vyw6','e30:1nMPw9:X92uDrD_XbI7Xdck5pjojtSBAdbVkFujel4FNYKBit4','2022-03-08'),('8xnpkmc9f34a2fbgew0udi8pm58lw353','e30:1nMPzy:A7MJPn01fPiiai4-1ZSHJMXuqY6OU5Jt191TBDl4Qds','2022-03-08'),('22sur3dfi0kkzcze84htwyqcj4bmcvmy','e30:1nMQ1t:eiFzczeSRnR36k_om0lGJNe4XIDvpQY9sl9bQQuETho','2022-03-08'),('6f2d0rc0gz6r5vio8yyvs11bwbr16yao','e30:1nMQ2q:jCeTnqy1LUsCIKUQfXEMQATbtFlySEEY7-hDm23u_cE','2022-03-08'),('woh9fsvyhxp2f23n6th0uv25x9dkf4jx','.eJxVjssOwiAURP-FtSG8bgGX7vsNBLggVVMSaFfGf7dNWOh2zszJvInz-1bc3lNzC5Ir4eTymwUfn2k9AT78eq801nVrS6BnhQ7a6VwxvW6j-ycovpdjbVHkCTFyHbLCGCTHBJIbHREUs54HC1IqLcBIJrJJOEVUyjCvwGYRDmltOE6C_XwBILc8Ng:1nMXlv:g_n9vRhSWxQcgLeLFNrI-plmsAf9YBU6pAzjR8Xorhg','2022-03-08'),('047jmxuyv3s2id6vf7hcy2q4617cnlly','.eJxVjMsOwiAQRf-FtSE8hgIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmkp1-t4jpkdsO6I7t1nnqbV3myHeFH3Twa6f8vBzu30HFUb-1J1UmoiRtLEApaknZaOlsIgPCo4zeaA1WGaeFKi7TlAjACQTji4rs_QHzIDfW:1nOJEP:hvxwCsyPM9ou4FoFyTQqyOj4NmV0gBUpAiVq0C446Hw','2022-03-13'),('jnpg02fqea5yeicngotl8rwwz1cais5w','.eJxVjMsOwiAQRf-FtSFMeQgu3fcbyDBDpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxYXocXpd0tIj1x3wHestyap1XWZk9wVedAux8b5eT3cv4OCvXzrQIyeLDmicAawyhhWwfikwQIrPQzOMeo8AYfgJgRKCjwZ441KQbN4fwDYqTdp:1nPBKw:OcpyRejhIR8RCzJ4G7KReNMtFEu_MEF3xdCgAijB_fg','2022-03-15'),('157obx9rzcrhg82g6d4t10dbrhk228fi','.eJxVjrsOAiEURP-F2hDeD0v7_QYCXJBVAwnsVsZ_dzeh0HbOzMm8kfP7Vtw-UncroCui6PKbBR-fqZ4AHr7eG46tbn0N-KzgSQdeGqTXbXb_BMWPcqwtsKwAItUhC4iBU0iSU6MjSEGsp8FKzoVm0nDCskmgIghhiBfSZhYOaeswTyr6-QIgqjwv:1nPsa3:P5eSDNMWrao_0BuLwVM1KT5f2cDJ6MVlH3GlGyy1b5g','2022-03-17'),('om8dhjvujwha86mrn62rki0mmk3pnx02','.eJxVjMsOwiAQRf-FtSE8hgIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmkp1-t4jpkdsO6I7t1nnqbV3myHeFH3Twa6f8vBzu30HFUb-1J1UmoiRtLEApaknZaOlsIgPCo4zeaA1WGaeFKi7TlAjACQTji4rs_QHzIDfW:1nPtG6:AiJwEaIZQZEwUVLOeS2-PpxVagAoOfTnrB5A8bENq1Y','2022-03-17'),('gujaflzzzee0zzr0rkvc6etehptaswaa','.eJxVjEEOgjAQRe_StWmg7TCtS_ecoZnOjIIaSCisjHdXEha6_e-9_zKZtnXIW9Ulj2LOpg3m9DsW4odOO5E7TbfZ8jyty1jsrtiDVtvPos_L4f4dDFSHb-2RkuuolOARBEGThiAACVlajI7kygGdaiTowINrGuA2Rk4eE_lg3h_8ZTdf:1nS8SY:N8fbCUGQCvAFxlaMiuN8CxvqhV88I54k04DuErkgCVU','2022-03-24'),('1rv8ppwnttqwpnsp8w78k4p2ptugjadq','.eJxVjEEOgjAQRe_StWmg7TCtS_ecoZnOjIIaSCisjHdXEha6_e-9_zKZtnXIW9Ulj2LOpg3m9DsW4odOO5E7TbfZ8jyty1jsrtiDVtvPos_L4f4dDFSHb-2RkuuolOARBEGThiAACVlajI7kygGdaiTowINrGuA2Rk4eE_lg3h_8ZTdf:1nS8Ya:xrTAUu5tqncM7Fe1n71csCU22TJa37J_7cPO4okeKEo','2022-03-24'),('1djkynocoj829ipj2ot7p3qlyy6sfa8x','.eJxVjDsOwjAQBe_iGlnxb72hpOcM1trr4ACypTipEHeHSCmgfTPzXiLQtpaw9byEmcVZKC9Ov2Ok9Mh1J3ynemsytbouc5S7Ig_a5bVxfl4O9--gUC_fGnmwjrXmqNgOHiZSEwMDeIw2OrA2O_QOISGYNI4RLGgF3hhCMj6J9wf29Tcz:1nSiQw:6apd9nNTaGjJTrC4PpOY25tqNwmFZvwhI-nrVh9r-dc','2022-03-25'),('04z9njxlp641c9hbj82o8i303suahd8p','.eJxVjMsOwiAQRf-FtSE8hgIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmkp1-t4jpkdsO6I7t1nnqbV3myHeFH3Twa6f8vBzu30HFUb-1J1UmoiRtLEApaknZaOlsIgPCo4zeaA1WGaeFKi7TlAjACQTji4rs_QHzIDfW:1nVAfp:vPkfITdcKFHO4sBtzPzBVd_NgMcqM2wRYjZ5ktwNe8k','2022-04-01'),('qaxxjhji8te9a0vn47vikiv17nrmbanb','.eJxVjDsOwjAQBe_iGlnxb72hpOcM1trr4ACypTipEHeHSCmgfTPzXiLQtpaw9byEmcVZKC9Ov2Ok9Mh1J3ynemsytbouc5S7Ig_a5bVxfl4O9--gUC_fGnmwjrXmqNgOHiZSEwMDeIw2OrA2O_QOISGYNI4RLGgF3hhCMj6J9wf29Tcz:1nXPHR:vxyFZ8GHwwLTR6zAsgRTCF-S0AEjWvvNoSnOf2yr4gc','2022-04-07'),('xe6wka4dc5f656ekgff8t9zs9aap6qfu','.eJxVjDsOwjAQBe_iGlnxb72hpOcM1trr4ACypTipEHeHSCmgfTPzXiLQtpaw9byEmcVZKC9Ov2Ok9Mh1J3ynemsytbouc5S7Ig_a5bVxfl4O9--gUC_fGnmwjrXmqNgOHiZSEwMDeIw2OrA2O_QOISGYNI4RLGgF3hhCMj6J9wf29Tcz:1nXRWy:JvVof0DpHhgE5g6Qj1pGWxsQ2U4Lu168HSYenYesglE','2022-04-07'),('d45axng2625wybhe61i05gjdzmlvrvem','.eJxVjDsOwjAQBe_iGlnxb72hpOcM1trr4ACypTipEHeHSCmgfTPzXiLQtpaw9byEmcVZKC9Ov2Ok9Mh1J3ynemsytbouc5S7Ig_a5bVxfl4O9--gUC_fGnmwjrXmqNgOHiZSEwMDeIw2OrA2O_QOISGYNI4RLGgF3hhCMj6J9wf29Tcz:1nXe6B:5oF2Hbv01WtT7hzE4a_vScWGowpSimuJTNylppmAs_c','2022-04-08'),('h1vruucbyn05eubg7vjpay1rtlu1e1u6','.eJxVjMsOwiAQRf-FtSE8hgIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmkp1-t4jpkdsO6I7t1nnqbV3myHeFH3Twa6f8vBzu30HFUb-1J1UmoiRtLEApaknZaOlsIgPCo4zeaA1WGaeFKi7TlAjACQTji4rs_QHzIDfW:1nXr26:0eee-557TnEc1QHKbW0RJGGvxzcir0TVCebp4S6iyBI','2022-04-08'),('kmxvgp8lodg9yaecvcghaxivx67fzs0r','.eJxVjjsOgzAQRO_iOrLwb9dOmZ4zoLXXxCQRlgxUUe4ekCiSdt7M07zFQNtahm3JbZhYXIVCcfkNI6Vnng_CD5rvVaY6r22K8qjIky6yr5xft7P7Jyi0lH3tubOOteao2HYII6mRgQHQRxsdWJudR-cheTAphAgWtAI0hjwZTLu0Nj5fKhc-X1cOO8Q:1nY3s5:kfb5KCxtHSFn0bEnhVd2335tWmyM-pr0DFnLjt7zrx0','2022-04-09'),('4mzmodr5ltibzrw4nedaycddnec5js9k','.eJxVjrsOAiEURP-F2hDeD0v7_QYCXJBVAwnsVsZ_dzeh0HbOzMm8kfP7Vtw-UncroCui6PKbBR-fqZ4AHr7eG46tbn0N-KzgSQdeGqTXbXb_BMWPcqwtsKwAItUhC4iBU0iSU6MjSEGsp8FKzoVm0nDCskmgIghhiBfSZhYOaeswT1LFP19cvTxi:1nY4HR:KUExRkG-L52r4NWw7pYegpvh_EK_LoTD7-GsImZk7e4','2022-04-09'),('zx7e5bbelifn5zbsepx6cu0aldeqnew9','eyJvcmRlcl9pZCI6IjE2MSJ9:1nY4Aw:ZE1GxeT8_kSHEWILmjMHGf7H7rVa1NhkzIHa9oOfYPw','2022-04-09'),('ch91zi46vl4ujqcb0fxznh471pe3g6ji','eyJvcmRlcl9pZCI6IjE2MiJ9:1nY4FO:erd8TPBfHCkZYL4bPjeMG3jf6o2lAZdoV3p9ix1-bO4','2022-04-09'),('7a5iwin00bve8m4nbcv02l9oehl1o97d','eyJvcmRlcl9pZCI6IjE2MyJ9:1nY4Hj:ckGf73D6RahEO3cwtLCNlNgQD8DKQV6DN1C9xTdJ424','2022-04-09'),('ytbkmx1gbas3et20rucyezei8z2k4hb1','.eJxVjrsOAiEURP-F2hDeD0v7_QYCXJBVAwnsVsZ_dzeh0HbOzMm8kfP7Vtw-UncroCui6PKbBR-fqZ4AHr7eG46tbn0N-KzgSQdeGqTXbXb_BMWPcqwtsKwAItUhC4iBU0iSU6MjSEGsp8FKzoVm0nDCskmgIghhiBfSZhYOaeswT1IlP19cwTxk:1nYBNb:-hGWwm5ihgnXR30_puKcvWHBWJfBUxnatZP_XcGhYiI','2022-04-09'),('63gq2e9f5dxkbe13fdg93m4tbadppjzt','eyJvcmRlcl9pZCI6IjE2NSJ9:1nYBOs:TBTBht-lauB832hnjakjAap9_dSyZfIL0yC6ocxuYeA','2022-04-09'),('9h0e5vzhnsdcn3bvzk4kf1yo1g2f83b8','.eJxVjrsOAiEURP-F2hDeD0v7_QYCXJBVAwnsVsZ_dzeh0HbOzMm8kfP7Vtw-UncroCui6PKbBR-fqZ4AHr7eG46tbn0N-KzgSQdeGqTXbXb_BMWPcqwtsKwAItUhC4iBU0iSU6MjSEGsp8FKzoVm0nDCskmgIghhiBfSZhYOaeswT1KlP19cxTxm:1nYE9r:9TZZF-ltWYIS9xD7nAw01aQ3-C3Yfq1u3j_H8bsuaZ0','2022-04-09'),('pslon8cu18f1vwls5nxxk4uabgragb68','.eJxVjrsOAiEURP-F2hDeD0v7_QYCXJBVAwnsVsZ_dzeh0HbOzMm8kfP7Vtw-UncroCui6PKbBR-fqZ4AHr7eG46tbn0N-KzgSQdeGqTXbXb_BMWPcqwtsKwAItUhC4iBU0iSU6MjSEGsp8FKzoVm0nDCskmgIghhiBfSZhYOaeswT1JlPl9cxzxn:1nYERh:7qYvDehBF0eofWFjN9xMmTyufA4B-TsVLYcZGP3gapc','2022-04-09'),('a6fb6h9ndbiz011k3zj83rws2w90an7e','eyJvcmRlcl9pZCI6IjE2OCJ9:1nYETh:aq9_A9WP6Lyw8f_-TYGkaaWG9U3yoEr1Jt8mXruTj_w','2022-04-09'),('t9xdr3nyoy14wf2fze2cj2gtquy0fbpt','.eJxVjrsOAiEURP-F2hDeD0v7_QYCXJBVAwnsVsZ_dzeh0HbOzMm8kfP7Vtw-UncroCui6PKbBR-fqZ4AHr7eG46tbn0N-KzgSQdeGqTXbXb_BMWPcqwtsKwAItUhC4iBU0iSU6MjSEGsp8FKzoVm0nDCskmgIghhiBfSZhYOaeswT1JlP19cyTxo:1nYUob:j7SHk3sj8FRXAtZXEMe2f40u-SR4m-gAZD5LDX_3gO0','2022-04-10'),('dohrz6g7znxq77xrnkttfw6i2kzydj6x','.eJxVjssOwiAURP-FtSGltJTr0r3fQLgPpGpKQtuV8d-1CQvdzpk5mZcKcd9y2FepYWZ1VkadfjOM9JDlAHyPy61oKstWZ9RHRTe66mtheV5a90-Q45qPtbF2GsWjwIA9WDGckGgERk_R8hD7iQ10ngjIcTJWpt5RGi1QwtR9paVyO2kcvD99-j2P:1nZcup:2CWoFF5NRcAXCUIlrVWxn8dqX8vQpdvAEOuwR3J8J20','2022-04-13'),('jjbe1bfbheejv7d9q3g4u07vgncsgt9s','.eJxVjDsOwjAQBe_iGlnxb72hpOcM1trr4ACypTipEHeHSCmgfTPzXiLQtpaw9byEmcVZKC9Ov2Ok9Mh1J3ynemsytbouc5S7Ig_a5bVxfl4O9--gUC_fGnmwjrXmqNgOHiZSEwMDeIw2OrA2O_QOISGYNI4RLGgF3hhCMj6J9wf29Tcz:1nYv80:jO7GM1uIr8FQwU4mUu4h72ur5mxowLRReOFmfL4HLvM','2022-04-11'),('dzn8eka3ljht9jv0a31kqxitxdwem43d','.eJxVjDkOwjAUBe_iGlne4iSU9JzB-v4LDiBHipMKcXeIlALaNzPvpRJsa0lb4yVNpM7KqtPvlgEfXHdAd6i3WeNc12XKelf0QZu-zsTPy-H-HRRo5VvH0ToSZPaQjXQcg6eBfY9MvUUXOkTwkQYyJA5HCUJMZHIUK5g5q_cHGUQ6EA:1ncG5y:oxa2Xhk_ffTtibzCnOcvCk4cRAFj89tMIprM6azR_v0','2022-04-21'),('hmg2tl76ggxnaza4eigzf0dzcua1i6xy','.eJxVjDkOwjAUBe_iGlne4iSU9JzB-v4LDiBHipMKcXeIlALaNzPvpRJsa0lb4yVNpM7KqtPvlgEfXHdAd6i3WeNc12XKelf0QZu-zsTPy-H-HRRo5VvH0ToSZPaQjXQcg6eBfY9MvUUXOkTwkQYyJA5HCUJMZHIUK5g5q_cHGUQ6EA:1ng7N6:KuEP45If5-nBSTHfbY-es5aMhokojKNiLqvzDZy6C4I','2022-05-01'),('aiyr36alzeovekoi0grgoz3vipv05t2v','.eJxVjDkOwjAUBe_iGlne4iSU9JzB-v4LDiBHipMKcXeIlALaNzPvpRJsa0lb4yVNpM7KqtPvlgEfXHdAd6i3WeNc12XKelf0QZu-zsTPy-H-HRRo5VvH0ToSZPaQjXQcg6eBfY9MvUUXOkTwkQYyJA5HCUJMZHIUK5g5q_cHGUQ6EA:1nimJv:BGlZFdPqZcs7d4_vXMnG5Lh87fb059-tWJBUcT9K4f8','2022-05-09'),('f4mfiee76ryys2wkbnlvan1mqofqv0ug','.eJxVjDkOwjAUBe_iGlne4iSU9JzB-v4LDiBHipMKcXeIlALaNzPvpRJsa0lb4yVNpM7KqtPvlgEfXHdAd6i3WeNc12XKelf0QZu-zsTPy-H-HRRo5VvH0ToSZPaQjXQcg6eBfY9MvUUXOkTwkQYyJA5HCUJMZHIUK5g5q_cHGUQ6EA:1nkJKv:PE3SlkMpBXcWZPTsGoik9e5oMd51tjCqLZ2JOl7rW4I','2022-05-13'),('hnbbfcast6rem25687kdrfsz2bzr7d31','.eJxVjDkOwjAUBe_iGlne4iSU9JzB-v4LDiBHipMKcXeIlALaNzPvpRJsa0lb4yVNpM7KqtPvlgEfXHdAd6i3WeNc12XKelf0QZu-zsTPy-H-HRRo5VvH0ToSZPaQjXQcg6eBfY9MvUUXOkTwkQYyJA5HCUJMZHIUK5g5q_cHGUQ6EA:1nkJqG:SmWhPlsxj8Amfm057urhWSlUrOE-RlBzK0JPO5dFrcQ','2022-05-13'),('vi9dhlt1wooncj5hfdg1kpxqs42pts84','.eJxVjDkOwjAUBe_iGlne4iSU9JzB-v4LDiBHipMKcXeIlALaNzPvpRJsa0lb4yVNpM7KqtPvlgEfXHdAd6i3WeNc12XKelf0QZu-zsTPy-H-HRRo5VvH0ToSZPaQjXQcg6eBfY9MvUUXOkTwkQYyJA5HCUJMZHIUK5g5q_cHGUQ6EA:1nkeO7:rxvqPtFMCopWDecbCq8chUNppW0mlq_2RMgVcPqINAQ','2022-05-14'),('y7ig1nzg10dyr5ua4zn9dltmob8my2v7','.eJyrVipOTSxKzogvKMpPKU0uUbJSKk5U0oGJJieWpKbnF1XGF6fmpIJl3fLzUxTUFJxSy1KLEtNTlWoBIVkXdA:1nl2Pt:stHWlaGfA_mkBcU6lTMx5Fu__nhrf5WQGxcx2ge275A','2022-05-15'),('b23jq8hzxx7a0i8yph6x2l85pajx39do','.eJyrVipOTSxKzogvKMpPKU0uUbJSSlTSgQkmJ5akpucXVcYXp-akgiUdc3IUnCGimanFSrUA8tgXMQ:1nl3Wr:t3N9Vnfsl47u7ljZpRzHKGu3zH-2bxi1dvjozdkjyBE','2022-05-15'),('ea0t1ej977xqoihmydnogdam0im3ii8o','.eJyrVipOTSxKzogvKMpPKU0uUbJSKk5U0oGJJieWpKbnF1XGF6fmpIJlHXNyFJwhopmpxUq1AA6DF6Q:1nl3wE:DsGZH2MjoMs5VbarXeyjvoZFgawk6U_Rj8tcRX6EVEY','2022-05-15'),('2zynt6ksm4zfbk2hlep3j85np3wl511w','.eJyrVipOTSxKzogvKMpPKU0uUbJSKk5U0oGJJieWpKbnF1XGF6fmpIJlHXNyFJwhopmpxUCVUI3F8cn5pXlAFca1ABLYHn0:1nl4Ac:XAj--pFAhLVFtWc1FSiBp0PF7e3IiLfyo58PDyW3ifg','2022-05-15'),('84a7eigfg1d5mys7skm4o670ek3zsk6f','.eJyrVipOTSxKzogvKMpPKU0uUbJSSlTSgQkmJ5akpucXVcYXp-akgiUdc3IUnCGimanFQJVQfcXxyfmleUAVhga1AAyaHjg:1nlg4q:Q6Gnzdn-JjiYvRUnsI-eEUjMG5gt_tEFf1rcvkEjoAQ','2022-05-17'),('ttv499mbddyy2tsse36u0s0du8m8rqlx','.eJxVjDsOwjAQBe_iGln-fyjpOYO1Xq9xADlSnFSIu0OkFNC-mXkvlmBbW9oGLWkq7MykZ6ffMQM-qO-k3KHfZo5zX5cp813hBx38Ohd6Xg7376DBaN-aUDirMygRi6aM2ntrfFCGQsVYRUEgFYwTlWJ0niJGLEDSqiy0tpK9PxaAOEU:1nm3JJ:_KCMlhGWzAW5GjfCsyVYEDXxKk1Z9Lya4f5vX52w5zk','2022-05-18'),('oa73z343kghxx6eu3q4zcbq5f4mo0de9','.eJxVjDsOwjAQBe_iGln-fyjpOYO1Xq9xADlSnFSIu0OkFNC-mXkvlmBbW9oGLWkq7MykZ6ffMQM-qO-k3KHfZo5zX5cp813hBx38Ohd6Xg7376DBaN-aUDirMygRi6aM2ntrfFCGQsVYRUEgFYwTlWJ0niJGLEDSqiy0tpK9PxaAOEU:1nmHxK:9Dascql-irqqezAIqap_lGlrF5yqCgBYLQ_Wc9w34Ls','2022-05-18'),('1szvkplxz5c6olc8fbp3usbjsxtqjg9u','.eJxVjMsOgjAQRX_FdE1IoZRSd-rab2im0-GhhJq2LIzx3wXFBdtzz7kvFgkC9uYRvJsxsSPrWPaHCIk6H54m0kjf8TSOh8uPDhQXc-uiQT9Pi9FkzMCcejNHCmZwS1MotoMW8E7TurgbTJ3P0U8pDDZflXxbY371jsbz5u4Oeoj9UhPyWgoLJddOkEWhlKxUU1bUtKhb7hCobKqat6R1rUijRgdUyNJyIWTB3h-WJVWN:1nmMvf:OEPubkZ9hSrjMWZlE01L1A_nekOA766YEkeqYEs4YQ4','2022-05-18'),('m4m6lcqj1si8f6cjzigxoz4emkg0hd6x','.eJxVjEEOwiAQRe_C2pACQ2lduvcMZIYBqRpISrsy3l1JutDte-__l_C4b9nvLa5-YXEWahSnX0gYHrF0w3cstypDLdu6kOyJPGyT18rxeTnav4OMLX_XgJC0IWejGw0CT4CDpWQ6TxRYO1YTGRusJoCEFN2ggGcMeuaEWrw_G5E45Q:1nmN1Q:FRkts7jrv2ww3q36rSzns-s3UzfwQoNQQNMnn1avWVY','2022-05-18'),('yfuvy1gphvmnylp2erecnqc26hch2zbj','.eJxVjDkOwjAUBe_iGlnxD94o6XMG6y8ODiBHipMKcXeIlALaNzPvpRJua0lby0uaRF2Uier0OxLyI9edyB3rbdY813WZSO-KPmjTwyz5eT3cv4OCrXxrlBGMR2KDCBG8CbH3FsGSsKdsMYjDGEHOFCJD7zPb4DtnpHMwCqr3Bx3IOGk:1nnDYa:ipw_5xTroIkVKPnavP-0MXO-4GH5BNjnfFHSl4hJUr4','2022-05-21'),('oq90igq4ifo0r2wip0ou91utaop5v7wg','.eJxVjkEOgjAURO_StWkoLQVcuucMpP3zv0UNTQqsjHcXEha6nTfzMm81hm1N47ZwGSeoqzLq8pvFQE-eD4BHmO9ZU57XMkV9VPRJFz1k8Ot2dv8EKSxpX_ve1BBitiFW0rB3Fh3blhitodo1RMF6dKggNfXiBAxU0YsRihx3aS44T5rWfL6kNz6b:1nnSnf:EA-QxijNS-FrNxAw6G7zEE-V_ttM1d_eEfeNeaa0Odk','2022-05-21'),('fb9mmqcjkqiqbbul8ndz6wxn1gxqp1cd','.eJxVjDkOwjAUBe_iGlne4iSU9JzB-v4LDiBHipMKcXeIlALaNzPvpRJsa0lb4yVNpM7KqtPvlgEfXHdAd6i3WeNc12XKelf0QZu-zsTPy-H-HRRo5VvH0ToSZPaQjXQcg6eBfY9MvUUXOkTwkQYyJA5HCUJMZHIUK5g5q_cHGUQ6EA:1nnSm6:rr1oPCk_195EgtBqVNthTaa95QhbSb9Ul4Zedy3DQ6o','2022-05-21'),('703fgj2puvwqisop0c6cd144axrnpog7','.eJxVjDkOwjAUBe_iGlnxD94o6XMG6y8ODiBHipMKcXeIlALaNzPvpRJua0lby0uaRF2Uier0OxLyI9edyB3rbdY813WZSO-KPmjTwyz5eT3cv4OCrXxrlBGMR2KDCBG8CbH3FsGSsKdsMYjDGEHOFCJD7zPb4DtnpHMwCqr3Bx3IOGk:1nnszF:cfLdPUMOJ53IA-98hnMPR-057AMte6noxhrfadmlY30','2022-05-23'),('d8yzoj4dbfzuwd7s8t7lpp7x3eorn5pq','.eJxVjjsOgzAQRO_iOrLwBwMp03MGZO_sBpIIS3yqKHcPSC6Sdt7M07zVEPdtHPaVl2GCuiqjLr9ZivTk-QR4xPmeNeV5W6akz4oudNV9Br9upfsnGOM6HuvQGQshZhdTJTUH79Cya4jRGLK-JoouoEUFsdSJFzBQpSBGKHE6pHlBOWma-vMFpD8-nw:1nnyBu:AX9XIkkfEHACMmcQSt2n1z3guWXSwwVQl0xam8vxN9M','2022-05-23'),('qa0cthzn6g94tqzusasn4ofvoghxxjaj','eyJvcmRlcl9pZCI6IjE3MyJ9:1nny6P:Z9bHID8Uy-qKWlO9Di1EtlDGefDUYpvR6V98t40Q58I','2022-05-23'),('1rfyfoygjzs5kbxbag5efgcvcqml74w5','eyJvcmRlcl9pZCI6IjE3NSJ9:1nnyCH:i9pYYPFsbvkPR-r2QVc6ZD5bQU8kIC82HPsQp4m2QvI','2022-05-23'),('7k60m2kvjf7jj3upi9jf4dq16ssnfvtg','.eJxVjrkOwjAQRP_FNbJ8H5T0-YZovbsmARRLOSrEv5NIKaCdN_M0b9HDtg79tvDcjySuQkdx-Q0L4JOng9ADpnuT2KZ1Hos8KvKki-wa8et2dv8EAyzDvmZUwdsCRmWyXNDG6F1MxnGqmKsiBDbJBVU55xA5Y0YC1t4UZa3Xu7TNdL7UMX2-hpw81w:1noy2y:jXmF2swel_QTTk89kd6DTcU8djMqpmOAtZIKWFPz2yo','2022-05-26'),('vnm7z8igq3l5qufqmc4mg0fxzprh3mhu','.eJxVjDkOwjAUBe_iGlne4iSU9JzB-v4LDiBHipMKcXeIlALaNzPvpRJsa0lb4yVNpM7KqtPvlgEfXHdAd6i3WeNc12XKelf0QZu-zsTPy-H-HRRo5VvH0ToSZPaQjXQcg6eBfY9MvUUXOkTwkQYyJA5HCUJMZHIUK5g5q_cHGUQ6EA:1np7n4:UutF6IyU5lwGnh5Wa8-nOiNlnXuT6l27kFlnACghBDU','2022-05-26'),('1b7dkfnq537x4duw0n47c55mnvwmhfs7','.eJxVjssOgjAQRX_FdE1Iyxt36tpvaKYzU0AJNS0sjPHfLUqMbu859848hIZl7vUS2OuBxF4okfxmBvDK0wroAlPnUnTT7AeTrkq60ZCeHfF43Ny_gR5CH9tVqzKyyJyDkbbkqsip4bxGplphVpSIkFfUkCSbYWsLS0wkTWWVRcMmjjpP25OqkYkIDB57ffOOFpzjCRDfEGHmzvm7DjzyGx7GcXf6pAOHaG69oNEtUzSUfL4AuvtcBg:1nrBiK:s32MiacDvknQSRW0xYWXdTEFMp63pNsCpwp3RrvJWF0','2022-06-01'),('b3c2n9q3l8yychledo3w1nqm8362jffn','.eJxVjkEOgjAURO_StWkohRZcuucMpP3zv0UNTQqsjHcXEha6nTfzMm81hm1N47ZwGSeoqzLq8pvFQE-eD4BHmO9ZU57XMkV9VPRJFz1k8Ot2dv8EKSxpX7ve1BBitiFW0rJrLDq2nhjeUN20RME6dKggNfXSCBioohMjFDnu0lxwnjTef76kQz6h:1nqrHp:Gb_SZZZJkGIxzqOHXBtqJsJXDHnuQqW1d-ORIRLiShw','2022-05-31'),('0ok9j1wszl7jemilpnnrqcvzsqaep68y','.eJxVjDsOwjAQBa-CUqMozh86oOYM1np3HQciG9lOgRB3x4FIQDsz7z0yCXM0cg7s5UjZPhPZ9pcpwCvbRdAF7OBydDb6UeVLkq825GdHPB3X9u_AQDBp3e5ESRqZK1CFbritK-q56pCpE1jWDSJULfVUkC5xp2tNTFSoVguNilU6DQwejbx5RzPG9AlfiBB5cP4uA0_8lodp2pw-dOSQynUXJLrZpkIUzxe22Fd7:1npKIx:2RuEsbESaN-TzSeu_Z-RM_DELefLS9cdH5pm-b2YNeI','2022-05-27'),('8os6g9bzr697t5m2ckd9f8nbuoqdoikc','.eJxVjkEOgjAURO_StWloCwVcuucMpP3zv6CGJhRWxrsLSRe6nTfzMm81hn2bxj3zOs5QV2XU5TeLgZ68nACPsNyTprRs6xz1WdGFZj0k8OtWun-CKeTpWPveWAgxuxAradjXDh27lhitIVs3RMF5dKgglnqpBQxU0YsRihwPaVpRTprOfr6kPD6d:1nrCRX:rMnTwaMhZ3X40RWEgtxcEbmtYEG_qMC4K_41uO-2pqQ','2022-06-01'),('lto1s9yjf0v6hovkp0bssgomj828dfil','.eJxVjkEOgjAURO_StWloCwVcuucMpP3zv6CGJhRWxrsLSRe6nTfzMm81hn2bxj3zOs5QV2XU5TeLgZ68nACPsNyTprRs6xz1WdGFZj0k8OtWun-CKeTpWPveWAgxuxAradjXDh27lhitIVs3RMF5dKgglnqpBQxU0YsRihwPaVpRTprOfr6kPD6d:1nrCVk:Thwp6YPwzrXIc72gQjygaMIwtBN_njck-O-C5DrrWjs','2022-06-01'),('spblm4zwb9st07dx1np86y356dkmisy1','eyJvcmRlcl9pZCI6IjE4MiJ9:1nrCbt:BpsEdeBc7HT4qW-60rpuDf-t6G2gMb8YP_xraNAY5lc','2022-06-01'),('01lhvwh5pq58ny4n86cl8iwcd3g6q4g8','.eJxVjEEOwiAQRe_C2hCmMwK6dO8ZmgEGqRpISrsy3l2bdKHb_977LzXyupRx7TKPU1JnBerwuwWOD6kbSHeut6Zjq8s8Bb0peqddX1uS52V3_w4K9_KthbLxwXKGhMPRG6BMOCA5ACuEzp2Q0WdL3osNaICDoYjRsAQvBtX7A7yxNv8:1nrTsF:b2VoWnOgrNedF0p0csLpBA86QTraz0TDSfsf844DHCE','2022-06-02'),('cq14e4pd1a2ai6feu2rzxbmg918j2i6d','.eJxVjEEOwiAQRe_C2hCmMwK6dO8ZmgEGqRpISrsy3l2bdKHb_977LzXyupRx7TKPU1JnBerwuwWOD6kbSHeut6Zjq8s8Bb0peqddX1uS52V3_w4K9_KthbLxwXKGhMPRG6BMOCA5ACuEzp2Q0WdL3osNaICDoYjRsAQvBtX7A7yxNv8:1nrDPj:3imTHW7H9bsKxr-wfdSQ3BMqCQnKZ2uszO7Ev-MIgbw','2022-06-01'),('n3emzwjsznaphrygusb10k07ty774m57','.eJxVjsEOgjAQRP-lZ9PssmspHr37DWTbbgU1NKFwMv67kHDQ67yZl3mbXtZl6Neqcz8mczFoTr9ZkPjUaQfpIdO92FimZR6D3Sv2oNXeStLX9ej-CQapw7ZWzuCDk4yJmrMH5MzUELeITpnatiMhnx17ry4QoATgSBFEg1egTVrmdJzEDj5fGbg7iw:1nreCr:h-gcwtsyVSNLp26TozI_Zf7B-R4BUA_3YP0DUthkesM','2022-06-02'),('4rsnw47ngz3ebf3ntm5avolc0njc32vy','eyJvcmRlcl9pZCI6IjE4MyJ9:1nraj3:Z4WwoOMhApmKzT737CbecVexeMlZ82HLz1448QV7xeY','2022-06-02'),('x0mrr7azy52dap33buhh30nrwotzdgk6','eyJvcmRlcl9pZCI6IjE4NyJ9:1nrd4y:vclsY0y8VHgHru7nEJdv0LiRUKmOURA9iOp0ExwT84Q','2022-06-02'),('833c86yg88xuu5in2m1auil1q4syywjn','.eJxVjssOwiAQRX_FsDYNdLCl7tS130AGmD6UFAPtwhj_XaqN0e09596ZB9M4T72eE0U9OLZngm1_M4P2SuMC3AXHLhQ2jFMcTLEoxUpTcQ6O_HF1_wZ6TH1uk2y5MhW2wkG5U1zIVkIJshaiIgl13QCCaiupFFUGuEDDpQXLkYwiDnk0RLc-KZpyyxJhtL2-xeBmO-UTyL6hxYm6EO86kac3PHi_OX3SgVI2117SNsxjNgR_vgAy5lj4:1nuyDy:R4CoaC7VVlR344lQnw2IucuG7Wh1X_Izom9b8GWk1zg','2022-06-11'),('kamfk1ry65bqw3eq4di6s216b8r6tm29','.eJxVjEEOwiAQRe_C2hCmMwK6dO8ZmgEGqRpISrsy3l2bdKHb_977LzXyupRx7TKPU1JnBerwuwWOD6kbSHeut6Zjq8s8Bb0peqddX1uS52V3_w4K9_KthbLxwXKGhMPRG6BMOCA5ACuEzp2Q0WdL3osNaICDoYjRsAQvBtX7A7yxNv8:1nxQnS:apPohSNZnUCHY85PoUWHAyug06d0LVnFM0NGC_c7yvI','2022-06-18'),('k3i691491g1jnfiluwe6ixzs0wrum9lu','.eJxVjEEOwiAQRe_C2hCmMwK6dO8ZmgEGqRpISrsy3l2bdKHb_977LzXyupRx7TKPU1JnBerwuwWOD6kbSHeut6Zjq8s8Bb0peqddX1uS52V3_w4K9_KthbLxwXKGhMPRG6BMOCA5ACuEzp2Q0WdL3osNaICDoYjRsAQvBtX7A7yxNv8:1nxolf:_z7V5nr3qu82jq6W5oXrijrpWisUxNsSi1hVvTJMGEw','2022-06-19'),('u7sd6c0pa6c3sth72h3yu2srpn4elp0z','.eJxVjEEOwiAQRe_C2hCmMwK6dO8ZmgEGqRpISrsy3l2bdKHb_977LzXyupRx7TKPU1JnBerwuwWOD6kbSHeut6Zjq8s8Bb0peqddX1uS52V3_w4K9_KthbLxwXKGhMPRG6BMOCA5ACuEzp2Q0WdL3osNaICDoYjRsAQvBtX7A7yxNv8:1nyfME:PlAwFJnz0ZufHz-FH9ExyK-PTBPaw0EfT5bg_KZhMZU','2022-06-21'),('w1mto2f9cbtd2nwgyt2i09bg4y3u08yz','.eJxVjcsKwjAURP8l6xKS3phGl4JLN4LrkMeNrZYEkmYh4r-bQgXdzpw58yLa1GXUtWDWkycHwkn3m1njHhjXwt9NvCXqUlzyZOmK0K0t9Jw8zseN_ROMpoxtjSIwZaUJ3EO_U4yLIKAHMXAuUcAw7MGAClIohdIC48Yy4cAxg1YhgyYtWMqUInU1Z4zuqV07JYdY57kj37Bdna4X8v4AJ3BHQA:1o00vh:9jXkS99eD1nC-s4ZeFlTV5AcRopi4b1xE3hStA6oUf0','2022-06-25'),('m7d2axr8s332oknu7teipq2hfnj6aam9','.eJxVjssKwjAURP8lawlJ7zVNXYpbV-I65HFrq5JA0i5E_HdTqEK3c2YO82Z-zpmif7EDu15ObMcKlTKmyH_A-BToT42dp8HMhbIZQ03lNnPWPyguINxtvCXuU5zy6PhS4Sst_FyVz-Pa3QgGW4a6JuyFdsr2MkCz10Jij9AAtlIqQmjbDizoXqHWpBwIaZ1AD15YcpoEVGnKYT0pO_x8AQ3cS0U:1o02z3:bOOrW7-fBNjkzt6XlIvlDrncZMW51c0DQ14C6qAjb5k','2022-06-25'),('o27sanaz28qls378hfwoj27pdkjhxgr0','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekwmWTE4tK4jNTlKwMLc1rAZ6pFKQ:1o2FrQ:A_oOu_31fll-720v28DMTZM2LrjNvMvIwwHRkBddRR0','2022-07-01'),('hx7fppwpdzr0eg5jswfb2326c9brxtpr','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekwmWTE4tK4jNTlKyMDAxrAZ6GFJY:1o2GGG:SrdOoTGwXCApcNqXJWDI8h7ICczlktEyIAyX3CpdY04','2022-07-01'),('xqx3slcvc3joamwaxop1dx4hwvq2erzm','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekwmWTE4tK4jNTlKyMDIxqAZ6IFJc:1o2GIH:CkCIx1YHAZ2rZUaTsEN-00pIas1ttne8G_atca2oI48','2022-07-01'),('qgt6al4p3h54y4rjjyi8o8ktibnxgr9x','.eJw9jsEKwjAMhl9Fch6yDr3sJvoG4rmUNGihNCNpD2P47rbb3Cnk_76EfwEsIpRwhhFezwd0oKQaOJ3_wCJ7Oig6yTZ4GIf-2gGLJ9nXS4Wb2cZgmsxl4rRy0x47wY-dhH3BXD0HR4gu05tltkqRVniL8XTf0kBazf1Oa5-SqmH67w9UJT-v:1o2Lci:lUiiuC7WGTcaw0d9M5ZKr5PCUsnJqv809GBb91XatFw','2022-07-01'),('hvce7ev71msycfdilj7a9dgzujgwulm4','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekwmWTE4tK4jNTlKyMDMx0lPKLUlKLYNxaAPeDGSU:1o2aVT:q_ujm8zS-uFVgReHLDPu65cq8pHXskMKCNcIqUFm6Ww','2022-07-02'),('lemzvkvui82ql004g8wrjlngozfqt08p','.eJyrVkouLSpKzUuuVLJScg0NUtJRKk4tLs7Mz9ODScQn56ekAmVDg12AssmJRSXxmSlKVkYGFjpK-UUpqUVQrnktAPeJGSg:1o2aiW:vQDbdIZctzMJwLiOEkBA2RqgPCzASFt7yTPok9RJZ_A','2022-07-02'),('ziehpeefkyixtpn1wzy1sgi2bgt1j6kx','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekQmVrAZmvEIM:1o2arX:GEM4jDS68CGp0lEhJ72nfEph_O1AxwXTEKjYlEOrMJI','2022-07-02'),('ztz7oyn6n1nn8ctx3o7q8uch7qur8aup','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekwmWTE4tK4jNTlKyMDCx1lPKLUlKLYNxaAPe8GSs:1o2atW:I1w4inUQo4xa9kG3v-zLSyZhW2IycRZm4k0OpCE-vLY','2022-07-02'),('e2jn61scgy49hb3b2veix4h7n6tawze8','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekwmWTE4tK4jNTlKyMDA10lPKLUlKLYNxaAPcmGRs:1o2c9w:-FMlzzXewZa9wMzjssDzSdfShGnz9TZc1o4zQADakr4','2022-07-02'),('qh47c72roj455odtr404ac41q303tdwp','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekwmWTE4tK4jNTlKyMDA1rAZ6JFJc:1o2da3:6VLmO56-99n3XSTB6-G71b6g0J8AirIzOQUB9Q9iT88','2022-07-02'),('0baqlg2lduo9jl5xhkpftbpicgdjp050','.eJxVjr0OwiAURt-F2RDgIkVH4-pknMmFXmzVQALtYIzvbmuqSdfv5-S8WKVa-5x4GEuhFJ4u5JbYnl3OR7ZhDsehc2Ol4vp2SuU68xjulOaivWG6Zh5yGkrv-TzhS1v5aUI-Dst2BeiwdtObdBTWG4yyBbW1QuqoQYFupDSkoWl2gGCj0daS8SAkeqEDBIHkLQmYoD__v3rAMnyllRLvD-3DSsk:1o2ge3:HTmDdADibS3p8l16BxZO0IF3WBnOZg1wWsvZVrA_jr0','2022-07-02'),('ti6qof0e42b3evaqvr1r26pyizt4mrc6','.eJxVjsEOwiAQRP-FsyHAIkWPxqsn45ksdLFVAwm0B2P8d1tTTXqdN_MyLxbGUiiFJ9uzy_nINqxSrX1O_AdcyC39qcNx6NxYqbi-nVK5zjyGO6UZtDdM18xDTkPpPZ8rfKGVnybl47B0V4IOazetSUdhvcEoW1BbK6SOGhToRkpDGppmBwg2Gm0tGQ9Cohc6QBBI3pKASRqwDN-PSsn3B8DaSso:1o2gqy:y6YXMo4-8HlN9ZlmV8VZsTdZck1uzLlIFLlOqdGvDs8','2022-07-02'),('qr9h23e9sawj2vsbtpo5x3d9hqjd2y1l','.eJxVjsEOwiAQRP-FsyHAIkWPxqsn45ksdLFVAwm0B2P8d1tTTXqdN_MyLxbGUiiFJ9uzy_nINqxSrX1O_AdcyC39qcNx6NxYqbi-nVK5zjyGO6UZtDdM18xDTkPpPZ8rfKGVnybl47B0V4IOazetSUdhvcEoW1BbK6SOGhToRkpDGppmBwg2Gm0tGQ9Cohc6QBBI3pKASRqwDN-PSsH7A8DeSsw:1o2h4I:7hGX-k0ufB6GtrjNpBejF_FmBwPZkwttCsPky_G1Pwc','2022-07-02'),('37vcx9125frzklz4qfy8z7feqofr42f4','.eJxVkLlOxDAQhl8FuV5ZdmwSsx1XSQPa2hqPJ5tAZCMfxQrx7jghIG37_ddovlimnOcYONaUKODFYvTEjuz09sQO7I828Hx6XQGkYmfPjp1WB2ahlsnWTGljTLIr5gA_KKyCf4dwjhxjKGl2fLXwXc38pS0uD7v3qmCCPLU06VEY18MovepujZB61KpTepCyJ62G4U6BMmOvjaHeKSHBCY0KBZAzJFQrjcnvR26HZ4KEk_1M0VcsbQLYP0QodI7pYjMttIn3y3Lz-Etnys2553J7Vg3NIcX3D6DpbMQ:1o3KE2:aAuJLvXIu0Wt9J5tCHQd6l9228PIdCqn3s0rQD73h48','2022-07-04'),('znvcpqygdu404dzdhh79xtdfktbmdplc','.eJxVjj0PgjAQhv_LzaRpuQqV0bg6GWdybQ9BTZu0MBjjfxcMxrA-7-cLMuc8xCDclBIH92xd9AwNXM5HKOBH_4DS2A4emrI0BbQ0jX07ZU5fBgo2zJK7c1gEf6NwjcLFMKbBisUiVjWL07z4OKzeTUFPuZ_TrDtpbEWd8ljujFS601iirpWqWGNd75HQdJU2hiuLUpGV2qGTxNawxLk0Jr-enI-_Px6ST18:1o2hjX:-qWzerJhS4w3SbnqS55CzHnMQc0Vh7iQDaRgE1ZnNQk','2022-07-02'),('h1m220ltsrrd0ktorlkvy2j59jy5tnza','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekwmWTE4tK4jNTlKyMjCxrAZ6cFKA:1o2hgn:kHqPLLA5LrGtspVxfMkSPnnvkfxI0eM8xCgvO-ew5hg','2022-07-02'),('xe3nl97h7ygo9odfjudr8hzsct3azy68','.eJxVjsEOwiAQRP-Fc0OgSyl6NF49Gc_NAltbNZBAezDGf5eaatLjzpt9mRdzc0oU3JPt2eV8ZBXLlPMYA_-BzkVPf9rhPA3dnCl1oy-p3GYW3Z3CAvwNwzVyF8OURsuXCl9p5qeifBzW7kYwYB7KN6leGKuxlx7qxgipegU1qFZKTQradgcIptfKGNIWhEQrlAMnkKwhAUXqME3fjXXdVCwmv04u5_sDRxJPWQ:1o2hup:0CmwhCwmwT-akiqLCEQjkAog6QhCtfFBna8TPQr11eQ','2022-07-02'),('xyzccl8k095679u4twvaeiz09zdp1pga','.eJxVjsEOwiAQRP-Fc0OgixQ9Gq-ejGeywNZWDSTQHozx36WmmnjcebMv82R-zpmif7AdO58OrGGFShlT5F9gfQr0oxbnabBzoWzHUFP5nzn0N4oLCFeMl8R9ilMeHV8qfKWFH6vyvl-7f4IBy1C_SfXCOI29DNBujJCqV9CC6qTUpKDrtoBgeq2MIe1ASHRCefACyRkSUKUe8_TZ2IJoWMphnVzP1xtGyE9R:1o2hxm:V-FgiQY-AjHCZp5WqQcG_7O0RlsVglaqY2HAQAWs_DQ','2022-07-02'),('6q8ojz8fsq2ycnubedzljwqillhaiwfi','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekQmVrAZmvEIM:1o2i3C:obB1AmTANhiOy-VvtvmQxSAN0XZMLfQTNSJJ7OsWOAY','2022-07-02'),('ah08u548enpl28bmh16repoia4kg7t27','.eJxVjsEOwiAQRP-Fc0OgixQ9Gq-ejGeywNZWDSTQHozx36WmmnjcebMv82R-zpmif7AdO58OrGGFShlT5F9gfQr0oxbnabBzoWzHUFP5nzn0N4oLCFeMl8R9ilMeHV8qfKWFH6vyvl-7f4IBy1C_SfXCOI29DNBujJCqV9CC6qTUpKDrtoBgeq2MIe1ASHRCefACyRkSUKUe8_TZ2IJsWMphnVzP1xtG209T:1o2i6y:_3v0kEmfHcJUSdunhf8pEt6d_Sm6cEXGe2LUQlSP9dg','2022-07-02'),('0w82izax5kiy86gqkk04nykqgc603rsp','eyJvcmRlcl9pZCI6IjIzMSJ9:1o2iB0:NSmFaWEsDq_QN195rJeggNugv4XePmgNqPxGxSO602M','2022-07-02'),('uiss2qxaxdto24tkd9a0ild1rho6wu19','.eJxVjr0OgjAUhd_lzqRpuRUqo3F1Ms7ktr0IatqkhcEY310waMJ6vvP3AjelxME9oYHL-QgFZM55iEH8QOui5z91lMZ28NCUiAW0NI19O2VOXw0UbDRL7s5hAf5G4RqFi2FMgxWLRaw0i9M88Dis3k1BT7mf06w7aWxFnfJY7oxUutNYoq6VqlhjXe-R0HSVNoYri1KRldqhk8TWsMS5NCa_npyPvz8INU9X:1o2iGx:Lv_hTUcZQLOVtEc7IpsHdn2X0ZGsRU-zkzjPm6DYkZw','2022-07-02'),('zalj97agwkohumubiqms6tnambaqqw0e','eyJvcmRlcl9pZCI6IjIzMyJ9:1o2iHR:qSMcUtDoiTjGKdIszdAmMt9xdpMt2ptfn9IHnuQwqAk','2022-07-03'),('yidh4c5dst5icmk07fsz36lciarb82db','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekwmWTE4tK4jNTlKyMjE10lPKLUlKLYNxaAPecGSc:1o2iNb:F18xU-VHwLqg8bRdkA6CV3OwACtIFarS7et7708kDm8','2022-07-03'),('l9zb5c6lh2zch4cpyl0vaudtybkxgmlb','.eJyrVipOLS7OzM_TSy4tKkrNS66MT85PSVWyUgoNdlHSUYKJIgQSi0riM1OUrIyMLXWU8otSUotg3FoAC3UZMQ:1o2iXE:sP8x5jfKY8sVpK_jfxXnws9ak21MZtbxB1ewbsQzlzU','2022-07-03'),('26uimqzyagj0gyo697kxjpv22ehiw3z9','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekwmWTE4tK4jNTlKyMTAxqAZ6QFJk:1o33Fh:kl1Upca62mTItegTXytxs_vAtFlzFfr68B2NjQ6M7RE','2022-07-03'),('o4mk7zu74992ieqzhr3vfusrizqcctft','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekwmWTE4tK4jNTlKyMTIx0lPKLUlKLYNxaAPeLGSU:1o3IfM:pV7i36aW7vr7MRcowzho2Lt9G-bwmbkp7G2iYLEraeA','2022-07-04'),('suq3v43cd7dvd6jq548r3sl2738onkfi','eyJvcmRlcl9pZCI6IjI0MyJ9:1o3IgR:7KjWgDBW-xJXQNgzESJVh5ZvMYWloSl9sR5Vuv36yuo','2022-07-04'),('1jr06p6575eknhce81f8cuefd68jtd55','.eJxFjUsKwzAMRK8StA6hDSWL7EqbCyRkbYwsWoOximQvQundK_pdzrw3zB2wilDGDUaY1hlaUFKNnLsvcMiBjK7L2Sh6KS4GGPvD0AJLIPlHJS94dTfhULHYxsOvRF_owrI5pUQveEypOb3bSGrmZ6f2WLMZ-93jCeseNpg:1o3K1R:7splevoPWh-c73u4H84DIz9sMnbBVQsiFKpt5LZbd9s','2022-07-04'),('qzh281wbt6ot0uun9t2xns82d99vj2lx','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekwmWTE4tK4jNTlKyMTEx1lPKLUlKLYNxaAPfEGSs:1o3J8G:pvaVf9mcPdZ-ZySzIBL1xfn5TlNu_cyvhxjCDJ4dJFg','2022-07-04'),('ii5ienymk8l0elil0icbk0cpciey7gqw','eyJvcmRlcl9pZCI6IjI0NSJ9:1o3J8Y:K-d7Gs7WT8-e9bNlbjfZy5B9XwMUUYu55KIcJPs-HpY','2022-07-04'),('ze3m07p3uxyv3ojtee26qt4vuj4frlmo','eyJvcmRlcl9pZCI6IjI0MiJ9:1o3Jav:_aGcRppHnYGcqw4jiGw_lcWf99pDV15SG4Izw3HAIPY','2022-07-04'),('81d4nkxocuhbjdjqmhcdzv25c39k2cnl','eyJvcmRlcl9pZCI6IjI0NCJ9:1o3JwH:tXQntzgZu8w0yOn23OQWkfWxe4LdL9xcsqTqkcsd2yw','2022-07-04'),('0o6pkgl051w3sflkfluoolpttcr5w2nk','eyJvcmRlcl9pZCI6IjI0NCJ9:1o3JxL:iJrfDDvbiyd1JwVQQKQ5lcsQBG-0aHl4kp6jld3Q8HA','2022-07-04'),('mh7cv577aaaw3zbdm0fm4lozphpmwu6d','eyJvcmRlcl9pZCI6IjI0NiJ9:1o3Jzc:Zc1gH6GsdsNZVUk9fQrYv4O-MbVlC-weDPp5MTP9bbo','2022-07-04'),('5z3vyttkeqygv5f8lrwlgq4mm8s4bxhn','.eJyrVkouLSpKzUuuVLJScg0NUtJRKk4tLs7Mz9ODScQn56ekAmVDg13AsolFyRnxBUX5KaXJJUDhRIRgcmJJanp-UWV8cWpOKljSMSdHwRkimplaDFQJ1VcMNLQ0D6jC0KAWAL2rLe4:1o3KD1:4WFSiIzferAYOhQNv2AJUgh1_EzpP-VOapMdkG1Bons','2022-07-04'),('7e2wqjz4qvl65frjw2juomz98gha0djc','eyJzZXNzaW9uLmN1cnJlbmN5X2NvZGUiOiJVU0QifQ:1o4XPz:hetd5BkWxQOCmkaTRiTTS5vhPj6tP1PKhpupW3j1JGc','2022-07-08'),('qdnql4c2lnn83pblxbqqfh64yzhynoqg','.eJxVj8EOwiAQRP-Fc0OgixQ9Gq-ejGeywNZWDSTQHozx36WmmnjcmdmXmScrVMqYIvdzzhT9w_oUiO3Y-XRgDbM4T4OdC2U7hqrKf82hv1FcjHDFeEncpzjl0fElwle38GNF3vdr9g8wYBnqN6leGKexlwHajRFS9QpaUJ2UmhR03RYQTK-VMaQdCIlOKA9eIDlDAir02_9X3WOePqVbDQ1LOawb6vl6A3QrT10:1o7pcy:OQ34OWsViBtYavpqZBF8VIPTgh94pGxlNUmi_zakOUQ','2022-07-17'),('5ovw3b5r20m5igqe8vrsaigo240mkwvx','.eJxVjcEOgjAQRP9lz6Rp2VoqR-PVk_FMtmUR1LRJCwdj_HfBoAnXeW9mXuCnlDj4J9RwOR-hgMw5DzGIH2h8bPlPPaWxGVqoS6MLaGga-2bKnL4ZKNhkjvydwwLaG4VrFD6GMQ1OLIpYaRan-eBxWN3NQE-5n9usO2mdoU61WO6sVLrTWKKulDKssar2SGg7o61l41AqclJ79JLYWZYI7w-EyErR:1oC1JS:VPXYTUI33i8FF9IBN3BmYoSdKkNo3mrWq5_axElGCuw','2022-07-28'),('be5fp24jo8n0cfezhqp5l28k47v06jw1','.eJxVjLEOwiAURf-F2RDoQ4qOxtXJOJMHPGy1gQTawRj_3TapJl3POfe-mZ9KoeRf7Mhu1zPbsUq19jnxn7A-B_pbi9PY2alSsX2Yqdwyh_5JaRHhgemeuc9pLL3jS8JXW_llvhxOa7s56LB285pUFMZpjDJAszdCqqigAdVKqUlB2x4AwUStjCHtQEh0QnnwAskZEsA-X8UURrU:1oC1dG:SM7flnpngiN_UvSjBZQdwubh-iZV2vzaFq3Omu44oDU','2022-07-28'),('fph51v5xxhhh2gq5dufs7a6cao6hbnru','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekQmVrAZmvEIM:1oEGW8:uo94fduvWsK8mp9eDAQDuW0BgIhvrxTikLNQWUYMOlY','2022-08-03'),('rxgl4w4d05fe965syiwbx3iftg8fqvx3','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekwmWTE4tK4jNTlKyMzA10lPKLUlKLYNxaAPekGSc:1oEHAH:bPhQbFUChZsjS4D4Eh1E57SJz39_aRmPdRgGzeAT0nA','2022-08-03'),('ehdono6nyls67tg9r6rvttvd4k0hqai2','.eJxVjc0KwjAQhN9lzxKSbkxjj-LVk3gum2Rrq5JA0h5EfHcrVKXHmW9-nuCnnDn6BzRwPh1gA4VLGVIUX9D6FPhHPeWxHQI0lcENpBw4_2VL09i3U1k8ULDyHPkbxw8IV4qXJHyKYx6c-ETEQos4zn_3_ZJdDfRU-rnNupPWGepUwGprpdKdxgp1rZRhjXW9Q0LbGW0tG4dSkZPao5fEzrJEeL0B4xdPXQ:1oEHJq:KhWYP3ryR2OeTKZ-AVufihb5eTdwsZaecnb_sjiWh1Q','2022-08-03'),('gpwjire7c6zhah95akw3hu66ipe48nri','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekQmVrAZmvEIM:1oIZ9Q:A66x8JMcl0CwJR3RemnfaVo5RWQlkWhgWufEs71UTn4','2022-08-15'),('2pzo0z3b2m9u0ocqlvryg9rc8fqiutev','.eJxVjLEOwiAURf-F2RDoQ4qOxtXJOJMHPGy1gQTawRj_3TapJl3POfe-mZ9KoeRf7Mhu1zPbsUq19jnxn7A-B_pbi9PY2alSsX2Yqdwyh_5JaRHhgemeuc9pLL3jS8JXW_llvhxOa7s56LB285pUFMZpjDJAszdCqqigAdVKqUlB2x4AwUStjCHtQEh0QnnwAskZEsA-X8UURrU:1oIZX6:L8di6H9vLcE0Caxbi0UJaxshRYL4Mqk4kkUd0qBKyGE','2022-08-15'),('5l2tg91to6sqaa4tcyx7lgvzo948iy5o','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekQmVrAZmvEIM:1oIbUN:EYZ9jkK5fgNbbVYDvUafNsnPXDb_eDp1o1PBjI9HC58','2022-08-15'),('ozyu43q5828midar8g8ipodzhtu73mgy','.eJxVjrEOwiAURf-F2ZACpYCjcXUyzoT3AFs1kEA7GOO_S5M6dL3n3pP7ITXUOuVEcSklJHxbzD6QI7ldz-RArFvm0S41FDv5lrJ9Bg6fIa3AP1y6Z4o5zWUCulboRiu9NOXrtHV3gtHVsa21QABuJEPZAxde8MCCiiZGbjrdswio0ClwmnWBGx6F8-BhUJJJGDQ26f__dv37Azr7SBM:1oKmXs:Z-3DtPAZMg-SQZemILN2fI9fVOcgyS-ynzvrI3LyO58','2022-08-21'),('ssgjiq6aa36rv07byfdys73bzac0na69','.eJxVjrEOwiAURf-F2ZACpRRH4-pknAnvAbZqIIF2MMZ_l5pq0vWee0_ui-Ccs4_4JHtyOR_JjhRfypgi_QGDyfk_NXaeBjMXn83oasq2GVi8-7gAd7PxmiimOOUR6FKhKy30VJWPw9rdCAZbhrruBQJwLRnKFrhwgnvmVdAhcN30LQuACq0C27PGc82DsA4cdEoyCV2PVYo2T9-PvBPvDwXMTC4:1oNJWk:08VIvidU0hAw0v1ZOhORsebmE_k6oqfG757t7YfHoq0','2022-08-28'),('y7ezbo3x54q3ubj1xcbz4zsttcc24nea','eyJzZXNzaW9uLmN1cnJlbmN5X2NvZGUiOiJVU0QifQ:1oN2Co:mNE5p2MbHiECiuXlNXk6xgjOe6tFpAvauWLXumR-oRs','2022-08-28'),('1gipcc9xjjvunnc7hgfv3g3aq4jto66e','eyJzZXNzaW9uLmN1cnJlbmN5X2NvZGUiOiJVU0QifQ:1oN30T:7cNa4bND-3J8yZwtpY-eymZJyitKUvl8zo1BQOgVc0I','2022-08-28'),('klye4djil8iz2vajn0e25zom5gg3rkab','eyJzZXNzaW9uLmN1cnJlbmN5X2NvZGUiOiJVU0QifQ:1oN3el:cK5-PNdF2FneXAQy52elqTiwdKKC2rql9EhBX18NTvw','2022-08-28'),('4gjwgeegjd0w6zsvw71ou7gqehkv51nb','.eJxVjLEOwiAURf-F2ZBCSwFH4-pknAnv8bBVAwm0gzH-u21STVzPOfe-GM6lUMIn27PL-ch2rFKtY078KxzmQD_r_DwNbq5U3BgWKv4ZeLxTWkW4-XTNHHOaygh8TfhmKz8tl4_D1v4dDL4Oy9q0CCCtEqg6kG1oJQnS0cYobWM6EQE1eg3eiIaklbH1AQL0WgkFvUH2_gD2w0gT:1oNKRY:N5U-INge_r-sZYLG1ZtM6dHeeRWHIPSp_bOW0e6Kj4k','2022-08-28'),('kil6151p921fu4dpdv05kbsa1n0kmxa6','.eJxVjsEOwiAQRP-Fc0MKtAU8Gq-ejGfCLmCrBhJoD8b471JTTTzuvNmXeRJccvYRH2RHzqcDaUjxpUwp0i8wmJz_UWOXeTRL8dlMrqbsPwOLNx9X4K42XhLFFOc8AV0rdKOFHqvyvt-6f4LRlrF-K4EAXPcM-w64cIJ75mXQIXDdqo4FQIlWglWs9VzzIKwDB4PsWQ-DwipFm-fPRj4MDUnZbZPr-XoDoM5QwQ:1ogsro:JT-xbyK5EJL0Fl-Uz-rAh412BlYtae-MJGLT65rtH6c','2022-10-21'),('4yoe61u7vgr3nqksqs3vbvax89pyh57v','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekQmVrAZmvEIM:1olFaf:gTSvDa1OTT2GVy8YkDEB34X98FAhTQw6GMq8-HK9Zw8','2022-11-02'),('9barif68q6s3zhwy0z125mibcb6okn2j','eyJzZXNzaW9uLmN1cnJlbmN5X2NvZGUiOiJVU0QifQ:1omHTT:16MNujNYOjURqtimXofpw_OCIEvnTtd_QJ9c3MG6TW8','2022-11-05'),('g5km9jmisxranmh29zp7tyb1vj9vytdc','.eJxVjLEOwiAURf-F2ZBCSwFH4-pknAnv8bBVAwm0gzH-u21STVzPOfe-GM6lUMIn27PL-ch2rFKtY078KxzmQD_r_DwNbq5U3BgWKv4ZeLxTWkW4-XTNHHOaygh8TfhmKz8tl4_D1v4dDL4Oy9q0CCCtEqg6kG1oJQnS0cYobWM6EQE1eg3eiIaklbH1AQL0WgkFvUH2_gD2w0gT:1op9sG:ehdbDe7TzbSu2zAdinr5ERg_m6bIueWOoDgs1uZb6uE','2022-11-13'),('cgcrs1tbv634g0j32cfvfnk6ytad6fco','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekwmWTE4tK4jNTlKyMzCx1lPKLUlKLYNxaAPg6GTc:1ozl5H:wyNZp8m1JWfOzyCfHJeWleDXSKlKDVksIPfLAVRoBBU','2022-12-12'),('xigoomqp6ykoj31ffjhzhsyetc56ges4','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekwmWTE4tK4jNTlKyMzE11lPKLUlKLoFyTWgD4ARkw:1ozoks:70qKNpWFGwlW4DOjFl3hA0dXw9c9jD-AwaJdzgZlmnc','2022-12-13'),('s3fjafb19qwtn3gq1fvbr4ff0aopkftz','.eJxVjb0OgjAUhd_lzqShhdLCaFydjDPpvW0FNW3SwmCM7y4kqGE85zs_L6A5JRfoCR1czkcoILucxxjYF_QUrftRMmnqRwudaHQBMVmX_rI38zT0c9484LDz0NDdhRXYmwnXyCiGKY3I1gjbaGan5e9x2LK7gcHkYWnrihBFKznJGkVlK-G4U771XrSlrrlHUmQUGs1LJ1rhK2PRYqMkl9hogvcHG9hQxQ:1ozn9h:kT104iAQebjuSX2x4Z-8wzaZ3Flu2AifR8Pl8zLRawc','2022-12-12'),('yykob9dgchcy27rj7sc8cmprtqo9pys2','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekQmVrAZmvEIM:1ozoni:p8wqoqn7tE8bu52kUwkC8qv9IWJBEVhPh_pFk-IrOXg','2022-12-13'),('5zerzby177r0ksfh7zt68acxmoubjjg3','.eJxFjrEOwjAMRH8l8lwhYELdCh3ZqrJGwbHaSCZBdjJUiH-nFCiTdb7n8z0AiwhFnKCGvmuhAiXVkOLmZ1hMnlYXnWQbPNT7w7aCJJ7kL5Wc4GjvknzBPN8cuZBpg7ul6E3D76HmHIYx82Q6x5m8udBA2V2ZFNYEdJmGJJNVYlqSGmZz-mzDQn6f6FyvxJnYPV_Mjkbx:1ozq5A:N1Hmih-NR7XaPNX1il2kenu5Kb5gK9Ayi-jIKzkj3ms','2022-12-13'),('cx0zmwydoxp5j2v6l5o63n67yxhx3b08','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekQmVrAZmvEIM:1q38rt:g5Me0g6qbnW2H47KWbHUiwaLFRAGLDvopFoTB7Vb5vo','2023-06-11'),('usnv3oiiojglvohfvg6yuhkxtviuvhgz','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekQmVrAZmvEIM:1q399B:KqXbS0DCYBCx4i9EwIcw1GEs4BwauZLCa-G5KARKsB4','2023-06-11'),('2ka6clw601j0i52ecpmvjvrpgqzbvt5n','.eJxVjLEOwiAURf-F2ZBCSwFH4-pknAnv8bBVAwm0gzH-u21STVzPOfe-GM6lUMIn27PL-ch2rFKtY078KxzmQD_r_DwNbq5U3BgWKv4ZeLxTWkW4-XTNHHOaygh8TfhmKz8tl4_D1v4dDL4Oy9q0CCCtEqg6kG1oJQnS0cYobWM6EQE1eg3eiIaklbH1AQL0WgkFvUH2_gD2w0gT:1q5nkY:5gQ_2CjO27Ylf3oPwl14a1L99lBtffTqOvlPxAl0iKg','2023-06-18'),('ign7tv6dyxgwdya7k5xuiwvz4io13aqe','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekQmVrAZmvEIM:1qHi0R:FgTbRkhhzXKA1UnikPUnvWZ7vf3p-mkkUaDS4KYM_Tg','2023-07-21'),('rhkd7zxvhrqx2qpif54f8gy1gp7ekz5n','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekQmVrAZmvEIM:1qHz7l:mHfJff8GRg3ee1vwdyakoneRtzcz3dfBwsobb1BaPug','2023-07-22'),('mb859az6eqtp8n0ldt0577fk4nh9qr7r','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekQmVrAZmvEIM:1qIZrh:jJFVRqHV4YVCWIyIwvyjD28R7ndeJJRe0O0k1kxhTYQ','2023-07-23'),('mx5ig7hwtitpodi9ih3d24ad64bjnoyv','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekQmVrAZmvEIM:1qIa7U:4D-5NDERhsNa0bDgPLogM5Z3lI2xFNhlVgwAvprhbfE','2023-07-23'),('r87g4fgxyfbsptzcgaiijd758eazrg9q','.eJxVjLEOwiAURf-F2ZBCSwFH4-pknAnv8bBVAwm0gzH-u21STVzPOfe-GM6lUMIn27PL-ch2rFKtY078KxzmQD_r_DwNbq5U3BgWKv4ZeLxTWkW4-XTNHHOaygh8TfhmKz8tl4_D1v4dDL4Oy9q0CCCtEqg6kG1oJQnS0cYobWM6EQE1eg3eiIaklbH1AQL0WgkFvUH2_gD2w0gT:1qIi5U:imgi-rEaH7xEGnvHS5h0dLAGKFrDzuYGIzvR18_qNTc','2023-07-24'),('cccun4pf7bj34yktruosvfvjv2lzhuh4','.eJyrVkouLSpKzUuuVLJSCg12UdJRKk4tLs7Mz9ODScQn56ekQmVrAZmvEIM:1qJH6k:yBKCPES66tFGFnajyjQgUqv_XFFF1C7C-u59xr_qFG4','2023-07-25');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_carousel`
--

DROP TABLE IF EXISTS `home_carousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_carousel` (
  `id` tinyint(4) DEFAULT NULL,
  `CARImage` varchar(23) DEFAULT NULL,
  `CARtitle` varchar(32) DEFAULT NULL,
  `CARURL` varchar(85) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_carousel`
--

LOCK TABLES `home_carousel` WRITE;
/*!40000 ALTER TABLE `home_carousel` DISABLE KEYS */;
INSERT INTO `home_carousel` VALUES (1,'carousel/slider-2.png','Don’t miss amazing grocery deals','https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup'),(2,'carousel/slider-2_1.png','Fresh Vegetables Big discount','https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup');
/*!40000 ALTER TABLE `home_carousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_headtextad`
--

DROP TABLE IF EXISTS `home_headtextad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_headtextad` (
  `id` tinyint(4) DEFAULT NULL,
  `ad_title` varchar(25) DEFAULT NULL,
  `ad_URL` varchar(85) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_headtextad`
--

LOCK TABLES `home_headtextad` WRITE;
/*!40000 ALTER TABLE `home_headtextad` DISABLE KEYS */;
INSERT INTO `home_headtextad` VALUES (1,'You will get 25% discount','https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup');
/*!40000 ALTER TABLE `home_headtextad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_homeaddaily`
--

DROP TABLE IF EXISTS `home_homeaddaily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_homeaddaily` (
  `id` tinyint(4) DEFAULT NULL,
  `ad_mage` varchar(0) DEFAULT NULL,
  `ad_title` varchar(27) DEFAULT NULL,
  `ad_URL` varchar(85) DEFAULT NULL,
  `image_position` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_homeaddaily`
--

LOCK TABLES `home_homeaddaily` WRITE;
/*!40000 ALTER TABLE `home_homeaddaily` DISABLE KEYS */;
INSERT INTO `home_homeaddaily` VALUES (1,'','Bring nature into your home','https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup','Right');
/*!40000 ALTER TABLE `home_homeaddaily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_homeaddealtime`
--

DROP TABLE IF EXISTS `home_homeaddealtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_homeaddealtime` (
  `id` tinyint(4) DEFAULT NULL,
  `ad_mage` varchar(0) DEFAULT NULL,
  `ad_title` varchar(49) DEFAULT NULL,
  `ad_URL` varchar(85) DEFAULT NULL,
  `PRDdealtime` varchar(0) DEFAULT NULL,
  `supplier_id` tinyint(4) DEFAULT NULL,
  `PRDDiscountPrice` decimal(3,1) DEFAULT NULL,
  `PRDPrice` decimal(3,1) DEFAULT NULL,
  `supplier_URL` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_homeaddealtime`
--

LOCK TABLES `home_homeaddealtime` WRITE;
/*!40000 ALTER TABLE `home_homeaddealtime` DISABLE KEYS */;
INSERT INTO `home_homeaddealtime` VALUES (1,'','Seeds of Change Organic Quinoa, Brown, & Red Rice','https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup','',2,19.0,11.0,''),(2,'','Perdue Simply Smart Organics Gluten Free','https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup','',2,15.0,11.0,''),(3,'','Signature Wood-Fired Mushroom and Caramelized','https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup','',2,19.0,15.0,''),(4,'','Simply Lemonade with Raspberry Juice','https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup','',2,19.0,17.0,'');
/*!40000 ALTER TABLE `home_homeaddealtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_homeadmiddlebar`
--

DROP TABLE IF EXISTS `home_homeadmiddlebar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_homeadmiddlebar` (
  `id` tinyint(4) DEFAULT NULL,
  `ad_mage` varchar(0) DEFAULT NULL,
  `ad_title` varchar(40) DEFAULT NULL,
  `ad_URL` varchar(85) DEFAULT NULL,
  `image_position` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_homeadmiddlebar`
--

LOCK TABLES `home_homeadmiddlebar` WRITE;
/*!40000 ALTER TABLE `home_homeadmiddlebar` DISABLE KEYS */;
INSERT INTO `home_homeadmiddlebar` VALUES (1,'','Everyday Fresh & Clean with Our Products','https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup','Right'),(2,'','Make your Breakfast Healthy and Easy','https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup','Right'),(3,'','The best Organic Products Online','https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup','Right');
/*!40000 ALTER TABLE `home_homeadmiddlebar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_homeadsidebar`
--

DROP TABLE IF EXISTS `home_homeadsidebar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_homeadsidebar` (
  `id` tinyint(4) DEFAULT NULL,
  `ad_mage` varchar(33) DEFAULT NULL,
  `ad_title` varchar(40) DEFAULT NULL,
  `ad_URL` varchar(85) DEFAULT NULL,
  `image_position` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_homeadsidebar`
--

LOCK TABLES `home_homeadsidebar` WRITE;
/*!40000 ALTER TABLE `home_homeadsidebar` DISABLE KEYS */;
INSERT INTO `home_homeadsidebar` VALUES (1,'ads/sidebar/banner-14_2k6gRxl.png','Everyday Fresh & Clean with Our Products','https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup','Right'),(3,'ads/sidebar/banner-14.png','The best Organic Products Online','https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup','Left');
/*!40000 ALTER TABLE `home_homeadsidebar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_homeadsupplier`
--

DROP TABLE IF EXISTS `home_homeadsupplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_homeadsupplier` (
  `id` tinyint(4) DEFAULT NULL,
  `ad_mage` varchar(0) DEFAULT NULL,
  `ad_title` varchar(35) DEFAULT NULL,
  `ad_URL` varchar(85) DEFAULT NULL,
  `image_position` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_homeadsupplier`
--

LOCK TABLES `home_homeadsupplier` WRITE;
/*!40000 ALTER TABLE `home_homeadsupplier` DISABLE KEYS */;
INSERT INTO `home_homeadsupplier` VALUES (1,'','Everyday Fresh with Our Products','https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup','Left'),(2,'','100% guaranteed all Fresh items','https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup','Left'),(3,'','Special grocery sale off this month','https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup','Left'),(4,'','Enjoy 15% OFF for all vegetable','https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup','Left');
/*!40000 ALTER TABLE `home_homeadsupplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_hotdealad`
--

DROP TABLE IF EXISTS `home_hotdealad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_hotdealad` (
  `id` tinyint(4) DEFAULT NULL,
  `ad_mage` varchar(0) DEFAULT NULL,
  `rate` tinyint(4) DEFAULT NULL,
  `ad_URL` varchar(85) DEFAULT NULL,
  `image_position` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_hotdealad`
--

LOCK TABLES `home_hotdealad` WRITE;
/*!40000 ALTER TABLE `home_hotdealad` DISABLE KEYS */;
INSERT INTO `home_hotdealad` VALUES (1,'',25,'https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup','Right'),(2,'',30,'https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup','Right'),(3,'',50,'https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup','Right');
/*!40000 ALTER TABLE `home_hotdealad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_shopadsidebar`
--

DROP TABLE IF EXISTS `home_shopadsidebar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_shopadsidebar` (
  `id` tinyint(4) DEFAULT NULL,
  `ad_mage` varchar(33) DEFAULT NULL,
  `ad_title` varchar(24) DEFAULT NULL,
  `ad_URL` varchar(85) DEFAULT NULL,
  `image_position` varchar(5) DEFAULT NULL,
  `supplier_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_shopadsidebar`
--

LOCK TABLES `home_shopadsidebar` WRITE;
/*!40000 ALTER TABLE `home_shopadsidebar` DISABLE KEYS */;
INSERT INTO `home_shopadsidebar` VALUES (1,'ads/shop-ad/banner-11_wG1LP4B.png','Save 17% on Oganic Juice','https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup','Right',2);
/*!40000 ALTER TABLE `home_shopadsidebar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_vendordetailsadimage`
--

DROP TABLE IF EXISTS `home_vendordetailsadimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_vendordetailsadimage` (
  `id` tinyint(4) DEFAULT NULL,
  `ad_mage` varchar(29) DEFAULT NULL,
  `ad_URL` varchar(85) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_vendordetailsadimage`
--

LOCK TABLES `home_vendordetailsadimage` WRITE;
/*!40000 ALTER TABLE `home_vendordetailsadimage` DISABLE KEYS */;
INSERT INTO `home_vendordetailsadimage` VALUES (1,'ads/vendor-page/banner-10.jpg','https://nest.apexcode.info/product-details/haagen-dazs-caramel-cone-ice-cream-ketchup');
/*!40000 ALTER TABLE `home_vendordetailsadimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters_newsletter`
--

DROP TABLE IF EXISTS `newsletters_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters_newsletter` (
  `id` tinyint(4) DEFAULT NULL,
  `email` varchar(15) DEFAULT NULL,
  `subscribed` tinyint(4) DEFAULT NULL,
  `created_At` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters_newsletter`
--

LOCK TABLES `newsletters_newsletter` WRITE;
/*!40000 ALTER TABLE `newsletters_newsletter` DISABLE KEYS */;
INSERT INTO `newsletters_newsletter` VALUES (36,'f@fff',1,'2022-06-18'),(40,'test@gmail.com',1,'2022-08-01'),(41,'test1@gmail.com',1,'2022-08-01');
/*!40000 ALTER TABLE `newsletters_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_country`
--

DROP TABLE IF EXISTS `orders_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_country` (
  `id` varchar(0) DEFAULT NULL,
  `name_country` varchar(0) DEFAULT NULL,
  `country_code` varchar(0) DEFAULT NULL,
  `countries` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_country`
--

LOCK TABLES `orders_country` WRITE;
/*!40000 ALTER TABLE `orders_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_coupon`
--

DROP TABLE IF EXISTS `orders_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_coupon` (
  `id` tinyint(4) DEFAULT NULL,
  `code` varchar(6) DEFAULT NULL,
  `valid_form` varchar(0) DEFAULT NULL,
  `valid_to` varchar(0) DEFAULT NULL,
  `discount` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_coupon`
--

LOCK TABLES `orders_coupon` WRITE;
/*!40000 ALTER TABLE `orders_coupon` DISABLE KEYS */;
INSERT INTO `orders_coupon` VALUES (1,'code21','','',24,1);
/*!40000 ALTER TABLE `orders_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_order`
--

DROP TABLE IF EXISTS `orders_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_order` (
  `id` smallint(6) DEFAULT NULL,
  `order_date` varchar(10) DEFAULT NULL,
  `date_update` varchar(10) DEFAULT NULL,
  `sub_total` decimal(4,2) DEFAULT NULL,
  `discount` varchar(1) DEFAULT NULL,
  `shipping` varchar(3) DEFAULT NULL,
  `amount` decimal(5,2) DEFAULT NULL,
  `tracking_no` varchar(0) DEFAULT NULL,
  `rpt_cache` varchar(0) DEFAULT NULL,
  `weight` decimal(4,1) DEFAULT NULL,
  `is_finished` tinyint(4) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `coupon_id` varchar(0) DEFAULT NULL,
  `user_id` varchar(1) DEFAULT NULL,
  `email_client` varchar(13) DEFAULT NULL,
  `auth_token_order` text,
  `merchant_order_id` varchar(9) DEFAULT NULL,
  `order_id_paymob` varchar(8) DEFAULT NULL,
  `trnx_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_order`
--

LOCK TABLES `orders_order` WRITE;
/*!40000 ALTER TABLE `orders_order` DISABLE KEYS */;
INSERT INTO `orders_order` VALUES (225,'2022-06-18','2022-06-18',41.00,'0','5.0',46.00,'','',1.5,1,'Underway','','1','mail@test.com','','','',''),(266,'2022-10-07','2022-10-07',39.00,'0','5.0',44.00,'','',501.0,1,'Underway','','1','mail@test.com','','','',''),(267,'2022-10-19','2022-10-19',12.00,'0','',12.00,'','',0.5,0,'PENDING','','','','','','',''),(268,'2022-11-28','2022-11-28',15.00,'0','5.0',190.00,'','',0.5,0,'PENDING','','','','ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6VXhNaUo5LmV5SmpiR0Z6Y3lJNklrMWxjbU5vWVc1MElpd2ljR2hoYzJnaU9pSXlNalEwTkRReFpqTTJaakZpTnprMU5USTJaV0k0TVRWa1pURTRNMkkwT0dReU56a3hZMk16TnpBek1tWTBZamRtWVRWbFl6VTJaV0kyT1dNMU9UTmhJaXdpWlhod0lqb3hOalk1Tmpjek56VTRMQ0p3Y205bWFXeGxYM0JySWpveU5ERTVOakY5LnpneEJsQ05yRGc2eXJQZzJnSnhZN1pKSml6UE9jaWlqZ1htUmkwUDE1b3hNY1gtamxBdlotcFJLNUxUWkhnamxaV2p6WmgxekZOeHNmSnFCcXd6YTZB','268-kl7qo','83622685',''),(269,'2022-11-28','2022-11-28',14.00,'0','5.0',24.00,'','',0.5,0,'PENDING','','','','','','',''),(270,'2022-11-28','2022-11-28',12.00,'0','5.0',32.00,'','',0.5,1,'Underway','','','','','','',''),(271,'2022-11-28','2022-11-28',15.00,'0','5.0',20.00,'','',0.5,1,'Underway','','','','','','',''),(272,'2022-11-28','2022-11-28',14.00,'0','5.0',19.00,'','',0.5,1,'Underway','','','','ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6VXhNaUo5LmV5SmpiR0Z6Y3lJNklrMWxjbU5vWVc1MElpd2ljR2hoYzJnaU9pSXlNalEwTkRReFpqTTJaakZpTnprMU5USTJaV0k0TVRWa1pURTRNMkkwT0dReU56a3hZMk16TnpBek1tWTBZamRtWVRWbFl6VTJaV0kyT1dNMU9UTmhJaXdpWlhod0lqb3hOalk1Tmpnd01EWTNMQ0p3Y205bWFXeGxYM0JySWpveU5ERTVOakY5LmU3ckZyUUVXSnQ4ZUw1LTV2ZnVORUF2ME42bU9jTzFoRVd1N3RtUzMxdXRhenZDX2cyaElxcU5iWlJ1aF8tbHRDRHVsTWNjakRMWEdKMnpnSHEyaVF3','272-vf69p','83642043',''),(273,'2022-11-28','2022-11-28',14.00,'0','5.0',19.00,'','',0.5,1,'Underway','','','','','','',''),(274,'2022-11-29','2022-11-29',14.00,'0','5.0',24.00,'','',0.5,1,'Underway','','','','','','',''),(275,'2022-11-29','2022-11-29',17.00,'','',17.00,'','',0.5,0,'PENDING','','','','','','',''),(276,'2022-11-29','2022-11-29',5.00,'0','5.0',10.00,'','',500.0,1,'Underway','','','','','','',''),(277,'2022-11-29','2022-11-29',5.00,'0','5.0',10.00,'','',500.0,1,'Underway','','','','','','',''),(278,'2022-11-29','2022-11-29',5.00,'0','5.0',10.00,'','',500.0,1,'Underway','','','','','','',''),(279,'2022-11-29','2022-11-29',14.00,'0','5.0',19.00,'','',0.5,1,'Underway','','','','','','',''),(280,'2022-11-29','2022-11-29',14.00,'0','5.0',19.00,'','',0.5,1,'Underway','','','','','','','');
/*!40000 ALTER TABLE `orders_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_orderdetails`
--

DROP TABLE IF EXISTS `orders_orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_orderdetails` (
  `id` smallint(6) DEFAULT NULL,
  `price` tinyint(4) DEFAULT NULL,
  `quantity` tinyint(4) DEFAULT NULL,
  `size` varchar(1) DEFAULT NULL,
  `weight` decimal(4,1) DEFAULT NULL,
  `order_id` smallint(6) DEFAULT NULL,
  `product_id` tinyint(4) DEFAULT NULL,
  `supplier_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_orderdetails`
--

LOCK TABLES `orders_orderdetails` WRITE;
/*!40000 ALTER TABLE `orders_orderdetails` DISABLE KEYS */;
INSERT INTO `orders_orderdetails` VALUES (377,14,1,'',0.5,225,12,1),(378,14,1,'',0.5,225,13,1),(428,17,2,'S',0.5,266,16,1),(429,5,1,'L',500.0,266,93,1),(430,12,1,'',0.5,267,10,1),(431,15,1,'',0.5,268,11,1),(432,14,1,'',0.5,269,14,1),(433,12,1,'',0.5,270,10,1),(434,15,1,'',0.5,271,11,1),(435,14,1,'',0.5,272,13,1),(436,14,1,'',0.5,273,14,1),(437,14,1,'',0.5,274,13,1),(438,17,1,'',0.5,275,16,1),(439,5,1,'S',500.0,276,93,1),(440,5,1,'S',500.0,277,93,1),(441,5,1,'S',500.0,278,93,1),(442,14,1,'',0.5,279,13,1),(443,14,1,'',0.5,280,13,1);
/*!40000 ALTER TABLE `orders_orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_orderdetailssupplier`
--

DROP TABLE IF EXISTS `orders_orderdetailssupplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_orderdetailssupplier` (
  `id` smallint(6) DEFAULT NULL,
  `price` smallint(6) DEFAULT NULL,
  `quantity` tinyint(4) DEFAULT NULL,
  `size` varchar(1) DEFAULT NULL,
  `weight` decimal(5,1) DEFAULT NULL,
  `product_id` varchar(2) DEFAULT NULL,
  `supplier_id` tinyint(4) DEFAULT NULL,
  `order_supplier_id` varchar(3) DEFAULT NULL,
  `order_id` varchar(3) DEFAULT NULL,
  `order_details_id` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_orderdetailssupplier`
--

LOCK TABLES `orders_orderdetailssupplier` WRITE;
/*!40000 ALTER TABLE `orders_orderdetailssupplier` DISABLE KEYS */;
INSERT INTO `orders_orderdetailssupplier` VALUES (3,100,1,'',2323.0,'',1,'','',''),(4,100,1,'',2323.0,'',1,'','',''),(5,100,1,'',2323.0,'',1,'','',''),(6,100,3,'',2323.0,'',1,'','',''),(7,100,1,'',500.0,'',1,'','',''),(8,100,1,'',500.0,'',1,'','',''),(9,100,1,'',500.0,'',1,'','',''),(258,14,1,'',0.5,'12',1,'219','225','377'),(259,14,1,'',0.5,'13',1,'219','225','378'),(309,17,2,'S',0.5,'16',1,'260','266','428'),(310,5,1,'L',500.0,'93',1,'260','266','429'),(311,12,1,'',0.5,'10',1,'261','267','430'),(312,15,1,'',0.5,'11',1,'262','268','431'),(313,14,1,'',0.5,'14',1,'263','269','432'),(314,12,1,'',0.5,'10',1,'264','270','433'),(315,15,1,'',0.5,'11',1,'265','271','434'),(316,14,1,'',0.5,'13',1,'266','272','435'),(317,14,1,'',0.5,'14',1,'267','273','436'),(318,14,1,'',0.5,'13',1,'268','274','437'),(319,17,1,'',0.5,'16',1,'269','275','438'),(320,5,1,'S',500.0,'93',1,'270','276','439'),(321,5,1,'S',500.0,'93',1,'271','277','440'),(322,5,1,'S',500.0,'93',1,'272','278','441'),(323,14,1,'',0.5,'13',1,'273','279','442'),(324,14,1,'',0.5,'13',1,'274','280','443');
/*!40000 ALTER TABLE `orders_orderdetailssupplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_ordersupplier`
--

DROP TABLE IF EXISTS `orders_ordersupplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_ordersupplier` (
  `id` smallint(6) DEFAULT NULL,
  `email_client` varchar(13) DEFAULT NULL,
  `order_date` varchar(10) DEFAULT NULL,
  `date_update` varchar(10) DEFAULT NULL,
  `sub_total` varchar(0) DEFAULT NULL,
  `discount` varchar(0) DEFAULT NULL,
  `shipping` varchar(0) DEFAULT NULL,
  `amount` decimal(4,2) DEFAULT NULL,
  `is_finished` tinyint(4) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `coupon_id` varchar(0) DEFAULT NULL,
  `user_id` varchar(1) DEFAULT NULL,
  `vendor_id` tinyint(4) DEFAULT NULL,
  `order_id` smallint(6) DEFAULT NULL,
  `weight` decimal(4,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_ordersupplier`
--

LOCK TABLES `orders_ordersupplier` WRITE;
/*!40000 ALTER TABLE `orders_ordersupplier` DISABLE KEYS */;
INSERT INTO `orders_ordersupplier` VALUES (219,'mail@test.com','2022-06-18','2022-06-18','','','',41.00,1,'Underway','','1',2,225,1.5),(260,'mail@test.com','2022-10-07','2022-10-07','','','',39.00,1,'Underway','','1',2,266,501.0),(261,'','2022-10-19','2022-10-19','','','',12.00,0,'PENDING','','',2,267,0.5),(262,'','2022-11-28','2022-11-28','','','',15.00,0,'PENDING','','',2,268,0.5),(263,'','2022-11-28','2022-11-28','','','',14.00,0,'PENDING','','',2,269,0.5),(264,'','2022-11-28','2022-11-28','','','',12.00,1,'Underway','','',2,270,0.5),(265,'','2022-11-28','2022-11-28','','','',15.00,1,'Underway','','',2,271,0.5),(266,'','2022-11-28','2022-11-28','','','',14.00,1,'Underway','','',2,272,0.5),(267,'','2022-11-28','2022-11-28','','','',14.00,1,'Underway','','',2,273,0.5),(268,'','2022-11-29','2022-11-29','','','',14.00,1,'Underway','','',2,274,0.5),(269,'','2022-11-29','2022-11-29','','','',17.00,0,'PENDING','','',2,275,0.5),(270,'','2022-11-29','2022-11-29','','','',5.00,1,'Underway','','',2,276,500.0),(271,'','2022-11-29','2022-11-29','','','',5.00,1,'Underway','','',2,277,500.0),(272,'','2022-11-29','2022-11-29','','','',5.00,1,'Underway','','',2,278,500.0),(273,'','2022-11-29','2022-11-29','','','',14.00,1,'Underway','','',2,279,0.5),(274,'','2022-11-29','2022-11-29','','','',14.00,1,'Underway','','',2,280,0.5);
/*!40000 ALTER TABLE `orders_ordersupplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_payment`
--

DROP TABLE IF EXISTS `orders_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_payment` (
  `id` smallint(6) DEFAULT NULL,
  `first_name` varchar(7) DEFAULT NULL,
  `last_name` varchar(5) DEFAULT NULL,
  `country` varchar(11) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `street_address` varchar(29) DEFAULT NULL,
  `post_code` int(11) DEFAULT NULL,
  `City` varchar(10) DEFAULT NULL,
  `Email_Address` varchar(21) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `payment_method` varchar(6) DEFAULT NULL,
  `order_id` smallint(6) DEFAULT NULL,
  `country_code` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_payment`
--

LOCK TABLES `orders_payment` WRITE;
/*!40000 ALTER TABLE `orders_payment` DISABLE KEYS */;
INSERT INTO `orders_payment` VALUES (301,'mohamed','selem','Afghanistan','Ave','korma',11511,'cairo','info@mohamedselem.com','(123) 456-7890','Cash',225,'AF'),(459,'mohamed','selem','Egypt','cairo','Rafea, Al Tahtawi, Al Tahtawi',11736,'Heliopolis','test@gmail.com','81368543367','Cash',266,'EG'),(477,'mohamed','selem','Egypt','cairo','5 Rafea Al Tahtawi',11736,'Heliopolis','mail@vwave.tv','01024682834','',269,'EG'),(516,'mohamed','selem','Egypt','cairo','5 Rafea Al Tahtawi',11736,'Heliopolis','mail@vwave.tv','01024682834','',268,'EG'),(524,'test','test','Afghanistan','test','test',877348,'test','test@gmail.com','4353457676','Paypal',270,'AF'),(525,'test','test','Afghanistan','test','test',877348,'test','test@gmail.com','4353457676','Paypal',271,'AF'),(526,'test','test','Afghanistan','test','test',877348,'test','test@gmail.com','4353457676','Paypal',272,'AF'),(527,'test','test','Afghanistan','test','test',877348,'test','test@gmail.com','4353457676','Paypal',273,'AF'),(529,'test','test','Afghanistan','test','test',877348,'test','test@gmail.com','4353457676','Paypal',274,'AF'),(530,'test','test','Afghanistan','test','test',877348,'test','test@gmail.com','4353457676','Paypal',276,'AF'),(531,'test','test','Afghanistan','test','test',877348,'test','test@gmail.com','4353457676','Paypal',277,'AF'),(533,'test','test','Afghanistan','test','test',877348,'test','test@gmail.com','4353457676','Cash',278,'AF'),(539,'test','test','Afghanistan','test','test',877348,'test','test@gmail.com','4353457676','Paypal',279,'AF'),(540,'test','test','Afghanistan','test','test',877348,'test','test@gmail.com','4353457676','Paypal',280,'AF');
/*!40000 ALTER TABLE `orders_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_pageslist`
--

DROP TABLE IF EXISTS `pages_pageslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_pageslist` (
  `id` tinyint(4) DEFAULT NULL,
  `content` text,
  `name` varchar(16) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `date_update` varchar(10) DEFAULT NULL,
  `slug` varchar(16) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_pageslist`
--

LOCK TABLES `pages_pageslist` WRITE;
/*!40000 ALTER TABLE `pages_pageslist` DISABLE KEYS */;
INSERT INTO `pages_pageslist` VALUES (1,'<p>We are a team of enthusiastic entrepreneurs who decided to convert their common experience into this web store.<br />\r\n<br />\r\nWe hope you&rsquo;ll like it as much as we do and have a great shopping experience here.<br />\r\n<br />\r\nOur prime goal is to create a shop in which you can easily find whatever product you need.<br />\r\n<br />\r\nYou can always contact us for any return question at info@test.com</p>','About Us','2022-05-07','2022-05-07','about-us',1),(2,'<p>Terms &amp; Conditions</p>\r\n\r\n<p><strong>Limitation of Liability</strong></p>\r\n\r\n<p>Under no circumstances shall AliThemes be liable for any direct, indirect, special, incidental or consequential damages, including, but not limited to, loss of data or profit, arising out of the use, or the inability to use, the materials on this site, even if AliThemes or an authorized representative has been advised of the possibility of such damages. If your use of materials from this site results in the need for servicing, repair or correction of equipment or data, you assume any costs thereof.</p>\r\n\r\n<p><strong>Licensing Policy</strong></p>\r\n\r\n<p>AliThemes WordPress plugins and themes are released under the GNU General Public License v2 or later.</p>\r\n\r\n<p>Please refer to licensing policy page for licensing details.</p>\r\n\r\n<p><strong>Product Compatibility</strong></p>\r\n\r\n<p>The products are developed to be compatible with the latest version of WordPress because we always strive to stay up-to-date with the latest version of WordPress. You might experience certain performance or functionality glitches with the products if you use any version prior to that.</p>\r\n\r\n<p><strong>Delivery</strong></p>\r\n\r\n<p>Your purchased product(s) information will be emailed to the email address (that you will provide) once we receive your payment. Even though this usually takes a few minutes, it may also take up to 24 hours. You can contact us through our contact page if you do not receive your email after waiting for this time period. You will also have access to your purchased products from your account in AliThemes after logging in.</p>\r\n\r\n<p><strong>Ownership</strong></p>\r\n\r\n<p>All the products are the property of AliThemes. So you may not claim ownership (intellectual or exclusive) over any of our products, modified or unmodified. Our products come &lsquo;as is&rsquo;, without any kind of warranty, either expressed or implied. Under no circumstances can our juridical person be accountable for any damages including, but not limited to, direct, indirect, special, incidental or consequential damages or other losses originating from the employment of or incapacity to use our products.</p>\r\n\r\n<p><strong>Browser Compatibility</strong></p>\r\n\r\n<p>We consider it our duty to offer a great experience across most major browsers, which is why our products support the latest modern web browsers including (but not limited to) Firefox, Safari, Chrome &amp; Internet Explorer 9+. However, the performance may vary between different browsers, versions, and operating systems.</p>\r\n\r\n<p><strong>Updates</strong></p>\r\n\r\n<p>Our themes are constantly updated to be compatible with the latest stable version of WordPress. Please ensure that you always use the most current version of our themes.</p>\r\n\r\n<p><strong>Theme Support</strong></p>\r\n\r\n<p>Please refer to Help and Support Policy page for details.</p>\r\n\r\n<p><strong>Price Changes</strong></p>\r\n\r\n<p>AliThemes reserves the right to modify or suspend (temporarily or permanently) a subscription at any point of time and from time to time with or without any notice.</p>\r\n\r\n<p><strong>Refund Policy</strong></p>\r\n\r\n<p>Please refer to Refund Policy page for details.</p>\r\n\r\n<p><strong>Email</strong></p>\r\n\r\n<p>AliThemes may occasionally send you emails related to the purchase of product(s) from our company. We may also send you occasional email newsletters relating to AliThemes updates and promotions. We will never sell or release your email to any third party vendors. You may opt out of these emails at any time without penalty.</p>\r\n\r\n<p><strong>License Agreement</strong></p>\r\n\r\n<p>By purchasing our product(s), you indicate and consent that you have read and agree to the Terms &amp; Conditions listed and detailed on this page. We reserve the right to change or modify the current Terms and Conditions without prior notice or consent.</p>\r\n\r\n<p><strong>Severability</strong></p>\r\n\r\n<p>If any part of this agreement is declared unenforceable or invalid, all remaining clauses in this agreement shall remain binding on the customer.</p>\r\n\r\n<p><strong>- AliThemes -</strong></p>','Terms Of Service','2022-05-07','2022-05-07','terms-of-service',1),(3,'<p>We make our themes with extreme care and launch them only after thorough-repeated testing, so we strongly believe that our products will work without any issue. If you find any issue, we are available to help you solve the issue resulting from any number of reasons.</p>\r\n\r\n<p>In the case the theme(s) you purchased didn&rsquo;t work properly as advertised and we couldn&rsquo;t resolve the issue, we, AliThemes, will offer a full refund within 15 days of the purchase. However, since the themes are digitally delivered and are non-tangible goods, we can offer refund full or partial only if the item(s) you purchased is broken, not working properly, or truly missing features as advertised on the sales page of the item(s) you purchased.</p>\r\n\r\n<p>Issues caused by third-party plugins, themes, or other software will not provide grounds for a refund.</p>\r\n\r\n<p>Refunds will be offered at our sole discretion.</p>\r\n\r\n<p>If the refund is for theme renewal and you are within first 30 days of the renewal, then please get in touch with our support team and our support team will issue the refund.</p>\r\n\r\n<p>Conditions for a refund for new purchase (not renewal)</p>\r\n\r\n<p>You must meet ALL of the following conditions:</p>\r\n\r\n<ul>\r\n	<li>You are within the first 15 days of the purchase of the item.</li>\r\n	<li>Your issue(s) comes from not being able to install the theme properly or get the theme to perform its basic functions.</li>\r\n	<li>You have attempted to resolve your issue(s) with our support team.</li>\r\n	<li>No refunds will be granted after the first 15 days of the original purchase whatsoever.</li>\r\n	<li>Issues caused by third party plugins, themes or other software will not provide grounds for a refund.</li>\r\n	<li>Issues related to Demo Import will not provide grounds for a refund because Demo Import depends on the hosting service.</li>\r\n</ul>\r\n\r\n<p>Refund will not be given for Theme Club purchase. If you&rsquo;re not sure whether a product is right for you, please contact us with your questions before making a purchase. We will be happy to assist you.</p>\r\n\r\n<p>Due to the nature of digital goods, we recognize that this policy can be abused, and reserve the right to refuse refunds if we determine the refund policy is being taken advantage of.</p>\r\n\r\n<p>By purchasing a theme(s) and/or a plugin(s) from our website, you agree to this refund policy and relinquish any rights to subject it to any questions, judgment, or legal actions.</p>\r\n\r\n<p><strong>- AliThemes -</strong></p>','Refund Policy','2022-05-07','2022-05-07','refund-policy',1);
/*!40000 ALTER TABLE `pages_pageslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments_vendorpayments`
--

DROP TABLE IF EXISTS `payments_vendorpayments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments_vendorpayments` (
  `id` varchar(0) DEFAULT NULL,
  `request_amount` varchar(0) DEFAULT NULL,
  `description` varchar(0) DEFAULT NULL,
  `status` varchar(0) DEFAULT NULL,
  `date` varchar(0) DEFAULT NULL,
  `date_update` varchar(0) DEFAULT NULL,
  `vendor_profile_id` varchar(0) DEFAULT NULL,
  `fee` varchar(0) DEFAULT NULL,
  `method` varchar(0) DEFAULT NULL,
  `comment` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments_vendorpayments`
--

LOCK TABLES `payments_vendorpayments` WRITE;
/*!40000 ALTER TABLE `payments_vendorpayments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments_vendorpayments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_product`
--

DROP TABLE IF EXISTS `products_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_product` (
  `id` tinyint(4) DEFAULT NULL,
  `product_name` varchar(51) DEFAULT NULL,
  `product_description` varchar(176) DEFAULT NULL,
  `product_maincategory_id` tinyint(4) DEFAULT NULL,
  `product_minicategor_id` tinyint(4) DEFAULT NULL,
  `product_subcategory_id` tinyint(4) DEFAULT NULL,
  `product_supercategory_id` tinyint(4) DEFAULT NULL,
  `PRDSlug` varchar(51) DEFAULT NULL,
  `product_image` varchar(37) DEFAULT NULL,
  `PRDDiscountPrice` decimal(3,1) DEFAULT NULL,
  `PRDISSale` tinyint(4) DEFAULT NULL,
  `PRDPrice` decimal(3,1) DEFAULT NULL,
  `PRDSKU` varchar(4) DEFAULT NULL,
  `PRDWeight` decimal(4,1) DEFAULT NULL,
  `available` tinyint(4) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `date_update` varchar(10) DEFAULT NULL,
  `pieces` tinyint(4) DEFAULT NULL,
  `PRDtags` varchar(10) DEFAULT NULL,
  `content` text,
  `product_vendor_id` tinyint(4) DEFAULT NULL,
  `promotional` varchar(3) DEFAULT NULL,
  `height` decimal(4,1) DEFAULT NULL,
  `width` decimal(4,1) DEFAULT NULL,
  `PRDISactive` tinyint(4) DEFAULT NULL,
  `PRDISDeleted` tinyint(4) DEFAULT NULL,
  `additional_image_1` varchar(50) DEFAULT NULL,
  `additional_image_2` varchar(0) DEFAULT NULL,
  `additional_image_3` varchar(0) DEFAULT NULL,
  `additional_image_4` varchar(0) DEFAULT NULL,
  `feedbak_average` tinyint(4) DEFAULT NULL,
  `feedbak_number` tinyint(4) DEFAULT NULL,
  `digital_file` varchar(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_product`
--

LOCK TABLES `products_product` WRITE;
/*!40000 ALTER TABLE `products_product` DISABLE KEYS */;
INSERT INTO `products_product` VALUES (9,'Seeds of Change Organic Quinoa, Brown, & Red Rice','<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam rem officia, corrupti reiciendis minima nisi modi, quasi, odio minus dolore impedit fuga eum eligendi.</p>',8,7,7,23,'seeds-of-change-organic-quinoa-brown-red-rice','products/imgs/product-2-2_eiKYUgz.jpg',15.0,1,12.0,'None',0.5,96,'2022-02-17','2022-07-20',4,'Snack','<p>Uninhibited carnally hired played in whimpered dear gorilla koala depending and much yikes off far quetzal goodness and from for grimaced goodness unaccountably and meadowlark near unblushingly crucial scallop tightly neurotic hungrily some and dear furiously this apart.</p>\r\n\r\n<p>Spluttered narrowly yikes left moth in yikes bowed this that grizzly much hello on spoon-fed that alas rethought much decently richly and wow against the frequent fluidly at formidable acceptably flapped besides and much circa far over the bucolically hey precarious goldfinch mastodon goodness gnashed a jellyfish and one however because.</p>\r\n\r\n<ul>\r\n	<li>Type Of PackingBottle</li>\r\n	<li>ColorGreen, Pink, Powder Blue, Purple</li>\r\n	<li>Quantity Per Case100ml</li>\r\n	<li>Ethyl Alcohol70%</li>\r\n	<li>Piece In OneCarton</li>\r\n</ul>\r\n\r\n<p>Laconic overheard dear woodchuck wow this outrageously taut beaver hey hello far meadowlark imitatively egregiously hugged that yikes minimally unanimous pouted flirtatiously as beaver beheld above forward energetic across this jeepers beneficently cockily less a the raucously that magic upheld far so the this where crud then below after jeez enchanting drunkenly more much wow callously irrespective limpet.</p>\r\n\r\n<p>Packaging &amp; Delivery</p>\r\n\r\n<p>Less lion goodness that euphemistically robin expeditiously bluebird smugly scratched far while thus cackled sheepishly rigid after due one assenting regarding censorious while occasional or this more crane went more as this less much amid overhung anathematic because much held one exuberantly sheep goodness so where rat wry well concomitantly.</p>\r\n\r\n<p>Scallop or far crud plain remarkably far by thus far iguana lewd precociously and and less rattlesnake contrary caustic wow this near alas and next and pled the yikes articulate about as less cackled dalmatian in much less well jeering for the thanks blindly sentimental whimpered less across objectively fanciful grimaced wildly some wow and rose jeepers outgrew lugubrious luridly irrationally attractively dachshund.</p>\r\n\r\n<p>Suggested Use</p>\r\n\r\n<ul>\r\n	<li>Refrigeration not necessary.</li>\r\n	<li>Stir before serving</li>\r\n</ul>\r\n\r\n<p>Other Ingredients</p>\r\n\r\n<ul>\r\n	<li>Organic raw pecans, organic raw cashews.</li>\r\n	<li>This butter was produced using a LTG (Low Temperature Grinding) process</li>\r\n	<li>Made in machinery that processes tree nuts but does not process peanuts, gluten, dairy or soy</li>\r\n</ul>\r\n\r\n<p>Warnings</p>\r\n\r\n<ul>\r\n	<li>Oil separation occurs naturally. May contain pieces of shell.</li>\r\n</ul>',2,'Hot',32.0,34.0,1,0,'','','','',0,0,''),(10,'All Natural Italian-Style Chicken Meatballs','<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam rem officia, corrupti reiciendis minima nisi modi, quasi, odio minus dolore impedit fuga eum eligendi..</p>',8,7,7,23,'seeds-of-change-organic-quinoa-brown-red-rice-myixb','products/imgs/product-2-2_v6VnN5j.jpg',32.0,0,12.0,'None',0.5,97,'2022-02-17','2022-11-28',5,'Hodo Foods','<p>Uninhibited carnally hired played in whimpered dear gorilla koala depending and much yikes off far quetzal goodness and from for grimaced goodness unaccountably and meadowlark near unblushingly crucial scallop tightly neurotic hungrily some and dear furiously this apart.</p>\r\n\r\n<p>Spluttered narrowly yikes left moth in yikes bowed this that grizzly much hello on spoon-fed that alas rethought much decently richly and wow against the frequent fluidly at formidable acceptably flapped besides and much circa far over the bucolically hey precarious goldfinch mastodon goodness gnashed a jellyfish and one however because.</p>\r\n\r\n<ul>\r\n	<li>Type Of PackingBottle</li>\r\n	<li>ColorGreen, Pink, Powder Blue, Purple</li>\r\n	<li>Quantity Per Case100ml</li>\r\n	<li>Ethyl Alcohol70%</li>\r\n	<li>Piece In OneCarton</li>\r\n</ul>\r\n\r\n<p>Laconic overheard dear woodchuck wow this outrageously taut beaver hey hello far meadowlark imitatively egregiously hugged that yikes minimally unanimous pouted flirtatiously as beaver beheld above forward energetic across this jeepers beneficently cockily less a the raucously that magic upheld far so the this where crud then below after jeez enchanting drunkenly more much wow callously irrespective limpet.</p>\r\n\r\n<p>Packaging &amp; Delivery</p>\r\n\r\n<p>Less lion goodness that euphemistically robin expeditiously bluebird smugly scratched far while thus cackled sheepishly rigid after due one assenting regarding censorious while occasional or this more crane went more as this less much amid overhung anathematic because much held one exuberantly sheep goodness so where rat wry well concomitantly.</p>\r\n\r\n<p>Scallop or far crud plain remarkably far by thus far iguana lewd precociously and and less rattlesnake contrary caustic wow this near alas and next and pled the yikes articulate about as less cackled dalmatian in much less well jeering for the thanks blindly sentimental whimpered less across objectively fanciful grimaced wildly some wow and rose jeepers outgrew lugubrious luridly irrationally attractively dachshund.</p>\r\n\r\n<p>Suggested Use</p>\r\n\r\n<ul>\r\n	<li>Refrigeration not necessary.</li>\r\n	<li>Stir before serving</li>\r\n</ul>\r\n\r\n<p>Other Ingredients</p>\r\n\r\n<ul>\r\n	<li>Organic raw pecans, organic raw cashews.</li>\r\n	<li>This butter was produced using a LTG (Low Temperature Grinding) process</li>\r\n	<li>Made in machinery that processes tree nuts but does not process peanuts, gluten, dairy or soy</li>\r\n</ul>\r\n\r\n<p>Warnings</p>\r\n\r\n<ul>\r\n	<li>Oil separation occurs naturally. May contain pieces of shell.</li>\r\n</ul>',2,'New',32.0,34.0,1,0,'','','','',80,1,''),(11,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam rem officia, corrupti reiciendis minima nisi modi, quasi, odio minus dolore impedit fuga eum eligendi..</p>',8,7,7,23,'angies-boomchickapop-sweet-salty-kettle-corn','products/imgs/product-2-2_UArbeff.jpg',16.0,0,15.0,'None',0.5,97,'2022-02-17','2022-11-28',4,'None','<p>Uninhibited carnally hired played in whimpered dear gorilla koala depending and much yikes off far quetzal goodness and from for grimaced goodness unaccountably and meadowlark near unblushingly crucial scallop tightly neurotic hungrily some and dear furiously this apart.</p>\r\n\r\n<p>Spluttered narrowly yikes left moth in yikes bowed this that grizzly much hello on spoon-fed that alas rethought much decently richly and wow against the frequent fluidly at formidable acceptably flapped besides and much circa far over the bucolically hey precarious goldfinch mastodon goodness gnashed a jellyfish and one however because.</p>\r\n\r\n<ul>\r\n	<li>Type Of PackingBottle</li>\r\n	<li>ColorGreen, Pink, Powder Blue, Purple</li>\r\n	<li>Quantity Per Case100ml</li>\r\n	<li>Ethyl Alcohol70%</li>\r\n	<li>Piece In OneCarton</li>\r\n</ul>\r\n\r\n<p>Laconic overheard dear woodchuck wow this outrageously taut beaver hey hello far meadowlark imitatively egregiously hugged that yikes minimally unanimous pouted flirtatiously as beaver beheld above forward energetic across this jeepers beneficently cockily less a the raucously that magic upheld far so the this where crud then below after jeez enchanting drunkenly more much wow callously irrespective limpet.</p>\r\n\r\n<p>Packaging &amp; Delivery</p>\r\n\r\n<p>Less lion goodness that euphemistically robin expeditiously bluebird smugly scratched far while thus cackled sheepishly rigid after due one assenting regarding censorious while occasional or this more crane went more as this less much amid overhung anathematic because much held one exuberantly sheep goodness so where rat wry well concomitantly.</p>\r\n\r\n<p>Scallop or far crud plain remarkably far by thus far iguana lewd precociously and and less rattlesnake contrary caustic wow this near alas and next and pled the yikes articulate about as less cackled dalmatian in much less well jeering for the thanks blindly sentimental whimpered less across objectively fanciful grimaced wildly some wow and rose jeepers outgrew lugubrious luridly irrationally attractively dachshund.</p>\r\n\r\n<p>Suggested Use</p>\r\n\r\n<ul>\r\n	<li>Refrigeration not necessary.</li>\r\n	<li>Stir before serving</li>\r\n</ul>\r\n\r\n<p>Other Ingredients</p>\r\n\r\n<ul>\r\n	<li>Organic raw pecans, organic raw cashews.</li>\r\n	<li>This butter was produced using a LTG (Low Temperature Grinding) process</li>\r\n	<li>Made in machinery that processes tree nuts but does not process peanuts, gluten, dairy or soy</li>\r\n</ul>\r\n\r\n<p>Warnings</p>\r\n\r\n<ul>\r\n	<li>Oil separation occurs naturally. May contain pieces of shell.</li>\r\n</ul>',2,'Hot',32.0,34.0,1,0,'','','','',50,2,''),(12,'Foster Farms Takeout Crispy Classic Buffalo Wings','<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam rem officia, corrupti reiciendis minima nisi modi, quasi, odio minus dolore impedit fuga eum eligendi..</p>',8,8,7,23,'foster-farms-takeout-crispy-classic-buffalo-wings','products/imgs/product-2-2_8bh9sIN.jpg',17.0,0,14.0,'None',0.5,96,'2022-02-17','2022-06-24',5,'None','<p>Uninhibited carnally hired played in whimpered dear gorilla koala depending and much yikes off far quetzal goodness and from for grimaced goodness unaccountably and meadowlark near unblushingly crucial scallop tightly neurotic hungrily some and dear furiously this apart.</p>\r\n\r\n<p>Spluttered narrowly yikes left moth in yikes bowed this that grizzly much hello on spoon-fed that alas rethought much decently richly and wow against the frequent fluidly at formidable acceptably flapped besides and much circa far over the bucolically hey precarious goldfinch mastodon goodness gnashed a jellyfish and one however because.</p>\r\n\r\n<ul>\r\n	<li>Type Of PackingBottle</li>\r\n	<li>ColorGreen, Pink, Powder Blue, Purple</li>\r\n	<li>Quantity Per Case100ml</li>\r\n	<li>Ethyl Alcohol70%</li>\r\n	<li>Piece In OneCarton</li>\r\n</ul>\r\n\r\n<p>Laconic overheard dear woodchuck wow this outrageously taut beaver hey hello far meadowlark imitatively egregiously hugged that yikes minimally unanimous pouted flirtatiously as beaver beheld above forward energetic across this jeepers beneficently cockily less a the raucously that magic upheld far so the this where crud then below after jeez enchanting drunkenly more much wow callously irrespective limpet.</p>\r\n\r\n<p>Packaging &amp; Delivery</p>\r\n\r\n<p>Less lion goodness that euphemistically robin expeditiously bluebird smugly scratched far while thus cackled sheepishly rigid after due one assenting regarding censorious while occasional or this more crane went more as this less much amid overhung anathematic because much held one exuberantly sheep goodness so where rat wry well concomitantly.</p>\r\n\r\n<p>Scallop or far crud plain remarkably far by thus far iguana lewd precociously and and less rattlesnake contrary caustic wow this near alas and next and pled the yikes articulate about as less cackled dalmatian in much less well jeering for the thanks blindly sentimental whimpered less across objectively fanciful grimaced wildly some wow and rose jeepers outgrew lugubrious luridly irrationally attractively dachshund.</p>\r\n\r\n<p>Suggested Use</p>\r\n\r\n<ul>\r\n	<li>Refrigeration not necessary.</li>\r\n	<li>Stir before serving</li>\r\n</ul>\r\n\r\n<p>Other Ingredients</p>\r\n\r\n<ul>\r\n	<li>Organic raw pecans, organic raw cashews.</li>\r\n	<li>This butter was produced using a LTG (Low Temperature Grinding) process</li>\r\n	<li>Made in machinery that processes tree nuts but does not process peanuts, gluten, dairy or soy</li>\r\n</ul>\r\n\r\n<p>Warnings</p>\r\n\r\n<ul>\r\n	<li>Oil separation occurs naturally. May contain pieces of shell.</li>\r\n</ul>',2,'New',32.0,34.0,1,0,'','','','',67,3,''),(13,'Blue Diamond Almonds Lightly Salted Vegetables','<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam rem officia, corrupti reiciendis minima nisi modi, quasi, odio minus dolore impedit fuga eum eligendi..</p>',8,7,7,23,'blue-diamond-almonds-lightly-salted-vegetables','products/imgs/product-2-2_Ax7bFy7.jpg',18.0,0,14.0,'None',0.5,93,'2022-02-17','2022-11-29',5,'None','<p>Uninhibited carnally hired played in whimpered dear gorilla koala depending and much yikes off far quetzal goodness and from for grimaced goodness unaccountably and meadowlark near unblushingly crucial scallop tightly neurotic hungrily some and dear furiously this apart.</p>\r\n\r\n<p>Spluttered narrowly yikes left moth in yikes bowed this that grizzly much hello on spoon-fed that alas rethought much decently richly and wow against the frequent fluidly at formidable acceptably flapped besides and much circa far over the bucolically hey precarious goldfinch mastodon goodness gnashed a jellyfish and one however because.</p>\r\n\r\n<ul>\r\n	<li>Type Of PackingBottle</li>\r\n	<li>ColorGreen, Pink, Powder Blue, Purple</li>\r\n	<li>Quantity Per Case100ml</li>\r\n	<li>Ethyl Alcohol70%</li>\r\n	<li>Piece In OneCarton</li>\r\n</ul>\r\n\r\n<p>Laconic overheard dear woodchuck wow this outrageously taut beaver hey hello far meadowlark imitatively egregiously hugged that yikes minimally unanimous pouted flirtatiously as beaver beheld above forward energetic across this jeepers beneficently cockily less a the raucously that magic upheld far so the this where crud then below after jeez enchanting drunkenly more much wow callously irrespective limpet.</p>\r\n\r\n<p>Packaging &amp; Delivery</p>\r\n\r\n<p>Less lion goodness that euphemistically robin expeditiously bluebird smugly scratched far while thus cackled sheepishly rigid after due one assenting regarding censorious while occasional or this more crane went more as this less much amid overhung anathematic because much held one exuberantly sheep goodness so where rat wry well concomitantly.</p>\r\n\r\n<p>Scallop or far crud plain remarkably far by thus far iguana lewd precociously and and less rattlesnake contrary caustic wow this near alas and next and pled the yikes articulate about as less cackled dalmatian in much less well jeering for the thanks blindly sentimental whimpered less across objectively fanciful grimaced wildly some wow and rose jeepers outgrew lugubrious luridly irrationally attractively dachshund.</p>\r\n\r\n<p>Suggested Use</p>\r\n\r\n<ul>\r\n	<li>Refrigeration not necessary.</li>\r\n	<li>Stir before serving</li>\r\n</ul>\r\n\r\n<p>Other Ingredients</p>\r\n\r\n<ul>\r\n	<li>Organic raw pecans, organic raw cashews.</li>\r\n	<li>This butter was produced using a LTG (Low Temperature Grinding) process</li>\r\n	<li>Made in machinery that processes tree nuts but does not process peanuts, gluten, dairy or soy</li>\r\n</ul>\r\n\r\n<p>Warnings</p>\r\n\r\n<ul>\r\n	<li>Oil separation occurs naturally. May contain pieces of shell.</li>\r\n</ul>',2,'New',32.0,34.0,1,0,'','','','',40,2,''),(14,'Chobani Complete Vanilla Greek Yogurt','<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam rem officia, corrupti reiciendis minima nisi modi, quasi, odio minus dolore impedit fuga eum eligendi</p>',8,7,7,23,'chobani-complete-vanilla-greek-yogurt','products/imgs/product-2-2_j1UwK18.jpg',0.0,0,14.0,'None',0.5,98,'2022-02-17','2022-11-28',4,'None','<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam rem officia, corrupti reiciendis minima nisi modi, quasi, odio minus dolore impedit fuga eum eligendi</p>',2,'New',32.0,34.0,1,0,'','','','',60,2,''),(15,'Canada Dry Ginger Ale – 2 L Bottle - 200ml - 400g','<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam rem officia, corrupti reiciendis minima nisi modi, quasi, odio minus dolore impedit fuga eum eligendi</p>',8,7,7,23,'canada-dry-ginger-ale-2-l-bottle-200ml-400g','products/imgs/product-2-2_V31JgQI.jpg',19.0,0,15.0,'None',0.5,97,'2022-02-18','2022-07-20',6,'None','<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam rem officia, corrupti reiciendis minima nisi modi, quasi, odio minus dolore impedit fuga eum eligendi</p>',2,'Hot',32.0,34.0,1,0,'','','','',80,1,''),(16,'Encore Seafoods Stuffed Alaskan Salmon','<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam rem officia, corrupti reiciendis minima nisi modi, quasi, odio minus dolore impedit fuga eum eligendi</p>',8,7,7,23,'encore-seafoods-stuffed-alaskan-salmon','products/imgs/product-2-2_P0GsnPi.jpg',19.0,0,17.0,'None',0.5,95,'2022-02-18','2022-06-24',4,'None','<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam rem officia, corrupti reiciendis minima nisi modi, quasi, odio minus dolore impedit fuga eum eligendi</p>',2,'New',32.0,34.0,1,0,'','','','',50,2,''),(17,'Gorton’s Beer Battered Fish Fillets with soft paper','<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam rem officia, corrupti reiciendis minima nisi modi, quasi, odio minus dolore impedit fuga eum eligendi</p>',8,7,7,23,'gortons-beer-battered-fish-fillets-with-soft-paper','products/imgs/product-2-2_sStzwTU.jpg',19.0,0,16.0,'None',0.5,0,'2022-02-18','2022-10-07',4,'None','<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam rem officia, corrupti reiciendis minima nisi modi, quasi, odio minus dolore impedit fuga eum eligendi</p>',2,'Hot',32.0,34.0,1,0,'products/imgs/product_imgs/product-2-2_E8Wb73v.jpg','','','',60,1,''),(93,'Haagen-Dazs Caramel Cone','<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam rem officia, corrupti reiciendis minima nisi modi, quasi, odio minus dolore impedit fuga eum eligendi</p>',8,7,7,23,'test','products/imgs/product-2-2_b2BXUm3.jpg',5.0,0,5.0,'None',500.0,3,'2022-10-07','2022-11-29',5,'None','<p>5</p>',2,'New',280.0,336.0,1,0,'','','','',0,0,'products/files/XX.zip');
/*!40000 ALTER TABLE `products_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_productimage`
--

DROP TABLE IF EXISTS `products_productimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_productimage` (
  `id` varchar(0) DEFAULT NULL,
  `PRDIImage` varchar(0) DEFAULT NULL,
  `PRDIProduct_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_productimage`
--

LOCK TABLES `products_productimage` WRITE;
/*!40000 ALTER TABLE `products_productimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_productimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_productrating`
--

DROP TABLE IF EXISTS `products_productrating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_productrating` (
  `id` tinyint(4) DEFAULT NULL,
  `rate` tinyint(4) DEFAULT NULL,
  `client_comment` varchar(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `rating_date` varchar(10) DEFAULT NULL,
  `rating_update` varchar(10) DEFAULT NULL,
  `PRDIProduct_id` tinyint(4) DEFAULT NULL,
  `client_name_id` tinyint(4) DEFAULT NULL,
  `vendor_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_productrating`
--

LOCK TABLES `products_productrating` WRITE;
/*!40000 ALTER TABLE `products_productrating` DISABLE KEYS */;
INSERT INTO `products_productrating` VALUES (26,4,'5',1,'2022-05-05','2022-05-05',11,2,2),(29,3,'good',1,'2022-05-07','2022-05-07',17,2,2),(30,1,'hhh',1,'2022-05-12','2022-05-12',14,2,2);
/*!40000 ALTER TABLE `products_productrating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_productsize`
--

DROP TABLE IF EXISTS `products_productsize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_productsize` (
  `id` tinyint(4) DEFAULT NULL,
  `name_variation` varchar(1) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `update` varchar(10) DEFAULT NULL,
  `PRDIProduct_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_productsize`
--

LOCK TABLES `products_productsize` WRITE;
/*!40000 ALTER TABLE `products_productsize` DISABLE KEYS */;
INSERT INTO `products_productsize` VALUES (83,'S','2022-10-07','2022-10-07',93),(84,'L','2022-10-07','2022-10-07',93);
/*!40000 ALTER TABLE `products_productsize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports_postreport`
--

DROP TABLE IF EXISTS `reports_postreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports_postreport` (
  `id` varchar(0) DEFAULT NULL,
  `impressions` varchar(0) DEFAULT NULL,
  `created` varchar(0) DEFAULT NULL,
  `date` varchar(0) DEFAULT NULL,
  `date_update` varchar(0) DEFAULT NULL,
  `post_id` varchar(0) DEFAULT NULL,
  `publisher_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports_postreport`
--

LOCK TABLES `reports_postreport` WRITE;
/*!40000 ALTER TABLE `reports_postreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `reports_postreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports_postview`
--

DROP TABLE IF EXISTS `reports_postview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports_postview` (
  `id` tinyint(4) DEFAULT NULL,
  `ip` varchar(36) DEFAULT NULL,
  `session` varchar(32) DEFAULT NULL,
  `referral` varchar(44) DEFAULT NULL,
  `user_agent` varchar(116) DEFAULT NULL,
  `user_agent_browser` varchar(77) DEFAULT NULL,
  `user_agent_os` varchar(69) DEFAULT NULL,
  `user_agent_device` varchar(46) DEFAULT NULL,
  `is_mobile` tinyint(4) DEFAULT NULL,
  `is_tablet` tinyint(4) DEFAULT NULL,
  `is_touch_capable` tinyint(4) DEFAULT NULL,
  `is_pc` tinyint(4) DEFAULT NULL,
  `is_bot` tinyint(4) DEFAULT NULL,
  `created` varchar(0) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `date_update` varchar(10) DEFAULT NULL,
  `post_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports_postview`
--

LOCK TABLES `reports_postview` WRITE;
/*!40000 ALTER TABLE `reports_postview` DISABLE KEYS */;
INSERT INTO `reports_postview` VALUES (3,'127.0.0.1','xnjqjv1orak567oyfzj7c0kujlx37gu3','http://127.0.0.1:8000/blog/?page=1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36','Browser(family=\'Chrome\', version=(100, 0, 4896), version_string=\'100.0.4896\')','OperatingSystem(family=\'Windows\', version=(10,), version_string=\'10\')','Device(family=\'Other\', brand=None, model=None)',0,0,0,1,0,'','2022-05-05','2022-05-05',1),(4,'197.41.131.134','','https://c321-197-41-142-45.eu.ngrok.io/blog/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36','Browser(family=\'Chrome\', version=(101, 0, 4951), version_string=\'101.0.4951\')','OperatingSystem(family=\'Windows\', version=(10,), version_string=\'10\')','Device(family=\'Other\', brand=None, model=None)',0,0,0,1,0,'','2022-05-07','2022-05-07',1),(6,'172.70.11.21','','','Cloudflare-SSLDetector','Browser(family=\'Other\', version=(), version_string=\'\')','OperatingSystem(family=\'Other\', version=(), version_string=\'\')','Device(family=\'Other\', brand=None, model=None)',0,0,0,0,0,'','2022-05-13','2022-05-13',1),(8,'2606:4700:1101:0:5352:f781:23a3:6441','','','Cloudflare-SSLDetector','Browser(family=\'Other\', version=(), version_string=\'\')','OperatingSystem(family=\'Other\', version=(), version_string=\'\')','Device(family=\'Other\', brand=None, model=None)',0,0,0,0,0,'','2022-05-13','2022-05-13',1);
/*!40000 ALTER TABLE `reports_postview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_contactinfo`
--

DROP TABLE IF EXISTS `settings_contactinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings_contactinfo` (
  `id` tinyint(4) DEFAULT NULL,
  `description` varchar(6) DEFAULT NULL,
  `full_address` varchar(56) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `email` varchar(17) DEFAULT NULL,
  `contact_date` varchar(10) DEFAULT NULL,
  `Work_time` varchar(24) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `map_link` varchar(139) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `date_update` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_contactinfo`
--

LOCK TABLES `settings_contactinfo` WRITE;
/*!40000 ALTER TABLE `settings_contactinfo` DISABLE KEYS */;
INSERT INTO `settings_contactinfo` VALUES (1,'Office','205 North Michigan Avenue, Suite 810 Chicago, 60601, USA','(123) 456-7890','contact@Evara.com','2022-05-06','10:00 - 18:00, Mon - Sat',1,'https://www.google.com/maps/dir//New+York+USA/@40.7127753,-74.0059728,13z/data=!4m5!4m4!1m0!1m2!1m1!1s0x89c24fa5d33f083b:0xc80b8f06e177fe62','2022-05-07','2022-05-07'),(2,'Studio','205 North Michigan Avenue, Suite 810 Chicago, 60601, USA','(123) 456-7890','contact@Evara.com','2022-05-06','10:00 - 18:00, Mon - Sat',1,'https://www.google.com/maps/dir//New+York+USA/@40.7127753,-74.0059728,13z/data=!4m5!4m4!1m0!1m2!1m1!1s0x89c24fa5d33f083b:0xc80b8f06e177fe62','2022-05-07','2022-05-07'),(3,'Shop','205 North Michigan Avenue, Suite 810 Chicago, 60601, USA','(123) 456-7890','contact@Evara.com','2022-05-06','10:00 - 18:00, Mon - Sat',1,'https://www.google.com/maps/dir//New+York+USA/@40.7127753,-74.0059728,13z/data=!4m5!4m4!1m0!1m2!1m1!1s0x89c24fa5d33f083b:0xc80b8f06e177fe62','2022-05-07','2022-05-07');
/*!40000 ALTER TABLE `settings_contactinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_homepagetheme`
--

DROP TABLE IF EXISTS `settings_homepagetheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings_homepagetheme` (
  `id` tinyint(4) DEFAULT NULL,
  `page_name` varchar(7) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `date_update` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_homepagetheme`
--

LOCK TABLES `settings_homepagetheme` WRITE;
/*!40000 ALTER TABLE `settings_homepagetheme` DISABLE KEYS */;
INSERT INTO `settings_homepagetheme` VALUES (1,'index-1',0,'2022-08-01','2023-06-04'),(2,'index-2',0,'2022-08-01','2023-06-04'),(3,'index-3',0,'2022-08-01','2023-06-04'),(4,'index-4',0,'2022-08-01','2023-06-04'),(5,'random',1,'2022-08-07','2023-06-04');
/*!40000 ALTER TABLE `settings_homepagetheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_sitesetting`
--

DROP TABLE IF EXISTS `settings_sitesetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings_sitesetting` (
  `id` tinyint(4) DEFAULT NULL,
  `site_name` varchar(4) DEFAULT NULL,
  `site_title` varchar(43) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `site_logo` varchar(33) DEFAULT NULL,
  `favicon` varchar(36) DEFAULT NULL,
  `login_image` varchar(26) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `date_update` varchar(10) DEFAULT NULL,
  `site_url` varchar(27) DEFAULT NULL,
  `footer_image` varchar(30) DEFAULT NULL,
  `shipping` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_sitesetting`
--

LOCK TABLES `settings_sitesetting` WRITE;
/*!40000 ALTER TABLE `settings_sitesetting` DISABLE KEYS */;
INSERT INTO `settings_sitesetting` VALUES (3,'Nest','Nest - Multipurpose eCommerce HTML Template','We specialise in design and improve product and se','site_logo/imgs/logo_VKBBW51_1.png','site_logo/imgs/favicon_p4HhDzm_1.png','site_logo/imgs/login-1.png','2022-05-28','2022-06-18','https://nest.apexcode.info/','site_logo/imgs/banner-13_1.png',5.0);
/*!40000 ALTER TABLE `settings_sitesetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_socaillinks`
--

DROP TABLE IF EXISTS `settings_socaillinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings_socaillinks` (
  `id` tinyint(4) DEFAULT NULL,
  `facebook` varchar(25) DEFAULT NULL,
  `twitter` varchar(20) DEFAULT NULL,
  `youtube` varchar(24) DEFAULT NULL,
  `pinterest` varchar(26) DEFAULT NULL,
  `instagram` varchar(26) DEFAULT NULL,
  `date_created` varchar(10) DEFAULT NULL,
  `date_update` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_socaillinks`
--

LOCK TABLES `settings_socaillinks` WRITE;
/*!40000 ALTER TABLE `settings_socaillinks` DISABLE KEYS */;
INSERT INTO `settings_socaillinks` VALUES (1,'https://www.facebook.com/','https://twitter.com/','https://www.youtube.com/','https://www.pinterest.com/','https://www.instagram.com/','2022-05-06','2022-05-06');
/*!40000 ALTER TABLE `settings_socaillinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_supportnumber`
--

DROP TABLE IF EXISTS `settings_supportnumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings_supportnumber` (
  `id` tinyint(4) DEFAULT NULL,
  `number` varchar(11) DEFAULT NULL,
  `Work_time` varchar(20) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `date_update` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_supportnumber`
--

LOCK TABLES `settings_supportnumber` WRITE;
/*!40000 ALTER TABLE `settings_supportnumber` DISABLE KEYS */;
INSERT INTO `settings_supportnumber` VALUES (1,'1900 - 8888','24/7 Support Center','2022-05-07','2022-05-07'),(2,'1900 - 6666','Working 8:00 - 22:00','2022-05-07','2022-05-07');
/*!40000 ALTER TABLE `settings_supportnumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(27) DEFAULT NULL,
  `seq` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',234),('django_admin_log',1550),('django_content_type',52),('auth_permission',232),('auth_group',0),('auth_user',25),('captcha_captchastore',9),('auth_user_user_permissions',228),('accounts_bankaccount',6),('accounts_profile',2),('accounts_sociallink',3),('blog_comment',0),('blog_post',1),('categories_maincategory',28),('categories_minicategory',20),('categories_subcategory',20),('categories_supercategory',27),('contact_messageslist',1),('home_carousel',2),('home_headtextad',1),('home_homeaddaily',1),('home_homeaddealtime',4),('home_homeadmiddlebar',3),('home_homeadsidebar',3),('home_homeadsupplier',4),('home_hotdealad',3),('home_shopadsidebar',1),('home_vendordetailsadimage',1),('newsletters_newsletter',41),('orders_country',0),('orders_coupon',1),('orders_order',280),('orders_orderdetails',443),('orders_orderdetailssupplier',324),('orders_ordersupplier',274),('orders_payment',540),('pages_pageslist',3),('payments_vendorpayments',0),('products_productimage',0),('products_productrating',30),('reports_postreport',0),('reports_postview',8),('settings_contactinfo',3),('settings_homepagetheme',5),('settings_sitesetting',3),('settings_socaillinks',1),('settings_supportnumber',2),('products_product',94),('products_productsize',84);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-27 22:45:11
