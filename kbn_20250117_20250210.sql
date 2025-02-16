-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: kbn_20250117_20250204
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actions` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `actions_created_by_index` (`created_by`),
  KEY `actions_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES ('create','Create',NULL,NULL,'2024-11-22 09:32:53','2024-11-22 09:32:53',3,1),('delete','Delete',NULL,NULL,'2024-11-22 09:32:53','2024-11-22 09:32:53',5,1),('list','List',NULL,NULL,'2024-11-22 09:32:53','2024-11-22 09:32:53',1,1),('show','Show',NULL,NULL,'2024-11-22 09:32:53','2024-11-22 09:32:53',2,1),('update','Update',NULL,NULL,'2024-11-22 09:32:53','2024-11-22 09:32:53',4,1);
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
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
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_recommendations`
--

DROP TABLE IF EXISTS `category_recommendations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_recommendations` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_category_seconds_created_by_index` (`created_by`),
  KEY `product_category_seconds_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_recommendations`
--

LOCK TABLES `category_recommendations` WRITE;
/*!40000 ALTER TABLE `category_recommendations` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_recommendations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `customers_created_by_index` (`created_by`),
  KEY `customers_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('0a608530-5f50-4fba-9c92-c2ed93b24213','Mary','Runolfsdottir','(979) 383-6361','noble.dare@example.com','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0),('17599453-8ff9-4595-bfa7-b4d4692f9986','Libby','Schuppe','+1-737-396-5250','yschroeder@example.com','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0),('19fb61eb-d473-4d08-896b-75265c1eaebc','Adaline','Rempel','1-680-979-0846','micaela.kilback@example.net','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0),('1a5567ef-ff15-49a3-94f5-d3554df1ac96','Sanford','Turcotte','+1-904-733-6592','cole.tristian@example.org','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0),('1cdd4b28-2694-40b7-a02f-59bca80e3697','Modesta','Spencer','+1 (364) 705-5451','phyllis.gutmann@example.org','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0),('3bf4ebb5-53c4-4efa-88d5-7b752f160152','Charlie','Davis','6677889900','charlie.davis@example.com','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',1),('41f01ed4-f5ce-4928-8e05-10c93522b146','Paige','Kassulke','(563) 725-5181','samson.treutel@example.net','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0),('467ef0ce-1ceb-4d57-bf70-333cfe742d9d','Aniyah','Hagenes','+1-814-824-7783','fstrosin@example.org','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0),('51380ecc-77da-48e3-ac0e-46bd328dbaee','Brent','Wisozk','(234) 660-8633','lottie49@example.com','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0),('5cb118b9-5682-4f4c-98cc-2855d221bec5','Bob','Brown','5544332211','bob.brown@example.com','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0),('61ea7c6f-ba1d-4ee2-8691-260cebda8a35','Theodore','Johnson','(858) 622-5192','tbode@example.org','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0),('669039aa-a015-4354-a704-50219f6ec259','Marquis','Turner','+1-859-864-7118','friesen.alfred@example.com','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0),('80663636-b4b1-40be-af6c-96d0b904564d','John','Doe','1234567890','john.doe@example.com','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',1),('81a2ff64-d07d-43b1-9709-6ad56379e460','Jane','Smith','0987654321','jane.smith@example.com','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0),('9e0b149b-f577-4e33-aae5-1a1d69fcdc3c','aslan','asilon1','5867878','aslanasilon1@gmail.com','aslan-asilon1','aslan-asilon1','2025-01-24 07:37:56','2025-01-24 07:37:56',1),('9e0b32c0-5b29-4dc8-8908-25da05c4a408','aslan','asilon26','5647567','aslanasilon26@gmail.com','aslan asilon26','aslan asilon26','2025-01-24 09:02:12','2025-01-24 09:02:12',1),('9e0b33d1-7f8a-460d-83e4-6b584b9dbb1d','aslan','asilon26','546456','aslanasilon26@gmail.com','aslan asilon26','aslan asilon26','2025-01-24 09:05:11','2025-01-24 09:05:11',1),('9e19122d-6253-4867-a8d7-00c270484671','aslan','asilon1','076868675','aslanasilon1@gmail.com','aslan asilon1','aslan asilon1','2025-01-31 06:32:43','2025-01-31 06:32:43',1),('9e1912d7-6237-4cd7-ab11-26f8cb39915a','aslan','asilon33','6796798','aslanasilon33@gmail.com','aslan asilon33','aslan asilon33','2025-01-31 06:34:34','2025-01-31 06:34:34',1),('9e1eb046-ad5d-4adc-98b7-5042628a711b','asalasilon1','setiawan','07685678','aslanasilonsetiawan@gmail.com','asalasilon setiawan','asalasilon setiawan','2025-02-03 01:33:56','2025-02-09 13:19:46',1),('9e1eec9f-2afd-4dd6-9bf0-967010ca5632','aslan','walker2','4564567','aslanwalker2@gmail.com','aslan walker2','aslan walker2','2025-02-03 04:22:40','2025-02-03 04:22:40',1),('9e1eeff6-07cf-4d36-934c-007630d1e4b9','aslanasilon1','walker3','567568','aslanwalker3','aslan walker3','aslan walker3','2025-02-03 04:32:00','2025-02-09 13:58:26',1),('9e1f33d4-7dd0-4d7d-853e-719508d16254','aslan','walker4','4574657','aslanwalker4@gmail.com','aslan walker4','aslan walker4','2025-02-03 07:41:47','2025-02-03 07:41:47',1),('9e1f3585-8959-454d-8b74-085a96776cd9','aslan','walker5','7698679','aslanwalker5@gmail.com','aslan walker5','aslan walker5','2025-02-03 07:46:31','2025-02-03 07:46:31',1),('9e1f3598-3961-4cfa-9ff6-cc5eaecd40c6','aslan','walker5','7698679','aslanwalker5@gmail.com','aslan walker5','aslan walker5','2025-02-03 07:46:43','2025-02-03 07:46:43',1),('9e1f3793-af8a-40ac-ad3f-dbf9b62c4b69','aslan','walker6','5436456','aslanwalker6@gmail.com','aslan walker6','aslan walker6','2025-02-03 07:52:16','2025-02-03 07:52:16',1),('b021b33c-360c-48d6-af08-3433102de356','Kris','Moen','+1-571-371-7280','darryl.nienow@example.net','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0),('b7584e2c-186d-45a0-a27b-50c6ea8d3710','Yvette','Grant','(479) 263-2630','jermaine54@example.org','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0),('b9fd5c2e-4c5e-40fb-8c92-c5d35afc9534','Alice','Johnson','1122334455','alice.johnson@example.com','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',1),('c057f6a2-b6df-4afe-9f87-6fd342f4f5b6','Liza','Thompson','503-438-1534','swift.gracie@example.net','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0),('c24af795-bfe7-4322-b586-36a08e632a74','Enola','Cummings','+1 (256) 932-7077','lynch.delphia@example.com','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0),('d6aa99b6-335a-484a-af8b-b49a9db59c00','Armand','Reichel','(380) 636-9556','cartwright.autumn@example.net','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0),('e6d2b3b7-2d78-48a8-9503-11d6c9862cfe','Ernie','Tromp','+1-220-354-3111','marlen38@example.org','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0),('ec892c7e-7749-4902-a1b8-6314bdc4163f','Golden','Gusikowski','+1-334-619-9195','olin.hettinger@example.net','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0),('f82236c0-ec5d-46f2-a977-4f1388b4ece7','Al','Effertz','+1 (559) 348-9033','leslie35@example.net','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0),('faa50515-4028-4bc1-8fbd-c8e1e9e3b495','Darrell','Kshlerin','1-862-350-3051','claudie61@example.net','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0),('fc6b6393-001c-4d35-9b77-166b795d70bf','Trycia','Will','432-247-6235','wblick@example.org','admin','admin','2025-01-24 06:22:24','2025-01-24 06:22:24',0);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_accounts`
--

DROP TABLE IF EXISTS `employee_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_accounts` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_accounts_username_unique` (`username`),
  KEY `employee_accounts_employee_id_foreign` (`employee_id`),
  KEY `employee_accounts_created_by_index` (`created_by`),
  KEY `employee_accounts_updated_by_index` (`updated_by`),
  CONSTRAINT `employee_accounts_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_accounts`
--

LOCK TABLES `employee_accounts` WRITE;
/*!40000 ALTER TABLE `employee_accounts` DISABLE KEYS */;
INSERT INTO `employee_accounts` VALUES ('9d8c81b8-8ef3-43f4-bad1-91e945693111','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','developer@system',NULL,'$2y$12$ErcvK1y3D40AE7UosLvu/O0igq63Q5V6X7GXQtMpE./bgspZn75sm',NULL,'system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1);
/*!40000 ALTER TABLE `employee_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_password_reset_tokens`
--

DROP TABLE IF EXISTS `employee_password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_password_reset_tokens`
--

LOCK TABLES `employee_password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `employee_password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_sessions`
--

DROP TABLE IF EXISTS `employee_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_sessions_user_id_index` (`user_id`),
  KEY `employee_sessions_last_activity_index` (`last_activity`),
  CONSTRAINT `employee_sessions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `employee_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_sessions`
--

LOCK TABLES `employee_sessions` WRITE;
/*!40000 ALTER TABLE `employee_sessions` DISABLE KEYS */;
INSERT INTO `employee_sessions` VALUES ('aXe5BrRFiT0cGhwQPnt8vJU33LLWp7V57620i5Vm','9d8c81b8-8ef3-43f4-bad1-91e945693111','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoicElPOWR0RHVLUWtnZ0ZKMkZscHNDVzFPME9BRWJpM0FWQURxOHEwdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zYWxlcy1vcmRlcnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YToyOntpOjA7czoxNjoibWFyeS50b2FzdC50aXRsZSI7aToxO3M6MjI6Im1hcnkudG9hc3QuZGVzY3JpcHRpb24iO31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtzOjM2OiI5ZDhjODFiOC04ZWYzLTQzZjQtYmFkMS05MWU5NDU2OTMxMTEiO3M6NDoibWFyeSI7YToxOntzOjU6InRvYXN0IjthOjA6e319fQ==',1739109506),('fEMFqYSxLNrzQLpjH7iw2AWCBqwLNtS3spQ1wU1Y','9d8c81b8-8ef3-43f4-bad1-91e945693111','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSjVpUXk4OXo4QlMxZTV5ZlgxOXJTakI5cXB1c1hzVnpSVHZUcTBiYiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM0OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvc2FsZXMtb3JkZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO3M6MzY6IjlkOGM4MWI4LThlZjMtNDNmNC1iYWQxLTkxZTk0NTY5MzExMSI7fQ==',1739109501);
/*!40000 ALTER TABLE `employee_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_email_unique` (`email`),
  KEY `employees_position_id_foreign` (`position_id`),
  KEY `employees_created_by_index` (`created_by`),
  KEY `employees_updated_by_index` (`updated_by`),
  CONSTRAINT `employees_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('9d8c81b8-37ad-4402-88ec-c5b65afb08c6','developer','Full Stack Developer','+6281380912181','developer@system',NULL,'system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
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
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
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
-- Table structure for table `marketplaces`
--

DROP TABLE IF EXISTS `marketplaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplaces` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `marketplaces_created_by_index` (`created_by`),
  KEY `marketplaces_updated_by_index` (`updated_by`),
  KEY `marketplaces_created_at_index` (`created_at`),
  KEY `marketplaces_updated_at_index` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplaces`
--

LOCK TABLES `marketplaces` WRITE;
/*!40000 ALTER TABLE `marketplaces` DISABLE KEYS */;
INSERT INTO `marketplaces` VALUES ('blibli','Blibli','https://www.blibli.com','/files/images/products/marketplace_image_blibli_image_20250123_151915_016293.png','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',2,1),('shopee','Shopee','https://shopee.co.id','/files/images/products/marketplace_image_shopee_image_20250123_155411_894485.png','system','system','2024-11-22 09:32:53','2025-01-23 08:54:11',3,1),('tokopedia','Tokopedia','https://www.tokopedia.com','/files/images/products/marketplace_image_tokopedia_image_20250123_155441_151576.png','system','system','2024-11-22 09:32:53','2025-01-23 08:54:41',1,1);
/*!40000 ALTER TABLE `marketplaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_properties`
--

DROP TABLE IF EXISTS `meta_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_properties` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_property_group_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `meta_properties_meta_property_group_id_foreign` (`meta_property_group_id`),
  KEY `meta_properties_created_by_index` (`created_by`),
  KEY `meta_properties_updated_by_index` (`updated_by`),
  CONSTRAINT `meta_properties_meta_property_group_id_foreign` FOREIGN KEY (`meta_property_group_id`) REFERENCES `meta_property_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_properties`
--

LOCK TABLES `meta_properties` WRITE;
/*!40000 ALTER TABLE `meta_properties` DISABLE KEYS */;
INSERT INTO `meta_properties` VALUES ('description','general','description','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',2,1),('keywords','general','keywords','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',3,1),('title','general','title','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1,1);
/*!40000 ALTER TABLE `meta_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_property_groups`
--

DROP TABLE IF EXISTS `meta_property_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_property_groups` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `meta_property_groups_created_by_index` (`created_by`),
  KEY `meta_property_groups_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_property_groups`
--

LOCK TABLES `meta_property_groups` WRITE;
/*!40000 ALTER TABLE `meta_property_groups` DISABLE KEYS */;
INSERT INTO `meta_property_groups` VALUES ('facebook','Facebook','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',2,1),('general','(General)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1,1),('instagram','Instagram','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',3,1),('tiktok','Tiktok','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',4,1),('twitter','Twitter','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',5,1);
/*!40000 ALTER TABLE `meta_property_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0000_09_30_042036_create_positions_table',1),(2,'0001_01_01_000000_create_users_table',1),(3,'0001_01_01_000001_create_cache_table',1),(4,'0001_01_01_000002_create_jobs_table',1),(5,'2024_08_30_043431_create_pages_table',1),(6,'2024_08_30_043441_create_actions_table',1),(7,'2024_08_30_043458_create_permissions_table',1),(8,'2024_09_30_035334_create_employees_table',1),(9,'2024_09_30_035339_create_employee_accounts_table',1),(10,'2024_10_01_090408_create_personal_access_tokens_table',1),(11,'2024_10_01_090410_create_marketplaces_table',1),(12,'2024_10_01_090413_create_meta_property_groups_table',1),(13,'2024_10_01_090415_create_meta_properties_table',1),(14,'2024_10_03_073200_create_product_category_seconds_table',1),(15,'2024_10_03_073202_create_product_category_firsts_table',1),(16,'2024_10_10_064954_create_products_table',1),(17,'2024_10_10_081200_create_product_contents_table',1),(18,'2024_10_10_081205_create_product_content_metas_table',1),(19,'2024_10_10_081208_create_product_content_displays_table',1),(20,'2024_10_10_081210_create_product_content_videos_table',1),(21,'2024_10_10_081222_create_product_content_features_table',1),(22,'2024_10_10_081245_create_product_content_marketplaces_table',1),(23,'2024_10_10_081340_create_product_content_specifications_table',1),(24,'2024_10_10_081401_create_product_content_qnas_table',1),(25,'2024_11_12_162024_create_product_content_reviews_table',1),(26,'2024_11_18_160201_create_customers_table',1),(33,'2024_11_18_160233_create_sales_carts_table',2),(34,'2024_11_18_160300_create_sales_cart_detail_table',2),(35,'2024_11_18_160313_create_sales_orders_table',2),(36,'2024_11_18_160332_create_sales_order_detail_table',2),(37,'2024_11_18_160359_create_sales_invoices_table',2),(38,'2024_11_18_160428_create_sales_payments_table',2),(39,'2024_11_18_160301_create_sales_cart_shippings_table',3),(45,'2024_11_18_160335_create_sales_shippings_table',4),(46,'2025_01_03_131033_create_position_permission_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `pages_created_by_index` (`created_by`),
  KEY `pages_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES ('customer','Customer','developer@system','developer@system','2025-02-04 07:55:07','2025-02-04 07:55:07',1),('dashboard','Dashboard','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee','Employee','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_account','Employee Account','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('marketplace','Marketplace','developer@system','developer@system','2025-02-04 08:03:42','2025-02-04 08:03:42',1),('page','Page','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('permission','Permission','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('position','Position','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_brand','Product Brand','developer@system','developer@system','2025-01-21 03:40:04','2025-01-21 03:40:04',1),('product_category_first','Product Category First','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product1','Product1','system','developer@system','2024-11-22 09:32:53','2025-02-04 09:03:10',1),('product6','product6','developer@system','developer@system','2025-02-04 09:05:52','2025-02-04 09:05:52',1),('product8','Product8','developer@system','developer@system','2025-02-04 09:13:22','2025-02-04 09:13:22',1),('sales_order','Sales order','developer@system','developer@system','2025-02-04 08:29:06','2025-02-04 08:29:06',1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `permissions_page_id_foreign` (`page_id`),
  KEY `permissions_action_id_foreign` (`action_id`),
  KEY `permissions_created_by_index` (`created_by`),
  KEY `permissions_updated_by_index` (`updated_by`),
  CONSTRAINT `permissions_action_id_foreign` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permissions_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES ('customer-create','customer','create','customer-Create',NULL,NULL,'2025-02-04 07:55:07','2025-02-04 07:55:07',1),('customer-delete','customer','delete','customer-Delete',NULL,NULL,'2025-02-04 07:55:07','2025-02-04 07:55:07',1),('customer-list','customer','list','customer-List',NULL,NULL,'2025-02-04 07:55:07','2025-02-04 07:55:07',1),('customer-show','customer','show','customer-Show',NULL,NULL,'2025-02-04 07:55:07','2025-02-04 07:55:07',1),('customer-update','customer','update','customer-Update',NULL,NULL,'2025-02-04 07:55:07','2025-02-04 07:55:07',1),('dashboard-list','dashboard','list','Dashboard (List)',NULL,NULL,NULL,NULL,1),('employee_account-create','employee_account','create','Employee Account (Create)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('employee_account-delete','employee_account','delete','Employee Account (Delete)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('employee_account-list','employee_account','list','Employee Account (List)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('employee_account-show','employee_account','show','Employee Account (Show)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('employee_account-update','employee_account','update','Employee Account (Update)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('employee-create','employee','create','Employee (Create)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('employee-delete','employee','delete','Employee (Delete)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('employee-list','employee','list','Employee (List)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('employee-show','employee','show','Employee (Show)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('employee-update','employee','update','Employee (Update)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('marketplace-create','marketplace','create','marketplace-create',NULL,NULL,'2025-02-04 08:03:42','2025-02-04 08:03:42',1),('marketplace-delete','marketplace','delete','marketplace-delete',NULL,NULL,'2025-02-04 08:03:42','2025-02-04 08:03:42',1),('marketplace-list','marketplace','list','marketplace-list',NULL,NULL,'2025-02-04 08:03:42','2025-02-04 08:03:42',1),('marketplace-show','marketplace','show','marketplace-show',NULL,NULL,'2025-02-04 08:03:42','2025-02-04 08:03:42',1),('marketplace-update','marketplace','update','marketplace-update',NULL,NULL,'2025-02-04 08:03:42','2025-02-04 08:03:42',1),('page-create','page','create','Page (Create)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('page-delete','page','delete','Page (Delete)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('page-list','page','list','Page (List)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('page-show','page','show','Page (Show)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('page-update','page','update','Page (Update)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('permission-create','permission','create','Permission (Create)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('permission-delete','permission','delete','Permission (Delete)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('permission-list','permission','list','Permission (List)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('permission-show','permission','show','Permission (Show)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('permission-update','permission','update','Permission (Update)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('position-create','position','create','Position (Create)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('position-delete','position','delete','Position (Delete)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('position-list','position','list','Position (List)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('position-show','position','show','Position (Show)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('position-update','position','update','Position (Update)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('product_brand-create','product_brand','create','Product Brand (Create)',NULL,NULL,NULL,NULL,1),('product_brand-delete','product_brand','delete','Product Brand (Delete)',NULL,NULL,NULL,NULL,1),('product_brand-list','product_brand','list','Product Brand (List)','system','system',NULL,NULL,1),('product_brand-show','product_brand','show','Product brand (Show)',NULL,NULL,NULL,NULL,1),('product_brand-update','product_brand','update','Product Brand (Update)',NULL,NULL,NULL,NULL,1),('product_category_first-create','product_category_first','create','Product Category First (Create)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('product_category_first-delete','product_category_first','delete','Product Category First (Delete)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('product_category_first-list','product_category_first','list','Product Category First (List)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('product_category_first-show','product_category_first','show','Product Category First (Show)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('product_category_first-update','product_category_first','update','Product Category First (Update)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('product-create','product1','create','Product (Create)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('product-delete','product1','delete','Product (Delete)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('product-list','product1','list','Product (List)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('product-show','product1','show','Product (Show)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('product-update','product1','update','Product (Update)','system','system','2025-01-06 04:49:00','2025-01-06 04:49:00',1),('product6-create','product6','create','product6-create',NULL,NULL,'2025-02-04 09:05:52','2025-02-04 09:05:52',1),('product6-delete','product6','delete','product6-delete',NULL,NULL,'2025-02-04 09:05:52','2025-02-04 09:05:52',1),('product6-list','product6','list','product6-list',NULL,NULL,'2025-02-04 09:05:52','2025-02-04 09:05:52',1),('product6-show','product6','show','product6-show',NULL,NULL,'2025-02-04 09:05:52','2025-02-04 09:05:52',1),('product6-update','product6','update','product6-update',NULL,NULL,'2025-02-04 09:05:52','2025-02-04 09:05:52',1),('product8-create','product8','create','product8-create',NULL,NULL,'2025-02-04 09:13:22','2025-02-04 09:13:22',1),('product8-delete','product8','delete','product8-delete',NULL,NULL,'2025-02-04 09:13:22','2025-02-04 09:13:22',1),('product8-list','product8','list','product8-list',NULL,NULL,'2025-02-04 09:13:22','2025-02-04 09:13:22',1),('product8-show','product8','show','product8-show',NULL,NULL,'2025-02-04 09:13:22','2025-02-04 09:13:22',1),('product8-update','product8','update','product8-update',NULL,NULL,'2025-02-04 09:13:22','2025-02-04 09:13:22',1),('sales_order-create','sales_order','create','sales_order-create',NULL,NULL,'2025-02-04 08:29:06','2025-02-04 08:29:06',1),('sales_order-delete','sales_order','delete','sales_order-delete',NULL,NULL,'2025-02-04 08:29:06','2025-02-04 08:29:06',1),('sales_order-list','sales_order','list','sales_order-list',NULL,NULL,'2025-02-04 08:29:06','2025-02-04 08:29:06',1),('sales_order-show','sales_order','show','sales_order-show',NULL,NULL,'2025-02-04 08:29:06','2025-02-04 08:29:06',1),('sales_order-update','sales_order','update','sales_order-update',NULL,NULL,'2025-02-04 08:29:06','2025-02-04 08:29:06',1);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_permission`
--

DROP TABLE IF EXISTS `position_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position_permission` (
  `id` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `position_permission_position_id_permission_id_unique` (`position_id`,`permission_id`),
  KEY `position_permission_permission_id_foreign` (`permission_id`),
  CONSTRAINT `position_permission_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `position_permission_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_permission`
--

LOCK TABLES `position_permission` WRITE;
/*!40000 ALTER TABLE `position_permission` DISABLE KEYS */;
INSERT INTO `position_permission` VALUES ('developer-customer-create','developer','customer-create'),('developer-customer-delete','developer','customer-delete'),('developer-customer-list','developer','customer-list'),('developer-customer-show','developer','customer-show'),('developer-customer-update','developer','customer-update'),('developer-dashboard-list','developer','dashboard-list'),('developer-employee_account-create','developer','employee_account-create'),('developer-employee_account-delete','developer','employee_account-delete'),('developer-employee_account-list','developer','employee_account-list'),('developer-employee_account-show','developer','employee_account-show'),('developer-employee_account-update','developer','employee_account-update'),('developer-employee-create','developer','employee-create'),('developer-employee-delete','developer','employee-delete'),('developer-employee-list','developer','employee-list'),('developer-employee-show','developer','employee-show'),('developer-employee-update','developer','employee-update'),('developer-marketplace-create','developer','marketplace-create'),('developer-marketplace-delete','developer','marketplace-delete'),('developer-marketplace-list','developer','marketplace-list'),('developer-marketplace-show','developer','marketplace-show'),('developer-marketplace-update','developer','marketplace-update'),('developer-page-create','developer','page-create'),('developer-page-delete','developer','page-delete'),('developer-page-list','developer','page-list'),('developer-page-show','developer','page-show'),('developer-page-update','developer','page-update'),('developer-permission-create','developer','permission-create'),('developer-permission-delete','developer','permission-delete'),('developer-permission-list','developer','permission-list'),('developer-permission-show','developer','permission-show'),('developer-permission-update','developer','permission-update'),('developer-position-create','developer','position-create'),('developer-position-delete','developer','position-delete'),('developer-position-list','developer','position-list'),('developer-position-show','developer','position-show'),('developer-position-update','developer','position-update'),('developer-product_brand-create','developer','product_brand-create'),('developer-product_brand-delete','developer','product_brand-delete'),('developer-product_brand-list','developer','product_brand-list'),('developer-product_brand-show','developer','product_brand-show'),('developer-product_brand-update','developer','product_brand-update'),('developer-product_category_first-create','developer','product_category_first-create'),('developer-product_category_first-delete','developer','product_category_first-delete'),('developer-product_category_first-list','developer','product_category_first-list'),('developer-product_category_first-show','developer','product_category_first-show'),('developer-product_category_first-update','developer','product_category_first-update'),('developer-product-create','developer','product-create'),('developer-product-delete','developer','product-delete'),('developer-product-list','developer','product-list'),('developer-product-show','developer','product-show'),('developer-product-update','developer','product-update'),('developer-product6-create','developer','product6-create'),('developer-product6-delete','developer','product6-delete'),('developer-product6-list','developer','product6-list'),('developer-product6-show','developer','product6-show'),('developer-product6-update','developer','product6-update'),('developer-product8-create','developer','product8-create'),('developer-product8-delete','developer','product8-delete'),('developer-product8-list','developer','product8-list'),('developer-product8-show','developer','product8-show'),('developer-product8-update','developer','product8-update'),('developer-sales_order-create','developer','sales_order-create'),('developer-sales_order-delete','developer','sales_order-delete'),('developer-sales_order-list','developer','sales_order-list'),('developer-sales_order-show','developer','sales_order-show'),('developer-sales_order-update','developer','sales_order-update');
/*!40000 ALTER TABLE `position_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `positions_created_by_index` (`created_by`),
  KEY `positions_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES ('admin','Admin','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('developer','Developer','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1);
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_brands`
--

DROP TABLE IF EXISTS `product_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_brands` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_brands_slug_index` (`slug`),
  KEY `product_brands_created_by_index` (`created_by`),
  KEY `product_brands_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_brands`
--

LOCK TABLES `product_brands` WRITE;
/*!40000 ALTER TABLE `product_brands` DISABLE KEYS */;
INSERT INTO `product_brands` VALUES ('9d8c8235-70a3-4269-b59e-62a371e33424','Tiger','tiger','/files/images/product-brands/product_brand_image_tiger_image_20250121_115524_525589.png','Salah satu merek dari proquip indonesia yang menyediakan alat-alat teknik dengan kualitas tinggi dan harga yang  terjangkau. Tersedia di seluruh indonesia','9d8c8235-70a3-4269-b59e-62a371e94732',NULL,'developer@system',NULL,'2025-01-21 04:55:24',1),('9d8c8235-70a3-4269-b59e-62a371e9400','Excell','excell','/files/images/product-brands/product_brand_image_excell_image_20250121_115543_566101.png','Menghadirkan peralatan teknik dan mesin generator set terbaru yang didukung mesin HONDA asli atau original pabrikan. Sangat handal dan teruji kualitasnya.',NULL,NULL,'developer@system',NULL,'2025-01-21 04:55:43',1),('9d8c8235-70a3-4269-b59e-62a371e9456','Carlton','carlton','/files/images/product-brands/product_brand_image_carlton_image_20250121_115601_199881.png','Hadir menyediakan perlengkapan produksi makanan untuk di rumah dan restoran. Skala kecil maupun industri. Dengan material kualitas food grade, menjadikan mesin aman untuk digunakan sehari-hari.',NULL,NULL,'developer@system',NULL,'2025-01-21 04:56:01',1),('9d8c8235-70a3-4269-b59e-62a371e94711','Selva','selva','/files/images/product-brands/product_brand_image_selva_image_20250121_115253_515216.png','Menyediakan peralatan teknik yang berkaitan dengan pompa air tanah. Dibekali teknologi dari Italia. Kualitas terjamin. Karena setiap produknya melalui quality control yang handal',NULL,NULL,'developer@system',NULL,'2025-01-21 04:52:53',1),('9d8c8235-70a3-4269-b59e-62a371e94732','Proquip','proquip','/files/images/product-brands/product_brand_image_proquip_image_20250121_115620_319309.png','Merupakan brand yang berkualitas tinggi. Inovasi dan pengembangan proquip Newtek tidak hanya berfokus pada fungsi , kegunaan dan tampilan tetapi juga mempertimbangkan  efisiensi, kinerja, daya tahan, dan perawatan pada alat-alat yang digunakan.',NULL,NULL,'developer@system',NULL,'2025-01-21 04:56:20',1);
/*!40000 ALTER TABLE `product_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category_firsts`
--

DROP TABLE IF EXISTS `product_category_firsts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category_firsts` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category_second_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_category_firsts_product_category_second_id_foreign` (`product_category_second_id`),
  KEY `product_category_firsts_slug_index` (`slug`),
  KEY `product_category_firsts_created_by_index` (`created_by`),
  KEY `product_category_firsts_updated_by_index` (`updated_by`),
  CONSTRAINT `product_category_firsts_product_category_second_id_foreign` FOREIGN KEY (`product_category_second_id`) REFERENCES `product_category_seconds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category_firsts`
--

LOCK TABLES `product_category_firsts` WRITE;
/*!40000 ALTER TABLE `product_category_firsts` DISABLE KEYS */;
INSERT INTO `product_category_firsts` VALUES ('9d8c8235-70a3-4269-b59e-62a371e94333','9d8c8235-70a3-4269-b59e-62a371e943f1','Aksesories','aksesories',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('9d8c8235-70a3-4269-b59e-62a371e94444','9d8c8235-70a3-4269-b59e-62a371e943f1','Mesin Gilingan Mie','mesin-gilingan-mie',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('9d8c8235-70a3-4269-b59e-62a373efgreh','9d8c8235-70a3-4269-b59e-62a371e943f1','Oven Listrik','oven-listrik',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('9e02b2a0-a8a9-4c4a-a4ee-b07362ec9738','9d8c8235-70a3-4269-b59e-62a371e943f1','Mesin Sostel','mesin-sostel',NULL,NULL,NULL,'developer@system','developer@system','2025-01-20 03:37:20','2025-01-20 03:37:20',1),('9e02b2c5-b792-4728-b82c-469f03eefc94','9d8c8235-70a3-4269-b59e-62a371e943f1','Cup Sealer','cup-sealer',NULL,NULL,NULL,'developer@system','developer@system','2025-01-20 03:37:44','2025-01-20 03:37:44',1),('9e02b2f6-c075-4bf9-bc09-7ed4b6439c44','9d8c8235-70a3-4269-b59e-62a371e943f1','Mesin Penggoreng','mesin-penggoreng',NULL,NULL,NULL,'developer@system','developer@system','2025-01-20 03:38:16','2025-01-20 03:38:16',1),('9e02b30a-5b97-4a0e-8360-a9bc072f7133','9d8c8235-70a3-4269-b59e-62a371e943f1','Mesin Adonan','mesin-adonan',NULL,NULL,NULL,'developer@system','developer@system','2025-01-20 03:38:29','2025-01-20 03:38:29',1),('9e02b31e-9848-48e2-b20c-65662995188c','9d8c8235-70a3-4269-b59e-62a371e943f1','Mesin Cetak Bakso','mesin-cetak-bakso',NULL,NULL,NULL,'developer@system','developer@system','2025-01-20 03:38:42','2025-01-20 03:38:42',1),('9e02b33d-3ba4-472c-b263-d133b2bf90e2','9d8c8235-70a3-4269-b59e-62a371e943f1','Roaster','roaster',NULL,NULL,NULL,'developer@system','developer@system','2025-01-20 03:39:02','2025-01-20 03:39:02',1),('9e02b35b-a77b-4e3d-bdfa-99880eb29e6d','9d8c8235-70a3-4269-b59e-62a371e943f1','Mesin Panggang','mesin-panggang',NULL,NULL,NULL,'developer@system','developer@system','2025-01-20 03:39:22','2025-01-20 03:39:22',1),('9e02b372-b2d9-43c6-a32a-9351208eb6a2','9d8c8235-70a3-4269-b59e-62a371e943f1','Mesin Gulali','mesin-gulali',NULL,NULL,NULL,'developer@system','developer@system','2025-01-20 03:39:37','2025-01-20 03:39:37',1),('9e02b38b-85e9-45f1-a5c3-6c6c07bbc12a','9d8c8235-70a3-4269-b59e-62a371e943f1','Electric Kitchen','electric-kitchen',NULL,NULL,NULL,'developer@system','developer@system','2025-01-20 03:39:53','2025-01-20 03:39:53',1),('9e02b4ed-652b-4bb7-acab-f4a8f9366cc9','9e02b474-020b-4268-b919-6019d3cfd2e6','BACKPACK SPRAYER','backpack-sprayer','BACKPACK SPRAYER',NULL,NULL,'developer@system','developer@system','2025-01-20 03:43:45','2025-01-20 03:43:45',1),('9e02b4fd-79ee-49b5-b7ad-296d62e129ad','9e02b474-020b-4268-b919-6019d3cfd2e6','BRUSH CUTTER','brush-cutter','BRUSH CUTTER',NULL,NULL,'developer@system','developer@system','2025-01-20 03:43:56','2025-01-20 03:43:56',1),('9e02b50d-d70d-45d2-bde0-723d203d009c','9e02b474-020b-4268-b919-6019d3cfd2e6','CHAINSAW','chainsaw','CHAINSAW',NULL,NULL,'developer@system','developer@system','2025-01-20 03:44:07','2025-01-20 03:44:07',1),('9e02b51f-508f-43dc-a550-d2e72184f664','9e02b474-020b-4268-b919-6019d3cfd2e6','DIGITAL SCALE','digital-scale','DIGITAL SCALE',NULL,NULL,'developer@system','developer@system','2025-01-20 03:44:18','2025-01-20 03:44:18',1),('9e02b52a-f2ba-4997-b91d-837862791e21','9e02b474-020b-4268-b919-6019d3cfd2e6','DRILL','drill','DRILL',NULL,NULL,'developer@system','developer@system','2025-01-20 03:44:26','2025-01-20 03:44:26',1),('9e02b539-c376-4115-afb9-cee8ad062b07','9e02b474-020b-4268-b919-6019d3cfd2e6','ENGINE','engine','ENGINE',NULL,NULL,'developer@system','developer@system','2025-01-20 03:44:35','2025-01-20 03:44:35',1),('9e02b548-0ddd-40b5-8561-9fc6c54a57c5','9e02b474-020b-4268-b919-6019d3cfd2e6','FLOOR SAW','floor-saw','FLOOR SAW',NULL,NULL,'developer@system','developer@system','2025-01-20 03:44:45','2025-01-20 03:44:45',1),('9e02b555-f1d6-4c21-9c4c-abbb74adf4e5','9e02b474-020b-4268-b919-6019d3cfd2e6','GENERATOR','generator','GENERATOR',NULL,NULL,'developer@system','developer@system','2025-01-20 03:44:54','2025-01-20 03:44:54',1),('9e02b564-68a1-4f0a-a9df-35eda6c320d3','9e02b474-020b-4268-b919-6019d3cfd2e6','LAWN MOWER','lawn-mower','LAWN MOWER',NULL,NULL,'developer@system','developer@system','2025-01-20 03:45:03','2025-01-20 03:45:03',1),('9e02b571-0512-4639-815e-f0836212098e','9e02b474-020b-4268-b919-6019d3cfd2e6','LITHIUM','lithium','LITHIUM',NULL,NULL,'developer@system','developer@system','2025-01-20 03:45:12','2025-01-20 03:45:12',1),('9e02b57f-34fb-4996-b8d1-addce9290cd9','9e02b474-020b-4268-b919-6019d3cfd2e6','MINI OUTBOARD','mini-outboard','MINI OUTBOARD',NULL,NULL,'developer@system','developer@system','2025-01-20 03:45:21','2025-01-20 03:45:21',1),('9e02b58d-6571-425a-87bb-a637fa8b6c1f','9e02b474-020b-4268-b919-6019d3cfd2e6','MINI TILLER','mini-tiller','MINI TILLER',NULL,NULL,'developer@system','developer@system','2025-01-20 03:45:30','2025-01-20 03:45:30',1),('9e02b59f-d301-4491-b877-36a4b1a8d8f4','9e02b474-020b-4268-b919-6019d3cfd2e6','PLATE COMPACTOR','plate-compactor','PLATE COMPACTOR',NULL,NULL,'developer@system','developer@system','2025-01-20 03:45:42','2025-01-20 03:45:42',1),('9e02b5ad-8273-4023-a195-1ec66422d26a','9e02b474-020b-4268-b919-6019d3cfd2e6','POWER SPRAYER','power-sprayer','POWER SPRAYER',NULL,NULL,'developer@system','developer@system','2025-01-20 03:45:51','2025-01-20 03:45:51',1),('9e02b5ba-ae49-4bb4-8dd2-0a2d17277e88','9e02b474-020b-4268-b919-6019d3cfd2e6','PRESSURE WASHER','pressure-washer','PRESSURE WASHER',NULL,NULL,'developer@system','developer@system','2025-01-20 03:46:00','2025-01-20 03:46:00',1),('9e02b5c7-5c04-4508-8074-4f9745ccf7f9','9e02b474-020b-4268-b919-6019d3cfd2e6','RICE POLISHER','rice-polisher','RICE POLISHER',NULL,NULL,'developer@system','developer@system','2025-01-20 03:46:08','2025-01-20 03:46:08',1),('9e02bdc3-61b6-49db-b6ef-81e7da710039','9e02b474-020b-4268-b919-6019d3cfd2e6','AIR COMPRESSOR','air-compressor','AIR COMPRESSOR',NULL,NULL,'developer@system','developer@system','2025-01-20 04:08:28','2025-01-20 04:08:28',1),('9e194681-2171-4387-bcba-f52c800213c8','9d8c8235-70a3-4269-b59e-62a371e943f1','Mesin Kopi','mesin-kopi','mesin kopi',NULL,NULL,'developer@system','developer@system','2025-01-31 08:59:02','2025-01-31 08:59:02',1);
/*!40000 ALTER TABLE `product_category_firsts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category_seconds`
--

DROP TABLE IF EXISTS `product_category_seconds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category_seconds` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_category_seconds_slug_index` (`slug`),
  KEY `product_category_seconds_created_by_index` (`created_by`),
  KEY `product_category_seconds_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category_seconds`
--

LOCK TABLES `product_category_seconds` WRITE;
/*!40000 ALTER TABLE `product_category_seconds` DISABLE KEYS */;
INSERT INTO `product_category_seconds` VALUES ('9d8c8235-70a3-4269-b59e-62a371e943f1','Carlton','carlton','Carlton',NULL,NULL,NULL,NULL,NULL,1),('9d8c8235-70a3-4269-b59e-62a371e947d6','(TIdak Ada)','tidak-ada',NULL,NULL,'developer@system','developer@system','2024-11-22 09:34:15','2024-11-22 09:34:15',1),('9e02b474-020b-4268-b919-6019d3cfd2e6','Proquip','proquip','proquip',NULL,'developer@system','developer@system','2025-01-20 03:42:26','2025-01-20 03:42:26',1);
/*!40000 ALTER TABLE `product_category_seconds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_displays`
--

DROP TABLE IF EXISTS `product_content_displays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_displays` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_displays_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_displays_created_by_index` (`created_by`),
  KEY `product_content_displays_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_displays_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_displays`
--

LOCK TABLES `product_content_displays` WRITE;
/*!40000 ALTER TABLE `product_content_displays` DISABLE KEYS */;
INSERT INTO `product_content_displays` VALUES ('9e052f4b-10ae-4234-9795-e75fe2b48965','9e052f0b-4125-44f8-ba8f-84cfc0410bfe','Mesin Gilingan Mie Elektrik Noodle Maker MJH180 Display Image 01','/files/images/product-contents/9e052f0b-4125-44f8-ba8f-84cfc0410bfe/product-content-reviews/product-content-display-image_mesin_gilingan_mie_elektrik_noodle_maker_mjh180_display_image_01_image_20250121_161734_718813.webp','developer@system','developer@system','2025-01-21 09:17:34','2025-01-21 09:17:34',1,1),('9e052f5e-9a25-4884-a2c4-3c7640441dde','9e052f0b-4125-44f8-ba8f-84cfc0410bfe','Mesin Gilingan Mie Elektrik Noodle Maker MJH180 Display Image 02','/files/images/product-contents/9e052f0b-4125-44f8-ba8f-84cfc0410bfe/product-content-reviews/product-content-display-image_mesin_gilingan_mie_elektrik_noodle_maker_mjh180_display_image_02_image_20250121_161747_525602.webp','developer@system','developer@system','2025-01-21 09:17:47','2025-01-21 09:17:47',2,1),('9e052f75-89c1-4796-a207-b15d0f269f97','9e052f0b-4125-44f8-ba8f-84cfc0410bfe','Mesin Gilingan Mie Elektrik Noodle Maker MJH180 Display Image 03','/files/images/product-contents/9e052f0b-4125-44f8-ba8f-84cfc0410bfe/product-content-reviews/product-content-display-image_mesin_gilingan_mie_elektrik_noodle_maker_mjh180_display_image_03_image_20250121_161802_557447.webp','developer@system','developer@system','2025-01-21 09:18:02','2025-01-21 09:18:02',3,1),('9e19482a-fd6d-404f-8994-ff8706636345','9e194808-7d3b-477a-b41a-19017ce549b9','Sarung Tangan Oven Silikon Anti Panas Oven Gloves Display Image 01','/files/images/product-contents/9e194808-7d3b-477a-b41a-19017ce549b9/product-content-reviews/product-content-display-image_sarung_tangan_oven_silikon_anti_panas_oven_gloves_display_image_01_image_20250131_160341_461970.webp','developer@system','developer@system','2025-01-31 09:03:41','2025-01-31 09:03:41',1,1),('9e19483d-8b6f-4581-ad05-a295c462a0f5','9e194808-7d3b-477a-b41a-19017ce549b9','Sarung Tangan Oven Silikon Anti Panas Oven Gloves Display Image 02','/files/images/product-contents/9e194808-7d3b-477a-b41a-19017ce549b9/product-content-reviews/product-content-display-image_sarung_tangan_oven_silikon_anti_panas_oven_gloves_display_image_02_image_20250131_160353_623398.webp','developer@system','developer@system','2025-01-31 09:03:53','2025-01-31 09:03:53',2,1),('9e19484f-be2a-4074-9609-384627cfa43b','9e194808-7d3b-477a-b41a-19017ce549b9','Sarung Tangan Oven Silikon Anti Panas Oven Gloves Display Image 03','/files/images/product-contents/9e194808-7d3b-477a-b41a-19017ce549b9/product-content-reviews/product-content-display-image_sarung_tangan_oven_silikon_anti_panas_oven_gloves_display_image_03_image_20250131_160405_551528.webp','developer@system','developer@system','2025-01-31 09:04:05','2025-01-31 09:04:05',3,1),('9e19490b-9a12-490b-9f0c-87e18e509625','9e1948f8-868e-47b0-984e-ec99d9ec09a8','Mesin Cup Sealer Mesin Press Gelas Plastik Sealing Machine CT-D1 (GELAS TINGGI) Display Image 01','/files/images/product-contents/9e1948f8-868e-47b0-984e-ec99d9ec09a8/product-content-reviews/product-content-display-image_mesin_cup_sealer_mesin_press_gelas_plastik_sealing_machine_ct_d1_gelas_tinggi_display_image_01_image_20250131_160608_665574.webp','developer@system','developer@system','2025-01-31 09:06:08','2025-01-31 09:06:08',1,1),('9e194936-6753-4020-bb82-cb4af2611d25','9e1948f8-868e-47b0-984e-ec99d9ec09a8','Mesin Cup Sealer Mesin Press Gelas Plastik Sealing Machine CT-D1 (GELAS TINGGI) Display Image 02','/files/images/product-contents/9e1948f8-868e-47b0-984e-ec99d9ec09a8/product-content-reviews/product-content-display-image_mesin_cup_sealer_mesin_press_gelas_plastik_sealing_machine_ct_d1_gelas_tinggi_display_image_02_image_20250131_160636_714898.webp','developer@system','developer@system','2025-01-31 09:06:36','2025-01-31 09:06:36',2,1),('9e19494a-ad4f-40dc-b223-d344a2cf2fca','9e1948f8-868e-47b0-984e-ec99d9ec09a8','Mesin Cup Sealer Mesin Press Gelas Plastik Sealing Machine CT-D1 (GELAS TINGGI) Display Image 03','/files/images/product-contents/9e1948f8-868e-47b0-984e-ec99d9ec09a8/product-content-reviews/product-content-display-image_mesin_cup_sealer_mesin_press_gelas_plastik_sealing_machine_ct_d1_gelas_tinggi_display_image_03_image_20250131_160650_003306.webp','developer@system','developer@system','2025-01-31 09:06:50','2025-01-31 09:06:50',3,1),('9e194a13-0b8f-4303-b32c-be0b89ac4b42','9e1949c4-980e-4945-bb9d-79f84b77af00','Carlton Mesin Cup Sealer Mesin Press Gelas Plastik Sealing Machine CT-D8 Display Image 01','/files/images/product-contents/9e1949c4-980e-4945-bb9d-79f84b77af00/product-content-reviews/product-content-display-image_carlton_mesin_cup_sealer_mesin_press_gelas_plastik_sealing_machine_ct_d8_display_image_01_image_20250131_160901_312580.webp','developer@system','developer@system','2025-01-31 09:09:01','2025-01-31 09:09:01',1,1),('9e1954b1-a24e-45a6-9194-2cea10b2be51','9e194aa1-d574-4cc2-9393-3fc4f7c047dd','Mesin Cup Sealer With Counter Penghitung Mesin Press Gelas Plastik CT-D8C Display Image 01','/files/images/product-contents/9e194aa1-d574-4cc2-9393-3fc4f7c047dd/product-content-displays/product-content-display-image_mesin_cup_sealer_with_counter_penghitung_mesin_press_gelas_plastik_ct_d8c_display_image_01_image_20250131_163842.webp','developer@system','developer@system','2025-01-31 09:38:42','2025-01-31 09:38:42',1,1),('9e1954d0-b089-4c81-8a87-99ba7846e384','9e194aa1-d574-4cc2-9393-3fc4f7c047dd','Mesin Cup Sealer With Counter Penghitung Mesin Press Gelas Plastik CT-D8C Display Image 02','/files/images/product-contents/9e194aa1-d574-4cc2-9393-3fc4f7c047dd/product-content-displays/product-content-display-image_mesin_cup_sealer_with_counter_penghitung_mesin_press_gelas_plastik_ct_d8c_display_image_02_image_20250131_163903.webp','developer@system','developer@system','2025-01-31 09:39:03','2025-01-31 09:39:03',2,1),('9e1955b1-8477-474a-9032-7e4c64d67f0d','9e195597-afdf-4bd7-a53e-92c6105123b5','Gracia Oven Listrik 22L - Low Watt Terdapat Lampu Indikator, Grill & Baking Display Image 01','/files/images/product-contents/9e195597-afdf-4bd7-a53e-92c6105123b5/product-content-displays/product-content-display-image_gracia_oven_listrik_22l_low_watt_terdapat_lampu_indikator_grill_baking_display_image_01_image_20250131_164130.webp','developer@system','developer@system','2025-01-31 09:41:30','2025-01-31 09:41:30',1,1),('9e1955c6-d5c5-4903-8000-ea713ffd1993','9e195597-afdf-4bd7-a53e-92c6105123b5','Gracia Oven Listrik 22L - Low Watt Terdapat Lampu Indikator, Grill & Baking Display Image 02','/files/images/product-contents/9e195597-afdf-4bd7-a53e-92c6105123b5/product-content-displays/product-content-display-image_gracia_oven_listrik_22l_low_watt_terdapat_lampu_indikator_grill_baking_display_image_02_image_20250131_164144.webp','developer@system','developer@system','2025-01-31 09:41:44','2025-01-31 09:41:44',2,1),('9e1955d9-b651-498f-83e9-0f50a5061c18','9e195597-afdf-4bd7-a53e-92c6105123b5','Gracia Oven Listrik 22L - Low Watt Terdapat Lampu Indikator, Grill & Baking Display Image 03','/files/images/product-contents/9e195597-afdf-4bd7-a53e-92c6105123b5/product-content-displays/product-content-display-image_gracia_oven_listrik_22l_low_watt_terdapat_lampu_indikator_grill_baking_display_image_03_image_20250131_164157.webp','developer@system','developer@system','2025-01-31 09:41:57','2025-01-31 09:41:57',3,1),('9e1955ed-e8af-41bc-90aa-1dc2f5f1b3ea','9e195597-afdf-4bd7-a53e-92c6105123b5','Gracia Oven Listrik 22L - Low Watt Terdapat Lampu Indikator, Grill & Baking Display Image 04','/files/images/product-contents/9e195597-afdf-4bd7-a53e-92c6105123b5/product-content-displays/product-content-display-image_gracia_oven_listrik_22l_low_watt_terdapat_lampu_indikator_grill_baking_display_image_04_image_20250131_164210.webp','developer@system','developer@system','2025-01-31 09:42:10','2025-01-31 09:42:10',4,1),('9e19575f-9e6d-4276-882b-3e6f6e141952','9e19573e-2dee-4130-bd2b-09dc7b8aaed7','Mixer Listrik 4,5 Liter 350 Watt Stand Mixer Kue dan Roti Mixer Adonan Roti dan Tepung Display Image 01','/files/images/product-contents/9e19573e-2dee-4130-bd2b-09dc7b8aaed7/product-content-displays/product-content-display-image_mixer_listrik_45_liter_350_watt_stand_mixer_kue_dan_roti_mixer_adonan_roti_dan_tepung_display_image_01_image_20250131_164612.webp','developer@system','developer@system','2025-01-31 09:46:12','2025-01-31 09:46:12',1,1),('9e195773-3077-4271-9b62-b8d194984210','9e19573e-2dee-4130-bd2b-09dc7b8aaed7','Mixer Listrik 4,5 Liter 350 Watt Stand Mixer Kue dan Roti Mixer Adonan Roti dan Tepung Display Image 02','/files/images/product-contents/9e19573e-2dee-4130-bd2b-09dc7b8aaed7/product-content-displays/product-content-display-image_mixer_listrik_45_liter_350_watt_stand_mixer_kue_dan_roti_mixer_adonan_roti_dan_tepung_display_image_02_image_20250131_164625.webp','developer@system','developer@system','2025-01-31 09:46:25','2025-01-31 09:46:25',2,1),('9e195786-9c37-4731-ae05-06e745440de9','9e19573e-2dee-4130-bd2b-09dc7b8aaed7','Mixer Listrik 4,5 Liter 350 Watt Stand Mixer Kue dan Roti Mixer Adonan Roti dan Tepung Display Image 03','/files/images/product-contents/9e19573e-2dee-4130-bd2b-09dc7b8aaed7/product-content-displays/product-content-display-image_mixer_listrik_45_liter_350_watt_stand_mixer_kue_dan_roti_mixer_adonan_roti_dan_tepung_display_image_03_image_20250131_164638.webp','developer@system','developer@system','2025-01-31 09:46:38','2025-01-31 09:46:38',3,1),('9e19579a-bf8a-410a-915a-b3c455d4b68b','9e19573e-2dee-4130-bd2b-09dc7b8aaed7','Mixer Listrik 4,5 Liter 350 Watt Stand Mixer Kue dan Roti Mixer Adonan Roti dan Tepung Display Image 04','/files/images/product-contents/9e19573e-2dee-4130-bd2b-09dc7b8aaed7/product-content-displays/product-content-display-image_mixer_listrik_45_liter_350_watt_stand_mixer_kue_dan_roti_mixer_adonan_roti_dan_tepung_display_image_04_image_20250131_164651.webp','developer@system','developer@system','2025-01-31 09:46:51','2025-01-31 09:46:51',4,1),('9e195828-5308-4b42-8554-32fa85a5e181','9e195810-aff3-40c2-b77d-bdcbc9b49301','Oven Listrik 33 Liter FIESTA Quick Toast, Grill & Heating Dilengkapi Kipas & Lampu Indikator Display Image 01','/files/images/product-contents/9e195810-aff3-40c2-b77d-bdcbc9b49301/product-content-displays/product-content-display-image_oven_listrik_33_liter_fiesta_quick_toast_grill_heating_dilengkapi_kipas_lampu_indikator_display_image_01_image_20250131_164824.webp','developer@system','developer@system','2025-01-31 09:48:24','2025-01-31 09:48:24',1,1),('9e19583a-19a2-459b-98dd-f61dbebcd15c','9e195810-aff3-40c2-b77d-bdcbc9b49301','Oven Listrik 33 Liter FIESTA Quick Toast, Grill & Heating Dilengkapi Kipas & Lampu Indikator Display Image 02','/files/images/product-contents/9e195810-aff3-40c2-b77d-bdcbc9b49301/product-content-displays/product-content-display-image_oven_listrik_33_liter_fiesta_quick_toast_grill_heating_dilengkapi_kipas_lampu_indikator_display_image_02_image_20250131_164835.webp','developer@system','developer@system','2025-01-31 09:48:35','2025-01-31 09:48:35',2,1),('9e19584c-2baa-4f97-a7ec-1c729ec9e98a','9e195810-aff3-40c2-b77d-bdcbc9b49301','Oven Listrik 33 Liter FIESTA Quick Toast, Grill & Heating Dilengkapi Kipas & Lampu Indikator Display Image 03','/files/images/product-contents/9e195810-aff3-40c2-b77d-bdcbc9b49301/product-content-displays/product-content-display-image_oven_listrik_33_liter_fiesta_quick_toast_grill_heating_dilengkapi_kipas_lampu_indikator_display_image_03_image_20250131_164847.webp','developer@system','developer@system','2025-01-31 09:48:47','2025-01-31 09:48:47',3,1),('9e19585f-879a-42e4-9f5b-19cac83f5fe4','9e195810-aff3-40c2-b77d-bdcbc9b49301','Oven Listrik 33 Liter FIESTA Quick Toast, Grill & Heating Dilengkapi Kipas & Lampu Indikator Display Image 04','/files/images/product-contents/9e195810-aff3-40c2-b77d-bdcbc9b49301/product-content-displays/product-content-display-image_oven_listrik_33_liter_fiesta_quick_toast_grill_heating_dilengkapi_kipas_lampu_indikator_display_image_04_image_20250131_164900.webp','developer@system','developer@system','2025-01-31 09:49:00','2025-01-31 09:49:00',4,1),('9e1958d3-83db-4ad1-84be-25cae45b1c9d','9e1958bc-df66-4422-b4e1-ec2d489c4228','Oven Listrik ADENA 28L Stainless - Low Watt Dilengkapi Kipas & Lampu Indikator Display Image 01','/files/images/product-contents/9e1958bc-df66-4422-b4e1-ec2d489c4228/product-content-displays/product-content-display-image_oven_listrik_adena_28l_stainless_low_watt_dilengkapi_kipas_lampu_indikator_display_image_01_image_20250131_165016.webp','developer@system','developer@system','2025-01-31 09:50:16','2025-01-31 09:50:16',1,1),('9e1958f1-a20d-433f-8d32-1ee3f92a5b63','9e1958bc-df66-4422-b4e1-ec2d489c4228','Oven Listrik ADENA 28L Stainless - Low Watt Dilengkapi Kipas & Lampu Indikator Display Image 02','/files/images/product-contents/9e1958bc-df66-4422-b4e1-ec2d489c4228/product-content-displays/product-content-display-image_oven_listrik_adena_28l_stainless_low_watt_dilengkapi_kipas_lampu_indikator_display_image_02_image_20250131_165035.webp','developer@system','developer@system','2025-01-31 09:50:35','2025-01-31 09:50:35',2,1),('9e195909-8b46-4e36-8b4d-4cc09f44c45a','9e1958bc-df66-4422-b4e1-ec2d489c4228','Oven Listrik ADENA 28L Stainless - Low Watt Dilengkapi Kipas & Lampu Indikator Display Image 03','/files/images/product-contents/9e1958bc-df66-4422-b4e1-ec2d489c4228/product-content-displays/product-content-display-image_oven_listrik_adena_28l_stainless_low_watt_dilengkapi_kipas_lampu_indikator_display_image_03_image_20250131_165051.webp','developer@system','developer@system','2025-01-31 09:50:51','2025-01-31 09:50:51',3,1),('9e19591b-50e1-4b01-884d-ef4ec0de223f','9e1958bc-df66-4422-b4e1-ec2d489c4228','Oven Listrik ADENA 28L Stainless - Low Watt Dilengkapi Kipas & Lampu Indikator Display Image 04','/files/images/product-contents/9e1958bc-df66-4422-b4e1-ec2d489c4228/product-content-displays/product-content-display-image_oven_listrik_adena_28l_stainless_low_watt_dilengkapi_kipas_lampu_indikator_display_image_04_image_20250131_165103.webp','developer@system','developer@system','2025-01-31 09:51:03','2025-01-31 09:51:03',4,1),('9e1959a1-3300-4fdb-b4c1-ac5a08728d64','9e195981-87d3-4751-9a12-a2c7f29249fb','Oven Mini LUNA Multifungsi 12 Liter Daya Listrik Rendah 300 Watt Toasting & Grilling Display Image 01','/files/images/product-contents/9e195981-87d3-4751-9a12-a2c7f29249fb/product-content-displays/product-content-display-image_oven_mini_luna_multifungsi_12_liter_daya_listrik_rendah_300_watt_toasting_grilling_display_image_01_image_20250131_165231.webp','developer@system','developer@system','2025-01-31 09:52:31','2025-01-31 09:52:31',1,1),('9e1959b4-07b0-4e66-a612-be9709249120','9e195981-87d3-4751-9a12-a2c7f29249fb','Oven Mini LUNA Multifungsi 12 Liter Daya Listrik Rendah 300 Watt Toasting & Grilling Display Image 02','/files/images/product-contents/9e195981-87d3-4751-9a12-a2c7f29249fb/product-content-displays/product-content-display-image_oven_mini_luna_multifungsi_12_liter_daya_listrik_rendah_300_watt_toasting_grilling_display_image_02_image_20250131_165243.webp','developer@system','developer@system','2025-01-31 09:52:43','2025-01-31 09:52:43',2,1),('9e1959d5-1ceb-4a3f-9988-e8a8a9d875e4','9e195981-87d3-4751-9a12-a2c7f29249fb','Oven Mini LUNA Multifungsi 12 Liter Daya Listrik Rendah 300 Watt Toasting & Grilling Display Image 03','/files/images/product-contents/9e195981-87d3-4751-9a12-a2c7f29249fb/product-content-displays/product-content-display-image_oven_mini_luna_multifungsi_12_liter_daya_listrik_rendah_300_watt_toasting_grilling_display_image_03_image_20250131_165305.webp','developer@system','developer@system','2025-01-31 09:53:05','2025-01-31 09:53:05',3,1),('9e1959ed-6d6e-4fcf-ae5a-edde7789018a','9e195981-87d3-4751-9a12-a2c7f29249fb','Oven Mini LUNA Multifungsi 12 Liter Daya Listrik Rendah 300 Watt Toasting & Grilling Display Image 04','/files/images/product-contents/9e195981-87d3-4751-9a12-a2c7f29249fb/product-content-displays/product-content-display-image_oven_mini_luna_multifungsi_12_liter_daya_listrik_rendah_300_watt_toasting_grilling_display_image_04_image_20250131_165321.webp','developer@system','developer@system','2025-01-31 09:53:21','2025-01-31 09:53:21',4,1);
/*!40000 ALTER TABLE `product_content_displays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_features`
--

DROP TABLE IF EXISTS `product_content_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_features` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_features_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_features_created_by_index` (`created_by`),
  KEY `product_content_features_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_features_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_features`
--

LOCK TABLES `product_content_features` WRITE;
/*!40000 ALTER TABLE `product_content_features` DISABLE KEYS */;
INSERT INTO `product_content_features` VALUES ('9d93e948-6da0-4db2-b39c-072697098c58','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','ERGONOMIC & LIGHTWEIGHT DESIGN','Design ergonomis dan ringan membuat aktifitas bersih-bersih menjadi lebih mudah.','/files/product-contents/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670/product-content-features/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670_product-content-feature-image_2024-11-26-085315.jpg','developer@system','developer@system','2024-11-26 01:53:15','2024-11-26 01:53:15',1,1),('9d93e972-e5e9-475e-b424-97b4b721b44d','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','15KPA POWERFUL SUCTION','Daya hisap mampu membersihkan partikel debu kecil hingga puing-puing besar dengan sangat efektif.','/files/product-contents/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670/product-content-features/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670_product-content-feature-image_2024-11-26-085343.jpg','developer@system','developer@system','2024-11-26 01:53:43','2024-11-26 01:53:43',2,1),('9d93e997-1c63-4a5b-902c-c40bda4ee3f5','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','POWERFUL CYCLONIC TECHNOLOGY','Teknologi Cyclone mengangkat debu dengan sangat baik pada karpet, lantai dan sejenisnya.','/files/product-contents/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670/product-content-features/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670_product-content-feature-image_2024-11-26-085521.jpg','developer@system','developer@system','2024-11-26 01:54:07','2024-11-26 01:55:21',3,1),('9d93ea38-108b-40e6-89dd-324774678148','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','CARPET CLEANING','Vacuum cleaner dapat berjalan dan mengangkat kotoran pada permukaan karpet.','/files/product-contents/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670/product-content-features/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670_product-content-feature-image_2024-11-26-085552.jpg','developer@system','developer@system','2024-11-26 01:55:52','2024-11-26 01:55:52',4,1),('9d93ea6d-1f7e-43de-a074-31583118d2f5','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','HARD FLOOR CLEANING','Membersihkan kotoran yang sulit dibersihkan dengan mudah.','/files/product-contents/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670/product-content-features/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670_product-content-feature-image_2024-11-26-085627.jpg','developer@system','developer@system','2024-11-26 01:56:27','2024-11-26 01:56:27',5,1),('9d93ea8f-65f4-4a8d-8ad9-d4fa393b26f1','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','270┬░ FLEXIBLE HEAD ROTATION FLOOR BRUSH','Kepala pembersih fleksibel dapat membersihkan tempat-tempat yang sulit dijangkau pada ruang kecil, sudut-sudut, dan dinding.','/files/product-contents/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670/product-content-features/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670_product-content-feature-image_2024-11-26-085650.jpg','developer@system','developer@system','2024-11-26 01:56:50','2024-11-26 01:56:50',6,1),('9d93eabd-21ff-4710-b295-ab74169d8440','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','SMOOTHER PERFORMANCE AND SOUND','Design dirancang untuk memberikan suara yang halus dan tidak bising.','/files/product-contents/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670/product-content-features/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670_product-content-feature-image_2024-11-26-085720.jpg','developer@system','developer@system','2024-11-26 01:57:20','2024-11-26 01:57:20',7,1),('9d93eae0-3987-4f09-9bb4-553068906af9','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','PATENTED 4 LAYERS FILTRATION','Mencegah polusi udara dengan filter debu berlapis.','/files/product-contents/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670/product-content-features/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670_product-content-feature-image_2024-11-26-085743.jpg','developer@system','developer@system','2024-11-26 01:57:43','2024-11-26 01:57:43',8,1),('9d93eb18-5c0f-4998-a657-fd7b075b4972','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','WASHABLE 4-STAGE FILTERS','4 tahap filter membuat penyaringan tahan karat, mudah dibersihkan, dan memperpanjang masa pemakaian filter.','/files/product-contents/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670/product-content-features/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670_product-content-feature-image_2024-11-26-085819.jpg','developer@system','developer@system','2024-11-26 01:58:19','2024-11-26 01:58:19',9,1),('9d93eb46-c2bf-489e-ad92-bbc430c52528','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','INTERCHANGABLE BRUSH HEADS','Kepala pembersih dapat diganti sesuai dengan kebutuhan, diantaranya untuk membersihkan kasur, sofa, bantal hewan, dan lainnya.','/files/product-contents/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670/product-content-features/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670_product-content-feature-image_2024-11-26-085850.jpg','developer@system','developer@system','2024-11-26 01:58:50','2024-11-26 01:58:50',10,1),('9d93eb83-c2eb-4dd4-a9da-a145c337c489','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','2 IN 1 COMBINATION BRUSH','Sikat dapat digunakan untuk membersihkan celah-celah, sudut-sudut, permukaan furnitur, dan sejenisnya.','/files/product-contents/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670/product-content-features/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670_product-content-feature-image_2024-11-26-085930.jpg','developer@system','developer@system','2024-11-26 01:59:30','2024-11-26 01:59:30',11,1),('9d93ebfe-2cac-4400-b965-3124f59c70f5','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','ROUND BRUSH','Sikat dapat berputar 360┬║, cocok untuk permukaan yang sulit dijangkau seperti sudut, langit-langit, bagian atas laci, dll.','/files/product-contents/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670/product-content-features/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670_product-content-feature-image_2024-11-26-090050.jpg','developer@system','developer@system','2024-11-26 02:00:50','2024-11-26 02:00:50',12,1),('9d93ec33-7b52-428b-86f7-2583c17621fb','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','EXTRA LONG 5M POWER CORD','Memiliki panjang kabel ekstra sehingga dapat menjangkau setiap bagian ruangan.','/files/product-contents/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670/product-content-features/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670_product-content-feature-image_2024-11-26-090125.jpg','developer@system','developer@system','2024-11-26 02:01:25','2024-11-26 02:01:25',13,1),('9d93ec9a-4f7a-42f0-b52b-c9e1f8fba775','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','WALL-MOUNT BRACKET','Kabel mudah digulung pada tempat gulungan kabel.','/files/product-contents/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670/product-content-features/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670_product-content-feature-image_2024-11-26-090232.jpg','developer@system','developer@system','2024-11-26 02:02:32','2024-11-26 02:02:32',14,1),('9d93ecc2-9be0-4765-9bd5-66fcb9bebee7','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','SPACE SAVER STORAGE','Desain ringan dapat ditempatkan pada semua jenis dinding.','/files/product-contents/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670/product-content-features/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670_product-content-feature-image_2024-11-26-090259.jpg','developer@system','developer@system','2024-11-26 02:02:59','2024-11-26 02:02:59',15,1);
/*!40000 ALTER TABLE `product_content_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_marketplaces`
--

DROP TABLE IF EXISTS `product_content_marketplaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_marketplaces` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `marketplace_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_marketplaces_marketplace_id_foreign` (`marketplace_id`),
  KEY `product_content_marketplaces_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_marketplaces_created_by_index` (`created_by`),
  KEY `product_content_marketplaces_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_marketplaces_marketplace_id_foreign` FOREIGN KEY (`marketplace_id`) REFERENCES `marketplaces` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_content_marketplaces_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_marketplaces`
--

LOCK TABLES `product_content_marketplaces` WRITE;
/*!40000 ALTER TABLE `product_content_marketplaces` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_content_marketplaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_metas`
--

DROP TABLE IF EXISTS `product_content_metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_metas` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_property_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_content_metas_product_content_id_meta_property_id_unique` (`product_content_id`,`meta_property_id`),
  KEY `product_content_metas_meta_property_id_foreign` (`meta_property_id`),
  KEY `product_content_metas_created_by_index` (`created_by`),
  KEY `product_content_metas_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_metas_meta_property_id_foreign` FOREIGN KEY (`meta_property_id`) REFERENCES `meta_properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_content_metas_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_metas`
--

LOCK TABLES `product_content_metas` WRITE;
/*!40000 ALTER TABLE `product_content_metas` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_content_metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_qnas`
--

DROP TABLE IF EXISTS `product_content_qnas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_qnas` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` int unsigned DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_qnas_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_qnas_created_by_index` (`created_by`),
  KEY `product_content_qnas_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_qnas_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_qnas`
--

LOCK TABLES `product_content_qnas` WRITE;
/*!40000 ALTER TABLE `product_content_qnas` DISABLE KEYS */;
INSERT INTO `product_content_qnas` VALUES ('9da4799f-34ef-4cdb-878e-9d891a49aadb','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','Kenapa daya hisapnya berkurang?','Silakan membersihkan filter pada unit','system','system','2024-12-04 07:30:06','2024-12-04 07:30:06',5,1),('9da4799f-34f9-4700-ae53-adbd8de785a0','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','Bagaimana cara melepas tabung debu?','Tekan tombol pengunci tabung debu yang terletak di\r\nbawah tabung debu dan tarik menjauh dari unit\r\nutama.','system','system','2024-12-04 07:30:06','2024-12-04 07:30:06',6,1),('9da4799f-3504-4ce5-bf34-8cb6d856048c','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','Mengapa vacum tersumbat?','Vacum akan tersumbat jika tabung debu telah melebihi batas \'MAX\'. Periksa tabung debu dan kosongkan jika perlu.\r\nPeriksa 2 filter di unit, bersihkan kotoran / debu dan cuci jika diperlukan.','system','system','2024-12-04 07:30:06','2024-12-04 07:30:06',7,1),('9da4799f-350d-47a2-80aa-14299a34d887','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','Kapan waktu yang tepat untuk membersihkan filter? ','1. Filter set \r\nKosongkan debu ketika membersihkan kotak penampungan debu.\r\nRendam atau cuci dalam air hangat 1x dalam sebulan atau lebih sering\r\njika diperlukan <br> <br>\r\n\r\n2. Busa filter bulat\r\nKosongkan debu ketika membersihkan kotak penampungan debu.\r\nSecara berkala bersihkan debu dan saringan ini dapat direndam dengan\r\nair hangat 1x dalam sebulan.','system','system','2024-12-04 07:30:06','2024-12-04 07:30:06',8,1),('9da4799f-3516-4123-8834-fe519e7a5d35','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','Bagaimana cara yang efektif menyimpan vakum?','Vacum dapat disimpan dengan aman dan\r\nterjamin dengan menggantung mesin penghisap di dinding atau\r\ndengan melepas semua perlengkapan dan menyimpannya bersa-\r\nmaan di dalam lemari.','system','system','2024-12-04 07:30:06','2024-12-04 07:30:06',9,1);
/*!40000 ALTER TABLE `product_content_qnas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_review_images`
--

DROP TABLE IF EXISTS `product_content_review_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_review_images` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_review_images_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_review_images_created_by_index` (`created_by`),
  KEY `product_content_review_images_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_review_images_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_review_images`
--

LOCK TABLES `product_content_review_images` WRITE;
/*!40000 ALTER TABLE `product_content_review_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_content_review_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_reviews`
--

DROP TABLE IF EXISTS `product_content_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_reviews` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` decimal(4,2) DEFAULT '0.00',
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` int unsigned DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_reviews_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_reviews_created_by_index` (`created_by`),
  KEY `product_content_reviews_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_reviews_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_reviews`
--

LOCK TABLES `product_content_reviews` WRITE;
/*!40000 ALTER TABLE `product_content_reviews` DISABLE KEYS */;
INSERT INTO `product_content_reviews` VALUES ('9da47813-06c5-4393-b844-628180afdcc5','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','Gita',5.00,'Ukurannya kecil jd pas untuk bersihin Sela sela lemari dsb. Perakitan mudah di manual book ada bhs Indonesianya juga. Bahan vacuum ringan cocok buat ibu2 , jadi gampang diangkat2 untuk bersihin debu di pojokan langit langit. Semoga awet deh','system','system','2024-12-04 07:25:47','2024-12-04 07:25:47',16,1),('9da47813-06dc-433a-897b-c02bfc7f0546','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','muhammad',5.00,'Barang original, bekerja dengan baik dan cukup maksimal untuk pembersihan sehari2, aksesoris lengkap. namaun kalau bisa ada bonus filter tambahan. mudahan awet','system','system','2024-12-04 07:25:47','2024-12-04 07:25:47',17,1),('9da47813-06f2-4b52-9f7e-5e2dd759080a','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','Rizky',5.00,'pembelian ke 2. selalu puas dengan produk umeda. cuma lubang bagian sistem filter berbeda dengan batch yg pertama kali dibeli dan kualitas bahan plastiknya juga saya rasa ada perbedaan.','system','system','2024-12-04 07:25:47','2024-12-04 07:25:47',18,1),('9da47813-0708-40e0-b17a-219951d17bce','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','Vicki',5.00,'Suara ngg bgtu berisik, barang oke ada dudukan buat dgantungin, daya sedot lumayan,ngg cepet panas,cuma lebih kuat klo pendek / tanpa yg pnjang,jd lebih bgus sedotannya','system','system','2024-12-04 07:25:47','2024-12-04 07:25:47',19,1),('9da47813-0720-4b88-b288-d94ac1eec829','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','Sheif',5.00,'Produk aman & lengkap, cakep & berfungsi normal. semoga awet Thank You','system','system','2024-12-04 07:25:47','2024-12-04 07:25:47',20,1);
/*!40000 ALTER TABLE `product_content_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_specifications`
--

DROP TABLE IF EXISTS `product_content_specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_specifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_specifications_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_specifications_created_by_index` (`created_by`),
  KEY `product_content_specifications_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_specifications_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_specifications`
--

LOCK TABLES `product_content_specifications` WRITE;
/*!40000 ALTER TABLE `product_content_specifications` DISABLE KEYS */;
INSERT INTO `product_content_specifications` VALUES ('9d93e860-004f-490e-b2bc-c9f8cc6f1328','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','Power','450 W','developer@system','developer@system','2024-11-26 01:50:43','2024-11-26 01:50:43',1,1),('9d93e872-3df9-4f25-ab36-948725e234d1','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','Dust Capacity','350 ml','developer@system','developer@system','2024-11-26 01:50:55','2024-11-26 01:50:55',2,1),('9d93e887-7e19-4e8e-9363-6249a901ba13','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','Working Voltage','180-240 V','developer@system','developer@system','2024-11-26 01:51:09','2024-11-26 01:51:09',3,1),('9d93e8a4-6ee7-4acb-b193-2fd198b7c694','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','Suction Power','15 kPa','developer@system','developer@system','2024-11-26 01:51:28','2024-11-26 01:51:28',4,1),('9d93e8b5-ae19-4b44-958b-cb49ef36c30c','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','Noise Level','72 dB','developer@system','developer@system','2024-11-26 01:51:39','2024-11-26 01:51:39',5,1),('9d93e8c6-fed3-4aba-9221-3034fe17d521','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','Power Card Length','5 m','developer@system','developer@system','2024-11-26 01:51:51','2024-11-26 01:51:51',6,1),('9d93e8d7-ef09-4eff-a01a-f257fdd7bfa0','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','Weight','1.9 kg','developer@system','developer@system','2024-11-26 01:52:02','2024-11-26 01:52:02',7,1),('9e03207c-705f-4fee-a7f0-041b566ab4e9','9d93f4d8-4cda-4ea9-914c-5d02bb058601','Tipe','QME16','developer@system',NULL,'2025-01-20 08:44:31','2025-01-20 08:44:31',1,1),('9e032096-c3f2-4e80-8229-9d0aa94738d2','9d93f4d8-4cda-4ea9-914c-5d02bb058601','Tekanan','0.15-0.4 Mpa','developer@system',NULL,'2025-01-20 08:44:48','2025-01-20 08:44:48',2,1),('9e0320a9-e73d-4a79-bbb3-42260cd0011b','9d93f4d8-4cda-4ea9-914c-5d02bb058601','Kapasitas Arus','3.6 L/min','developer@system',NULL,'2025-01-20 08:45:00','2025-01-20 08:45:00',0,1),('9e0320cd-58bf-4092-8db0-208db293bea0','9d93f4d8-4cda-4ea9-914c-5d02bb058601','Baterai','DC 12V/8AH','developer@system',NULL,'2025-01-20 08:45:24','2025-01-20 08:45:24',3,1),('9e0320f5-69f3-4a16-b222-2c349024104b','9d93f4d8-4cda-4ea9-914c-5d02bb058601','Jam Operasional','3-4 Jam','developer@system',NULL,'2025-01-20 08:45:50','2025-01-20 08:45:50',4,1),('9e03210b-41a3-485c-af24-f2d6ff5f1a18','9d93f4d8-4cda-4ea9-914c-5d02bb058601','Kapasitas Tangki','16 L','developer@system',NULL,'2025-01-20 08:46:04','2025-01-20 08:46:04',5,1),('9e03211f-8876-43b9-b74d-1a472b8be8a6','9d93f4d8-4cda-4ea9-914c-5d02bb058601','Berat','6.25 kg','developer@system',NULL,'2025-01-20 08:46:18','2025-01-20 08:46:18',6,1);
/*!40000 ALTER TABLE `product_content_specifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_videos`
--

DROP TABLE IF EXISTS `product_content_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_videos` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_videos_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_videos_created_by_index` (`created_by`),
  KEY `product_content_videos_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_videos_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_videos`
--

LOCK TABLES `product_content_videos` WRITE;
/*!40000 ALTER TABLE `product_content_videos` DISABLE KEYS */;
INSERT INTO `product_content_videos` VALUES ('9d93e83e-0d3a-4853-b359-c7323ca07cb6','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','U-Stik Lite Video 01','/files/product-contents/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670/product-content-videos/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670_product-content-video-image_2024-11-26-085021.jpg','/files/product-contents/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670/product-content-videos/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670_product-content-video_2024-11-26-085021.webm','developer@system','developer@system','2024-11-26 01:50:21','2024-11-26 01:50:21',1,1),('9d93ee77-dedb-405e-be3b-6d4ffd9f5df1','9d93ed53-8011-4077-8bc7-c0e02f33ba95','U-Stik Cordless Video 01','/files/product-contents/9d93ed53-8011-4077-8bc7-c0e02f33ba95/product-content-videos/9d93ed53-8011-4077-8bc7-c0e02f33ba95_product-content-video-image_2024-11-26-090745.jpg',NULL,'developer@system','developer@system','2024-11-26 02:07:45','2024-11-26 02:07:45',1,1),('9d93f603-942a-4b5a-b99c-eda014b77b0f','9d93f4d8-4cda-4ea9-914c-5d02bb058601','Tomo Zoom Laser Video 01','/files/product-contents/9d93f4d8-4cda-4ea9-914c-5d02bb058601/product-content-videos/9d93f4d8-4cda-4ea9-914c-5d02bb058601_product-content-video-image_2024-11-26-092851.webp',NULL,'developer@system','developer@system','2024-11-26 02:28:51','2024-11-26 02:28:51',1,1),('9ddd401b-b114-4e28-85ab-74e086c54698','9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','U-Stik Lite Video 02','/files/product-contents/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670/product-content-videos/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670_product-content-video-image_20250101-201946-479127.webp','/files/product-contents/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670/product-content-videos/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670_product-content-video_20250101-201946-480774.webm','developer@system','developer@system','2025-01-01 12:51:28','2025-01-01 13:19:46',2,1);
/*!40000 ALTER TABLE `product_content_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_contents`
--

DROP TABLE IF EXISTS `product_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_contents` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_contents_url_unique` (`url`),
  KEY `product_contents_product_id_foreign` (`product_id`),
  KEY `product_contents_created_by_index` (`created_by`),
  KEY `product_contents_updated_by_index` (`updated_by`),
  CONSTRAINT `product_contents_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_contents`
--

LOCK TABLES `product_contents` WRITE;
/*!40000 ALTER TABLE `product_contents` DISABLE KEYS */;
INSERT INTO `product_contents` VALUES ('9d93e6d0-5d00-43e5-bd20-44f8fd8f9670','9d92213e-6e83-4876-8bed-6b7291e960e9','PROQUIP AIR COMPRESSOR QDV60','proquip-air-compressor-qdv60','/p/proquip-air-compressor-qdv60','','/files/images/product-contents/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670/9d93e6d0-5d00-43e5-bd20-44f8fd8f9670_product-content-image_20250121-094859-649868.webp','developer@system','developer@system','2024-11-26 01:46:22','2025-01-21 02:48:59',1),('9d93ed53-8011-4077-8bc7-c0e02f33ba95','9d9220fb-6eed-40f6-a0aa-ab387bc8379c','PROQUIP BACKPACK SPRAYER MAGNUM18-3WF-18 ','proquip-backpack-sprayer-magnum18-3wf-18','/p/proquip-backpack-sprayer-magnum18-3wf-18','','/files/images/product-contents/9d93ed53-8011-4077-8bc7-c0e02f33ba95/9d93ed53-8011-4077-8bc7-c0e02f33ba95_product-content-image_20250121-094047-228099.webp','developer@system','developer@system','2024-11-26 02:04:34','2025-01-21 02:40:47',1),('9d93f4d8-4cda-4ea9-914c-5d02bb058601','9d921fc2-1ebf-46ba-a613-29cd580781e7','PROQUIP BACKPACK SPRAYER QME16','proquip-backpack-sprayer-qme16','/p/proquip-backpack-sprayer-qme16','PROQUIP BACKPACK SPRAYER QME16','/files/images/product-contents/9d93f4d8-4cda-4ea9-914c-5d02bb058601/9d93f4d8-4cda-4ea9-914c-5d02bb058601_product-content-image_20250121-092752-612600.png','developer@system','developer@system','2024-11-26 02:25:35','2025-01-21 02:27:52',1),('9e052f0b-4125-44f8-ba8f-84cfc0410bfe','ea93845d-3ecd-4c38-92a0-4599815d9382','Carlton Mesin Gilingan Mie Elektrik Noodle Maker MJH180','carlton-mesin-gilingan-mie-elektrik-noodle-maker-mjh180','/p/carlton-mesin-gilingan-mie-elektrik-noodle-maker-mjh180',NULL,'/files/images/product-contents/product-content-image_carlton_mesin_gilingan_mie_elektrik_noodle_maker_mjh180_image_20250121_161651_591769.webp','developer@system','developer@system','2025-01-21 09:16:51','2025-01-21 09:16:51',1),('9e05333b-08d5-49a4-a1b7-31bf4140c227','846595f3-2e1b-46ed-9783-80a28f960426','Carlton Mesin Sosis Telur Mesin Sostel Listrik 2 Lubang Egg Roll Hotdog Sausage STE-2','carlton-mesin-sosis-telur-mesin-sostel-listrik-2-lubang-egg-roll-hotdog-sausage-ste-2','/p/carlton-mesin-sosis-telur-mesin-sostel-listrik-2-lubang-egg-roll-hotdog-sausage-ste-2',NULL,'/files/images/product-contents/product-content-image_carlton_mesin_sosis_telur_mesin_sostel_listrik_2_lubang_egg_roll_hotdog_sausage_ste_2_image_20250121_162835_298472.webp','developer@system','developer@system','2025-01-21 09:28:35','2025-01-21 09:28:35',1),('9e05343f-eaac-4b84-a54f-0504919ac201','d7dfebe7-b3ca-48c7-8728-ea78062bf461','CARLTON Mesin Sostel Listrik 10 Lubang - Pembuat Sosis Telur Otomatis, Hemat Energi, Cepat & Praktis STE-10','carlton-mesin-sostel-listrik-10-lubang-pembuat-sosis-telur-otomatis-hemat-energi-cepat-praktis-ste-10','/p/carlton-mesin-sostel-listrik-10-lubang-pembuat-sosis-telur-otomatis-hemat-energi-cepat-praktis-ste-10',NULL,'/files/images/product-contents/product-content-image_carlton_mesin_sostel_listrik_10_lubang_pembuat_sosis_telur_otomatis_hemat_energi_cepat_praktis_ste_10_image_20250121_163126_274163.webp','developer@system','developer@system','2025-01-21 09:31:26','2025-01-21 09:31:26',1),('9e053475-bb5c-4616-9402-b34dd8a4e39f','f1329153-4e4d-44c4-b7c5-c958902bb5ca','Carlton Mesin Sosis Telur Mesin Sostel Listrik 4 Lubang Egg Roll Hotdog Sausage STE-4','carlton-mesin-sosis-telur-mesin-sostel-listrik-4-lubang-egg-roll-hotdog-sausage-ste-4','/p/carlton-mesin-sosis-telur-mesin-sostel-listrik-4-lubang-egg-roll-hotdog-sausage-ste-4',NULL,'/files/images/product-contents/product-content-image_carlton_mesin_sosis_telur_mesin_sostel_listrik_4_lubang_egg_roll_hotdog_sausage_ste_4_image_20250121_163201_542568.webp','developer@system','developer@system','2025-01-21 09:32:01','2025-01-21 09:32:01',1),('9e194808-7d3b-477a-b41a-19017ce549b9','9e19479c-f173-4af9-89e5-051f761c9683','Carlton Sarung Tangan Oven Silikon Anti Panas Oven Gloves','carlton-sarung-tangan-oven-silikon-anti-panas-oven-gloves','/p/carlton-sarung-tangan-oven-silikon-anti-panas-oven-gloves','Carlton Sarung Tangan Oven Silikon Anti Panas Oven Gloves','/files/images/product-contents/product-content-image_carlton_sarung_tangan_oven_silikon_anti_panas_oven_gloves_image_20250131_160318_853091.webp','developer@system','developer@system','2025-01-31 09:03:18','2025-01-31 09:03:18',1),('9e1948f8-868e-47b0-984e-ec99d9ec09a8','9e1948c2-991c-4e67-80db-8b3152017815','Carlton Mesin Cup Sealer Mesin Press Gelas Plastik Sealing Machine CT-D1 (GELAS TINGGI)','carlton-mesin-cup-sealer-mesin-press-gelas-plastik-sealing-machine-ct-d1-gelas-tinggi','/p/carlton-mesin-cup-sealer-mesin-press-gelas-plastik-sealing-machine-ct-d1-gelas-tinggi','Carlton Mesin Cup Sealer Mesin Press Gelas Plastik Sealing Machine CT-D1 (GELAS TINGGI)','/files/images/product-contents/product-content-image_carlton_mesin_cup_sealer_mesin_press_gelas_plastik_sealing_machine_ct_d1_gelas_tinggi_image_20250131_160556_164775.webp','developer@system','developer@system','2025-01-31 09:05:56','2025-01-31 09:05:56',1),('9e1949c4-980e-4945-bb9d-79f84b77af00','9e19497f-b9b2-4c8a-a2bd-7b8d539fd220','Carlton Mesin Cup Sealer Mesin Press Gelas Plastik Sealing Machine CT-D8','carlton-mesin-cup-sealer-mesin-press-gelas-plastik-sealing-machine-ct-d8','/p/carlton-mesin-cup-sealer-mesin-press-gelas-plastik-sealing-machine-ct-d8','Carlton Mesin Cup Sealer Mesin Press Gelas Plastik Sealing Machine CT-D8','/files/images/product-contents/product-content-image_carlton_mesin_cup_sealer_mesin_press_gelas_plastik_sealing_machine_ct_d8_image_20250131_160809_901939.webp','developer@system','developer@system','2025-01-31 09:08:09','2025-01-31 09:08:09',1),('9e194aa1-d574-4cc2-9393-3fc4f7c047dd','9e194a52-f197-4d5a-8056-84159233ab3b','Mesin Cup Sealer With Counter Penghitung Mesin Press Gelas Plastik CT-D8C','mesin-cup-sealer-with-counter-penghitung-mesin-press-gelas-plastik-ct-d8c','/p/mesin-cup-sealer-with-counter-penghitung-mesin-press-gelas-plastik-ct-d8c','Carlton Mesin Cup Sealer With Counter  Penghitung Mesin Press Gelas Plastik Sealing Machine Numeric CT-D8C','/files/images/product-contents/product-content-image_carlton_mesin_cup_sealer_with_counter_penghitung_mesin_press_gelas_plastik_sealing_machine_numeric_ct_d8c_image_20250131_161034_892127.webp','developer@system','developer@system','2025-01-31 09:10:34','2025-01-31 09:38:29',1),('9e195597-afdf-4bd7-a53e-92c6105123b5','9e19555e-28cd-4a0d-a17f-518f59c9559a','Gracia Oven Listrik 22L - Low Watt Terdapat Lampu Indikator, Grill & Baking','gracia-oven-listrik-22l-low-watt-terdapat-lampu-indikator-grill-baking','/p/gracia-oven-listrik-22l-low-watt-terdapat-lampu-indikator-grill-baking','Gracia Oven Listrik 22L - Low Watt Terdapat Lampu Indikator, Grill & Baking','/files/images/product-contents/product-content-image_gracia_oven_listrik_22l_low_watt_terdapat_lampu_indikator_grill_baking_image_20250131_164113_731127.webp','developer@system','developer@system','2025-01-31 09:41:13','2025-01-31 09:41:13',1),('9e19573e-2dee-4130-bd2b-09dc7b8aaed7','9e19563d-91ef-49fc-b10a-584c40f4114e','Mixer Listrik 4,5 Liter 350 Watt Stand Mixer Kue dan Roti Mixer Adonan Roti dan Tepung','mixer-listrik-45-liter-350-watt-stand-mixer-kue-dan-roti-mixer-adonan-roti-dan-tepung','/p/mixer-listrik-45-liter-350-watt-stand-mixer-kue-dan-roti-mixer-adonan-roti-dan-tepung','Mixer Listrik 4,5 Liter 350 Watt Stand Mixer Kue dan Roti Mixer Adonan Roti dan Tepung','/files/images/product-contents/product-content-image_mixer_listrik_45_liter_350_watt_stand_mixer_kue_dan_roti_mixer_adonan_roti_dan_tepung_image_20250131_164550_619617.webp','developer@system','developer@system','2025-01-31 09:45:50','2025-01-31 09:45:50',1),('9e195810-aff3-40c2-b77d-bdcbc9b49301','9e1957e6-fc32-420f-8ad8-9a40625ea667','Oven Listrik 33 Liter FIESTA Quick Toast, Grill & Heating Dilengkapi Kipas & Lampu Indikator','oven-listrik-33-liter-fiesta-quick-toast-grill-heating-dilengkapi-kipas-lampu-indikator','/p/oven-listrik-33-liter-fiesta-quick-toast-grill-heating-dilengkapi-kipas-lampu-indikator','Oven Listrik 33 Liter FIESTA Quick Toast, Grill & Heating Dilengkapi Kipas & Lampu Indikator','/files/images/product-contents/product-content-image_oven_listrik_33_liter_fiesta_quick_toast_grill_heating_dilengkapi_kipas_lampu_indikator_image_20250131_164808_578843.webp','developer@system','developer@system','2025-01-31 09:48:08','2025-01-31 09:48:08',1),('9e1958bc-df66-4422-b4e1-ec2d489c4228','9e195896-b7e6-49e5-8146-62bc71922e0d','Oven Listrik ADENA 28L Stainless - Low Watt Dilengkapi Kipas & Lampu Indikator','oven-listrik-adena-28l-stainless-low-watt-dilengkapi-kipas-lampu-indikator','/p/oven-listrik-adena-28l-stainless-low-watt-dilengkapi-kipas-lampu-indikator','Oven Listrik ADENA 28L Stainless - Low Watt Dilengkapi Kipas & Lampu Indikator','/files/images/product-contents/product-content-image_oven_listrik_adena_28l_stainless_low_watt_dilengkapi_kipas_lampu_indikator_image_20250131_165001_421263.webp','developer@system','developer@system','2025-01-31 09:50:01','2025-01-31 09:50:01',1),('9e195981-87d3-4751-9a12-a2c7f29249fb','9e19595a-afb8-4fef-82d4-de6d60b3e222','Oven Mini LUNA Multifungsi 12 Liter Daya Listrik Rendah 300 Watt Toasting & Grilling','oven-mini-luna-multifungsi-12-liter-daya-listrik-rendah-300-watt-toasting-grilling','/p/oven-mini-luna-multifungsi-12-liter-daya-listrik-rendah-300-watt-toasting-grilling','Oven Mini LUNA Multifungsi 12 Liter Daya Listrik Rendah 300 Watt Toasting & Grilling','/files/images/product-contents/product-content-image_oven_mini_luna_multifungsi_12_liter_daya_listrik_rendah_300_watt_toasting_grilling_image_20250131_165210_305924.webp','developer@system','developer@system','2025-01-31 09:52:10','2025-01-31 09:52:10',1);
/*!40000 ALTER TABLE `product_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category_first_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_brand_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `discount_persentage` decimal(5,2) NOT NULL DEFAULT '0.00',
  `discount_value` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nett_price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `weight` decimal(10,2) DEFAULT '0.00',
  `rating` decimal(4,2) DEFAULT '0.00',
  `sold_qty` decimal(10,2) DEFAULT '0.00',
  `availability` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sync_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` smallint unsigned DEFAULT '0',
  `is_new` tinyint(1) DEFAULT '1',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `products_product_category_first_id_foreign` (`product_category_first_id`),
  KEY `products_availability_index` (`availability`),
  KEY `products_created_by_index` (`created_by`),
  KEY `products_updated_by_index` (`updated_by`),
  CONSTRAINT `products_product_category_first_id_foreign` FOREIGN KEY (`product_category_first_id`) REFERENCES `product_category_firsts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('846595f3-2e1b-46ed-9783-80a28f960426','9e02b2a0-a8a9-4c4a-a4ee-b07362ec9738','9d8c8235-70a3-4269-b59e-62a371e9456',NULL,'Mesin Sosis Telur Mesin Sostel GAS 10 Lubang Egg Roll Hotdog Sausage STG-10',100000.00,0.00,0.00,0.00,0.00,0.00,0.00,'in-stock','',NULL,'admin','admin',NULL,NULL,0,1,1),('8f2b7134-4532-4a79-875e-7eadbe9623e5','9e02b2a0-a8a9-4c4a-a4ee-b07362ec9738','9d8c8235-70a3-4269-b59e-62a371e9456',NULL,'Mesin Sosis Telur Mesin Sostel Listrik 2 Lubang Egg Roll Hotdog Sausage STE-2',100000.00,0.00,0.00,0.00,0.00,0.00,0.00,'in-stock','',NULL,'admin','admin',NULL,NULL,0,1,1),('9d921dad-a34e-408a-9851-1b97123ce299','9e02b4ed-652b-4bb7-acab-f4a8f9366cc9','9d8c8235-70a3-4269-b59e-62a371e94732','31011004193','BACKPACK SPRAYER RME16 ',3990000.00,60.00,0.00,1596000.00,8000.00,5.00,118.00,'in-stock','/files/images/products/product_image-omuni_2024-11-25-112807.webp','27442','developer@system','developer@system','2024-11-25 04:28:07','2024-11-26 08:08:50',1,1,1),('9d921f66-fcb5-406d-a6ba-f70e6657a99c','9e02b4ed-652b-4bb7-acab-f4a8f9366cc9','9d8c8235-70a3-4269-b59e-62a371e94732','34011103667','BACKPACK SPRAYER QME18T ',3890000.00,10.00,0.00,3890000.00,7000.00,4.90,1118.00,'in-stock','/files/images/products/product_image-tomo_r2_2024-11-25-113256.jpg','24148','developer@system','developer@system','2024-11-25 04:32:56','2024-11-26 08:09:33',4,0,1),('9d921fc2-1ebf-46ba-a613-29cd580781e7','9e02b4ed-652b-4bb7-acab-f4a8f9366cc9','9d8c8235-70a3-4269-b59e-62a371e94732','34011104316','BACKPACK SPRAYER QME16 ',2490000.00,5.00,0.00,2365500.00,4000.00,4.95,61.00,'in-stock','/files/images/products/product_image_backpack_sprayer_qme16_image_20250122_160152_200057.png','27104','developer@system','developer@system','2024-11-25 04:33:56','2025-01-22 09:01:52',2,1,1),('9d921ffa-27e2-4d82-9337-7dff69167ff9','9e02b4ed-652b-4bb7-acab-f4a8f9366cc9','9d8c8235-70a3-4269-b59e-62a371e94732','34011104111','BACKPACK SPRAYER QBS435 ',1790000.00,30.00,0.00,537000.00,4000.00,4.90,1553.00,'in-stock','/files/images/products/product_image-tomo_zoom_2024-11-25-113432.webp','25770','developer@system','developer@system','2024-11-25 04:34:32','2024-11-26 08:10:29',3,0,1),('9d922040-8cd0-4d93-b956-d55fa02be427','9e02b4ed-652b-4bb7-acab-f4a8f9366cc9','9d8c8235-70a3-4269-b59e-62a371e94732','33011100848','BACKPACK SPRAYER QBS200 ',690000.00,0.00,0.00,690000.00,6000.00,4.85,390.00,'in-stock','/files/images/products/product_image-dx208e_2024-11-25-113518.jpg','23321','developer@system','developer@system','2024-11-25 04:35:18','2024-11-26 08:06:23',5,0,1),('9d92207d-6edf-403b-900e-380251e8ea31','9e02b4ed-652b-4bb7-acab-f4a8f9366cc9','9d8c8235-70a3-4269-b59e-62a371e94732',NULL,'BACKPACK SPRAYER QBS16E ',189000.00,0.00,0.00,189000.00,2000.00,4.90,3697.00,'in-stock','/files/images/products/product_image-minito_2024-11-25-113558.jpg',NULL,'developer@system','developer@system','2024-11-25 04:35:58','2024-11-26 08:08:03',6,0,1),('9d9220bd-a343-4dcc-8355-8606820bef7a','9e02b4ed-652b-4bb7-acab-f4a8f9366cc9','9d8c8235-70a3-4269-b59e-62a371e94732','34011004104','BACKPACK SPRAYER QBS150 ',3790000.00,0.00,0.00,3790000.00,9000.00,4.85,412.00,'in-stock','/files/images/products/product_image-u_stik_duo_2024-11-25-113640.webp','26006','developer@system','developer@system','2024-11-25 04:36:40','2024-11-26 08:11:40',1,1,1),('9d9220fb-6eed-40f6-a0aa-ab387bc8379c','9e02b4ed-652b-4bb7-acab-f4a8f9366cc9','9d8c8235-70a3-4269-b59e-62a371e94732','34011103289','BACKPACK SPRAYER MAGNUM18-3WF-18 ',2590000.00,0.00,0.00,2590000.00,8000.00,4.95,2593.00,'in-stock','/files/images/products/product_image-u_stik_cordless_2024-11-25-113721.jpg','23523','developer@system','developer@system','2024-11-25 04:37:21','2024-11-26 08:11:16',2,0,1),('9d92213e-6e83-4876-8bed-6b7291e960e9','9e02bdc3-61b6-49db-b6ef-81e7da710039','9d8c8235-70a3-4269-b59e-62a371e94732','34011103288','AIR COMPRESSOR QDV60 ',890000.00,20.00,0.00,712000.00,7000.00,4.90,8280.00,'in-stock','/files/images/products/product_image-u_stik_lite_2024-11-25-113805.jpg','23644','developer@system','developer@system','2024-11-25 04:38:05','2024-11-26 08:12:15',3,0,1),('9d9221c3-6cbd-4e89-8a87-7163601846bf','9e02bdc3-61b6-49db-b6ef-81e7da710039','9d8c8235-70a3-4269-b59e-62a371e94732','34011103029','AIR COMPRESSOR QDV40 ',790000.00,0.00,0.00,790000.00,4000.00,4.95,8961.00,'in-stock','/files/images/products/product_image-waku_white_2024-11-25-113932.jpg','23354','developer@system','developer@system','2024-11-25 04:39:32','2024-11-26 08:12:58',4,0,1),('9e0515b2-21e1-4180-8dcb-e851ff2858f3','9e02b4ed-652b-4bb7-acab-f4a8f9366cc9','9d8c8235-70a3-4269-b59e-62a371e94732',NULL,'backpack tess',200.00,0.00,0.00,200.00,0.00,0.00,0.00,'in-stock',NULL,NULL,'developer@system','developer@system','2025-01-21 08:06:00','2025-01-21 08:06:00',0,1,1),('9e05200c-c4fb-44a0-a620-a92d97b98f34','9e02b50d-d70d-45d2-bde0-723d203d009c','9d8c8235-70a3-4269-b59e-62a371e94732',NULL,'chainsaw tes',120.00,0.00,0.00,120.00,0.00,0.00,0.00,'in-stock',NULL,NULL,'developer@system','developer@system','2025-01-21 08:34:57','2025-01-21 08:34:57',0,1,1),('9e19479c-f173-4af9-89e5-051f761c9683','9d8c8235-70a3-4269-b59e-62a371e94333','9d8c8235-70a3-4269-b59e-62a371e9456',NULL,'Sarung Tangan Oven Silikon Anti Panas Oven Gloves',0.00,0.00,0.00,0.00,0.00,0.00,0.00,'in-stock','/files/images/products/product_image_sarung_tangan_oven_silikon_anti_panas_oven_gloves_image_20250131_160208_350601.webp',NULL,'developer@system','developer@system','2025-01-31 09:02:08','2025-01-31 09:02:08',0,1,1),('9e1948c2-991c-4e67-80db-8b3152017815','9e02b2c5-b792-4728-b82c-469f03eefc94','9d8c8235-70a3-4269-b59e-62a371e9456',NULL,'Mesin Cup Sealer Mesin Press Gelas Plastik Sealing Machine CT-D1 (GELAS TINGGI)',0.00,0.00,0.00,0.00,0.00,0.00,0.00,'in-stock','/files/images/products/product_image_mesin_cup_sealer_mesin_press_gelas_plastik_sealing_machine_ct_d1_gelas_tinggi_image_20250131_160520_817428.webp',NULL,'developer@system','developer@system','2025-01-31 09:05:20','2025-01-31 09:05:20',0,1,1),('9e19497f-b9b2-4c8a-a2bd-7b8d539fd220','9e02b2c5-b792-4728-b82c-469f03eefc94','9d8c8235-70a3-4269-b59e-62a371e9456',NULL,'Carlton Mesin Cup Sealer Mesin Press Gelas Plastik Sealing Machine CT-D8',0.00,0.00,0.00,0.00,0.00,0.00,0.00,'in-stock','/files/images/products/product_image_carlton_mesin_cup_sealer_mesin_press_gelas_plastik_sealing_machine_ct_d8_image_20250131_160724_749535.webp',NULL,'developer@system','developer@system','2025-01-31 09:07:24','2025-01-31 09:07:24',0,1,1),('9e194a52-f197-4d5a-8056-84159233ab3b','9e02b2c5-b792-4728-b82c-469f03eefc94','9d8c8235-70a3-4269-b59e-62a371e9456',NULL,'Mesin Cup Sealer With Counter Penghitung Mesin Press Gelas Plastik CT-D8C',0.00,0.00,0.00,0.00,0.00,0.00,0.00,'in-stock','/files/images/products/product_image_mesin_cup_sealer_with_counter_penghitung_mesin_press_gelas_plastik_sealing_machine_numeric_ct_d8c_image_20250131_160943_189739.webp',NULL,'developer@system','developer@system','2025-01-31 09:09:43','2025-01-31 09:38:07',0,1,1),('9e19555e-28cd-4a0d-a17f-518f59c9559a','9e02b38b-85e9-45f1-a5c3-6c6c07bbc12a','9d8c8235-70a3-4269-b59e-62a371e9456',NULL,'Gracia Oven Listrik 22L - Low Watt Terdapat Lampu Indikator, Grill & Baking',0.00,0.00,0.00,0.00,0.00,0.00,0.00,'in-stock','/files/images/products/product_image_gracia_oven_listrik_22l_low_watt_terdapat_lampu_indikator_grill_baking_image_20250131_164036_034949.webp',NULL,'developer@system','developer@system','2025-01-31 09:40:36','2025-01-31 09:40:36',0,1,1),('9e19563d-91ef-49fc-b10a-584c40f4114e','9e02b38b-85e9-45f1-a5c3-6c6c07bbc12a','9d8c8235-70a3-4269-b59e-62a371e9456',NULL,'Mixer Listrik 4,5 Liter 350 Watt Stand Mixer Kue dan Roti Mixer Adonan Roti dan Tepung',0.00,0.00,0.00,0.00,0.00,0.00,0.00,'in-stock','/files/images/products/product_image_mixer_listrik_45_liter_350_watt_stand_mixer_kue_dan_roti_mixer_adonan_roti_dan_tepung_image_20250131_164302_443665.webp',NULL,'developer@system','developer@system','2025-01-31 09:43:02','2025-01-31 09:43:02',0,1,1),('9e1957e6-fc32-420f-8ad8-9a40625ea667','9e02b38b-85e9-45f1-a5c3-6c6c07bbc12a','9d8c8235-70a3-4269-b59e-62a371e9456',NULL,'Oven Listrik 33 Liter FIESTA Quick Toast, Grill & Heating Dilengkapi Kipas & Lampu Indikator',0.00,0.00,0.00,0.00,0.00,0.00,0.00,'in-stock','/files/images/products/product_image_oven_listrik_33_liter_fiesta_quick_toast_grill_heating_dilengkapi_kipas_lampu_indikator_image_20250131_164741_248512.webp',NULL,'developer@system','developer@system','2025-01-31 09:47:41','2025-01-31 09:47:41',0,1,1),('9e195896-b7e6-49e5-8146-62bc71922e0d','9e02b38b-85e9-45f1-a5c3-6c6c07bbc12a','9d8c8235-70a3-4269-b59e-62a371e9456',NULL,'Oven Listrik ADENA 28L Stainless - Low Watt Dilengkapi Kipas & Lampu Indikator',0.00,0.00,0.00,0.00,0.00,0.00,0.00,'in-stock','/files/images/products/product_image_oven_listrik_adena_28l_stainless_low_watt_dilengkapi_kipas_lampu_indikator_image_20250131_164936_417815.webp',NULL,'developer@system','developer@system','2025-01-31 09:49:36','2025-01-31 09:49:36',0,1,1),('9e19595a-afb8-4fef-82d4-de6d60b3e222','9e02b38b-85e9-45f1-a5c3-6c6c07bbc12a','9d8c8235-70a3-4269-b59e-62a371e9456',NULL,'Oven Mini LUNA Multifungsi 12 Liter Daya Listrik Rendah 300 Watt Toasting & Grilling',0.00,0.00,0.00,0.00,0.00,0.00,0.00,'in-stock','/files/images/products/product_image_oven_mini_luna_multifungsi_12_liter_daya_listrik_rendah_300_watt_toasting_grilling_image_20250131_165144_848082.webp',NULL,'developer@system','developer@system','2025-01-31 09:51:44','2025-01-31 09:51:44',0,1,1),('be0d6b30-56d2-43a1-8621-c314d49cdb30','9d8c8235-70a3-4269-b59e-62a371e94444','9d8c8235-70a3-4269-b59e-62a371e9456',NULL,'Alat Penggiling Mie Manual Noodle Maker With Pulley MJH150',100000.00,0.00,0.00,0.00,0.00,0.00,0.00,'in-stock','',NULL,'admin','admin',NULL,NULL,0,1,1),('d7dfebe7-b3ca-48c7-8728-ea78062bf461','9e02b2a0-a8a9-4c4a-a4ee-b07362ec9738','9d8c8235-70a3-4269-b59e-62a371e9456',NULL,'Mesin Sostel Listrik 10 Lubang - Pembuat Sosis Telur Otomatis, Hemat Energi, Cepat & Praktis STE-10',100000.00,0.00,0.00,0.00,0.00,0.00,0.00,'in-stock','',NULL,'admin','admin',NULL,NULL,0,1,1),('ea93845d-3ecd-4c38-92a0-4599815d9382','9d8c8235-70a3-4269-b59e-62a371e94444','9d8c8235-70a3-4269-b59e-62a371e9456',NULL,'Mesin Gilingan Mie Elektrik Noodle Maker MJH180',100000.00,0.00,0.00,0.00,0.00,0.00,0.00,'in-stock','',NULL,'admin','admin',NULL,NULL,0,1,1),('f1329153-4e4d-44c4-b7c5-c958902bb5ca','9e02b2a0-a8a9-4c4a-a4ee-b07362ec9738','9d8c8235-70a3-4269-b59e-62a371e9456',NULL,'Mesin Sosis Telur Mesin Sostel Listrik 4 Lubang Egg Roll Hotdog Sausage STE-4',100000.00,0.00,0.00,0.00,0.00,0.00,0.00,'in-stock','',NULL,'admin','admin',NULL,NULL,0,1,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_cart_detail`
--

DROP TABLE IF EXISTS `sales_cart_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_cart_detail` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_cart_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `discount_persentage` decimal(5,2) NOT NULL DEFAULT '0.00',
  `discount_value` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nett_price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `qty` decimal(8,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `weight` decimal(10,2) DEFAULT '0.00',
  `subtotal_weight` decimal(10,2) DEFAULT '0.00',
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_cart_detail_sales_cart_id_foreign` (`sales_cart_id`),
  KEY `sales_cart_detail_product_id_foreign` (`product_id`),
  KEY `sales_cart_detail_created_by_index` (`created_by`),
  KEY `sales_cart_detail_updated_by_index` (`updated_by`),
  CONSTRAINT `sales_cart_detail_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sales_cart_detail_sales_cart_id_foreign` FOREIGN KEY (`sales_cart_id`) REFERENCES `sales_carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_cart_detail`
--

LOCK TABLES `sales_cart_detail` WRITE;
/*!40000 ALTER TABLE `sales_cart_detail` DISABLE KEYS */;
INSERT INTO `sales_cart_detail` VALUES ('9e1f3399-ccfe-4e6d-ad2c-de6cf7adc080','9e1f3398-ce78-4606-9fcf-32d4d492a0d3','9d921fc2-1ebf-46ba-a613-29cd580781e7',2490000.00,0.00,0.00,2490000.00,1.00,2490000.00,4000.00,4000.00,NULL,NULL,'2025-02-03 07:41:08','2025-02-03 07:41:08',1),('9e1f33ac-0923-4131-b5c9-72bcbb793232','9e1f3398-ce78-4606-9fcf-32d4d492a0d3','9d92213e-6e83-4876-8bed-6b7291e960e9',890000.00,0.00,0.00,890000.00,1.00,890000.00,7000.00,7000.00,NULL,NULL,'2025-02-03 07:41:20','2025-02-03 07:41:20',1);
/*!40000 ALTER TABLE `sales_cart_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_cart_shippings`
--

DROP TABLE IF EXISTS `sales_cart_shippings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_cart_shippings` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_cart_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subdistrict_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subdistrict_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_service` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_etd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_weight` decimal(5,2) NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_cart_shippings_sales_cart_id_foreign` (`sales_cart_id`),
  KEY `sales_cart_shippings_created_by_index` (`created_by`),
  KEY `sales_cart_shippings_updated_by_index` (`updated_by`),
  CONSTRAINT `sales_cart_shippings_sales_cart_id_foreign` FOREIGN KEY (`sales_cart_id`) REFERENCES `sales_carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_cart_shippings`
--

LOCK TABLES `sales_cart_shippings` WRITE;
/*!40000 ALTER TABLE `sales_cart_shippings` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_cart_shippings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_carts`
--

DROP TABLE IF EXISTS `sales_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_carts` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_carts_session_id_foreign` (`session_id`),
  KEY `sales_carts_date_index` (`date`),
  KEY `sales_carts_created_by_index` (`created_by`),
  KEY `sales_carts_updated_by_index` (`updated_by`),
  CONSTRAINT `sales_carts_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_carts`
--

LOCK TABLES `sales_carts` WRITE;
/*!40000 ALTER TABLE `sales_carts` DISABLE KEYS */;
INSERT INTO `sales_carts` VALUES ('9e1f3398-ce78-4606-9fcf-32d4d492a0d3','it01NgYXfMo4fx8R5NGjbLoyOF3gqVVZn2Nzkrmz','2025-02-03 07:41:06',NULL,NULL,'2025-02-03 07:41:08','2025-02-03 07:41:08',1);
/*!40000 ALTER TABLE `sales_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_invoices`
--

DROP TABLE IF EXISTS `sales_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_invoices` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_order_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_invoices_sales_order_id_foreign` (`sales_order_id`),
  KEY `sales_invoices_date_index` (`date`),
  KEY `sales_invoices_number_index` (`number`),
  KEY `sales_invoices_created_by_index` (`created_by`),
  KEY `sales_invoices_updated_by_index` (`updated_by`),
  CONSTRAINT `sales_invoices_sales_order_id_foreign` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_invoices`
--

LOCK TABLES `sales_invoices` WRITE;
/*!40000 ALTER TABLE `sales_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_detail`
--

DROP TABLE IF EXISTS `sales_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_order_detail` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_order_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` decimal(15,2) NOT NULL,
  `discount_persentage` decimal(5,2) NOT NULL,
  `discount_value` decimal(15,2) NOT NULL,
  `nett_price` decimal(15,2) NOT NULL,
  `qty` decimal(8,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `weight` decimal(10,2) DEFAULT '0.00',
  `subtotal_weight` decimal(10,2) DEFAULT '0.00',
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_order_detail_sales_order_id_foreign` (`sales_order_id`),
  KEY `sales_order_detail_product_id_foreign` (`product_id`),
  KEY `sales_order_detail_created_by_index` (`created_by`),
  KEY `sales_order_detail_updated_by_index` (`updated_by`),
  CONSTRAINT `sales_order_detail_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sales_order_detail_sales_order_id_foreign` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_order_detail`
--

LOCK TABLES `sales_order_detail` WRITE;
/*!40000 ALTER TABLE `sales_order_detail` DISABLE KEYS */;
INSERT INTO `sales_order_detail` VALUES ('5665fc6d-889e-407d-8167-1320f88fcb8c','9e0b33d1-84c8-4f42-a5f1-1219bfc4bd04','9d921fc2-1ebf-46ba-a613-29cd580781e7',2490000.00,0.00,0.00,2490000.00,1.00,2490000.00,0.00,0.00,NULL,NULL,'2025-01-24 09:05:11','2025-01-24 09:05:11',1),('59fd2dcf-1244-41f7-83f8-5a4c04c3aca4','9e0b33d1-84c8-4f42-a5f1-1219bfc4bd04','9d9220fb-6eed-40f6-a0aa-ab387bc8379c',2590000.00,0.00,0.00,2590000.00,1.00,2590000.00,0.00,0.00,NULL,NULL,'2025-01-24 09:05:11','2025-01-24 09:05:11',1),('9943eeea-fb01-4fe1-b991-d807929f61b8','9e0b32c0-5f20-4be7-85a9-0e9a8110692f','9d9220fb-6eed-40f6-a0aa-ab387bc8379c',2590000.00,0.00,0.00,2590000.00,1.00,2590000.00,0.00,0.00,NULL,NULL,'2025-01-24 09:02:12','2025-01-24 09:02:12',1),('9da89668-1fe1-418e-9c8c-74e59270bd81','9da89668-1939-4fc8-a80e-7597262307f8','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 08:33:54','2024-12-06 08:33:54',1),('9da89685-a68c-4371-aaff-9d8cd1f625f6','9da89685-a2ef-44fb-9312-7195cd1b3096','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 08:34:14','2024-12-06 08:34:14',1),('9da89723-6057-4f31-865f-d0112f01649a','9da89723-5ce7-4553-bda1-3010bdcf1022','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 08:35:57','2024-12-06 08:35:57',1),('9da8981e-18da-421e-9365-d74eaa9da79d','9da8981e-151b-4439-8e87-57a1b1fe51a6','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 08:38:41','2024-12-06 08:38:41',1),('9da8985e-9f95-490e-a3c5-276d6b5e71c4','9da8985e-9bca-4c65-819a-e313b77a21ff','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 08:39:24','2024-12-06 08:39:24',1),('9da8986f-5e28-44d3-9683-bd8b6fa872ab','9da8986f-5a9a-48d0-9d80-eababb4746c2','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 08:39:35','2024-12-06 08:39:35',1),('9da898ac-4ee8-4c6b-8348-be498e897d72','9da898ac-4959-4980-8efa-677f7fb5a3f6','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 08:40:14','2024-12-06 08:40:14',1),('9da898bf-3f5b-4e9f-b6a3-d6bf510dfb48','9da898bf-3b80-4ace-a510-f66f8669905c','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 08:40:27','2024-12-06 08:40:27',1),('9da8996f-b5ee-4fe2-9eae-cb3e62062f1d','9da8996f-b223-49fe-8446-0a84a5fa0dc9','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 08:42:23','2024-12-06 08:42:23',1),('9da89990-81eb-477c-ab63-c517a18e5404','9da89990-7e4b-4063-8b31-17745e948abc','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 08:42:44','2024-12-06 08:42:44',1),('9da899b9-d3bd-4fe2-9df5-b513607c6a71','9da899b9-d007-4382-9ad6-55c9f74a884d','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 08:43:11','2024-12-06 08:43:11',1),('9da899e3-3aba-44d2-8376-6e04c20ee701','9da899e3-3753-40ab-9012-1d872b5416df','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 08:43:38','2024-12-06 08:43:38',1),('9da899f7-f08f-488f-bb63-bddba4056552','9da899f7-de30-4c0f-ab85-bbd046f4f0d2','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 08:43:52','2024-12-06 08:43:52',1),('9da89a16-ec4a-44a3-9f70-e78c6a6c83d0','9da89a16-e8ee-434a-a1a6-89aa8bf76916','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 08:44:12','2024-12-06 08:44:12',1),('9da89a9d-84bd-47b0-b938-3255d7536103','9da89a9d-7f02-47f5-b130-dbc3ac4bf8b3','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 08:45:40','2024-12-06 08:45:40',1),('9da89c57-e003-4635-99f5-d6083ca5c515','9da89c57-dc5c-47a3-9b53-418ad9c9da30','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 08:50:30','2024-12-06 08:50:30',1),('9da89d6e-161a-469e-8860-cc94a18757ba','9da89d6e-1298-47c0-9730-a6dece8a6410','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 08:53:33','2024-12-06 08:53:33',1),('9da89e8a-22fe-422e-8076-687614cae716','9da89e8a-1d2a-4530-89c3-840e65b62c05','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 08:56:39','2024-12-06 08:56:39',1),('9da8a242-7eea-4050-bb93-5cbcbc2e02ac','9da8a242-78be-4161-b39c-2e20d02bc671','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 09:07:03','2024-12-06 09:07:03',1),('9da8a2fe-9148-4856-97b9-c7b05833edcb','9da8a2fe-8d05-462d-94ea-a0d4c00508e8','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 09:09:06','2024-12-06 09:09:06',1),('9da8a352-f136-4840-91bb-e5b881f53b88','9da8a352-ed04-470d-863b-3c83bd4736a2','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 09:10:01','2024-12-06 09:10:01',1),('9da8a384-07ec-47f9-ab9f-abd1874abfae','9da8a383-f3ae-46e9-8748-47241f193875','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 09:10:34','2024-12-06 09:10:34',1),('9da8a4ad-1194-4154-aa0d-56700472159f','9da8a4ad-0e0b-453e-ab4b-5490f3c9c92a','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 09:13:48','2024-12-06 09:13:48',1),('9da8a51e-bf2c-4643-a085-a863319f1c7c','9da8a51e-bafe-4273-9b77-77dc08ce848d','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 09:15:03','2024-12-06 09:15:03',1),('9da8a5a6-3507-4e39-a4aa-84dc7f969a59','9da8a5a6-30a1-4faf-94b4-36e1dcff7e3b','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 09:16:31','2024-12-06 09:16:31',1),('9da8a6b9-1ee9-4c65-b254-28e8bc48e5ee','9da8a6b9-1aea-479e-8e14-dbae935472b9','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 09:19:32','2024-12-06 09:19:32',1),('9da8a6cd-4c1c-495b-b6e2-136adf4c125d','9da8a6cd-4972-43ae-a70b-c3e93e2dc2b4','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 09:19:45','2024-12-06 09:19:45',1),('9da8a756-171e-44b9-a109-82c54fe254b2','9da8a756-139d-470c-b486-72cf5664764c','9d9220bd-a343-4dcc-8355-8606820bef7a',3790000.00,0.00,0.00,3790000.00,1.00,3790000.00,9000.00,9000.00,NULL,NULL,'2024-12-06 09:21:15','2024-12-06 09:21:15',1);
/*!40000 ALTER TABLE `sales_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_orders`
--

DROP TABLE IF EXISTS `sales_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_orders` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snap_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snap_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` decimal(15,2) DEFAULT '0.00',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `fraud_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'identifying',
  `is_processed` tinyint(1) DEFAULT '0',
  `is_shipping_label_printed` tinyint(1) NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_orders_employee_id_foreign` (`employee_id`),
  KEY `sales_orders_customer_id_foreign` (`customer_id`),
  KEY `sales_orders_snap_url_index` (`snap_url`),
  KEY `sales_orders_snap_token_index` (`snap_token`),
  KEY `sales_orders_date_index` (`date`),
  KEY `sales_orders_number_index` (`number`),
  KEY `sales_orders_created_by_index` (`created_by`),
  KEY `sales_orders_updated_by_index` (`updated_by`),
  KEY `sales_orders_status_index` (`status`),
  KEY `fraud_status` (`fraud_status`),
  CONSTRAINT `sales_orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sales_orders_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_orders`
--

LOCK TABLES `sales_orders` WRITE;
/*!40000 ALTER TABLE `sales_orders` DISABLE KEYS */;
INSERT INTO `sales_orders` VALUES ('9da894b9-3b83-4676-ac0d-701e3cbf000d','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:29:12','testso-20241206-638735',0.00,'1',NULL,'developer@system','2024-12-06 08:29:12','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da894ed-1750-4acd-b37c-eb4cff2590ec','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:29:46','testso-20241206-541406',0.00,NULL,NULL,'developer@system','2024-12-06 08:29:46','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da89500-f3e2-43b5-8d8a-c349bd671520','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:29:59','testso-20241206-274898',0.00,NULL,NULL,'developer@system','2024-12-06 08:29:59','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da89515-081d-4a0e-9a9e-0c50e5c81764','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:30:12','testso-20241206-549633',0.00,NULL,NULL,'developer@system','2024-12-06 08:30:12','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da89668-1939-4fc8-a80e-7597262307f8','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:33:54','testso-20241206-491191',0.00,NULL,NULL,'developer@system','2024-12-06 08:33:54','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da89685-a2ef-44fb-9312-7195cd1b3096','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:34:14','testso-20241206-415213',0.00,NULL,NULL,'developer@system','2024-12-06 08:34:14','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da89723-5ce7-4553-bda1-3010bdcf1022','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:35:57','testso-20241206-668547',0.00,NULL,NULL,'developer@system','2024-12-06 08:35:57','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8981e-151b-4439-8e87-57a1b1fe51a6','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:38:41','testso-20241206-969505',0.00,NULL,NULL,'developer@system','2024-12-06 08:38:41','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8985e-9bca-4c65-819a-e313b77a21ff','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:39:24','testso-20241206-831706',0.00,NULL,NULL,'developer@system','2024-12-06 08:39:24','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8986f-5a9a-48d0-9d80-eababb4746c2','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:39:35','testso-20241206-504737',0.00,NULL,NULL,'developer@system','2024-12-06 08:39:35','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da898ac-4959-4980-8efa-677f7fb5a3f6','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:40:14','testso-20241206-658305',0.00,NULL,NULL,'developer@system','2024-12-06 08:40:14','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da898bf-3b80-4ace-a510-f66f8669905c','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:40:27','testso-20241206-643684',14280000.00,NULL,NULL,'developer@system','2024-12-06 08:40:27','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8996f-b223-49fe-8446-0a84a5fa0dc9','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:42:22','testso-20241206-369682',14280000.00,NULL,NULL,'developer@system','2024-12-06 08:42:23','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da89990-7e4b-4063-8b31-17745e948abc','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:42:44','testso-20241206-232153',14280000.00,NULL,NULL,'developer@system','2024-12-06 08:42:44','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da899b9-d007-4382-9ad6-55c9f74a884d','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:43:11','testso-20241206-535882',14280000.00,NULL,NULL,'developer@system','2024-12-06 08:43:11','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da899e3-3753-40ab-9012-1d872b5416df','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:43:38','testso-20241206-751316',14280000.00,NULL,NULL,'developer@system','2024-12-06 08:43:38','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da899f7-de30-4c0f-ab85-bbd046f4f0d2','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:43:52','testso-20241206-502888',14280000.00,NULL,NULL,'developer@system','2024-12-06 08:43:52','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da89a16-e8ee-434a-a1a6-89aa8bf76916','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:44:12','testso-20241206-324859',14280000.00,NULL,NULL,'developer@system','2024-12-06 08:44:12','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da89a9d-7f02-47f5-b130-dbc3ac4bf8b3','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:45:40','testso-20241206-429979',14280000.00,NULL,NULL,'developer@system','2024-12-06 08:45:40','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da89c57-dc5c-47a3-9b53-418ad9c9da30','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:50:30','testso-20241206-434633',14280000.00,NULL,NULL,'developer@system','2024-12-06 08:50:30','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da89d6e-1298-47c0-9730-a6dece8a6410','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:53:33','testso-20241206-561941',14280000.00,NULL,NULL,'developer@system','2024-12-06 08:53:33','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da89e8a-1d2a-4530-89c3-840e65b62c05','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:56:39','testso-20241206-407604',14280000.00,NULL,NULL,'developer@system','2024-12-06 08:56:39','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8a242-78be-4161-b39c-2e20d02bc671','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:07:03','testso-20241206-787829',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:07:03','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8a2fe-8d05-462d-94ea-a0d4c00508e8','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:09:06','testso-20241206-877539',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:09:06','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8a352-ed04-470d-863b-3c83bd4736a2','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:10:01','testso-20241206-137862',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:10:01','2025-01-08 09:43:28','settlement','identifying',0,0,1),('9da8a383-f3ae-46e9-8748-47241f193875','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:10:33','testso-20241206-898882',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:10:34','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8a4ad-0e0b-453e-ab4b-5490f3c9c92a','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:13:48','testso-20241206-878055',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:13:48','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8a51e-bafe-4273-9b77-77dc08ce848d','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:15:03','testso-20241206-776182',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:15:03','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8a5a6-30a1-4faf-94b4-36e1dcff7e3b','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:16:31','testso-20241206-516880',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:16:31','2025-01-08 09:43:28','settlement','identifying',0,0,1),('9da8a6b9-1aea-479e-8e14-dbae935472b9','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:19:32','testso-20241206-466027',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:19:32','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8a6cd-4972-43ae-a70b-c3e93e2dc2b4','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:19:45','testso-20241206-224003',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:19:45','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8a756-139d-470c-b486-72cf5664764c','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:21:15','testso-20241206-792985',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:21:15','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8a777-6cf1-4674-aa11-1ef49d8c36ff','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:21:36','testso-20241206-778286',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:21:36','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8abc4-ba35-4a83-8032-0a06527b9162','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:33:38','testso-20241206-349755',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:33:38','2025-01-08 09:43:28','settlement','identifying',0,0,1),('9da8ad9d-6317-42d3-a044-acde3f61c3e4','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:38:48','testso-20241206-183647',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:38:48','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8ae28-5a20-473b-95e7-54b0e7e8a0be','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:40:19','testso-20241206-544300',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:40:19','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8ae35-4de7-4069-be10-3d1e6b28e8ac','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:40:27','testso-20241206-885946',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:40:27','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8ae4a-143c-4c9a-9e8a-4e754854a1d7','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:40:41','testso-20241206-910511',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:40:41','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8aeb5-439b-4910-8d9b-ac20d7beaf7d','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:41:51','testso-20241206-427770',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:41:51','2025-01-08 09:43:28','settlement','identifying',0,0,1),('9da8af1b-f8a5-4331-a160-8bf89ba08689','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750','https://app.sandbox.midtrans.com/snap/v4/redirection/b8218b71-c2ec-4415-81f3-9dbc35e52174','b8218b71-c2ec-4415-81f3-9dbc35e52174','2024-12-06 09:42:59','testso-20241206-464326',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:42:59','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8afa7-fcc6-4fa3-9881-d5db7c8524d3','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750','https://app.sandbox.midtrans.com/snap/v4/redirection/41c008af-6aa6-4a01-a223-0c063e341969','41c008af-6aa6-4a01-a223-0c063e341969','2024-12-06 09:44:30','testso-20241206-226755',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:44:30','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8b050-ba68-43b1-9e46-818b182dc4dd','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:46:21','testso-20241206-592452',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:46:21','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8b072-f60d-40f3-b6f5-4922a8e386b6','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:46:43','testso-20241206-726539',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:46:43','2025-01-08 09:43:28','pending','identifying',0,0,1),('9da8b13f-4473-46c0-807a-6428cb9c96bb','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:48:57','testso-20241206-761840',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:48:57','2025-01-08 09:46:30','pending','identifying',0,0,1),('9da8b178-2bb5-4036-a670-43a820ebd6cb','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750','https://app.sandbox.midtrans.com/snap/v4/redirection/23e2baa9-f815-44f8-8a7d-0de555ce97df','23e2baa9-f815-44f8-8a7d-0de555ce97df','2024-12-06 09:49:35','testso-20241206-822820',14280000.00,NULL,NULL,'developer@system','2024-12-06 09:49:35','2025-01-08 09:55:07','settlement','identifying',1,1,1),('9da8ba25-4965-4741-bd5a-ed629567a39e','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57940750','https://app.sandbox.midtrans.com/snap/v4/redirection/aa49ae55-4aac-4d68-938a-5d2ec8606153','aa49ae55-4aac-4d68-938a-5d2ec8606153','2024-12-06 10:13:50','testso-20241206-177714',14280000.00,NULL,NULL,'developer@system','2024-12-06 10:13:50','2025-01-08 09:46:30','pending','identifying',0,0,1),('9dad01b7-17a1-4ce1-99c9-8071af2d2448','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','1a5567ef-ff15-49a3-94f5-d3554df1ac96','https://app.sandbox.midtrans.com/snap/v4/redirection/16fcc45e-bceb-4d19-9582-377498ac7418','16fcc45e-bceb-4d19-9582-377498ac7418','2024-12-08 13:17:16','testso-20241208-139594',23560000.00,NULL,NULL,'developer@system','2024-12-08 13:17:16','2025-01-08 09:55:07','settlement','identifying',1,1,1),('9dad1369-3b91-487a-be7d-7c67fb3df1b0','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','1a5567ef-ff15-49a3-94f5-d3554df1ac96','https://app.sandbox.midtrans.com/snap/v4/redirection/9e767a57-7030-47ba-8bb4-77b57f11557d','9e767a57-7030-47ba-8bb4-77b57f11557d','2024-12-08 14:06:43','testso-20241208-186355',23560000.00,NULL,NULL,'developer@system','2024-12-08 14:06:46','2025-01-08 09:55:07','settlement','identifying',1,1,1),('9dad1652-f9c1-4134-822e-5048889e1170','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','1a5567ef-ff15-49a3-94f5-d3554df1ac96','https://app.sandbox.midtrans.com/snap/v4/redirection/465924f2-23fa-4ff6-91b8-d04f35689eed','465924f2-23fa-4ff6-91b8-d04f35689eed','2024-12-08 14:14:54','testso-20241208-883251',23560000.00,NULL,NULL,'developer@system','2024-12-08 14:14:54','2025-01-08 09:46:30','pending','identifying',0,0,1),('9dae3834-1d61-4f74-a827-fc222009f223','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','19fb61eb-d473-4d08-896b-75265c1eaebc','https://app.sandbox.midtrans.com/snap/v4/redirection/43c926a5-f11b-45bc-96b7-fd0b95d495e1','43c926a5-f11b-45bc-96b7-fd0b95d495e1','2024-12-09 03:45:28','testso-20241209-683726',15470000.00,NULL,NULL,'developer@system','2024-12-09 03:45:28','2025-01-08 09:55:07','settlement','identifying',1,1,1),('9db019a8-3ed6-47c6-8b25-e1e9ce07a841','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','19fb61eb-d473-4d08-896b-75265c1eaebc','https://app.sandbox.midtrans.com/snap/v4/redirection/96b3cea5-5b19-44b6-b0f1-f0b3dc7cac04','96b3cea5-5b19-44b6-b0f1-f0b3dc7cac04','2024-12-10 02:11:42','testso-20241210-849145',35360000.00,NULL,NULL,'developer@system','2024-12-10 02:11:42','2025-01-08 09:46:30','pending','identifying',0,0,1),('9db025ec-6b2e-45fe-a10e-aa6599e720ce','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57942000','https://app.sandbox.midtrans.com/snap/v4/redirection/6a5ef735-aac6-460b-adea-8cfc19747d54','6a5ef735-aac6-460b-adea-8cfc19747d54','2024-12-10 02:46:00','testso-20241210-331369',35785500.00,NULL,NULL,'developer@system','2024-12-10 02:46:00','2025-01-08 09:55:07','settlement','identifying',1,1,1),('9db02812-8fe3-46b6-a183-797e00879040','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57942000','https://app.sandbox.midtrans.com/snap/v4/redirection/c3cb5a7e-ff40-4503-b9a7-c7ec498429c3','c3cb5a7e-ff40-4503-b9a7-c7ec498429c3','2024-12-10 02:52:01','testso-20241210-928132',35785500.00,NULL,NULL,'developer@system','2024-12-10 02:52:01','2025-01-08 09:54:58','pending','identifying',0,0,1),('9db031d4-511f-4d32-bbbb-210169fd5ac0','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57942000','https://app.sandbox.midtrans.com/snap/v4/redirection/fb3d7e4e-4f93-4b35-8091-a840dbdedf03','fb3d7e4e-4f93-4b35-8091-a840dbdedf03','2024-12-10 03:19:18','testso-20241210-855062',35785500.00,NULL,NULL,'developer@system','2024-12-10 03:19:18','2025-01-08 09:54:58','settlement','identifying',0,0,1),('9db0996a-0ae9-4140-9964-234b6bc35d42','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57942000','https://app.sandbox.midtrans.com/snap/v4/redirection/d1fcd315-c615-47c7-8142-549c9d98c0e1','d1fcd315-c615-47c7-8142-549c9d98c0e1','2024-12-10 08:08:56','testso-20241210-701596',141697500.00,NULL,NULL,'developer@system','2024-12-10 08:08:56','2025-01-08 09:54:58','pending','identifying',0,0,1),('9db0b844-1937-4151-a7eb-48cf62292724','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57942000','https://app.sandbox.midtrans.com/snap/v4/redirection/93f10969-0a62-4802-abfe-b76fb2c0eb7e','93f10969-0a62-4802-abfe-b76fb2c0eb7e','2024-12-10 09:35:12','testso-20241210-707676',13611500.00,NULL,NULL,'developer@system','2024-12-10 09:35:12','2025-01-08 09:54:58','pending','identifying',0,0,1),('9db0b8ef-8f9f-4ef2-9c63-4de663e12f98','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','9da8889d-b750-41d3-8403-d6af57942000','https://app.sandbox.midtrans.com/snap/v4/redirection/56887016-77e1-42cf-b781-568969c9214d','56887016-77e1-42cf-b781-568969c9214d','2024-12-10 09:37:05','testso-20241210-472604',13611500.00,'Catatan 1',NULL,'developer@system','2024-12-10 09:37:05','2025-01-08 09:54:58','ordered','identifying',0,0,1),('9e0b32c0-5f20-4be7-85a9-0e9a8110692f',NULL,'9e0b32c0-5b29-4dc8-8908-25da05c4a408',NULL,NULL,'2025-01-24 09:02:12','testso-20241210-472604',0.00,NULL,NULL,NULL,'2025-01-24 09:02:12','2025-01-24 09:02:12','pending','identifying',0,0,1),('9e0b33d1-84c8-4f42-a5f1-1219bfc4bd04',NULL,'9e0b33d1-7f8a-460d-83e4-6b584b9dbb1d',NULL,NULL,'2025-01-24 09:05:11','testso-20241210-472604',0.00,NULL,NULL,NULL,'2025-01-24 09:05:11','2025-01-24 09:05:11','pending','identifying',0,0,1),('9e19122d-821a-4261-bba9-f297f17da27c',NULL,'9e19122d-6253-4867-a8d7-00c270484671',NULL,NULL,'2025-01-31 06:32:43','testso-20241210-472604',0.00,NULL,NULL,NULL,'2025-01-31 06:32:43','2025-01-31 06:32:43','pending','identifying',0,0,1),('9e1912d7-67dd-430c-9b9b-02861a67987e',NULL,'9e1912d7-6237-4cd7-ab11-26f8cb39915a',NULL,NULL,'2025-01-31 06:34:34','testso-20241210-472604',0.00,NULL,NULL,NULL,'2025-01-31 06:34:34','2025-01-31 06:34:34','pending','identifying',0,0,1),('9e1eb046-cd96-4353-8ab1-9423d6af0ea5',NULL,'9e1eb046-ad5d-4adc-98b7-5042628a711b',NULL,NULL,'2025-02-03 01:33:56','testso-20241210-472604',0.00,NULL,NULL,NULL,'2025-02-03 01:33:56','2025-02-08 19:49:13','pending','identifying',1,0,0),('9e1eec9f-3021-499c-925b-7ca16ad5c275',NULL,'9e1eec9f-2afd-4dd6-9bf0-967010ca5632',NULL,NULL,'2025-02-03 04:22:40','testso-20241210-472604',0.00,NULL,'aslan walker2',NULL,'2025-02-03 04:22:40','2025-02-08 19:13:30','pending','identifying',1,0,1),('9e1eeff6-0e52-4ffe-843c-3dffec192baf',NULL,'9e1eeff6-07cf-4d36-934c-007630d1e4b9',NULL,NULL,'2025-02-03 04:32:00','testso-20241210-472604',0.00,NULL,'aslan walker3',NULL,'2025-02-03 04:32:00','2025-02-08 23:12:57','pending','identifying',1,0,1);
/*!40000 ALTER TABLE `sales_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_payments`
--

DROP TABLE IF EXISTS `sales_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_payments` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_invoice_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_payments_sales_invoice_id_foreign` (`sales_invoice_id`),
  KEY `sales_payments_date_index` (`date`),
  KEY `sales_payments_number_index` (`number`),
  KEY `sales_payments_created_by_index` (`created_by`),
  KEY `sales_payments_updated_by_index` (`updated_by`),
  CONSTRAINT `sales_payments_sales_invoice_id_foreign` FOREIGN KEY (`sales_invoice_id`) REFERENCES `sales_invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_payments`
--

LOCK TABLES `sales_payments` WRITE;
/*!40000 ALTER TABLE `sales_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_shippings`
--

DROP TABLE IF EXISTS `sales_shippings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_shippings` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_order_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subdistrict_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subdistrict_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_service` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_etd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_weight` decimal(10,2) DEFAULT '0.00',
  `shipping_fee` decimal(15,2) DEFAULT '0.00',
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) unsigned zerofill DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sales_shippings_sales_order_id_foreign` (`sales_order_id`),
  KEY `sales_shippings_created_by_index` (`created_by`),
  KEY `sales_shippings_updated_by_index` (`updated_by`),
  CONSTRAINT `sales_shippings_sales_order_id_foreign` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_shippings`
--

LOCK TABLES `sales_shippings` WRITE;
/*!40000 ALTER TABLE `sales_shippings` DISABLE KEYS */;
INSERT INTO `sales_shippings` VALUES ('9da8b13f-48d0-4c0b-aabc-6c4f9587e188','9da8b13f-4473-46c0-807a-6428cb9c96bb','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',19000.00,218500.00,NULL,NULL,'2024-12-06 09:48:57','2024-12-06 09:48:57',1),('9da8b178-33c4-46d1-ad4a-2a0a3fae0152','9da8b178-2bb5-4036-a670-43a820ebd6cb','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',19000.00,218500.00,NULL,NULL,'2024-12-06 09:49:35','2024-12-06 09:49:35',1),('9da8ba25-9b97-4390-b72e-0a317347db9c','9da8ba25-4965-4741-bd5a-ed629567a39e','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',19000.00,218500.00,NULL,NULL,'2024-12-06 10:13:50','2024-12-06 10:13:50',1),('9dad01b7-1d78-41b5-ae0b-15ba3c7c0c10','9dad01b7-17a1-4ce1-99c9-8071af2d2448','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',26000.00,299000.00,NULL,NULL,'2024-12-08 13:17:16','2024-12-08 13:17:16',1),('9dad136a-5078-4ace-95a6-81d155be6f64','9dad1369-3b91-487a-be7d-7c67fb3df1b0','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',26000.00,299000.00,NULL,NULL,'2024-12-08 14:06:46','2024-12-08 14:06:46',1),('9dad1652-fec2-4063-98ab-2c210480f9a6','9dad1652-f9c1-4134-822e-5048889e1170','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',26000.00,299000.00,NULL,NULL,'2024-12-08 14:14:54','2024-12-08 14:14:54',1),('9dae3834-594e-4493-91ab-e3796dd8482d','9dae3834-1d61-4f74-a827-fc222009f223','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Jalan No 8','142342','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',18000.00,207000.00,NULL,NULL,'2024-12-09 03:45:28','2024-12-09 03:45:28',1),('9db019a8-9b47-4c9b-a6fa-88e3661cb679','9db019a8-3ed6-47c6-8b25-e1e9ce07a841','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',37000.00,425500.00,NULL,NULL,'2024-12-10 02:11:42','2024-12-10 02:11:42',1),('9db025ec-70d0-43f5-b35b-1b7a8f834975','9db025ec-6b2e-45fe-a10e-aa6599e720ce','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',37000.00,425500.00,NULL,NULL,'2024-12-10 02:46:00','2024-12-10 02:46:00',1),('9db02812-944b-44ed-b845-ecc341123bfc','9db02812-8fe3-46b6-a183-797e00879040','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',37000.00,425500.00,NULL,NULL,'2024-12-10 02:52:01','2024-12-10 02:52:01',1),('9db031d4-566f-446d-adf9-7875870eebad','9db031d4-511f-4d32-bbbb-210169fd5ac0','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',37000.00,425500.00,NULL,NULL,'2024-12-10 03:19:18','2024-12-10 03:19:18',1),('9db0996a-19c2-4bfe-8fc1-bb0f88baf898','9db0996a-0ae9-4140-9964-234b6bc35d42','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',365000.00,4197500.00,NULL,NULL,'2024-12-10 08:08:56','2024-12-10 08:08:56',1),('9db0b844-22c1-41e7-a649-0142d14f25a2','9db0b844-1937-4151-a7eb-48cf62292724','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 2 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',21000.00,241500.00,NULL,NULL,'2024-12-10 09:35:12','2024-12-10 09:35:12',1),('9db0b8ef-94d3-479d-8d6c-efa7fe2b30cf','9db0b8ef-8f9f-4ef2-9c63-4de663e12f98','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',21000.00,241500.00,NULL,NULL,'2024-12-10 09:37:05','2024-12-10 09:37:05',1),('9e0b32c0-5fae-4699-9f64-d7c352b84878','9e0b32c0-5f20-4be7-85a9-0e9a8110692f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dhfdhty','54654376',NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,NULL,NULL,'2025-01-24 09:02:12','2025-01-24 09:02:12',1),('9e0b33d1-8659-460a-9e90-a1bc81237a84','9e0b33d1-84c8-4f42-a5f1-1219bfc4bd04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ghjghfjhgk','657567',NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,NULL,NULL,'2025-01-24 09:05:11','2025-01-24 09:05:11',1),('9e19122d-8ad0-4786-a097-d7b531eed896','9e19122d-821a-4261-bba9-f297f17da27c',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'jhgjgjhg','768678',NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,NULL,NULL,'2025-01-31 06:32:43','2025-01-31 06:32:43',1),('9e1912d7-69d8-406b-98e7-2f211f2ead88','9e1912d7-67dd-430c-9b9b-02861a67987e',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'76iyui','76',NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,NULL,NULL,'2025-01-31 06:34:34','2025-01-31 06:34:34',1),('9e1eb046-da97-4e00-a274-a0ac44cef13f','9e1eb046-cd96-4353-8ab1-9423d6af0ea5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'45yrthrth','43656',NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,NULL,NULL,'2025-02-03 01:33:56','2025-02-03 01:33:56',1),('9e1eeff6-0e52-4ffe-843c-3dffec192baf','9e1eeff6-0e52-4ffe-843c-3dffec192baf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fgjhytu','65765',NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,'aslan walker3',NULL,'2025-02-03 04:22:40','2025-02-03 04:22:40',1);
/*!40000 ALTER TABLE `sales_shippings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`),
  CONSTRAINT `sessions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('0YEMIW1zauLubY7gvFhTbeNN7jMViwTQDBb4PKJ0',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoiTExHNmp0WnJ6akFvUVdxZmhwM0xhdkNmWWpZWXptQzU5UHB5MkZTeSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1736443041),('AQxNAroRg7sFGEfsmpV6BcvpLUE3CGeZxPrFne3X',NULL,NULL,NULL,'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNmR2WThQaWRFY1hDVTZDaTN4TjJQbjE1TFNVV2hQSHRBQkNKbENCSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1738213531),('bFRbURZ1UUem8ZQ5VKqJaUTsKBLS6MTvugentvLj',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoiV0Y2aVdQdlp2WEhDekxEd3c2d0xqeTNFaml3VHN4bkhuUG1HN091MiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1736755669),('CghMvz9eQWYUaxBG0VoSZ6Es49f9bjD7ehfeul1p',NULL,NULL,NULL,'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNmR2WThQaWRFY1hDVTZDaTN4TjJQbjE1TFNVV2hQSHRBQkNKbENCSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1737685251),('DUIvCswHWExgk8ppwqelUztrNJ51SbJoPho9s3pu',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNE9Yc0ptVkxNRzRZNHJodllPVlFVeHJXS0dqVjB5Z281N2lsQmNKMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly91bWVkYXN0b3JlLnRlc3QvY2FydC9jaGVja291dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTE6Imx3NjczODM4MzQ0IjtOO30=',1735783453),('fsExLwpYhUPy4KmcfNFhUytb4kK3U3Wq64oMyoVU',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoibUNzdUNsbUFjbjJHV2QyY0swU3VWb3ZqdVJpSHIwaDlyYWpzMEtPWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1736132579),('HIXmphKE1k0z6P0RbdF3vy50H4nCUXOtMRv7XaKL',NULL,NULL,NULL,'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNmR2WThQaWRFY1hDVTZDaTN4TjJQbjE1TFNVV2hQSHRBQkNKbENCSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1737535908),('hXv9qj392KoPwxg6tt3vM2DDk01E234JkG0NV3no',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoiOUlSVVJRbFJZUVRlemZ1dzdVU0k4OW9LNzV2VEZnYXZXd1Ntc094TCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1736587202),('it01NgYXfMo4fx8R5NGjbLoyOF3gqVVZn2Nzkrmz',NULL,NULL,NULL,'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNmR2WThQaWRFY1hDVTZDaTN4TjJQbjE1TFNVV2hQSHRBQkNKbENCSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1738546397),('kCz1MllqIihFebAGO5u3MnkpiJNokJ3yfsLCj5SB',NULL,NULL,NULL,'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNmR2WThQaWRFY1hDVTZDaTN4TjJQbjE1TFNVV2hQSHRBQkNKbENCSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1738305112),('mEnfgwKEqf0aTTxTt5SypCoeqraDXo3SbHRK6lHy',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoibTlMOTB1ZGFuaTh2U0huZk5ERXFyRFVYczdBOFBjTVpSS25yRmhjTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1735802468),('Nk8mZueeKS1YvYWNTHd6qRM0GNf24GqbnLq6Hw56',NULL,NULL,NULL,'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNmR2WThQaWRFY1hDVTZDaTN4TjJQbjE1TFNVV2hQSHRBQkNKbENCSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1737533469),('NuxsHQr191zMGkzZ6ZbU63gmQBjo6B8x5c5XuuBI',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmFkM3pJRVNGVVFpYkFIVE55bHRIRXVNMDlBRHJESTVNZ0dEUlEwdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly91bWVkYXN0b3JlLnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1736403259),('ocXDgXiDwpXNaUHvVc8zKh5vTz1eNgLmYx9oiXhT',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoiWk9Xa3VIczJvNDZkSWkySUhYSHVtQlpsWjdvZUJwZkJjVzRBOVV2MyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1735885874),('Ojr7ARiG2I4MYabXjIibjMaNSojm7s9w6q0lyfS3',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoia3JaTHlNR29OYURNVXNSbk04TnE0dUF4dUZONVlkOVh3bzZNU0tFNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly91bWVkYXN0b3JlLnRlc3QiO319',1736762318),('pVj1NRsR6dgtnVSP2VXRW6k88IhfZQBGq3cwu8gZ',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSldDclF5V2ZMdDlseDhPb29IRGJTZXdwcHZ6UXRVMXRaVkRBaE1tdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHBzOi8vcHBkYi50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1736443041),('tLb8IsYiyuOR7V7U88nyOUQ1fGm3VFQd1fJwPcYo',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT3ZiSHNWbXhCYlJHQTNKc3ltWEtsY3kyZ0lVVGtOVFVJUGtTaEh2MyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0NDoiaHR0cHM6Ly91bWVkYXN0b3JlLXByaXZhdGUudGVzdC9zYWxlcy1vcmRlcnMiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0NDoiaHR0cHM6Ly91bWVkYXN0b3JlLXByaXZhdGUudGVzdC9zYWxlcy1vcmRlcnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1736329635),('TxMwL9gUngnyE6t3Ut9Lgrssv4tOS5bDZCvp3fbq',NULL,NULL,NULL,'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNmR2WThQaWRFY1hDVTZDaTN4TjJQbjE1TFNVV2hQSHRBQkNKbENCSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1737598077),('YUZJmf3bEZgC54AQGcnN2kdFj6AyKrdGvpRQqnFs',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoiNmR2WThQaWRFY1hDVTZDaTN4TjJQbjE1TFNVV2hQSHRBQkNKbENCSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1735887390);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_pelanggan_teraktif`
--

DROP TABLE IF EXISTS `vw_pelanggan_teraktif`;
/*!50001 DROP VIEW IF EXISTS `vw_pelanggan_teraktif`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_pelanggan_teraktif` AS SELECT 
 1 AS `customer_first_name`,
 1 AS `customer_last_name`,
 1 AS `total_orders`,
 1 AS `total_spent`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_penjualan_per_kategori_produk`
--

DROP TABLE IF EXISTS `vw_penjualan_per_kategori_produk`;
/*!50001 DROP VIEW IF EXISTS `vw_penjualan_per_kategori_produk`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_penjualan_per_kategori_produk` AS SELECT 
 1 AS `category_name`,
 1 AS `total_sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_produk_terlaris`
--

DROP TABLE IF EXISTS `vw_produk_terlaris`;
/*!50001 DROP VIEW IF EXISTS `vw_produk_terlaris`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_produk_terlaris` AS SELECT 
 1 AS `product_name`,
 1 AS `total_sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_total_penjualan_per_bulan`
--

DROP TABLE IF EXISTS `vw_total_penjualan_per_bulan`;
/*!50001 DROP VIEW IF EXISTS `vw_total_penjualan_per_bulan`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_total_penjualan_per_bulan` AS SELECT 
 1 AS `month`,
 1 AS `total_sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_pelanggan_teraktif`
--

/*!50001 DROP VIEW IF EXISTS `vw_pelanggan_teraktif`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pelanggan_teraktif` AS select `c`.`first_name` AS `customer_first_name`,`c`.`last_name` AS `customer_last_name`,count(`o`.`id`) AS `total_orders`,sum(`o`.`total_amount`) AS `total_spent` from (`customers` `c` join `sales_orders` `o` on((`c`.`id` = `o`.`customer_id`))) where (`o`.`status` = 'settlement') group by `c`.`first_name`,`c`.`last_name` order by `total_orders` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_penjualan_per_kategori_produk`
--

/*!50001 DROP VIEW IF EXISTS `vw_penjualan_per_kategori_produk`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_penjualan_per_kategori_produk` AS select `pcf`.`name` AS `category_name`,sum(`so`.`total_amount`) AS `total_sales` from (((`sales_orders` `so` join `sales_order_detail` `sod` on((`sod`.`sales_order_id` = `so`.`id`))) join `products` `p` on((`sod`.`product_id` = `p`.`id`))) join `product_category_firsts` `pcf` on((`pcf`.`id` = `p`.`product_category_first_id`))) group by `pcf`.`name` order by `total_sales` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_produk_terlaris`
--

/*!50001 DROP VIEW IF EXISTS `vw_produk_terlaris`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_produk_terlaris` AS select `p`.`name` AS `product_name`,sum(`oi`.`total_amount`) AS `total_sales` from ((`sales_orders` `oi` join `sales_order_detail` `sod` on((`oi`.`id` = `sod`.`sales_order_id`))) join `products` `p` on((`p`.`id` = `sod`.`product_id`))) group by `p`.`name` order by `total_sales` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_total_penjualan_per_bulan`
--

/*!50001 DROP VIEW IF EXISTS `vw_total_penjualan_per_bulan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_total_penjualan_per_bulan` AS select date_format(`o`.`created_at`,'%Y-%m') AS `month`,sum(`o`.`total_amount`) AS `total_sales` from `sales_orders` `o` where (`o`.`status` = 'settlement') group by `month` order by `month` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-10  2:51:40
