-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: projects
-- ------------------------------------------------------
-- Server version	8.0.20

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (3,'perms_user');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (19,3,4),(22,3,6),(23,3,8),(28,3,20),(29,3,24),(30,3,28),(24,3,42),(25,3,44),(26,3,45),(27,3,48);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add project',1,'add_project'),(2,'Can change project',1,'change_project'),(3,'Can delete project',1,'delete_project'),(4,'Can view project',1,'view_project'),(5,'Can add task',2,'add_task'),(6,'Can change task',2,'change_task'),(7,'Can delete task',2,'delete_task'),(8,'Can view task',2,'view_task'),(9,'Can add log time',3,'add_logtime'),(10,'Can change log time',3,'change_logtime'),(11,'Can delete log time',3,'delete_logtime'),(12,'Can view log time',3,'view_logtime'),(13,'Can add log entry',4,'add_logentry'),(14,'Can change log entry',4,'change_logentry'),(15,'Can delete log entry',4,'delete_logentry'),(16,'Can view log entry',4,'view_logentry'),(17,'Can add permission',5,'add_permission'),(18,'Can change permission',5,'change_permission'),(19,'Can delete permission',5,'delete_permission'),(20,'Can view permission',5,'view_permission'),(21,'Can add group',6,'add_group'),(22,'Can change group',6,'change_group'),(23,'Can delete group',6,'delete_group'),(24,'Can view group',6,'view_group'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add content type',8,'add_contenttype'),(30,'Can change content type',8,'change_contenttype'),(31,'Can delete content type',8,'delete_contenttype'),(32,'Can view content type',8,'view_contenttype'),(33,'Can add session',9,'add_session'),(34,'Can change session',9,'change_session'),(35,'Can delete session',9,'delete_session'),(36,'Can view session',9,'view_session'),(37,'Can add comment',10,'add_comment'),(38,'Can change comment',10,'change_comment'),(39,'Can delete comment',10,'delete_comment'),(40,'Can view comment',10,'view_comment'),(41,'Can add Профиль',11,'add_userprofile'),(42,'Can change Профиль',11,'change_userprofile'),(43,'Can delete Профиль',11,'delete_userprofile'),(44,'Can view Профиль',11,'view_userprofile'),(45,'Can add new comment',12,'add_newcomment'),(46,'Can change new comment',12,'change_newcomment'),(47,'Can delete new comment',12,'delete_newcomment'),(48,'Can view new comment',12,'view_newcomment');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$JOYbujwmgFeE7aRCz3GzkG$QZUaLrlHloj6svdIP3HRmQRdozsapjgYYAK9sMgBBE8=','2022-02-03 17:11:20.131289',1,'admin','alex','lytvyn','joker270599@gmail.com',1,1,'2022-01-08 14:49:33.000000'),(2,'pbkdf2_sha256$320000$P8fNAd5pxatgZMT7AdC9w7$4hJK3gJcChIGfXcgkwswCcBjuutTiVUc2C5bzCHuovc=','2022-02-03 14:22:35.164129',0,'proger','linux','','',1,1,'2022-01-08 14:51:33.000000'),(3,'pbkdf2_sha256$320000$0F82yoL3Hdv9WdCqZapthb$eeGX76PV5QzT/PjmFqBJX2V/3avbEUd/yjK1C42nw3E=','2022-02-02 16:58:35.000000',0,'tester','win','','',1,1,'2022-01-08 14:52:53.000000'),(4,'pbkdf2_sha256$320000$3Fv6aj7lyh2RucmJihlOTc$c6f56D7RGEQgb+72mSufOxeDduPUV5El8HUazQOuSs8=','2022-02-03 13:58:08.383380',0,'hack','','','',1,1,'2022-02-02 16:16:45.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (7,1,3),(5,2,3),(6,3,3),(4,4,3);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-01-08 14:51:33.184845','2','proger',1,'[{\"added\": {}}]',7,1),(2,'2022-01-08 14:51:43.488315','2','proger',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',7,1),(3,'2022-01-08 14:52:54.090840','3','tester',1,'[{\"added\": {}}]',7,1),(4,'2022-01-08 14:53:07.959101','3','tester',2,'[{\"changed\": {\"fields\": [\"First name\", \"Staff status\"]}}]',7,1),(5,'2022-01-08 14:53:15.703507','2','proger',2,'[{\"changed\": {\"fields\": [\"First name\"]}}]',7,1),(6,'2022-01-08 14:54:31.936999','9c1f2f43-6df2-4981-bfaa-9fd5ef7302e7','Тест',1,'[{\"added\": {}}]',1,1),(7,'2022-01-08 14:54:47.126105','9c1f2f43-6df2-4981-bfaa-9fd5ef7302e7','Тест',2,'[]',1,1),(8,'2022-01-08 14:55:18.276158','1','задание',1,'[{\"added\": {}}]',2,1),(9,'2022-01-08 14:55:37.876041','9c1f2f43-6df2-4981-bfaa-9fd5ef7302e7','Тест',2,'[]',1,1),(10,'2022-01-08 14:56:13.279626','dab62f2f-e263-464a-90d9-024aa1e8d12b','Тест 2',1,'[{\"added\": {}}]',1,1),(11,'2022-01-08 14:56:50.685985','2','задание 2',1,'[{\"added\": {}}]',2,1),(12,'2022-01-08 15:01:47.613265','1','тестеры',1,'[{\"added\": {}}]',6,1),(13,'2022-01-08 15:03:05.044347','2','прогеры',1,'[{\"added\": {}}]',6,1),(14,'2022-01-08 15:03:37.161044','2','proger',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',7,1),(15,'2022-01-08 15:03:48.880161','2','proger',2,'[]',7,1),(16,'2022-01-08 15:03:57.369873','3','tester',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',7,1),(17,'2022-01-08 15:04:05.467210','2','proger',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',7,1),(18,'2022-01-08 15:42:15.581688','9c1f2f43-6df2-4981-bfaa-9fd5ef7302e7','Тест',2,'[]',1,1),(19,'2022-01-10 12:18:39.711446','1','тестеры',2,'[]',6,1),(20,'2022-01-10 12:29:22.220611','2','proger',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',7,1),(21,'2022-01-10 12:31:34.817895','1','задание',2,'[]',2,1),(22,'2022-01-10 12:51:12.730899','3','задание 3',1,'[{\"added\": {}}]',2,1),(23,'2022-01-10 12:52:26.992256','3','задание 3',2,'[]',2,1),(24,'2022-01-10 13:34:26.714105','9c1f2f43-6df2-4981-bfaa-9fd5ef7302e7','Тест',2,'[]',1,1),(25,'2022-01-10 14:03:17.232904','4','задание 4',1,'[{\"added\": {}}]',2,1),(26,'2022-01-10 14:33:40.582431','9c1f2f43-6df2-4981-bfaa-9fd5ef7302e7','Тест',2,'[]',1,1),(27,'2022-01-20 18:58:05.107150','4','задание 4',2,'[{\"changed\": {\"fields\": [\"\\u0422\\u0438\\u043f \\u0437\\u0430\\u0434\\u0430\\u043d\\u0438\\u044f\", \"\\u041f\\u0440\\u0438\\u043e\\u0440\\u0438\\u0442\\u0435\\u0442 \\u0437\\u0430\\u0434\\u0430\\u043d\\u0438\\u044f\"]}}]',2,1),(28,'2022-01-20 18:58:11.851007','3','задание 3',2,'[{\"changed\": {\"fields\": [\"\\u0422\\u0438\\u043f \\u0437\\u0430\\u0434\\u0430\\u043d\\u0438\\u044f\", \"\\u041f\\u0440\\u0438\\u043e\\u0440\\u0438\\u0442\\u0435\\u0442 \\u0437\\u0430\\u0434\\u0430\\u043d\\u0438\\u044f\", \"\\u0412\\u0440\\u0435\\u043c\\u044f \\u043d\\u0430 \\u0437\\u0430\\u0434\\u0430\\u043d\\u0438\\u0435(\\u0432 \\u0447\\u0430\\u0441\\u0430\\u0445)\"]}}]',2,1),(29,'2022-01-20 18:58:16.979362','2','задание 2',2,'[{\"changed\": {\"fields\": [\"\\u0422\\u0438\\u043f \\u0437\\u0430\\u0434\\u0430\\u043d\\u0438\\u044f\", \"\\u041f\\u0440\\u0438\\u043e\\u0440\\u0438\\u0442\\u0435\\u0442 \\u0437\\u0430\\u0434\\u0430\\u043d\\u0438\\u044f\"]}}]',2,1),(30,'2022-01-20 18:58:21.377962','1','задание',2,'[{\"changed\": {\"fields\": [\"\\u0422\\u0438\\u043f \\u0437\\u0430\\u0434\\u0430\\u043d\\u0438\\u044f\", \"\\u041f\\u0440\\u0438\\u043e\\u0440\\u0438\\u0442\\u0435\\u0442 \\u0437\\u0430\\u0434\\u0430\\u043d\\u0438\\u044f\"]}}]',2,1),(31,'2022-01-20 18:59:39.752086','1','admin',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]',7,1),(32,'2022-01-21 14:50:20.264037','3','tester',2,'[{\"added\": {\"name\": \"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\", \"object\": \"UserProfile object (1)\"}}]',7,1),(33,'2022-01-21 15:39:00.455019','2','proger',2,'[{\"added\": {\"name\": \"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c\", \"object\": \"UserProfile object (2)\"}}]',7,1),(34,'2022-01-21 15:40:00.144169','2','прогеры',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',6,1),(35,'2022-01-21 15:40:17.611059','1','тестеры',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',6,1),(36,'2022-01-21 15:41:34.075207','2','прогеры',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',6,1),(37,'2022-01-21 15:41:42.067747','1','тестеры',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',6,1),(38,'2022-01-23 14:50:28.425937','2','прогеры',2,'[]',6,1),(39,'2022-01-30 23:53:07.669494','3','new comment',1,'[{\"added\": {}}]',10,1),(40,'2022-01-30 23:53:55.336535','3','Comment object (3)',2,'[]',10,1),(41,'2022-01-30 23:55:57.086170','3','new comment',2,'[]',10,1),(42,'2022-01-31 00:04:43.034811','3','new comment',2,'[]',10,1),(43,'2022-01-31 00:04:57.817393','3','new comment',2,'[]',10,1),(44,'2022-01-31 00:05:04.924793','3','new comment',2,'[]',10,1),(45,'2022-01-31 00:31:40.674909','3','new comment',2,'[]',10,1),(46,'2022-01-31 00:48:41.188005','3','new comment',2,'[{\"changed\": {\"fields\": [\"\\u041a\\u043e\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439 \\u043a \\u0437\\u0430\\u0434\\u0430\\u0447\\u0435\"]}}]',10,1),(47,'2022-01-31 01:40:06.473742','4','new comment 2',1,'[{\"added\": {}}]',10,1),(48,'2022-01-31 01:41:03.233051','5','new com2',1,'[{\"added\": {}}]',10,1),(49,'2022-01-31 15:21:01.836297','1','new comment',1,'[{\"added\": {}}]',12,1),(50,'2022-01-31 15:22:23.357486','2','new comment',1,'[{\"added\": {}}]',12,1),(51,'2022-01-31 15:23:22.098040','3','com2',1,'[{\"added\": {}}]',12,1),(52,'2022-01-31 15:23:28.242383','1','new comment',3,'',12,1),(53,'2022-01-31 15:48:32.373974','2','new comment',2,'[]',12,1),(54,'2022-01-31 23:36:55.460868','4','новый коммент',1,'[{\"added\": {}}]',12,1),(55,'2022-01-31 23:38:04.520918','5','еще один коммент',1,'[{\"added\": {}}]',12,1),(56,'2022-01-31 23:40:02.538977','2','I had this issue where I was playing with same database structure in production vs development. While dropping and recreating tables will probably resolve the issue, its worth checking your databas',2,'[{\"changed\": {\"fields\": [\"\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439\"]}}]',12,1),(57,'2022-01-31 23:46:09.931357','3','ваш комментарий',2,'[{\"changed\": {\"fields\": [\"\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439\"]}}]',12,1),(58,'2022-01-31 23:46:27.153227','6','и снова коммент',1,'[{\"added\": {}}]',12,1),(59,'2022-02-01 00:03:26.846671','8','2',3,'',12,1),(60,'2022-02-01 00:03:30.350432','7','2',3,'',12,1),(61,'2022-02-01 01:05:13.859445','9','151',3,'',12,1),(62,'2022-02-01 01:05:39.567499','10','151',3,'',12,1),(63,'2022-02-01 01:06:44.968978','12','new',3,'',12,1),(64,'2022-02-01 01:06:49.255149','11','1515',3,'',12,1),(65,'2022-02-01 01:12:32.295339','13','enot',3,'',12,1),(66,'2022-02-01 01:12:37.025720','14','qweq',3,'',12,1),(67,'2022-02-01 01:14:05.598953','15','qwe',3,'',12,1),(68,'2022-02-01 15:55:49.297606','9c1f2f43-6df2-4981-bfaa-9fd5ef7302e7','Тест',2,'[{\"changed\": {\"fields\": [\"\\u041a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430\"]}}]',1,1),(69,'2022-02-02 16:16:45.992122','4','hack',1,'[{\"added\": {}}]',7,1),(70,'2022-02-02 16:48:33.459901','4','hack',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',7,3),(71,'2022-02-03 10:39:09.593818','3','может добавлять комент',1,'[{\"added\": {}}]',6,1),(72,'2022-02-03 10:39:23.201731','4','hack',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',7,1),(73,'2022-02-03 10:45:22.513472','3','задачи',2,'[{\"changed\": {\"fields\": [\"Name\", \"Permissions\"]}}]',6,1),(74,'2022-02-03 10:50:45.036872','3','task',2,'[{\"changed\": {\"fields\": [\"Name\", \"Permissions\"]}}]',6,1),(75,'2022-02-03 10:59:56.992430','9c1f2f43-6df2-4981-bfaa-9fd5ef7302e7','Тест',2,'[{\"changed\": {\"fields\": [\"\\u041a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430\"]}}]',1,1),(76,'2022-02-03 11:00:34.186747','3','proj',2,'[{\"changed\": {\"fields\": [\"Name\", \"Permissions\"]}}]',6,1),(77,'2022-02-03 11:21:26.827951','9c1f2f43-6df2-4981-bfaa-9fd5ef7302e7','Тест',2,'[{\"changed\": {\"fields\": [\"\\u041a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430\"]}}]',1,1),(78,'2022-02-03 12:15:24.046725','3','proj',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',6,1),(79,'2022-02-03 12:15:40.549440','4','hack',2,'[]',7,1),(80,'2022-02-03 12:20:12.240261','dab62f2f-e263-464a-90d9-024aa1e8d12b','Тест 2',2,'[{\"changed\": {\"fields\": [\"\\u041a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430\"]}}]',1,4),(81,'2022-02-03 12:39:15.512376','9c1f2f43-6df2-4981-bfaa-9fd5ef7302e7','Тест',2,'[]',1,1),(82,'2022-02-03 12:39:23.680161','dab62f2f-e263-464a-90d9-024aa1e8d12b','Тест 2',2,'[]',1,1),(83,'2022-02-03 12:42:25.451845','2','proger',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',7,1),(84,'2022-02-03 13:00:19.770560','3','proj',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',6,1),(85,'2022-02-03 13:01:10.632227','2','proger',2,'[{\"changed\": {\"fields\": [\"Name\", \"Permissions\"]}}]',6,1),(86,'2022-02-03 13:01:51.248184','2','proger',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',7,1),(87,'2022-02-03 13:03:00.822142','dab62f2f-e263-464a-90d9-024aa1e8d12b','Тест 2',2,'[{\"changed\": {\"fields\": [\"\\u0423\\u0447\\u0430\\u0441\\u0442\\u043d\\u0438\\u043a\\u0438\"]}}]',1,1),(88,'2022-02-03 13:03:08.619535','9c1f2f43-6df2-4981-bfaa-9fd5ef7302e7','Тест',2,'[{\"changed\": {\"fields\": [\"\\u0423\\u0447\\u0430\\u0441\\u0442\\u043d\\u0438\\u043a\\u0438\"]}}]',1,1),(89,'2022-02-03 13:04:42.983586','1','тестеры',3,'',6,1),(90,'2022-02-03 13:04:47.088972','2','proger',3,'',6,1),(91,'2022-02-03 13:08:10.847433','3','perms_user',2,'[{\"changed\": {\"fields\": [\"Name\", \"Permissions\"]}}]',6,1),(92,'2022-02-03 13:08:41.278355','3','tester',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',7,1),(93,'2022-02-03 13:30:16.107705','25','новый коммент',3,'',12,1),(94,'2022-02-03 13:30:16.186037','24','новый коммент',3,'',12,1),(95,'2022-02-03 13:30:16.286580','23','новый коммент',3,'',12,1),(96,'2022-02-03 13:30:16.361107','22','новый коммент',3,'',12,1),(97,'2022-02-03 13:30:16.419757','21','новый коммент',3,'',12,1),(98,'2022-02-03 13:30:16.478311','20','новый коммент',3,'',12,1),(99,'2022-02-03 13:30:48.964277','1','admin',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',7,1),(100,'2022-02-03 13:56:53.134470','dab62f2f-e263-464a-90d9-024aa1e8d12b','Тест 2',2,'[{\"changed\": {\"fields\": [\"\\u0423\\u0447\\u0430\\u0441\\u0442\\u043d\\u0438\\u043a\\u0438\"]}}]',1,1),(101,'2022-02-03 13:56:58.035882','9c1f2f43-6df2-4981-bfaa-9fd5ef7302e7','Тест',2,'[{\"changed\": {\"fields\": [\"\\u0423\\u0447\\u0430\\u0441\\u0442\\u043d\\u0438\\u043a\\u0438\"]}}]',1,1),(102,'2022-02-03 14:21:53.239426','1','задание 1',2,'[{\"changed\": {\"fields\": [\"\\u0418\\u0441\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\"]}}]',2,1),(103,'2022-02-03 14:22:06.854613','2','задание 2',2,'[{\"changed\": {\"fields\": [\"\\u0418\\u0441\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\"]}}]',2,1),(104,'2022-02-03 14:22:17.380829','3','задание 3',2,'[]',2,1),(105,'2022-02-03 14:22:22.767860','4','задание 4',2,'[]',2,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (4,'admin','logentry'),(6,'auth','group'),(5,'auth','permission'),(7,'auth','user'),(8,'contenttypes','contenttype'),(10,'projects','comment'),(3,'projects','logtime'),(12,'projects','newcomment'),(1,'projects','project'),(2,'projects','task'),(11,'projects','userprofile'),(9,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-01-08 14:46:47.544670'),(2,'auth','0001_initial','2022-01-08 14:47:00.687687'),(3,'admin','0001_initial','2022-01-08 14:47:03.349952'),(4,'admin','0002_logentry_remove_auto_add','2022-01-08 14:47:03.412326'),(5,'admin','0003_logentry_add_action_flag_choices','2022-01-08 14:47:03.490544'),(6,'contenttypes','0002_remove_content_type_name','2022-01-08 14:47:05.927470'),(7,'auth','0002_alter_permission_name_max_length','2022-01-08 14:47:07.333384'),(8,'auth','0003_alter_user_email_max_length','2022-01-08 14:47:07.598946'),(9,'auth','0004_alter_user_username_opts','2022-01-08 14:47:07.750812'),(10,'auth','0005_alter_user_last_login_null','2022-01-08 14:47:08.766309'),(11,'auth','0006_require_contenttypes_0002','2022-01-08 14:47:08.828793'),(12,'auth','0007_alter_validators_add_error_messages','2022-01-08 14:47:08.891279'),(13,'auth','0008_alter_user_username_max_length','2022-01-08 14:47:10.000391'),(14,'auth','0009_alter_user_last_name_max_length','2022-01-08 14:47:11.375065'),(15,'auth','0010_alter_group_name_max_length','2022-01-08 14:47:11.531278'),(16,'auth','0011_update_proxy_permissions','2022-01-08 14:47:11.609296'),(17,'auth','0012_alter_user_first_name_max_length','2022-01-08 14:47:12.937196'),(18,'projects','0001_initial','2022-01-08 14:47:20.927850'),(19,'sessions','0001_initial','2022-01-08 14:47:22.130774'),(20,'projects','0002_alter_project_project_id','2022-01-10 08:28:30.037182'),(21,'projects','0003_alter_project_options_alter_task_options_and_more','2022-01-10 13:13:54.733645'),(22,'projects','0004_alter_task_task_author','2022-01-12 09:58:21.681481'),(23,'projects','0005_comment_alter_task_task_priority_and_more','2022-01-20 18:54:07.805934'),(24,'projects','0006_userprofile','2022-01-21 14:47:25.280996'),(25,'projects','0002_alter_comment_comment_author','2022-01-30 23:09:45.207062'),(26,'projects','0003_alter_comment_comment_date_and_more','2022-01-30 23:36:35.117191'),(27,'projects','0002_comment','2022-01-30 23:49:01.996557'),(28,'projects','0003_comment_coment_task','2022-01-31 00:41:53.732699'),(29,'projects','0002_delete_comment','2022-01-31 01:48:56.062529'),(30,'projects','0003_newcomment','2022-01-31 15:15:09.295768'),(31,'projects','0004_alter_newcomment_comment_date','2022-01-31 17:18:26.774468'),(32,'projects','0005_rename_coment_task_newcomment_comment_task','2022-01-31 23:15:33.123949'),(33,'projects','0006_alter_newcomment_options','2022-01-31 23:27:58.189979'),(34,'projects','0007_project_project_members_and_more','2022-02-01 15:55:25.318778'),(35,'projects','0008_alter_newcomment_comment_task_and_more','2022-02-03 14:29:51.416426');
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
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_logtime`
--

DROP TABLE IF EXISTS `projects_logtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_logtime` (
  `log_spenttime` int NOT NULL,
  `comment` longtext NOT NULL,
  `task_name_id` bigint NOT NULL,
  PRIMARY KEY (`task_name_id`),
  CONSTRAINT `projects_logtime_task_name_id_0cba251e_fk_projects_task_id` FOREIGN KEY (`task_name_id`) REFERENCES `projects_task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_logtime`
--

LOCK TABLES `projects_logtime` WRITE;
/*!40000 ALTER TABLE `projects_logtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_logtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_newcomment`
--

DROP TABLE IF EXISTS `projects_newcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_newcomment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment_description` longtext NOT NULL,
  `comment_date` datetime(6) NOT NULL,
  `comment_task_id` bigint DEFAULT NULL,
  `comment_author_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `projects_newcomment_comment_author_id_3438a40f_fk_auth_user_id` (`comment_author_id`),
  KEY `projects_newcomment_comment_task_id_f23e9ebb_fk_projects_task_id` (`comment_task_id`),
  CONSTRAINT `projects_newcomment_comment_author_id_3438a40f_fk_auth_user_id` FOREIGN KEY (`comment_author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `projects_newcomment_comment_task_id_f23e9ebb_fk_projects_task_id` FOREIGN KEY (`comment_task_id`) REFERENCES `projects_task` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_newcomment`
--

LOCK TABLES `projects_newcomment` WRITE;
/*!40000 ALTER TABLE `projects_newcomment` DISABLE KEYS */;
INSERT INTO `projects_newcomment` VALUES (2,'I had this issue where I was playing with same database structure in production vs development. While dropping and recreating tables will probably resolve the issue, its worth checking your databas','2022-01-31 15:20:59.000000',1,1),(3,'ваш комментарий','2022-01-31 15:23:19.000000',2,1),(4,'новый коммент','2022-01-31 23:36:55.459871',1,1),(5,'еще один коммент','2022-01-31 23:38:04.519921',1,1),(6,'и снова коммент','2022-01-31 23:46:27.147841',2,1),(16,'qwe','2022-02-01 01:13:58.357480',1,1),(17,'проверочка','2022-02-01 01:14:17.365554',2,1),(18,'тест','2022-02-01 01:15:28.217662',1,1),(19,'новый коммент','2022-02-03 13:28:15.323833',3,2);
/*!40000 ALTER TABLE `projects_newcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_project`
--

DROP TABLE IF EXISTS `projects_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_project` (
  `project_id` char(32) NOT NULL,
  `project_name` varchar(200) NOT NULL,
  `project_description` longtext NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_project`
--

LOCK TABLES `projects_project` WRITE;
/*!40000 ALTER TABLE `projects_project` DISABLE KEYS */;
INSERT INTO `projects_project` VALUES ('9c1f2f436df24981bfaa9fd5ef7302e7','Тест','<p>py3</p>'),('dab62f2fe263464a90d9024aa1e8d12b','Тест 2','<p>2222</p>');
/*!40000 ALTER TABLE `projects_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_project_project_members`
--

DROP TABLE IF EXISTS `projects_project_project_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_project_project_members` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `project_id` char(32) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `projects_project_project_project_id_user_id_1d64e88a_uniq` (`project_id`,`user_id`),
  KEY `projects_project_pro_user_id_d778786d_fk_auth_user` (`user_id`),
  CONSTRAINT `projects_project_pro_project_id_53bbf3c2_fk_projects_` FOREIGN KEY (`project_id`) REFERENCES `projects_project` (`project_id`),
  CONSTRAINT `projects_project_pro_user_id_d778786d_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_project_project_members`
--

LOCK TABLES `projects_project_project_members` WRITE;
/*!40000 ALTER TABLE `projects_project_project_members` DISABLE KEYS */;
INSERT INTO `projects_project_project_members` VALUES (8,'9c1f2f436df24981bfaa9fd5ef7302e7',1),(6,'9c1f2f436df24981bfaa9fd5ef7302e7',3),(2,'9c1f2f436df24981bfaa9fd5ef7302e7',4),(7,'dab62f2fe263464a90d9024aa1e8d12b',1),(5,'dab62f2fe263464a90d9024aa1e8d12b',2);
/*!40000 ALTER TABLE `projects_project_project_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_task`
--

DROP TABLE IF EXISTS `projects_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_task` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `task_theme` varchar(200) NOT NULL,
  `task_description` longtext NOT NULL,
  `task_datestart` datetime(6) NOT NULL,
  `task_dateend` datetime(6) NOT NULL,
  `task_type` varchar(30) NOT NULL,
  `task_priority` varchar(30) NOT NULL,
  `task_spenttime` int NOT NULL,
  `task_author_id` int NOT NULL,
  `task_executor_id` int NOT NULL,
  `task_project_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `projects_task_task_author_id_73fa0e2d_fk_auth_user_id` (`task_author_id`),
  KEY `projects_task_task_executor_id_8534aa1a_fk_auth_user_id` (`task_executor_id`),
  KEY `projects_task_task_project_id_47d36368_fk_projects_` (`task_project_id`),
  CONSTRAINT `projects_task_task_author_id_73fa0e2d_fk_auth_user_id` FOREIGN KEY (`task_author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `projects_task_task_executor_id_8534aa1a_fk_auth_user_id` FOREIGN KEY (`task_executor_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `projects_task_task_project_id_47d36368_fk_projects_` FOREIGN KEY (`task_project_id`) REFERENCES `projects_project` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_task`
--

LOCK TABLES `projects_task` WRITE;
/*!40000 ALTER TABLE `projects_task` DISABLE KEYS */;
INSERT INTO `projects_task` VALUES (1,'задание 1','питон','2022-01-08 14:55:05.000000','2022-01-08 14:55:06.000000','Фича','Нормальный',7,1,3,'9c1f2f436df24981bfaa9fd5ef7302e7'),(2,'задание 2','линукс','2022-01-08 14:56:38.000000','2022-01-08 14:56:41.000000','Фича','Срочный',3,1,2,'dab62f2fe263464a90d9024aa1e8d12b'),(3,'задание 3','веб','2022-01-10 12:44:51.000000','2022-01-10 12:44:52.000000','Баг','Высокий',1,1,3,'9c1f2f436df24981bfaa9fd5ef7302e7'),(4,'задание 4','4','2022-01-10 14:03:02.000000','2022-01-10 14:03:03.000000','Фича','Нормальный',2,1,1,'dab62f2fe263464a90d9024aa1e8d12b');
/*!40000 ALTER TABLE `projects_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_userprofile`
--

DROP TABLE IF EXISTS `projects_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_userprofile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `projects_userprofile_user_id_605f9484_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_userprofile`
--

LOCK TABLES `projects_userprofile` WRITE;
/*!40000 ALTER TABLE `projects_userprofile` DISABLE KEYS */;
INSERT INTO `projects_userprofile` VALUES (1,'images/users/red.jpg',3),(2,'images/users/486535l.jpg',2);
/*!40000 ALTER TABLE `projects_userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-03 19:21:01
