CREATE DATABASE  IF NOT EXISTS `soyorganico` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `soyorganico`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: soyorganico
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `backend_access_log`
--

DROP TABLE IF EXISTS `backend_access_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_access_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_access_log`
--

LOCK TABLES `backend_access_log` WRITE;
/*!40000 ALTER TABLE `backend_access_log` DISABLE KEYS */;
INSERT INTO `backend_access_log` VALUES (1,1,'127.0.0.1','2020-09-02 22:08:39','2020-09-02 22:08:39');
/*!40000 ALTER TABLE `backend_access_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_user_groups`
--

DROP TABLE IF EXISTS `backend_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_user_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_unique` (`name`),
  KEY `code_index` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_user_groups`
--

LOCK TABLES `backend_user_groups` WRITE;
/*!40000 ALTER TABLE `backend_user_groups` DISABLE KEYS */;
INSERT INTO `backend_user_groups` VALUES (1,'Owners','2020-09-02 21:29:16','2020-09-02 21:29:16','owners','Default group for website owners.',0);
/*!40000 ALTER TABLE `backend_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_user_preferences`
--

DROP TABLE IF EXISTS `backend_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_user_preferences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_user_preferences`
--

LOCK TABLES `backend_user_preferences` WRITE;
/*!40000 ALTER TABLE `backend_user_preferences` DISABLE KEYS */;
INSERT INTO `backend_user_preferences` VALUES (1,1,'backend','reportwidgets','dashboard','{\"welcome\":{\"class\":\"Backend\\\\ReportWidgets\\\\Welcome\",\"sortOrder\":50,\"configuration\":{\"ocWidgetWidth\":7}},\"systemStatus\":{\"class\":\"System\\\\ReportWidgets\\\\Status\",\"sortOrder\":60,\"configuration\":{\"title\":\"System status\",\"ocWidgetWidth\":7,\"ocWidgetNewRow\":null}},\"activeTheme\":{\"class\":\"Cms\\\\ReportWidgets\\\\ActiveTheme\",\"sortOrder\":70,\"configuration\":{\"title\":\"Website\",\"ocWidgetWidth\":5,\"ocWidgetNewRow\":null}}}');
/*!40000 ALTER TABLE `backend_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_user_roles`
--

DROP TABLE IF EXISTS `backend_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_user_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_unique` (`name`),
  KEY `role_code_index` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_user_roles`
--

LOCK TABLES `backend_user_roles` WRITE;
/*!40000 ALTER TABLE `backend_user_roles` DISABLE KEYS */;
INSERT INTO `backend_user_roles` VALUES (1,'Publisher','publisher','Site editor with access to publishing tools.','',1,'2020-09-02 21:29:16','2020-09-02 21:29:16'),(2,'Developer','developer','Site administrator with access to developer tools.','',1,'2020-09-02 21:29:16','2020-09-02 21:29:16');
/*!40000 ALTER TABLE `backend_user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_user_throttle`
--

DROP TABLE IF EXISTS `backend_user_throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_user_throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `backend_user_throttle_user_id_index` (`user_id`),
  KEY `backend_user_throttle_ip_address_index` (`ip_address`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_user_throttle`
--

LOCK TABLES `backend_user_throttle` WRITE;
/*!40000 ALTER TABLE `backend_user_throttle` DISABLE KEYS */;
INSERT INTO `backend_user_throttle` VALUES (1,1,'127.0.0.1',0,NULL,0,NULL,0,NULL);
/*!40000 ALTER TABLE `backend_user_throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_users`
--

DROP TABLE IF EXISTS `backend_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(10) unsigned DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_unique` (`login`),
  UNIQUE KEY `email_unique` (`email`),
  KEY `act_code_index` (`activation_code`),
  KEY `reset_code_index` (`reset_password_code`),
  KEY `admin_role_index` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_users`
--

LOCK TABLES `backend_users` WRITE;
/*!40000 ALTER TABLE `backend_users` DISABLE KEYS */;
INSERT INTO `backend_users` VALUES (1,'David','Tataje','admin','davidtataje@gmail.com','$2y$10$tMLBzwZRxK.wLf9vDZyB1.9NGjrRTbmJL3b9CiOj28rl3OzvBfzSW',NULL,'$2y$10$1zUR0dLLoAz8VD2ukbJRwuQpiLngzFxVnYJuvl6LYSqZoiaEaZ5ny',NULL,'',1,2,NULL,'2020-09-02 22:08:37','2020-09-02 21:29:17','2020-09-02 22:08:37',NULL,1);
/*!40000 ALTER TABLE `backend_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_users_groups`
--

DROP TABLE IF EXISTS `backend_users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `user_group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`user_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_users_groups`
--

LOCK TABLES `backend_users_groups` WRITE;
/*!40000 ALTER TABLE `backend_users_groups` DISABLE KEYS */;
INSERT INTO `backend_users_groups` VALUES (1,1);
/*!40000 ALTER TABLE `backend_users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_theme_data`
--

DROP TABLE IF EXISTS `cms_theme_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_theme_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_theme_data_theme_index` (`theme`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_theme_data`
--

LOCK TABLES `cms_theme_data` WRITE;
/*!40000 ALTER TABLE `cms_theme_data` DISABLE KEYS */;
INSERT INTO `cms_theme_data` VALUES (1,'zwiebl-zwiebl_stellar','{\"website_name\":\"Soy Org\\u00e1nico\",\"website_author\":\"Pattfresh\",\"website_url\":\"http:\\/\\/soyorganico.pe\",\"description\":\"Soy Org\\u00e1nico y tu?\\r\\n\\r\\n\\u00danete a la comunidad Latinoam\\u00e9rica que prefiere productos 100% org\\u00e1nicos,\\r\\nAqu\\u00ed podr\\u00e1s encontrar tips que te ayudaran a tener un vida mas saludable.\",\"keywords\":\"soyorganico,salud,bienestar,vida,recomendaciones\",\"load_google_fonts\":\"1\",\"google_font_family\":\"Roboto+Slab:300,400,700|Raleway:300,300i,400,400i,700,700i\",\"load_fontawesome\":\"1\",\"load_jQuery\":\"1\",\"jQuery_version\":\"2.2.4\",\"load_octobercms_framework\":\"0\",\"show_section_one\":\"1\",\"show_section_two\":\"1\",\"show_section_three\":\"1\",\"show_section_four\":\"0\",\"zw-bg-color-bg-one\":\"#114978\",\"zw-bg-color-bg-two\":\"#5fbe00\",\"zw-bg-color-buttons\":\"8cc9f0\"}','2020-09-02 21:39:40','2020-09-08 04:52:12');
/*!40000 ALTER TABLE `cms_theme_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_theme_logs`
--

DROP TABLE IF EXISTS `cms_theme_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_theme_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `old_content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_theme_logs_type_index` (`type`),
  KEY `cms_theme_logs_theme_index` (`theme`),
  KEY `cms_theme_logs_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_theme_logs`
--

LOCK TABLES `cms_theme_logs` WRITE;
/*!40000 ALTER TABLE `cms_theme_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_theme_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_theme_templates`
--

DROP TABLE IF EXISTS `cms_theme_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_theme_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(10) unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_theme_templates_source_index` (`source`),
  KEY `cms_theme_templates_path_index` (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_theme_templates`
--

LOCK TABLES `cms_theme_templates` WRITE;
/*!40000 ALTER TABLE `cms_theme_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_theme_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deferred_bindings`
--

DROP TABLE IF EXISTS `deferred_bindings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deferred_bindings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `master_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deferred_bindings_master_type_index` (`master_type`),
  KEY `deferred_bindings_master_field_index` (`master_field`),
  KEY `deferred_bindings_slave_type_index` (`slave_type`),
  KEY `deferred_bindings_slave_id_index` (`slave_id`),
  KEY `deferred_bindings_session_key_index` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deferred_bindings`
--

LOCK TABLES `deferred_bindings` WRITE;
/*!40000 ALTER TABLE `deferred_bindings` DISABLE KEYS */;
/*!40000 ALTER TABLE `deferred_bindings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci,
  `failed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_10_01_000001_Db_Deferred_Bindings',1),(2,'2013_10_01_000002_Db_System_Files',1),(3,'2013_10_01_000003_Db_System_Plugin_Versions',1),(4,'2013_10_01_000004_Db_System_Plugin_History',1),(5,'2013_10_01_000005_Db_System_Settings',1),(6,'2013_10_01_000006_Db_System_Parameters',1),(7,'2013_10_01_000007_Db_System_Add_Disabled_Flag',1),(8,'2013_10_01_000008_Db_System_Mail_Templates',1),(9,'2013_10_01_000009_Db_System_Mail_Layouts',1),(10,'2014_10_01_000010_Db_Jobs',1),(11,'2014_10_01_000011_Db_System_Event_Logs',1),(12,'2014_10_01_000012_Db_System_Request_Logs',1),(13,'2014_10_01_000013_Db_System_Sessions',1),(14,'2015_10_01_000014_Db_System_Mail_Layout_Rename',1),(15,'2015_10_01_000015_Db_System_Add_Frozen_Flag',1),(16,'2015_10_01_000016_Db_Cache',1),(17,'2015_10_01_000017_Db_System_Revisions',1),(18,'2015_10_01_000018_Db_FailedJobs',1),(19,'2016_10_01_000019_Db_System_Plugin_History_Detail_Text',1),(20,'2016_10_01_000020_Db_System_Timestamp_Fix',1),(21,'2017_08_04_121309_Db_Deferred_Bindings_Add_Index_Session',1),(22,'2017_10_01_000021_Db_System_Sessions_Update',1),(23,'2017_10_01_000022_Db_Jobs_FailedJobs_Update',1),(24,'2017_10_01_000023_Db_System_Mail_Partials',1),(25,'2017_10_23_000024_Db_System_Mail_Layouts_Add_Options_Field',1),(26,'2013_10_01_000001_Db_Backend_Users',2),(27,'2013_10_01_000002_Db_Backend_User_Groups',2),(28,'2013_10_01_000003_Db_Backend_Users_Groups',2),(29,'2013_10_01_000004_Db_Backend_User_Throttle',2),(30,'2014_01_04_000005_Db_Backend_User_Preferences',2),(31,'2014_10_01_000006_Db_Backend_Access_Log',2),(32,'2014_10_01_000007_Db_Backend_Add_Description_Field',2),(33,'2015_10_01_000008_Db_Backend_Add_Superuser_Flag',2),(34,'2016_10_01_000009_Db_Backend_Timestamp_Fix',2),(35,'2017_10_01_000010_Db_Backend_User_Roles',2),(36,'2018_12_16_000011_Db_Backend_Add_Deleted_At',2),(37,'2014_10_01_000001_Db_Cms_Theme_Data',3),(38,'2016_10_01_000002_Db_Cms_Timestamp_Fix',3),(39,'2017_10_01_000003_Db_Cms_Theme_Logs',3),(40,'2018_11_01_000001_Db_Cms_Theme_Templates',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rainlab_blog_categories`
--

DROP TABLE IF EXISTS `rainlab_blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rainlab_blog_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rainlab_blog_categories_slug_index` (`slug`),
  KEY `rainlab_blog_categories_parent_id_index` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rainlab_blog_categories`
--

LOCK TABLES `rainlab_blog_categories` WRITE;
/*!40000 ALTER TABLE `rainlab_blog_categories` DISABLE KEYS */;
INSERT INTO `rainlab_blog_categories` VALUES (1,'Uncategorized','uncategorized',NULL,NULL,NULL,1,2,0,'2020-09-02 21:28:51','2020-09-02 21:28:51');
/*!40000 ALTER TABLE `rainlab_blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rainlab_blog_posts`
--

DROP TABLE IF EXISTS `rainlab_blog_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rainlab_blog_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `content_html` longtext COLLATE utf8mb4_unicode_ci,
  `published_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `rainlab_blog_posts_user_id_index` (`user_id`),
  KEY `rainlab_blog_posts_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rainlab_blog_posts`
--

LOCK TABLES `rainlab_blog_posts` WRITE;
/*!40000 ALTER TABLE `rainlab_blog_posts` DISABLE KEYS */;
INSERT INTO `rainlab_blog_posts` VALUES (1,NULL,'First blog post','first-blog-post','The first ever blog post is here. It might be a good idea to update this post with some more relevant content.','This is your first ever **blog post**! It might be a good idea to update this post with some more relevant content.\n\nYou can edit this content by selecting **Blog** from the administration back-end menu.\n\n*Enjoy the good times!*','<p>This is your first ever <strong>blog post</strong>! It might be a good idea to update this post with some more relevant content.</p>\n<p>You can edit this content by selecting <strong>Blog</strong> from the administration back-end menu.</p>\n<p><em>Enjoy the good times!</em></p>','2020-09-02 21:28:51',1,'2020-09-02 21:28:51','2020-09-02 21:28:51',NULL);
/*!40000 ALTER TABLE `rainlab_blog_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rainlab_blog_posts_categories`
--

DROP TABLE IF EXISTS `rainlab_blog_posts_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rainlab_blog_posts_categories` (
  `post_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rainlab_blog_posts_categories`
--

LOCK TABLES `rainlab_blog_posts_categories` WRITE;
/*!40000 ALTER TABLE `rainlab_blog_posts_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `rainlab_blog_posts_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `last_activity` int(11) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_event_logs`
--

DROP TABLE IF EXISTS `system_event_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_event_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `details` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_event_logs_level_index` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_event_logs`
--

LOCK TABLES `system_event_logs` WRITE;
/*!40000 ALTER TABLE `system_event_logs` DISABLE KEYS */;
INSERT INTO `system_event_logs` VALUES (1,'error','Cms\\Classes\\CmsException: The partial \'home_page/section_two\' is not found. in C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\modules\\cms\\classes\\Controller.php:1027\nStack trace:\n#0 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\modules\\cms\\twig\\Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'home_page/secti...\', Array, true)\n#1 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\storage\\cms\\twig\\dc\\dc2ab671139f04e9760476dd6edbb122eed0b11ca4a774ec920893c6fd5c68cb.php(84): Cms\\Twig\\Extension->partialFunction(\'home_page/secti...\', Array, true)\n#2 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_1d1539e62e93bf7b1066e7790e0c267c8bc47441f60af9d9b5e792f3ee6f7041->doDisplay(Array, Array)\n#3 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#4 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#5 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\modules\\cms\\classes\\Controller.php(433): Twig\\Template->render(Array)\n#6 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\modules\\cms\\classes\\Controller.php(223): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#7 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#8 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#9 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#10 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#11 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#12 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#13 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#14 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#32 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#33 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#34 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#36 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\server.php(17): require_once(\'C:\\\\Users\\\\TATAJD...\')\n#46 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'home_page/section_two\' is not found.\") in \"C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master/themes/zwiebl-zwiebl_stellar/layouts/soyorganico.htm\" at line 17. in C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\twig\\twig\\src\\Template.php:421\nStack trace:\n#0 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#2 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\modules\\cms\\classes\\Controller.php(433): Twig\\Template->render(Array)\n#3 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\modules\\cms\\classes\\Controller.php(223): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#6 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#7 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#11 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\server.php(17): require_once(\'C:\\\\Users\\\\TATAJD...\')\n#43 {main}',NULL,'2020-09-08 03:21:19','2020-09-08 03:21:19'),(2,'error','Cms\\Classes\\CmsException: The partial \'home_page/section_three\' is not found. in C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\modules\\cms\\classes\\Controller.php:1027\nStack trace:\n#0 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\modules\\cms\\twig\\Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'home_page/secti...\', Array, true)\n#1 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\storage\\cms\\twig\\dc\\dc2ab671139f04e9760476dd6edbb122eed0b11ca4a774ec920893c6fd5c68cb.php(97): Cms\\Twig\\Extension->partialFunction(\'home_page/secti...\', Array, true)\n#2 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_1d1539e62e93bf7b1066e7790e0c267c8bc47441f60af9d9b5e792f3ee6f7041->doDisplay(Array, Array)\n#3 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#4 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#5 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\modules\\cms\\classes\\Controller.php(433): Twig\\Template->render(Array)\n#6 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\modules\\cms\\classes\\Controller.php(223): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#7 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#8 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#9 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#10 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#11 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#12 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#13 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#14 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#32 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#33 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#34 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#36 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\server.php(17): require_once(\'C:\\\\Users\\\\TATAJD...\')\n#46 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'home_page/section_three\' is not found.\") in \"C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master/themes/zwiebl-zwiebl_stellar/layouts/soyorganico.htm\" at line 21. in C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\twig\\twig\\src\\Template.php:421\nStack trace:\n#0 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#2 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\modules\\cms\\classes\\Controller.php(433): Twig\\Template->render(Array)\n#3 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\modules\\cms\\classes\\Controller.php(223): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#6 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#7 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#11 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master\\server.php(17): require_once(\'C:\\\\Users\\\\TATAJD...\')\n#43 {main}',NULL,'2020-09-08 03:33:20','2020-09-08 03:33:20');
/*!40000 ALTER TABLE `system_event_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_files`
--

DROP TABLE IF EXISTS `system_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `disk_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_files_field_index` (`field`),
  KEY `system_files_attachment_id_index` (`attachment_id`),
  KEY `system_files_attachment_type_index` (`attachment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_files`
--

LOCK TABLES `system_files` WRITE;
/*!40000 ALTER TABLE `system_files` DISABLE KEYS */;
INSERT INTO `system_files` VALUES (1,'5f56c68c5357d954121541.png','LogoMakr_17IcJc.png',54523,'image/png',NULL,NULL,'logo','3','Backend\\Models\\BrandSetting',1,1,'2020-09-08 04:47:24','2020-09-08 04:49:09'),(2,'5f56c6cc1cb51105385806.ico','favicon.ico',1150,'image/x-icon',NULL,NULL,'favicon','3','Backend\\Models\\BrandSetting',1,2,'2020-09-08 04:48:28','2020-09-08 04:49:09');
/*!40000 ALTER TABLE `system_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_mail_layouts`
--

DROP TABLE IF EXISTS `system_mail_layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_mail_layouts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `content_css` text COLLATE utf8mb4_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_mail_layouts`
--

LOCK TABLES `system_mail_layouts` WRITE;
/*!40000 ALTER TABLE `system_mail_layouts` DISABLE KEYS */;
INSERT INTO `system_mail_layouts` VALUES (1,'Default layout','default','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-default\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n\n        <!-- Header -->\n        {% partial \'header\' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial \'footer\' body %}\n            &copy; {{ \"now\"|date(\"Y\") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>','{{ content|raw }}','@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}',1,NULL,'2020-09-02 21:29:15','2020-09-02 21:29:15'),(2,'System layout','system','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-system\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>','{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.','@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}',1,NULL,'2020-09-02 21:29:15','2020-09-02 21:29:15');
/*!40000 ALTER TABLE `system_mail_layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_mail_partials`
--

DROP TABLE IF EXISTS `system_mail_partials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_mail_partials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_mail_partials`
--

LOCK TABLES `system_mail_partials` WRITE;
/*!40000 ALTER TABLE `system_mail_partials` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_mail_partials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_mail_templates`
--

DROP TABLE IF EXISTS `system_mail_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_mail_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_mail_templates_layout_id_index` (`layout_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_mail_templates`
--

LOCK TABLES `system_mail_templates` WRITE;
/*!40000 ALTER TABLE `system_mail_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_mail_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_parameters`
--

DROP TABLE IF EXISTS `system_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_parameters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `item_index` (`namespace`,`group`,`item`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_parameters`
--

LOCK TABLES `system_parameters` WRITE;
/*!40000 ALTER TABLE `system_parameters` DISABLE KEYS */;
INSERT INTO `system_parameters` VALUES (1,'system','update','count','0'),(2,'system','core','hash','\"3847185f0253b1ae8c30bb1375795b66\"'),(3,'system','core','build','\"468\"'),(4,'system','update','retry','1599583264');
/*!40000 ALTER TABLE `system_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_plugin_history`
--

DROP TABLE IF EXISTS `system_plugin_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_plugin_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_plugin_history_code_index` (`code`),
  KEY `system_plugin_history_type_index` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_plugin_history`
--

LOCK TABLES `system_plugin_history` WRITE;
/*!40000 ALTER TABLE `system_plugin_history` DISABLE KEYS */;
INSERT INTO `system_plugin_history` VALUES (1,'October.Demo','comment','1.0.1','First version of Demo','2020-09-02 21:28:39'),(2,'RainLab.Blog','script','1.0.1','create_posts_table.php','2020-09-02 21:28:42'),(3,'RainLab.Blog','script','1.0.1','create_categories_table.php','2020-09-02 21:28:51'),(4,'RainLab.Blog','script','1.0.1','seed_all_tables.php','2020-09-02 21:28:52'),(5,'RainLab.Blog','comment','1.0.1','Initialize plugin.','2020-09-02 21:28:52'),(6,'RainLab.Blog','comment','1.0.2','Added the processed HTML content column to the posts table.','2020-09-02 21:28:52'),(7,'RainLab.Blog','comment','1.0.3','Category component has been merged with Posts component.','2020-09-02 21:28:52'),(8,'RainLab.Blog','comment','1.0.4','Improvements to the Posts list management UI.','2020-09-02 21:28:52'),(9,'RainLab.Blog','comment','1.0.5','Removes the Author column from blog post list.','2020-09-02 21:28:53'),(10,'RainLab.Blog','comment','1.0.6','Featured images now appear in the Post component.','2020-09-02 21:28:53'),(11,'RainLab.Blog','comment','1.0.7','Added support for the Static Pages menus.','2020-09-02 21:28:53'),(12,'RainLab.Blog','comment','1.0.8','Added total posts to category list.','2020-09-02 21:28:54'),(13,'RainLab.Blog','comment','1.0.9','Added support for the Sitemap plugin.','2020-09-02 21:28:54'),(14,'RainLab.Blog','comment','1.0.10','Added permission to prevent users from seeing posts they did not create.','2020-09-02 21:28:54'),(15,'RainLab.Blog','comment','1.0.11','Deprecate \"idParam\" component property in favour of \"slug\" property.','2020-09-02 21:28:55'),(16,'RainLab.Blog','comment','1.0.12','Fixes issue where images cannot be uploaded caused by latest Markdown library.','2020-09-02 21:28:55'),(17,'RainLab.Blog','comment','1.0.13','Fixes problem with providing pages to Sitemap and Pages plugins.','2020-09-02 21:28:55'),(18,'RainLab.Blog','comment','1.0.14','Add support for CSRF protection feature added to core.','2020-09-02 21:28:56'),(19,'RainLab.Blog','comment','1.1.0','Replaced the Post editor with the new core Markdown editor.','2020-09-02 21:28:56'),(20,'RainLab.Blog','comment','1.1.1','Posts can now be imported and exported.','2020-09-02 21:28:56'),(21,'RainLab.Blog','comment','1.1.2','Posts are no longer visible if the published date has not passed.','2020-09-02 21:28:56'),(22,'RainLab.Blog','comment','1.1.3','Added a New Post shortcut button to the blog menu.','2020-09-02 21:28:57'),(23,'RainLab.Blog','script','1.2.0','categories_add_nested_fields.php','2020-09-02 21:28:57'),(24,'RainLab.Blog','comment','1.2.0','Categories now support nesting.','2020-09-02 21:28:57'),(25,'RainLab.Blog','comment','1.2.1','Post slugs now must be unique.','2020-09-02 21:28:57'),(26,'RainLab.Blog','comment','1.2.2','Fixes issue on new installs.','2020-09-02 21:28:58'),(27,'RainLab.Blog','comment','1.2.3','Minor user interface update.','2020-09-02 21:28:58'),(28,'RainLab.Blog','script','1.2.4','update_timestamp_nullable.php','2020-09-02 21:29:00'),(29,'RainLab.Blog','comment','1.2.4','Database maintenance. Updated all timestamp columns to be nullable.','2020-09-02 21:29:00'),(30,'RainLab.Blog','comment','1.2.5','Added translation support for blog posts.','2020-09-02 21:29:00'),(31,'RainLab.Blog','comment','1.2.6','The published field can now supply a time with the date.','2020-09-02 21:29:00'),(32,'RainLab.Blog','comment','1.2.7','Introduced a new RSS feed component.','2020-09-02 21:29:01'),(33,'RainLab.Blog','comment','1.2.8','Fixes issue with translated `content_html` attribute on blog posts.','2020-09-02 21:29:01'),(34,'RainLab.Blog','comment','1.2.9','Added translation support for blog categories.','2020-09-02 21:29:01'),(35,'RainLab.Blog','comment','1.2.10','Added translation support for post slugs.','2020-09-02 21:29:02'),(36,'RainLab.Blog','comment','1.2.11','Fixes bug where excerpt is not translated.','2020-09-02 21:29:02'),(37,'RainLab.Blog','comment','1.2.12','Description field added to category form.','2020-09-02 21:29:03'),(38,'RainLab.Blog','comment','1.2.13','Improved support for Static Pages menus, added a blog post and all blog posts.','2020-09-02 21:29:03'),(39,'RainLab.Blog','comment','1.2.14','Added post exception property to the post list component, useful for showing related posts.','2020-09-02 21:29:03'),(40,'RainLab.Blog','comment','1.2.15','Back-end navigation sort order updated.','2020-09-02 21:29:04'),(41,'RainLab.Blog','comment','1.2.16','Added `nextPost` and `previousPost` to the blog post component.','2020-09-02 21:29:04'),(42,'RainLab.Blog','comment','1.2.17','Improved the next and previous logic to sort by the published date.','2020-09-02 21:29:04'),(43,'RainLab.Blog','comment','1.2.18','Minor change to internals.','2020-09-02 21:29:04'),(44,'RainLab.Blog','comment','1.2.19','Improved support for Build 420+','2020-09-02 21:29:05'),(45,'RainLab.Blog','script','1.3.0','posts_add_metadata.php','2020-09-02 21:29:11'),(46,'RainLab.Blog','comment','1.3.0','Added metadata column for plugins to store data in','2020-09-02 21:29:11'),(47,'RainLab.Blog','comment','1.3.1','Fixed metadata column not being jsonable','2020-09-02 21:29:11'),(48,'RainLab.Blog','comment','1.3.2','Allow custom slug name for components, add 404 handling for missing blog posts, allow exporting of blog images.','2020-09-02 21:29:12'),(49,'RainLab.Blog','comment','1.3.3','Fixed \'excluded categories\' filter from being run when value is empty.','2020-09-02 21:29:12'),(50,'RainLab.Blog','comment','1.3.4','Allow post author to be specified. Improved translations.','2020-09-02 21:29:12'),(51,'RainLab.Blog','comment','1.3.5','Fixed missing user info from breaking initial seeder in migrations. Fixed a PostgreSQL issue with blog exports.','2020-09-02 21:29:13'),(52,'RainLab.Blog','comment','1.3.6','Improved French translations.','2020-09-02 21:29:13'),(53,'RainLab.Blog','comment','1.4.0','Stability improvements. Rollback custom slug names for components','2020-09-02 21:29:13'),(54,'RainLab.Blog','comment','1.4.1','Fixes potential security issue with unsafe Markdown. Allow blog bylines to be translated.','2020-09-02 21:29:13'),(55,'RainLab.Blog','comment','1.4.2','Fix 404 redirects for missing blog posts. Assign current category to the listed posts when using the Posts component on a page with the category parameter available.','2020-09-02 21:29:14'),(56,'RainLab.Blog','comment','1.4.3','Fixes incompatibility with locale switching when plugin is used in conjunction with the Translate plugin. Fixes undefined category error.','2020-09-02 21:29:15'),(57,'LaminSanneh.FlexiContact','comment','1.0.0','First Version with basic functionality','2020-09-08 03:55:51'),(58,'LaminSanneh.FlexiContact','comment','1.0.1','Fixed email subject to send actual subject set in backend','2020-09-08 03:55:51'),(59,'LaminSanneh.FlexiContact','comment','1.0.2','Added validation to contact form fields','2020-09-08 03:55:51'),(60,'LaminSanneh.FlexiContact','comment','1.0.3','Changed body input field type from text to textarea','2020-09-08 03:55:51'),(61,'LaminSanneh.FlexiContact','comment','1.0.4','Updated default component markup to use more appropriate looking twitter bootstrap classes','2020-09-08 03:55:52'),(62,'LaminSanneh.FlexiContact','comment','1.0.5','Corrected spelling for Marketing on the backend settings','2020-09-08 03:55:52'),(63,'LaminSanneh.FlexiContact','comment','1.0.6','Added ability to include bootstrap or not on component config','2020-09-08 03:55:52'),(64,'LaminSanneh.FlexiContact','comment','1.0.6','Add proper validation message outputting','2020-09-08 03:55:52'),(65,'LaminSanneh.FlexiContact','comment','1.0.6','Added option to include or exclude main script file','2020-09-08 03:55:52'),(66,'LaminSanneh.FlexiContact','comment','1.0.7','Updated contact component default markup file','2020-09-08 03:55:52'),(67,'LaminSanneh.FlexiContact','comment','1.0.7','Updated readme file','2020-09-08 03:55:52'),(68,'LaminSanneh.FlexiContact','comment','1.1.0','Mail template is now registered properly','2020-09-08 03:55:53'),(69,'LaminSanneh.FlexiContact','comment','1.2.0','Add Proper validation that can be localized','2020-09-08 03:55:53'),(70,'LaminSanneh.FlexiContact','comment','1.2.1','Added permissions to the settings page. PR by @matissjanis','2020-09-08 03:55:53'),(71,'LaminSanneh.FlexiContact','comment','1.2.2','Added polish language features','2020-09-08 03:55:53'),(72,'LaminSanneh.FlexiContact','comment','1.2.3','Modified mail templatedefault text','2020-09-08 03:55:53'),(73,'LaminSanneh.FlexiContact','comment','1.3.0','!!! Added captcha feature, which requires valid google captcha credentials to work','2020-09-08 03:55:53'),(74,'LaminSanneh.FlexiContact','comment','1.3.1','Set replyTo instead of from-header when sending','2020-09-08 03:55:53'),(75,'LaminSanneh.FlexiContact','comment','1.3.2','Added german translation language file','2020-09-08 03:55:53'),(76,'LaminSanneh.FlexiContact','comment','1.3.3','Added option to allow user to enable or disable captcha in contact form','2020-09-08 03:55:53'),(77,'LaminSanneh.FlexiContact','comment','1.3.4','Made sure captcha enabling or disabling doesnt produce bug','2020-09-08 03:55:54');
/*!40000 ALTER TABLE `system_plugin_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_plugin_versions`
--

DROP TABLE IF EXISTS `system_plugin_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_plugin_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `system_plugin_versions_code_index` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_plugin_versions`
--

LOCK TABLES `system_plugin_versions` WRITE;
/*!40000 ALTER TABLE `system_plugin_versions` DISABLE KEYS */;
INSERT INTO `system_plugin_versions` VALUES (1,'October.Demo','1.0.1','2020-09-02 21:28:40',0,0),(2,'RainLab.Blog','1.4.3','2020-09-02 21:29:15',0,0),(3,'LaminSanneh.FlexiContact','1.3.4','2020-09-08 03:55:54',0,0);
/*!40000 ALTER TABLE `system_plugin_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_request_logs`
--

DROP TABLE IF EXISTS `system_request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_request_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_request_logs`
--

LOCK TABLES `system_request_logs` WRITE;
/*!40000 ALTER TABLE `system_request_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_revisions`
--

DROP TABLE IF EXISTS `system_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_revisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cast` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  KEY `system_revisions_user_id_index` (`user_id`),
  KEY `system_revisions_field_index` (`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_revisions`
--

LOCK TABLES `system_revisions` WRITE;
/*!40000 ALTER TABLE `system_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_settings`
--

DROP TABLE IF EXISTS `system_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `system_settings_item_index` (`item`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_settings`
--

LOCK TABLES `system_settings` WRITE;
/*!40000 ALTER TABLE `system_settings` DISABLE KEYS */;
INSERT INTO `system_settings` VALUES (1,'backend_editor_settings','{\"html_allow_empty_tags\":\"textarea, a, iframe, object, video, style, script, .fa, .fr-emoticon, .fr-inner, path, line, hr, i\",\"html_allow_tags\":\"a, abbr, address, area, article, aside, audio, b, bdi, bdo, blockquote, br, button, canvas, caption, cite, code, col, colgroup, datalist, dd, del, details, dfn, dialog, div, dl, dt, em, embed, fieldset, figcaption, figure, footer, form, h1, h2, h3, h4, h5, h6, header, hgroup, hr, i, iframe, img, input, ins, kbd, keygen, label, legend, li, link, main, map, mark, menu, menuitem, meter, nav, noscript, object, ol, optgroup, option, output, p, param, pre, progress, queue, rp, rt, ruby, s, samp, script, style, section, select, small, source, span, strike, strong, sub, summary, sup, table, tbody, td, textarea, tfoot, th, thead, time, title, tr, track, u, ul, var, video, wbr\",\"html_no_wrap_tags\":\"figure, script, style\",\"html_remove_tags\":\"script, style, base\",\"html_line_breaker_tags\":\"figure, table, hr, iframe, form, dl\",\"html_custom_styles\":\"\\/*\\r\\n * Text\\r\\n *\\/\\r\\n.oc-text-gray {\\r\\n    color: #AAA !important;\\r\\n}\\r\\n.oc-text-bordered {\\r\\n    border-top: solid 1px #222;\\r\\n    border-bottom: solid 1px #222;\\r\\n    padding: 10px 0;\\r\\n}\\r\\n.oc-text-spaced {\\r\\n    letter-spacing: 1px;\\r\\n}\\r\\n.oc-text-uppercase {\\r\\n    text-transform: uppercase;\\r\\n}\\r\\n\\r\\n\\/*\\r\\n * Links\\r\\n *\\/\\r\\na.oc-link-strong {\\r\\n    font-weight: 700;\\r\\n}\\r\\na.oc-link-green {\\r\\n    color: green;\\r\\n}\\r\\n\\r\\n\\/*\\r\\n * Table\\r\\n *\\/\\r\\ntable.oc-dashed-borders td,\\r\\ntable.oc-dashed-borders th {\\r\\n    border-style: dashed;\\r\\n}\\r\\ntable.oc-alternate-rows tbody tr:nth-child(2n) {\\r\\n    background: #f5f5f5;\\r\\n}\\r\\n\\r\\n\\/*\\r\\n * Table cell\\r\\n *\\/\\r\\ntable td.oc-cell-highlighted,\\r\\ntable th.oc-cell-highlighted {\\r\\n    border: 1px double red;\\r\\n}\\r\\ntable td.oc-cell-thick-border,\\r\\ntable th.oc-cell-thick-border {\\r\\n    border-width: 2px;\\r\\n}\\r\\n\\r\\n\\/*\\r\\n * Images\\r\\n *\\/\\r\\nimg.oc-img-rounded {\\r\\n    border-radius: 100%;\\r\\n    background-clip: padding-box;\\r\\n}\\r\\nimg.oc-img-bordered {\\r\\n    border: solid 10px #CCC;\\r\\n    box-sizing: content-box;\\r\\n}\\r\\n\\r\\n.logo img {\\r\\n    width:58px;\\r\\n    height:58px;\\r\\n}\",\"html_style_image\":[{\"class_label\":\"Rounded\",\"class_name\":\"oc-img-rounded\"},{\"class_label\":\"Bordered\",\"class_name\":\"oc-img-bordered\"}],\"html_style_link\":[{\"class_label\":\"Green\",\"class_name\":\"oc-link-green\"},{\"class_label\":\"Strong\",\"class_name\":\"oc-link-strong\"}],\"html_style_paragraph\":[{\"class_label\":\"Bordered\",\"class_name\":\"oc-text-bordered\"},{\"class_label\":\"Gray\",\"class_name\":\"oc-text-gray\"},{\"class_label\":\"Spaced\",\"class_name\":\"oc-text-spaced\"},{\"class_label\":\"Uppercase\",\"class_name\":\"oc-text-uppercase\"}],\"html_style_table\":[{\"class_label\":\"Dashed Borders\",\"class_name\":\"oc-dashed-borders\"},{\"class_label\":\"Alternate Rows\",\"class_name\":\"oc-alternate-rows\"}],\"html_style_table_cell\":[{\"class_label\":\"Highlighted\",\"class_name\":\"oc-cell-highlighted\"},{\"class_label\":\"Thick Border\",\"class_name\":\"oc-cell-thick-border\"}],\"html_paragraph_formats\":[{\"format_label\":\"Normal\",\"format_tag\":\"N\"},{\"format_label\":\"Heading 1\",\"format_tag\":\"H1\"},{\"format_label\":\"Heading 2\",\"format_tag\":\"H2\"},{\"format_label\":\"Heading 3\",\"format_tag\":\"H3\"},{\"format_label\":\"Heading 4\",\"format_tag\":\"H4\"},{\"format_label\":\"Code\",\"format_tag\":\"PRE\"}],\"html_toolbar_buttons\":\"\"}'),(2,'laminsanneh_flexicontact_settings','{\"recipient_email\":\"david.tataje@gmail.com\",\"recipient_name\":\"Contact Soy Organico\",\"subject\":\"Contacto\",\"confirmation_text\":\"Gracias por contactarnos\",\"enable_captcha\":\"1\",\"site_key\":\"6LcUMckZAAAAAEIFAJUoVcUJGK5ge5noBUpDRfEw\",\"secret_key\":\"6LcUMckZAAAAAFMKb70Q_rIKOb1Xacd8cTGKTx8M\",\"enable_server_captcha_validation\":\"0\"}'),(3,'backend_brand_settings','{\"app_name\":\"Soy Org\\u00e1nico\",\"app_tagline\":\"Come sano, vive sano.\",\"primary_color\":\"#34495e\",\"secondary_color\":\"#e67e22\",\"accent_color\":\"#3498db\",\"menu_mode\":\"inline\",\"custom_css\":\"\"}');
/*!40000 ALTER TABLE `system_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'soyorganico'
--

--
-- Dumping routines for database 'soyorganico'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-07 19:08:35
