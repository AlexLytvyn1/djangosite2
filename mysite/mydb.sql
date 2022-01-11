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
use heroku_85cf2a2cdfd8ef;

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (2,'прогеры'),(1,'тестеры');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (4,1,6),(1,1,8),(2,1,9),(3,1,12),(8,2,6),(5,2,8),(6,2,9),(7,2,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add project',1,'add_project'),(2,'Can change project',1,'change_project'),(3,'Can delete project',1,'delete_project'),(4,'Can view project',1,'view_project'),(5,'Can add task',2,'add_task'),(6,'Can change task',2,'change_task'),(7,'Can delete task',2,'delete_task'),(8,'Can view task',2,'view_task'),(9,'Can add log time',3,'add_logtime'),(10,'Can change log time',3,'change_logtime'),(11,'Can delete log time',3,'delete_logtime'),(12,'Can view log time',3,'view_logtime'),(13,'Can add log entry',4,'add_logentry'),(14,'Can change log entry',4,'change_logentry'),(15,'Can delete log entry',4,'delete_logentry'),(16,'Can view log entry',4,'view_logentry'),(17,'Can add permission',5,'add_permission'),(18,'Can change permission',5,'change_permission'),(19,'Can delete permission',5,'delete_permission'),(20,'Can view permission',5,'view_permission'),(21,'Can add group',6,'add_group'),(22,'Can change group',6,'change_group'),(23,'Can delete group',6,'delete_group'),(24,'Can view group',6,'view_group'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add content type',8,'add_contenttype'),(30,'Can change content type',8,'change_contenttype'),(31,'Can delete content type',8,'delete_contenttype'),(32,'Can view content type',8,'view_contenttype'),(33,'Can add session',9,'add_session'),(34,'Can change session',9,'change_session'),(35,'Can delete session',9,'delete_session'),(36,'Can view session',9,'view_session');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$JOYbujwmgFeE7aRCz3GzkG$QZUaLrlHloj6svdIP3HRmQRdozsapjgYYAK9sMgBBE8=','2022-01-10 12:52:23.859742',1,'admin','','','',1,1,'2022-01-08 14:49:33.910750'),(2,'pbkdf2_sha256$320000$P8fNAd5pxatgZMT7AdC9w7$4hJK3gJcChIGfXcgkwswCcBjuutTiVUc2C5bzCHuovc=','2022-01-10 12:51:25.237382',0,'proger','linux','','',0,1,'2022-01-08 14:51:33.000000'),(3,'pbkdf2_sha256$320000$0F82yoL3Hdv9WdCqZapthb$eeGX76PV5QzT/PjmFqBJX2V/3avbEUd/yjK1C42nw3E=','2022-01-10 12:30:00.158813',0,'tester','win','','',1,1,'2022-01-08 14:52:53.000000');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (3,2,2),(2,3,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-01-08 14:51:33.184845','2','proger',1,'[{\"added\": {}}]',7,1),(2,'2022-01-08 14:51:43.488315','2','proger',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',7,1),(3,'2022-01-08 14:52:54.090840','3','tester',1,'[{\"added\": {}}]',7,1),(4,'2022-01-08 14:53:07.959101','3','tester',2,'[{\"changed\": {\"fields\": [\"First name\", \"Staff status\"]}}]',7,1),(5,'2022-01-08 14:53:15.703507','2','proger',2,'[{\"changed\": {\"fields\": [\"First name\"]}}]',7,1),(6,'2022-01-08 14:54:31.936999','9c1f2f43-6df2-4981-bfaa-9fd5ef7302e7','Тест',1,'[{\"added\": {}}]',1,1),(7,'2022-01-08 14:54:47.126105','9c1f2f43-6df2-4981-bfaa-9fd5ef7302e7','Тест',2,'[]',1,1),(8,'2022-01-08 14:55:18.276158','1','задание',1,'[{\"added\": {}}]',2,1),(9,'2022-01-08 14:55:37.876041','9c1f2f43-6df2-4981-bfaa-9fd5ef7302e7','Тест',2,'[]',1,1),(10,'2022-01-08 14:56:13.279626','dab62f2f-e263-464a-90d9-024aa1e8d12b','Тест 2',1,'[{\"added\": {}}]',1,1),(11,'2022-01-08 14:56:50.685985','2','задание 2',1,'[{\"added\": {}}]',2,1),(12,'2022-01-08 15:01:47.613265','1','тестеры',1,'[{\"added\": {}}]',6,1),(13,'2022-01-08 15:03:05.044347','2','прогеры',1,'[{\"added\": {}}]',6,1),(14,'2022-01-08 15:03:37.161044','2','proger',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',7,1),(15,'2022-01-08 15:03:48.880161','2','proger',2,'[]',7,1),(16,'2022-01-08 15:03:57.369873','3','tester',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',7,1),(17,'2022-01-08 15:04:05.467210','2','proger',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',7,1),(18,'2022-01-08 15:42:15.581688','9c1f2f43-6df2-4981-bfaa-9fd5ef7302e7','Тест',2,'[]',1,1),(19,'2022-01-10 12:18:39.711446','1','тестеры',2,'[]',6,1),(20,'2022-01-10 12:29:22.220611','2','proger',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',7,1),(21,'2022-01-10 12:31:34.817895','1','задание',2,'[]',2,1),(22,'2022-01-10 12:51:12.730899','3','задание 3',1,'[{\"added\": {}}]',2,1),(23,'2022-01-10 12:52:26.992256','3','задание 3',2,'[]',2,1),(24,'2022-01-10 13:34:26.714105','9c1f2f43-6df2-4981-bfaa-9fd5ef7302e7','Тест',2,'[]',1,1),(25,'2022-01-10 14:03:17.232904','4','задание 4',1,'[{\"added\": {}}]',2,1),(26,'2022-01-10 14:33:40.582431','9c1f2f43-6df2-4981-bfaa-9fd5ef7302e7','Тест',2,'[]',1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (4,'admin','logentry'),(6,'auth','group'),(5,'auth','permission'),(7,'auth','user'),(8,'contenttypes','contenttype'),(3,'projects','logtime'),(1,'projects','project'),(2,'projects','task'),(9,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-01-08 14:46:47.544670'),(2,'auth','0001_initial','2022-01-08 14:47:00.687687'),(3,'admin','0001_initial','2022-01-08 14:47:03.349952'),(4,'admin','0002_logentry_remove_auto_add','2022-01-08 14:47:03.412326'),(5,'admin','0003_logentry_add_action_flag_choices','2022-01-08 14:47:03.490544'),(6,'contenttypes','0002_remove_content_type_name','2022-01-08 14:47:05.927470'),(7,'auth','0002_alter_permission_name_max_length','2022-01-08 14:47:07.333384'),(8,'auth','0003_alter_user_email_max_length','2022-01-08 14:47:07.598946'),(9,'auth','0004_alter_user_username_opts','2022-01-08 14:47:07.750812'),(10,'auth','0005_alter_user_last_login_null','2022-01-08 14:47:08.766309'),(11,'auth','0006_require_contenttypes_0002','2022-01-08 14:47:08.828793'),(12,'auth','0007_alter_validators_add_error_messages','2022-01-08 14:47:08.891279'),(13,'auth','0008_alter_user_username_max_length','2022-01-08 14:47:10.000391'),(14,'auth','0009_alter_user_last_name_max_length','2022-01-08 14:47:11.375065'),(15,'auth','0010_alter_group_name_max_length','2022-01-08 14:47:11.531278'),(16,'auth','0011_update_proxy_permissions','2022-01-08 14:47:11.609296'),(17,'auth','0012_alter_user_first_name_max_length','2022-01-08 14:47:12.937196'),(18,'projects','0001_initial','2022-01-08 14:47:20.927850'),(19,'sessions','0001_initial','2022-01-08 14:47:22.130774'),(20,'projects','0002_alter_project_project_id','2022-01-10 08:28:30.037182'),(21,'projects','0003_alter_project_options_alter_task_options_and_more','2022-01-10 13:13:54.733645');
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
INSERT INTO `django_session` VALUES ('5h5rq443q5ygn58vta6zm92phlg24r9v','.eJxVjMEOwiAQBf-FsyHAgoBH7_0GssAiVQNJaU_Gf9cmPej1zcx7sYDbWsM2aAlzZhcm2el3i5ge1HaQ79hunafe1mWOfFf4QQefeqbn9XD_DiqO-q21EMohQdIFfdLKSXk2BkS01hhLzhEYVM6jIiw6lkgeJAJQJFlIKfb-AMkHN8o:1n6u9v:deUi6NbW-5Up84okH7byjDYoYTxu9YNf686iP1MCM-s','2022-01-24 12:52:23.918958');
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
INSERT INTO `projects_task` VALUES (1,'задание','питон','2022-01-08 14:55:05.000000','2022-01-08 14:55:06.000000','feature','high',2,1,2,'9c1f2f436df24981bfaa9fd5ef7302e7'),(2,'задание 2','линукс','2022-01-08 14:56:38.000000','2022-01-08 14:56:41.000000','bug','high',3,1,3,'dab62f2fe263464a90d9024aa1e8d12b'),(3,'задание 3','веб','2022-01-10 12:44:51.000000','2022-01-10 12:44:52.000000','feature','normal',2,1,3,'9c1f2f436df24981bfaa9fd5ef7302e7'),(4,'задание 4','4','2022-01-10 14:03:02.000000','2022-01-10 14:03:03.000000','feature','normal',2,1,1,'dab62f2fe263464a90d9024aa1e8d12b');
/*!40000 ALTER TABLE `projects_task` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-11  7:14:28
