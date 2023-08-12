-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: eshop
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add customer',8,'add_customer'),(30,'Can change customer',8,'change_customer'),(31,'Can delete customer',8,'delete_customer'),(32,'Can view customer',8,'view_customer'),(33,'Can add products',9,'add_products'),(34,'Can change products',9,'change_products'),(35,'Can delete products',9,'delete_products'),(36,'Can view products',9,'view_products'),(37,'Can add order',10,'add_order'),(38,'Can change order',10,'change_order'),(39,'Can delete order',10,'delete_order'),(40,'Can view order',10,'view_order');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$qXzvDhb6eon3$VjyJT0mkqn6hXYXt7Qd43FZ/EMpqVYzgxs/PC/gARsA=','2023-08-11 14:58:14.061317',1,'rahul','','','rahul@gmail.com',1,1,'2023-08-11 14:58:10.918871');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'store','category'),(8,'store','customer'),(10,'store','order'),(9,'store','products');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-08-11 14:46:57.274364'),(2,'auth','0001_initial','2023-08-11 14:46:57.522177'),(3,'admin','0001_initial','2023-08-11 14:46:57.588749'),(4,'admin','0002_logentry_remove_auto_add','2023-08-11 14:46:57.595001'),(5,'admin','0003_logentry_add_action_flag_choices','2023-08-11 14:46:57.602286'),(6,'contenttypes','0002_remove_content_type_name','2023-08-11 14:46:57.651845'),(7,'auth','0002_alter_permission_name_max_length','2023-08-11 14:46:57.689001'),(8,'auth','0003_alter_user_email_max_length','2023-08-11 14:46:57.702729'),(9,'auth','0004_alter_user_username_opts','2023-08-11 14:46:57.708497'),(10,'auth','0005_alter_user_last_login_null','2023-08-11 14:46:57.735612'),(11,'auth','0006_require_contenttypes_0002','2023-08-11 14:46:57.737657'),(12,'auth','0007_alter_validators_add_error_messages','2023-08-11 14:46:57.744888'),(13,'auth','0008_alter_user_username_max_length','2023-08-11 14:46:57.781412'),(14,'auth','0009_alter_user_last_name_max_length','2023-08-11 14:46:57.810705'),(15,'auth','0010_alter_group_name_max_length','2023-08-11 14:46:57.823719'),(16,'auth','0011_update_proxy_permissions','2023-08-11 14:46:57.829046'),(17,'auth','0012_alter_user_first_name_max_length','2023-08-11 14:46:57.862164'),(18,'sessions','0001_initial','2023-08-11 14:46:57.883042'),(19,'store','0001_initial','2023-08-11 14:46:57.993734'),(20,'store','0002_auto_20210423_1934','2023-08-11 14:46:58.073423'),(21,'store','0003_order_address','2023-08-11 14:46:58.090238'),(22,'store','0004_order_phone','2023-08-11 14:46:58.106756'),(23,'store','0005_order_date','2023-08-11 14:46:58.126528'),(24,'store','0006_order_status','2023-08-11 14:46:58.145539'),(25,'store','0007_alter_customer_phone','2023-08-11 15:02:18.732537'),(26,'store','0008_alter_customer_phone','2023-08-11 17:06:56.819896');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('71ic2nodp3r7hljrjvwy9pif056qvp11','.eJxVjMsOgyAQRf-FdUMAy8tl9_0GMjBjtQ9JAFfGf68mbtzec-5ZWYLSWL9uNxZgaWNYKpUwIeuZZJctQvrQfAB8w_zKPOW5lSnyQ-EnrfyZkb6P070ERqjj_jYDIgnbGQ3eG1IW7o6E9JYQEKSWwkQSDg05mbrB6Og0dBpU9FapCHs0LbXlHxXWy-0PUZ8_nA:1qUVbn:FE_ZMhAw5KmT65XY_DC1ufWMk4SpvuQ9BZ5iS0LVbOc','2023-08-25 17:07:31.752766');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_category`
--

DROP TABLE IF EXISTS `store_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_category`
--

LOCK TABLES `store_category` WRITE;
/*!40000 ALTER TABLE `store_category` DISABLE KEYS */;
INSERT INTO `store_category` VALUES (22,'Women-Clothing'),(23,'Men-Clothing'),(24,'Kids-Clothing'),(25,'Watches'),(26,'Shoes & Handbags'),(27,'Books'),(28,'Home & Kitchen'),(29,'Health & Personal Care'),(30,'Gifts'),(31,'Appliances'),(32,'Mobiles');
/*!40000 ALTER TABLE `store_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_customer`
--

DROP TABLE IF EXISTS `store_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_customer`
--

LOCK TABLES `store_customer` WRITE;
/*!40000 ALTER TABLE `store_customer` DISABLE KEYS */;
INSERT INTO `store_customer` VALUES (1,'Rahul','R P','+917293771621','rahulrp.india@gmail.com','pbkdf2_sha256$216000$ppcHtyXNQs0m$wiJFkOZI3lFB6nYdx4rF6cazYZXIk8em4i8ZuZlieu8=');
/*!40000 ALTER TABLE `store_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_order`
--

DROP TABLE IF EXISTS `store_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_order_customer_id_13d6d43e_fk_store_customer_id` (`customer_id`),
  KEY `store_order_product_id_11796f0f_fk_store_products_id` (`product_id`),
  CONSTRAINT `store_order_customer_id_13d6d43e_fk_store_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `store_customer` (`id`),
  CONSTRAINT `store_order_product_id_11796f0f_fk_store_products_id` FOREIGN KEY (`product_id`) REFERENCES `store_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_order`
--

LOCK TABLES `store_order` WRITE;
/*!40000 ALTER TABLE `store_order` DISABLE KEYS */;
INSERT INTO `store_order` VALUES (1,1,999,1,58,'test','7293771621','2023-08-11',0);
/*!40000 ALTER TABLE `store_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_products`
--

DROP TABLE IF EXISTS `store_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `price` int NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_products_category_id_48867233_fk_store_category_id` (`category_id`),
  CONSTRAINT `store_products_category_id_48867233_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_products`
--

LOCK TABLES `store_products` WRITE;
/*!40000 ALTER TABLE `store_products` DISABLE KEYS */;
INSERT INTO `store_products` VALUES (57,'knee-length Frock',699,NULL,'uploads/products/7_uhXCNAG.jpg',22),(58,'Black watch',999,NULL,'uploads/products/41FVBFDQ-L._AC_SR320320__x8K742C.jpg',25),(59,'kid red frock',399,NULL,'uploads/products/41Tm1uwMmOL._AC_SR320400__OccglUa.jpg',24),(60,'Grey Tshirt',890,NULL,'uploads/products/41EgywqPk2L._AC_UL320_SR320320__8DZmwl9.jpg',23),(61,'Backpack',890,NULL,'uploads/products/514wphzZk7S._AC__g84VeRW.jpg',26),(62,'gown',990,NULL,'uploads/products/31ef1nDAdCL._AC_SR320400__wr00sC9.jpg',22),(63,'Denim set',1090,NULL,'uploads/products/31WzloVVToL._AC_SR320400__JuFJdQA.jpg',24),(64,'Multicolor frock',1999,NULL,'uploads/products/9_QebDpqi.jpg',22),(65,'pink long gown',2999,NULL,'uploads/products/31adeoSK0CL._AC_SR320400__5kLvkHW.jpg',22),(66,'dress',2990,NULL,'uploads/products/31-MSgaPUL._AC_SR320400__rdkZc7r.jpg',24),(67,'Baby Frock',890,NULL,'uploads/products/41oABYsbrwL._AC_SR320400__ZinFYrU.jpg',24),(68,'Linning Dress',990,NULL,'uploads/products/41LKI6hLTgL._AC_SR320400__nMd4hS7.jpg',22),(69,'t-shirt',899,NULL,'uploads/products/41x1lqLMyL._AC_SR320400__chBwbdw.jpg',23),(70,'Black-Yellow Tshirt',400,NULL,'uploads/products/51Lv37fiwTL._AC_UL320_SR320320__STeRZCq.jpg',23),(71,'Black Shirt',399,NULL,'uploads/products/513Fy11CuzL._AC_SR320400__plK9q7T.jpg',23),(72,'mini dress',800,NULL,'uploads/products/71RWWweifuL._AC_UL320_SR320320__xM95LKs.jpg',22),(73,'Casio Analog',1000,NULL,'uploads/products/Casio._SS680_QL85__DskQXgr.jpg',25),(74,'Combo watches',500,NULL,'uploads/products/DWW._SS400_QL85__FipkklG.jpg',25),(75,'Denim Jacket',990,NULL,'uploads/products/Men_hy6fczR.jpg',23),(76,'Combo watches',990,NULL,'uploads/products/CS._SS400_QL85__4YDUqRm.jpg',25),(77,'navy blue tshirt',340,NULL,'uploads/products/4169ok3M3TL._AC_SR320400__RfvZIQJ.jpg',23),(78,'Brown coloured dress',1900,NULL,'uploads/products/Women_LucapaK.jpg',22),(79,'combo bags',1000,NULL,'uploads/products/41N5WVXzQAL._AC_SR320320__33G8TY3.jpg',26),(80,'Black colored shoes',999,NULL,'uploads/products/61LctS6qp7L._AC_UL320_SR320320__CD33bqv.jpg',26),(81,'Blue-grey shoes',780,NULL,'uploads/products/71yZ3oagv7L._AC_UL1500__I5TAIrZ.jpg',26),(82,'Baby Boy Dress',1900,NULL,'uploads/products/41INKd7XG0L._AC_SR320400__zuSU4Gy.jpg',24),(83,'Coding Games in Scratch',799,NULL,'uploads/products/51s9Bnhr1qL._AA210_.jpg',27),(84,'Star Wars Myths & Fables',600,NULL,'uploads/products/51Ffcep58fL._AA210_.jpg',27),(85,'5-Minute Racing Stories',469,NULL,'uploads/products/515rsnc7ErL._AA210_.jpg',27),(86,'Chess For Dummies',588,NULL,'uploads/products/51O0U68M2jL._AA210_.jpg',27),(87,'Don\'t Let the Pigeon Stay Up Late!',589,NULL,'uploads/products/51Y4cB32CoL._AA210_.jpg',27),(88,'Water Balloons',499,NULL,'uploads/products/71tb7LKauOL._AC_UL320_.jpg',30),(89,'Nightlight Lamp',390,NULL,'uploads/products/71wa56BxzTL._AC_UL320_.jpg',30),(90,'Walkies Talkies',1990,NULL,'uploads/products/81JnxfkUYL._AC_UL320_.jpg',30),(91,'Vaccinated for Covid 19 keychain',156,NULL,'uploads/products/91hr1ocmCL._AC_UL320_.jpg',29),(92,'Disposable Masks',380,NULL,'uploads/products/81bmMsAwI-L._AC_UL320_.jpg',29),(93,'Magnifying glass for reading',2890,NULL,'uploads/products/51DpM-TIAqS._AC_UL270_SR270270_.jpg',29),(94,'Sole Designs Reusable Washable',290,NULL,'uploads/products/91rpxG-dO4L._AC_UL320_.jpg',29),(95,'Bands',280,NULL,'uploads/products/61ZnXKOo5oL._AC_UL320_.jpg',29),(96,'Colorful candles',599,NULL,'uploads/products/61MeA5qHIaL._AC_UL270_SR270270_.jpg',28),(97,'Decors',590,NULL,'uploads/products/71ck3ge7PYL._AC_UL320_.jpg',28),(98,'Stars',489,NULL,'uploads/products/71gEWtwaZbL._AC_UL320_.jpg',28),(99,'Gift Mug',780,NULL,'uploads/products/61LbAmB0BZS._AC_UL100_SR100100_.jpg',30),(100,'photo Frame',777,NULL,'uploads/products/71KlXoOsXzL._AC_UL320_.jpg',28),(101,'Wall Mounted',478,NULL,'uploads/products/71k0ZI4IVL._AC_UL320_.jpg',28),(102,'fancy owl',230,NULL,'uploads/products/81vPkrXgNzL._AC_UL320_.jpg',28),(103,'WIND chime',590,NULL,'uploads/products/61GdQObXKbL._AC_UL320_.jpg',28),(104,'Wall  Mounted',689,NULL,'uploads/products/61Huv14oWjS._AC_UL320_.jpg',28),(105,'SAMSUNG Galaxy F04 (Jade Purple)',7099,'With an astounding 8 GB of RAM, the Samsung Galaxy F04 smartphone makes multitasking a breeze. Furthermore, an innovative RAM Plus technology intelligently expands your memory by leveraging your storage as virtual memory, letting you keep up with gra','uploads/products/Samsung-Galaxy-F04-460x460.jpg',32),(106,'POCO C51 (Power Black)',6499,'Give your inner tech nerd a treat with the POCO C51 smartphone, which mesmerises you from the minute you switch it on thanks to its top-notch performance. The POCO C51\'s MediaTek Helio G36 octa-core Processor, clocked at up to 2.2 GHz, has all the p','uploads/products/poco-c51-64-gb-royal-blue-4-gb-ram-.jpg',32),(107,'MOTOROLA Edge 40 (Nebula Green)',29999,'Fuelled with a host of features, this Motorola Edge 40 smartphone brings to you a slim IP68 rated with 30 minutes of underwater dunk resistance. The 3D curved display, bezel-less design, vegan leather option, and sandblasted metal frame add to the ph','uploads/products/edge-40-pay40030in-motorola-original-imagpqzchzhg6fex.jpeg',32),(108,'Vu GloLED 164 cm',54999,'Enjoy stunning pictures and organise your entertainment with the amazing Vu GloLED TV, which is packed with futuristic capabilities and can hypnotise you with its astounding appearance. You can view content in a rich, colourful setting thanks to this','uploads/products/716LfJ7-2RL.jpg',31),(109,'Sansui 165 cm LED Smart TV',70290,'Ultra HD (4K) LED Smart TV with Hands Free Voice Command','uploads/products/-original-imagrfdkck6ydta2.jpeg',31),(110,'D2H HD DTH',940,'This offer includes d2h HD set top box Connection with 1 Month subscription of Hindi Value Lite Pack , 5 Year Warranty on Set Top Box along with Delivery and Installation. d2h offers the most extensive world of digital entertainment by offering a wid','uploads/products/with-1-month-value-lite-hindi-pack-fast-delivery-installation-hd-origi_BIM6rGW.webp',31);
/*!40000 ALTER TABLE `store_products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-12  0:10:46
