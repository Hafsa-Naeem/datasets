-- MySQL dump 10.13  Distrib 5.7.39, for Linux (x86_64)
--
-- Host: localhost    Database: ojs-ci
-- ------------------------------------------------------
-- Server version	5.7.39-0ubuntu0.18.04.2

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
-- Table structure for table `access_keys`
--

DROP TABLE IF EXISTS `access_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_keys` (
  `access_key_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context` varchar(40) NOT NULL,
  `key_hash` varchar(40) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  `expiry_date` datetime NOT NULL,
  PRIMARY KEY (`access_key_id`),
  KEY `access_keys_user_id` (`user_id`),
  KEY `access_keys_hash` (`key_hash`,`user_id`,`context`),
  CONSTRAINT `access_keys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_keys`
--

LOCK TABLES `access_keys` WRITE;
/*!40000 ALTER TABLE `access_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `access_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement_settings`
--

DROP TABLE IF EXISTS `announcement_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement_settings` (
  `announcement_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  `setting_type` varchar(6) DEFAULT NULL,
  UNIQUE KEY `announcement_settings_pkey` (`announcement_id`,`locale`,`setting_name`),
  KEY `announcement_settings_announcement_id` (`announcement_id`),
  CONSTRAINT `announcement_settings_announcement_id_foreign` FOREIGN KEY (`announcement_id`) REFERENCES `announcements` (`announcement_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement_settings`
--

LOCK TABLES `announcement_settings` WRITE;
/*!40000 ALTER TABLE `announcement_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement_type_settings`
--

DROP TABLE IF EXISTS `announcement_type_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement_type_settings` (
  `type_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `announcement_type_settings_pkey` (`type_id`,`locale`,`setting_name`),
  KEY `announcement_type_settings_type_id` (`type_id`),
  CONSTRAINT `announcement_type_settings_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `announcement_types` (`type_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement_type_settings`
--

LOCK TABLES `announcement_type_settings` WRITE;
/*!40000 ALTER TABLE `announcement_type_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement_type_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement_types`
--

DROP TABLE IF EXISTS `announcement_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement_types` (
  `type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  PRIMARY KEY (`type_id`),
  KEY `announcement_types_context_id` (`context_id`),
  CONSTRAINT `announcement_types_context_id_foreign` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement_types`
--

LOCK TABLES `announcement_types` WRITE;
/*!40000 ALTER TABLE `announcement_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `announcement_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` smallint(6) DEFAULT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `date_expire` date DEFAULT NULL,
  `date_posted` datetime NOT NULL,
  PRIMARY KEY (`announcement_id`),
  KEY `announcements_type_id` (`type_id`),
  KEY `announcements_assoc` (`assoc_type`,`assoc_id`),
  CONSTRAINT `announcements_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `announcement_types` (`type_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author_settings`
--

DROP TABLE IF EXISTS `author_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author_settings` (
  `author_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  UNIQUE KEY `author_settings_pkey` (`author_id`,`locale`,`setting_name`),
  KEY `author_settings_author_id` (`author_id`),
  CONSTRAINT `author_settings_author_id` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author_settings`
--

LOCK TABLES `author_settings` WRITE;
/*!40000 ALTER TABLE `author_settings` DISABLE KEYS */;
INSERT INTO `author_settings` VALUES (1,'','country','ZA'),(1,'en_US','affiliation','University of Cape Town'),(1,'en_US','familyName','Mwandenga'),(1,'en_US','givenName','Alan'),(2,'','country','ZA'),(2,'en_US','affiliation',NULL),(2,'en_US','biography',NULL),(2,'en_US','familyName','Ipsum'),(2,'en_US','givenName','Lorem'),(2,'en_US','preferredPublicName',NULL),(2,'fr_CA','affiliation',NULL),(2,'fr_CA','biography',NULL),(2,'fr_CA','familyName',NULL),(2,'fr_CA','givenName',NULL),(2,'fr_CA','preferredPublicName',NULL),(3,'','country','ZA'),(3,'en_US','affiliation','University of Cape Town'),(3,'en_US','familyName','Mwandenga Version 2'),(3,'en_US','givenName','Alan'),(4,'','country','ZA'),(4,'en_US','familyName','Ipsum'),(4,'en_US','givenName','Lorem'),(5,'','country','IT'),(5,'en_US','affiliation','University of Bologna'),(5,'en_US','familyName','Corino'),(5,'en_US','givenName','Carlo'),(6,'','country','CA'),(6,'en_US','affiliation','University of Windsor'),(6,'en_US','familyName','Kwantes'),(6,'en_US','givenName','Catherine'),(7,'','country','CA'),(7,'en_US','affiliation','University of Alberta'),(7,'en_US','familyName','Montgomerie'),(7,'en_US','givenName','Craig'),(8,'','country','CA'),(8,'','orcid',''),(8,'','url',''),(8,'en_US','affiliation','University of Victoria'),(8,'en_US','biography',''),(8,'en_US','familyName','Irvine'),(8,'en_US','givenName','Mark'),(8,'en_US','preferredPublicName',''),(8,'fr_CA','affiliation',''),(8,'fr_CA','biography',''),(8,'fr_CA','familyName',''),(8,'fr_CA','givenName',''),(8,'fr_CA','preferredPublicName',''),(9,'','country','EG'),(9,'en_US','affiliation','Alexandria University'),(9,'en_US','familyName','Diouf'),(9,'en_US','givenName','Diaga'),(10,'','country','CA'),(10,'en_US','affiliation','University of Toronto'),(10,'en_US','familyName','Phillips'),(10,'en_US','givenName','Dana'),(11,'','country','IE'),(11,'en_US','affiliation','University College Cork'),(11,'en_US','familyName','Sokoloff'),(11,'en_US','givenName','Domatilia'),(12,'','country','US'),(12,'en_US','affiliation','Indiana University'),(12,'en_US','familyName','Ostrom'),(12,'en_US','givenName','Elinor'),(13,'','country','US'),(13,'','orcid',''),(13,'','url',''),(13,'en_US','affiliation','Indiana University'),(13,'en_US','biography',''),(13,'en_US','familyName','van Laerhoven'),(13,'en_US','givenName','Frank'),(13,'en_US','preferredPublicName',''),(13,'fr_CA','affiliation',''),(13,'fr_CA','biography',''),(13,'fr_CA','familyName',''),(13,'fr_CA','givenName',''),(13,'fr_CA','preferredPublicName',''),(14,'','country','IT'),(14,'en_US','affiliation','University of Rome'),(14,'en_US','familyName','Paglieri'),(14,'en_US','givenName','Fabio'),(15,'','country','DK'),(15,'en_US','affiliation','Aalborg University'),(15,'en_US','familyName','Novak'),(15,'en_US','givenName','John'),(16,'','country','US'),(16,'en_US','affiliation','Stanford University'),(16,'en_US','familyName','Al-Khafaji'),(16,'en_US','givenName','Karim'),(17,'','country','US'),(17,'','orcid',''),(17,'','url',''),(17,'en_US','affiliation','Stanford University'),(17,'en_US','biography',''),(17,'en_US','familyName','Morse'),(17,'en_US','givenName','Margaret'),(17,'en_US','preferredPublicName',''),(17,'fr_CA','affiliation',''),(17,'fr_CA','biography',''),(17,'fr_CA','familyName',''),(17,'fr_CA','givenName',''),(17,'fr_CA','preferredPublicName',''),(18,'','country','AU'),(18,'en_US','affiliation','Australian National University'),(18,'en_US','familyName','Christopher'),(18,'en_US','givenName','Leo'),(19,'','country','ZA'),(19,'en_US','affiliation','University of Cape Town'),(19,'en_US','familyName','Kumiega'),(19,'en_US','givenName','Lise'),(20,'','country','GB'),(20,'en_US','affiliation','University of Wolverhampton'),(20,'en_US','familyName','Daniel'),(20,'en_US','givenName','Patricia'),(21,'','country','KE'),(21,'en_US','affiliation','University of Nairobi'),(21,'en_US','familyName','Baiyewu'),(21,'en_US','givenName','Rana'),(22,'','country','ES'),(22,'en_US','affiliation','Barcelona University'),(22,'en_US','familyName','Rossi'),(22,'en_US','givenName','Rosanna'),(23,'','country','IR'),(23,'en_US','affiliation','University of Tehran'),(23,'en_US','familyName','Karbasizaed'),(23,'en_US','givenName','Vajiheh'),(24,'','country','CA'),(24,'en_US','affiliation','University of Windsor'),(24,'en_US','familyName','Williamson'),(24,'en_US','givenName','Valerie'),(25,'','country','US'),(25,'en_US','affiliation','CUNY'),(25,'en_US','familyName','Woods'),(25,'en_US','givenName','Zita');
/*!40000 ALTER TABLE `author_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `author_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(90) NOT NULL,
  `include_in_browse` smallint(6) NOT NULL DEFAULT '1',
  `publication_id` bigint(20) NOT NULL,
  `seq` double(8,2) NOT NULL DEFAULT '0.00',
  `user_group_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`author_id`),
  KEY `authors_user_group_id` (`user_group_id`),
  KEY `authors_publication_id` (`publication_id`),
  CONSTRAINT `authors_publication_id_foreign` FOREIGN KEY (`publication_id`) REFERENCES `publications` (`publication_id`) ON DELETE CASCADE,
  CONSTRAINT `authors_user_group_id_foreign` FOREIGN KEY (`user_group_id`) REFERENCES `user_groups` (`user_group_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'amwandenga@mailinator.com',1,1,0.00,14),(2,'lorem@mailinator.com',1,1,0.00,14),(3,'amwandenga@mailinator.com',1,2,0.00,14),(4,'lorem@mailinator.com',1,2,0.00,14),(5,'ccorino@mailinator.com',1,3,0.00,14),(6,'ckwantes@mailinator.com',1,4,0.00,14),(7,'cmontgomerie@mailinator.com',1,5,0.00,14),(8,'mirvine@mailinator.com',1,5,1.00,14),(9,'ddiouf@mailinator.com',1,6,0.00,14),(10,'dphillips@mailinator.com',1,7,0.00,14),(11,'dsokoloff@mailinator.com',1,8,0.00,14),(12,'eostrom@mailinator.com',1,9,0.00,14),(13,'fvanlaerhoven@mailinator.com',1,9,1.00,14),(14,'fpaglieri@mailinator.com',1,10,0.00,14),(15,'jnovak@mailinator.com',1,11,0.00,14),(16,'kalkhafaji@mailinator.com',1,12,0.00,14),(17,'mmorse@mailinator.com',1,12,1.00,14),(18,'lchristopher@mailinator.com',1,13,0.00,14),(19,'lkumiega@mailinator.com',1,14,0.00,14),(20,'pdaniel@mailinator.com',1,15,0.00,14),(21,'rbaiyewu@mailinator.com',1,16,0.00,14),(22,'rrossi@mailinator.com',1,17,0.00,14),(23,'vkarbasizaed@mailinator.com',1,18,0.00,14),(24,'vwilliamson@mailinator.com',1,19,0.00,14),(25,'zwoods@mailinator.com',1,20,0.00,14);
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `seq` bigint(20) DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `image` text,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_path` (`context_id`,`path`),
  KEY `category_context_id` (`context_id`),
  KEY `category_context_parent_id` (`context_id`,`parent_id`),
  KEY `category_parent_id` (`parent_id`),
  CONSTRAINT `categories_context_id_foreign` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE,
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`category_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,1,NULL,1,'applied-science',NULL),(2,1,1,2,'comp-sci',NULL),(3,1,1,3,'eng',NULL),(4,1,NULL,4,'social-sciences',NULL),(5,1,4,5,'sociology',NULL),(6,1,4,10000,'anthropology',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_settings`
--

DROP TABLE IF EXISTS `category_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_settings` (
  `category_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  UNIQUE KEY `category_settings_pkey` (`category_id`,`locale`,`setting_name`),
  KEY `category_settings_category_id` (`category_id`),
  CONSTRAINT `category_settings_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_settings`
--

LOCK TABLES `category_settings` WRITE;
/*!40000 ALTER TABLE `category_settings` DISABLE KEYS */;
INSERT INTO `category_settings` VALUES (1,'','sortOption','title-ASC'),(1,'en_US','description',''),(1,'en_US','title','Applied Science'),(1,'fr_CA','description',''),(1,'fr_CA','title',''),(2,'','sortOption','title-ASC'),(2,'en_US','description',''),(2,'en_US','title','Computer Science'),(2,'fr_CA','description',''),(2,'fr_CA','title',''),(3,'','sortOption','title-ASC'),(3,'en_US','description',''),(3,'en_US','title','Engineering'),(3,'fr_CA','description',''),(3,'fr_CA','title',''),(4,'','sortOption','title-ASC'),(4,'en_US','description',''),(4,'en_US','title','Social Sciences'),(4,'fr_CA','description',''),(4,'fr_CA','title',''),(5,'','sortOption','title-ASC'),(5,'en_US','description',''),(5,'en_US','title','Sociology'),(5,'fr_CA','description',''),(5,'fr_CA','title',''),(6,'','sortOption','title-ASC'),(6,'en_US','description',''),(6,'en_US','title','Anthropology'),(6,'fr_CA','description',''),(6,'fr_CA','title','');
/*!40000 ALTER TABLE `category_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citation_settings`
--

DROP TABLE IF EXISTS `citation_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citation_settings` (
  `citation_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `citation_settings_pkey` (`citation_id`,`locale`,`setting_name`),
  KEY `citation_settings_citation_id` (`citation_id`),
  CONSTRAINT `citation_settings_citation_id` FOREIGN KEY (`citation_id`) REFERENCES `citations` (`citation_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citation_settings`
--

LOCK TABLES `citation_settings` WRITE;
/*!40000 ALTER TABLE `citation_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `citation_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citations`
--

DROP TABLE IF EXISTS `citations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citations` (
  `citation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `publication_id` bigint(20) NOT NULL,
  `raw_citation` text NOT NULL,
  `seq` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`citation_id`),
  UNIQUE KEY `citations_publication_seq` (`publication_id`,`seq`),
  KEY `citations_publication` (`publication_id`),
  CONSTRAINT `citations_publication` FOREIGN KEY (`publication_id`) REFERENCES `publications` (`publication_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citations`
--

LOCK TABLES `citations` WRITE;
/*!40000 ALTER TABLE `citations` DISABLE KEYS */;
/*!40000 ALTER TABLE `citations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `completed_payments`
--

DROP TABLE IF EXISTS `completed_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `completed_payments` (
  `completed_payment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `payment_type` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `currency_code_alpha` varchar(3) DEFAULT NULL,
  `payment_method_plugin_name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`completed_payment_id`),
  KEY `completed_payments_context_id` (`context_id`),
  KEY `completed_payments_user_id` (`user_id`),
  CONSTRAINT `completed_payments_context_id` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE,
  CONSTRAINT `completed_payments_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `completed_payments`
--

LOCK TABLES `completed_payments` WRITE;
/*!40000 ALTER TABLE `completed_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `completed_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controlled_vocab_entries`
--

DROP TABLE IF EXISTS `controlled_vocab_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controlled_vocab_entries` (
  `controlled_vocab_entry_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `controlled_vocab_id` bigint(20) NOT NULL,
  `seq` double(8,2) DEFAULT NULL,
  PRIMARY KEY (`controlled_vocab_entry_id`),
  KEY `controlled_vocab_entries_controlled_vocab_id` (`controlled_vocab_id`),
  KEY `controlled_vocab_entries_cv_id` (`controlled_vocab_id`,`seq`),
  CONSTRAINT `controlled_vocab_entries_controlled_vocab_id_foreign` FOREIGN KEY (`controlled_vocab_id`) REFERENCES `controlled_vocabs` (`controlled_vocab_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controlled_vocab_entries`
--

LOCK TABLES `controlled_vocab_entries` WRITE;
/*!40000 ALTER TABLE `controlled_vocab_entries` DISABLE KEYS */;
INSERT INTO `controlled_vocab_entries` VALUES (15,2,1.00),(16,2,2.00),(29,7,1.00),(30,7,2.00),(33,12,1.00),(34,12,2.00),(35,12,3.00),(36,12,4.00),(37,17,1.00),(38,17,2.00),(39,22,1.00),(40,22,2.00),(41,22,3.00),(42,22,4.00),(43,22,5.00),(44,22,6.00),(45,22,7.00),(46,37,1.00),(47,37,2.00),(48,42,1.00),(49,42,2.00),(50,42,3.00),(51,52,1.00),(52,57,1.00),(53,57,2.00),(54,57,3.00),(55,57,4.00),(56,62,1.00),(57,62,2.00),(58,67,1.00),(59,72,1.00),(60,72,2.00),(61,72,3.00),(62,72,4.00),(63,72,5.00),(64,72,6.00),(65,72,7.00),(66,72,8.00),(67,72,9.00),(68,72,10.00),(69,82,1.00),(70,82,2.00),(71,92,1.00),(72,92,2.00),(73,92,3.00);
/*!40000 ALTER TABLE `controlled_vocab_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controlled_vocab_entry_settings`
--

DROP TABLE IF EXISTS `controlled_vocab_entry_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controlled_vocab_entry_settings` (
  `controlled_vocab_entry_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `c_v_e_s_pkey` (`controlled_vocab_entry_id`,`locale`,`setting_name`),
  KEY `c_v_e_s_entry_id` (`controlled_vocab_entry_id`),
  CONSTRAINT `c_v_e_s_entry_id` FOREIGN KEY (`controlled_vocab_entry_id`) REFERENCES `controlled_vocab_entries` (`controlled_vocab_entry_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controlled_vocab_entry_settings`
--

LOCK TABLES `controlled_vocab_entry_settings` WRITE;
/*!40000 ALTER TABLE `controlled_vocab_entry_settings` DISABLE KEYS */;
INSERT INTO `controlled_vocab_entry_settings` VALUES (15,'en_US','submissionKeyword','Professional Development','string'),(16,'en_US','submissionKeyword','Social Transformation','string'),(29,'en_US','submissionKeyword','Professional Development','string'),(30,'en_US','submissionKeyword','Social Transformation','string'),(33,'en_US','submissionKeyword','pigs','string'),(34,'en_US','submissionKeyword','food security','string'),(35,'en_US','submissionKeyword','Professional Development','string'),(36,'en_US','submissionKeyword','Social Transformation','string'),(37,'en_US','submissionKeyword','employees','string'),(38,'en_US','submissionKeyword','survey','string'),(39,'en_US','submissionKeyword','Integrating Technology','string'),(40,'en_US','submissionKeyword','Computer Skills','string'),(41,'en_US','submissionKeyword','Survey','string'),(42,'en_US','submissionKeyword','Alberta','string'),(43,'en_US','submissionKeyword','National','string'),(44,'en_US','submissionKeyword','Provincial','string'),(45,'en_US','submissionKeyword','Professional Development','string'),(46,'en_US','submissionKeyword','education','string'),(47,'en_US','submissionKeyword','citizenship','string'),(48,'en_US','submissionKeyword','Common pool resource','string'),(49,'en_US','submissionKeyword','common property','string'),(50,'en_US','submissionKeyword','intellectual developments','string'),(51,'en_US','submissionKeyword','water','string'),(52,'en_US','submissionKeyword','Development','string'),(53,'en_US','submissionKeyword','engineering education','string'),(54,'en_US','submissionKeyword','service learning','string'),(55,'en_US','submissionKeyword','sustainability','string'),(56,'en_US','submissionKeyword','pigs','string'),(57,'en_US','submissionKeyword','food security','string'),(58,'en_US','submissionKeyword','water','string'),(59,'en_US','submissionKeyword','21st Century','string'),(60,'en_US','submissionKeyword','Diversity','string'),(61,'en_US','submissionKeyword','Multilingual','string'),(62,'en_US','submissionKeyword','Multiethnic','string'),(63,'en_US','submissionKeyword','Participatory Pedagogy','string'),(64,'en_US','submissionKeyword','Language','string'),(65,'en_US','submissionKeyword','Culture','string'),(66,'en_US','submissionKeyword','Gender','string'),(67,'en_US','submissionKeyword','Egalitarianism','string'),(68,'en_US','submissionKeyword','Social Transformation','string'),(69,'en_US','submissionKeyword','cattle','string'),(70,'en_US','submissionKeyword','food security','string'),(71,'en_US','submissionKeyword','Self-Organization','string'),(72,'en_US','submissionKeyword','Multi-Level Institutions','string'),(73,'en_US','submissionKeyword','Goverance','string');
/*!40000 ALTER TABLE `controlled_vocab_entry_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controlled_vocabs`
--

DROP TABLE IF EXISTS `controlled_vocabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controlled_vocabs` (
  `controlled_vocab_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `symbolic` varchar(64) NOT NULL,
  `assoc_type` bigint(20) NOT NULL DEFAULT '0',
  `assoc_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`controlled_vocab_id`),
  UNIQUE KEY `controlled_vocab_symbolic` (`symbolic`,`assoc_type`,`assoc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controlled_vocabs`
--

LOCK TABLES `controlled_vocabs` WRITE;
/*!40000 ALTER TABLE `controlled_vocabs` DISABLE KEYS */;
INSERT INTO `controlled_vocabs` VALUES (1,'interest',0,0),(6,'submissionAgency',1048588,1),(11,'submissionAgency',1048588,2),(16,'submissionAgency',1048588,3),(21,'submissionAgency',1048588,4),(26,'submissionAgency',1048588,5),(31,'submissionAgency',1048588,6),(36,'submissionAgency',1048588,7),(41,'submissionAgency',1048588,8),(46,'submissionAgency',1048588,9),(51,'submissionAgency',1048588,10),(56,'submissionAgency',1048588,11),(61,'submissionAgency',1048588,12),(66,'submissionAgency',1048588,13),(71,'submissionAgency',1048588,14),(76,'submissionAgency',1048588,15),(81,'submissionAgency',1048588,16),(86,'submissionAgency',1048588,17),(91,'submissionAgency',1048588,18),(96,'submissionAgency',1048588,19),(101,'submissionAgency',1048588,20),(4,'submissionDiscipline',1048588,1),(9,'submissionDiscipline',1048588,2),(14,'submissionDiscipline',1048588,3),(19,'submissionDiscipline',1048588,4),(24,'submissionDiscipline',1048588,5),(29,'submissionDiscipline',1048588,6),(34,'submissionDiscipline',1048588,7),(39,'submissionDiscipline',1048588,8),(44,'submissionDiscipline',1048588,9),(49,'submissionDiscipline',1048588,10),(54,'submissionDiscipline',1048588,11),(59,'submissionDiscipline',1048588,12),(64,'submissionDiscipline',1048588,13),(69,'submissionDiscipline',1048588,14),(74,'submissionDiscipline',1048588,15),(79,'submissionDiscipline',1048588,16),(84,'submissionDiscipline',1048588,17),(89,'submissionDiscipline',1048588,18),(94,'submissionDiscipline',1048588,19),(99,'submissionDiscipline',1048588,20),(2,'submissionKeyword',1048588,1),(7,'submissionKeyword',1048588,2),(12,'submissionKeyword',1048588,3),(17,'submissionKeyword',1048588,4),(22,'submissionKeyword',1048588,5),(27,'submissionKeyword',1048588,6),(32,'submissionKeyword',1048588,7),(37,'submissionKeyword',1048588,8),(42,'submissionKeyword',1048588,9),(47,'submissionKeyword',1048588,10),(52,'submissionKeyword',1048588,11),(57,'submissionKeyword',1048588,12),(62,'submissionKeyword',1048588,13),(67,'submissionKeyword',1048588,14),(72,'submissionKeyword',1048588,15),(77,'submissionKeyword',1048588,16),(82,'submissionKeyword',1048588,17),(87,'submissionKeyword',1048588,18),(92,'submissionKeyword',1048588,19),(97,'submissionKeyword',1048588,20),(5,'submissionLanguage',1048588,1),(10,'submissionLanguage',1048588,2),(15,'submissionLanguage',1048588,3),(20,'submissionLanguage',1048588,4),(25,'submissionLanguage',1048588,5),(30,'submissionLanguage',1048588,6),(35,'submissionLanguage',1048588,7),(40,'submissionLanguage',1048588,8),(45,'submissionLanguage',1048588,9),(50,'submissionLanguage',1048588,10),(55,'submissionLanguage',1048588,11),(60,'submissionLanguage',1048588,12),(65,'submissionLanguage',1048588,13),(70,'submissionLanguage',1048588,14),(75,'submissionLanguage',1048588,15),(80,'submissionLanguage',1048588,16),(85,'submissionLanguage',1048588,17),(90,'submissionLanguage',1048588,18),(95,'submissionLanguage',1048588,19),(100,'submissionLanguage',1048588,20),(3,'submissionSubject',1048588,1),(8,'submissionSubject',1048588,2),(13,'submissionSubject',1048588,3),(18,'submissionSubject',1048588,4),(23,'submissionSubject',1048588,5),(28,'submissionSubject',1048588,6),(33,'submissionSubject',1048588,7),(38,'submissionSubject',1048588,8),(43,'submissionSubject',1048588,9),(48,'submissionSubject',1048588,10),(53,'submissionSubject',1048588,11),(58,'submissionSubject',1048588,12),(63,'submissionSubject',1048588,13),(68,'submissionSubject',1048588,14),(73,'submissionSubject',1048588,15),(78,'submissionSubject',1048588,16),(83,'submissionSubject',1048588,17),(88,'submissionSubject',1048588,18),(93,'submissionSubject',1048588,19),(98,'submissionSubject',1048588,20);
/*!40000 ALTER TABLE `controlled_vocabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_issue_orders`
--

DROP TABLE IF EXISTS `custom_issue_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_issue_orders` (
  `issue_id` bigint(20) NOT NULL,
  `journal_id` bigint(20) NOT NULL,
  `seq` double(8,2) NOT NULL DEFAULT '0.00',
  UNIQUE KEY `custom_issue_orders_pkey` (`issue_id`),
  KEY `custom_issue_orders_issue_id` (`issue_id`),
  KEY `custom_issue_orders_journal_id` (`journal_id`),
  CONSTRAINT `custom_issue_orders_issue_id` FOREIGN KEY (`issue_id`) REFERENCES `issues` (`issue_id`) ON DELETE CASCADE,
  CONSTRAINT `custom_issue_orders_journal_id` FOREIGN KEY (`journal_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_issue_orders`
--

LOCK TABLES `custom_issue_orders` WRITE;
/*!40000 ALTER TABLE `custom_issue_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_issue_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_section_orders`
--

DROP TABLE IF EXISTS `custom_section_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_section_orders` (
  `issue_id` bigint(20) NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `seq` double(8,2) NOT NULL DEFAULT '0.00',
  UNIQUE KEY `custom_section_orders_pkey` (`issue_id`,`section_id`),
  KEY `custom_section_orders_issue_id` (`issue_id`),
  KEY `custom_section_orders_section_id` (`section_id`),
  CONSTRAINT `custom_section_orders_issue_id` FOREIGN KEY (`issue_id`) REFERENCES `issues` (`issue_id`) ON DELETE CASCADE,
  CONSTRAINT `custom_section_orders_section_id` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_section_orders`
--

LOCK TABLES `custom_section_orders` WRITE;
/*!40000 ALTER TABLE `custom_section_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_section_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_object_tombstone_oai_set_objects`
--

DROP TABLE IF EXISTS `data_object_tombstone_oai_set_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_object_tombstone_oai_set_objects` (
  `object_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tombstone_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  PRIMARY KEY (`object_id`),
  KEY `data_object_tombstone_oai_set_objects_tombstone_id` (`tombstone_id`),
  CONSTRAINT `data_object_tombstone_oai_set_objects_tombstone_id` FOREIGN KEY (`tombstone_id`) REFERENCES `data_object_tombstones` (`tombstone_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_object_tombstone_oai_set_objects`
--

LOCK TABLES `data_object_tombstone_oai_set_objects` WRITE;
/*!40000 ALTER TABLE `data_object_tombstone_oai_set_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_object_tombstone_oai_set_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_object_tombstone_settings`
--

DROP TABLE IF EXISTS `data_object_tombstone_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_object_tombstone_settings` (
  `tombstone_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)',
  UNIQUE KEY `data_object_tombstone_settings_pkey` (`tombstone_id`,`locale`,`setting_name`),
  KEY `data_object_tombstone_settings_tombstone_id` (`tombstone_id`),
  CONSTRAINT `data_object_tombstone_settings_tombstone_id` FOREIGN KEY (`tombstone_id`) REFERENCES `data_object_tombstones` (`tombstone_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_object_tombstone_settings`
--

LOCK TABLES `data_object_tombstone_settings` WRITE;
/*!40000 ALTER TABLE `data_object_tombstone_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_object_tombstone_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_object_tombstones`
--

DROP TABLE IF EXISTS `data_object_tombstones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_object_tombstones` (
  `tombstone_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data_object_id` bigint(20) NOT NULL,
  `date_deleted` datetime NOT NULL,
  `set_spec` varchar(255) NOT NULL,
  `set_name` varchar(255) NOT NULL,
  `oai_identifier` varchar(255) NOT NULL,
  PRIMARY KEY (`tombstone_id`),
  KEY `data_object_tombstones_data_object_id` (`data_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_object_tombstones`
--

LOCK TABLES `data_object_tombstones` WRITE;
/*!40000 ALTER TABLE `data_object_tombstones` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_object_tombstones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doi_settings`
--

DROP TABLE IF EXISTS `doi_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doi_settings` (
  `doi_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  UNIQUE KEY `doi_settings_pkey` (`doi_id`,`locale`,`setting_name`),
  KEY `doi_settings_doi_id` (`doi_id`),
  CONSTRAINT `doi_settings_doi_id_foreign` FOREIGN KEY (`doi_id`) REFERENCES `dois` (`doi_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doi_settings`
--

LOCK TABLES `doi_settings` WRITE;
/*!40000 ALTER TABLE `doi_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `doi_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dois`
--

DROP TABLE IF EXISTS `dois`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dois` (
  `doi_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `doi` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`doi_id`),
  KEY `dois_context_id` (`context_id`),
  CONSTRAINT `dois_context_id_foreign` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dois`
--

LOCK TABLES `dois` WRITE;
/*!40000 ALTER TABLE `dois` DISABLE KEYS */;
/*!40000 ALTER TABLE `dois` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edit_decisions`
--

DROP TABLE IF EXISTS `edit_decisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edit_decisions` (
  `edit_decision_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) NOT NULL,
  `review_round_id` bigint(20) DEFAULT NULL,
  `stage_id` bigint(20) DEFAULT NULL,
  `round` smallint(6) DEFAULT NULL,
  `editor_id` bigint(20) NOT NULL,
  `decision` smallint(6) NOT NULL,
  `date_decided` datetime NOT NULL,
  PRIMARY KEY (`edit_decision_id`),
  KEY `edit_decisions_submission_id` (`submission_id`),
  KEY `edit_decisions_editor_id` (`editor_id`),
  KEY `edit_decisions_review_round_id` (`review_round_id`),
  CONSTRAINT `edit_decisions_editor_id` FOREIGN KEY (`editor_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `edit_decisions_review_round_id_foreign` FOREIGN KEY (`review_round_id`) REFERENCES `review_rounds` (`review_round_id`) ON DELETE CASCADE,
  CONSTRAINT `edit_decisions_submission_id` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`submission_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edit_decisions`
--

LOCK TABLES `edit_decisions` WRITE;
/*!40000 ALTER TABLE `edit_decisions` DISABLE KEYS */;
INSERT INTO `edit_decisions` VALUES (1,1,NULL,1,NULL,3,3,'2022-10-26 06:53:14'),(2,1,1,3,1,3,2,'2022-10-26 06:53:40'),(3,1,NULL,4,NULL,3,7,'2022-10-26 06:53:52'),(4,2,NULL,1,NULL,3,3,'2022-10-26 06:56:42'),(5,2,2,3,1,6,9,'2022-10-26 06:57:05'),(6,3,NULL,1,NULL,3,3,'2022-10-26 06:57:43'),(7,3,3,3,1,3,2,'2022-10-26 06:58:04'),(8,5,NULL,1,NULL,3,3,'2022-10-26 06:59:00'),(9,5,4,3,1,3,2,'2022-10-26 06:59:21'),(10,5,NULL,4,NULL,3,7,'2022-10-26 06:59:33'),(11,6,NULL,1,NULL,3,3,'2022-10-26 07:00:15'),(12,6,5,3,1,3,2,'2022-10-26 07:00:37'),(13,6,NULL,4,NULL,3,7,'2022-10-26 07:00:50'),(14,7,NULL,1,NULL,3,3,'2022-10-26 07:01:26'),(15,9,NULL,1,NULL,3,3,'2022-10-26 07:02:49'),(16,9,7,3,1,3,2,'2022-10-26 07:03:10'),(17,9,NULL,4,NULL,3,7,'2022-10-26 07:03:23'),(18,10,NULL,1,NULL,3,3,'2022-10-26 07:04:06'),(19,12,NULL,1,NULL,3,3,'2022-10-26 07:05:35'),(20,13,NULL,1,NULL,3,3,'2022-10-26 07:06:23'),(21,13,10,3,1,3,4,'2022-10-26 07:07:41'),(22,15,NULL,1,NULL,3,3,'2022-10-26 07:08:32'),(23,15,11,3,1,3,2,'2022-10-26 07:08:53'),(24,15,NULL,4,NULL,3,7,'2022-10-26 07:09:06'),(25,17,NULL,1,NULL,3,3,'2022-10-26 07:10:02'),(26,17,12,3,1,3,2,'2022-10-26 07:10:23'),(27,17,NULL,4,NULL,3,7,'2022-10-26 07:10:36'),(28,18,NULL,1,NULL,3,8,'2022-10-26 07:12:58'),(29,19,NULL,1,NULL,3,3,'2022-10-26 07:13:31'),(30,19,13,3,1,3,2,'2022-10-26 07:13:52');
/*!40000 ALTER TABLE `edit_decisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_log`
--

DROP TABLE IF EXISTS `email_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `sender_id` bigint(20) NOT NULL,
  `date_sent` datetime NOT NULL,
  `event_type` bigint(20) DEFAULT NULL,
  `from_address` varchar(255) DEFAULT NULL,
  `recipients` text,
  `cc_recipients` text,
  `bcc_recipients` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  PRIMARY KEY (`log_id`),
  KEY `email_log_assoc` (`assoc_type`,`assoc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_log`
--

LOCK TABLES `email_log` WRITE;
/*!40000 ALTER TABLE `email_log` DISABLE KEYS */;
INSERT INTO `email_log` VALUES (1,1048585,1,0,'2022-10-26 06:53:04',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Alan Mwandenga\" <amwandenga@mailinator.com>','','\"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','Thank you for your submission to {$journalName}','<p>Dear Alan Mwandenga,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/1</p><p>If you have been logged out, you can login again with the username amwandenga</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/1\">submission dashboard</a>.</p><p>Thank you for considering this journal as a venue for your work.</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(2,1048585,1,3,'2022-10-26 06:53:14',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Alan Mwandenga\" <amwandenga@mailinator.com>','','','Your submission has been sent for review','<p>Dear Alan Mwandenga,</p><p>I am pleased to inform you that an editor has reviewed your submission, Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers\' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers\' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>'),(3,1048585,1,3,'2022-10-26 06:53:40',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Alan Mwandenga\" <amwandenga@mailinator.com>','','','Your submission has been accepted to Journal of Public Knowledge','<p>Dear Alan Mwandenga,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence, to meet or exceed our expectations. We are excited to publish your piece in Journal of Public Knowledge and we thank you for choosing our journal as a venue for your work.</p><p>Your submission is now forthcoming in a future issue of Journal of Public Knowledge and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/1\">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>'),(4,1048585,1,3,'2022-10-26 06:53:52',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Alan Mwandenga\" <amwandenga@mailinator.com>','','','Next steps for publishing your submission','<p>Dear Alan Mwandenga,</p><p>I am writing from Journal of Public Knowledge to let you know that the editing of your submission, Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence, is complete. Your submission will now advance to the production stage, where the final galleys will be prepared for publication. We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/1\">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>'),(5,1048585,2,0,'2022-10-26 06:56:32',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Carlo Corino\" <ccorino@mailinator.com>','','\"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','Thank you for your submission to {$journalName}','<p>Dear Carlo Corino,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, The influence of lactation on the quantity and quality of cashmere production, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/2</p><p>If you have been logged out, you can login again with the username ccorino</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/2\">submission dashboard</a>.</p><p>Thank you for considering this journal as a venue for your work.</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(6,1048585,2,3,'2022-10-26 06:56:42',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Carlo Corino\" <ccorino@mailinator.com>','','','Your submission has been sent for review','<p>Dear Carlo Corino,</p><p>I am pleased to inform you that an editor has reviewed your submission, The influence of lactation on the quantity and quality of cashmere production, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers\' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers\' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>'),(7,1048585,3,0,'2022-10-26 06:57:33',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Catherine Kwantes\" <ckwantes@mailinator.com>','','\"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','Thank you for your submission to {$journalName}','<p>Dear Catherine Kwantes,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/3</p><p>If you have been logged out, you can login again with the username ckwantes</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/3\">submission dashboard</a>.</p><p>Thank you for considering this journal as a venue for your work.</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(8,1048585,3,3,'2022-10-26 06:57:43',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Catherine Kwantes\" <ckwantes@mailinator.com>','','','Your submission has been sent for review','<p>Dear Catherine Kwantes,</p><p>I am pleased to inform you that an editor has reviewed your submission, The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers\' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers\' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>'),(9,1048585,3,3,'2022-10-26 06:58:05',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Catherine Kwantes\" <ckwantes@mailinator.com>','','','Your submission has been accepted to Journal of Public Knowledge','<p>Dear Catherine Kwantes,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence, to meet or exceed our expectations. We are excited to publish your piece in Journal of Public Knowledge and we thank you for choosing our journal as a venue for your work.</p><p>Your submission is now forthcoming in a future issue of Journal of Public Knowledge and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/3\">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>'),(10,1048585,4,0,'2022-10-26 06:58:33',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Craig Montgomerie\" <cmontgomerie@mailinator.com>','','\"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','Thank you for your submission to {$journalName}','<p>Dear Craig Montgomerie,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/4</p><p>If you have been logged out, you can login again with the username cmontgomerie</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/4\">submission dashboard</a>.</p><p>Thank you for considering this journal as a venue for your work.</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(11,1048585,4,0,'2022-10-26 06:58:33',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Mark Irvine\" <mirvine@mailinator.com>','','','Submission confirmation','<p>Dear Mark Irvine,</p><p>You have been named as a co-author on a submission to Journal of Public Knowledge. The submitter, Craig Montgomerie, provided the following details:</p><p>Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice<br>{$authorsWithAffiliation}</p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering this journal as a venue for your work.</p><p>Kind regards,</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(12,1048585,5,0,'2022-10-26 06:58:49',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Diaga Diouf\" <ddiouf@mailinator.com>','','\"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','Thank you for your submission to {$journalName}','<p>Dear Diaga Diouf,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Genetic transformation of forest trees, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/5</p><p>If you have been logged out, you can login again with the username ddiouf</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/5\">submission dashboard</a>.</p><p>Thank you for considering this journal as a venue for your work.</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(13,1048585,5,3,'2022-10-26 06:59:00',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Diaga Diouf\" <ddiouf@mailinator.com>','','','Your submission has been sent for review','<p>Dear Diaga Diouf,</p><p>I am pleased to inform you that an editor has reviewed your submission, Genetic transformation of forest trees, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers\' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers\' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>'),(14,1048585,5,3,'2022-10-26 06:59:21',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Diaga Diouf\" <ddiouf@mailinator.com>','','','Your submission has been accepted to Journal of Public Knowledge','<p>Dear Diaga Diouf,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, Genetic transformation of forest trees, to meet or exceed our expectations. We are excited to publish your piece in Journal of Public Knowledge and we thank you for choosing our journal as a venue for your work.</p><p>Your submission is now forthcoming in a future issue of Journal of Public Knowledge and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/5\">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>'),(15,1048585,5,3,'2022-10-26 06:59:33',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Diaga Diouf\" <ddiouf@mailinator.com>','','','Next steps for publishing your submission','<p>Dear Diaga Diouf,</p><p>I am writing from Journal of Public Knowledge to let you know that the editing of your submission, Genetic transformation of forest trees, is complete. Your submission will now advance to the production stage, where the final galleys will be prepared for publication. We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/5\">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>'),(16,1048585,6,0,'2022-10-26 07:00:04',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Dana Phillips\" <dphillips@mailinator.com>','','\"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','Thank you for your submission to {$journalName}','<p>Dear Dana Phillips,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/6</p><p>If you have been logged out, you can login again with the username dphillips</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/6\">submission dashboard</a>.</p><p>Thank you for considering this journal as a venue for your work.</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(17,1048585,6,3,'2022-10-26 07:00:15',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Dana Phillips\" <dphillips@mailinator.com>','','','Your submission has been sent for review','<p>Dear Dana Phillips,</p><p>I am pleased to inform you that an editor has reviewed your submission, Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers\' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers\' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>'),(18,1048585,6,3,'2022-10-26 07:00:37',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Dana Phillips\" <dphillips@mailinator.com>','','','Your submission has been accepted to Journal of Public Knowledge','<p>Dear Dana Phillips,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement, to meet or exceed our expectations. We are excited to publish your piece in Journal of Public Knowledge and we thank you for choosing our journal as a venue for your work.</p><p>Your submission is now forthcoming in a future issue of Journal of Public Knowledge and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/6\">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>'),(19,1048585,6,3,'2022-10-26 07:00:50',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Dana Phillips\" <dphillips@mailinator.com>','','','Next steps for publishing your submission','<p>Dear Dana Phillips,</p><p>I am writing from Journal of Public Knowledge to let you know that the editing of your submission, Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement, is complete. Your submission will now advance to the production stage, where the final galleys will be prepared for publication. We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/6\">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>'),(20,1048585,7,0,'2022-10-26 07:01:15',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Domatilia Sokoloff\" <dsokoloff@mailinator.com>','','\"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','Thank you for your submission to {$journalName}','<p>Dear Domatilia Sokoloff,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Developing efficacy beliefs in the classroom, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/7</p><p>If you have been logged out, you can login again with the username dsokoloff</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/7\">submission dashboard</a>.</p><p>Thank you for considering this journal as a venue for your work.</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(21,1048585,7,3,'2022-10-26 07:01:26',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Domatilia Sokoloff\" <dsokoloff@mailinator.com>','','','Your submission has been sent for review','<p>Dear Domatilia Sokoloff,</p><p>I am pleased to inform you that an editor has reviewed your submission, Developing efficacy beliefs in the classroom, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers\' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers\' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>'),(22,1048585,7,8,'2022-10-26 07:01:57',1073741829,'\"Paul Hudson\" <phudson@mailinator.com>','\"Daniel Barnes\" <dbarnes@mailinator.com>, \"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','','','Able to Review','Editors:<br />\n<br />\nI am able and willing to review the submission, &quot;Developing efficacy beliefs in the classroom,&quot; for Journal of Public Knowledge. Thank you for thinking of me, and I plan to have the review completed by its due date, 2022-11-23, if not before.<br />\n<br />\nPaul Hudson'),(23,1048585,8,0,'2022-10-26 07:02:21',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Elinor Ostrom\" <eostrom@mailinator.com>','','\"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','Thank you for your submission to {$journalName}','<p>Dear Elinor Ostrom,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Traditions and Trends in the Study of the Commons, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/8</p><p>If you have been logged out, you can login again with the username eostrom</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/8\">submission dashboard</a>.</p><p>Thank you for considering this journal as a venue for your work.</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(24,1048585,8,0,'2022-10-26 07:02:21',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Frank van Laerhoven\" <fvanlaerhoven@mailinator.com>','','','Submission confirmation','<p>Dear Frank van Laerhoven,</p><p>You have been named as a co-author on a submission to Journal of Public Knowledge. The submitter, Elinor Ostrom, provided the following details:</p><p>Traditions and Trends in the Study of the Commons<br>{$authorsWithAffiliation}</p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering this journal as a venue for your work.</p><p>Kind regards,</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(25,1048585,9,0,'2022-10-26 07:02:37',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Fabio Paglieri\" <fpaglieri@mailinator.com>','','\"Minoti Inoue\" <minoue@mailinator.com>','Thank you for your submission to {$journalName}','<p>Dear Fabio Paglieri,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Hansen & Pinto: Reason Reclaimed, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/9</p><p>If you have been logged out, you can login again with the username fpaglieri</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/9\">submission dashboard</a>.</p><p>Thank you for considering this journal as a venue for your work.</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(26,1048585,9,3,'2022-10-26 07:02:49',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Fabio Paglieri\" <fpaglieri@mailinator.com>','','','Your submission has been sent for review','<p>Dear Fabio Paglieri,</p><p>I am pleased to inform you that an editor has reviewed your submission, Hansen & Pinto: Reason Reclaimed, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers\' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers\' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>'),(27,1048585,9,3,'2022-10-26 07:03:11',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Fabio Paglieri\" <fpaglieri@mailinator.com>','','','Your submission has been accepted to Journal of Public Knowledge','<p>Dear Fabio Paglieri,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, Hansen & Pinto: Reason Reclaimed, to meet or exceed our expectations. We are excited to publish your piece in Journal of Public Knowledge and we thank you for choosing our journal as a venue for your work.</p><p>Your submission is now forthcoming in a future issue of Journal of Public Knowledge and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/9\">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>'),(28,1048585,9,3,'2022-10-26 07:03:23',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Fabio Paglieri\" <fpaglieri@mailinator.com>','','','Next steps for publishing your submission','<p>Dear Fabio Paglieri,</p><p>I am writing from Journal of Public Knowledge to let you know that the editing of your submission, Hansen & Pinto: Reason Reclaimed, is complete. Your submission will now advance to the production stage, where the final galleys will be prepared for publication. We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/9\">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>'),(29,1048585,10,0,'2022-10-26 07:03:54',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"John Novak\" <jnovak@mailinator.com>','','\"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','Thank you for your submission to {$journalName}','<p>Dear John Novak,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Condensing Water Availability Models to Focus on Specific Water Management Systems, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/10</p><p>If you have been logged out, you can login again with the username jnovak</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/10\">submission dashboard</a>.</p><p>Thank you for considering this journal as a venue for your work.</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(30,1048585,10,3,'2022-10-26 07:04:06',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"John Novak\" <jnovak@mailinator.com>','','','Your submission has been sent for review','<p>Dear John Novak,</p><p>I am pleased to inform you that an editor has reviewed your submission, Condensing Water Availability Models to Focus on Specific Water Management Systems, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers\' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers\' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>'),(31,1048585,10,9,'2022-10-26 07:04:29',1073741829,'\"Aisla McCrae\" <amccrae@mailinator.com>','\"Daniel Barnes\" <dbarnes@mailinator.com>, \"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','','','Able to Review','Editors:<br />\n<br />\nI am able and willing to review the submission, &quot;Condensing Water Availability Models to Focus on Specific Water Management Systems,&quot; for Journal of Public Knowledge. Thank you for thinking of me, and I plan to have the review completed by its due date, 2022-11-23, if not before.<br />\n<br />\nAisla McCrae'),(32,1048585,10,10,'2022-10-26 07:04:40',1073741829,'\"Adela Gallego\" <agallego@mailinator.com>','\"Daniel Barnes\" <dbarnes@mailinator.com>, \"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','','','Able to Review','Editors:<br />\n<br />\nI am able and willing to review the submission, &quot;Condensing Water Availability Models to Focus on Specific Water Management Systems,&quot; for Journal of Public Knowledge. Thank you for thinking of me, and I plan to have the review completed by its due date, 2022-11-23, if not before.<br />\n<br />\nAdela Gallego'),(33,1048585,11,0,'2022-10-26 07:05:05',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Karim Al-Khafaji\" <kalkhafaji@mailinator.com>','','\"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','Thank you for your submission to {$journalName}','<p>Dear Karim Al-Khafaji,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Learning Sustainable Design through Service, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/11</p><p>If you have been logged out, you can login again with the username kalkhafaji</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/11\">submission dashboard</a>.</p><p>Thank you for considering this journal as a venue for your work.</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(34,1048585,11,0,'2022-10-26 07:05:05',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Margaret Morse\" <mmorse@mailinator.com>','','','Submission confirmation','<p>Dear Margaret Morse,</p><p>You have been named as a co-author on a submission to Journal of Public Knowledge. The submitter, Karim Al-Khafaji, provided the following details:</p><p>Learning Sustainable Design through Service<br>{$authorsWithAffiliation}</p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering this journal as a venue for your work.</p><p>Kind regards,</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(35,1048585,12,0,'2022-10-26 07:05:22',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Leo Christopher\" <lchristopher@mailinator.com>','','\"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','Thank you for your submission to {$journalName}','<p>Dear Leo Christopher,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Sodium butyrate improves growth performance of weaned piglets during the first period after weaning, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/12</p><p>If you have been logged out, you can login again with the username lchristopher</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/12\">submission dashboard</a>.</p><p>Thank you for considering this journal as a venue for your work.</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(36,1048585,12,3,'2022-10-26 07:05:35',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Leo Christopher\" <lchristopher@mailinator.com>','','','Your submission has been sent for review','<p>Dear Leo Christopher,</p><p>I am pleased to inform you that an editor has reviewed your submission, Sodium butyrate improves growth performance of weaned piglets during the first period after weaning, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers\' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers\' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>'),(37,1048585,13,0,'2022-10-26 07:06:10',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Lise Kumiega\" <lkumiega@mailinator.com>','','\"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','Thank you for your submission to {$journalName}','<p>Dear Lise Kumiega,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/13</p><p>If you have been logged out, you can login again with the username lkumiega</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/13\">submission dashboard</a>.</p><p>Thank you for considering this journal as a venue for your work.</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(38,1048585,13,3,'2022-10-26 07:06:23',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Lise Kumiega\" <lkumiega@mailinator.com>','','','Your submission has been sent for review','<p>Dear Lise Kumiega,</p><p>I am pleased to inform you that an editor has reviewed your submission, Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers\' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers\' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>'),(39,1048585,13,7,'2022-10-26 07:06:53',1073741829,'\"Julie Janssen\" <jjanssen@mailinator.com>','\"Daniel Barnes\" <dbarnes@mailinator.com>, \"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','','','Able to Review','Editors:<br />\n<br />\nI am able and willing to review the submission, &quot;Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions,&quot; for Journal of Public Knowledge. Thank you for thinking of me, and I plan to have the review completed by its due date, 2022-11-23, if not before.<br />\n<br />\nJulie Janssen'),(40,1048585,13,9,'2022-10-26 07:07:05',1073741829,'\"Aisla McCrae\" <amccrae@mailinator.com>','\"Daniel Barnes\" <dbarnes@mailinator.com>, \"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','','','Able to Review','Editors:<br />\n<br />\nI am able and willing to review the submission, &quot;Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions,&quot; for Journal of Public Knowledge. Thank you for thinking of me, and I plan to have the review completed by its due date, 2022-11-23, if not before.<br />\n<br />\nAisla McCrae'),(41,1048585,13,10,'2022-10-26 07:07:16',1073741829,'\"Adela Gallego\" <agallego@mailinator.com>','\"Daniel Barnes\" <dbarnes@mailinator.com>, \"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','','','Able to Review','Editors:<br />\n<br />\nI am able and willing to review the submission, &quot;Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions,&quot; for Journal of Public Knowledge. Thank you for thinking of me, and I plan to have the review completed by its due date, 2022-11-23, if not before.<br />\n<br />\nAdela Gallego'),(42,1048585,13,3,'2022-10-26 07:07:41',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Lise Kumiega\" <lkumiega@mailinator.com>','','','Your submission has been reviewed and we encourage you to submit revisions','<p>Dear Lise Kumiega,</p><p>Your submission Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions has been reviewed and we would like to encourage you to submit revisions that address the reviewers\' comments. An editor will review these revisions and if they address the concerns adequately, your submission may be accepted for publication.</p><p>The reviewers\' comments are included at the bottom of this email. Please respond to each point in the reviewers\' comments and identify what changes you have made. If you find any of the reviewer\'s comments to be unjustified or inappropriate, please explain your perspective.</p><p>When you have completed your revisions, you can upload revised documents along with your response to the reviewers\' comments at your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/13\">submission dashboard</a>. If you have been logged out, you can login again with the username lkumiega.</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/13\">submission dashboard</a>.</p><p>We look forward to receiving your revised submission.</p><p>Kind regards,</p><p>Daniel Barnes</p><hr><p>The following comments were received from reviewers.</p><p><strong>Reviewer 1:</strong><br>Recommendation: Revisions Required</p><p>Here are my review comments</p><p><strong>Reviewer 2:</strong><br>Recommendation: Revisions Required</p><p>Here are my review comments</p><p><strong>Reviewer 3:</strong><br>Recommendation: Resubmit for Review</p><p>Here are my review comments</p>'),(43,1048585,14,0,'2022-10-26 07:08:03',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Patricia Daniel\" <pdaniel@mailinator.com>','','\"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','Thank you for your submission to {$journalName}','<p>Dear Patricia Daniel,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/14</p><p>If you have been logged out, you can login again with the username pdaniel</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/14\">submission dashboard</a>.</p><p>Thank you for considering this journal as a venue for your work.</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(44,1048585,15,0,'2022-10-26 07:08:19',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Rana Baiyewu\" <rbaiyewu@mailinator.com>','','\"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','Thank you for your submission to {$journalName}','<p>Dear Rana Baiyewu,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Yam diseases and its management in Nigeria, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/15</p><p>If you have been logged out, you can login again with the username rbaiyewu</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/15\">submission dashboard</a>.</p><p>Thank you for considering this journal as a venue for your work.</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(45,1048585,15,3,'2022-10-26 07:08:32',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Rana Baiyewu\" <rbaiyewu@mailinator.com>','','','Your submission has been sent for review','<p>Dear Rana Baiyewu,</p><p>I am pleased to inform you that an editor has reviewed your submission, Yam diseases and its management in Nigeria, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers\' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers\' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>'),(46,1048585,15,3,'2022-10-26 07:08:53',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Rana Baiyewu\" <rbaiyewu@mailinator.com>','','','Your submission has been accepted to Journal of Public Knowledge','<p>Dear Rana Baiyewu,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, Yam diseases and its management in Nigeria, to meet or exceed our expectations. We are excited to publish your piece in Journal of Public Knowledge and we thank you for choosing our journal as a venue for your work.</p><p>Your submission is now forthcoming in a future issue of Journal of Public Knowledge and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/15\">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>'),(47,1048585,15,3,'2022-10-26 07:09:06',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Rana Baiyewu\" <rbaiyewu@mailinator.com>','','','Next steps for publishing your submission','<p>Dear Rana Baiyewu,</p><p>I am writing from Journal of Public Knowledge to let you know that the editing of your submission, Yam diseases and its management in Nigeria, is complete. Your submission will now advance to the production stage, where the final galleys will be prepared for publication. We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/15\">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>'),(48,1048585,16,0,'2022-10-26 07:09:32',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Rosanna Rossi\" <rrossi@mailinator.com>','','\"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','Thank you for your submission to {$journalName}','<p>Dear Rosanna Rossi,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/16</p><p>If you have been logged out, you can login again with the username rrossi</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/16\">submission dashboard</a>.</p><p>Thank you for considering this journal as a venue for your work.</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(49,1048585,17,0,'2022-10-26 07:09:49',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Vajiheh Karbasizaed\" <vkarbasizaed@mailinator.com>','','\"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','Thank you for your submission to {$journalName}','<p>Dear Vajiheh Karbasizaed,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/17</p><p>If you have been logged out, you can login again with the username vkarbasizaed</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/17\">submission dashboard</a>.</p><p>Thank you for considering this journal as a venue for your work.</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(50,1048585,17,3,'2022-10-26 07:10:03',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Vajiheh Karbasizaed\" <vkarbasizaed@mailinator.com>','','','Your submission has been sent for review','<p>Dear Vajiheh Karbasizaed,</p><p>I am pleased to inform you that an editor has reviewed your submission, Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers\' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers\' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>'),(51,1048585,17,3,'2022-10-26 07:10:23',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Vajiheh Karbasizaed\" <vkarbasizaed@mailinator.com>','','','Your submission has been accepted to Journal of Public Knowledge','<p>Dear Vajiheh Karbasizaed,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran, to meet or exceed our expectations. We are excited to publish your piece in Journal of Public Knowledge and we thank you for choosing our journal as a venue for your work.</p><p>Your submission is now forthcoming in a future issue of Journal of Public Knowledge and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/17\">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>'),(52,1048585,17,3,'2022-10-26 07:10:36',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Vajiheh Karbasizaed\" <vkarbasizaed@mailinator.com>','','','Next steps for publishing your submission','<p>Dear Vajiheh Karbasizaed,</p><p>I am writing from Journal of Public Knowledge to let you know that the editing of your submission, Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran, is complete. Your submission will now advance to the production stage, where the final galleys will be prepared for publication. We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/17\">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>'),(53,1048585,18,0,'2022-10-26 07:12:44',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Valerie Williamson\" <vwilliamson@mailinator.com>','','\"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>','Thank you for your submission to {$journalName}','<p>Dear Valerie Williamson,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Self-Organization in Multi-Level Institutions in Networked Environments, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/18</p><p>If you have been logged out, you can login again with the username vwilliamson</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/18\">submission dashboard</a>.</p><p>Thank you for considering this journal as a venue for your work.</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(54,1048585,18,3,'2022-10-26 07:12:58',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Valerie Williamson\" <vwilliamson@mailinator.com>','','','Your submission has been declined','<p>Dear Valerie Williamson,</p><p>I’m sorry to inform you that, after reviewing your submission, Self-Organization in Multi-Level Institutions in Networked Environments, the editor has found that it does not meet our requirements for publication in Journal of Public Knowledge.</p><p>I wish you success if you consider submitting your work elsewhere.</p><p>Kind regards,</p><p>Daniel Barnes</p>'),(55,1048585,19,0,'2022-10-26 07:13:17',536870914,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Zita Woods\" <zwoods@mailinator.com>','','\"Minoti Inoue\" <minoue@mailinator.com>','Thank you for your submission to {$journalName}','<p>Dear Zita Woods,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Finocchiaro: Arguments About Arguments, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/19</p><p>If you have been logged out, you can login again with the username zwoods</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/19\">submission dashboard</a>.</p><p>Thank you for considering this journal as a venue for your work.</p><br><br><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto:%20%7B$contactEmail%7D\">{$contactEmail}</a></p>'),(56,1048585,19,3,'2022-10-26 07:13:31',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Zita Woods\" <zwoods@mailinator.com>','','','Your submission has been sent for review','<p>Dear Zita Woods,</p><p>I am pleased to inform you that an editor has reviewed your submission, Finocchiaro: Arguments About Arguments, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers\' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers\' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>'),(57,1048585,19,3,'2022-10-26 07:13:52',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Zita Woods\" <zwoods@mailinator.com>','','','Your submission has been accepted to Journal of Public Knowledge','<p>Dear Zita Woods,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, Finocchiaro: Arguments About Arguments, to meet or exceed our expectations. We are excited to publish your piece in Journal of Public Knowledge and we thank you for choosing our journal as a venue for your work.</p><p>Your submission is now forthcoming in a future issue of Journal of Public Knowledge and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href=\"http://localhost/index.php/publicknowledge/authorDashboard/submission/19\">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>');
/*!40000 ALTER TABLE `email_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_log_users`
--

DROP TABLE IF EXISTS `email_log_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_log_users` (
  `email_log_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  UNIQUE KEY `email_log_user_id` (`email_log_id`,`user_id`),
  KEY `email_log_users_email_log_id` (`email_log_id`),
  KEY `email_log_users_user_id` (`user_id`),
  CONSTRAINT `email_log_users_email_log_id_foreign` FOREIGN KEY (`email_log_id`) REFERENCES `email_log` (`log_id`) ON DELETE CASCADE,
  CONSTRAINT `email_log_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_log_users`
--

LOCK TABLES `email_log_users` WRITE;
/*!40000 ALTER TABLE `email_log_users` DISABLE KEYS */;
INSERT INTO `email_log_users` VALUES (1,17),(2,17),(3,17),(4,17),(5,18),(6,18),(7,19),(8,19),(9,19),(10,20),(12,21),(13,21),(14,21),(15,21),(16,22),(17,22),(18,22),(19,22),(20,23),(21,23),(22,3),(22,4),(22,5),(23,24),(25,25),(26,25),(27,25),(28,25),(29,26),(30,26),(31,3),(31,4),(31,5),(32,3),(32,4),(32,5),(33,27),(35,28),(36,28),(37,29),(38,29),(39,3),(39,4),(39,5),(40,3),(40,4),(40,5),(41,3),(41,4),(41,5),(42,29),(43,30),(44,31),(45,31),(46,31),(47,31),(48,32),(49,33),(50,33),(51,33),(52,33),(53,34),(54,34),(55,35),(56,35),(57,35);
/*!40000 ALTER TABLE `email_log_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `email_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_key` varchar(255) NOT NULL COMMENT 'Unique identifier for this email.',
  `context_id` bigint(20) NOT NULL,
  `enabled` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`email_id`),
  UNIQUE KEY `email_templates_email_key` (`email_key`,`context_id`),
  KEY `email_templates_context_id` (`context_id`),
  CONSTRAINT `email_templates_context_id_foreign` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates_default_data`
--

DROP TABLE IF EXISTS `email_templates_default_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates_default_data` (
  `email_key` varchar(255) NOT NULL COMMENT 'Unique identifier for this email.',
  `locale` varchar(14) NOT NULL DEFAULT 'en_US',
  `subject` varchar(255) NOT NULL,
  `body` text,
  UNIQUE KEY `email_templates_default_data_pkey` (`email_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates_default_data`
--

LOCK TABLES `email_templates_default_data` WRITE;
/*!40000 ALTER TABLE `email_templates_default_data` DISABLE KEYS */;
INSERT INTO `email_templates_default_data` VALUES ('ANNOUNCEMENT','en_US','{$announcementTitle}','<b>{$announcementTitle}</b><br />\n<br />\n{$announcementSummary}<br />\n<br />\nVisit our website to read the <a href=\"{$announcementUrl}\">full announcement</a>.'),('ANNOUNCEMENT','fr_CA','{$announcementTitle}','<b>{$announcementTitle}</b><br />\n<br />\n{$announcementSummary}<br />\n<br />\nVisiter notre site Web pour consulter <a href=\"{$announcementUrl}\">l\'annonce complète</a>.'),('CITATION_EDITOR_AUTHOR_QUERY','en_US','Citation Editing','{$recipientName},<br />\n<br />\nCould you please verify or provide us with the proper citation for the following reference from your article, {$submissionTitle}:<br />\n<br />\n{$rawCitation}<br />\n<br />\nThanks!<br />\n<br />\n{$senderName}<br />\nCopy-Editor, {$journalName}<br />\n'),('CITATION_EDITOR_AUTHOR_QUERY','fr_CA','Modification des références bibliographiques','{$recipientName},<br />\n<br />\nPourriez-vous vérifier ou nous fournir la référence bibliographique complète pour la référence suivante, provenant de votre article « {$submissionTitle} »  :<br />\n<br />\n{$rawCitation}<br />\n<br />\nMerci!<br />\n<br />\n{$senderName}<br />\nRéviseur-e, revue {$journalName}<br />\n'),('COPYEDIT_REQUEST','en_US','Submission {$submissionId} is ready to be copyedited for {$contextAcronym}','<p>Dear {$recipientName},</p><p>A new submission is ready to be copyedited:</p><p><a href\"{$submissionUrl}\">{$submissionId} {$submissionTitle}</a><br />{$journalName}</p><p>Please follow these steps to complete this task:</p><ol><li>1. Click on the Submission URL below.</li><li>2. Open any files available under Draft Files and edit the files. Use the Copyediting Discussions area if you need to contact the editor(s) or author(s).</li><li>3. Save the copyedited file(s) and upload them to the Copyedited panel.</li><li>4. Use the Copyediting Discussions to notify the editor(s) that all files have been prepared, and that the Production process may begin.</li></ol><p>If you are unable to undertake this work at this time or have any questions, please contact me. Thank you for your contribution to this journal.</p><p>Kind regards,</p>{$signature}'),('COPYEDIT_REQUEST','fr_CA','Demande de révision d\'une soumission','{$recipientName},<br />\n<br />\nJ\'aimerais que vous effectuiez la révision du manuscrit intitulé « {$submissionTitle} » pour la revue {$journalName} à l\'aide des étapes suivantes.<br />\n1. Cliquer sur l\'URL de la soumission ci-dessous.<br />\n2. Ouvrir le(s) fichier(s) disponible(s) sous Fichiers des ébauches finales et effectuer votre révision, tout en ajoutant des discussions sur la révision, le cas échéant.<br />\n3. Enregistrer le(s) fichier(s) révisé(s) et le(s) téléverser dans la section Version(s) révisée(s).<br />\n4. Informer le,la rédacteur-trice que tous les fichiers ont été révisés et que l\'étape de production peut débuter.<br />\n<br />\nURL de la revue {$journalName} : {$journalUrl}<br />\nURL de la soumission : {$submissionUrl}<br />\nNom d\'utilisateur-trice : {$recipientUsername}'),('DISCUSSION_NOTIFICATION','en_US','{$subject}','{$content}<hr><p>Reply to this message at <a href=\"{$submissionUrl}\">{$journalName}</a>.'),('DISCUSSION_NOTIFICATION','fr_CA','',''),('EDITORIAL_REMINDER','en_US','Outstanding editorial tasks for {$journalName}','<p>Dear {$recipientName},</p><p>You are currently assigned to {$numberOfSubmissions} submissions in <a href=\"{$journalUrl}\">{$journalName}</a>. The following submissions are <b>waiting for your response</b>.</p>{$outstandingTasks}<p>View all of your assignments in your <a href=\"{$submissionsUrl}\">submission dashboard</a>.</p><p>This is an automated email from {$journalName}. You are receiving this email because you are an editor. To unsubscribe from these emails, please visit your <a href=\"{$userProfileUrl}\">user profile</a>.</p><p>If you have any questions about your assignments, please contact {$contactName} at {$contactEmail}.</p>'),('EDITORIAL_REMINDER','fr_CA','',''),('EDITOR_ASSIGN','en_US','You have been assigned as an editor on a submission to {$journalName}','<p>Dear {$recipientName},</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href=\"{$submissionUrl}\">{$submissionTitle}</a><br />{$authors}</p><p>If you find the submission to be relevant for {$journalName}, please forward the submission to the review stage by selecting \"Send to Review\" and then assign reviewers by clicking \"Add Reviewer\".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p>{$signature}'),('EDITOR_ASSIGN','fr_CA','Vous avez été assigné-e en tant que rédacteur-trice pour la soumission {$journalName}','{$recipientName},<br />\n<br />\nLa soumission intitulée « {$submissionTitle} » pour la revue {$journalName} vous a été attribuée. Vous êtes responsable, en tant que rédacteur-trice de rubrique, de la faire cheminer à travers le processus éditorial.<br />\n<br />\nURL de la soumission : {$submissionUrl}<br />\nNom d\'utilisateur-trice : {$recipientUsername}<br />\n<br />\nMerci.'),('EDITOR_DECISION_ACCEPT','en_US','Your submission has been accepted to {$journalName}','<p>Dear {$recipientName},</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, {$submissionTitle}, to meet or exceed our expectations. We are excited to publish your piece in {$journalName} and we thank you for choosing our journal as a venue for your work.</p><p>Your submission is now forthcoming in a future issue of {$journalName} and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href=\"{$authorSubmissionUrl}\">submission dashboard</a>.</p><p>Kind regards,</p>{$signature}'),('EDITOR_DECISION_ACCEPT','fr_CA','Décision du rédacteur','{$authors},<br />\n<br />\nNous avons pris une décision concernant votre soumission « {$submissionTitle} » à la revue {$journalName}.<br />\n<br />\nNotre décision est d\'accepter votre soumission.'),('EDITOR_DECISION_BACK_FROM_COPYEDITING','en_US','Your submission has been sent back to review','<p>Dear {$recipientName},</p><p>Your submission, {$submissionTitle}, has been sent back to the review stage. It will undergo further review before it can be accepted for publication.</p><p>Occasionally, a decision to accept a submission will be recorded accidentally in our system and we must send it back to review. I apologize for any confusion this has caused. We will work to complete any further review quickly so that you have a final decision as soon as possible.</p><p>We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href=\"{$authorSubmissionUrl}\">submission dashboard</a>.</p><p>Kind regards,</p><p>{$signature}</p>'),('EDITOR_DECISION_BACK_FROM_COPYEDITING','fr_CA','',''),('EDITOR_DECISION_BACK_FROM_PRODUCTION','en_US','Your submission has been sent back to copyediting','<p>Dear {$recipientName},</p><p>Your submission, {$submissionTitle}, has been sent back to the copyediting stage, where it will undergo further copyediting and formatting to prepare it for publication.</p><p>Occasionally, a submission is sent to the production stage before it is ready for the final galleys to be prepared for publication. Your submission is still forthcoming. I apologize for any confusion.</p><p>If you have any questions, please contact me from your <a href=\"{$authorSubmissionUrl}\">submission dashboard</a>.</p><p>We will contact you if we need any further assistance.</p><p>Kind regards,</p><p>{$signature}</p>'),('EDITOR_DECISION_BACK_FROM_PRODUCTION','fr_CA','',''),('EDITOR_DECISION_CANCEL_REVIEW_ROUND','en_US','A review round for your submission has been cancelled','<p>Dear {$recipientName},</p><p>We recently opened a new review round for your submission, {$submissionTitle}. We are closing this review round now.</p><p>Occasionally, a decision to open a round of review will be recorded accidentally in our system and we must cancel this review round. I apologize for any confusion this may have caused.</p><p>We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href=\"{$authorSubmissionUrl}\">submission dashboard</a>.</p><p>Kind regards,</p><p>{$signature}</p>'),('EDITOR_DECISION_CANCEL_REVIEW_ROUND','fr_CA','',''),('EDITOR_DECISION_DECLINE','en_US','Your submission has been declined','<p>Dear {$recipientName},</p><p>While we appreciate receiving your submission, we are unable to accept {$submissionTitle} for publication on the basis of the comments from reviewers.</p><p>The reviewers\' comments are included at the bottom of this email.</p><p>Thank you for submitting to {$journalName}. Although it is disappointing to have a submission declined, I hope you find the reviewers\' comments to be constructive and helpful.</p><p>You are now free to submit the work elsewhere if you choose to do so.</p><p>Kind regards,</p>{$signature}<hr><p>The following comments were received from reviewers.</p>{$allReviewerComments}'),('EDITOR_DECISION_DECLINE','fr_CA','Décision du rédacteur','{$authors}:<br />\n<br />\nNous avons pris une décision concernant votre soumission « {$submissionTitle} » à la revue {$journalName}.<br />\n<br />\nNotre décision est de refuser votre soumission.'),('EDITOR_DECISION_INITIAL_DECLINE','en_US','Your submission has been declined','<p>Dear {$recipientName},</p><p>I’m sorry to inform you that, after reviewing your submission, {$submissionTitle}, the editor has found that it does not meet our requirements for publication in {$journalName}.</p><p>I wish you success if you consider submitting your work elsewhere.</p><p>Kind regards,</p>{$signature}'),('EDITOR_DECISION_INITIAL_DECLINE','fr_CA','Décision du rédacteur','\n			{$authors},<br />\n<br />\nNous avons pris une décision concernant votre soumission « {$submissionTitle} » à  la revue {$journalName}.<br />\n<br />\nNotre décision est de refuser votre soumission.'),('EDITOR_DECISION_NEW_ROUND','en_US','Your submission has been sent for another round of review','<p>Dear {$recipientName},</p>\n<p>Your revised submission, {$submissionTitle}, has been sent for a new round of peer review. \nYou will hear from us with feedback from the reviewers and information about the next steps.</p>\n<p>If you have any questions, please contact me from your <a href=\"{$authorSubmissionUrl}\">submission dashboard</a>.</p>\n<p>Kind regards,</p>\n<p>{$signature}</p>\n'),('EDITOR_DECISION_NEW_ROUND','fr_CA','',''),('EDITOR_DECISION_NOTIFY_OTHER_AUTHORS','en_US','An update regarding your submission','<p>The following email was sent to {$submittingAuthorName} from {$journalName} regarding {$submissionTitle}.</p>\n<p>You are receiving a copy of this notification because you are identified as an author of the submission. Any instructions in the message below are intended for the submitting author, {$submittingAuthorName}, and no action is required of you at this time.</p>\n\n{$messageToSubmittingAuthor}'),('EDITOR_DECISION_NOTIFY_OTHER_AUTHORS','fr_CA','',''),('EDITOR_DECISION_RESUBMIT','en_US','Your submission has been reviewed - please revise and resubmit','<p>Dear {$recipientName},</p><p>After reviewing your submission, {$submissionTitle}, the reviewers have recommended that your submission cannot be accepted for publication in its current form. However, we would like to encourage you to submit a revised version that addresses the reviewers\' comments. Your revisions will be reviewed by an editor and may be sent out for another round of peer review.</p><p>Please note that resubmitting your work does not guarantee that it will be accepted.</p><p>The reviewers\' comments are included at the bottom of this email. Please respond to each point and identify what changes you have made. If you find any of the reviewer\'s comments inappropriate, please explain your perspective. If you have questions about the recommendations in your review, please include these in your response.</p><p>When you have completed your revisions, you can upload revised documents along with your response to the reviewers\' comments <a href=\"{$authorSubmissionUrl}\">at your submission dashboard</a>. If you have been logged out, you can login again with the username {$recipientUsername}.</p><p>If you have any questions, please contact me from your <a href=\"{$authorSubmissionUrl}\">submission dashboard</a>.</p><p>We look forward to receiving your revised submission.</p><p>Kind regards,</p>{$signature}<hr><p>The following comments were received from reviewers.</p>{$allReviewerComments}'),('EDITOR_DECISION_RESUBMIT','fr_CA','Décision du rédacteur','{$authors},<br />\n<br />\nNous avons pris une décision concernant votre soumission « {$submissionTitle} » à la revue {$journalName}.<br />\n<br />\nNotre décision est de vous demander d\'apporter des révisions à votre soumission et de la soumettre à nouveau.'),('EDITOR_DECISION_REVERT_DECLINE','en_US','We have reversed the decision to decline your submission','<p>Dear {$recipientName},</p>\n<p>The decision to decline your submission, {$submissionTitle}, has been reversed. \nAn editor will complete the round of review and you will be notified when a \ndecision is made.</p>\n<p>Occasionally, a decision to decline a submission will be recorded accidentally in \nour system and must be reverted. I apologize for any confusion this may have caused.</p>\n<p>We will contact you if we need any further assistance.</p>\n<p>If you have any questions, please contact me from your <a href=\"{$authorSubmissionUrl}\">submission dashboard</a>.</p>\n<p>Kind regards,</p>\n<p>{$signature}</p>\n'),('EDITOR_DECISION_REVERT_DECLINE','fr_CA','',''),('EDITOR_DECISION_REVERT_INITIAL_DECLINE','en_US','We have reversed the decision to decline your submission','<p>Dear {$recipientName},</p>\n<p>The decision to decline your submission, {$submissionTitle}, has been reversed. \nAn editor will look further at your submission before deciding whether to decline \nthe submission or send it for review.</p>\n<p>Occasionally, a decision to decline a submission will be recorded accidentally in \nour system and must be reverted. I apologize for any confusion this may have caused.</p>\n<p>We will contact you if we need any further assistance.</p>\n<p>If you have any questions, please contact me from your <a href=\"{$authorSubmissionUrl}\">submission dashboard</a>.</p>\n<p>Kind regards,</p>\n<p>{$signature}</p>\n'),('EDITOR_DECISION_REVERT_INITIAL_DECLINE','fr_CA','',''),('EDITOR_DECISION_REVISIONS','en_US','Your submission has been reviewed and we encourage you to submit revisions','<p>Dear {$recipientName},</p><p>Your submission {$submissionTitle} has been reviewed and we would like to encourage you to submit revisions that address the reviewers\' comments. An editor will review these revisions and if they address the concerns adequately, your submission may be accepted for publication.</p><p>The reviewers\' comments are included at the bottom of this email. Please respond to each point in the reviewers\' comments and identify what changes you have made. If you find any of the reviewer\'s comments to be unjustified or inappropriate, please explain your perspective.</p><p>When you have completed your revisions, you can upload revised documents along with your response to the reviewers\' comments at your <a href=\"{$authorSubmissionUrl}\">submission dashboard</a>. If you have been logged out, you can login again with the username {$recipientUsername}.</p><p>If you have any questions, please contact me from your <a href=\"{$authorSubmissionUrl}\">submission dashboard</a>.</p><p>We look forward to receiving your revised submission.</p><p>Kind regards,</p>{$signature}<hr><p>The following comments were received from reviewers.</p>{$allReviewerComments}'),('EDITOR_DECISION_REVISIONS','fr_CA','Décision du rédacteur','{$authors},<br />\n<br />\nNous avons pris une décision concernant votre soumission « {$submissionTitle} » à la revue {$journalName}.<br />\n<br />\nNotre décision est de vous demander d\'apporter des révisions à votre soumission.'),('EDITOR_DECISION_SEND_TO_EXTERNAL','en_US','Your submission has been sent for review','<p>Dear {$recipientName},</p><p>I am pleased to inform you that an editor has reviewed your submission, {$submissionTitle}, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>{$reviewTypeDescription} You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers\' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers\' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p>{$signature}</p>'),('EDITOR_DECISION_SEND_TO_EXTERNAL','fr_CA','Décision du rédacteur','{$authors},<br />\n<br />\nNous avons pris une décision concernant votre soumission « {$submissionTitle} » à la revue {$journalName}.<br />\n<br />\nNotre décision est d\'envoyer votre soumission en évaluation.<br />\n<br />\nURL de la soumission : {$submissionUrl}'),('EDITOR_DECISION_SEND_TO_PRODUCTION','en_US','Next steps for publishing your submission','<p>Dear {$recipientName},</p><p>I am writing from {$journalName} to let you know that the editing of your submission, {$submissionTitle}, is complete. Your submission will now advance to the production stage, where the final galleys will be prepared for publication. We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href=\"{$authorSubmissionUrl}\">submission dashboard</a>.</p><p>Kind regards,</p>{$signature}'),('EDITOR_DECISION_SEND_TO_PRODUCTION','fr_CA','Décision du rédacteur','{$authors},<br />\n<br />\nL\'édition de votre soumission « {$submissionTitle} » est complétée. Nous l\'envoyons maintenant en production.<br />\n<br />\nURL de la soumission : {$submissionUrl}'),('EDITOR_DECISION_SKIP_REVIEW','en_US','Your submission has been sent for copyediting','<p>Dear {$recipientName},</p>\n<p>I am pleased to inform you that we have decided to accept your submission without peer review. We found your submission, {$submissionTitle}, to meet our expectations, and we do not require that work of this type undergo peer review. We are excited to publish your piece in {$journalName} and we thank you for choosing our journal as a venue for your work.</p>\nYour submission is now forthcoming in a future issue of {$journalName} and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on your efforts.</p>\n<p>Your submission will now undergo copy editing and formatting to prepare it for publication. </p>\n<p>You will shortly receive further instructions.</p>\n<p>If you have any questions, please contact me from your <a href=\"{$authorSubmissionUrl}\">submission dashboard</a>.</p>\n<p>Kind regards,</p>\n<p>{$signature}</p>\n'),('EDITOR_DECISION_SKIP_REVIEW','fr_CA','',''),('EDITOR_RECOMMENDATION','en_US','Editor Recommendation','<p>Dear {$recipientName},</p><p>After considering the reviewers\' feedback, I would like to make the following recommendation regarding the submission {$submissionTitle}.</p><p>My recommendation is:<br />{$recommendation}.</p><p>Please visit the submission\'s <a href=\"{$submissionUrl}\">editorial workflow</a> to act on this recommendation.</p><p>Please feel free to contact me with any questions.</p><p>Kind regards,</p><p>{$senderName}</p>'),('EDITOR_RECOMMENDATION','fr_CA','Recommandation du rédacteur','{$editors},<br />\n<br />\nLa recommandation concernant la soumission « {$submissionTitle} » à la revue {$journalName} est de : {$recommendation}'),('EMAIL_LINK','en_US','Article of Possible Interest','Thought you might be interested in seeing &quot;{$submissionTitle}&quot; by {$authors} published in Vol {$volume}, No {$number} ({$year}) of {$journalName} at &quot;{$submissionUrl}&quot;.'),('EMAIL_LINK','fr_CA','Article potentiellement intéressant','Je pense que l\'article suivant pourrait vous intéresser : « {$submissionTitle} » par {$authors}, publié dans le volume {$volume}, numéro {$number} de ({$year}) de la revue {$journalName}, à l\'adresse suivante : {$submissionUrl}.'),('ISSUE_PUBLISH_NOTIFY','en_US','A new issue is now available: {$issueIdentification}','<p>Dear Reader,</p><p>{$journalName} is pleased to announce the publication of our latest issue: {$issueIdentification}. We invite you to visit the table of contents and review the articles and items of interest. Many thanks to our authors, reviewers, and editors for their valuable contributions to this work, and to our readers for your continued interest.</p><p>Sincerely,</p>{$signature}'),('ISSUE_PUBLISH_NOTIFY','fr_CA','Parution du dernier numéro','<p>Lecteurs-trices,</p><p>La revue {$journalName} vient de publier le numéro {$issueIdentification} à l\'adresse suivante : {$journalUrl}. Nous vous invitons à consulter le sommaire, puis à visiter notre site Web pour y lire les articles qui vous intéressent.</p><p>Nous vous remercions de l\'intérêt que vous portez à notre revue,</p>{$signature}'),('LAYOUT_COMPLETE','en_US','Galleys Complete','<p>Dear {$recipientName},<p><p>Galleys have now been prepared for the following submission and are ready for final review.</p><p><a href=\"{$submissionUrl}\">{$submissionTitle}</a><br />{$journalName}</p><p>If you have any questions, please contact me.</p><p>Kind regards,</p><p>{$senderName}</p>'),('LAYOUT_COMPLETE','fr_CA','Mise en page des épreuves terminée','{$recipientName},<br />\n<br />\nLes épreuves du manuscrit intitulé « {$submissionTitle} » pour la revue {$journalName} sont maintenant prêtes pour la relecture.<br />\n<br />\nSi vous avez des questions, n\'hésitez pas à communiquer avec moi.<br />\n<br />\n{$senderName}'),('LAYOUT_REQUEST','en_US','Submission {$submissionId} is ready for production at {$contextAcronym}','<p>Dear {$recipientName},</p><p>A new submission is ready for layout editing:</p><p><a href=\"{$submissionUrl}\">{$submissionId} {$submissionTitle}</a><br />{$journalName}</p><ol><li>1. Click on the Submission URL above.</li><li>2. Download the Production Ready files and use them to create the galleys according to the journal\'s standards.</li><li>3. Upload the galleys to the Publication section of the submission.</li><li>4. Use the  Production Discussions to notify the editor that the galleys are ready.</li></ol><p>If you are unable to undertake this work at this time or have any questions, please contact me. Thank you for your contribution to this journal.</p><p>Kind regards,</p>{$signature}'),('LAYOUT_REQUEST','fr_CA','Demande de mise en page des épreuves','{$recipientName},<br />\n<br />\nJ\'aimerais que vous prépariez les épreuves du manuscrit intitulé « {$submissionTitle} » pour la revue {$journalName} à l\'aide des étapes suivantes.<br />\n1. Cliquer sur l\'URL de la soumission ci-dessous.<br />\n2. Se connecter au site Web de la revue et utiliser les fichiers disponibles sous Fichiers prêts pour la production pour créer les épreuves en fonction des normes de la revue.<br />\n3. Téléverser les épreuves dans la section Épreuves.<br />\n4. Informer le,la rédacteur-trice, via une discussion sur la production, que les épreuves ont été téléversées et qu\'elles sont prêtes.<br />\n<br />\nURL de la revue {$journalName} : {$journalUrl}<br />\nURL du manuscrit : {$submissionUrl}<br />\nNom d\'utilisateur-trice : {$recipientUsername}<br />\n<br />\nSi vous ne pouvez pas effectuer ce travail pour le moment ou si vous avez des questions, veuillez communiquer avec moi. Je vous remercie de votre collaboration.'),('LOCKSS_EXISTING_ARCHIVE','en_US','Archiving Request for {$journalName}','Dear [University Librarian]<br />\n<br />\n{$journalName} &amp;lt;{$journalUrl}&amp;gt;, is a journal for which a member of your faculty, [name of member], serves as a [title of position]. The journal is seeking to establish a LOCKSS (Lots of Copies Keep Stuff Safe) compliant archive with this and other university libraries.<br />\n<br />\n[Brief description of journal]<br />\n<br />\nThe URL to the LOCKSS Publisher Manifest for our journal is: {$journalUrl}/gateway/lockss<br />\n<br />\nWe understand that you are already participating in LOCKSS. If we can provide any additional metadata for purposes of registering our journal with your version of LOCKSS, we would be happy to provide it.<br />\n<br />\nThank you,<br />\n{$signature}'),('LOCKSS_EXISTING_ARCHIVE','fr_CA','Demande d\'archivage pour la revue {$journalName}','Cher,Chère [Bibliothécaire universitaire],<br />\n<br />\n{$journalName} &lt;{$journalUrl}&gt; est une revue pour laquelle un membre de votre faculté, [nom du membre], agit à titre de [titre de la position occupée]. La revue désire mettre en place un système d\'archivage conforme LOCKSS (Lots of Copies Keep Stuff Safe - Plusieurs exemplaires assurent la sécurité) avec votre bibliothèque ainsi que celles d\'autres universités.<br />\n<br />\n[Brève description de la revue]<br />\n<br />\nL\'adresse URL pour le LOCKSS Publisher Manifest pour notre revue est : {$journalUrl}/gateway/lockss<br />\n<br />\nNous croyons savoir que vous participez déjà à LOCKSS. Si nous pouvons vous fournir des métadonnées supplémentaires afin d\'inscrire notre revue avec votre version de LOCKSS, il nous fera plaisir de vous les fournir.<br />\n<br />\nMerci,<br />\n{$signature}'),('LOCKSS_NEW_ARCHIVE','en_US','Archiving Request for {$journalName}','Dear [University Librarian]<br />\n<br />\n{$journalName} &amp;lt;{$journalUrl}&amp;gt;, is a journal for which a member of your faculty, [name of member] serves as a [title of position]. The journal is seeking to establish a LOCKSS (Lots of Copies Keep Stuff Safe) compliant archive with this and other university libraries.<br />\n<br />\n[Brief description of journal]<br />\n<br />\nThe LOCKSS Program &amp;lt;https://lockss.org&amp;gt;, an international library/publisher initiative, is a working example of a distributed preservation and archiving repository, additional details are below. The software, which runs on an ordinary personal computer is free; the system is easily brought on-line; very little ongoing maintenance is required.<br />\n<br />\nTo assist in the archiving of our journal, we invite you to become a member of the LOCKSS community, to help collect and preserve titles produced by your faculty and by other scholars worldwide. To do so, please have someone on your staff visit the LOCKSS site for information on how this system operates. I look forward to hearing from you on the feasibility of providing this archiving support for this journal.<br />\n<br />\nThank you,<br />\n{$signature}'),('LOCKSS_NEW_ARCHIVE','fr_CA','Demande d\'archivage pour la revue {$journalName}','Cher,Chère [Bibliothécaire universitaire],<br />\n<br />\n{$journalName} &lt;{$journalUrl}&gt;, est une revue pour laquelle un membre de votre faculté, [nom du membre], agit à titre de [titre de la fonction occupée]. La revue désire mettre en place un système d\'archivage conforme LOCKSS (Lots of Copies Keep Stuff Safe) avec votre bibliothèque et celles d\'autres universités.<br />\n<br />\n[Brève description de la revue]<br />\n<br />\nLe programme LOCKSS &lt;http://lockss.org/&gt;, une initiative de bibliothécaires et d\'éditeurs internationaux, est une belle démonstration d\'un dépôt d\'archives assurant la préservation des documents. Voir les détails ci-dessous. Le logiciel est gratuit et fonctionne sur tout ordinateur personnel. Il est facile de le mettre en ligne et ne requiert que très peu de maintenance.<br />\n<br />\nPour nous aider dans le processus d\'archivage de notre revue, nous vous invitons à devenir membre de la communauté LOCKSS, pour aider à recueillir et préserver des titres produits par votre faculté et par d\'autres chercheurs à travers le monde. Pour ce faire, veuillez demander à quelqu\'un de votre personnel de visiter le site Internet de LOCKSS pour voir les informations sur le fonctionnement du système. Nous attendons de vos nouvelles sur la faisabilité, pour vous, de fournir un support d\'archivage pour cette revue.<br />\n<br />\nMerci,<br />\n{$signature}'),('MANUAL_PAYMENT_NOTIFICATION','en_US','Manual Payment Notification','A manual payment needs to be processed for the journal {$journalName} and the user {senderName} (username &quot;{$senderUsername}&quot;).<br />\n<br />\nThe item being paid for is &quot;{$paymentName}&quot;.<br />\nThe cost is {$paymentAmount} ({$paymentCurrencyCode}).<br />\n<br />\nThis email was generated by Open Journal Systems\' Manual Payment plugin.'),('MANUAL_PAYMENT_NOTIFICATION','fr_CA','Avis de paiement manuel','Un paiement manuel doit être traité pour la revue {$journalName} et l\'utilisateur {$senderName} (nom d\'utilisateur &quot;{$senderUsername}&quot;).<br />\n<br />\nL\'élément facturé est &quot;{$paymentName}&quot;.<br />\nLe coût est de {$paymentAmount} ({$paymentCurrencyCode}).<br />\n<br />\nCe courriel a été généré par le plugiciel de paiement manuel du Open Journal Systems.'),('NOTIFICATION','en_US','New notification from {$journalName}','You have a new notification from {$journalName}:<br />\n<br />\n{$notificationContents}<br />\n<br />\nLink: {$notificationUrl}<br />\n<br />\n{$journalSignature}\n<hr />{$unsubscribeLink}'),('NOTIFICATION','fr_CA','Nouvel avis de {$journalName}','Vous avez un nouvel avis de {$journalName} :<br />\n<br />\n{$notificationContents}<br />\n<br />\nLien : {$notificationUrl}<br />\n<br />\n{$journalSignature}\n<hr />{$unsubscribeLink}'),('NOTIFICATION_CENTER_DEFAULT','en_US','A message regarding {$journalName}','Please enter your message.'),('NOTIFICATION_CENTER_DEFAULT','fr_CA','Un message à propos de la revue {$journalName}','Prière de saisir votre message.'),('OPEN_ACCESS_NOTIFY','en_US','Issue Now Open Access','Readers:<br />\n<br />\n{$journalName} has just made available in an open access format the following issue. We invite you to review the Table of Contents here and then visit our web site ({$journalUrl}) to review articles and items of interest.<br />\n<br />\nThanks for the continuing interest in our work,<br />\n{$journalSignature}'),('OPEN_ACCESS_NOTIFY','fr_CA','Le numéro est maintenant en libre accès','Chers lecteurs et lectrices,<br />\n<br />\nLa revue {$journalName} vient de rendre disponible en libre accès le numéro suivant. Nous vous invitons à lire ici le sommaire puis visiter notre site Web ({$journalUrl}) pour lire les articles et autres textes qui pourraient vous intéresser.<br />\n<br />\nMerci de votre intérêt continu pour notre travail.<br />\n{$journalSignature}'),('ORCID_COLLECT_AUTHOR_ID','en_US','Submission ORCID','Dear {$recipientName},<br/>\n<br/>\nYou have been listed as an author on a manuscript submission to {$journalName}.<br/>\nTo confirm your authorship, please add your ORCID id to this submission by visiting the link provided below.<br/>\n<br/>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://info.orcid.org/wp-content/uploads/2020/12/ORCIDiD_icon16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Register or connect your ORCID iD</a><br/>\n<br/>\n<br>\n<a href=\"{$orcidAboutUrl}\">More information about ORCID at {$journalName}</a><br/>\n<br/>\nIf you have any questions, please contact me.<br/>\n<br/>\n{$principalContactSignature}<br/>\n'),('ORCID_COLLECT_AUTHOR_ID','fr_CA','Soumission ORCID','{$recipientName},<br/>\n<br/>\nVous avez été inscrit ou inscrite en tant qu\'auteur ou auteure pour un manuscrit soumis à {$journalName}.<br/>\nPour confirmer votre statut d\'auteur ou d\'auteure, veuillez ajouter votre identifiant ORCID à cette soumission en cliquant sur le lien ci-dessous.<br/>\n<br/>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"icône identifiant ORCID\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Se connecter avec votre identifiant ORCID ou s\'inscrire</a><br/>\n<br/>\n<br/>\n<a href=\"{$orcidAboutUrl}\">Plus de renseignements sur votre identifiant ORCID dans {$journalName}</a><br/>\n<br/>\nSi vous avez des questions, veuillez communiquer avec nous.<br/>\n<br/>\n{$principalContactSignature}<br/>\n'),('ORCID_REQUEST_AUTHOR_AUTHORIZATION','en_US','Requesting ORCID record access','Dear {$recipientName},<br>\n<br>\nYou have been listed as an author on the manuscript submission \"{$submissionTitle}\" to {$journalName}.\n<br>\n<br>\nPlease allow us to add your ORCID id to this submission and also to add the submission to your ORCID profile on publication.<br>\nVisit the link to the official ORCID website, login with your profile and authorize the access by following the instructions.<br>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://info.orcid.org/wp-content/uploads/2020/12/ORCIDiD_icon16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Register or Connect your ORCID iD</a><br/>\n<br>\n<br>\n<a href=\"{$orcidAboutUrl}\">More about ORCID at {$journalName}</a><br/>\n<br>\nIf you have any questions, please contact me.<br>\n<br>\n{$principalContactSignature}<br>\n'),('ORCID_REQUEST_AUTHOR_AUTHORIZATION','fr_CA','Demande d\'accès au dossier ORCID','{$recipientName},<br/>\n<br/>\nVous avez été inscrit ou inscrite en tant qu\'auteur ou auteure pour le manuscrit « {$submissionTitle} » soumis à {$journalName}.\n<br/>\n<br/>\nVeuillez nous autoriser à ajouter votre identifiant ORCID à cette soumission et à ajouter également la soumission à votre dossier ORCID suite à sa publication.\n<br/>\nSuivre le lien vers le site officiel ORCID, vous connecter avec votre profil et autoriser l\'accès en suivant les instructions.<br/>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"icône identifiant ORCID\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Se connecter avec votre identifiant ORCID ou s\'inscrire</a><br/>\n<br/>\n<br/>\n<a href=\"{$orcidAboutUrl}\">Plus de renseignements sur votre identifiant ORCID dans {$journalName}</a><br/>\n<br/>\nSi vous avez des questions, veuillez communiquer avec nous.<br/>\n<br/>\n{$principalContactSignature}<br/>\n'),('PASSWORD_RESET','en_US','Password Reset','Your password has been successfully reset for use with the {$siteTitle} web site. Please retain this username and password, as it is necessary for all work with the journal.<br />\n<br />\nYour username: {$recipientUsername}<br />\nPassword: {$password}<br />\n<br />\n{$siteContactName}'),('PASSWORD_RESET','fr_CA','Réinitialisation du mot de passe','Votre mot de passe pour le site Web {$siteTitle} a été réinitialisé avec succès. Veuillez conserver votre nom d\'utilisateur-trice ainsi que votre mot de passe. Vous en aurez besoin pour chacune de vos interactions avec la revue.<br />\n<br />\nVotre nom d\'utilisateur-trice : {$recipientUsername}<br />\nMot de passe : {$password}<br />\n<br />\n{$siteContactName}'),('PASSWORD_RESET_CONFIRM','en_US','Password Reset Confirmation','We have received a request to reset your password for the {$siteTitle} web site.<br />\n<br />\nIf you did not make this request, please ignore this email and your password will not be changed. If you wish to reset your password, click on the below URL.<br />\n<br />\nReset my password: {$passwordResetUrl}<br />\n<br />\n{$siteContactName}'),('PASSWORD_RESET_CONFIRM','fr_CA','Confirmation de la réinitialisation du mot de passe','Nous avons reçu une demande concernant la réinitialisation de votre mot de passe pour le site Web {$siteTitle}.<br />\n<br />\nSi vous n\'avez pas fait cette demande, veuillez ne pas tenir compte du présent message, votre mot de passe restera le même. Si vous souhaitez réinitialiser votre mot de passe, cliquer sur l\'URL ci-dessous.<br />\n<br />\nRéinitialisation de mon mot de passe : {$passwordResetUrl}<br />\n<br />\n{$siteContactName}'),('PAYPAL_INVESTIGATE_PAYMENT','en_US','Unusual PayPal Activity','Open Journal Systems has encountered unusual activity relating to PayPal payment support for the journal {$journalName}. This activity may need further investigation or manual intervention.<br />\n                       <br />\nThis email was generated by Open Journal Systems\' PayPal plugin.<br />\n<br />\nFull post information for the request:<br />\n{$postInfo}<br />\n<br />\nAdditional information (if supplied):<br />\n{$additionalInfo}<br />\n<br />\nServer vars:<br />\n{$serverVars}<br />\n'),('PAYPAL_INVESTIGATE_PAYMENT','fr_CA','Activité inhabituelle de PayPal','L\'Open Journal Systems a remarqué une activité inhabituelle concernant la prise en charge du paiement PayPal pour la revue {$journalName}. Cette activité pourrait nécessiter une attention particulière ou une intervention manuelle.<br />\n                       <br />\nCe courriel a été généré par le plugiciel PayPal du Open Journal Systems.<br />\n<br />\nInformation complète de la demande :<br />\n{$postInfo}<br />\n<br />\nInformation supplémentaire (si fournie) :<br />\n{$additionalInfo}<br />\n<br />\nVariables serveur :<br />\n{$serverVars}<br />\n'),('REVIEWER_REGISTER','en_US','Registration as Reviewer with {$journalName}','In light of your expertise, we have taken the liberty of registering your name in the reviewer database for {$journalName}. This does not entail any form of commitment on your part, but simply enables us to approach you with a submission to possibly review. On being invited to review, you will have an opportunity to see the title and abstract of the paper in question, and you\'ll always be in a position to accept or decline the invitation. You can also ask at any point to have your name removed from this reviewer list.<br />\n<br />\nWe are providing you with a username and password, which is used in all interactions with the journal through its website. You may wish, for example, to update your profile, including your reviewing interests.<br />\n<br />\nUsername: {$recipientUsername}<br />\nPassword: {$password}<br />\n<br />\nThank you,<br />\n{$signature}'),('REVIEWER_REGISTER','fr_CA','Inscription en tant qu\'évaluateur-trice pour la revue {$journalName}','Compte tenu de votre expertise, nous avons pris l\'initiative d\'inscrire votre nom dans la base de données des évaluateurs-trices de la revue {$journalName}. Cela ne vous engage d\'aucune façon, mais nous permet simplement de solliciter vos services pour l\'évaluation d\'une soumission. Si vous êtes invité-e à effectuer une évaluation, vous recevrez le titre et le résumé de l\'article en question, et serez toujours libre d\'accepter ou de refuser une telle invitation. À tout moment, il vous est également possible de demander à ce que votre nom soit retiré de la liste des évaluateurs-trices.<br />\n<br />\nNous vous acheminons un nom d\'utilisateur-trice et un mot de passe, car tous deux sont requis pour tout échange avec la revue via son site Web. Vous pouvez, par exemple, si vous le souhaitez, effectuer la mise à jour de votre profil, y compris vos domaines d\'intérêt en matière d\'évaluation.<br />\n<br />\nNom d\'utilisateur-trice : {$recipientUsername}<br />\nMot de passe : {$password}<br />\n<br />\nMerci,<br />\n{$signature}'),('REVIEW_ACK','en_US','Thank you for your review','<p>Dear {$recipientName},</p>\n<p>Thank you for completing your review of the submission, {$submissionTitle}, for {$journalName}. We appreciate your time and expertise in contributing to the quality of the work that we publish. We have shared your comments with the authors, along with our other reviewers\' comments and the editor\'s decision.</p>\n<p>Based on the feedback we received, we have notified the authors of the following:</p>\n<p>{$decisionDescription}</p>\n<p>Your recommendation was considered alongside the recommendations of other reviewers before coming to a decision. Occasionally the editor\'s decision may differ from the recommendation made by one or more reviewers. The editor considers many factors, and does not take these decisions lightly. We are grateful for our reviewers\' expertise and suggestions.</p>\n<p>It has been a pleasure to work with you as a reviewer for {$journalName}, and we hope to have the opportunity to work with you again in the future.</p>\n<p>Kind regards,</p>\n<p>{$signature}</p>'),('REVIEW_ACK','fr_CA','Accusé de réception de l\'évaluation d\'une soumission','{$recipientName},<br />\n<br />\nNous vous remercions d\'avoir évalué la soumission intitulée « {$submissionTitle} » pour la revue {$journalName}. Nous vous sommes reconnaissants de votre contribution à la qualité des travaux que nous publions.'),('REVIEW_CANCEL','en_US','Request for Review Cancelled','{$recipientName}:<br />\n<br />\nWe have decided at this point to cancel our request for you to review the submission, &quot;{$submissionTitle},&quot; for {$journalName}. We apologize for any inconvenience this may cause you and hope that we will be able to call on you to assist with this journal\'s review process in the future.<br />\n<br />\nIf you have any questions, please contact me.'),('REVIEW_CANCEL','fr_CA','Annulation de la demande d\'évaluation','{$recipientName},<br />\n<br />\nNous avons décidé d\'annuler notre demande concernant l\'évaluation du manuscrit intitulé « {$submissionTitle} » pour la revue {$journalName}. Nous sommes désolés des inconvénients que cela pourrait vous causer et espérons que nous pourrons de nouveau faire appel à vous pour contribuer au processus de révision par les pairs de cette revue dans le futur.<br />\n<br />\nSi vous avez des questions, n\'hésitez pas à communiquer avec nous.'),('REVIEW_CONFIRM','en_US','Able to Review','Editors:<br />\n<br />\nI am able and willing to review the submission, &quot;{$submissionTitle},&quot; for {$journalName}. Thank you for thinking of me, and I plan to have the review completed by its due date, {$reviewDueDate}, if not before.<br />\n<br />\n{$senderName}'),('REVIEW_CONFIRM','fr_CA','Acceptation d\'évaluation','Rédacteurs-trices,<br />\n<br />\nJe suis en mesure d\'évaluer la soumission intitulée « {$submissionTitle} » pour la revue {$journalName}. Je vous remercie d\'avoir pensé à moi. Je devrais être en mesure de compléter l\'évaluation pour la date du {$reviewDueDate}, voire avant.<br />\n<br />\n{$senderName}'),('REVIEW_DECLINE','en_US','Unable to Review','Editors:<br />\n<br />\nI am afraid that at this time I am unable to review the submission, &quot;{$submissionTitle},&quot; for {$journalName}. Thank you for thinking of me, and another time feel free to call on me.<br />\n<br />\n{$senderName}'),('REVIEW_DECLINE','fr_CA','Refus d\'évaluation','Rédacteurs-trices,<br />\n<br />\nPour le moment, il m\'est impossible d\'évaluer la soumission intitulée « {$submissionTitle} » pour la revue {$journalName}. Je vous remercie d\'avoir pensé à moi. N\'hésitez pas à communiquer avec moi pour un autre projet.<br />\n<br />\n{$senderName}'),('REVIEW_REINSTATE','en_US','Can you still review something for {$journalName}?','<p>Dear {$recipientName},</p><p>We recently cancelled our request for you to review a submission, {$submissionTitle}, for {$journalName}. We\'ve reversed that decision and we hope that you are still able to conduct the review.</p><p>If you are able to assist with this journal\'s review process, you can login to the journal to view the submission, upload review files, and submit your review request.</p><p>If you have any questions, please contact me.</p><p>Kind regards,</p>{$signature}'),('REVIEW_REINSTATE','fr_CA','Réintégration de la demande d\'évaluation','{$recipientName},<br />\n<br />\nNous souhaitons rétablir notre demande d\'évaluation de la soumission, « {$ submissionTitle} » pour  la revue {$ contextName}. Nous espérons que vous pourrez contribuer au processus d\'évaluation de cette revue.<br />\n<br />\nSi vous avez des questions, n\'hésitez pas à communiquer avec moi.'),('REVIEW_REMIND','en_US','A reminder to please complete your review','<p>Dear {$recipientName},</p><p>Just a gentle reminder of our request for your review of the submission, \"{$submissionTitle},\" for {$journalName}. We were expecting to have this review by {$reviewDueDate} and we would be pleased to receive it as soon as you are able to prepare it.</p><p>You can login to the journal and follow the review steps to view the submission, upload review files, and submit your review comments.</p><p>If you need an extension of the deadline, please contact me. I look forward to hearing from you.</p><p>Thank you in advance and kind regards,</p>{$signature}'),('REVIEW_REMIND','fr_CA','Rappel d\'évaluation d\'une soumission','{$recipientName},<br />\n<br />\nCeci est un petit rappel concernant notre demande d\'évaluation de la soumission « {$submissionTitle} » pour la revue {$journalName}. Nous espérions recevoir votre évaluation avant le {$reviewDueDate}. Nous serions heureux de la recevoir dès que possible.<br />\n<br />\nSi vous n\'avez pas vos nom d\'utilisateur-trice et mot de passe pour le site de la revue, vous pouvez utiliser le lien suivant pour réinitialiser votre mot de passe (lequel vous sera envoyé par courriel avec votre nom d\'utilisateur-trice). {$passwordResetUrl}<br />\n<br />\nURL de la soumission : {$reviewAssignmentUrl}<br />\n<br />\nVeuillez confirmer que vous êtes en mesure d\'effectuer ce travail essentiel pour la publication de notre revue. Nous espérons avoir de vos nouvelles très bientôt.<br />\n<br />\n{$signature}'),('REVIEW_REMIND_AUTO','en_US','A reminder to please complete your review','<p>Dear {$recipientName}:</p><p>This email is an automated reminder from {$journalName} in regards to our request for your review of the submission, \"{$submissionTitle}.\"</p><p>We were expecting to have this review by {$reviewDueDate} and we would be pleased to receive it as soon as you are able to prepare it.</p><p>Please login to the journal and follow the review steps to view the submission, upload review files, and submit your review comments.</p><p>If you need an extension of the deadline, please contact me. I look forward to hearing from you.</p><p>Thank you in advance and kind regards,</p>{$signature}'),('REVIEW_REMIND_AUTO','fr_CA','Rappel automatique d\'évaluation d\'une soumission','{$recipientName},<br />\n<br />\nCeci est un petit rappel concernant notre demande d\'évaluation de la soumission « {$submissionTitle} » pour la revue {$journalName}. Puisque nous n\'avons pas reçu, comme nous l\'espérions, votre évaluation avant le {$reviewDueDate}, ce courriel a été généré et envoyé automatiquement après l\'échéance du délai. Nous serions toutefois heureux de recevoir votre évaluation dès que possible.<br />\n<br />\nSi vous n\'avez pas vos nom d\'utilisateur-trice et mot de passe pour le site de la revue, vous pouvez utiliser le lien suivant pour réinitialiser votre mot de passe (lequel vous sera envoyé par courriel avec votre nom d\'utilisateur-trice). {$passwordResetUrl}<br />\n<br />\nURL de la soumission : {$reviewAssignmentUrl}<br />\n<br />\nVeuillez confirmer que vous êtes en mesure d\'effectuer ce travail essentiel pour la publication de notre revue. Nous espérons avoir de vos nouvelles très bientôt.<br />\n<br />\n{$signature}'),('REVIEW_REQUEST','en_US','Invitation to review','<p>Dear {$recipientName},</p><p>I believe that you would serve as an excellent reviewer for a submission  to {$journalName}. The submission\'s title and abstract are below, and I hope that you will consider undertaking this important task for us.</p><p>If you are able to review this submission, your review is due by {$reviewDueDate}. You can view the submission, upload review files, and submit your review by logging into the journal site and following the steps at the link below.</p><p><a href=\"{$reviewAssignmentUrl}\">{$submissionTitle}</a></p><p>Abstract</p>{$submissionAbstract}<p>Please accept or decline the review by {$responseDueDate}</p><p>You may contact me with any questions about the submission or the review process.</p><p>Thank you for considering this request. Your help is much appreciated.</p><p>Kind regards,</p>{$signature}'),('REVIEW_REQUEST','fr_CA','Demande d\'évaluation d\'un article','{$recipientName},<br />\n<br />\nNous croyons que vous feriez un-e excellent-e évaluateur-trice pour le manuscrit intitulé « {$submissionTitle} » qui a été soumis à la revue {$journalName}. Vous trouverez un résumé de la soumission ci-dessous. Nous espérons que vous accepterez ce travail essentiel à la publication de la revue.<br />\n<br />\nVeuillez accéder au site Web de la revue avant le {$responseDueDate} pour nous laisser savoir si vous acceptez de faire l\'évaluation ou non. Vous pouvez également y consulter la soumission et y enregistrer votre évaluation et votre recommandation. Le site Web se trouve à l\'adresse suivante : {$journalUrl}<br />\n<br />\nLa date d\'échéance de l\'évaluation a été fixée au {$reviewDueDate}.<br />\n<br />\nSi vous n\'avez pas de nom d\'utilisateur-trice et de mot de passe pour le site Web de la revue, cliquez sur le lien ci-dessous pour réinitialiser votre mot de passe (lequel vous sera envoyé par courriel avec votre nom d\'utilisateur-trice). {$passwordLostUrl}<br />\n<br />\nURL de la soumission : {$reviewAssignmentUrl}<br />\n<br />\nNous vous remercions de l\'attention que vous porterez à notre demande.<br />\n<br />\n{$signature}<br />\n<br />\n« {$submissionTitle} »<br />\n<br />\n{$submissionAbstract}'),('REVIEW_REQUEST_SUBSEQUENT','en_US','Request to review a revised submission','<p>Dear {$recipientName},</p><p>Thank you for your review of <a href=\"{$reviewAssignmentUrl}\">{$submissionTitle}</a>. The authors have considered the reviewers\' feedback and have now submitted a revised version of their work. I\'m writing to ask if you would conduct a second round of peer review for this submission.</p><p>If you are able to review this submission, your review is due by {$reviewDueDate}. You can <a href=\"{$reviewAssignmentUrl}\">follow the review steps</a> to view the submission, upload review files, and submit your review comments.<p><p><a href=\"{$reviewAssignmentUrl}\">{$submissionTitle}</a></p><p>Abstract</p>{$submissionAbstract}<p>Please accept or decline the review by {$responseDueDate}.</p><p>Please feel free to contact me with any questions about the submission or the review process.</p><p>Thank you for considering this request. Your help is much appreciated.</p><p>Kind regards,</p>{$signature}'),('REVIEW_REQUEST_SUBSEQUENT','fr_CA','Demande d\'évaluation d\'un article','{$recipientName},<br />\n<br />\nCeci concerne le manuscrit « {$submissionTitle} », qui est présentement évalué par {$journalName}.<br />\n<br />\nSuivant l\'évaluation de la dernière version du manuscrit, l\'auteur a soumis une version révisée de son document. Nous apprécierions que vous évaluiez cette nouvelle version.<br />\n<br />\nVeuillez vous authentifier sur la page de la revue avant le {$responseDueDate} pour y indiquer si vous participerez à cette évaluation ou non, ou encore pour accéder à la soumission et y enregistrer votre évaluation et vos recommandations. Le site Web est {$journalUrl}<br />\n<br />\nL\'évaluation est due pour le {$reviewDueDate}.<br />\n<br />\nSi vous n\'avez pas vos nom d\'utilisateur-trice et mot de passe pour le site de la revue, vous pouvez utiliser le lien suivant pour réinitialiser votre mot de passe (lequel vous sera envoyé par courriel avec votre nom d\'utilisateur-trice). {$passwordLostUrl}<br />\n<br />\nURL de la soumission : {$reviewAssignmentUrl}<br />\n<br />\nNous vous remercions de l\'attention que vous porterez à notre demande.<br />\n<br />\n{$signature}<br />\n<br />\n« {$submissionTitle} » <br />\n<br />\n{$submissionAbstract}'),('REVIEW_RESEND_REQUEST','en_US','Requesting your review again for {$journalName}','<p>Dear {$recipientName},</p><p>Recently, you declined our request to review a submission, {$submissionTitle}, for {$journalName}. I\'m writing to see if you are able to conduct the review after all.</p><p>We would be grateful if you\'re able to perform this review, but we understand if that is not possible at this time. Either way, please <a href=\"{$reviewAssignmentUrl}\">accept or decline the request</a> by {$responseDueDate}, so that we can find an alternate reviewer.<p>If you have any questions, please contact me.</p><p>Kind regards,</p>{$signature}'),('REVIEW_RESEND_REQUEST','fr_CA','',''),('REVIEW_RESPONSE_OVERDUE_AUTO','en_US','Will you be able to review this for us?','<p>Dear {$recipientName},</p><p>This email is an automated reminder from {$journalName} in regards to our request for your review of the submission, \"{$submissionTitle}.\"</p><p>You are receiving this email because we have not yet received a confirmation from you indicating whether or not you are able to undertake the review of this submission.</p><p>Please let us know whether or not you are able to undertake this review by using our submission management software to accept or decline this request.</p><p>If you are able to review this submission, your review is due by {$reviewDueDate}. You can follow the review steps to view the submission, upload review files, and submit your review comments.</p><p>{$submissionTitle}</p><p>Abstract</p>{$submissionAbstract}<p>Please feel free to contact me with any questions about the submission or the review process.</p><p>Thank you for considering this request. Your help is much appreciated.</p><p>Kind regards,</p>{$signature}'),('REVIEW_RESPONSE_OVERDUE_AUTO','fr_CA','Rappel de demande d\'évaluation d\'un article','{$recipientName},<br />\nCeci est un petit rappel concernant notre demande d\'évaluation de « {$submissionTitle} » pour la revue {$journalName}. Puisque nous n\'avons pas reçu, comme nous l\'espérions, une réponse avant le {$responseDueDate}, ce courriel a été généré et envoyé automatiquement après l\'échéance du délai.\n<br />\nNous pensons que vous seriez un-e excellent-e évaluateur-trice pour le manuscrit. Vous trouverez un résumé de la soumission ci-dessous. Nous espérons que vous envisagerez d\'entreprendre cette tâche essentielle à la publication de la revue.<br />\n<br />\nVeuillez vous authentifier sur la page de la revue pour y indiquer si vous participerez à cette évaluation ou non, ou encore pour accéder à la soumission et y enregistrer votre évaluation et vos recommandations. Le site Web est {$journalUrl}<br />\n<br />\nL\'évaluation est dû pour le {$reviewDueDate}.<br />\n<br />\nSi vous n\'avez pas vos nom d\'utilisateur-trice et mot de passe pour le site de la revue, vous pouvez utiliser le lien suivant pour réinitialiser votre mot de passe (lequel vous sera envoyé par courriel avec votre nom d\'utilisateur-trice). {$passwordResetUrl}<br />\n<br />\nURL de la soumission : {$reviewAssignmentUrl}<br />\n<br />\nNous vous remercions de l\'attention que vous porterez à notre demande.<br />\n<br />\n{$signature}<br />\n<br />\n« {$submissionTitle} »<br />\n<br />\n{$submissionAbstract}'),('REVISED_VERSION_NOTIFY','en_US','Revised Version Uploaded','Editors:<br />\n<br />\nA revised version of &quot;{$submissionTitle}&quot; has been uploaded by the author {$submitterName}.<br />\n<br />\nSubmission URL: {$submissionUrl}<br />\n<br />\n{$signature}'),('REVISED_VERSION_NOTIFY','fr_CA','Version révisée téléversée','Rédacteurs-trices,<br />\n<br />\nUne version révisée de « {$submissionTitle} » a été téléversée par l\'auteur-e {$submitterName}.<br />\n<br />\nURL de la soumission : {$submissionUrl}<br />\n<br />\n{$signature}'),('STATISTICS_REPORT_NOTIFICATION','en_US','Editorial activity for {$month}, {$year}','\n{$recipientName}, <br />\n<br />\nYour journal health report for {$month}, {$year} is now available. Your key stats for this month are below.<br />\n<ul>\n	<li>New submissions this month: {$newSubmissions}</li>\n	<li>Declined submissions this month: {$declinedSubmissions}</li>\n	<li>Accepted submissions this month: {$acceptedSubmissions}</li>\n	<li>Total submissions in the system: {$totalSubmissions}</li>\n</ul>\nLogin to the journal to view more detailed <a href=\"{$editorialStatsLink}\">editorial trends</a> and <a href=\"{$publicationStatsLink}\">published article stats</a>. A full copy of this month\'s editorial trends is attached.<br />\n<br />\nSincerely,<br />\n{$journalSignature}'),('STATISTICS_REPORT_NOTIFICATION','fr_CA','Activité éditoriale pour {$month} {$year}','\n{$recipientName}, <br />\n<br />\nLe rapport d\'activité éditoriale de votre revue pour {$month} {$year} est maintenant disponible. Les principales statistiques pour ce mois sont affichées ci-dessous.<br />\n<ul>\n	<li> Nouvelles soumissions pour ce mois : {$newSubmissions} </li>\n	<li> Soumissions refusées pour ce mois : {$declinedSubmissions} </li>\n	<li> Soumissions acceptées pour ce mois : {$acceptedSubmissions} </li>\n	<li> Nombre total de soumissions dans la plateforme : {$totalSubmissions} </li>\n</ul>\nConnectez-vous au site de la revue pour voir davantage de <a href=\"{$editorialStatsLink}\">tendances dans l\'activité éditoriale</a> ainsi que des <a href=\"{$publicationStatsLink}\">statistiques relatives aux articles publiés</a>. Le rapport complet des tendances de l\'activité éditoriale de ce mois-ci est joint au présent envoi.<br />\n<br />\nCordialement,<br />\n{$journalSignature}'),('SUBMISSION_ACK','en_US','Thank you for your submission to {$journalName}','<p>Dear {$recipientName},</p><p>Thank you for your submission to {$journalName}. We have received your submission, {$submissionTitle}, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: {$authorSubmissionUrl}</p><p>If you have been logged out, you can login again with the username {$recipientUsername}</p><p>If you have any questions, please contact me from your <a href=\"{$authorSubmissionUrl}\">submission dashboard</a>.</p><p>Thank you for considering this journal as a venue for your work.</p>{$journalSignature}'),('SUBMISSION_ACK','fr_CA','Accusé de réception de la soumission','{$recipientName},<br />\n<br />\nNous vous remercions d\'avoir soumis le manuscrit intitulé « {$submissionTitle} » à la revue {$journalName}. Grâce à notre système de gestion en ligne, vous pourrez suivre votre soumission tout au long du processus d\'édition en accédant au site Web de la revue :<br />\n<br />\nURL de la soumission : {$submissionUrl}<br />\nNom d\'utilisateur-trice : {$recipientUsername}<br />\n<br />\nSi vous avez des questions, n\'hésitez pas à communiquer avec nous. Nous vous remercions d\'avoir pensé à notre revue pour la publication de vos travaux.<br />\n<br />\n{$journalSignature}'),('SUBMISSION_ACK_NOT_USER','en_US','Submission confirmation','<p>Dear {$recipientName},</p><p>You have been named as a co-author on a submission to {$journalName}. The submitter, {$submitterName}, provided the following details:</p><p>{$submissionTitle}<br>{$authorsWithAffiliation}</p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering this journal as a venue for your work.</p><p>Kind regards,</p>{$journalSignature}'),('SUBMISSION_ACK_NOT_USER','fr_CA','Accusé de réception de la soumission','<p>Bonjour,</p><p>Le manuscrit intitulé , « {$submissionTitle} » , a été soumis par {$submitterName} à la revue {$journalName}.</p><p>Si vous avez des questions, n\'hésitez pas à communiquer avec nous. Nous vous remercions d\'avoir pensé à la revue {$journalName} pour la publication de vos travaux.</p><p>Cordialement,</p>{$journalSignature}'),('SUBSCRIPTION_AFTER_EXPIRY','en_US','Subscription Expired','{$recipientName}:<br />\n<br />\nYour {$journalName} subscription has expired.<br />\n<br />\n{$subscriptionType}<br />\nExpiry date: {$expiryDate}<br />\n<br />\nTo renew your subscription, please go to the journal website. You are able to log in to the system with your username, &quot;{$recipientUsername}&quot;.<br />\n<br />\nIf you have any questions, please feel free to contact me.<br />\n<br />\n{$subscriptionSignature}'),('SUBSCRIPTION_AFTER_EXPIRY','fr_CA','Abonnement expiré','{$recipientName},<br />\n<br />\nVotre abonnement à la revue {$journalName} est expiré.<br />\n<br />\n{$subscriptionType}<br />\nDate d\'expiration : {$expiryDate}<br />\n<br />\nPour renouveler votre abonnement, veuillez vous rendre sur le site Web de la revue. Vous pouvez y ouvrir une session en utilisant votre nom d\'utilisateur-trice, soit « {$recipientUsername} ».<br />\n<br />\nSi vous avez des questions, n\'hésitez pas à communiquer avec nous.<br />\n<br />\n{$subscriptionSignature}'),('SUBSCRIPTION_AFTER_EXPIRY_LAST','en_US','Subscription Expired - Final Reminder','{$recipientName}:<br />\n<br />\nYour {$journalName} subscription has expired.<br />\nPlease note that this is the final reminder that will be emailed to you.<br />\n<br />\n{$subscriptionType}<br />\nExpiry date: {$expiryDate}<br />\n<br />\nTo renew your subscription, please go to the journal website. You are able to log in to the system with your username, &quot;{$recipientUsername}&quot;.<br />\n<br />\nIf you have any questions, please feel free to contact me.<br />\n<br />\n{$subscriptionSignature}'),('SUBSCRIPTION_AFTER_EXPIRY_LAST','fr_CA','Abonnement expiré - Dernier rappel','{$recipientName},<br />\n<br />\nVotre abonnement à la revue {$journalName} est expiré. Veuillez prendre note que ceci est le dernier rappel qui vous sera envoyé.<br />\n<br />\n{$subscriptionType}<br />\nDate d\'expiration : {$expiryDate}<br />\n<br />\nPour renouveller votre abonnement, aveuillez vous rendre sur le site Web de la revue. Vous pouvez y ouvrir une session avec votre nom d\'utilisateur-trice, soit « {$recipientUsername} ».<br />\n<br />\nSi vous avez des questions, ne hésitez pas à communiquer avec nous.<br />\n<br />\n{$subscriptionSignature}'),('SUBSCRIPTION_BEFORE_EXPIRY','en_US','Notice of Subscription Expiry','{$recipientName}:<br />\n<br />\nYour {$journalName} subscription is about to expire.<br />\n<br />\n{$subscriptionType}<br />\nExpiry date: {$expiryDate}<br />\n<br />\nTo ensure the continuity of your access to this journal, please go to the journal website and renew your subscription. You are able to log in to the system with your username, &quot;{$recipientUsername}&quot;.<br />\n<br />\nIf you have any questions, please feel free to contact me.<br />\n<br />\n{$subscriptionSignature}'),('SUBSCRIPTION_BEFORE_EXPIRY','fr_CA','Avis d\'expiration de l\'abonnement','{$recipientName},<br />\n<br />\nVotre abonnement à la revue {$journalName} expirera bientôt.<br />\n<br />\n{$subscriptionType}<br />\nDate d\'expiration : {$expiryDate}<br />\n<br />\nAfin d\'assurer la continuité de votre accès à cette revue, nous vous invitons à aller sur le site Web de la revue et à renouveler votre abonnement. Vous pouvez vous y ouvrir une session avec votre nom d\'utilisateur-trice, soit « {$recipientUsername} ».<br />\n<br />\nSi vous avez des questions, ne pas hésiter à communiquer avec nous.<br />\n<br />\n{$subscriptionSignature}'),('SUBSCRIPTION_NOTIFY','en_US','Subscription Notification','{$recipientName}:<br />\n<br />\nYou have now been registered as a subscriber in our online journal management system for {$journalName}, with the following subscription:<br />\n<br />\n{$subscriptionType}<br />\n<br />\nTo access content that is available only to subscribers, simply log in to the system with your username, &quot;{$recipientUsername}&quot;.<br />\n<br />\nOnce you have logged in to the system you can change your profile details and password at any point.<br />\n<br />\nPlease note that if you have an institutional subscription, there is no need for users at your institution to log in, since requests for subscription content will be automatically authenticated by the system.<br />\n<br />\nIf you have any questions, please feel free to contact me.<br />\n<br />\n{$subscriptionSignature}'),('SUBSCRIPTION_NOTIFY','fr_CA','Avis d\'abonnement','{$recipientName},<br />\n<br />\nVous êtes maintenant abonné-e à notre système de gestion de revue en ligne pour la revue {$journalName}, avec le type d\'abonnement suivant  :<br />\n<br />\n{$subscriptionType}<br />\n<br />\nPour accéder au contenu destiné seulement aux abonnés, connectez-vous au système à l\'aide de votre nom d\'utilisateur-trice : {$recipientUsername}.<br />\n<br />\nUne fois connecté-e dans le système, vous pouvez, en tout temps, modifier les renseignements de votre profil et votre mot de passe.<br />\n<br />\nVeuillez prendre note que si vous disposez d\'un abonnement institutionnel, les utilisateurs-trices n\'ont pas à entrer de nom d\'utilisateur-trice puisque le système authentifiera automatiquement les demandes.<br />\n<br />\nSi vous avez des questions, n\'hésitez pas à communiquer avec nous.<br />\n<br />\n{$subscriptionSignature}'),('SUBSCRIPTION_PURCHASE_INDL','en_US','Subscription Purchase: Individual','An individual subscription has been purchased online for {$journalName} with the following details.<br />\n<br />\nSubscription Type:<br />\n{$subscriptionType}<br />\n<br />\nUser:<br />\n{$subscriberDetails}<br />\n<br />\nMembership Information (if provided):<br />\n{$membership}<br />\n<br />\nTo view or edit this subscription, please use the following URL.<br />\n<br />\nSubscription URL: {$subscriptionUrl}<br />\n'),('SUBSCRIPTION_PURCHASE_INDL','fr_CA','Souscription à un abonnement individuel','Une souscription en ligne à un abonnement individuel pour la revue {$journalName} avec les renseignements suivants :<br />\n<br />\nType d\'abonnement :<br />\n{$subscriptionType}<br />\n<br />\nUtilisateur-trice :<br />\n{$subscriberDetails}<br />\n<br />\nInformation d\'adhésion (si fournie) :<br />\n{$membership}<br />\n<br />\nPour afficher ou modifier cet abonnement, veuillez utiliser l\'URL suivante.<br />\n<br />\nURL d\'abonnement : {$subscriptionUrl}<br/>\n'),('SUBSCRIPTION_PURCHASE_INSTL','en_US','Subscription Purchase: Institutional','An institutional subscription has been purchased online for {$journalName} with the following details. To activate this subscription, please use the provided Subscription URL and set the subscription status to \'Active\'.<br />\n<br />\nSubscription Type:<br />\n{$subscriptionType}<br />\n<br />\nInstitution:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomain (if provided):<br />\n{$domain}<br />\n<br />\nIP Ranges (if provided):<br />\n{$ipRanges}<br />\n<br />\nContact Person:<br />\n{$subscriberDetails}<br />\n<br />\nMembership Information (if provided):<br />\n{$membership}<br />\n<br />\nTo view or edit this subscription, please use the following URL.<br />\n<br />\nSubscription URL: {$subscriptionUrl}<br />\n'),('SUBSCRIPTION_PURCHASE_INSTL','fr_CA','Souscription à un abonnement institutionnel','Souscription en ligne à un abonnement institutionnel pour la revue {$journalName} avec les renseignements suivants. Pour activer cet abonnement, veuillez utiliser l\'URL d\'abonnement fourni et fixer le statut de l\'abonnement à « actif ».<br />\n<br />\nType d\'abonnement :<br />\n{$subscriptionType}<br />\n<br />\nÉtablissement :<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomaine (si fourni) :<br />\n{$domain}<br />\n<br />\nPlage d\'adresses IP (si fournie) :<br />\n{$ipRanges}<br />\n<br />\nPersonne-ressource :<br />\n{$subscriberDetails}<br />\n<br />\nRenseignements d\'adhésion (si fournis) :<br />\n{$membership}<br />\n<br />\nPour afficher ou modifier cet abonnement, veuillez utiliser l\'URL suivant :<br />\n<br />\nURL de l\'abonnement : {$subscriptionUrl}<br />\n'),('SUBSCRIPTION_RENEW_INDL','en_US','Subscription Renewal: Individual','An individual subscription has been renewed online for {$journalName} with the following details.<br />\n<br />\nSubscription Type:<br />\n{$subscriptionType}<br />\n<br />\nUser:<br />\n{$subscriberDetails}<br />\n<br />\nMembership Information (if provided):<br />\n{$membership}<br />\n<br />\nTo view or edit this subscription, please use the following URL.<br />\n<br />\nSubscription URL: {$subscriptionUrl}<br />\n'),('SUBSCRIPTION_RENEW_INDL','fr_CA','Renouvellement d\'abonnement individuel','Un abonnement individuel a été renouvelé en ligne pour la revue {$journalName} avec les renseignements suivants.<br />\n<br />\nType d\'abonnement :<br />\n{$subscriptionType}<br />\n<br />\nUtilisateur-trice :<br />\n{$subscriberDetails}<br />\n<br />\nRenseignements d\'adhésion (si fournis) :<br />\n{$membership}<br />\n<br />\nPour afficher ou modifier cet abonnement, veuillez utiliser l\'URL suivant.<br />\n<br />\nURL de l\'abonnement : {$subscriptionUrl}<br />\n'),('SUBSCRIPTION_RENEW_INSTL','en_US','Subscription Renewal: Institutional','An institutional subscription has been renewed online for {$journalName} with the following details.<br />\n<br />\nSubscription Type:<br />\n{$subscriptionType}<br />\n<br />\nInstitution:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomain (if provided):<br />\n{$domain}<br />\n<br />\nIP Ranges (if provided):<br />\n{$ipRanges}<br />\n<br />\nContact Person:<br />\n{$subscriberDetails}<br />\n<br />\nMembership Information (if provided):<br />\n{$membership}<br />\n<br />\nTo view or edit this subscription, please use the following URL.<br />\n<br />\nSubscription URL: {$subscriptionUrl}<br />\n'),('SUBSCRIPTION_RENEW_INSTL','fr_CA','Renouvellement d\'abonnement institutionnel','Un abonnement institutionnel a été renouvelé en ligne pour la revue {$journalName} avec les renseignements suivants.<br />\n<br />\nType d\'abonnement :<br />\n{$subscriptionType}<br />\n<br />\nÉtablissement :<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomaine (si fourni) :<br />\n{$domain}<br />\n<br />\nPlage d\'adresses IP (si fournie) :<br />\n{$ipRanges}<br />\n<br />\nPersonne-ressource :<br />\n{$subscriberDetails}<br />\n<br />\nRenseignements d\'adhésion (si fournis) :<br />\n{$membership}<br />\n<br />\nPour afficher ou modifier cet abonnement, veuillez utiliser l\'URL suivant.<br />\n<br />\nURL de l\'abonnement : {$subscriptionUrl}<br />\n'),('USER_REGISTER','en_US','Journal Registration','{$recipientName}<br />\n<br />\nYou have now been registered as a user with {$journalName}. We have included your username and password in this email, which are needed for all work with this journal through its website. At any point, you can ask to be removed from the journal\'s list of users by contacting me.<br />\n<br />\nUsername: {$recipientUsername}<br />\nPassword: {$password}<br />\n<br />\nThank you,<br />\n{$signature}'),('USER_REGISTER','fr_CA','Inscription à la revue','{$recipientName},<br />\n<br />\nVous êtes désormais inscrit-e en tant qu\'utilisateur-trice pour la revue {$journalName}. Votre nom d\'utilisateur-trice et votre mot de passe figurent dans ce courriel, lesquels sont requis pour toute interaction avec la revue via son site Web. À n\'importe quel moment, vous pouvez demander à être retiré-e de la liste des utilisateurs-trices de la revue en nous contactant.<br />\n<br />\nNom d\'utilisateur-trice : {$recipientUsername}<br />\nMot de passe : {$password}<br />\n<br />\nMerci,<br />\n{$signature}'),('USER_VALIDATE_CONTEXT','en_US','Validate Your Account','{$recipientName}<br />\n<br />\nYou have created an account with {$journalName}, but before you can start using it, you need to validate your email account. To do this, simply follow the link below:<br />\n<br />\n{$activateUrl}<br />\n<br />\nThank you,<br />\n{$signature}'),('USER_VALIDATE_CONTEXT','fr_CA','Valider votre compte','{$recipientName},<br />\n<br />\nVous avez créé un compte pour la revue {$journalName}. Pour pouvoir commencer à l\'utiliser il nous faut d\'abord valider votre adresse de courriel. Pour ce faire, vous n\'avez qu\'à suivre le lien ci-dessous :<br />\n<br />\n{$activateUrl}<br />\n<br />\nMerci,<br />\n{$signature}'),('USER_VALIDATE_SITE','en_US','Validate Your Account','{$recipientName}<br />\n<br />\nYou have created an account with {$siteTitle}, but before you can start using it, you need to validate your email account. To do this, simply follow the link below:<br />\n<br />\n{$activateUrl}<br />\n<br />\nThank you,<br />\n{$signature}'),('USER_VALIDATE_SITE','fr_CA','Valider votre compte','{$recipientName},<br />\n<br />\nVous avez créé un compte dans {$siteTitle}. Avant de pouvoir commencer à l\'utiliser, il nous faut d\'abord valider votre adresse de courriel. Pour ce faire, vous n\'avez qu\'à suivre le lien ci-dessous :<br />\n<br />\n{$activateUrl}<br />\n<br />\nMerci,<br />\n{$signature}');
/*!40000 ALTER TABLE `email_templates_default_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates_settings`
--

DROP TABLE IF EXISTS `email_templates_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates_settings` (
  `email_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  UNIQUE KEY `email_settings_pkey` (`email_id`,`locale`,`setting_name`),
  KEY `email_templates_settings_email_id` (`email_id`),
  CONSTRAINT `email_templates_settings_email_id` FOREIGN KEY (`email_id`) REFERENCES `email_templates` (`email_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates_settings`
--

LOCK TABLES `email_templates_settings` WRITE;
/*!40000 ALTER TABLE `email_templates_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_templates_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_log`
--

DROP TABLE IF EXISTS `event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `date_logged` datetime NOT NULL,
  `event_type` bigint(20) DEFAULT NULL,
  `message` text,
  `is_translated` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `event_log_user_id` (`user_id`),
  KEY `event_log_assoc` (`assoc_type`,`assoc_id`),
  CONSTRAINT `event_log_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_log`
--

LOCK TABLES `event_log` WRITE;
/*!40000 ALTER TABLE `event_log` DISABLE KEYS */;
INSERT INTO `event_log` VALUES (1,1048585,1,17,'2022-10-26 06:52:57',268435458,'submission.event.general.metadataUpdated',0),(2,515,1,17,'2022-10-26 06:52:59',1342177281,'submission.event.fileUploaded',0),(3,1048585,1,17,'2022-10-26 06:52:59',1342177288,'submission.event.fileRevised',0),(4,515,1,17,'2022-10-26 06:53:00',1342177296,'submission.event.fileEdited',0),(5,1048585,1,17,'2022-10-26 06:53:00',1342177296,'submission.event.fileEdited',0),(6,1048585,1,17,'2022-10-26 06:53:03',268435458,'submission.event.general.metadataUpdated',0),(7,1048585,1,17,'2022-10-26 06:53:04',268435457,'submission.event.submissionSubmitted',0),(8,1048585,1,3,'2022-10-26 06:53:14',805306371,'editor.submission.decision.sendExternalReview.log',0),(9,515,2,3,'2022-10-26 06:53:14',1342177281,'submission.event.fileUploaded',0),(10,1048585,1,3,'2022-10-26 06:53:14',1342177288,'submission.event.fileRevised',0),(11,1048585,1,3,'2022-10-26 06:53:22',1073741825,'log.review.reviewerAssigned',0),(12,1048585,1,3,'2022-10-26 06:53:29',1073741825,'log.review.reviewerAssigned',0),(13,1048585,1,3,'2022-10-26 06:53:35',1073741825,'log.review.reviewerAssigned',0),(14,1048585,1,3,'2022-10-26 06:53:40',805306371,'editor.submission.decision.accept.log',0),(15,1048585,1,3,'2022-10-26 06:53:46',268435459,'submission.event.participantAdded',0),(16,1048585,1,3,'2022-10-26 06:53:52',805306371,'editor.submission.decision.sendToProduction.log',0),(17,1048585,1,3,'2022-10-26 06:53:59',268435459,'submission.event.participantAdded',0),(18,1048585,1,3,'2022-10-26 06:54:04',268435459,'submission.event.participantAdded',0),(19,1048585,1,3,'2022-10-26 06:54:12',268435458,'submission.event.general.metadataUpdated',0),(20,1048585,1,3,'2022-10-26 06:54:15',268435458,'submission.event.general.metadataUpdated',0),(21,1048585,1,3,'2022-10-26 06:54:16',268435458,'submission.event.general.metadataUpdated',0),(22,1048585,1,3,'2022-10-26 06:54:19',268435458,'submission.event.general.metadataUpdated',0),(23,515,3,3,'2022-10-26 06:54:28',1342177281,'submission.event.fileUploaded',0),(24,1048585,1,3,'2022-10-26 06:54:28',1342177288,'submission.event.fileRevised',0),(25,515,3,3,'2022-10-26 06:54:28',1342177296,'submission.event.fileEdited',0),(26,1048585,1,3,'2022-10-26 06:54:28',1342177296,'submission.event.fileEdited',0),(27,1048585,1,3,'2022-10-26 06:54:40',268435459,'submission.event.participantAdded',0),(28,1048585,1,17,'2022-10-26 06:54:47',268435458,'submission.event.general.metadataUpdated',0),(29,1048585,1,3,'2022-10-26 06:54:52',268435458,'submission.event.general.metadataUpdated',0),(30,1048585,1,3,'2022-10-26 06:54:53',268435462,'publication.event.published',0),(31,1048585,1,3,'2022-10-26 06:55:05',268435463,'publication.event.unpublished',0),(32,1048585,1,3,'2022-10-26 06:55:11',268435462,'publication.event.published',0),(33,1048585,1,3,'2022-10-26 06:55:16',268435458,'submission.event.general.metadataUpdated',0),(34,1048585,1,3,'2022-10-26 06:55:16',268435458,'submission.event.general.metadataUpdated',0),(35,1048585,1,3,'2022-10-26 06:55:16',268435464,'publication.event.versionCreated',0),(36,1048585,1,3,'2022-10-26 06:55:26',268435458,'submission.event.general.metadataUpdated',0),(37,1048585,1,3,'2022-10-26 06:55:36',268435458,'submission.event.general.metadataUpdated',0),(38,1048585,1,3,'2022-10-26 06:55:38',268435462,'publication.event.versionPublished',0),(39,1048585,1,3,'2022-10-26 06:55:53',268435463,'publication.event.versionUnpublished',0),(40,1048585,1,3,'2022-10-26 06:56:00',268435459,'submission.event.participantAdded',0),(41,1048585,1,3,'2022-10-26 06:56:11',268435459,'submission.event.participantAdded',0),(42,1048585,2,18,'2022-10-26 06:56:25',268435458,'submission.event.general.metadataUpdated',0),(43,515,4,18,'2022-10-26 06:56:27',1342177281,'submission.event.fileUploaded',0),(44,1048585,2,18,'2022-10-26 06:56:27',1342177288,'submission.event.fileRevised',0),(45,515,4,18,'2022-10-26 06:56:28',1342177296,'submission.event.fileEdited',0),(46,1048585,2,18,'2022-10-26 06:56:28',1342177296,'submission.event.fileEdited',0),(47,1048585,2,18,'2022-10-26 06:56:31',268435458,'submission.event.general.metadataUpdated',0),(48,1048585,2,18,'2022-10-26 06:56:32',268435457,'submission.event.submissionSubmitted',0),(49,1048585,2,3,'2022-10-26 06:56:42',805306371,'editor.submission.decision.sendExternalReview.log',0),(50,515,5,3,'2022-10-26 06:56:43',1342177281,'submission.event.fileUploaded',0),(51,1048585,2,3,'2022-10-26 06:56:43',1342177288,'submission.event.fileRevised',0),(52,1048585,2,3,'2022-10-26 06:56:49',268435459,'submission.event.participantAdded',0),(53,1048585,2,3,'2022-10-26 06:56:53',268435458,'submission.event.general.metadataUpdated',0),(54,1048585,2,6,'2022-10-26 06:57:05',805306372,'editor.submission.recommend.accept.log',0),(55,1048585,3,19,'2022-10-26 06:57:25',268435458,'submission.event.general.metadataUpdated',0),(56,515,6,19,'2022-10-26 06:57:27',1342177281,'submission.event.fileUploaded',0),(57,1048585,3,19,'2022-10-26 06:57:27',1342177288,'submission.event.fileRevised',0),(58,515,6,19,'2022-10-26 06:57:29',1342177296,'submission.event.fileEdited',0),(59,1048585,3,19,'2022-10-26 06:57:29',1342177296,'submission.event.fileEdited',0),(60,1048585,3,19,'2022-10-26 06:57:31',268435458,'submission.event.general.metadataUpdated',0),(61,1048585,3,19,'2022-10-26 06:57:33',268435457,'submission.event.submissionSubmitted',0),(62,1048585,3,3,'2022-10-26 06:57:43',805306371,'editor.submission.decision.sendExternalReview.log',0),(63,515,7,3,'2022-10-26 06:57:43',1342177281,'submission.event.fileUploaded',0),(64,1048585,3,3,'2022-10-26 06:57:44',1342177288,'submission.event.fileRevised',0),(65,1048585,3,3,'2022-10-26 06:57:53',1073741825,'log.review.reviewerAssigned',0),(66,1048585,3,3,'2022-10-26 06:58:00',1073741825,'log.review.reviewerAssigned',0),(67,1048585,3,3,'2022-10-26 06:58:04',805306371,'editor.submission.decision.accept.log',0),(68,1048585,3,3,'2022-10-26 06:58:12',268435459,'submission.event.participantAdded',0),(69,1048585,4,20,'2022-10-26 06:58:22',268435458,'submission.event.general.metadataUpdated',0),(70,515,8,20,'2022-10-26 06:58:24',1342177281,'submission.event.fileUploaded',0),(71,1048585,4,20,'2022-10-26 06:58:24',1342177288,'submission.event.fileRevised',0),(72,515,8,20,'2022-10-26 06:58:25',1342177296,'submission.event.fileEdited',0),(73,1048585,4,20,'2022-10-26 06:58:25',1342177296,'submission.event.fileEdited',0),(74,1048585,4,20,'2022-10-26 06:58:31',268435458,'submission.event.general.metadataUpdated',0),(75,1048585,4,20,'2022-10-26 06:58:33',268435457,'submission.event.submissionSubmitted',0),(76,1048585,5,21,'2022-10-26 06:58:42',268435458,'submission.event.general.metadataUpdated',0),(77,515,9,21,'2022-10-26 06:58:44',1342177281,'submission.event.fileUploaded',0),(78,1048585,5,21,'2022-10-26 06:58:44',1342177288,'submission.event.fileRevised',0),(79,515,9,21,'2022-10-26 06:58:45',1342177296,'submission.event.fileEdited',0),(80,1048585,5,21,'2022-10-26 06:58:45',1342177296,'submission.event.fileEdited',0),(81,1048585,5,21,'2022-10-26 06:58:48',268435458,'submission.event.general.metadataUpdated',0),(82,1048585,5,21,'2022-10-26 06:58:49',268435457,'submission.event.submissionSubmitted',0),(83,1048585,5,3,'2022-10-26 06:59:00',805306371,'editor.submission.decision.sendExternalReview.log',0),(84,515,10,3,'2022-10-26 06:59:00',1342177281,'submission.event.fileUploaded',0),(85,1048585,5,3,'2022-10-26 06:59:00',1342177288,'submission.event.fileRevised',0),(86,1048585,5,3,'2022-10-26 06:59:09',1073741825,'log.review.reviewerAssigned',0),(87,1048585,5,3,'2022-10-26 06:59:16',1073741825,'log.review.reviewerAssigned',0),(88,1048585,5,3,'2022-10-26 06:59:21',805306371,'editor.submission.decision.accept.log',0),(89,1048585,5,3,'2022-10-26 06:59:28',268435459,'submission.event.participantAdded',0),(90,1048585,5,3,'2022-10-26 06:59:33',805306371,'editor.submission.decision.sendToProduction.log',0),(91,1048585,5,3,'2022-10-26 06:59:41',268435459,'submission.event.participantAdded',0),(92,1048585,5,3,'2022-10-26 06:59:47',268435459,'submission.event.participantAdded',0),(93,1048585,6,22,'2022-10-26 06:59:57',268435458,'submission.event.general.metadataUpdated',0),(94,515,11,22,'2022-10-26 06:59:59',1342177281,'submission.event.fileUploaded',0),(95,1048585,6,22,'2022-10-26 06:59:59',1342177288,'submission.event.fileRevised',0),(96,515,11,22,'2022-10-26 07:00:00',1342177296,'submission.event.fileEdited',0),(97,1048585,6,22,'2022-10-26 07:00:00',1342177296,'submission.event.fileEdited',0),(98,1048585,6,22,'2022-10-26 07:00:03',268435458,'submission.event.general.metadataUpdated',0),(99,1048585,6,22,'2022-10-26 07:00:04',268435457,'submission.event.submissionSubmitted',0),(100,1048585,6,3,'2022-10-26 07:00:15',805306371,'editor.submission.decision.sendExternalReview.log',0),(101,515,12,3,'2022-10-26 07:00:16',1342177281,'submission.event.fileUploaded',0),(102,1048585,6,3,'2022-10-26 07:00:16',1342177288,'submission.event.fileRevised',0),(103,1048585,6,3,'2022-10-26 07:00:24',1073741825,'log.review.reviewerAssigned',0),(104,1048585,6,3,'2022-10-26 07:00:32',1073741825,'log.review.reviewerAssigned',0),(105,1048585,6,3,'2022-10-26 07:00:37',805306371,'editor.submission.decision.accept.log',0),(106,1048585,6,3,'2022-10-26 07:00:44',268435459,'submission.event.participantAdded',0),(107,1048585,6,3,'2022-10-26 07:00:50',805306371,'editor.submission.decision.sendToProduction.log',0),(108,1048585,6,3,'2022-10-26 07:00:57',268435459,'submission.event.participantAdded',0),(109,1048585,7,23,'2022-10-26 07:01:08',268435458,'submission.event.general.metadataUpdated',0),(110,515,13,23,'2022-10-26 07:01:10',1342177281,'submission.event.fileUploaded',0),(111,1048585,7,23,'2022-10-26 07:01:10',1342177288,'submission.event.fileRevised',0),(112,515,13,23,'2022-10-26 07:01:12',1342177296,'submission.event.fileEdited',0),(113,1048585,7,23,'2022-10-26 07:01:12',1342177296,'submission.event.fileEdited',0),(114,1048585,7,23,'2022-10-26 07:01:14',268435458,'submission.event.general.metadataUpdated',0),(115,1048585,7,23,'2022-10-26 07:01:15',268435457,'submission.event.submissionSubmitted',0),(116,1048585,7,3,'2022-10-26 07:01:26',805306371,'editor.submission.decision.sendExternalReview.log',0),(117,515,14,3,'2022-10-26 07:01:26',1342177281,'submission.event.fileUploaded',0),(118,1048585,7,3,'2022-10-26 07:01:26',1342177288,'submission.event.fileRevised',0),(119,1048585,7,3,'2022-10-26 07:01:35',1073741825,'log.review.reviewerAssigned',0),(120,1048585,7,3,'2022-10-26 07:01:42',1073741825,'log.review.reviewerAssigned',0),(121,1048585,7,3,'2022-10-26 07:01:49',1073741825,'log.review.reviewerAssigned',0),(122,1048585,7,8,'2022-10-26 07:01:57',1073741830,'log.review.reviewAccepted',0),(123,1048585,7,8,'2022-10-26 07:02:01',1073741848,'log.review.reviewReady',0),(124,1048585,8,24,'2022-10-26 07:02:11',268435458,'submission.event.general.metadataUpdated',0),(125,515,15,24,'2022-10-26 07:02:13',1342177281,'submission.event.fileUploaded',0),(126,1048585,8,24,'2022-10-26 07:02:13',1342177288,'submission.event.fileRevised',0),(127,515,15,24,'2022-10-26 07:02:14',1342177296,'submission.event.fileEdited',0),(128,1048585,8,24,'2022-10-26 07:02:14',1342177296,'submission.event.fileEdited',0),(129,1048585,8,24,'2022-10-26 07:02:20',268435458,'submission.event.general.metadataUpdated',0),(130,1048585,8,24,'2022-10-26 07:02:21',268435457,'submission.event.submissionSubmitted',0),(131,1048585,9,25,'2022-10-26 07:02:30',268435458,'submission.event.general.metadataUpdated',0),(132,515,16,25,'2022-10-26 07:02:33',1342177281,'submission.event.fileUploaded',0),(133,1048585,9,25,'2022-10-26 07:02:33',1342177288,'submission.event.fileRevised',0),(134,515,16,25,'2022-10-26 07:02:34',1342177296,'submission.event.fileEdited',0),(135,1048585,9,25,'2022-10-26 07:02:34',1342177296,'submission.event.fileEdited',0),(136,1048585,9,25,'2022-10-26 07:02:36',268435458,'submission.event.general.metadataUpdated',0),(137,1048585,9,25,'2022-10-26 07:02:37',268435457,'submission.event.submissionSubmitted',0),(138,1048585,9,3,'2022-10-26 07:02:49',805306371,'editor.submission.decision.sendExternalReview.log',0),(139,515,17,3,'2022-10-26 07:02:49',1342177281,'submission.event.fileUploaded',0),(140,1048585,9,3,'2022-10-26 07:02:49',1342177288,'submission.event.fileRevised',0),(141,1048585,9,3,'2022-10-26 07:02:58',1073741825,'log.review.reviewerAssigned',0),(142,1048585,9,3,'2022-10-26 07:03:05',1073741825,'log.review.reviewerAssigned',0),(143,1048585,9,3,'2022-10-26 07:03:10',805306371,'editor.submission.decision.accept.log',0),(144,1048585,9,3,'2022-10-26 07:03:18',268435459,'submission.event.participantAdded',0),(145,1048585,9,3,'2022-10-26 07:03:23',805306371,'editor.submission.decision.sendToProduction.log',0),(146,1048585,9,3,'2022-10-26 07:03:31',268435459,'submission.event.participantAdded',0),(147,1048585,9,3,'2022-10-26 07:03:36',268435459,'submission.event.participantAdded',0),(148,1048585,10,26,'2022-10-26 07:03:47',268435458,'submission.event.general.metadataUpdated',0),(149,515,18,26,'2022-10-26 07:03:49',1342177281,'submission.event.fileUploaded',0),(150,1048585,10,26,'2022-10-26 07:03:49',1342177288,'submission.event.fileRevised',0),(151,515,18,26,'2022-10-26 07:03:50',1342177296,'submission.event.fileEdited',0),(152,1048585,10,26,'2022-10-26 07:03:50',1342177296,'submission.event.fileEdited',0),(153,1048585,10,26,'2022-10-26 07:03:53',268435458,'submission.event.general.metadataUpdated',0),(154,1048585,10,26,'2022-10-26 07:03:54',268435457,'submission.event.submissionSubmitted',0),(155,1048585,10,3,'2022-10-26 07:04:06',805306371,'editor.submission.decision.sendExternalReview.log',0),(156,515,19,3,'2022-10-26 07:04:06',1342177281,'submission.event.fileUploaded',0),(157,1048585,10,3,'2022-10-26 07:04:06',1342177288,'submission.event.fileRevised',0),(158,1048585,10,3,'2022-10-26 07:04:15',1073741825,'log.review.reviewerAssigned',0),(159,1048585,10,3,'2022-10-26 07:04:22',1073741825,'log.review.reviewerAssigned',0),(160,1048585,10,9,'2022-10-26 07:04:29',1073741830,'log.review.reviewAccepted',0),(161,1048585,10,9,'2022-10-26 07:04:33',1073741848,'log.review.reviewReady',0),(162,1048585,10,10,'2022-10-26 07:04:40',1073741830,'log.review.reviewAccepted',0),(163,1048585,10,10,'2022-10-26 07:04:45',1073741848,'log.review.reviewReady',0),(164,1048585,11,27,'2022-10-26 07:04:55',268435458,'submission.event.general.metadataUpdated',0),(165,515,20,27,'2022-10-26 07:04:57',1342177281,'submission.event.fileUploaded',0),(166,1048585,11,27,'2022-10-26 07:04:57',1342177288,'submission.event.fileRevised',0),(167,515,20,27,'2022-10-26 07:04:58',1342177296,'submission.event.fileEdited',0),(168,1048585,11,27,'2022-10-26 07:04:58',1342177296,'submission.event.fileEdited',0),(169,1048585,11,27,'2022-10-26 07:05:04',268435458,'submission.event.general.metadataUpdated',0),(170,1048585,11,27,'2022-10-26 07:05:05',268435457,'submission.event.submissionSubmitted',0),(171,1048585,12,28,'2022-10-26 07:05:14',268435458,'submission.event.general.metadataUpdated',0),(172,515,21,28,'2022-10-26 07:05:16',1342177281,'submission.event.fileUploaded',0),(173,1048585,12,28,'2022-10-26 07:05:16',1342177288,'submission.event.fileRevised',0),(174,515,21,28,'2022-10-26 07:05:18',1342177296,'submission.event.fileEdited',0),(175,1048585,12,28,'2022-10-26 07:05:18',1342177296,'submission.event.fileEdited',0),(176,1048585,12,28,'2022-10-26 07:05:21',268435458,'submission.event.general.metadataUpdated',0),(177,1048585,12,28,'2022-10-26 07:05:22',268435457,'submission.event.submissionSubmitted',0),(178,1048585,12,3,'2022-10-26 07:05:35',805306371,'editor.submission.decision.sendExternalReview.log',0),(179,515,22,3,'2022-10-26 07:05:35',1342177281,'submission.event.fileUploaded',0),(180,1048585,12,3,'2022-10-26 07:05:35',1342177288,'submission.event.fileRevised',0),(181,1048585,12,3,'2022-10-26 07:05:44',1073741825,'log.review.reviewerAssigned',0),(182,1048585,12,3,'2022-10-26 07:05:51',1073741825,'log.review.reviewerAssigned',0),(183,1048585,13,29,'2022-10-26 07:06:02',268435458,'submission.event.general.metadataUpdated',0),(184,515,23,29,'2022-10-26 07:06:05',1342177281,'submission.event.fileUploaded',0),(185,1048585,13,29,'2022-10-26 07:06:05',1342177288,'submission.event.fileRevised',0),(186,515,23,29,'2022-10-26 07:06:06',1342177296,'submission.event.fileEdited',0),(187,1048585,13,29,'2022-10-26 07:06:06',1342177296,'submission.event.fileEdited',0),(188,1048585,13,29,'2022-10-26 07:06:09',268435458,'submission.event.general.metadataUpdated',0),(189,1048585,13,29,'2022-10-26 07:06:10',268435457,'submission.event.submissionSubmitted',0),(190,1048585,13,3,'2022-10-26 07:06:23',805306371,'editor.submission.decision.sendExternalReview.log',0),(191,515,24,3,'2022-10-26 07:06:24',1342177281,'submission.event.fileUploaded',0),(192,1048585,13,3,'2022-10-26 07:06:24',1342177288,'submission.event.fileRevised',0),(193,1048585,13,3,'2022-10-26 07:06:32',1073741825,'log.review.reviewerAssigned',0),(194,1048585,13,3,'2022-10-26 07:06:39',1073741825,'log.review.reviewerAssigned',0),(195,1048585,13,3,'2022-10-26 07:06:46',1073741825,'log.review.reviewerAssigned',0),(196,1048585,13,7,'2022-10-26 07:06:54',1073741830,'log.review.reviewAccepted',0),(197,1048585,13,7,'2022-10-26 07:06:58',1073741848,'log.review.reviewReady',0),(198,1048585,13,9,'2022-10-26 07:07:05',1073741830,'log.review.reviewAccepted',0),(199,1048585,13,9,'2022-10-26 07:07:09',1073741848,'log.review.reviewReady',0),(200,1048585,13,10,'2022-10-26 07:07:16',1073741830,'log.review.reviewAccepted',0),(201,1048585,13,10,'2022-10-26 07:07:21',1073741848,'log.review.reviewReady',0),(202,1048585,13,3,'2022-10-26 07:07:41',805306371,'editor.submission.decision.requestRevisions.log',0),(203,1048585,13,3,'2022-10-26 07:07:41',1073741856,'submission.event.decisionReviewerEmailSent',0),(204,1048585,14,30,'2022-10-26 07:07:56',268435458,'submission.event.general.metadataUpdated',0),(205,515,25,30,'2022-10-26 07:07:58',1342177281,'submission.event.fileUploaded',0),(206,1048585,14,30,'2022-10-26 07:07:58',1342177288,'submission.event.fileRevised',0),(207,515,25,30,'2022-10-26 07:07:59',1342177296,'submission.event.fileEdited',0),(208,1048585,14,30,'2022-10-26 07:07:59',1342177296,'submission.event.fileEdited',0),(209,1048585,14,30,'2022-10-26 07:08:02',268435458,'submission.event.general.metadataUpdated',0),(210,1048585,14,30,'2022-10-26 07:08:03',268435457,'submission.event.submissionSubmitted',0),(211,1048585,15,31,'2022-10-26 07:08:12',268435458,'submission.event.general.metadataUpdated',0),(212,515,26,31,'2022-10-26 07:08:14',1342177281,'submission.event.fileUploaded',0),(213,1048585,15,31,'2022-10-26 07:08:14',1342177288,'submission.event.fileRevised',0),(214,515,26,31,'2022-10-26 07:08:15',1342177296,'submission.event.fileEdited',0),(215,1048585,15,31,'2022-10-26 07:08:15',1342177296,'submission.event.fileEdited',0),(216,1048585,15,31,'2022-10-26 07:08:18',268435458,'submission.event.general.metadataUpdated',0),(217,1048585,15,31,'2022-10-26 07:08:19',268435457,'submission.event.submissionSubmitted',0),(218,1048585,15,3,'2022-10-26 07:08:32',805306371,'editor.submission.decision.sendExternalReview.log',0),(219,515,27,3,'2022-10-26 07:08:33',1342177281,'submission.event.fileUploaded',0),(220,1048585,15,3,'2022-10-26 07:08:33',1342177288,'submission.event.fileRevised',0),(221,1048585,15,3,'2022-10-26 07:08:41',1073741825,'log.review.reviewerAssigned',0),(222,1048585,15,3,'2022-10-26 07:08:48',1073741825,'log.review.reviewerAssigned',0),(223,1048585,15,3,'2022-10-26 07:08:53',805306371,'editor.submission.decision.accept.log',0),(224,1048585,15,3,'2022-10-26 07:09:00',268435459,'submission.event.participantAdded',0),(225,1048585,15,3,'2022-10-26 07:09:06',805306371,'editor.submission.decision.sendToProduction.log',0),(226,1048585,15,3,'2022-10-26 07:09:14',268435459,'submission.event.participantAdded',0),(227,1048585,16,32,'2022-10-26 07:09:24',268435458,'submission.event.general.metadataUpdated',0),(228,515,28,32,'2022-10-26 07:09:26',1342177281,'submission.event.fileUploaded',0),(229,1048585,16,32,'2022-10-26 07:09:26',1342177288,'submission.event.fileRevised',0),(230,515,28,32,'2022-10-26 07:09:27',1342177296,'submission.event.fileEdited',0),(231,1048585,16,32,'2022-10-26 07:09:27',1342177296,'submission.event.fileEdited',0),(232,1048585,16,32,'2022-10-26 07:09:30',268435458,'submission.event.general.metadataUpdated',0),(233,1048585,16,32,'2022-10-26 07:09:32',268435457,'submission.event.submissionSubmitted',0),(234,1048585,17,33,'2022-10-26 07:09:41',268435458,'submission.event.general.metadataUpdated',0),(235,515,29,33,'2022-10-26 07:09:43',1342177281,'submission.event.fileUploaded',0),(236,1048585,17,33,'2022-10-26 07:09:43',1342177288,'submission.event.fileRevised',0),(237,515,29,33,'2022-10-26 07:09:44',1342177296,'submission.event.fileEdited',0),(238,1048585,17,33,'2022-10-26 07:09:44',1342177296,'submission.event.fileEdited',0),(239,1048585,17,33,'2022-10-26 07:09:47',268435458,'submission.event.general.metadataUpdated',0),(240,1048585,17,33,'2022-10-26 07:09:49',268435457,'submission.event.submissionSubmitted',0),(241,1048585,17,3,'2022-10-26 07:10:02',805306371,'editor.submission.decision.sendExternalReview.log',0),(242,515,30,3,'2022-10-26 07:10:03',1342177281,'submission.event.fileUploaded',0),(243,1048585,17,3,'2022-10-26 07:10:03',1342177288,'submission.event.fileRevised',0),(244,1048585,17,3,'2022-10-26 07:10:11',1073741825,'log.review.reviewerAssigned',0),(245,1048585,17,3,'2022-10-26 07:10:18',1073741825,'log.review.reviewerAssigned',0),(246,1048585,17,3,'2022-10-26 07:10:23',805306371,'editor.submission.decision.accept.log',0),(247,1048585,17,3,'2022-10-26 07:10:30',268435459,'submission.event.participantAdded',0),(248,1048585,17,3,'2022-10-26 07:10:36',805306371,'editor.submission.decision.sendToProduction.log',0),(249,1048585,17,3,'2022-10-26 07:10:44',268435459,'submission.event.participantAdded',0),(250,1048585,17,3,'2022-10-26 07:10:50',268435459,'submission.event.participantAdded',0),(251,515,31,3,'2022-10-26 07:10:57',1342177281,'submission.event.fileUploaded',0),(252,1048585,17,3,'2022-10-26 07:10:57',1342177288,'submission.event.fileRevised',0),(253,515,31,3,'2022-10-26 07:10:58',1342177296,'submission.event.fileEdited',0),(254,1048585,17,3,'2022-10-26 07:10:58',1342177296,'submission.event.fileEdited',0),(255,1048585,17,3,'2022-10-26 07:11:11',268435458,'submission.event.general.metadataUpdated',0),(256,1048585,17,3,'2022-10-26 07:11:12',268435462,'publication.event.scheduled',0),(257,1048585,17,3,'2022-10-26 07:11:19',268435462,'publication.event.published',0),(258,1048585,17,3,'2022-10-26 07:11:32',268435463,'publication.event.unpublished',0),(259,1048585,17,3,'2022-10-26 07:11:33',268435462,'publication.event.scheduled',0),(260,1048585,17,3,'2022-10-26 07:11:45',268435462,'publication.event.published',0),(261,1048585,17,3,'2022-10-26 07:11:59',268435463,'publication.event.unpublished',0),(262,1048585,17,3,'2022-10-26 07:11:59',268435458,'submission.event.general.metadataUpdated',0),(263,1048585,17,3,'2022-10-26 07:12:20',268435458,'submission.event.general.metadataUpdated',0),(264,1048585,17,3,'2022-10-26 07:12:21',268435462,'publication.event.published',0),(265,1048585,18,34,'2022-10-26 07:12:37',268435458,'submission.event.general.metadataUpdated',0),(266,515,32,34,'2022-10-26 07:12:39',1342177281,'submission.event.fileUploaded',0),(267,1048585,18,34,'2022-10-26 07:12:39',1342177288,'submission.event.fileRevised',0),(268,515,32,34,'2022-10-26 07:12:41',1342177296,'submission.event.fileEdited',0),(269,1048585,18,34,'2022-10-26 07:12:41',1342177296,'submission.event.fileEdited',0),(270,1048585,18,34,'2022-10-26 07:12:43',268435458,'submission.event.general.metadataUpdated',0),(271,1048585,18,34,'2022-10-26 07:12:44',268435457,'submission.event.submissionSubmitted',0),(272,1048585,18,3,'2022-10-26 07:12:58',805306371,'editor.submission.decision.decline.log',0),(273,1048585,19,35,'2022-10-26 07:13:10',268435458,'submission.event.general.metadataUpdated',0),(274,515,33,35,'2022-10-26 07:13:12',1342177281,'submission.event.fileUploaded',0),(275,1048585,19,35,'2022-10-26 07:13:12',1342177288,'submission.event.fileRevised',0),(276,515,33,35,'2022-10-26 07:13:14',1342177296,'submission.event.fileEdited',0),(277,1048585,19,35,'2022-10-26 07:13:14',1342177296,'submission.event.fileEdited',0),(278,1048585,19,35,'2022-10-26 07:13:16',268435458,'submission.event.general.metadataUpdated',0),(279,1048585,19,35,'2022-10-26 07:13:17',268435457,'submission.event.submissionSubmitted',0),(280,1048585,19,3,'2022-10-26 07:13:31',805306371,'editor.submission.decision.sendExternalReview.log',0),(281,515,34,3,'2022-10-26 07:13:31',1342177281,'submission.event.fileUploaded',0),(282,1048585,19,3,'2022-10-26 07:13:31',1342177288,'submission.event.fileRevised',0),(283,1048585,19,3,'2022-10-26 07:13:40',1073741825,'log.review.reviewerAssigned',0),(284,1048585,19,3,'2022-10-26 07:13:47',1073741825,'log.review.reviewerAssigned',0),(285,1048585,19,3,'2022-10-26 07:13:52',805306371,'editor.submission.decision.accept.log',0),(286,1048585,19,3,'2022-10-26 07:13:59',268435459,'submission.event.participantAdded',0);
/*!40000 ALTER TABLE `event_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_log_settings`
--

DROP TABLE IF EXISTS `event_log_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_log_settings` (
  `log_id` bigint(20) NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)',
  UNIQUE KEY `event_log_settings_pkey` (`log_id`,`setting_name`),
  KEY `event_log_settings_log_id` (`log_id`),
  KEY `event_log_settings_name_value` (`setting_name`(50),`setting_value`(150)),
  CONSTRAINT `event_log_settings_log_id` FOREIGN KEY (`log_id`) REFERENCES `event_log` (`log_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_log_settings`
--

LOCK TABLES `event_log_settings` WRITE;
/*!40000 ALTER TABLE `event_log_settings` DISABLE KEYS */;
INSERT INTO `event_log_settings` VALUES (2,'fileId','1','int'),(2,'fileStage','2','int'),(2,'originalFileName','Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf','string'),(2,'sourceSubmissionFileId',NULL,'string'),(2,'submissionFileId','1','int'),(2,'submissionId','1','int'),(2,'username','amwandenga','string'),(3,'fileId','1','int'),(3,'fileStage','2','int'),(3,'name','Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf','string'),(3,'submissionFileId','1','int'),(3,'submissionId','1','int'),(3,'username','amwandenga','string'),(4,'fileId','1','int'),(4,'fileStage','2','int'),(4,'originalFileName','Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf','string'),(4,'sourceSubmissionFileId',NULL,'string'),(4,'submissionFileId','1','int'),(4,'submissionId','1','int'),(4,'username','amwandenga','string'),(5,'fileId','1','int'),(5,'fileStage','2','int'),(5,'name','Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf','string'),(5,'originalFileName','Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf','string'),(5,'sourceSubmissionFileId',NULL,'string'),(5,'submissionFileId','1','int'),(5,'submissionId','1','int'),(5,'username','amwandenga','string'),(8,'decision','3','int'),(8,'editorId','3','int'),(8,'editorName','Daniel Barnes','string'),(8,'submissionId','1','int'),(9,'fileId','1','int'),(9,'fileStage','4','int'),(9,'originalFileName','Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf','string'),(9,'sourceSubmissionFileId','1','int'),(9,'submissionFileId','2','int'),(9,'submissionId','1','int'),(9,'username','dbarnes','string'),(10,'fileId','1','int'),(10,'fileStage','4','int'),(10,'name','Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf','string'),(10,'submissionFileId','2','int'),(10,'submissionId','1','int'),(10,'username','dbarnes','string'),(11,'reviewAssignmentId','1','int'),(11,'reviewerName','Julie Janssen','string'),(11,'round','1','int'),(11,'stageId','3','int'),(11,'submissionId','1','int'),(12,'reviewAssignmentId','2','int'),(12,'reviewerName','Aisla McCrae','string'),(12,'round','1','int'),(12,'stageId','3','int'),(12,'submissionId','1','int'),(13,'reviewAssignmentId','3','int'),(13,'reviewerName','Adela Gallego','string'),(13,'round','1','int'),(13,'stageId','3','int'),(13,'submissionId','1','int'),(14,'decision','2','int'),(14,'editorId','3','int'),(14,'editorName','Daniel Barnes','string'),(14,'submissionId','1','int'),(15,'name','Sarah Vogt','string'),(15,'userGroupName','Copyeditor','string'),(15,'username','svogt','string'),(16,'decision','7','int'),(16,'editorId','3','int'),(16,'editorName','Daniel Barnes','string'),(16,'submissionId','1','int'),(17,'name','Stephen Hellier','string'),(17,'userGroupName','Layout Editor','string'),(17,'username','shellier','string'),(18,'name','Sabine Kumar','string'),(18,'userGroupName','Proofreader','string'),(18,'username','skumar','string'),(23,'fileId','2','int'),(23,'fileStage','10','int'),(23,'originalFileName','article.pdf','string'),(23,'sourceSubmissionFileId',NULL,'string'),(23,'submissionFileId','3','int'),(23,'submissionId','1','int'),(23,'username','dbarnes','string'),(24,'fileId','2','int'),(24,'fileStage','10','int'),(24,'name','article.pdf','string'),(24,'submissionFileId','3','int'),(24,'submissionId','1','int'),(24,'username','dbarnes','string'),(25,'fileId','2','int'),(25,'fileStage','10','int'),(25,'originalFileName','article.pdf','string'),(25,'sourceSubmissionFileId',NULL,'string'),(25,'submissionFileId','3','int'),(25,'submissionId','1','int'),(25,'username','dbarnes','string'),(26,'fileId','2','int'),(26,'fileStage','10','int'),(26,'name','article.pdf','string'),(26,'originalFileName','article.pdf','string'),(26,'sourceSubmissionFileId',NULL,'string'),(26,'submissionFileId','3','int'),(26,'submissionId','1','int'),(26,'username','dbarnes','string'),(27,'name','Alan Mwandenga','string'),(27,'userGroupName','Author','string'),(27,'username','amwandenga','string'),(40,'name','Stephanie Berardo','string'),(40,'userGroupName','Section editor','string'),(40,'username','sberardo','string'),(41,'name','Stephanie Berardo','string'),(41,'userGroupName','Section editor','string'),(41,'username','sberardo','string'),(43,'fileId','3','int'),(43,'fileStage','2','int'),(43,'originalFileName','The influence of lactation on the quantity and quality of cashmere production.pdf','string'),(43,'sourceSubmissionFileId',NULL,'string'),(43,'submissionFileId','4','int'),(43,'submissionId','2','int'),(43,'username','ccorino','string'),(44,'fileId','3','int'),(44,'fileStage','2','int'),(44,'name','The influence of lactation on the quantity and quality of cashmere production.pdf','string'),(44,'submissionFileId','4','int'),(44,'submissionId','2','int'),(44,'username','ccorino','string'),(45,'fileId','3','int'),(45,'fileStage','2','int'),(45,'originalFileName','The influence of lactation on the quantity and quality of cashmere production.pdf','string'),(45,'sourceSubmissionFileId',NULL,'string'),(45,'submissionFileId','4','int'),(45,'submissionId','2','int'),(45,'username','ccorino','string'),(46,'fileId','3','int'),(46,'fileStage','2','int'),(46,'name','The influence of lactation on the quantity and quality of cashmere production.pdf','string'),(46,'originalFileName','The influence of lactation on the quantity and quality of cashmere production.pdf','string'),(46,'sourceSubmissionFileId',NULL,'string'),(46,'submissionFileId','4','int'),(46,'submissionId','2','int'),(46,'username','ccorino','string'),(49,'decision','3','int'),(49,'editorId','3','int'),(49,'editorName','Daniel Barnes','string'),(49,'submissionId','2','int'),(50,'fileId','3','int'),(50,'fileStage','4','int'),(50,'originalFileName','The influence of lactation on the quantity and quality of cashmere production.pdf','string'),(50,'sourceSubmissionFileId','4','int'),(50,'submissionFileId','5','int'),(50,'submissionId','2','int'),(50,'username','dbarnes','string'),(51,'fileId','3','int'),(51,'fileStage','4','int'),(51,'name','The influence of lactation on the quantity and quality of cashmere production.pdf','string'),(51,'submissionFileId','5','int'),(51,'submissionId','2','int'),(51,'username','dbarnes','string'),(52,'name','Minoti Inoue','string'),(52,'userGroupName','Section editor','string'),(52,'username','minoue','string'),(54,'decision','9','int'),(54,'editorId','6','int'),(54,'editorName','Minoti Inoue','string'),(54,'submissionId','2','int'),(56,'fileId','4','int'),(56,'fileStage','2','int'),(56,'originalFileName','The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf','string'),(56,'sourceSubmissionFileId',NULL,'string'),(56,'submissionFileId','6','int'),(56,'submissionId','3','int'),(56,'username','ckwantes','string'),(57,'fileId','4','int'),(57,'fileStage','2','int'),(57,'name','The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf','string'),(57,'submissionFileId','6','int'),(57,'submissionId','3','int'),(57,'username','ckwantes','string'),(58,'fileId','4','int'),(58,'fileStage','2','int'),(58,'originalFileName','The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf','string'),(58,'sourceSubmissionFileId',NULL,'string'),(58,'submissionFileId','6','int'),(58,'submissionId','3','int'),(58,'username','ckwantes','string'),(59,'fileId','4','int'),(59,'fileStage','2','int'),(59,'name','The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf','string'),(59,'originalFileName','The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf','string'),(59,'sourceSubmissionFileId',NULL,'string'),(59,'submissionFileId','6','int'),(59,'submissionId','3','int'),(59,'username','ckwantes','string'),(62,'decision','3','int'),(62,'editorId','3','int'),(62,'editorName','Daniel Barnes','string'),(62,'submissionId','3','int'),(63,'fileId','4','int'),(63,'fileStage','4','int'),(63,'originalFileName','The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf','string'),(63,'sourceSubmissionFileId','6','int'),(63,'submissionFileId','7','int'),(63,'submissionId','3','int'),(63,'username','dbarnes','string'),(64,'fileId','4','int'),(64,'fileStage','4','int'),(64,'name','The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf','string'),(64,'submissionFileId','7','int'),(64,'submissionId','3','int'),(64,'username','dbarnes','string'),(65,'reviewAssignmentId','4','int'),(65,'reviewerName','Aisla McCrae','string'),(65,'round','1','int'),(65,'stageId','3','int'),(65,'submissionId','3','int'),(66,'reviewAssignmentId','5','int'),(66,'reviewerName','Adela Gallego','string'),(66,'round','1','int'),(66,'stageId','3','int'),(66,'submissionId','3','int'),(67,'decision','2','int'),(67,'editorId','3','int'),(67,'editorName','Daniel Barnes','string'),(67,'submissionId','3','int'),(68,'name','Maria Fritz','string'),(68,'userGroupName','Copyeditor','string'),(68,'username','mfritz','string'),(70,'fileId','5','int'),(70,'fileStage','2','int'),(70,'originalFileName','Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice.pdf','string'),(70,'sourceSubmissionFileId',NULL,'string'),(70,'submissionFileId','8','int'),(70,'submissionId','4','int'),(70,'username','cmontgomerie','string'),(71,'fileId','5','int'),(71,'fileStage','2','int'),(71,'name','Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice.pdf','string'),(71,'submissionFileId','8','int'),(71,'submissionId','4','int'),(71,'username','cmontgomerie','string'),(72,'fileId','5','int'),(72,'fileStage','2','int'),(72,'originalFileName','Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice.pdf','string'),(72,'sourceSubmissionFileId',NULL,'string'),(72,'submissionFileId','8','int'),(72,'submissionId','4','int'),(72,'username','cmontgomerie','string'),(73,'fileId','5','int'),(73,'fileStage','2','int'),(73,'name','Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice.pdf','string'),(73,'originalFileName','Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice.pdf','string'),(73,'sourceSubmissionFileId',NULL,'string'),(73,'submissionFileId','8','int'),(73,'submissionId','4','int'),(73,'username','cmontgomerie','string'),(77,'fileId','6','int'),(77,'fileStage','2','int'),(77,'originalFileName','Genetic transformation of forest trees.pdf','string'),(77,'sourceSubmissionFileId',NULL,'string'),(77,'submissionFileId','9','int'),(77,'submissionId','5','int'),(77,'username','ddiouf','string'),(78,'fileId','6','int'),(78,'fileStage','2','int'),(78,'name','Genetic transformation of forest trees.pdf','string'),(78,'submissionFileId','9','int'),(78,'submissionId','5','int'),(78,'username','ddiouf','string'),(79,'fileId','6','int'),(79,'fileStage','2','int'),(79,'originalFileName','Genetic transformation of forest trees.pdf','string'),(79,'sourceSubmissionFileId',NULL,'string'),(79,'submissionFileId','9','int'),(79,'submissionId','5','int'),(79,'username','ddiouf','string'),(80,'fileId','6','int'),(80,'fileStage','2','int'),(80,'name','Genetic transformation of forest trees.pdf','string'),(80,'originalFileName','Genetic transformation of forest trees.pdf','string'),(80,'sourceSubmissionFileId',NULL,'string'),(80,'submissionFileId','9','int'),(80,'submissionId','5','int'),(80,'username','ddiouf','string'),(83,'decision','3','int'),(83,'editorId','3','int'),(83,'editorName','Daniel Barnes','string'),(83,'submissionId','5','int'),(84,'fileId','6','int'),(84,'fileStage','4','int'),(84,'originalFileName','Genetic transformation of forest trees.pdf','string'),(84,'sourceSubmissionFileId','9','int'),(84,'submissionFileId','10','int'),(84,'submissionId','5','int'),(84,'username','dbarnes','string'),(85,'fileId','6','int'),(85,'fileStage','4','int'),(85,'name','Genetic transformation of forest trees.pdf','string'),(85,'submissionFileId','10','int'),(85,'submissionId','5','int'),(85,'username','dbarnes','string'),(86,'reviewAssignmentId','6','int'),(86,'reviewerName','Paul Hudson','string'),(86,'round','1','int'),(86,'stageId','3','int'),(86,'submissionId','5','int'),(87,'reviewAssignmentId','7','int'),(87,'reviewerName','Adela Gallego','string'),(87,'round','1','int'),(87,'stageId','3','int'),(87,'submissionId','5','int'),(88,'decision','2','int'),(88,'editorId','3','int'),(88,'editorName','Daniel Barnes','string'),(88,'submissionId','5','int'),(89,'name','Maria Fritz','string'),(89,'userGroupName','Copyeditor','string'),(89,'username','mfritz','string'),(90,'decision','7','int'),(90,'editorId','3','int'),(90,'editorName','Daniel Barnes','string'),(90,'submissionId','5','int'),(91,'name','Graham Cox','string'),(91,'userGroupName','Layout Editor','string'),(91,'username','gcox','string'),(92,'name','Catherine Turner','string'),(92,'userGroupName','Proofreader','string'),(92,'username','cturner','string'),(94,'fileId','7','int'),(94,'fileStage','2','int'),(94,'originalFileName','Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement.pdf','string'),(94,'sourceSubmissionFileId',NULL,'string'),(94,'submissionFileId','11','int'),(94,'submissionId','6','int'),(94,'username','dphillips','string'),(95,'fileId','7','int'),(95,'fileStage','2','int'),(95,'name','Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement.pdf','string'),(95,'submissionFileId','11','int'),(95,'submissionId','6','int'),(95,'username','dphillips','string'),(96,'fileId','7','int'),(96,'fileStage','2','int'),(96,'originalFileName','Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement.pdf','string'),(96,'sourceSubmissionFileId',NULL,'string'),(96,'submissionFileId','11','int'),(96,'submissionId','6','int'),(96,'username','dphillips','string'),(97,'fileId','7','int'),(97,'fileStage','2','int'),(97,'name','Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement.pdf','string'),(97,'originalFileName','Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement.pdf','string'),(97,'sourceSubmissionFileId',NULL,'string'),(97,'submissionFileId','11','int'),(97,'submissionId','6','int'),(97,'username','dphillips','string'),(100,'decision','3','int'),(100,'editorId','3','int'),(100,'editorName','Daniel Barnes','string'),(100,'submissionId','6','int'),(101,'fileId','7','int'),(101,'fileStage','4','int'),(101,'originalFileName','Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement.pdf','string'),(101,'sourceSubmissionFileId','11','int'),(101,'submissionFileId','12','int'),(101,'submissionId','6','int'),(101,'username','dbarnes','string'),(102,'fileId','7','int'),(102,'fileStage','4','int'),(102,'name','Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement.pdf','string'),(102,'submissionFileId','12','int'),(102,'submissionId','6','int'),(102,'username','dbarnes','string'),(103,'reviewAssignmentId','8','int'),(103,'reviewerName','Julie Janssen','string'),(103,'round','1','int'),(103,'stageId','3','int'),(103,'submissionId','6','int'),(104,'reviewAssignmentId','9','int'),(104,'reviewerName','Adela Gallego','string'),(104,'round','1','int'),(104,'stageId','3','int'),(104,'submissionId','6','int'),(105,'decision','2','int'),(105,'editorId','3','int'),(105,'editorName','Daniel Barnes','string'),(105,'submissionId','6','int'),(106,'name','Maria Fritz','string'),(106,'userGroupName','Copyeditor','string'),(106,'username','mfritz','string'),(107,'decision','7','int'),(107,'editorId','3','int'),(107,'editorName','Daniel Barnes','string'),(107,'submissionId','6','int'),(108,'name','Graham Cox','string'),(108,'userGroupName','Layout Editor','string'),(108,'username','gcox','string'),(110,'fileId','8','int'),(110,'fileStage','2','int'),(110,'originalFileName','Developing efficacy beliefs in the classroom.pdf','string'),(110,'sourceSubmissionFileId',NULL,'string'),(110,'submissionFileId','13','int'),(110,'submissionId','7','int'),(110,'username','dsokoloff','string'),(111,'fileId','8','int'),(111,'fileStage','2','int'),(111,'name','Developing efficacy beliefs in the classroom.pdf','string'),(111,'submissionFileId','13','int'),(111,'submissionId','7','int'),(111,'username','dsokoloff','string'),(112,'fileId','8','int'),(112,'fileStage','2','int'),(112,'originalFileName','Developing efficacy beliefs in the classroom.pdf','string'),(112,'sourceSubmissionFileId',NULL,'string'),(112,'submissionFileId','13','int'),(112,'submissionId','7','int'),(112,'username','dsokoloff','string'),(113,'fileId','8','int'),(113,'fileStage','2','int'),(113,'name','Developing efficacy beliefs in the classroom.pdf','string'),(113,'originalFileName','Developing efficacy beliefs in the classroom.pdf','string'),(113,'sourceSubmissionFileId',NULL,'string'),(113,'submissionFileId','13','int'),(113,'submissionId','7','int'),(113,'username','dsokoloff','string'),(116,'decision','3','int'),(116,'editorId','3','int'),(116,'editorName','Daniel Barnes','string'),(116,'submissionId','7','int'),(117,'fileId','8','int'),(117,'fileStage','4','int'),(117,'originalFileName','Developing efficacy beliefs in the classroom.pdf','string'),(117,'sourceSubmissionFileId','13','int'),(117,'submissionFileId','14','int'),(117,'submissionId','7','int'),(117,'username','dbarnes','string'),(118,'fileId','8','int'),(118,'fileStage','4','int'),(118,'name','Developing efficacy beliefs in the classroom.pdf','string'),(118,'submissionFileId','14','int'),(118,'submissionId','7','int'),(118,'username','dbarnes','string'),(119,'reviewAssignmentId','10','int'),(119,'reviewerName','Paul Hudson','string'),(119,'round','1','int'),(119,'stageId','3','int'),(119,'submissionId','7','int'),(120,'reviewAssignmentId','11','int'),(120,'reviewerName','Aisla McCrae','string'),(120,'round','1','int'),(120,'stageId','3','int'),(120,'submissionId','7','int'),(121,'reviewAssignmentId','12','int'),(121,'reviewerName','Adela Gallego','string'),(121,'round','1','int'),(121,'stageId','3','int'),(121,'submissionId','7','int'),(122,'reviewAssignmentId','10','int'),(122,'reviewerName','Paul Hudson','string'),(122,'round','1','int'),(122,'submissionId','7','int'),(123,'reviewAssignmentId','10','int'),(123,'reviewerName','Paul Hudson','string'),(123,'round','1','int'),(123,'submissionId','7','int'),(125,'fileId','9','int'),(125,'fileStage','2','int'),(125,'originalFileName','Traditions and Trends in the Study of the Commons.pdf','string'),(125,'sourceSubmissionFileId',NULL,'string'),(125,'submissionFileId','15','int'),(125,'submissionId','8','int'),(125,'username','eostrom','string'),(126,'fileId','9','int'),(126,'fileStage','2','int'),(126,'name','Traditions and Trends in the Study of the Commons.pdf','string'),(126,'submissionFileId','15','int'),(126,'submissionId','8','int'),(126,'username','eostrom','string'),(127,'fileId','9','int'),(127,'fileStage','2','int'),(127,'originalFileName','Traditions and Trends in the Study of the Commons.pdf','string'),(127,'sourceSubmissionFileId',NULL,'string'),(127,'submissionFileId','15','int'),(127,'submissionId','8','int'),(127,'username','eostrom','string'),(128,'fileId','9','int'),(128,'fileStage','2','int'),(128,'name','Traditions and Trends in the Study of the Commons.pdf','string'),(128,'originalFileName','Traditions and Trends in the Study of the Commons.pdf','string'),(128,'sourceSubmissionFileId',NULL,'string'),(128,'submissionFileId','15','int'),(128,'submissionId','8','int'),(128,'username','eostrom','string'),(132,'fileId','10','int'),(132,'fileStage','2','int'),(132,'originalFileName','Hansen & Pinto: Reason Reclaimed.pdf','string'),(132,'sourceSubmissionFileId',NULL,'string'),(132,'submissionFileId','16','int'),(132,'submissionId','9','int'),(132,'username','fpaglieri','string'),(133,'fileId','10','int'),(133,'fileStage','2','int'),(133,'name','Hansen & Pinto: Reason Reclaimed.pdf','string'),(133,'submissionFileId','16','int'),(133,'submissionId','9','int'),(133,'username','fpaglieri','string'),(134,'fileId','10','int'),(134,'fileStage','2','int'),(134,'originalFileName','Hansen & Pinto: Reason Reclaimed.pdf','string'),(134,'sourceSubmissionFileId',NULL,'string'),(134,'submissionFileId','16','int'),(134,'submissionId','9','int'),(134,'username','fpaglieri','string'),(135,'fileId','10','int'),(135,'fileStage','2','int'),(135,'name','Hansen & Pinto: Reason Reclaimed.pdf','string'),(135,'originalFileName','Hansen & Pinto: Reason Reclaimed.pdf','string'),(135,'sourceSubmissionFileId',NULL,'string'),(135,'submissionFileId','16','int'),(135,'submissionId','9','int'),(135,'username','fpaglieri','string'),(138,'decision','3','int'),(138,'editorId','3','int'),(138,'editorName','Daniel Barnes','string'),(138,'submissionId','9','int'),(139,'fileId','10','int'),(139,'fileStage','4','int'),(139,'originalFileName','Hansen & Pinto: Reason Reclaimed.pdf','string'),(139,'sourceSubmissionFileId','16','int'),(139,'submissionFileId','17','int'),(139,'submissionId','9','int'),(139,'username','dbarnes','string'),(140,'fileId','10','int'),(140,'fileStage','4','int'),(140,'name','Hansen & Pinto: Reason Reclaimed.pdf','string'),(140,'submissionFileId','17','int'),(140,'submissionId','9','int'),(140,'username','dbarnes','string'),(141,'reviewAssignmentId','13','int'),(141,'reviewerName','Julie Janssen','string'),(141,'round','1','int'),(141,'stageId','3','int'),(141,'submissionId','9','int'),(142,'reviewAssignmentId','14','int'),(142,'reviewerName','Adela Gallego','string'),(142,'round','1','int'),(142,'stageId','3','int'),(142,'submissionId','9','int'),(143,'decision','2','int'),(143,'editorId','3','int'),(143,'editorName','Daniel Barnes','string'),(143,'submissionId','9','int'),(144,'name','Sarah Vogt','string'),(144,'userGroupName','Copyeditor','string'),(144,'username','svogt','string'),(145,'decision','7','int'),(145,'editorId','3','int'),(145,'editorName','Daniel Barnes','string'),(145,'submissionId','9','int'),(146,'name','Stephen Hellier','string'),(146,'userGroupName','Layout Editor','string'),(146,'username','shellier','string'),(147,'name','Sabine Kumar','string'),(147,'userGroupName','Proofreader','string'),(147,'username','skumar','string'),(149,'fileId','11','int'),(149,'fileStage','2','int'),(149,'originalFileName','Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf','string'),(149,'sourceSubmissionFileId',NULL,'string'),(149,'submissionFileId','18','int'),(149,'submissionId','10','int'),(149,'username','jnovak','string'),(150,'fileId','11','int'),(150,'fileStage','2','int'),(150,'name','Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf','string'),(150,'submissionFileId','18','int'),(150,'submissionId','10','int'),(150,'username','jnovak','string'),(151,'fileId','11','int'),(151,'fileStage','2','int'),(151,'originalFileName','Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf','string'),(151,'sourceSubmissionFileId',NULL,'string'),(151,'submissionFileId','18','int'),(151,'submissionId','10','int'),(151,'username','jnovak','string'),(152,'fileId','11','int'),(152,'fileStage','2','int'),(152,'name','Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf','string'),(152,'originalFileName','Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf','string'),(152,'sourceSubmissionFileId',NULL,'string'),(152,'submissionFileId','18','int'),(152,'submissionId','10','int'),(152,'username','jnovak','string'),(155,'decision','3','int'),(155,'editorId','3','int'),(155,'editorName','Daniel Barnes','string'),(155,'submissionId','10','int'),(156,'fileId','11','int'),(156,'fileStage','4','int'),(156,'originalFileName','Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf','string'),(156,'sourceSubmissionFileId','18','int'),(156,'submissionFileId','19','int'),(156,'submissionId','10','int'),(156,'username','dbarnes','string'),(157,'fileId','11','int'),(157,'fileStage','4','int'),(157,'name','Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf','string'),(157,'submissionFileId','19','int'),(157,'submissionId','10','int'),(157,'username','dbarnes','string'),(158,'reviewAssignmentId','15','int'),(158,'reviewerName','Aisla McCrae','string'),(158,'round','1','int'),(158,'stageId','3','int'),(158,'submissionId','10','int'),(159,'reviewAssignmentId','16','int'),(159,'reviewerName','Adela Gallego','string'),(159,'round','1','int'),(159,'stageId','3','int'),(159,'submissionId','10','int'),(160,'reviewAssignmentId','15','int'),(160,'reviewerName','Aisla McCrae','string'),(160,'round','1','int'),(160,'submissionId','10','int'),(161,'reviewAssignmentId','15','int'),(161,'reviewerName','Aisla McCrae','string'),(161,'round','1','int'),(161,'submissionId','10','int'),(162,'reviewAssignmentId','16','int'),(162,'reviewerName','Adela Gallego','string'),(162,'round','1','int'),(162,'submissionId','10','int'),(163,'reviewAssignmentId','16','int'),(163,'reviewerName','Adela Gallego','string'),(163,'round','1','int'),(163,'submissionId','10','int'),(165,'fileId','12','int'),(165,'fileStage','2','int'),(165,'originalFileName','Learning Sustainable Design through Service.pdf','string'),(165,'sourceSubmissionFileId',NULL,'string'),(165,'submissionFileId','20','int'),(165,'submissionId','11','int'),(165,'username','kalkhafaji','string'),(166,'fileId','12','int'),(166,'fileStage','2','int'),(166,'name','Learning Sustainable Design through Service.pdf','string'),(166,'submissionFileId','20','int'),(166,'submissionId','11','int'),(166,'username','kalkhafaji','string'),(167,'fileId','12','int'),(167,'fileStage','2','int'),(167,'originalFileName','Learning Sustainable Design through Service.pdf','string'),(167,'sourceSubmissionFileId',NULL,'string'),(167,'submissionFileId','20','int'),(167,'submissionId','11','int'),(167,'username','kalkhafaji','string'),(168,'fileId','12','int'),(168,'fileStage','2','int'),(168,'name','Learning Sustainable Design through Service.pdf','string'),(168,'originalFileName','Learning Sustainable Design through Service.pdf','string'),(168,'sourceSubmissionFileId',NULL,'string'),(168,'submissionFileId','20','int'),(168,'submissionId','11','int'),(168,'username','kalkhafaji','string'),(172,'fileId','13','int'),(172,'fileStage','2','int'),(172,'originalFileName','Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf','string'),(172,'sourceSubmissionFileId',NULL,'string'),(172,'submissionFileId','21','int'),(172,'submissionId','12','int'),(172,'username','lchristopher','string'),(173,'fileId','13','int'),(173,'fileStage','2','int'),(173,'name','Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf','string'),(173,'submissionFileId','21','int'),(173,'submissionId','12','int'),(173,'username','lchristopher','string'),(174,'fileId','13','int'),(174,'fileStage','2','int'),(174,'originalFileName','Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf','string'),(174,'sourceSubmissionFileId',NULL,'string'),(174,'submissionFileId','21','int'),(174,'submissionId','12','int'),(174,'username','lchristopher','string'),(175,'fileId','13','int'),(175,'fileStage','2','int'),(175,'name','Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf','string'),(175,'originalFileName','Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf','string'),(175,'sourceSubmissionFileId',NULL,'string'),(175,'submissionFileId','21','int'),(175,'submissionId','12','int'),(175,'username','lchristopher','string'),(178,'decision','3','int'),(178,'editorId','3','int'),(178,'editorName','Daniel Barnes','string'),(178,'submissionId','12','int'),(179,'fileId','13','int'),(179,'fileStage','4','int'),(179,'originalFileName','Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf','string'),(179,'sourceSubmissionFileId','21','int'),(179,'submissionFileId','22','int'),(179,'submissionId','12','int'),(179,'username','dbarnes','string'),(180,'fileId','13','int'),(180,'fileStage','4','int'),(180,'name','Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf','string'),(180,'submissionFileId','22','int'),(180,'submissionId','12','int'),(180,'username','dbarnes','string'),(181,'reviewAssignmentId','17','int'),(181,'reviewerName','Julie Janssen','string'),(181,'round','1','int'),(181,'stageId','3','int'),(181,'submissionId','12','int'),(182,'reviewAssignmentId','18','int'),(182,'reviewerName','Paul Hudson','string'),(182,'round','1','int'),(182,'stageId','3','int'),(182,'submissionId','12','int'),(184,'fileId','14','int'),(184,'fileStage','2','int'),(184,'originalFileName','Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf','string'),(184,'sourceSubmissionFileId',NULL,'string'),(184,'submissionFileId','23','int'),(184,'submissionId','13','int'),(184,'username','lkumiega','string'),(185,'fileId','14','int'),(185,'fileStage','2','int'),(185,'name','Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf','string'),(185,'submissionFileId','23','int'),(185,'submissionId','13','int'),(185,'username','lkumiega','string'),(186,'fileId','14','int'),(186,'fileStage','2','int'),(186,'originalFileName','Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf','string'),(186,'sourceSubmissionFileId',NULL,'string'),(186,'submissionFileId','23','int'),(186,'submissionId','13','int'),(186,'username','lkumiega','string'),(187,'fileId','14','int'),(187,'fileStage','2','int'),(187,'name','Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf','string'),(187,'originalFileName','Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf','string'),(187,'sourceSubmissionFileId',NULL,'string'),(187,'submissionFileId','23','int'),(187,'submissionId','13','int'),(187,'username','lkumiega','string'),(190,'decision','3','int'),(190,'editorId','3','int'),(190,'editorName','Daniel Barnes','string'),(190,'submissionId','13','int'),(191,'fileId','14','int'),(191,'fileStage','4','int'),(191,'originalFileName','Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf','string'),(191,'sourceSubmissionFileId','23','int'),(191,'submissionFileId','24','int'),(191,'submissionId','13','int'),(191,'username','dbarnes','string'),(192,'fileId','14','int'),(192,'fileStage','4','int'),(192,'name','Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf','string'),(192,'submissionFileId','24','int'),(192,'submissionId','13','int'),(192,'username','dbarnes','string'),(193,'reviewAssignmentId','19','int'),(193,'reviewerName','Julie Janssen','string'),(193,'round','1','int'),(193,'stageId','3','int'),(193,'submissionId','13','int'),(194,'reviewAssignmentId','20','int'),(194,'reviewerName','Aisla McCrae','string'),(194,'round','1','int'),(194,'stageId','3','int'),(194,'submissionId','13','int'),(195,'reviewAssignmentId','21','int'),(195,'reviewerName','Adela Gallego','string'),(195,'round','1','int'),(195,'stageId','3','int'),(195,'submissionId','13','int'),(196,'reviewAssignmentId','19','int'),(196,'reviewerName','Julie Janssen','string'),(196,'round','1','int'),(196,'submissionId','13','int'),(197,'reviewAssignmentId','19','int'),(197,'reviewerName','Julie Janssen','string'),(197,'round','1','int'),(197,'submissionId','13','int'),(198,'reviewAssignmentId','20','int'),(198,'reviewerName','Aisla McCrae','string'),(198,'round','1','int'),(198,'submissionId','13','int'),(199,'reviewAssignmentId','20','int'),(199,'reviewerName','Aisla McCrae','string'),(199,'round','1','int'),(199,'submissionId','13','int'),(200,'reviewAssignmentId','21','int'),(200,'reviewerName','Adela Gallego','string'),(200,'round','1','int'),(200,'submissionId','13','int'),(201,'reviewAssignmentId','21','int'),(201,'reviewerName','Adela Gallego','string'),(201,'round','1','int'),(201,'submissionId','13','int'),(202,'decision','4','int'),(202,'editorId','3','int'),(202,'editorName','Daniel Barnes','string'),(202,'submissionId','13','int'),(203,'recipientCount','3','int'),(203,'subject','Thank you for your review','string'),(205,'fileId','15','int'),(205,'fileStage','2','int'),(205,'originalFileName','Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua.pdf','string'),(205,'sourceSubmissionFileId',NULL,'string'),(205,'submissionFileId','25','int'),(205,'submissionId','14','int'),(205,'username','pdaniel','string'),(206,'fileId','15','int'),(206,'fileStage','2','int'),(206,'name','Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua.pdf','string'),(206,'submissionFileId','25','int'),(206,'submissionId','14','int'),(206,'username','pdaniel','string'),(207,'fileId','15','int'),(207,'fileStage','2','int'),(207,'originalFileName','Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua.pdf','string'),(207,'sourceSubmissionFileId',NULL,'string'),(207,'submissionFileId','25','int'),(207,'submissionId','14','int'),(207,'username','pdaniel','string'),(208,'fileId','15','int'),(208,'fileStage','2','int'),(208,'name','Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua.pdf','string'),(208,'originalFileName','Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua.pdf','string'),(208,'sourceSubmissionFileId',NULL,'string'),(208,'submissionFileId','25','int'),(208,'submissionId','14','int'),(208,'username','pdaniel','string'),(212,'fileId','16','int'),(212,'fileStage','2','int'),(212,'originalFileName','Yam diseases and its management in Nigeria.pdf','string'),(212,'sourceSubmissionFileId',NULL,'string'),(212,'submissionFileId','26','int'),(212,'submissionId','15','int'),(212,'username','rbaiyewu','string'),(213,'fileId','16','int'),(213,'fileStage','2','int'),(213,'name','Yam diseases and its management in Nigeria.pdf','string'),(213,'submissionFileId','26','int'),(213,'submissionId','15','int'),(213,'username','rbaiyewu','string'),(214,'fileId','16','int'),(214,'fileStage','2','int'),(214,'originalFileName','Yam diseases and its management in Nigeria.pdf','string'),(214,'sourceSubmissionFileId',NULL,'string'),(214,'submissionFileId','26','int'),(214,'submissionId','15','int'),(214,'username','rbaiyewu','string'),(215,'fileId','16','int'),(215,'fileStage','2','int'),(215,'name','Yam diseases and its management in Nigeria.pdf','string'),(215,'originalFileName','Yam diseases and its management in Nigeria.pdf','string'),(215,'sourceSubmissionFileId',NULL,'string'),(215,'submissionFileId','26','int'),(215,'submissionId','15','int'),(215,'username','rbaiyewu','string'),(218,'decision','3','int'),(218,'editorId','3','int'),(218,'editorName','Daniel Barnes','string'),(218,'submissionId','15','int'),(219,'fileId','16','int'),(219,'fileStage','4','int'),(219,'originalFileName','Yam diseases and its management in Nigeria.pdf','string'),(219,'sourceSubmissionFileId','26','int'),(219,'submissionFileId','27','int'),(219,'submissionId','15','int'),(219,'username','dbarnes','string'),(220,'fileId','16','int'),(220,'fileStage','4','int'),(220,'name','Yam diseases and its management in Nigeria.pdf','string'),(220,'submissionFileId','27','int'),(220,'submissionId','15','int'),(220,'username','dbarnes','string'),(221,'reviewAssignmentId','22','int'),(221,'reviewerName','Paul Hudson','string'),(221,'round','1','int'),(221,'stageId','3','int'),(221,'submissionId','15','int'),(222,'reviewAssignmentId','23','int'),(222,'reviewerName','Aisla McCrae','string'),(222,'round','1','int'),(222,'stageId','3','int'),(222,'submissionId','15','int'),(223,'decision','2','int'),(223,'editorId','3','int'),(223,'editorName','Daniel Barnes','string'),(223,'submissionId','15','int'),(224,'name','Sarah Vogt','string'),(224,'userGroupName','Copyeditor','string'),(224,'username','svogt','string'),(225,'decision','7','int'),(225,'editorId','3','int'),(225,'editorName','Daniel Barnes','string'),(225,'submissionId','15','int'),(226,'name','Stephen Hellier','string'),(226,'userGroupName','Layout Editor','string'),(226,'username','shellier','string'),(228,'fileId','17','int'),(228,'fileStage','2','int'),(228,'originalFileName','Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat.pdf','string'),(228,'sourceSubmissionFileId',NULL,'string'),(228,'submissionFileId','28','int'),(228,'submissionId','16','int'),(228,'username','rrossi','string'),(229,'fileId','17','int'),(229,'fileStage','2','int'),(229,'name','Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat.pdf','string'),(229,'submissionFileId','28','int'),(229,'submissionId','16','int'),(229,'username','rrossi','string'),(230,'fileId','17','int'),(230,'fileStage','2','int'),(230,'originalFileName','Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat.pdf','string'),(230,'sourceSubmissionFileId',NULL,'string'),(230,'submissionFileId','28','int'),(230,'submissionId','16','int'),(230,'username','rrossi','string'),(231,'fileId','17','int'),(231,'fileStage','2','int'),(231,'name','Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat.pdf','string'),(231,'originalFileName','Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat.pdf','string'),(231,'sourceSubmissionFileId',NULL,'string'),(231,'submissionFileId','28','int'),(231,'submissionId','16','int'),(231,'username','rrossi','string'),(235,'fileId','18','int'),(235,'fileStage','2','int'),(235,'originalFileName','Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf','string'),(235,'sourceSubmissionFileId',NULL,'string'),(235,'submissionFileId','29','int'),(235,'submissionId','17','int'),(235,'username','vkarbasizaed','string'),(236,'fileId','18','int'),(236,'fileStage','2','int'),(236,'name','Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf','string'),(236,'submissionFileId','29','int'),(236,'submissionId','17','int'),(236,'username','vkarbasizaed','string'),(237,'fileId','18','int'),(237,'fileStage','2','int'),(237,'originalFileName','Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf','string'),(237,'sourceSubmissionFileId',NULL,'string'),(237,'submissionFileId','29','int'),(237,'submissionId','17','int'),(237,'username','vkarbasizaed','string'),(238,'fileId','18','int'),(238,'fileStage','2','int'),(238,'name','Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf','string'),(238,'originalFileName','Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf','string'),(238,'sourceSubmissionFileId',NULL,'string'),(238,'submissionFileId','29','int'),(238,'submissionId','17','int'),(238,'username','vkarbasizaed','string'),(241,'decision','3','int'),(241,'editorId','3','int'),(241,'editorName','Daniel Barnes','string'),(241,'submissionId','17','int'),(242,'fileId','18','int'),(242,'fileStage','4','int'),(242,'originalFileName','Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf','string'),(242,'sourceSubmissionFileId','29','int'),(242,'submissionFileId','30','int'),(242,'submissionId','17','int'),(242,'username','dbarnes','string'),(243,'fileId','18','int'),(243,'fileStage','4','int'),(243,'name','Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf','string'),(243,'submissionFileId','30','int'),(243,'submissionId','17','int'),(243,'username','dbarnes','string'),(244,'reviewAssignmentId','24','int'),(244,'reviewerName','Julie Janssen','string'),(244,'round','1','int'),(244,'stageId','3','int'),(244,'submissionId','17','int'),(245,'reviewAssignmentId','25','int'),(245,'reviewerName','Paul Hudson','string'),(245,'round','1','int'),(245,'stageId','3','int'),(245,'submissionId','17','int'),(246,'decision','2','int'),(246,'editorId','3','int'),(246,'editorName','Daniel Barnes','string'),(246,'submissionId','17','int'),(247,'name','Maria Fritz','string'),(247,'userGroupName','Copyeditor','string'),(247,'username','mfritz','string'),(248,'decision','7','int'),(248,'editorId','3','int'),(248,'editorName','Daniel Barnes','string'),(248,'submissionId','17','int'),(249,'name','Graham Cox','string'),(249,'userGroupName','Layout Editor','string'),(249,'username','gcox','string'),(250,'name','Catherine Turner','string'),(250,'userGroupName','Proofreader','string'),(250,'username','cturner','string'),(251,'fileId','19','int'),(251,'fileStage','10','int'),(251,'originalFileName','article.pdf','string'),(251,'sourceSubmissionFileId',NULL,'string'),(251,'submissionFileId','31','int'),(251,'submissionId','17','int'),(251,'username','dbarnes','string'),(252,'fileId','19','int'),(252,'fileStage','10','int'),(252,'name','article.pdf','string'),(252,'submissionFileId','31','int'),(252,'submissionId','17','int'),(252,'username','dbarnes','string'),(253,'fileId','19','int'),(253,'fileStage','10','int'),(253,'originalFileName','article.pdf','string'),(253,'sourceSubmissionFileId',NULL,'string'),(253,'submissionFileId','31','int'),(253,'submissionId','17','int'),(253,'username','dbarnes','string'),(254,'fileId','19','int'),(254,'fileStage','10','int'),(254,'name','article.pdf','string'),(254,'originalFileName','article.pdf','string'),(254,'sourceSubmissionFileId',NULL,'string'),(254,'submissionFileId','31','int'),(254,'submissionId','17','int'),(254,'username','dbarnes','string'),(266,'fileId','20','int'),(266,'fileStage','2','int'),(266,'originalFileName','Self-Organization in Multi-Level Institutions in Networked Environments.pdf','string'),(266,'sourceSubmissionFileId',NULL,'string'),(266,'submissionFileId','32','int'),(266,'submissionId','18','int'),(266,'username','vwilliamson','string'),(267,'fileId','20','int'),(267,'fileStage','2','int'),(267,'name','Self-Organization in Multi-Level Institutions in Networked Environments.pdf','string'),(267,'submissionFileId','32','int'),(267,'submissionId','18','int'),(267,'username','vwilliamson','string'),(268,'fileId','20','int'),(268,'fileStage','2','int'),(268,'originalFileName','Self-Organization in Multi-Level Institutions in Networked Environments.pdf','string'),(268,'sourceSubmissionFileId',NULL,'string'),(268,'submissionFileId','32','int'),(268,'submissionId','18','int'),(268,'username','vwilliamson','string'),(269,'fileId','20','int'),(269,'fileStage','2','int'),(269,'name','Self-Organization in Multi-Level Institutions in Networked Environments.pdf','string'),(269,'originalFileName','Self-Organization in Multi-Level Institutions in Networked Environments.pdf','string'),(269,'sourceSubmissionFileId',NULL,'string'),(269,'submissionFileId','32','int'),(269,'submissionId','18','int'),(269,'username','vwilliamson','string'),(272,'decision','8','int'),(272,'editorId','3','int'),(272,'editorName','Daniel Barnes','string'),(272,'submissionId','18','int'),(274,'fileId','21','int'),(274,'fileStage','2','int'),(274,'originalFileName','Finocchiaro: Arguments About Arguments.pdf','string'),(274,'sourceSubmissionFileId',NULL,'string'),(274,'submissionFileId','33','int'),(274,'submissionId','19','int'),(274,'username','zwoods','string'),(275,'fileId','21','int'),(275,'fileStage','2','int'),(275,'name','Finocchiaro: Arguments About Arguments.pdf','string'),(275,'submissionFileId','33','int'),(275,'submissionId','19','int'),(275,'username','zwoods','string'),(276,'fileId','21','int'),(276,'fileStage','2','int'),(276,'originalFileName','Finocchiaro: Arguments About Arguments.pdf','string'),(276,'sourceSubmissionFileId',NULL,'string'),(276,'submissionFileId','33','int'),(276,'submissionId','19','int'),(276,'username','zwoods','string'),(277,'fileId','21','int'),(277,'fileStage','2','int'),(277,'name','Finocchiaro: Arguments About Arguments.pdf','string'),(277,'originalFileName','Finocchiaro: Arguments About Arguments.pdf','string'),(277,'sourceSubmissionFileId',NULL,'string'),(277,'submissionFileId','33','int'),(277,'submissionId','19','int'),(277,'username','zwoods','string'),(280,'decision','3','int'),(280,'editorId','3','int'),(280,'editorName','Daniel Barnes','string'),(280,'submissionId','19','int'),(281,'fileId','21','int'),(281,'fileStage','4','int'),(281,'originalFileName','Finocchiaro: Arguments About Arguments.pdf','string'),(281,'sourceSubmissionFileId','33','int'),(281,'submissionFileId','34','int'),(281,'submissionId','19','int'),(281,'username','dbarnes','string'),(282,'fileId','21','int'),(282,'fileStage','4','int'),(282,'name','Finocchiaro: Arguments About Arguments.pdf','string'),(282,'submissionFileId','34','int'),(282,'submissionId','19','int'),(282,'username','dbarnes','string'),(283,'reviewAssignmentId','26','int'),(283,'reviewerName','Paul Hudson','string'),(283,'round','1','int'),(283,'stageId','3','int'),(283,'submissionId','19','int'),(284,'reviewAssignmentId','27','int'),(284,'reviewerName','Aisla McCrae','string'),(284,'round','1','int'),(284,'stageId','3','int'),(284,'submissionId','19','int'),(285,'decision','2','int'),(285,'editorId','3','int'),(285,'editorName','Daniel Barnes','string'),(285,'submissionId','19','int'),(286,'name','Sarah Vogt','string'),(286,'userGroupName','Copyeditor','string'),(286,'username','svogt','string');
/*!40000 ALTER TABLE `event_log_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `file_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `mimetype` varchar(255) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'journals/1/articles/1/6358d94b4a746.pdf','application/pdf'),(2,'journals/1/articles/1/6358d9a44c892.pdf','application/pdf'),(3,'journals/1/articles/2/6358da1b6b526.pdf','application/pdf'),(4,'journals/1/articles/3/6358da57ba8fe.pdf','application/pdf'),(5,'journals/1/articles/4/6358da9050bfe.pdf','application/pdf'),(6,'journals/1/articles/5/6358daa468e44.pdf','application/pdf'),(7,'journals/1/articles/6/6358daef8527a.pdf','application/pdf'),(8,'journals/1/articles/7/6358db36ad296.pdf','application/pdf'),(9,'journals/1/articles/8/6358db750d5ff.pdf','application/pdf'),(10,'journals/1/articles/9/6358db89094ee.pdf','application/pdf'),(11,'journals/1/articles/10/6358dbd531a44.pdf','application/pdf'),(12,'journals/1/articles/11/6358dc1969387.pdf','application/pdf'),(13,'journals/1/articles/12/6358dc2cdadd1.pdf','application/pdf'),(14,'journals/1/articles/13/6358dc5cefd8b.pdf','application/pdf'),(15,'journals/1/articles/14/6358dcce1ffd9.pdf','application/pdf'),(16,'journals/1/articles/15/6358dcde93956.pdf','application/pdf'),(17,'journals/1/articles/16/6358dd266f673.pdf','application/pdf'),(18,'journals/1/articles/17/6358dd375dff4.pdf','application/pdf'),(19,'journals/1/articles/17/6358dd8143a7b.pdf','application/pdf'),(20,'journals/1/articles/18/6358dde79d051.pdf','application/pdf'),(21,'journals/1/articles/19/6358de08bd895.pdf','application/pdf');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filter_groups`
--

DROP TABLE IF EXISTS `filter_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filter_groups` (
  `filter_group_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `symbolic` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `input_type` varchar(255) DEFAULT NULL,
  `output_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`filter_group_id`),
  UNIQUE KEY `filter_groups_symbolic` (`symbolic`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter_groups`
--

LOCK TABLES `filter_groups` WRITE;
/*!40000 ALTER TABLE `filter_groups` DISABLE KEYS */;
INSERT INTO `filter_groups` VALUES (1,'issue=>crossref-xml','plugins.importexport.crossref.displayName','plugins.importexport.crossref.description','class::classes.issue.Issue[]','xml::schema(https://www.crossref.org/schemas/crossref5.3.1.xsd)'),(2,'article=>crossref-xml','plugins.importexport.crossref.displayName','plugins.importexport.crossref.description','class::classes.submission.Submission[]','xml::schema(https://www.crossref.org/schemas/crossref5.3.1.xsd)'),(3,'issue=>datacite-xml','plugins.importexport.datacite.displayName','plugins.importexport.datacite.description','class::classes.issue.Issue','xml::schema(http://schema.datacite.org/meta/kernel-4/metadata.xsd)'),(4,'article=>datacite-xml','plugins.importexport.datacite.displayName','plugins.importexport.datacite.description','class::classes.submission.Submission','xml::schema(http://schema.datacite.org/meta/kernel-4/metadata.xsd)'),(5,'galley=>datacite-xml','plugins.importexport.datacite.displayName','plugins.importexport.datacite.description','class::lib.pkp.classes.galley.Galley','xml::schema(http://schema.datacite.org/meta/kernel-4/metadata.xsd)'),(6,'article=>dc11','plugins.metadata.dc11.articleAdapter.displayName','plugins.metadata.dc11.articleAdapter.description','class::classes.submission.Submission','metadata::APP\\plugins\\metadata\\dc11\\schema\\Dc11Schema(ARTICLE)'),(7,'user=>user-xml','plugins.importexport.users.displayName','plugins.importexport.users.description','class::lib.pkp.classes.user.User[]','xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)'),(8,'user-xml=>user','plugins.importexport.users.displayName','plugins.importexport.users.description','xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)','class::classes.users.User[]'),(9,'usergroup=>user-xml','plugins.importexport.users.displayName','plugins.importexport.users.description','class::lib.pkp.classes.security.UserGroup[]','xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)'),(10,'user-xml=>usergroup','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)','class::lib.pkp.classes.security.UserGroup[]'),(11,'article=>doaj-xml','plugins.importexport.doaj.displayName','plugins.importexport.doaj.description','class::classes.submission.Submission[]','xml::schema(plugins/importexport/doaj/doajArticles.xsd)'),(12,'article=>doaj-json','plugins.importexport.doaj.displayName','plugins.importexport.doaj.description','class::classes.submission.Submission','primitive::string'),(13,'article=>pubmed-xml','plugins.importexport.pubmed.displayName','plugins.importexport.pubmed.description','class::classes.submission.Submission[]','xml::dtd'),(14,'article=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::classes.submission.Submission[]','xml::schema(plugins/importexport/native/native.xsd)'),(15,'native-xml=>article','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::classes.submission.Submission[]'),(16,'issue=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::classes.issue.Issue[]','xml::schema(plugins/importexport/native/native.xsd)'),(17,'native-xml=>issue','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::classes.issue.Issue[]'),(18,'issuegalley=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::classes.issue.IssueGalley[]','xml::schema(plugins/importexport/native/native.xsd)'),(19,'native-xml=>issuegalley','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::classes.issue.IssueGalley[]'),(20,'author=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::classes.author.Author[]','xml::schema(plugins/importexport/native/native.xsd)'),(21,'native-xml=>author','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::classes.author.Author[]'),(22,'SubmissionFile=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::lib.pkp.classes.submissionFile.SubmissionFile','xml::schema(plugins/importexport/native/native.xsd)'),(23,'native-xml=>SubmissionFile','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::lib.pkp.classes.submissionFile.SubmissionFile[]'),(24,'article-galley=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::lib.pkp.classes.galley.Galley','xml::schema(plugins/importexport/native/native.xsd)'),(25,'native-xml=>ArticleGalley','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::lib.pkp.classes.galley.Galley[]'),(26,'publication=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::classes.publication.Publication','xml::schema(plugins/importexport/native/native.xsd)'),(27,'native-xml=>Publication','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::classes.publication.Publication[]');
/*!40000 ALTER TABLE `filter_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filter_settings`
--

DROP TABLE IF EXISTS `filter_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filter_settings` (
  `filter_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `filter_settings_pkey` (`filter_id`,`locale`,`setting_name`),
  KEY `filter_settings_id` (`filter_id`),
  CONSTRAINT `filter_settings_filter_id_foreign` FOREIGN KEY (`filter_id`) REFERENCES `filters` (`filter_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter_settings`
--

LOCK TABLES `filter_settings` WRITE;
/*!40000 ALTER TABLE `filter_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `filter_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filters`
--

DROP TABLE IF EXISTS `filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filters` (
  `filter_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `filter_group_id` bigint(20) NOT NULL DEFAULT '0',
  `context_id` bigint(20) NOT NULL DEFAULT '0',
  `display_name` varchar(255) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `is_template` smallint(6) NOT NULL DEFAULT '0',
  `parent_filter_id` bigint(20) NOT NULL DEFAULT '0',
  `seq` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`filter_id`),
  KEY `filters_filter_group_id` (`filter_group_id`),
  CONSTRAINT `filters_filter_group_id_foreign` FOREIGN KEY (`filter_group_id`) REFERENCES `filter_groups` (`filter_group_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filters`
--

LOCK TABLES `filters` WRITE;
/*!40000 ALTER TABLE `filters` DISABLE KEYS */;
INSERT INTO `filters` VALUES (1,1,0,'Crossref XML issue export','APP\\plugins\\generic\\crossref\\filter\\IssueCrossrefXmlFilter',0,0,0),(2,2,0,'Crossref XML article export','APP\\plugins\\generic\\crossref\\filter\\ArticleCrossrefXmlFilter',0,0,0),(3,3,0,'DataCite XML export','APP\\plugins\\generic\\datacite\\filter\\DataciteXmlFilter',0,0,0),(4,4,0,'DataCite XML export','APP\\plugins\\generic\\datacite\\filter\\DataciteXmlFilter',0,0,0),(5,5,0,'DataCite XML export','APP\\plugins\\generic\\datacite\\filter\\DataciteXmlFilter',0,0,0),(6,6,0,'Extract metadata from a(n) Submission','APP\\plugins\\metadata\\dc11\\filter\\Dc11SchemaArticleAdapter',0,0,0),(7,7,0,'User XML user export','PKP\\plugins\\importexport\\users\\filter\\PKPUserUserXmlFilter',0,0,0),(8,8,0,'User XML user import','PKP\\plugins\\importexport\\users\\filter\\UserXmlPKPUserFilter',0,0,0),(9,9,0,'Native XML user group export','PKP\\plugins\\importexport\\users\\filter\\UserGroupNativeXmlFilter',0,0,0),(10,10,0,'Native XML user group import','PKP\\plugins\\importexport\\users\\filter\\NativeXmlUserGroupFilter',0,0,0),(11,11,0,'DOAJ XML export','APP\\plugins\\importexport\\doaj\\filter\\DOAJXmlFilter',0,0,0),(12,12,0,'DOAJ JSON export','APP\\plugins\\importexport\\doaj\\filter\\DOAJJsonFilter',0,0,0),(13,13,0,'APP\\plugins\\importexport\\pubmed\\filter\\ArticlePubMedXmlFilter','APP\\plugins\\importexport\\pubmed\\filter\\ArticlePubMedXmlFilter',0,0,0),(14,14,0,'Native XML submission export','APP\\plugins\\importexport\\native\\filter\\ArticleNativeXmlFilter',0,0,0),(15,15,0,'Native XML submission import','APP\\plugins\\importexport\\native\\filter\\NativeXmlArticleFilter',0,0,0),(16,16,0,'Native XML issue export','APP\\plugins\\importexport\\native\\filter\\IssueNativeXmlFilter',0,0,0),(17,17,0,'Native XML issue import','APP\\plugins\\importexport\\native\\filter\\NativeXmlIssueFilter',0,0,0),(18,18,0,'Native XML issue galley export','APP\\plugins\\importexport\\native\\filter\\IssueGalleyNativeXmlFilter',0,0,0),(19,19,0,'Native XML issue galley import','APP\\plugins\\importexport\\native\\filter\\NativeXmlIssueGalleyFilter',0,0,0),(20,20,0,'Native XML author export','APP\\plugins\\importexport\\native\\filter\\AuthorNativeXmlFilter',0,0,0),(21,21,0,'Native XML author import','APP\\plugins\\importexport\\native\\filter\\NativeXmlAuthorFilter',0,0,0),(22,23,0,'Native XML submission file import','APP\\plugins\\importexport\\native\\filter\\NativeXmlArticleFileFilter',0,0,0),(23,22,0,'Native XML submission file export','PKP\\plugins\\importexport\\native\\filter\\SubmissionFileNativeXmlFilter',0,0,0),(24,24,0,'Native XML representation export','APP\\plugins\\importexport\\native\\filter\\ArticleGalleyNativeXmlFilter',0,0,0),(25,25,0,'Native XML representation import','APP\\plugins\\importexport\\native\\filter\\NativeXmlArticleGalleyFilter',0,0,0),(26,26,0,'Native XML Publication export','APP\\plugins\\importexport\\native\\filter\\PublicationNativeXmlFilter',0,0,0),(27,27,0,'Native XML publication import','APP\\plugins\\importexport\\native\\filter\\NativeXmlPublicationFilter',0,0,0);
/*!40000 ALTER TABLE `filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre_settings`
--

DROP TABLE IF EXISTS `genre_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre_settings` (
  `genre_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)',
  UNIQUE KEY `genre_settings_pkey` (`genre_id`,`locale`,`setting_name`),
  KEY `genre_settings_genre_id` (`genre_id`),
  CONSTRAINT `genre_settings_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_settings`
--

LOCK TABLES `genre_settings` WRITE;
/*!40000 ALTER TABLE `genre_settings` DISABLE KEYS */;
INSERT INTO `genre_settings` VALUES (1,'en_US','name','Article Text','string'),(1,'fr_CA','name','Texte de l\'article','string'),(2,'en_US','name','Research Instrument','string'),(2,'fr_CA','name','Instruments de recherche','string'),(3,'en_US','name','Research Materials','string'),(3,'fr_CA','name','Documents de recherche','string'),(4,'en_US','name','Research Results','string'),(4,'fr_CA','name','Résultats de recherche','string'),(5,'en_US','name','Transcripts','string'),(5,'fr_CA','name','Transcriptions','string'),(6,'en_US','name','Data Analysis','string'),(6,'fr_CA','name','Analyse de données','string'),(7,'en_US','name','Data Set','string'),(7,'fr_CA','name','Ensemble de données','string'),(8,'en_US','name','Source Texts','string'),(8,'fr_CA','name','Textes source','string'),(9,'en_US','name','Multimedia','string'),(9,'fr_CA','name','Multimédias','string'),(10,'en_US','name','Image','string'),(10,'fr_CA','name','Image','string'),(11,'en_US','name','HTML Stylesheet','string'),(11,'fr_CA','name','Feuille de style HTML','string'),(12,'en_US','name','Other','string'),(12,'fr_CA','name','Autre','string');
/*!40000 ALTER TABLE `genre_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `genre_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `seq` bigint(20) NOT NULL,
  `enabled` smallint(6) NOT NULL DEFAULT '1',
  `category` bigint(20) NOT NULL DEFAULT '1',
  `dependent` smallint(6) NOT NULL DEFAULT '0',
  `supplementary` smallint(6) NOT NULL DEFAULT '0',
  `entry_key` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`genre_id`),
  KEY `genres_context_id` (`context_id`),
  CONSTRAINT `genres_context_id_foreign` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,1,0,1,1,0,0,'SUBMISSION'),(2,1,1,1,3,0,1,'RESEARCHINSTRUMENT'),(3,1,2,1,3,0,1,'RESEARCHMATERIALS'),(4,1,3,1,3,0,1,'RESEARCHRESULTS'),(5,1,4,1,3,0,1,'TRANSCRIPTS'),(6,1,5,1,3,0,1,'DATAANALYSIS'),(7,1,6,1,3,0,1,'DATASET'),(8,1,7,1,3,0,1,'SOURCETEXTS'),(9,1,8,1,1,1,1,'MULTIMEDIA'),(10,1,9,1,2,1,0,'IMAGE'),(11,1,10,1,1,1,0,'STYLE'),(12,1,11,1,3,0,1,'OTHER');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_ip`
--

DROP TABLE IF EXISTS `institution_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_ip` (
  `institution_ip_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `institution_id` bigint(20) NOT NULL,
  `ip_string` varchar(40) NOT NULL,
  `ip_start` bigint(20) NOT NULL,
  `ip_end` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`institution_ip_id`),
  KEY `institution_ip_institution_id` (`institution_id`),
  KEY `institution_ip_start` (`ip_start`),
  KEY `institution_ip_end` (`ip_end`),
  CONSTRAINT `institution_ip_institution_id_foreign` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`institution_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_ip`
--

LOCK TABLES `institution_ip` WRITE;
/*!40000 ALTER TABLE `institution_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `institution_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_settings`
--

DROP TABLE IF EXISTS `institution_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_settings` (
  `institution_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  UNIQUE KEY `institution_settings_pkey` (`institution_id`,`locale`,`setting_name`),
  KEY `institution_settings_institution_id` (`institution_id`),
  CONSTRAINT `institution_settings_institution_id_foreign` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`institution_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_settings`
--

LOCK TABLES `institution_settings` WRITE;
/*!40000 ALTER TABLE `institution_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `institution_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institutional_subscriptions`
--

DROP TABLE IF EXISTS `institutional_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institutional_subscriptions` (
  `institutional_subscription_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subscription_id` bigint(20) NOT NULL,
  `institution_id` bigint(20) NOT NULL,
  `mailing_address` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`institutional_subscription_id`),
  KEY `institutional_subscriptions_subscription_id` (`subscription_id`),
  KEY `institutional_subscriptions_institution_id` (`institution_id`),
  KEY `institutional_subscriptions_domain` (`domain`),
  CONSTRAINT `institutional_subscriptions_institution_id_foreign` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`institution_id`) ON DELETE CASCADE,
  CONSTRAINT `institutional_subscriptions_subscription_id` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`subscription_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institutional_subscriptions`
--

LOCK TABLES `institutional_subscriptions` WRITE;
/*!40000 ALTER TABLE `institutional_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `institutional_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institutions`
--

DROP TABLE IF EXISTS `institutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institutions` (
  `institution_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `ror` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`institution_id`),
  KEY `institutions_context_id` (`context_id`),
  CONSTRAINT `institutions_context_id_foreign` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institutions`
--

LOCK TABLES `institutions` WRITE;
/*!40000 ALTER TABLE `institutions` DISABLE KEYS */;
/*!40000 ALTER TABLE `institutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_files`
--

DROP TABLE IF EXISTS `issue_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_files` (
  `file_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `issue_id` bigint(20) NOT NULL,
  `file_name` varchar(90) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file_size` bigint(20) NOT NULL,
  `content_type` bigint(20) NOT NULL,
  `original_file_name` varchar(127) DEFAULT NULL,
  `date_uploaded` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`file_id`),
  KEY `issue_files_issue_id` (`issue_id`),
  CONSTRAINT `issue_files_issue_id` FOREIGN KEY (`issue_id`) REFERENCES `issues` (`issue_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_files`
--

LOCK TABLES `issue_files` WRITE;
/*!40000 ALTER TABLE `issue_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_galley_settings`
--

DROP TABLE IF EXISTS `issue_galley_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_galley_settings` (
  `galley_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)',
  UNIQUE KEY `issue_galley_settings_pkey` (`galley_id`,`locale`,`setting_name`),
  KEY `issue_galley_settings_galley_id` (`galley_id`),
  CONSTRAINT `issue_galleys_settings_galley_id` FOREIGN KEY (`galley_id`) REFERENCES `issue_galleys` (`galley_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_galley_settings`
--

LOCK TABLES `issue_galley_settings` WRITE;
/*!40000 ALTER TABLE `issue_galley_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_galley_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_galleys`
--

DROP TABLE IF EXISTS `issue_galleys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_galleys` (
  `galley_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `locale` varchar(14) DEFAULT NULL,
  `issue_id` bigint(20) NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `seq` double(8,2) NOT NULL DEFAULT '0.00',
  `url_path` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`galley_id`),
  KEY `issue_galleys_issue_id` (`issue_id`),
  KEY `issue_galleys_file_id` (`file_id`),
  KEY `issue_galleys_url_path` (`url_path`),
  CONSTRAINT `issue_galleys_file_id` FOREIGN KEY (`file_id`) REFERENCES `issue_files` (`file_id`) ON DELETE CASCADE,
  CONSTRAINT `issue_galleys_issue_id` FOREIGN KEY (`issue_id`) REFERENCES `issues` (`issue_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_galleys`
--

LOCK TABLES `issue_galleys` WRITE;
/*!40000 ALTER TABLE `issue_galleys` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_galleys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_settings`
--

DROP TABLE IF EXISTS `issue_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_settings` (
  `issue_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  `setting_type` varchar(6) DEFAULT NULL,
  UNIQUE KEY `issue_settings_pkey` (`issue_id`,`locale`,`setting_name`),
  KEY `issue_settings_issue_id` (`issue_id`),
  KEY `issue_settings_name_value` (`setting_name`(50),`setting_value`(150)),
  CONSTRAINT `issue_settings_issue_id` FOREIGN KEY (`issue_id`) REFERENCES `issues` (`issue_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_settings`
--

LOCK TABLES `issue_settings` WRITE;
/*!40000 ALTER TABLE `issue_settings` DISABLE KEYS */;
INSERT INTO `issue_settings` VALUES (1,'en_US','description','',NULL),(1,'en_US','title','',NULL),(1,'fr_CA','description','',NULL),(1,'fr_CA','title','',NULL),(2,'en_US','description','',NULL),(2,'en_US','title','',NULL),(2,'fr_CA','description','',NULL),(2,'fr_CA','title','',NULL);
/*!40000 ALTER TABLE `issue_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issues` (
  `issue_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `journal_id` bigint(20) NOT NULL,
  `volume` smallint(6) DEFAULT NULL,
  `number` varchar(40) DEFAULT NULL,
  `year` smallint(6) DEFAULT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `date_published` datetime DEFAULT NULL,
  `date_notified` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `access_status` smallint(6) NOT NULL DEFAULT '1',
  `open_access_date` datetime DEFAULT NULL,
  `show_volume` smallint(6) NOT NULL DEFAULT '0',
  `show_number` smallint(6) NOT NULL DEFAULT '0',
  `show_year` smallint(6) NOT NULL DEFAULT '0',
  `show_title` smallint(6) NOT NULL DEFAULT '0',
  `style_file_name` varchar(90) DEFAULT NULL,
  `original_style_file_name` varchar(255) DEFAULT NULL,
  `url_path` varchar(64) DEFAULT NULL,
  `doi_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`issue_id`),
  KEY `issues_journal_id` (`journal_id`),
  KEY `issues_doi_id` (`doi_id`),
  KEY `issues_url_path` (`url_path`),
  CONSTRAINT `issues_doi_id_foreign` FOREIGN KEY (`doi_id`) REFERENCES `dois` (`doi_id`) ON DELETE SET NULL,
  CONSTRAINT `issues_journal_id` FOREIGN KEY (`journal_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (1,1,1,'2',2014,1,'2022-10-26 06:52:32',NULL,'2022-10-26 07:12:27',1,NULL,1,1,1,0,NULL,NULL,'',NULL),(2,1,2,'1',2015,0,NULL,NULL,'2022-10-26 07:12:26',1,NULL,1,1,1,0,NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_views`
--

DROP TABLE IF EXISTS `item_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_views` (
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_last_viewed` datetime DEFAULT NULL,
  UNIQUE KEY `item_views_pkey` (`assoc_type`,`assoc_id`,`user_id`),
  KEY `item_views_user_id` (`user_id`),
  CONSTRAINT `item_views_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_views`
--

LOCK TABLES `item_views` WRITE;
/*!40000 ALTER TABLE `item_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` text NOT NULL,
  `options` mediumtext,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
INSERT INTO `job_batches` VALUES ('979770d8-762c-45fa-b510-a45e86d31e26','',0,0,0,'[]','a:0:{}',NULL,1666766890,NULL);
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal_settings`
--

DROP TABLE IF EXISTS `journal_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journal_settings` (
  `journal_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  `setting_type` varchar(6) DEFAULT NULL,
  UNIQUE KEY `journal_settings_pkey` (`journal_id`,`locale`,`setting_name`),
  KEY `journal_settings_journal_id` (`journal_id`),
  CONSTRAINT `journal_settings_journal_id` FOREIGN KEY (`journal_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_settings`
--

LOCK TABLES `journal_settings` WRITE;
/*!40000 ALTER TABLE `journal_settings` DISABLE KEYS */;
INSERT INTO `journal_settings` VALUES (1,'','contactEmail','rvaca@mailinator.com',NULL),(1,'','contactName','Ramiro Vaca',NULL),(1,'','copyrightYearBasis','issue',NULL),(1,'','copySubmissionAckAddress','',NULL),(1,'','copySubmissionAckPrimaryContact','0',NULL),(1,'','country','IS',NULL),(1,'','defaultReviewMode','2',NULL),(1,'','disableSubmissions','0',NULL),(1,'','doiCreationTime','copyEditCreationTime',NULL),(1,'','doiSuffixType','default',NULL),(1,'','emailSignature','<br/><hr /><br/><p><a href=\"http://localhost/index.php/publicknowledge\">Journal of Public Knowledge</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href=\"mailto: {$contactEmail}\">{$contactEmail}</a></p>',NULL),(1,'','enableDois','1',NULL),(1,'','enableGeoUsageStats','',NULL),(1,'','enableInstitutionUsageStats','0',NULL),(1,'','enableOai','1',NULL),(1,'','isSushiApiPublic','1',NULL),(1,'','itemsPerPage','25',NULL),(1,'','keywords','request',NULL),(1,'','mailingAddress','123 456th Street\nBurnaby, British Columbia\nCanada',NULL),(1,'','membershipFee','0',NULL),(1,'','notifyAllAuthors','1',NULL),(1,'','numPageLinks','10',NULL),(1,'','numWeeksPerResponse','4',NULL),(1,'','numWeeksPerReview','4',NULL),(1,'','onlineIssn','0378-5955',NULL),(1,'','printIssn','0378-5955',NULL),(1,'','publicationFee','0',NULL),(1,'','publisherInstitution','Public Knowledge Project',NULL),(1,'','purchaseArticleFee','0',NULL),(1,'','registrationAgency','',NULL),(1,'','supportedFormLocales','[\"en_US\",\"fr_CA\"]',NULL),(1,'','supportedLocales','[\"en_US\",\"fr_CA\"]',NULL),(1,'','supportedSubmissionLocales','[\"en_US\",\"fr_CA\"]',NULL),(1,'','supportEmail','rvaca@mailinator.com',NULL),(1,'','supportName','Ramiro Vaca',NULL),(1,'','themePluginPath','default',NULL),(1,'en_US','abbreviation','publicknowledgeJ Pub Know',NULL),(1,'en_US','acronym','JPKJPK',NULL),(1,'en_US','authorInformation','Interested in submitting to this journal? We recommend that you review the <a href=\"http://localhost/index.php/publicknowledge/about\">About the Journal</a> page for the journal\'s section policies, as well as the <a href=\"http://localhost/index.php/publicknowledge/about/submissions#authorGuidelines\">Author Guidelines</a>. Authors need to <a href=\"http://localhost/index.php/publicknowledge/user/register\">register</a> with the journal prior to submitting or, if already registered, can simply <a href=\"http://localhost/index.php/index/login\">log in</a> and begin the five-step process.',NULL),(1,'en_US','clockssLicense','This journal utilizes the CLOCKSS system to create a distributed archiving system among participating libraries and permits those libraries to create permanent archives of the journal for purposes of preservation and restoration. <a href=\"https://clockss.org\">More...</a>',NULL),(1,'en_US','customHeaders','<meta name=\"pkp\" content=\"Test metatag.\">',NULL),(1,'en_US','librarianInformation','We encourage research librarians to list this journal among their library\'s electronic journal holdings. As well, it may be worth noting that this journal\'s open source publishing system is suitable for libraries to host for their faculty members to use with journals they are involved in editing (see <a href=\"https://pkp.sfu.ca/ojs\">Open Journal Systems</a>).',NULL),(1,'en_US','lockssLicense','This journal utilizes the LOCKSS system to create a distributed archiving system among participating libraries and permits those libraries to create permanent archives of the journal for purposes of preservation and restoration. <a href=\"https://www.lockss.org\">More...</a>',NULL),(1,'en_US','name','Journal of Public Knowledge',NULL),(1,'en_US','openAccessPolicy','This journal provides immediate open access to its content on the principle that making research freely available to the public supports a greater global exchange of knowledge.',NULL),(1,'en_US','privacyStatement','<p>The names and email addresses entered in this journal site will be used exclusively for the stated purposes of this journal and will not be made available for any other purpose or to any other party.</p>',NULL),(1,'en_US','readerInformation','We encourage readers to sign up for the publishing notification service for this journal. Use the <a href=\"http://localhost/index.php/publicknowledge/user/register\">Register</a> link at the top of the home page for the journal. This registration will result in the reader receiving the Table of Contents by email for each new issue of the journal. This list also allows the journal to claim a certain level of support or readership. See the journal\'s <a href=\"http://localhost/index.php/publicknowledge/about/submissions#privacyStatement\">Privacy Statement</a>, which assures readers that their name and email address will not be used for other purposes.',NULL),(1,'en_US','searchDescription','The Journal of Public Knowledge is a peer-reviewed quarterly publication on the subject of public access to science.',NULL),(1,'en_US','submissionChecklist','[{\"order\":1,\"content\":\"The submission has not been previously published, nor is it before another journal for consideration (or an explanation has been provided in Comments to the Editor).\"},{\"order\":2,\"content\":\"The submission file is in OpenOffice, Microsoft Word, or RTF document file format.\"},{\"order\":3,\"content\":\"Where available, URLs for the references have been provided.\"},{\"order\":4,\"content\":\"The text is single-spaced; uses a 12-point font; employs italics, rather than underlining (except with URL addresses); and all illustrations, figures, and tables are placed within the text at the appropriate points, rather than at the end.\"},{\"order\":5,\"content\":\"The text adheres to the stylistic and bibliographic requirements outlined in the Author Guidelines.\"}]',NULL),(1,'fr_CA','authorInformation','Intéressé-e à soumettre à cette revue ? Nous vous recommandons de consulter les politiques de rubrique de la revue à la page <a href=\"http://localhost/index.php/publicknowledge/about\">À propos de la revue</a> ainsi que les <a href=\"http://localhost/index.php/publicknowledge/about/submissions#authorGuidelines\">Directives aux auteurs</a>. Les auteurs-es doivent <a href=\"http://localhost/index.php/publicknowledge/user/register\">s\'inscrire</a> auprès de la revue avant de présenter une soumission, ou s\'ils et elles sont déjà inscrits-es, simplement <a href=\"http://localhost/index.php/publicknowledge/login\">ouvrir une session</a> et accéder au tableau de bord pour commencer les 5 étapes du processus.',NULL),(1,'fr_CA','clockssLicense','Cette revue utilise le système CLOCKSS pour créer un système d\'archivage distribué parmi les bibliothèques participantes et permet à ces bibliothèques de créer des archives permanentes de la revue à des fins de conservation et de reconstitution. <a href=\"https://clockss.org\">En apprendre davantage... </a>',NULL),(1,'fr_CA','librarianInformation','Nous incitons les bibliothécaires à lister cette revue dans leur fonds de revues numériques. Aussi, il peut être pertinent de mentionner que ce système de publication en libre accès est conçu pour être hébergé par les bibliothèques de recherche pour que les membres de leurs facultés l\'utilisent avec les revues dans lesquelles elles ou ils sont impliqués (voir <a href=\"https://pkp.sfu.ca/ojs\">Open Journal Systems</a>).',NULL),(1,'fr_CA','lockssLicense','Cette revue utilise le système LOCKSS pour créer un système de distribution des archives parmi les bibliothèques participantes et afin de permettre à ces bibliothèques de créer des archives permanentes pour fins de préservation et de restauration. <a href=\"https://lockss.org\">En apprendre davantage...</a>',NULL),(1,'fr_CA','name','Journal de la connaissance du public',NULL),(1,'fr_CA','openAccessPolicy','Cette revue fournit le libre accès immédiat à son contenu se basant sur le principe que rendre la recherche disponible au public gratuitement facilite un plus grand échange du savoir, à l\'échelle de la planète.',NULL),(1,'fr_CA','privacyStatement','<p>Les noms et courriels saisis dans le site de cette revue seront utilisés exclusivement aux fins indiquées par cette revue et ne serviront à aucune autre fin, ni à toute autre partie.</p>',NULL),(1,'fr_CA','readerInformation','Nous invitons les lecteurs-trices à s\'inscrire pour recevoir les avis de publication de cette revue. Utiliser le lien <a href=\"http://localhost/index.php/publicknowledge/user/register\">S\'inscrire</a> en haut de la page d\'accueil de la revue. Cette inscription permettra au,à la lecteur-trice de recevoir par courriel le sommaire de chaque nouveau numéro de la revue. Cette liste permet aussi à la revue de revendiquer un certain niveau de soutien ou de lectorat. Voir la <a href=\"http://localhost/index.php/publicknowledge/about/submissions#privacyStatement\">Déclaration de confidentialité</a> de la revue qui certifie aux lecteurs-trices que leur nom et leur courriel ne seront pas utilisés à d\'autres fins.',NULL),(1,'fr_CA','submissionChecklist','[{\"order\":1,\"content\":\"La soumission n\'a pas déjà été publiée et n\'est pas considérée actuellement par une autre revue. Si ce n\'est pas le cas, fournir une explication dans le champ « Commentaires au,à la rédacteur-trice ».\"},{\"order\":2,\"content\":\"Le fichier de la soumission est dans un des formats de fichier suivants : OpenOffice, Microsoft Word, ou RTF.\"},{\"order\":3,\"content\":\"Lorsque possible, les URL des références ont été fournies.\"},{\"order\":4,\"content\":\"Le texte est à simple interligne, utilise une police de 12 points, emploie l\'italique plutôt que le souligné (sauf pour les adresses URL) et place toutes les illustrations, figures et tableaux aux endroits appropriés dans le texte plutôt qu\'à la fin.\"},{\"order\":5,\"content\":\"Le texte se conforme aux exigences stylistiques et bibliographiques décrites dans les  <a href=\\\"http:\\/\\/localhost\\/index.php\\/publicknowledge\\/about\\/submissions#authorGuidelines\\\">Directives aux auteurs<\\/a>, qui se trouvent dans la section « À propos de la revue ».\"}]',NULL);
/*!40000 ALTER TABLE `journal_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journals`
--

DROP TABLE IF EXISTS `journals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journals` (
  `journal_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `path` varchar(32) NOT NULL,
  `seq` double(8,2) NOT NULL DEFAULT '0.00' COMMENT 'Used to order lists of journals',
  `primary_locale` varchar(14) NOT NULL,
  `enabled` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Controls whether or not the journal is considered "live" and will appear on the website. (Note that disabled journals may still be accessible, but only if the user knows the URL.)',
  `current_issue_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`journal_id`),
  UNIQUE KEY `journals_path` (`path`),
  KEY `journals_issue_id` (`current_issue_id`),
  CONSTRAINT `journals_current_issue_id_foreign` FOREIGN KEY (`current_issue_id`) REFERENCES `issues` (`issue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journals`
--

LOCK TABLES `journals` WRITE;
/*!40000 ALTER TABLE `journals` DISABLE KEYS */;
INSERT INTO `journals` VALUES (1,'publicknowledge',1.00,'en_US',1,1);
/*!40000 ALTER TABLE `journals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_file_settings`
--

DROP TABLE IF EXISTS `library_file_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library_file_settings` (
  `file_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object|date)',
  UNIQUE KEY `library_file_settings_pkey` (`file_id`,`locale`,`setting_name`),
  KEY `library_file_settings_file_id` (`file_id`),
  CONSTRAINT `library_file_settings_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `library_files` (`file_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_file_settings`
--

LOCK TABLES `library_file_settings` WRITE;
/*!40000 ALTER TABLE `library_file_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `library_file_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_files`
--

DROP TABLE IF EXISTS `library_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library_files` (
  `file_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `original_file_name` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file_size` bigint(20) NOT NULL,
  `type` smallint(6) NOT NULL,
  `date_uploaded` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `public_access` smallint(6) DEFAULT '0',
  PRIMARY KEY (`file_id`),
  KEY `library_files_context_id` (`context_id`),
  KEY `library_files_submission_id` (`submission_id`),
  CONSTRAINT `library_files_context_id` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE,
  CONSTRAINT `library_files_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`submission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_files`
--

LOCK TABLES `library_files` WRITE;
/*!40000 ALTER TABLE `library_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `library_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailable_templates`
--

DROP TABLE IF EXISTS `mailable_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailable_templates` (
  `email_id` bigint(20) NOT NULL,
  `mailable_id` varchar(255) NOT NULL,
  PRIMARY KEY (`email_id`,`mailable_id`),
  KEY `mailable_templates_email_id` (`email_id`),
  CONSTRAINT `mailable_templates_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `email_templates` (`email_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailable_templates`
--

LOCK TABLES `mailable_templates` WRITE;
/*!40000 ALTER TABLE `mailable_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `mailable_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metrics_context`
--

DROP TABLE IF EXISTS `metrics_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metrics_context` (
  `load_id` varchar(255) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `metric` int(11) NOT NULL,
  KEY `metrics_context_load_id` (`load_id`),
  KEY `metrics_context_context_id` (`context_id`),
  CONSTRAINT `metrics_context_context_id_foreign` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metrics_context`
--

LOCK TABLES `metrics_context` WRITE;
/*!40000 ALTER TABLE `metrics_context` DISABLE KEYS */;
/*!40000 ALTER TABLE `metrics_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metrics_counter_submission_daily`
--

DROP TABLE IF EXISTS `metrics_counter_submission_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metrics_counter_submission_daily` (
  `load_id` varchar(255) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `metric_investigations` int(11) NOT NULL,
  `metric_investigations_unique` int(11) NOT NULL,
  `metric_requests` int(11) NOT NULL,
  `metric_requests_unique` int(11) NOT NULL,
  UNIQUE KEY `msd_uc_load_id_context_id_submission_id_date` (`load_id`,`context_id`,`submission_id`,`date`),
  KEY `msd_load_id` (`load_id`),
  KEY `metrics_counter_submission_daily_context_id` (`context_id`),
  KEY `metrics_counter_submission_daily_submission_id` (`submission_id`),
  KEY `msd_context_id_submission_id` (`context_id`,`submission_id`),
  CONSTRAINT `msd_context_id_foreign` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE,
  CONSTRAINT `msd_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`submission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metrics_counter_submission_daily`
--

LOCK TABLES `metrics_counter_submission_daily` WRITE;
/*!40000 ALTER TABLE `metrics_counter_submission_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `metrics_counter_submission_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metrics_counter_submission_institution_daily`
--

DROP TABLE IF EXISTS `metrics_counter_submission_institution_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metrics_counter_submission_institution_daily` (
  `load_id` varchar(255) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `institution_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `metric_investigations` int(11) NOT NULL,
  `metric_investigations_unique` int(11) NOT NULL,
  `metric_requests` int(11) NOT NULL,
  `metric_requests_unique` int(11) NOT NULL,
  UNIQUE KEY `msid_uc_load_id_context_id_submission_id_institution_id_date` (`load_id`,`context_id`,`submission_id`,`institution_id`,`date`),
  KEY `msid_load_id` (`load_id`),
  KEY `metrics_counter_submission_institution_daily_context_id` (`context_id`),
  KEY `metrics_counter_submission_institution_daily_submission_id` (`submission_id`),
  KEY `metrics_counter_submission_institution_daily_institution_id` (`institution_id`),
  KEY `msid_context_id_submission_id` (`context_id`,`submission_id`),
  CONSTRAINT `msid_context_id_foreign` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE,
  CONSTRAINT `msid_institution_id_foreign` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`institution_id`) ON DELETE CASCADE,
  CONSTRAINT `msid_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`submission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metrics_counter_submission_institution_daily`
--

LOCK TABLES `metrics_counter_submission_institution_daily` WRITE;
/*!40000 ALTER TABLE `metrics_counter_submission_institution_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `metrics_counter_submission_institution_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metrics_counter_submission_institution_monthly`
--

DROP TABLE IF EXISTS `metrics_counter_submission_institution_monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metrics_counter_submission_institution_monthly` (
  `context_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `institution_id` bigint(20) NOT NULL,
  `month` int(11) NOT NULL,
  `metric_investigations` int(11) NOT NULL,
  `metric_investigations_unique` int(11) NOT NULL,
  `metric_requests` int(11) NOT NULL,
  `metric_requests_unique` int(11) NOT NULL,
  UNIQUE KEY `msim_uc_context_id_submission_id_institution_id_month` (`context_id`,`submission_id`,`institution_id`,`month`),
  KEY `metrics_counter_submission_institution_monthly_context_id` (`context_id`),
  KEY `metrics_counter_submission_institution_monthly_submission_id` (`submission_id`),
  KEY `metrics_counter_submission_institution_monthly_institution_id` (`institution_id`),
  KEY `msim_context_id_submission_id` (`context_id`,`submission_id`),
  CONSTRAINT `msim_context_id_foreign` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE,
  CONSTRAINT `msim_institution_id_foreign` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`institution_id`) ON DELETE CASCADE,
  CONSTRAINT `msim_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`submission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metrics_counter_submission_institution_monthly`
--

LOCK TABLES `metrics_counter_submission_institution_monthly` WRITE;
/*!40000 ALTER TABLE `metrics_counter_submission_institution_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `metrics_counter_submission_institution_monthly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metrics_counter_submission_monthly`
--

DROP TABLE IF EXISTS `metrics_counter_submission_monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metrics_counter_submission_monthly` (
  `context_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `month` int(11) NOT NULL,
  `metric_investigations` int(11) NOT NULL,
  `metric_investigations_unique` int(11) NOT NULL,
  `metric_requests` int(11) NOT NULL,
  `metric_requests_unique` int(11) NOT NULL,
  UNIQUE KEY `msm_uc_context_id_submission_id_month` (`context_id`,`submission_id`,`month`),
  KEY `metrics_counter_submission_monthly_context_id` (`context_id`),
  KEY `metrics_counter_submission_monthly_submission_id` (`submission_id`),
  KEY `msm_context_id_submission_id` (`context_id`,`submission_id`),
  CONSTRAINT `msm_context_id_foreign` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE,
  CONSTRAINT `msm_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`submission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metrics_counter_submission_monthly`
--

LOCK TABLES `metrics_counter_submission_monthly` WRITE;
/*!40000 ALTER TABLE `metrics_counter_submission_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `metrics_counter_submission_monthly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metrics_issue`
--

DROP TABLE IF EXISTS `metrics_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metrics_issue` (
  `load_id` varchar(255) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `issue_id` bigint(20) NOT NULL,
  `issue_galley_id` bigint(20) DEFAULT NULL,
  `date` date NOT NULL,
  `metric` int(11) NOT NULL,
  KEY `metrics_issue_load_id` (`load_id`),
  KEY `metrics_issue_context_id` (`context_id`),
  KEY `metrics_issue_issue_id` (`issue_id`),
  KEY `metrics_issue_issue_galley_id` (`issue_galley_id`),
  KEY `metrics_issue_context_id_issue_id` (`context_id`,`issue_id`),
  CONSTRAINT `metrics_issue_context_id_foreign` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE,
  CONSTRAINT `metrics_issue_issue_galley_id_foreign` FOREIGN KEY (`issue_galley_id`) REFERENCES `issue_galleys` (`galley_id`) ON DELETE CASCADE,
  CONSTRAINT `metrics_issue_issue_id_foreign` FOREIGN KEY (`issue_id`) REFERENCES `issues` (`issue_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metrics_issue`
--

LOCK TABLES `metrics_issue` WRITE;
/*!40000 ALTER TABLE `metrics_issue` DISABLE KEYS */;
/*!40000 ALTER TABLE `metrics_issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metrics_submission`
--

DROP TABLE IF EXISTS `metrics_submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metrics_submission` (
  `load_id` varchar(255) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `representation_id` bigint(20) DEFAULT NULL,
  `submission_file_id` bigint(20) unsigned DEFAULT NULL,
  `file_type` bigint(20) DEFAULT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `metric` int(11) NOT NULL,
  KEY `ms_load_id` (`load_id`),
  KEY `metrics_submission_context_id` (`context_id`),
  KEY `metrics_submission_submission_id` (`submission_id`),
  KEY `metrics_submission_representation_id` (`representation_id`),
  KEY `metrics_submission_submission_file_id` (`submission_file_id`),
  KEY `ms_context_id_submission_id_assoc_type_file_type` (`context_id`,`submission_id`,`assoc_type`,`file_type`),
  CONSTRAINT `metrics_submission_context_id_foreign` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE,
  CONSTRAINT `metrics_submission_representation_id_foreign` FOREIGN KEY (`representation_id`) REFERENCES `publication_galleys` (`galley_id`) ON DELETE CASCADE,
  CONSTRAINT `metrics_submission_submission_file_id_foreign` FOREIGN KEY (`submission_file_id`) REFERENCES `submission_files` (`submission_file_id`) ON DELETE CASCADE,
  CONSTRAINT `metrics_submission_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`submission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metrics_submission`
--

LOCK TABLES `metrics_submission` WRITE;
/*!40000 ALTER TABLE `metrics_submission` DISABLE KEYS */;
/*!40000 ALTER TABLE `metrics_submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metrics_submission_geo_daily`
--

DROP TABLE IF EXISTS `metrics_submission_geo_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metrics_submission_geo_daily` (
  `load_id` varchar(255) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `country` varchar(2) NOT NULL DEFAULT '',
  `region` varchar(3) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `date` date NOT NULL,
  `metric` int(11) NOT NULL,
  `metric_unique` int(11) NOT NULL,
  UNIQUE KEY `msgd_uc_load_context_submission_c_r_c_date` (`load_id`,`context_id`,`submission_id`,`country`,`region`,`city`,`date`),
  KEY `msgd_load_id` (`load_id`),
  KEY `metrics_submission_geo_daily_context_id` (`context_id`),
  KEY `metrics_submission_geo_daily_submission_id` (`submission_id`),
  KEY `msgd_context_id_submission_id` (`context_id`,`submission_id`),
  CONSTRAINT `msgd_context_id_foreign` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE,
  CONSTRAINT `msgd_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`submission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metrics_submission_geo_daily`
--

LOCK TABLES `metrics_submission_geo_daily` WRITE;
/*!40000 ALTER TABLE `metrics_submission_geo_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `metrics_submission_geo_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metrics_submission_geo_monthly`
--

DROP TABLE IF EXISTS `metrics_submission_geo_monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metrics_submission_geo_monthly` (
  `context_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `country` varchar(2) NOT NULL DEFAULT '',
  `region` varchar(3) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `month` int(11) NOT NULL,
  `metric` int(11) NOT NULL,
  `metric_unique` int(11) NOT NULL,
  UNIQUE KEY `msgm_uc_context_submission_c_r_c_month` (`context_id`,`submission_id`,`country`,`region`,`city`,`month`),
  KEY `metrics_submission_geo_monthly_context_id` (`context_id`),
  KEY `metrics_submission_geo_monthly_submission_id` (`submission_id`),
  KEY `msgm_context_id_submission_id` (`context_id`,`submission_id`),
  CONSTRAINT `msgm_context_id_foreign` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE,
  CONSTRAINT `msgm_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`submission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metrics_submission_geo_monthly`
--

LOCK TABLES `metrics_submission_geo_monthly` WRITE;
/*!40000 ALTER TABLE `metrics_submission_geo_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `metrics_submission_geo_monthly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigation_menu_item_assignment_settings`
--

DROP TABLE IF EXISTS `navigation_menu_item_assignment_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `navigation_menu_item_assignment_settings` (
  `navigation_menu_item_assignment_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `navigation_menu_item_assignment_settings_pkey` (`navigation_menu_item_assignment_id`,`locale`,`setting_name`),
  KEY `navigation_menu_item_assignment_settings_n_m_i_a_id` (`navigation_menu_item_assignment_id`),
  CONSTRAINT `assignment_settings_navigation_menu_item_assignment_id` FOREIGN KEY (`navigation_menu_item_assignment_id`) REFERENCES `navigation_menu_item_assignments` (`navigation_menu_item_assignment_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigation_menu_item_assignment_settings`
--

LOCK TABLES `navigation_menu_item_assignment_settings` WRITE;
/*!40000 ALTER TABLE `navigation_menu_item_assignment_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `navigation_menu_item_assignment_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigation_menu_item_assignments`
--

DROP TABLE IF EXISTS `navigation_menu_item_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `navigation_menu_item_assignments` (
  `navigation_menu_item_assignment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `navigation_menu_id` bigint(20) NOT NULL,
  `navigation_menu_item_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `seq` bigint(20) DEFAULT '0',
  PRIMARY KEY (`navigation_menu_item_assignment_id`),
  KEY `navigation_menu_item_assignments_navigation_menu_id` (`navigation_menu_id`),
  KEY `navigation_menu_item_assignments_navigation_menu_item_id` (`navigation_menu_item_id`),
  CONSTRAINT `navigation_menu_item_assignments_navigation_menu_id_foreign` FOREIGN KEY (`navigation_menu_id`) REFERENCES `navigation_menus` (`navigation_menu_id`) ON DELETE CASCADE,
  CONSTRAINT `navigation_menu_item_assignments_navigation_menu_item_id_foreign` FOREIGN KEY (`navigation_menu_item_id`) REFERENCES `navigation_menu_items` (`navigation_menu_item_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigation_menu_item_assignments`
--

LOCK TABLES `navigation_menu_item_assignments` WRITE;
/*!40000 ALTER TABLE `navigation_menu_item_assignments` DISABLE KEYS */;
INSERT INTO `navigation_menu_item_assignments` VALUES (1,1,1,0,0),(2,1,2,0,1),(3,1,3,0,2),(4,1,4,3,0),(5,1,5,3,1),(6,1,6,3,2),(7,1,7,3,3),(8,2,8,0,0),(9,2,9,0,1),(10,2,10,0,2),(11,2,11,10,0),(12,2,12,10,1),(13,2,13,10,2),(14,2,14,10,3),(15,3,15,0,0),(16,3,16,0,1),(17,3,17,0,2),(18,3,18,0,3),(19,3,19,18,0),(20,3,20,18,1),(21,3,21,18,2),(22,3,22,18,3),(23,3,23,18,4);
/*!40000 ALTER TABLE `navigation_menu_item_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigation_menu_item_settings`
--

DROP TABLE IF EXISTS `navigation_menu_item_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `navigation_menu_item_settings` (
  `navigation_menu_item_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `navigation_menu_item_settings_pkey` (`navigation_menu_item_id`,`locale`,`setting_name`),
  KEY `navigation_menu_item_settings_navigation_menu_item_id` (`navigation_menu_item_id`),
  CONSTRAINT `navigation_menu_item_settings_navigation_menu_id` FOREIGN KEY (`navigation_menu_item_id`) REFERENCES `navigation_menu_items` (`navigation_menu_item_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigation_menu_item_settings`
--

LOCK TABLES `navigation_menu_item_settings` WRITE;
/*!40000 ALTER TABLE `navigation_menu_item_settings` DISABLE KEYS */;
INSERT INTO `navigation_menu_item_settings` VALUES (1,'','titleLocaleKey','navigation.register','string'),(2,'','titleLocaleKey','navigation.login','string'),(3,'','titleLocaleKey','{$loggedInUsername}','string'),(4,'','titleLocaleKey','navigation.dashboard','string'),(5,'','titleLocaleKey','common.viewProfile','string'),(6,'','titleLocaleKey','navigation.admin','string'),(7,'','titleLocaleKey','user.logOut','string'),(8,'','titleLocaleKey','navigation.register','string'),(9,'','titleLocaleKey','navigation.login','string'),(10,'','titleLocaleKey','{$loggedInUsername}','string'),(11,'','titleLocaleKey','navigation.dashboard','string'),(12,'','titleLocaleKey','common.viewProfile','string'),(13,'','titleLocaleKey','navigation.admin','string'),(14,'','titleLocaleKey','user.logOut','string'),(15,'','titleLocaleKey','navigation.current','string'),(16,'','titleLocaleKey','navigation.archives','string'),(17,'','titleLocaleKey','manager.announcements','string'),(18,'','titleLocaleKey','navigation.about','string'),(19,'','titleLocaleKey','about.aboutContext','string'),(20,'','titleLocaleKey','about.submissions','string'),(21,'','titleLocaleKey','about.editorialTeam','string'),(22,'','titleLocaleKey','manager.setup.privacyStatement','string'),(23,'','titleLocaleKey','about.contact','string'),(24,'','titleLocaleKey','common.search','string');
/*!40000 ALTER TABLE `navigation_menu_item_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigation_menu_items`
--

DROP TABLE IF EXISTS `navigation_menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `navigation_menu_items` (
  `navigation_menu_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `path` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT '',
  PRIMARY KEY (`navigation_menu_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigation_menu_items`
--

LOCK TABLES `navigation_menu_items` WRITE;
/*!40000 ALTER TABLE `navigation_menu_items` DISABLE KEYS */;
INSERT INTO `navigation_menu_items` VALUES (1,0,NULL,'NMI_TYPE_USER_REGISTER'),(2,0,NULL,'NMI_TYPE_USER_LOGIN'),(3,0,NULL,'NMI_TYPE_USER_DASHBOARD'),(4,0,NULL,'NMI_TYPE_USER_DASHBOARD'),(5,0,NULL,'NMI_TYPE_USER_PROFILE'),(6,0,NULL,'NMI_TYPE_ADMINISTRATION'),(7,0,NULL,'NMI_TYPE_USER_LOGOUT'),(8,1,NULL,'NMI_TYPE_USER_REGISTER'),(9,1,NULL,'NMI_TYPE_USER_LOGIN'),(10,1,NULL,'NMI_TYPE_USER_DASHBOARD'),(11,1,NULL,'NMI_TYPE_USER_DASHBOARD'),(12,1,NULL,'NMI_TYPE_USER_PROFILE'),(13,1,NULL,'NMI_TYPE_ADMINISTRATION'),(14,1,NULL,'NMI_TYPE_USER_LOGOUT'),(15,1,NULL,'NMI_TYPE_CURRENT'),(16,1,NULL,'NMI_TYPE_ARCHIVES'),(17,1,NULL,'NMI_TYPE_ANNOUNCEMENTS'),(18,1,NULL,'NMI_TYPE_ABOUT'),(19,1,NULL,'NMI_TYPE_ABOUT'),(20,1,NULL,'NMI_TYPE_SUBMISSIONS'),(21,1,NULL,'NMI_TYPE_EDITORIAL_TEAM'),(22,1,NULL,'NMI_TYPE_PRIVACY'),(23,1,NULL,'NMI_TYPE_CONTACT'),(24,1,NULL,'NMI_TYPE_SEARCH');
/*!40000 ALTER TABLE `navigation_menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigation_menus`
--

DROP TABLE IF EXISTS `navigation_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `navigation_menus` (
  `navigation_menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `area_name` varchar(255) DEFAULT '',
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`navigation_menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigation_menus`
--

LOCK TABLES `navigation_menus` WRITE;
/*!40000 ALTER TABLE `navigation_menus` DISABLE KEYS */;
INSERT INTO `navigation_menus` VALUES (1,0,'user','User Navigation Menu'),(2,1,'user','User Navigation Menu'),(3,1,'primary','Primary Navigation Menu');
/*!40000 ALTER TABLE `navigation_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `note_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `contents` text,
  PRIMARY KEY (`note_id`),
  KEY `notes_user_id` (`user_id`),
  KEY `notes_assoc` (`assoc_type`,`assoc_id`),
  CONSTRAINT `notes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,1048586,1,6,'2022-10-26 06:57:05','2022-10-26 06:57:05','Editor Recommendation','<p>Dear Daniel Barnes, David Buskins, Stephanie Berardo,</p><p>After considering the reviewers\' feedback, I would like to make the following recommendation regarding the submission The influence of lactation on the quantity and quality of cashmere production.</p><p>My recommendation is:<br />Accept Submission.</p><p>Please visit the submission\'s <a href=\"http://localhost/index.php/publicknowledge/workflow/access/2\">editorial workflow</a> to act on this recommendation.</p><p>Please feel free to contact me with any questions.</p><p>Kind regards,</p><p>Minoti Inoue</p>');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_settings`
--

DROP TABLE IF EXISTS `notification_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_settings` (
  `notification_id` bigint(20) NOT NULL,
  `locale` varchar(14) DEFAULT NULL,
  `setting_name` varchar(64) NOT NULL,
  `setting_value` mediumtext NOT NULL,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)',
  UNIQUE KEY `notification_settings_pkey` (`notification_id`,`locale`,`setting_name`),
  KEY `notification_settings_notification_id` (`notification_id`),
  CONSTRAINT `notification_settings_notification_id_foreign` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`notification_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_settings`
--

LOCK TABLES `notification_settings` WRITE;
/*!40000 ALTER TABLE `notification_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_subscription_settings`
--

DROP TABLE IF EXISTS `notification_subscription_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_subscription_settings` (
  `setting_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `setting_name` varchar(64) NOT NULL,
  `setting_value` mediumtext NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `context` bigint(20) NOT NULL,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)',
  PRIMARY KEY (`setting_id`),
  KEY `notification_subscription_settings_user_id` (`user_id`),
  KEY `notification_subscription_settings_context` (`context`),
  CONSTRAINT `notification_subscription_settings_context_foreign` FOREIGN KEY (`context`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE,
  CONSTRAINT `notification_subscription_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_subscription_settings`
--

LOCK TABLES `notification_subscription_settings` WRITE;
/*!40000 ALTER TABLE `notification_subscription_settings` DISABLE KEYS */;
INSERT INTO `notification_subscription_settings` VALUES (1,'blocked_emailed_notification','8',17,1,'int'),(2,'blocked_emailed_notification','268435477',17,1,'int'),(3,'blocked_emailed_notification','8',18,1,'int'),(4,'blocked_emailed_notification','268435477',18,1,'int'),(5,'blocked_emailed_notification','8',19,1,'int'),(6,'blocked_emailed_notification','268435477',19,1,'int'),(7,'blocked_emailed_notification','8',20,1,'int'),(8,'blocked_emailed_notification','268435477',20,1,'int'),(9,'blocked_emailed_notification','8',21,1,'int'),(10,'blocked_emailed_notification','268435477',21,1,'int'),(11,'blocked_emailed_notification','8',22,1,'int'),(12,'blocked_emailed_notification','268435477',22,1,'int'),(13,'blocked_emailed_notification','8',23,1,'int'),(14,'blocked_emailed_notification','268435477',23,1,'int'),(15,'blocked_emailed_notification','8',24,1,'int'),(16,'blocked_emailed_notification','268435477',24,1,'int'),(17,'blocked_emailed_notification','8',25,1,'int'),(18,'blocked_emailed_notification','268435477',25,1,'int'),(19,'blocked_emailed_notification','8',26,1,'int'),(20,'blocked_emailed_notification','268435477',26,1,'int'),(21,'blocked_emailed_notification','8',27,1,'int'),(22,'blocked_emailed_notification','268435477',27,1,'int'),(23,'blocked_emailed_notification','8',28,1,'int'),(24,'blocked_emailed_notification','268435477',28,1,'int'),(25,'blocked_emailed_notification','8',29,1,'int'),(26,'blocked_emailed_notification','268435477',29,1,'int'),(27,'blocked_emailed_notification','8',30,1,'int'),(28,'blocked_emailed_notification','268435477',30,1,'int'),(29,'blocked_emailed_notification','8',31,1,'int'),(30,'blocked_emailed_notification','268435477',31,1,'int'),(31,'blocked_emailed_notification','8',32,1,'int'),(32,'blocked_emailed_notification','268435477',32,1,'int'),(33,'blocked_emailed_notification','8',33,1,'int'),(34,'blocked_emailed_notification','268435477',33,1,'int'),(35,'blocked_emailed_notification','8',34,1,'int'),(36,'blocked_emailed_notification','268435477',34,1,'int'),(37,'blocked_emailed_notification','8',35,1,'int'),(38,'blocked_emailed_notification','268435477',35,1,'int');
/*!40000 ALTER TABLE `notification_subscription_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `notification_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `level` bigint(20) NOT NULL,
  `type` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_read` datetime DEFAULT NULL,
  `assoc_type` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `notifications_context_id_user_id` (`context_id`,`user_id`,`level`),
  KEY `notifications_context_id` (`context_id`,`level`),
  KEY `notifications_assoc` (`assoc_type`,`assoc_id`),
  KEY `notifications_user_id_level` (`user_id`,`level`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (6,1,3,2,16777217,'2022-10-26 06:53:04',NULL,1048585,1),(7,1,4,2,16777217,'2022-10-26 06:53:04',NULL,1048585,1),(8,1,5,2,16777217,'2022-10-26 06:53:04',NULL,1048585,1),(9,1,0,2,16777243,'2022-10-26 06:53:04',NULL,1048585,1),(10,1,0,2,16777245,'2022-10-26 06:53:04',NULL,1048585,1),(11,1,0,2,16777236,'2022-10-26 06:53:14','2022-10-26 06:53:17',523,1),(13,1,7,3,16777227,'2022-10-26 06:53:22',NULL,517,1),(15,1,9,3,16777227,'2022-10-26 06:53:29',NULL,517,2),(17,1,10,3,16777227,'2022-10-26 06:53:35',NULL,517,3),(24,1,17,2,16777235,'2022-10-26 06:53:52',NULL,1048585,1),(31,1,3,3,16777259,'2022-10-26 06:55:16',NULL,1048585,1),(32,1,4,3,16777259,'2022-10-26 06:55:16',NULL,1048585,1),(33,1,5,3,16777259,'2022-10-26 06:55:16',NULL,1048585,1),(34,1,12,3,16777259,'2022-10-26 06:55:16',NULL,1048585,1),(35,1,14,3,16777259,'2022-10-26 06:55:17',NULL,1048585,1),(36,1,16,3,16777259,'2022-10-26 06:55:17',NULL,1048585,1),(37,1,17,3,16777259,'2022-10-26 06:55:17',NULL,1048585,1),(40,1,3,2,16777217,'2022-10-26 06:56:32',NULL,1048585,2),(41,1,4,2,16777217,'2022-10-26 06:56:32',NULL,1048585,2),(42,1,5,2,16777217,'2022-10-26 06:56:32',NULL,1048585,2),(43,1,0,2,16777243,'2022-10-26 06:56:32',NULL,1048585,2),(44,1,0,2,16777245,'2022-10-26 06:56:32',NULL,1048585,2),(45,1,0,2,16777236,'2022-10-26 06:56:42','2022-10-26 06:56:46',523,2),(46,1,18,2,16777231,'2022-10-26 06:56:43',NULL,1048585,2),(48,1,3,3,16777249,'2022-10-26 06:57:05',NULL,1048586,1),(49,1,4,3,16777249,'2022-10-26 06:57:05',NULL,1048586,1),(50,1,5,3,16777249,'2022-10-26 06:57:05',NULL,1048586,1),(51,1,3,2,16777217,'2022-10-26 06:57:32',NULL,1048585,3),(52,1,4,2,16777217,'2022-10-26 06:57:32',NULL,1048585,3),(53,1,5,2,16777217,'2022-10-26 06:57:32',NULL,1048585,3),(54,1,0,2,16777243,'2022-10-26 06:57:32',NULL,1048585,3),(55,1,0,2,16777245,'2022-10-26 06:57:32',NULL,1048585,3),(56,1,0,2,16777236,'2022-10-26 06:57:43','2022-10-26 06:57:47',523,3),(58,1,9,3,16777227,'2022-10-26 06:57:53',NULL,517,4),(60,1,10,3,16777227,'2022-10-26 06:58:00',NULL,517,5),(62,1,19,2,16777230,'2022-10-26 06:58:05',NULL,1048585,3),(63,1,3,2,16777251,'2022-10-26 06:58:05','2022-10-26 06:58:08',1048585,3),(64,1,4,2,16777251,'2022-10-26 06:58:05',NULL,1048585,3),(65,1,5,2,16777251,'2022-10-26 06:58:05',NULL,1048585,3),(68,1,3,2,16777217,'2022-10-26 06:58:32',NULL,1048585,4),(69,1,4,2,16777217,'2022-10-26 06:58:32',NULL,1048585,4),(70,1,5,2,16777217,'2022-10-26 06:58:32',NULL,1048585,4),(71,1,0,2,16777243,'2022-10-26 06:58:33',NULL,1048585,4),(72,1,0,2,16777245,'2022-10-26 06:58:33',NULL,1048585,4),(73,1,3,2,16777217,'2022-10-26 06:58:49',NULL,1048585,5),(74,1,4,2,16777217,'2022-10-26 06:58:49',NULL,1048585,5),(75,1,5,2,16777217,'2022-10-26 06:58:49',NULL,1048585,5),(76,1,0,2,16777243,'2022-10-26 06:58:49',NULL,1048585,5),(77,1,0,2,16777245,'2022-10-26 06:58:49',NULL,1048585,5),(78,1,0,2,16777236,'2022-10-26 06:59:00','2022-10-26 06:59:03',523,4),(80,1,8,3,16777227,'2022-10-26 06:59:09',NULL,517,6),(82,1,10,3,16777227,'2022-10-26 06:59:16',NULL,517,7),(89,1,21,2,16777235,'2022-10-26 06:59:34',NULL,1048585,5),(90,1,3,2,16777254,'2022-10-26 06:59:34','2022-10-26 06:59:37',1048585,5),(91,1,4,2,16777254,'2022-10-26 06:59:34',NULL,1048585,5),(92,1,5,2,16777254,'2022-10-26 06:59:34',NULL,1048585,5),(95,1,3,2,16777217,'2022-10-26 07:00:04',NULL,1048585,6),(96,1,4,2,16777217,'2022-10-26 07:00:04',NULL,1048585,6),(97,1,5,2,16777217,'2022-10-26 07:00:04',NULL,1048585,6),(98,1,0,2,16777243,'2022-10-26 07:00:04',NULL,1048585,6),(99,1,0,2,16777245,'2022-10-26 07:00:04',NULL,1048585,6),(100,1,0,2,16777236,'2022-10-26 07:00:15','2022-10-26 07:00:19',523,5),(102,1,7,3,16777227,'2022-10-26 07:00:24',NULL,517,8),(104,1,10,3,16777227,'2022-10-26 07:00:32',NULL,517,9),(111,1,22,2,16777235,'2022-10-26 07:00:50',NULL,1048585,6),(112,1,3,2,16777254,'2022-10-26 07:00:50','2022-10-26 07:00:53',1048585,6),(113,1,4,2,16777254,'2022-10-26 07:00:50',NULL,1048585,6),(114,1,5,2,16777254,'2022-10-26 07:00:50',NULL,1048585,6),(116,1,3,2,16777217,'2022-10-26 07:01:15',NULL,1048585,7),(117,1,4,2,16777217,'2022-10-26 07:01:15',NULL,1048585,7),(118,1,5,2,16777217,'2022-10-26 07:01:15',NULL,1048585,7),(119,1,0,2,16777243,'2022-10-26 07:01:15',NULL,1048585,7),(120,1,0,2,16777245,'2022-10-26 07:01:15',NULL,1048585,7),(121,1,0,2,16777236,'2022-10-26 07:01:26','2022-10-26 07:01:30',523,6),(122,1,23,2,16777231,'2022-10-26 07:01:26',NULL,1048585,7),(125,1,9,3,16777227,'2022-10-26 07:01:42',NULL,517,11),(127,1,10,3,16777227,'2022-10-26 07:01:49',NULL,517,12),(129,1,3,2,16777219,'2022-10-26 07:02:00',NULL,517,10),(130,1,4,2,16777219,'2022-10-26 07:02:00',NULL,517,10),(131,1,5,2,16777219,'2022-10-26 07:02:00',NULL,517,10),(133,1,3,2,16777217,'2022-10-26 07:02:21',NULL,1048585,8),(134,1,4,2,16777217,'2022-10-26 07:02:21',NULL,1048585,8),(135,1,5,2,16777217,'2022-10-26 07:02:21',NULL,1048585,8),(136,1,0,2,16777243,'2022-10-26 07:02:21',NULL,1048585,8),(137,1,0,2,16777245,'2022-10-26 07:02:21',NULL,1048585,8),(138,1,3,2,16777217,'2022-10-26 07:02:37',NULL,1048585,9),(139,1,6,2,16777217,'2022-10-26 07:02:37',NULL,1048585,9),(140,1,0,2,16777243,'2022-10-26 07:02:37',NULL,1048585,9),(141,1,0,2,16777245,'2022-10-26 07:02:37',NULL,1048585,9),(142,1,0,2,16777236,'2022-10-26 07:02:49','2022-10-26 07:02:53',523,7),(144,1,7,3,16777227,'2022-10-26 07:02:58',NULL,517,13),(146,1,10,3,16777227,'2022-10-26 07:03:05',NULL,517,14),(152,1,25,2,16777235,'2022-10-26 07:03:23',NULL,1048585,9),(153,1,3,2,16777254,'2022-10-26 07:03:24','2022-10-26 07:03:27',1048585,9),(154,1,6,2,16777254,'2022-10-26 07:03:24',NULL,1048585,9),(157,1,3,2,16777217,'2022-10-26 07:03:54',NULL,1048585,10),(158,1,4,2,16777217,'2022-10-26 07:03:54',NULL,1048585,10),(159,1,5,2,16777217,'2022-10-26 07:03:54',NULL,1048585,10),(160,1,0,2,16777243,'2022-10-26 07:03:54',NULL,1048585,10),(161,1,0,2,16777245,'2022-10-26 07:03:54',NULL,1048585,10),(162,1,0,2,16777236,'2022-10-26 07:04:06','2022-10-26 07:04:09',523,8),(163,1,26,2,16777231,'2022-10-26 07:04:06',NULL,1048585,10),(168,1,3,2,16777219,'2022-10-26 07:04:33',NULL,517,15),(169,1,4,2,16777219,'2022-10-26 07:04:33',NULL,517,15),(170,1,5,2,16777219,'2022-10-26 07:04:33',NULL,517,15),(171,1,3,2,16777219,'2022-10-26 07:04:45',NULL,517,16),(172,1,4,2,16777219,'2022-10-26 07:04:45',NULL,517,16),(173,1,5,2,16777219,'2022-10-26 07:04:45',NULL,517,16),(175,1,3,2,16777217,'2022-10-26 07:05:05',NULL,1048585,11),(176,1,4,2,16777217,'2022-10-26 07:05:05',NULL,1048585,11),(177,1,5,2,16777217,'2022-10-26 07:05:05',NULL,1048585,11),(178,1,0,2,16777243,'2022-10-26 07:05:05',NULL,1048585,11),(179,1,0,2,16777245,'2022-10-26 07:05:05',NULL,1048585,11),(180,1,3,2,16777217,'2022-10-26 07:05:22',NULL,1048585,12),(181,1,4,2,16777217,'2022-10-26 07:05:22',NULL,1048585,12),(182,1,5,2,16777217,'2022-10-26 07:05:22',NULL,1048585,12),(183,1,0,2,16777243,'2022-10-26 07:05:22',NULL,1048585,12),(184,1,0,2,16777245,'2022-10-26 07:05:22',NULL,1048585,12),(185,1,0,2,16777236,'2022-10-26 07:05:35','2022-10-26 07:05:38',523,9),(186,1,28,2,16777231,'2022-10-26 07:05:35',NULL,1048585,12),(187,1,7,3,16777227,'2022-10-26 07:05:44',NULL,517,17),(189,1,8,3,16777227,'2022-10-26 07:05:51',NULL,517,18),(191,1,3,2,16777217,'2022-10-26 07:06:10',NULL,1048585,13),(192,1,4,2,16777217,'2022-10-26 07:06:10',NULL,1048585,13),(193,1,5,2,16777217,'2022-10-26 07:06:10',NULL,1048585,13),(194,1,0,2,16777243,'2022-10-26 07:06:10',NULL,1048585,13),(195,1,0,2,16777245,'2022-10-26 07:06:10',NULL,1048585,13),(196,1,0,2,16777236,'2022-10-26 07:06:23','2022-10-26 07:06:27',523,10),(204,1,3,2,16777219,'2022-10-26 07:06:57',NULL,517,19),(205,1,4,2,16777219,'2022-10-26 07:06:57',NULL,517,19),(206,1,5,2,16777219,'2022-10-26 07:06:58',NULL,517,19),(207,1,3,2,16777219,'2022-10-26 07:07:09',NULL,517,20),(208,1,4,2,16777219,'2022-10-26 07:07:09',NULL,517,20),(209,1,5,2,16777219,'2022-10-26 07:07:09',NULL,517,20),(210,1,3,2,16777219,'2022-10-26 07:07:20',NULL,517,21),(211,1,4,2,16777219,'2022-10-26 07:07:21',NULL,517,21),(212,1,5,2,16777219,'2022-10-26 07:07:21',NULL,517,21),(213,1,29,3,16777232,'2022-10-26 07:07:41',NULL,1048585,13),(214,1,3,2,16777217,'2022-10-26 07:08:03',NULL,1048585,14),(215,1,4,2,16777217,'2022-10-26 07:08:03',NULL,1048585,14),(216,1,5,2,16777217,'2022-10-26 07:08:03',NULL,1048585,14),(217,1,0,2,16777243,'2022-10-26 07:08:03',NULL,1048585,14),(218,1,0,2,16777245,'2022-10-26 07:08:03',NULL,1048585,14),(219,1,3,2,16777217,'2022-10-26 07:08:19',NULL,1048585,15),(220,1,4,2,16777217,'2022-10-26 07:08:19',NULL,1048585,15),(221,1,5,2,16777217,'2022-10-26 07:08:19',NULL,1048585,15),(222,1,0,2,16777243,'2022-10-26 07:08:19',NULL,1048585,15),(223,1,0,2,16777245,'2022-10-26 07:08:19',NULL,1048585,15),(224,1,0,2,16777236,'2022-10-26 07:08:32','2022-10-26 07:08:36',523,11),(226,1,8,3,16777227,'2022-10-26 07:08:41',NULL,517,22),(228,1,9,3,16777227,'2022-10-26 07:08:48',NULL,517,23),(235,1,31,2,16777235,'2022-10-26 07:09:06',NULL,1048585,15),(236,1,3,2,16777254,'2022-10-26 07:09:06','2022-10-26 07:09:10',1048585,15),(237,1,4,2,16777254,'2022-10-26 07:09:06',NULL,1048585,15),(238,1,5,2,16777254,'2022-10-26 07:09:06',NULL,1048585,15),(240,1,3,2,16777217,'2022-10-26 07:09:31',NULL,1048585,16),(241,1,4,2,16777217,'2022-10-26 07:09:31',NULL,1048585,16),(242,1,5,2,16777217,'2022-10-26 07:09:31',NULL,1048585,16),(243,1,0,2,16777243,'2022-10-26 07:09:31',NULL,1048585,16),(244,1,0,2,16777245,'2022-10-26 07:09:31',NULL,1048585,16),(245,1,3,2,16777217,'2022-10-26 07:09:49',NULL,1048585,17),(246,1,4,2,16777217,'2022-10-26 07:09:49',NULL,1048585,17),(247,1,5,2,16777217,'2022-10-26 07:09:49',NULL,1048585,17),(248,1,0,2,16777243,'2022-10-26 07:09:49',NULL,1048585,17),(249,1,0,2,16777245,'2022-10-26 07:09:49',NULL,1048585,17),(250,1,0,2,16777236,'2022-10-26 07:10:03','2022-10-26 07:10:06',523,12),(252,1,7,3,16777227,'2022-10-26 07:10:11',NULL,517,24),(254,1,8,3,16777227,'2022-10-26 07:10:18',NULL,517,25),(261,1,33,2,16777235,'2022-10-26 07:10:36',NULL,1048585,17),(267,1,3,2,16777217,'2022-10-26 07:12:44',NULL,1048585,18),(268,1,4,2,16777217,'2022-10-26 07:12:44',NULL,1048585,18),(269,1,5,2,16777217,'2022-10-26 07:12:44',NULL,1048585,18),(270,1,0,2,16777243,'2022-10-26 07:12:44',NULL,1048585,18),(271,1,0,2,16777245,'2022-10-26 07:12:44',NULL,1048585,18),(272,1,34,2,16777234,'2022-10-26 07:12:58',NULL,1048585,18),(273,1,3,2,16777217,'2022-10-26 07:13:17',NULL,1048585,19),(274,1,6,2,16777217,'2022-10-26 07:13:17',NULL,1048585,19),(275,1,0,2,16777243,'2022-10-26 07:13:17',NULL,1048585,19),(276,1,0,2,16777245,'2022-10-26 07:13:17',NULL,1048585,19),(277,1,0,2,16777236,'2022-10-26 07:13:31','2022-10-26 07:13:34',523,13),(279,1,8,3,16777227,'2022-10-26 07:13:40',NULL,517,26),(281,1,9,3,16777227,'2022-10-26 07:13:47',NULL,517,27),(283,1,35,2,16777230,'2022-10-26 07:13:52',NULL,1048585,19),(284,1,3,2,16777251,'2022-10-26 07:13:52','2022-10-26 07:13:56',1048585,19),(285,1,6,2,16777251,'2022-10-26 07:13:52',NULL,1048585,19);
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oai_resumption_tokens`
--

DROP TABLE IF EXISTS `oai_resumption_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oai_resumption_tokens` (
  `token` varchar(32) NOT NULL,
  `expire` bigint(20) NOT NULL,
  `record_offset` int(11) NOT NULL,
  `params` text,
  UNIQUE KEY `oai_resumption_tokens_pkey` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oai_resumption_tokens`
--

LOCK TABLES `oai_resumption_tokens` WRITE;
/*!40000 ALTER TABLE `oai_resumption_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oai_resumption_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_settings`
--

DROP TABLE IF EXISTS `plugin_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_settings` (
  `plugin_name` varchar(80) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `setting_name` varchar(80) NOT NULL,
  `setting_value` mediumtext,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)',
  UNIQUE KEY `plugin_settings_pkey` (`plugin_name`,`context_id`,`setting_name`),
  KEY `plugin_settings_plugin_name` (`plugin_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_settings`
--

LOCK TABLES `plugin_settings` WRITE;
/*!40000 ALTER TABLE `plugin_settings` DISABLE KEYS */;
INSERT INTO `plugin_settings` VALUES ('acronplugin',0,'crontab','[{\"className\":\"PKP\\\\task\\\\ReviewReminder\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"PKP\\\\task\\\\StatisticsReport\",\"frequency\":{\"day\":\"1\"},\"args\":[]},{\"className\":\"APP\\\\tasks\\\\SubscriptionExpiryReminder\",\"frequency\":{\"day\":\"1\"},\"args\":[]},{\"className\":\"PKP\\\\task\\\\DepositDois\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"PKP\\\\task\\\\RemoveUnvalidatedExpiredUsers\",\"frequency\":{\"day\":\"1\"},\"args\":[]},{\"className\":\"PKP\\\\task\\\\EditorialReminders\",\"frequency\":{\"day\":\"1\"},\"args\":[]},{\"className\":\"PKP\\\\task\\\\UpdateIPGeoDB\",\"frequency\":{\"day\":\"10\"},\"args\":[]},{\"className\":\"APP\\\\tasks\\\\UsageStatsLoader\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"PKP\\\\task\\\\ProcessQueueJobs\",\"frequency\":{\"hour\":24},\"args\":[]}]','object'),('acronplugin',0,'enabled','1','bool'),('defaultthemeplugin',0,'enabled','1','bool'),('defaultthemeplugin',1,'baseColour','#1E6292','string'),('defaultthemeplugin',1,'displayStats','none','string'),('defaultthemeplugin',1,'enabled','1','bool'),('defaultthemeplugin',1,'showDescriptionInJournalIndex','false','string'),('defaultthemeplugin',1,'typography','notoSans','string'),('defaultthemeplugin',1,'useHomepageImageAsHeader','false','string'),('developedbyblockplugin',0,'enabled','0','bool'),('developedbyblockplugin',0,'seq','0','int'),('developedbyblockplugin',1,'enabled','0','bool'),('developedbyblockplugin',1,'seq','0','int'),('dublincoremetaplugin',1,'enabled','1','bool'),('googlescholarplugin',1,'enabled','1','bool'),('htmlarticlegalleyplugin',1,'enabled','1','bool'),('informationblockplugin',1,'enabled','1','bool'),('informationblockplugin',1,'seq','7','int'),('languagetoggleblockplugin',0,'enabled','1','bool'),('languagetoggleblockplugin',0,'seq','4','int'),('languagetoggleblockplugin',1,'enabled','1','bool'),('languagetoggleblockplugin',1,'seq','4','int'),('lensgalleyplugin',1,'enabled','1','bool'),('pdfjsviewerplugin',1,'enabled','1','bool'),('resolverplugin',1,'enabled','1','bool'),('subscriptionblockplugin',1,'enabled','1','bool'),('subscriptionblockplugin',1,'seq','2','int'),('tinymceplugin',0,'enabled','1','bool'),('tinymceplugin',1,'enabled','1','bool'),('usageeventplugin',0,'enabled','1','bool'),('usageeventplugin',0,'uniqueSiteId','','string'),('webfeedplugin',1,'displayItems','1','bool'),('webfeedplugin',1,'displayPage','homepage','string'),('webfeedplugin',1,'enabled','1','bool');
/*!40000 ALTER TABLE `plugin_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_categories`
--

DROP TABLE IF EXISTS `publication_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_categories` (
  `publication_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  UNIQUE KEY `publication_categories_id` (`publication_id`,`category_id`),
  KEY `publication_categories_publication_id` (`publication_id`),
  KEY `publication_categories_category_id` (`category_id`),
  CONSTRAINT `publication_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE,
  CONSTRAINT `publication_categories_publication_id_foreign` FOREIGN KEY (`publication_id`) REFERENCES `publications` (`publication_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_categories`
--

LOCK TABLES `publication_categories` WRITE;
/*!40000 ALTER TABLE `publication_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_galley_settings`
--

DROP TABLE IF EXISTS `publication_galley_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_galley_settings` (
  `galley_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  UNIQUE KEY `publication_galley_settings_pkey` (`galley_id`,`locale`,`setting_name`),
  KEY `publication_galley_settings_galley_id` (`galley_id`),
  KEY `publication_galley_settings_name_value` (`setting_name`(50),`setting_value`(150)),
  CONSTRAINT `publication_galley_settings_galley_id` FOREIGN KEY (`galley_id`) REFERENCES `publication_galleys` (`galley_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_galley_settings`
--

LOCK TABLES `publication_galley_settings` WRITE;
/*!40000 ALTER TABLE `publication_galley_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_galley_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_galleys`
--

DROP TABLE IF EXISTS `publication_galleys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_galleys` (
  `galley_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `locale` varchar(14) DEFAULT NULL,
  `publication_id` bigint(20) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `submission_file_id` bigint(20) unsigned DEFAULT NULL,
  `seq` double(8,2) NOT NULL DEFAULT '0.00',
  `remote_url` varchar(2047) DEFAULT NULL,
  `is_approved` smallint(6) NOT NULL DEFAULT '0',
  `url_path` varchar(64) DEFAULT NULL,
  `doi_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`galley_id`),
  KEY `publication_galleys_publication_id` (`publication_id`),
  KEY `publication_galleys_submission_file_id` (`submission_file_id`),
  KEY `publication_galleys_doi_id` (`doi_id`),
  KEY `publication_galleys_url_path` (`url_path`),
  CONSTRAINT `publication_galleys_doi_id_foreign` FOREIGN KEY (`doi_id`) REFERENCES `dois` (`doi_id`) ON DELETE SET NULL,
  CONSTRAINT `publication_galleys_publication_id` FOREIGN KEY (`publication_id`) REFERENCES `publications` (`publication_id`) ON DELETE CASCADE,
  CONSTRAINT `publication_galleys_submission_file_id_foreign` FOREIGN KEY (`submission_file_id`) REFERENCES `submission_files` (`submission_file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_galleys`
--

LOCK TABLES `publication_galleys` WRITE;
/*!40000 ALTER TABLE `publication_galleys` DISABLE KEYS */;
INSERT INTO `publication_galleys` VALUES (1,'en_US',1,'PDF',3,0.00,'',0,'',NULL),(2,'en_US',2,'PDF Version 2',3,0.00,'',0,'pdf',NULL),(3,'en_US',18,'PDF',31,0.00,'',0,'',NULL);
/*!40000 ALTER TABLE `publication_galleys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_settings`
--

DROP TABLE IF EXISTS `publication_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_settings` (
  `publication_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  UNIQUE KEY `publication_settings_pkey` (`publication_id`,`locale`,`setting_name`),
  KEY `publication_settings_name_value` (`setting_name`(50),`setting_value`(150)),
  KEY `publication_settings_publication_id` (`publication_id`),
  CONSTRAINT `publication_settings_publication_id` FOREIGN KEY (`publication_id`) REFERENCES `publications` (`publication_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_settings`
--

LOCK TABLES `publication_settings` WRITE;
/*!40000 ALTER TABLE `publication_settings` DISABLE KEYS */;
INSERT INTO `publication_settings` VALUES (1,'','categoryIds','[]'),(1,'','copyrightYear','2022'),(1,'','issueId','1'),(1,'','pages','71-98'),(1,'en_US','abstract','<p>The signaling theory suggests that dividends signal future prospects of a firm. However, recent empirical evidence from the US and the Uk does not offer a conclusive evidence on this issue. There are conflicting policy implications among financial economists so much that there is no practical dividend policy guidance to management, existing and potential investors in shareholding. Since corporate investment, financing and distribution decisions are a continuous function of management, the dividend decisions seem to rely on intuitive evaluation.</p>'),(1,'en_US','copyrightHolder','Journal of Public Knowledge'),(1,'en_US','coverImage','[]'),(1,'en_US','prefix','The'),(1,'en_US','subtitle','A Review Of The Literature And Empirical Evidence'),(1,'en_US','title','Signalling Theory Dividends'),(1,'fr_CA','copyrightHolder','Journal de la connaissance du public'),(1,'fr_CA','coverImage','[]'),(2,'','categoryIds','[]'),(2,'','copyrightYear','2022'),(2,'','issueId','1'),(2,'','pages','71-98'),(2,'en_US','abstract','<p>The signaling theory suggests that dividends signal future prospects of a firm. However, recent empirical evidence from the US and the Uk does not offer a conclusive evidence on this issue. There are conflicting policy implications among financial economists so much that there is no practical dividend policy guidance to management, existing and potential investors in shareholding. Since corporate investment, financing and distribution decisions are a continuous function of management, the dividend decisions seem to rely on intuitive evaluation.</p>'),(2,'en_US','copyrightHolder','Journal of Public Knowledge'),(2,'en_US','coverImage','[]'),(2,'en_US','prefix','The'),(2,'en_US','subtitle','A Review Of The Literature And Empirical Evidence'),(2,'en_US','title','Signalling Theory Dividends Version 2'),(2,'fr_CA','copyrightHolder','Journal de la connaissance du public'),(2,'fr_CA','coverImage','[]'),(3,'','categoryIds','[]'),(3,'en_US','abstract','<p>The effects of pressed beet pulp silage (PBPS) replacing barley for 10% and 20% (DM basis) were studied on heavy pigs fed dairy whey-diluted diets. 60 Hypor pigs (average initial weight of 28 kg), 30 barrows and 30 gilts, were homogeneously allocated to three exper- imental groups: T1 (control) in which pigs were fed a traditional sweet whey- diluted diet (the ratio between whey and dry matter was 4.5/1); T2 in which PBPS replaced barley for 10% (DM basis) during a first period (from the beginning to the 133rd day of trial) and thereafter for 20% (DM basis); T3 in which PBPS replaced barley for 20% (DM basis) throughout the experimental period. In diets T2 and T3 feed was dairy whey-diluted as in group T1. No significant (P&gt;0.05) differences were observed concerning growth parameters (ADG and FCR). Pigs on diets contain- ing PBPS showed significantly higher (P&lt;0.05) percentages of lean cuts and lower percentages of fat cuts. On the whole, ham weight losses during seasoning were moderate but significantly (P&lt;0.05) more marked for PBPS-fed pigs as a prob- able consequence of their lower adiposity degree. Fatty acid composition of ham fat was unaffected by diets. With regard to m. Semimembranosus colour, pigs receiving PBPS showed lower (P&lt;0.05) \"L\", \"a\" and \"Chroma\" values. From an economical point of view it can be concluded that the use of PBPS (partially replacing barley) and dairy whey in heavy pig production could be of particular interest in areas where both these by products are readily available.</p>'),(3,'en_US','prefix',''),(3,'en_US','subtitle',''),(3,'en_US','title','The influence of lactation on the quantity and quality of cashmere production'),(3,'fr_CA','abstract',''),(3,'fr_CA','prefix',''),(3,'fr_CA','subtitle',''),(3,'fr_CA','title',''),(4,'','categoryIds','[]'),(4,'en_US','abstract','<p>Archival data from an attitude survey of employees in a single multinational organization were used to examine the degree to which national culture affects the nature of job satisfaction. Responses from nine countries were compiled to create a benchmark against which nations could be individually compared. Factor analysis revealed four factors: Organizational Communication, Organizational Efficiency/Effectiveness, Organizational Support, and Personal Benefit. Comparisons of factor structures indicated that Organizational Communication exhibited the most construct equivalence, and Personal Benefit the least. The most satisfied employees were those from China, and the least satisfied from Brazil, consistent with previous findings that individuals in collectivistic nations report higher satisfaction. The research findings suggest that national cultural context exerts an effect on the nature of job satisfaction.</p>'),(4,'en_US','prefix',''),(4,'en_US','subtitle',''),(4,'en_US','title','The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence'),(4,'fr_CA','abstract',''),(4,'fr_CA','prefix',''),(4,'fr_CA','subtitle',''),(4,'fr_CA','title',''),(5,'','categoryIds','[]'),(5,'en_US','abstract','<p>The integration of technology into the classroom is a major issue in education today. Many national and provincial initiatives specify the technology skills that students must demonstrate at each grade level. The Government of the Province of Alberta in Canada, has mandated the implementation of a new curriculum which began in September of 2000, called Information and Communication Technology. This curriculum is infused within core courses and specifies what students are “expected to know, be able to do, and be like with respect to technology” (Alberta Learning, 2000). Since teachers are required to implement this new curriculum, school jurisdictions are turning to professional development strategies and hiring standards to upgrade teachers’ computer skills to meet this goal. This paper summarizes the results of a telephone survey administered to all public school jurisdictions in the Province of Alberta with a 100% response rate. We examined the computer skills that school jurisdictions require of newly hired teachers, and the support strategies employed for currently employed teachers.</p>'),(5,'en_US','prefix',''),(5,'en_US','subtitle',''),(5,'en_US','title','Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice'),(5,'fr_CA','abstract',''),(5,'fr_CA','prefix',''),(5,'fr_CA','subtitle',''),(5,'fr_CA','title',''),(6,'','categoryIds','[]'),(6,'en_US','abstract','<p>In this review, the recent progress on genetic transformation of forest trees were discussed. Its described also, different applications of genetic engineering for improving forest trees or understanding the mechanisms governing genes expression in woody plants.</p>'),(6,'en_US','prefix',''),(6,'en_US','subtitle',''),(6,'en_US','title','Genetic transformation of forest trees'),(6,'fr_CA','abstract',''),(6,'fr_CA','prefix',''),(6,'fr_CA','subtitle',''),(6,'fr_CA','title',''),(7,'','categoryIds','[]'),(7,'en_US','abstract','<p>Robert Fogelin claims that interlocutors must share a framework of background beliefs and commitments in order to fruitfully pursue argument. I refute Fogelin’s claim by investigating more thoroughly the shared background required for productive argument. I find that this background consists not in any common beliefs regarding the topic at hand, but rather in certain shared pro-cedural commitments and competencies. I suggest that Fogelin and his supporters mistakenly view shared beliefs as part of the required background for productive argument because these procedural com-mitments become more difficult to uphold when people’s beliefs diverge widely regarding the topic at hand.</p>'),(7,'en_US','prefix',''),(7,'en_US','subtitle',''),(7,'en_US','title','Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement'),(7,'fr_CA','abstract',''),(7,'fr_CA','prefix',''),(7,'fr_CA','subtitle',''),(7,'fr_CA','title',''),(8,'','categoryIds','[]'),(8,'en_US','abstract','<p>A major goal of education is to equip children with the knowledge, skills and self-belief to be confident and informed citizens - citizens who continue to see themselves as learners beyond graduation. This paper looks at the key role of nurturing efficacy beliefs in order to learn and participate in school and society. Research findings conducted within a social studies context are presented, showing how strategy instruction can enhance self-efficacy for learning. As part of this research, Creative Problem Solving (CPS) was taught to children as a means to motivate and support learning. It is shown that the use of CPS can have positive effects on self-efficacy for learning, and be a valuable framework to involve children in decision-making that leads to social action. Implications for enhancing self-efficacy and motivation to learn in the classroom are discussed.</p>'),(8,'en_US','prefix',''),(8,'en_US','subtitle',''),(8,'en_US','title','Developing efficacy beliefs in the classroom'),(8,'fr_CA','abstract',''),(8,'fr_CA','prefix',''),(8,'fr_CA','subtitle',''),(8,'fr_CA','title',''),(9,'','categoryIds','[]'),(9,'en_US','abstract','<p>The study of the commons has expe- rienced substantial growth and development over the past decades.1 Distinguished scholars in many disciplines had long studied how specific resources were managed or mismanaged at particular times and places (Coward 1980; De los Reyes 1980; MacKenzie 1979; Wittfogel 1957), but researchers who studied specific commons before the mid-1980s were, however, less likely than their contemporary colleagues to be well informed about the work of scholars in other disciplines, about other sec- tors in their own region of interest, or in other regions of the world.</p>'),(9,'en_US','prefix',''),(9,'en_US','subtitle',''),(9,'en_US','title','Traditions and Trends in the Study of the Commons'),(9,'fr_CA','abstract',''),(9,'fr_CA','prefix',''),(9,'fr_CA','subtitle',''),(9,'fr_CA','title',''),(10,'','categoryIds','[]'),(10,'en_US','abstract','<p>None.</p>'),(10,'en_US','prefix',''),(10,'en_US','subtitle',''),(10,'en_US','title','Hansen & Pinto: Reason Reclaimed'),(10,'fr_CA','abstract',''),(10,'fr_CA','prefix',''),(10,'fr_CA','subtitle',''),(10,'fr_CA','title',''),(11,'','categoryIds','[]'),(11,'en_US','abstract','<p>The Texas Water Availability Modeling System is routinely applied in administration of the water rights permit system, regional and statewide planning, and an expanding variety of other endeavors. Modeling water management in the 23 river basins of the state reflects about 8,000 water right permits and 3,400 reservoirs. Datasets are necessarily large and complex to provide the decision-support capabilities for which the modeling system was developed. New modeling features are being added, and the different types of applications are growing. Certain applications are enhanced by simplifying the simulation input datasets to focus on particular water management systems. A methodology is presented for developing a condensed dataset for a selected reservoir system that reflects the impacts of all the water rights and accompanying reservoirs removed from the original complete dataset. A set of streamflows is developed that represents flows available to the selected system considering the effects of all the other water rights in the river basin contained in the original complete model input dataset that are not included in the condensed dataset. The methodology is applied to develop a condensed model of the Brazos River Authority reservoir system based on modifying the Texas Water Availability Modeling System dataset for the Brazos River Basin.</p>'),(11,'en_US','prefix',''),(11,'en_US','subtitle',''),(11,'en_US','title','Condensing Water Availability Models to Focus on Specific Water Management Systems'),(11,'fr_CA','abstract',''),(11,'fr_CA','prefix',''),(11,'fr_CA','subtitle',''),(11,'fr_CA','title',''),(12,'','categoryIds','[]'),(12,'en_US','abstract','<p>Environmental sustainability and sustainable development principles are vital topics that engineering education has largely failed to address. Service-learning, which integrates social service into an academic setting, is an emerging tool that can be leveraged to teach sustainable design to future engineers. We present a model of using service-learning to teach sustainable design based on the experiences of the Stanford chapter of Engineers for a Sustainable World. The model involves the identification of projects and partner organizations, a student led, project-based design course, and internships coordinated with partner organizations. The model has been very successful, although limitations and challenges exist. These are discussed along with future directions for expanding the model.</p>'),(12,'en_US','prefix',''),(12,'en_US','subtitle',''),(12,'en_US','title','Learning Sustainable Design through Service'),(12,'fr_CA','abstract',''),(12,'fr_CA','prefix',''),(12,'fr_CA','subtitle',''),(12,'fr_CA','title',''),(13,'','categoryIds','[]'),(13,'en_US','abstract','<p>The aim of this study was to assess the influence of long-term fat supplementation on the fatty acid profile of heavy pig adipose tissue. Fifty-four Large White barrows, averaging 25 kg LW, were randomized (matched weights) to one of three isoenergetic diets supplemented with either tallow (TA), maize oil (MO), or rapeseed oil (RO). The fats were supplement- ed at 3% as fed from 25 to 110 kg LW, and at 2.5 % from 110 kg to slaughtering. Following slaughter at about 160 kg LW, backfat samples were collected from ten animals per treatment and analyzed. Fatty acid composition of backfat close- ly reflected the fatty acid composition of the supplemented fats. The backfat of pigs fed TA had the highest saturated fatty acid content (SFA) (P&lt;0.01); those fed MO had the highest content in polyunsaturated fatty acid (PUFA) and the lowest in monounsaturated fatty acid (MUFA) content; those fed RO had the highest content of linolenic acid (C18:3) and cis 11- ecosenoic acid (C20:1). Only MO treatment had an effect on linoleic acid levels and the iodine value (IV) of backfat, result- ing in levels higher than those (IV = 70; C18:2 = 15%) accepted by the Parma Consortium for dry-cured ham. The IV and unsaturation index in both layers of subcutaneous backfat tissue differed significantly between treatments. These results show that long-term dietary supplementation with different fats changes the fatty acid profile of heavy pig adipose tissue. Supplementation with rapeseed oil increases the proportion of “healthy” fatty acids in pig fat, thereby improving the nutritional quality, however the effects on the technological quality of the fat must be carefully assessed.</p>'),(13,'en_US','prefix',''),(13,'en_US','subtitle',''),(13,'en_US','title','Sodium butyrate improves growth performance of weaned piglets during the first period after weaning'),(13,'fr_CA','abstract',''),(13,'fr_CA','prefix',''),(13,'fr_CA','subtitle',''),(13,'fr_CA','title',''),(14,'','categoryIds','[]'),(14,'en_US','abstract','<p>The Edwards Aquifer serves as the primary water supply in South-Central Texas and is the source for several major springs. In developing a plan to protect endangered species immediately downstream of San Marcos Springs, questions have been raised regarding the established concept of a hydrologic divide between the San Antonio and Barton Springs segments of the Edwards Aquifer during drought conditions. To address these questions, a water-level data collection program and a hydrogeologic study was conducted. An analysis of groundwater-level data indicate that a groundwater divide exists in the vicinity of the surface drainage divide between Onion Creek and Blanco River during wet and normal hydrologic conditions. However, analysis of data collected during the 2009 drought suggests that the groundwater divide dissipated and no longer hydrologically separated the two segments. As a result, there is potential for groundwater to flow past San Marcos Springs toward Barton Springs during major droughts. The implications for this have bearings on the management and availability of groundwater in the Edwards Aquifer. Assessments of simulations from a numerical model suggest 5 cfs could be flowing past San Marcos toward Barton springs under drought conditions. The groundwater divide appears to be influenced by recharge along Onion Creek and Blanco River and appears to be vulnerable to extended periods of little or no recharge and extensive pumping in the vicinity of Kyle and Buda. The 2009 data set shows a very low gradient in the potentiometric surface between San Marcos Springs and Kyle with very little variation in levels between drought and non-drought periods. From Kyle toward Barton Springs, the potentiometric surface slopes significantly to the north and has dramatic changes in levels between drought and non-drought periods. The source and nature of the discontinuity of the change in potentiometric gradients and dynamic water level response at Kyle is unknown. Structural influences or hydraulic properties inherent in the aquifer could be the cause of this discontinuity and may also influence the degree of hydrologic connection between San Marcos and Barton Springs. Rapid population growth and increased water demands in the Kyle and Buda areas necessitates a continual groundwater level monitoring program between San Marcos Springs and Buda to provide data for future hydrogeologic and trend analyses.</p>'),(14,'en_US','prefix',''),(14,'en_US','subtitle',''),(14,'en_US','title','Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions'),(14,'fr_CA','abstract',''),(14,'fr_CA','prefix',''),(14,'fr_CA','subtitle',''),(14,'fr_CA','title',''),(15,'','categoryIds','[]'),(15,'en_US','abstract','<p>One of the challenges still to be met in the 21st century is that of genuinely embracing diversity. How can education help to overcome the barriers that continue to exist between people on the basis of language, culture and gender? This case study takes the Atlantic Coast of Nicaragua as an example of a multilingual/multiethnic region and examines how the community university URACCAN is contributing to the development of interculturality. It describes participatory research that was carried out with university staff and students with the intention of defining an intercultural curriculum and appropriate strategies for delivering such. One model used as a basis for discussions was the Model for Community Understanding from the Wales Curriculum Council, which emphasises the belonging of the individual to different communities or cultures at the same time. Factors supporting the development of an intercultural curriculum include the university’s close involvement with the ethnic communities it serves. However, ethno-linguistic power relations within the region and the country as a whole, still militate against egalitarianism within the university. The research highlights the importance of participatory pedagogy as the basis for promoting interculturality and achieving lasting social transformation.</p>'),(15,'en_US','prefix',''),(15,'en_US','subtitle',''),(15,'en_US','title','Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua'),(15,'fr_CA','abstract',''),(15,'fr_CA','prefix',''),(15,'fr_CA','subtitle',''),(15,'fr_CA','title',''),(16,'','categoryIds','[]'),(16,'en_US','abstract','<p>This review presents different diseases associated with yam and the management strategies employed in combating its menace in Nigeria. The field and storage diseases are presented, anthracnose is regarded as the most widely spread of all the field diseases, while yam mosaic virus disease is considered to cause the most severe losses in yams. Dry rot is considered as the most devastating of all the storage diseases of yam. Dry rot of yams alone causes a marked reduction in the quantity, marketable value and edible portions of tubers and those reductions are more severe in stored yams. The management strategies adopted and advocated for combating the field diseases includes the use of crop rotation, fallowing, planting of healthy material, the destruction of infected crop cultivars and the use of resistant cultivars. With regards to the storage diseases, the use of Tecto (Thiabendazole), locally made dry gins or wood ash before storage has been found to protect yam tubers against fungal infection in storage. Finally, processing of yam tubers into chips or cubes increases its shelf live for a period of between 6 months and one year.</p>'),(16,'en_US','prefix',''),(16,'en_US','subtitle',''),(16,'en_US','title','Yam diseases and its management in Nigeria'),(16,'fr_CA','abstract',''),(16,'fr_CA','prefix',''),(16,'fr_CA','subtitle',''),(16,'fr_CA','title',''),(17,'','categoryIds','[]'),(17,'en_US','abstract','<p>Aim of this research is to provide a general situation of cattle slaughtered in Cameroon, as a representative example for the Central African Sub-region. The quality and safety of beef from the abattoir of Yaoundé, the largest in Cameroon, were considered. From January 2009 to March 2012, the pre-slaughter conditions and characteristics of 1953 cattle carcasses were recorded, as well as the pH of m. longissimus thoracis 24 h after slaughter. From these carcasses, 60 were selected to represent the bulls slaughtered. The quality parameters and composition of m. longissimus thoracis were carried out. The origin of most of the cattle was the Guinea High Savannah (74.6%), and transhumance was the common production system (75.5%). Gudali (45.6%), White Fulani (33.3%) and Red Mbororo (20.3%) breeds were predominant. Carcass weight was affected by rearing system and cattle category, and it markedly varied during year. Considering meat quality, the fat content was low (1.2%) and similar between breeds, moreover Gudali showed the toughest meat. Of the cows slaughtered, 27% were pregnant and the most common abnormal conditions encountered were ectoparasites, fatigue, lameness, fungal-like skin lesions, enlarged lymph nodes, respiratory distress, nodular lesions. More than 20% of the carcasses had some organs condemned, mainly for liver flukes (5.17%), and 1.0% of them were completely condemned due to tuberculosis, that also affected 3.28% of lungs. These data could aid authorities draw up programmes with the aim to strengthen cattle production, improve beef supply, control and prevent the observed diseases, and promote the regional trade.</p>'),(17,'en_US','prefix',''),(17,'en_US','subtitle',''),(17,'en_US','title','Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat'),(17,'fr_CA','abstract',''),(17,'fr_CA','prefix',''),(17,'fr_CA','subtitle',''),(17,'fr_CA','title',''),(18,'','categoryIds','[]'),(18,'','copyrightYear','2022'),(18,'','issueId','1'),(18,'en_US','abstract','<p>The antimicrobial, heavy metal resistance patterns and plasmid profiles of Coliforms (Enterobacteriacea) isolated from nosocomial infections and healthy human faeces were compared. Fifteen of the 25 isolates from nosocomial infections were identified as Escherichia coli, and remaining as Kelebsiella pneumoniae. Seventy two percent of the strains isolated from nosocomial infections possess multiple resistance to antibiotics compared to 45% of strains from healthy human faeces. The difference between minimal inhibitory concentration (MIC) values of strains from clinical cases and from faeces for four heavy metals (Hg, Cu, Pb, Cd) was not significant. However most strains isolated from hospital were more tolerant to heavy metal than those from healthy persons. There was no consistent relationship between plasmid profile group and antimicrobial resistance pattern, although a conjugative plasmid (&gt;56.4 kb) encoding resistance to heavy metals and antibiotics was recovered from eight of the strains isolated from nosocomial infections. The results indicate multidrug-resistance coliforms as a potential cause of nosocomial infection in this region.</p>'),(18,'en_US','copyrightHolder','Journal of Public Knowledge'),(18,'en_US','prefix',''),(18,'en_US','subtitle',''),(18,'en_US','title','Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran'),(18,'fr_CA','abstract',''),(18,'fr_CA','copyrightHolder','Journal de la connaissance du public'),(18,'fr_CA','prefix',''),(18,'fr_CA','subtitle',''),(18,'fr_CA','title',''),(19,'','categoryIds','[]'),(19,'en_US','abstract','<p>We compare a setting where actors individually decide whom to sanction with a setting where sanctions are only implemented when actors collectively agree that a certain actor should be sanctioned. Collective sanctioning decisions are problematic due to the difficulty of reaching consensus. However, when a decision is made collectively, perverse sanctioning (e.g. punishing high contributors) by individual actors is ruled out. Therefore, collective sanctioning decisions are likely to be in the interest of the whole group.</p>'),(19,'en_US','prefix',''),(19,'en_US','subtitle',''),(19,'en_US','title','Self-Organization in Multi-Level Institutions in Networked Environments'),(19,'fr_CA','abstract',''),(19,'fr_CA','prefix',''),(19,'fr_CA','subtitle',''),(19,'fr_CA','title',''),(20,'','categoryIds','[]'),(20,'en_US','abstract','<p>None.</p>'),(20,'en_US','prefix',''),(20,'en_US','subtitle',''),(20,'en_US','title','Finocchiaro: Arguments About Arguments'),(20,'fr_CA','abstract',''),(20,'fr_CA','prefix',''),(20,'fr_CA','subtitle',''),(20,'fr_CA','title','');
/*!40000 ALTER TABLE `publication_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publications`
--

DROP TABLE IF EXISTS `publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publications` (
  `publication_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_status` bigint(20) DEFAULT '0',
  `date_published` date DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `primary_contact_id` bigint(20) DEFAULT NULL,
  `section_id` bigint(20) DEFAULT NULL,
  `seq` double(8,2) NOT NULL DEFAULT '0.00',
  `submission_id` bigint(20) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `url_path` varchar(64) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `doi_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`publication_id`),
  KEY `publications_user_id` (`primary_contact_id`),
  KEY `publications_section_id` (`section_id`),
  KEY `publications_submission_id` (`submission_id`),
  KEY `publications_doi_id` (`doi_id`),
  KEY `publications_url_path` (`url_path`),
  CONSTRAINT `publications_author_id` FOREIGN KEY (`primary_contact_id`) REFERENCES `authors` (`author_id`) ON DELETE SET NULL,
  CONSTRAINT `publications_doi_id_foreign` FOREIGN KEY (`doi_id`) REFERENCES `dois` (`doi_id`) ON DELETE SET NULL,
  CONSTRAINT `publications_section_id` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`) ON DELETE SET NULL,
  CONSTRAINT `publications_submission_id` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`submission_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications`
--

LOCK TABLES `publications` WRITE;
/*!40000 ALTER TABLE `publications` DISABLE KEYS */;
INSERT INTO `publications` VALUES (1,0,'2022-10-26','2022-10-26 06:55:11',1,1,0.00,1,3,'mwandenga-signalling-theory',1,NULL),(2,0,'2022-10-26','2022-10-26 06:55:53',3,1,0.00,1,1,'mwandenga',2,NULL),(3,0,NULL,'2022-10-26 06:56:53',5,1,0.00,2,1,NULL,1,NULL),(4,0,NULL,'2022-10-26 06:57:31',6,1,0.00,3,1,NULL,1,NULL),(5,0,NULL,'2022-10-26 06:58:31',7,1,0.00,4,1,NULL,1,NULL),(6,0,NULL,'2022-10-26 06:58:48',9,1,0.00,5,1,NULL,1,NULL),(7,0,NULL,'2022-10-26 07:00:03',10,1,0.00,6,1,NULL,1,NULL),(8,0,NULL,'2022-10-26 07:01:14',11,1,0.00,7,1,NULL,1,NULL),(9,0,NULL,'2022-10-26 07:02:20',12,1,0.00,8,1,NULL,1,NULL),(10,0,NULL,'2022-10-26 07:02:36',14,2,0.00,9,1,NULL,1,NULL),(11,0,NULL,'2022-10-26 07:03:53',15,1,0.00,10,1,NULL,1,NULL),(12,0,NULL,'2022-10-26 07:05:04',16,1,0.00,11,1,NULL,1,NULL),(13,0,NULL,'2022-10-26 07:05:21',18,1,0.00,12,1,NULL,1,NULL),(14,0,NULL,'2022-10-26 07:06:09',19,1,0.00,13,1,NULL,1,NULL),(15,0,NULL,'2022-10-26 07:08:02',20,1,0.00,14,1,NULL,1,NULL),(16,0,NULL,'2022-10-26 07:08:18',21,1,0.00,15,1,NULL,1,NULL),(17,0,NULL,'2022-10-26 07:09:30',22,1,0.00,16,1,NULL,1,NULL),(18,0,'2022-10-26','2022-10-26 07:12:21',23,1,0.00,17,3,NULL,1,NULL),(19,0,NULL,'2022-10-26 07:12:43',24,1,0.00,18,1,NULL,1,NULL),(20,0,NULL,'2022-10-26 07:13:16',25,2,0.00,19,1,NULL,1,NULL);
/*!40000 ALTER TABLE `publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queries`
--

DROP TABLE IF EXISTS `queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queries` (
  `query_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `stage_id` smallint(6) NOT NULL,
  `seq` double(8,2) NOT NULL DEFAULT '0.00',
  `date_posted` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `closed` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`query_id`),
  KEY `queries_assoc_id` (`assoc_type`,`assoc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queries`
--

LOCK TABLES `queries` WRITE;
/*!40000 ALTER TABLE `queries` DISABLE KEYS */;
INSERT INTO `queries` VALUES (1,1048585,2,3,1.00,NULL,NULL,0);
/*!40000 ALTER TABLE `queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `query_participants`
--

DROP TABLE IF EXISTS `query_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `query_participants` (
  `query_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  UNIQUE KEY `query_participants_pkey` (`query_id`,`user_id`),
  KEY `query_participants_query_id` (`query_id`),
  KEY `query_participants_user_id` (`user_id`),
  CONSTRAINT `query_participants_query_id_foreign` FOREIGN KEY (`query_id`) REFERENCES `queries` (`query_id`) ON DELETE CASCADE,
  CONSTRAINT `query_participants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query_participants`
--

LOCK TABLES `query_participants` WRITE;
/*!40000 ALTER TABLE `query_participants` DISABLE KEYS */;
INSERT INTO `query_participants` VALUES (1,3),(1,4),(1,5);
/*!40000 ALTER TABLE `query_participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queued_payments`
--

DROP TABLE IF EXISTS `queued_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queued_payments` (
  `queued_payment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `payment_data` text,
  PRIMARY KEY (`queued_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queued_payments`
--

LOCK TABLES `queued_payments` WRITE;
/*!40000 ALTER TABLE `queued_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `queued_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_assignments`
--

DROP TABLE IF EXISTS `review_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_assignments` (
  `review_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) NOT NULL,
  `reviewer_id` bigint(20) NOT NULL,
  `competing_interests` text,
  `recommendation` smallint(6) DEFAULT NULL,
  `date_assigned` datetime DEFAULT NULL,
  `date_notified` datetime DEFAULT NULL,
  `date_confirmed` datetime DEFAULT NULL,
  `date_completed` datetime DEFAULT NULL,
  `date_acknowledged` datetime DEFAULT NULL,
  `date_due` datetime DEFAULT NULL,
  `date_response_due` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `reminder_was_automatic` smallint(6) NOT NULL DEFAULT '0',
  `declined` smallint(6) NOT NULL DEFAULT '0',
  `cancelled` smallint(6) NOT NULL DEFAULT '0',
  `reviewer_file_id` bigint(20) DEFAULT NULL,
  `date_rated` datetime DEFAULT NULL,
  `date_reminded` datetime DEFAULT NULL,
  `quality` smallint(6) DEFAULT NULL,
  `review_round_id` bigint(20) NOT NULL,
  `stage_id` smallint(6) NOT NULL,
  `review_method` smallint(6) NOT NULL DEFAULT '1',
  `round` smallint(6) NOT NULL DEFAULT '1',
  `step` smallint(6) NOT NULL DEFAULT '1',
  `review_form_id` bigint(20) DEFAULT NULL,
  `unconsidered` smallint(6) DEFAULT NULL,
  `request_resent` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`review_id`),
  KEY `review_assignments_submission_id` (`submission_id`),
  KEY `review_assignments_reviewer_id` (`reviewer_id`),
  KEY `review_assignment_reviewer_round` (`review_round_id`,`reviewer_id`),
  KEY `review_assignments_form_id` (`review_form_id`),
  KEY `review_assignments_reviewer_review` (`reviewer_id`,`review_id`),
  CONSTRAINT `review_assignments_review_form_id_foreign` FOREIGN KEY (`review_form_id`) REFERENCES `review_forms` (`review_form_id`),
  CONSTRAINT `review_assignments_review_round_id_foreign` FOREIGN KEY (`review_round_id`) REFERENCES `review_rounds` (`review_round_id`),
  CONSTRAINT `review_assignments_reviewer_id_foreign` FOREIGN KEY (`reviewer_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `review_assignments_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`submission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_assignments`
--

LOCK TABLES `review_assignments` WRITE;
/*!40000 ALTER TABLE `review_assignments` DISABLE KEYS */;
INSERT INTO `review_assignments` VALUES (1,1,7,NULL,NULL,'2022-10-26 06:53:22','2022-10-26 06:53:22',NULL,NULL,NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 06:53:22',0,0,0,NULL,NULL,NULL,NULL,1,3,2,1,1,NULL,0,0),(2,1,9,NULL,NULL,'2022-10-26 06:53:29','2022-10-26 06:53:29',NULL,NULL,NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 06:53:29',0,0,0,NULL,NULL,NULL,NULL,1,3,2,1,1,NULL,0,0),(3,1,10,NULL,NULL,'2022-10-26 06:53:35','2022-10-26 06:53:35',NULL,NULL,NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 06:53:35',0,0,0,NULL,NULL,NULL,NULL,1,3,2,1,1,NULL,0,0),(4,3,9,NULL,NULL,'2022-10-26 06:57:53','2022-10-26 06:57:53',NULL,NULL,NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 06:57:53',0,0,0,NULL,NULL,NULL,NULL,3,3,2,1,1,NULL,0,0),(5,3,10,NULL,NULL,'2022-10-26 06:58:00','2022-10-26 06:58:00',NULL,NULL,NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 06:58:00',0,0,0,NULL,NULL,NULL,NULL,3,3,2,1,1,NULL,0,0),(6,5,8,NULL,NULL,'2022-10-26 06:59:09','2022-10-26 06:59:09',NULL,NULL,NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 06:59:09',0,0,0,NULL,NULL,NULL,NULL,4,3,2,1,1,NULL,0,0),(7,5,10,NULL,NULL,'2022-10-26 06:59:16','2022-10-26 06:59:16',NULL,NULL,NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 06:59:16',0,0,0,NULL,NULL,NULL,NULL,4,3,2,1,1,NULL,0,0),(8,6,7,NULL,NULL,'2022-10-26 07:00:24','2022-10-26 07:00:25',NULL,NULL,NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 07:00:25',0,0,0,NULL,NULL,NULL,NULL,5,3,2,1,1,NULL,0,0),(9,6,10,NULL,NULL,'2022-10-26 07:00:32','2022-10-26 07:00:32',NULL,NULL,NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 07:00:32',0,0,0,NULL,NULL,NULL,NULL,5,3,2,1,1,NULL,0,0),(10,7,8,NULL,5,'2022-10-26 07:01:35','2022-10-26 07:01:35','2022-10-26 07:01:57','2022-10-26 07:02:01',NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 07:02:01',0,0,0,NULL,NULL,NULL,NULL,6,3,2,1,4,NULL,0,0),(11,7,9,NULL,NULL,'2022-10-26 07:01:42','2022-10-26 07:01:42',NULL,NULL,NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 07:01:42',0,0,0,NULL,NULL,NULL,NULL,6,3,2,1,1,NULL,0,0),(12,7,10,NULL,NULL,'2022-10-26 07:01:49','2022-10-26 07:01:49',NULL,NULL,NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 07:01:49',0,0,0,NULL,NULL,NULL,NULL,6,3,2,1,1,NULL,0,0),(13,9,7,NULL,NULL,'2022-10-26 07:02:58','2022-10-26 07:02:58',NULL,NULL,NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 07:02:58',0,0,0,NULL,NULL,NULL,NULL,7,3,2,1,1,NULL,0,0),(14,9,10,NULL,NULL,'2022-10-26 07:03:05','2022-10-26 07:03:06',NULL,NULL,NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 07:03:06',0,0,0,NULL,NULL,NULL,NULL,7,3,2,1,1,NULL,0,0),(15,10,9,NULL,2,'2022-10-26 07:04:15','2022-10-26 07:04:15','2022-10-26 07:04:29','2022-10-26 07:04:33',NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 07:04:33',0,0,0,NULL,NULL,NULL,NULL,8,3,2,1,4,NULL,0,0),(16,10,10,NULL,3,'2022-10-26 07:04:22','2022-10-26 07:04:22','2022-10-26 07:04:40','2022-10-26 07:04:45',NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 07:04:45',0,0,0,NULL,NULL,NULL,NULL,8,3,2,1,4,NULL,0,0),(17,12,7,NULL,NULL,'2022-10-26 07:05:44','2022-10-26 07:05:44',NULL,NULL,NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 07:05:44',0,0,0,NULL,NULL,NULL,NULL,9,3,2,1,1,NULL,0,0),(18,12,8,NULL,NULL,'2022-10-26 07:05:51','2022-10-26 07:05:51',NULL,NULL,NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 07:05:51',0,0,0,NULL,NULL,NULL,NULL,9,3,2,1,1,NULL,0,0),(19,13,7,NULL,2,'2022-10-26 07:06:32','2022-10-26 07:06:32','2022-10-26 07:06:53','2022-10-26 07:06:58','2022-10-26 07:07:41','2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 07:07:41',0,0,0,NULL,NULL,NULL,NULL,10,3,2,1,4,NULL,0,0),(20,13,9,NULL,2,'2022-10-26 07:06:39','2022-10-26 07:06:39','2022-10-26 07:07:05','2022-10-26 07:07:09','2022-10-26 07:07:41','2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 07:07:41',0,0,0,NULL,NULL,NULL,NULL,10,3,2,1,4,NULL,0,0),(21,13,10,NULL,3,'2022-10-26 07:06:46','2022-10-26 07:06:46','2022-10-26 07:07:16','2022-10-26 07:07:21','2022-10-26 07:07:41','2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 07:07:41',0,0,0,NULL,NULL,NULL,NULL,10,3,2,1,4,NULL,0,0),(22,15,8,NULL,NULL,'2022-10-26 07:08:41','2022-10-26 07:08:41',NULL,NULL,NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 07:08:41',0,0,0,NULL,NULL,NULL,NULL,11,3,2,1,1,NULL,0,0),(23,15,9,NULL,NULL,'2022-10-26 07:08:48','2022-10-26 07:08:48',NULL,NULL,NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 07:08:48',0,0,0,NULL,NULL,NULL,NULL,11,3,2,1,1,NULL,0,0),(24,17,7,NULL,NULL,'2022-10-26 07:10:11','2022-10-26 07:10:11',NULL,NULL,NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 07:10:11',0,0,0,NULL,NULL,NULL,NULL,12,3,2,1,1,NULL,0,0),(25,17,8,NULL,NULL,'2022-10-26 07:10:18','2022-10-26 07:10:19',NULL,NULL,NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 07:10:19',0,0,0,NULL,NULL,NULL,NULL,12,3,2,1,1,NULL,0,0),(26,19,8,NULL,NULL,'2022-10-26 07:13:40','2022-10-26 07:13:40',NULL,NULL,NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 07:13:40',0,0,0,NULL,NULL,NULL,NULL,13,3,2,1,1,NULL,0,0),(27,19,9,NULL,NULL,'2022-10-26 07:13:47','2022-10-26 07:13:47',NULL,NULL,NULL,'2022-11-23 00:00:00','2022-11-23 00:00:00','2022-10-26 07:13:47',0,0,0,NULL,NULL,NULL,NULL,13,3,2,1,1,NULL,0,0);
/*!40000 ALTER TABLE `review_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_files`
--

DROP TABLE IF EXISTS `review_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_files` (
  `review_id` bigint(20) NOT NULL,
  `submission_file_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `review_files_pkey` (`review_id`,`submission_file_id`),
  KEY `review_files_review_id` (`review_id`),
  KEY `review_files_submission_file_id` (`submission_file_id`),
  CONSTRAINT `review_files_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `review_assignments` (`review_id`) ON DELETE CASCADE,
  CONSTRAINT `review_files_submission_file_id_foreign` FOREIGN KEY (`submission_file_id`) REFERENCES `submission_files` (`submission_file_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_files`
--

LOCK TABLES `review_files` WRITE;
/*!40000 ALTER TABLE `review_files` DISABLE KEYS */;
INSERT INTO `review_files` VALUES (1,2),(2,2),(3,2),(4,7),(5,7),(6,10),(7,10),(8,12),(9,12),(10,14),(11,14),(12,14),(13,17),(14,17),(15,19),(16,19),(17,22),(18,22),(19,24),(20,24),(21,24),(22,27),(23,27),(24,30),(25,30),(26,34),(27,34);
/*!40000 ALTER TABLE `review_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_form_element_settings`
--

DROP TABLE IF EXISTS `review_form_element_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_form_element_settings` (
  `review_form_element_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `review_form_element_settings_pkey` (`review_form_element_id`,`locale`,`setting_name`),
  KEY `review_form_element_settings_review_form_element_id` (`review_form_element_id`),
  CONSTRAINT `review_form_element_settings_review_form_element_id` FOREIGN KEY (`review_form_element_id`) REFERENCES `review_form_elements` (`review_form_element_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_form_element_settings`
--

LOCK TABLES `review_form_element_settings` WRITE;
/*!40000 ALTER TABLE `review_form_element_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_form_element_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_form_elements`
--

DROP TABLE IF EXISTS `review_form_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_form_elements` (
  `review_form_element_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `review_form_id` bigint(20) NOT NULL,
  `seq` double(8,2) DEFAULT NULL,
  `element_type` bigint(20) DEFAULT NULL,
  `required` smallint(6) DEFAULT NULL,
  `included` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`review_form_element_id`),
  KEY `review_form_elements_review_form_id` (`review_form_id`),
  CONSTRAINT `review_form_elements_review_form_id` FOREIGN KEY (`review_form_id`) REFERENCES `review_forms` (`review_form_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_form_elements`
--

LOCK TABLES `review_form_elements` WRITE;
/*!40000 ALTER TABLE `review_form_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_form_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_form_responses`
--

DROP TABLE IF EXISTS `review_form_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_form_responses` (
  `review_form_element_id` bigint(20) NOT NULL,
  `review_id` bigint(20) NOT NULL,
  `response_type` varchar(6) DEFAULT NULL,
  `response_value` text,
  KEY `review_form_responses_review_form_element_id` (`review_form_element_id`),
  KEY `review_form_responses_review_id` (`review_id`),
  KEY `review_form_responses_pkey` (`review_form_element_id`,`review_id`),
  CONSTRAINT `review_form_responses_review_form_element_id_foreign` FOREIGN KEY (`review_form_element_id`) REFERENCES `review_form_elements` (`review_form_element_id`) ON DELETE CASCADE,
  CONSTRAINT `review_form_responses_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `review_assignments` (`review_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_form_responses`
--

LOCK TABLES `review_form_responses` WRITE;
/*!40000 ALTER TABLE `review_form_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_form_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_form_settings`
--

DROP TABLE IF EXISTS `review_form_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_form_settings` (
  `review_form_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `review_form_settings_pkey` (`review_form_id`,`locale`,`setting_name`),
  KEY `review_form_settings_review_form_id` (`review_form_id`),
  CONSTRAINT `review_form_settings_review_form_id` FOREIGN KEY (`review_form_id`) REFERENCES `review_forms` (`review_form_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_form_settings`
--

LOCK TABLES `review_form_settings` WRITE;
/*!40000 ALTER TABLE `review_form_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_form_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_forms`
--

DROP TABLE IF EXISTS `review_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_forms` (
  `review_form_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `seq` double(8,2) DEFAULT NULL,
  `is_active` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`review_form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_forms`
--

LOCK TABLES `review_forms` WRITE;
/*!40000 ALTER TABLE `review_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_round_files`
--

DROP TABLE IF EXISTS `review_round_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_round_files` (
  `submission_id` bigint(20) NOT NULL,
  `review_round_id` bigint(20) NOT NULL,
  `stage_id` smallint(6) NOT NULL,
  `submission_file_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `review_round_files_pkey` (`submission_id`,`review_round_id`,`submission_file_id`),
  KEY `review_round_files_submission_id` (`submission_id`),
  KEY `review_round_files_submission_file_id` (`submission_file_id`),
  CONSTRAINT `review_round_files_submission_file_id_foreign` FOREIGN KEY (`submission_file_id`) REFERENCES `submission_files` (`submission_file_id`) ON DELETE CASCADE,
  CONSTRAINT `review_round_files_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`submission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_round_files`
--

LOCK TABLES `review_round_files` WRITE;
/*!40000 ALTER TABLE `review_round_files` DISABLE KEYS */;
INSERT INTO `review_round_files` VALUES (1,1,3,2),(2,2,3,5),(3,3,3,7),(5,4,3,10),(6,5,3,12),(7,6,3,14),(9,7,3,17),(10,8,3,19),(12,9,3,22),(13,10,3,24),(15,11,3,27),(17,12,3,30),(19,13,3,34);
/*!40000 ALTER TABLE `review_round_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_rounds`
--

DROP TABLE IF EXISTS `review_rounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_rounds` (
  `review_round_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) NOT NULL,
  `stage_id` bigint(20) DEFAULT NULL,
  `round` smallint(6) NOT NULL,
  `review_revision` bigint(20) DEFAULT NULL,
  `status` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`review_round_id`),
  UNIQUE KEY `review_rounds_submission_id_stage_id_round_pkey` (`submission_id`,`stage_id`,`round`),
  KEY `review_rounds_submission_id` (`submission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_rounds`
--

LOCK TABLES `review_rounds` WRITE;
/*!40000 ALTER TABLE `review_rounds` DISABLE KEYS */;
INSERT INTO `review_rounds` VALUES (1,1,3,1,NULL,4),(2,2,3,1,NULL,14),(3,3,3,1,NULL,4),(4,5,3,1,NULL,4),(5,6,3,1,NULL,4),(6,7,3,1,NULL,8),(7,9,3,1,NULL,4),(8,10,3,1,NULL,8),(9,12,3,1,NULL,7),(10,13,3,1,NULL,1),(11,15,3,1,NULL,4),(12,17,3,1,NULL,4),(13,19,3,1,NULL,4);
/*!40000 ALTER TABLE `review_rounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduled_tasks`
--

DROP TABLE IF EXISTS `scheduled_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduled_tasks` (
  `class_name` varchar(255) NOT NULL,
  `last_run` datetime DEFAULT NULL,
  UNIQUE KEY `scheduled_tasks_pkey` (`class_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduled_tasks`
--

LOCK TABLES `scheduled_tasks` WRITE;
/*!40000 ALTER TABLE `scheduled_tasks` DISABLE KEYS */;
INSERT INTO `scheduled_tasks` VALUES ('APP\\tasks\\SubscriptionExpiryReminder','2022-10-26 06:48:10'),('APP\\tasks\\UsageStatsLoader','2022-10-26 06:48:12'),('PKP\\task\\DepositDois','2022-10-26 06:48:10'),('PKP\\task\\EditorialReminders','2022-10-26 06:48:10'),('PKP\\task\\ProcessQueueJobs','2022-10-26 06:48:12'),('PKP\\task\\RemoveUnvalidatedExpiredUsers','2022-10-26 06:48:10'),('PKP\\task\\ReviewReminder','2022-10-26 06:48:10'),('PKP\\task\\StatisticsReport','2022-10-26 06:48:10'),('PKP\\task\\UpdateIPGeoDB','2022-10-26 06:48:10');
/*!40000 ALTER TABLE `scheduled_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_settings`
--

DROP TABLE IF EXISTS `section_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section_settings` (
  `section_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)',
  UNIQUE KEY `section_settings_pkey` (`section_id`,`locale`,`setting_name`),
  KEY `section_settings_section_id` (`section_id`),
  CONSTRAINT `section_settings_section_id` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_settings`
--

LOCK TABLES `section_settings` WRITE;
/*!40000 ALTER TABLE `section_settings` DISABLE KEYS */;
INSERT INTO `section_settings` VALUES (1,'en_US','abbrev','ART','string'),(1,'en_US','identifyType','','string'),(1,'en_US','policy','<p>Section default policy</p>','string'),(1,'en_US','title','Articles','string'),(1,'fr_CA','abbrev','','string'),(1,'fr_CA','identifyType','','string'),(1,'fr_CA','policy','','string'),(1,'fr_CA','title','','string'),(2,'en_US','abbrev','REV','string'),(2,'en_US','identifyType','Review Article','string'),(2,'en_US','policy','','string'),(2,'en_US','title','Reviews','string'),(2,'fr_CA','abbrev','','string'),(2,'fr_CA','identifyType','','string'),(2,'fr_CA','policy','','string'),(2,'fr_CA','title','','string');
/*!40000 ALTER TABLE `section_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `section_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `journal_id` bigint(20) NOT NULL,
  `review_form_id` bigint(20) DEFAULT NULL,
  `seq` double(8,2) NOT NULL DEFAULT '0.00',
  `editor_restricted` smallint(6) NOT NULL DEFAULT '0',
  `meta_indexed` smallint(6) NOT NULL DEFAULT '0',
  `meta_reviewed` smallint(6) NOT NULL DEFAULT '1',
  `abstracts_not_required` smallint(6) NOT NULL DEFAULT '0',
  `hide_title` smallint(6) NOT NULL DEFAULT '0',
  `hide_author` smallint(6) NOT NULL DEFAULT '0',
  `is_inactive` smallint(6) NOT NULL DEFAULT '0',
  `abstract_word_count` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`section_id`),
  KEY `sections_journal_id` (`journal_id`),
  KEY `sections_review_form_id` (`review_form_id`),
  CONSTRAINT `sections_journal_id` FOREIGN KEY (`journal_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE,
  CONSTRAINT `sections_review_form_id` FOREIGN KEY (`review_form_id`) REFERENCES `review_forms` (`review_form_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,1,NULL,1.00,0,1,1,0,0,0,0,500),(2,1,NULL,2.00,0,1,1,1,0,0,0,0);
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `session_id` varchar(128) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `ip_address` varchar(39) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created` bigint(20) NOT NULL DEFAULT '0',
  `last_used` bigint(20) NOT NULL DEFAULT '0',
  `remember` smallint(6) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `domain` varchar(255) DEFAULT NULL,
  UNIQUE KEY `sessions_pkey` (`session_id`),
  KEY `sessions_user_id` (`user_id`),
  CONSTRAINT `sessions_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('00pceq1kpsfc1ild3doqrqp7o9',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666768303,1666768316,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666768316;s:5:\"token\";s:32:\"ada78cf98c22ee9b91c99f41821fb104\";}','localhost'),('08gu1e9ujgs476fnj2vtb7jqi7',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767907,1666767923,0,'csrf|a:2:{s:9:\"timestamp\";i:1666767922;s:5:\"token\";s:32:\"65d4f102546b1c6af5cb03fd8fbe5bf4\";}username|s:12:\"lchristopher\";','localhost'),('0q57kifo3e5oejjl42c6iaki56',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767339,1666767346,0,'','localhost'),('0t9fqlulrp01sc4qu5kgu1vdbv',1,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666766944,1666766953,0,'userId|i:1;username|s:5:\"admin\";csrf|a:2:{s:9:\"timestamp\";i:1666766953;s:5:\"token\";s:32:\"0623339996cbed8c1d3b02194eeb841f\";}','localhost'),('19vep3po6omg0iae25e9sqvmvd',5,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767355,1666767366,0,'userId|i:5;username|s:8:\"sberardo\";csrf|a:2:{s:9:\"timestamp\";i:1666767366;s:5:\"token\";s:32:\"f8528e41ccff3eedf2230b100679666f\";}signedInAs|i:3;','localhost'),('28hd4assd0rjfoqt8qquv3ct35',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666768384,1666768398,0,'csrf|a:2:{s:9:\"timestamp\";i:1666768397;s:5:\"token\";s:32:\"419016177a940ba760b4bc5f8f3b335c\";}username|s:6:\"zwoods\";','localhost'),('2jll7bp4t9tf6hru7357350vfr',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767835,1666767863,0,'username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666767863;s:5:\"token\";s:32:\"51f3c00262259e9755cb061bda681ebd\";}','localhost'),('304benv8i7sk2tpj93vdq1g063',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666768330,1666768347,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666768347;s:5:\"token\";s:32:\"ea586bad55751d9634a5f1bd496f8bc3\";}','localhost'),('34hj7mnp39evrsgg73lrm7ho20',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666768365,1666768382,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666768382;s:5:\"token\";s:32:\"bc34e1fb62997375f4c832d2ddacb417\";}','localhost'),('35r2uamffrt83g71k4u5319l1d',1,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666766911,1666766928,0,'userId|i:1;username|s:5:\"admin\";csrf|a:2:{s:9:\"timestamp\";i:1666766928;s:5:\"token\";s:32:\"021f7e56448a7be3efcbb6ccf062e655\";}','localhost'),('39efnefbibbsmcaerafr65njc4',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666768019,1666768029,0,'username|s:7:\"amccrae\";csrf|a:2:{s:9:\"timestamp\";i:1666768029;s:5:\"token\";s:32:\"cd0d0e7db0a49bb0ea9fa18b64515c37\";}','localhost'),('3aoijf3igi61lp9uuilv54sa6c',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767875,1666767885,0,'username|s:8:\"agallego\";csrf|a:2:{s:9:\"timestamp\";i:1666767885;s:5:\"token\";s:32:\"cea88b4e49940d8721880fd93af5dafd\";}','localhost'),('4kbf3o9onhulag85nla4o9neq5',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666768174,1666768189,0,'csrf|a:2:{s:9:\"timestamp\";i:1666768189;s:5:\"token\";s:32:\"4525e96f2b7d935d8f3803a64d75ca62\";}username|s:12:\"vkarbasizaed\";','localhost'),('4vlli3vp88pccmdoeb1mhaemhg',24,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767724,1666767741,0,'csrf|a:2:{s:9:\"timestamp\";i:1666767741;s:5:\"token\";s:32:\"0267629dfcb74625f7adab6aaeeb33fc\";}username|s:7:\"eostrom\";userId|i:24;','localhost'),('5tqld08mftn3kh7vvq7ubsc3qc',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767971,1666768007,0,'username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666768007;s:5:\"token\";s:32:\"5377605c18807cae022a78ef0cd8a491\";}','localhost'),('64b3evk43619mj8eoe35sm48cf',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767955,1666767971,0,'csrf|a:2:{s:9:\"timestamp\";i:1666767971;s:5:\"token\";s:32:\"70244406c8f65f2a31974b7c51d32168\";}username|s:8:\"lkumiega\";','localhost'),('6th6sdfbfkj76hrk7su8l0reb5',27,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767888,1666767905,0,'csrf|a:2:{s:9:\"timestamp\";i:1666767905;s:5:\"token\";s:32:\"0d5676a41577471eb450fd2f4b4742e3\";}username|s:10:\"kalkhafaji\";userId|i:27;','localhost'),('7jbjgr0u3m1fni502j41hcj741',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767108,1666767118,0,'username|s:5:\"rvaca\";csrf|a:2:{s:9:\"timestamp\";i:1666767117;s:5:\"token\";s:32:\"b457fce52ff11166ef3293b5d326608e\";}','localhost'),('8c7fdlk5r5t4h430tui2i8bbvf',1,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666766929,1666766942,0,'userId|i:1;username|s:5:\"admin\";csrf|a:2:{s:9:\"timestamp\";i:1666766942;s:5:\"token\";s:32:\"e7517ee5ac1682d235871c02b0d55135\";}','localhost'),('8kj60t5vb2a5ej9jagj9mmhol6',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767300,1666767306,0,'username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666767306;s:5:\"token\";s:32:\"4b12197700ec5bb1d41a06846bee0950\";}','localhost'),('902jd4ieh15ktta2k0gp5erg90',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666768100,1666768155,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666768155;s:5:\"token\";s:32:\"bede95943ca8a9ca47ca74c4105022dc\";}','localhost'),('983prr2coh0tr8hd0ubvk1l29a',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666768350,1666768365,0,'csrf|a:2:{s:9:\"timestamp\";i:1666768365;s:5:\"token\";s:32:\"620077bfad1830583151263c2a1e5d81\";}username|s:11:\"vwilliamson\";','localhost'),('9rf8f9rpf8tbi46nmno4g80frl',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666768260,1666768275,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666768275;s:5:\"token\";s:32:\"fd4f66e5eadaf241a232f335b233bcc4\";}','localhost'),('a09ign9gaifi6gtkpq1f3gso8s',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666768085,1666768100,0,'csrf|a:2:{s:9:\"timestamp\";i:1666768099;s:5:\"token\";s:32:\"6a071f5b185d40718f13051aeaae2081\";}username|s:8:\"rbaiyewu\";','localhost'),('ag2u3ruahg4huavt3hg2jmb7lo',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666768276,1666768289,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666768289;s:5:\"token\";s:32:\"8fa37961c7061d90f6c8ced85a5ce311\";}','localhost'),('avc5kvuc3dctimdhcor1iak0eq',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767307,1666767312,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666767312;s:5:\"token\";s:32:\"bfe5cb954f62c8e8ae1b774c12eb959a\";}','localhost'),('bcvrp22slh0cmv97l27vnhf1ro',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767430,1666767436,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666767436;s:5:\"token\";s:32:\"ace7fac46ce04c547cc8cbec8dfa3362\";}','localhost'),('c3r3svivjm0cvq2l2kboannk3c',5,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767367,1666767376,0,'userId|i:5;username|s:8:\"sberardo\";csrf|a:2:{s:9:\"timestamp\";i:1666767376;s:5:\"token\";s:32:\"09235916d72448d2345c389e1f29839d\";}signedInAs|i:3;','localhost'),('c7v3mgt9kcf2tgqfssj11oogib',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666768316,1666768330,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666768330;s:5:\"token\";s:32:\"7c75f639e933b201f7cf4a3aa8ccafb8\";}','localhost'),('ca5bhrna25emope7unc9a94ls7',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767312,1666767338,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666767339;s:5:\"token\";s:32:\"ed926c8cdcad986d4f59c326e1251d9b\";}','localhost'),('dh90s4ndfejor7lk2jmjhlg381',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767288,1666767299,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666767299;s:5:\"token\";s:32:\"a7ea1f0408300c4a79fd45fd50f9875b\";}','localhost'),('eeq6t9o16dt140vesq6i8du6ip',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767864,1666767874,0,'username|s:7:\"amccrae\";csrf|a:2:{s:9:\"timestamp\";i:1666767874;s:5:\"token\";s:32:\"8d687a0db46c8b09f7283330aeb38520\";}','localhost'),('ekmn1fftlfjii55mu8sqbg1c62',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767415,1666767429,0,'username|s:6:\"minoue\";csrf|a:2:{s:9:\"timestamp\";i:1666767428;s:5:\"token\";s:32:\"0b1f072d30e8310cc7af39ce4e9caeab\";}','localhost'),('ersifn6mtv3p739ni141vum67m',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666768008,1666768018,0,'username|s:8:\"jjanssen\";csrf|a:2:{s:9:\"timestamp\";i:1666768018;s:5:\"token\";s:32:\"41a4d424e3abb172d2595f05656d45f7\";}','localhost'),('fpvtk75u9l78igbck1k0bd18ao',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666768042,1666768066,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666768066;s:5:\"token\";s:32:\"40b90d0c7b1ba76d26f107f1dc46fb6b\";}','localhost'),('g9609481p2ev0mv3rje6q9cb1v',17,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767170,1666767184,0,'csrf|a:2:{s:9:\"timestamp\";i:1666767184;s:5:\"token\";s:32:\"ca790c285a0b0633781f7d3e096b27f3\";}username|s:10:\"amwandenga\";userId|i:17;','localhost'),('hb0jbcoh1tolmv79rtb20rn84p',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666768190,1666768258,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666768258;s:5:\"token\";s:32:\"3029abcfd3bdb7741db16c388a0a0a01\";}','localhost'),('hc4jl9nkr6pbgkdeibqu0lbi9e',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767711,1666767721,0,'username|s:7:\"phudson\";csrf|a:2:{s:9:\"timestamp\";i:1666767721;s:5:\"token\";s:32:\"d52a479bd87233ac1f24b07991a49df8\";}','localhost'),('hd2vileg1222ervqnm7qss8b5q',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767758,1666767817,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666767817;s:5:\"token\";s:32:\"3c0905eff6f977dcc2e2e19676f136c2\";}','localhost'),('iaigrlp8ca7a0bjshk0at4bjc0',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767378,1666767393,0,'csrf|a:2:{s:9:\"timestamp\";i:1666767392;s:5:\"token\";s:32:\"644aaeffb3133a522fdba862d15c3ac8\";}username|s:7:\"ccorino\";','localhost'),('ifcbo03cofghv312lhser25nul',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666768030,1666768041,0,'username|s:8:\"agallego\";csrf|a:2:{s:9:\"timestamp\";i:1666768041;s:5:\"token\";s:32:\"ddf3018112ebc89972525631f526f781\";}','localhost'),('itdqaev5ub9cgonisempedkv51',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767393,1666767414,0,'username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666767414;s:5:\"token\";s:32:\"d9fd95e9e35a010de98a26c22139ff45\";}','localhost'),('jfkf9k1f5jla4it2a2b35i688u',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767348,1666767354,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666767354;s:5:\"token\";s:32:\"930d0b0af28cded8bc1c4bfe564fca32\";}','localhost'),('jmucv2k2e9hlu1phb64t4a7q53',32,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666768158,1666768172,0,'csrf|a:2:{s:9:\"timestamp\";i:1666768171;s:5:\"token\";s:32:\"87c6b502b8d0e113c73149c760df49f7\";}username|s:6:\"rrossi\";userId|i:32;','localhost'),('k3h9vvf9k8jvmt11p4mipdmg7v',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767185,1666767245,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666767245;s:5:\"token\";s:32:\"90491cda0af834c6e30b307e388848d7\";}','localhost'),('k4f2a85e7eqhr64ct4dncn3enu',17,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767270,1666767275,0,'userId|i:17;username|s:10:\"amwandenga\";csrf|a:2:{s:9:\"timestamp\";i:1666767275;s:5:\"token\";s:32:\"8ef4a03a5b62e067b76f1289519c2f25\";}','localhost'),('kg022clevbqv1ue8ifp3t7ngr0',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767590,1666767605,0,'csrf|a:2:{s:9:\"timestamp\";i:1666767605;s:5:\"token\";s:32:\"3c5bc50e3796e7c6ce5865befcb19beb\";}username|s:9:\"dphillips\";','localhost'),('kso9ncf4saccl986us5g03pakp',1,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666766890,1666766911,0,'userId|i:1;username|s:5:\"admin\";csrf|a:2:{s:9:\"timestamp\";i:1666766911;s:5:\"token\";s:32:\"9f78510518922b027fc45f8a37c4e63e\";}','localhost'),('l54flf3sfmrhc65ujrr5np0qi5',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767820,1666767834,0,'csrf|a:2:{s:9:\"timestamp\";i:1666767834;s:5:\"token\";s:32:\"3353897302e06580897bb1688342e0a5\";}username|s:6:\"jnovak\";','localhost'),('lgjn8utssm1cm9343id4r0ohn2',30,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666768069,1666768083,0,'csrf|a:2:{s:9:\"timestamp\";i:1666768083;s:5:\"token\";s:32:\"0de40a521dd3e081819f7a9d62b39623\";}username|s:7:\"pdaniel\";userId|i:30;','localhost'),('lob0snsh80ogtc0a1l4rn4va9k',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767515,1666767529,0,'csrf|a:2:{s:9:\"timestamp\";i:1666767529;s:5:\"token\";s:32:\"c84f4bdce254ce3416fd88143b4f111a\";}username|s:6:\"ddiouf\";','localhost'),('muq82k1cu96la7t57mrn9nu29q',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767744,1666767758,0,'csrf|a:2:{s:9:\"timestamp\";i:1666767758;s:5:\"token\";s:32:\"ec28547d6e2a58eb1239208f0e82416b\";}username|s:9:\"fpaglieri\";','localhost'),('n1otsr9kcafcr2q9h7qdpsuv3r',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666768398,1666768440,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666768440;s:5:\"token\";s:32:\"d25621385cbf9e619b21f0b49d776fc4\";}','localhost'),('n7s4d85mmb819qag1272h90mci',17,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767283,1666767287,0,'userId|i:17;username|s:10:\"amwandenga\";csrf|a:2:{s:9:\"timestamp\";i:1666767287;s:5:\"token\";s:32:\"103696fa3ae8279374a9544a5ad98f2d\";}','localhost'),('n9qdpcokqjesha493drdbk5pe6',1,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767121,1666767142,0,'userId|i:1;username|s:5:\"admin\";csrf|a:2:{s:9:\"timestamp\";i:1666767142;s:5:\"token\";s:32:\"0e76c8da5d025cf1165ec4b491c9d6c3\";}','localhost'),('na8d89tu8to3a5sn9425avgtnp',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767453,1666767492,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666767493;s:5:\"token\";s:32:\"74a9249706678ed4d29af01fb58f9700\";}','localhost'),('nkdgtt8kths68osa6tvoke10fk',1,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767144,1666767155,0,'userId|i:1;username|s:5:\"admin\";csrf|a:2:{s:9:\"timestamp\";i:1666767155;s:5:\"token\";s:32:\"e0b909638e04c4458ea579001485b6c6\";}','localhost'),('pbkl8v31q6gnuvkrua08nq7n43',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666768289,1666768302,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666768303;s:5:\"token\";s:32:\"a8c03c9870e5cd7ba62b647bcacdc558\";}','localhost'),('pj0g8jutauu26n3ppkcbe7bb6r',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767676,1666767710,0,'username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666767710;s:5:\"token\";s:32:\"7e2601f14d3cd5cbca6211f12b2d02c2\";}','localhost'),('rag943do21ml0proudn5a89uh5',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666766957,1666767107,0,'username|s:5:\"admin\";csrf|a:2:{s:9:\"timestamp\";i:1666767107;s:5:\"token\";s:32:\"bbf5be0eddbe22eed16ca5065217cd7f\";}','localhost'),('rg14jtbqohri4ngl82ij66ae7l',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767661,1666767676,0,'csrf|a:2:{s:9:\"timestamp\";i:1666767676;s:5:\"token\";s:32:\"aa8332b1b8949e3e6ee549b8445a1887\";}username|s:9:\"dsokoloff\";','localhost'),('rmmr4htr64o7q7h7294ktj2ul1',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767605,1666767658,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666767659;s:5:\"token\";s:32:\"a2468e5360aeaa1193c4cfab9a52ec98\";}','localhost'),('rr44qsdbhkvi3qk9k2n83ockms',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767276,1666767282,0,'username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666767282;s:5:\"token\";s:32:\"006039fc80511c552ddef1461c8eadbb\";}','localhost'),('ru5okb1ou9ir1mnufip5equmk0',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767923,1666767952,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666767951;s:5:\"token\";s:32:\"a28be9cc80d892ea1b76e883244c7a60\";}','localhost'),('rvm0l156s7fs2mfpiglu210a0p',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767246,1666767269,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666767269;s:5:\"token\";s:32:\"ad6f51668364c22fa15077c9b2c9f47b\";}','localhost'),('t57gs8puj6qgc8sj0hg1uqq3af',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767530,1666767588,0,'userId|i:3;username|s:7:\"dbarnes\";csrf|a:2:{s:9:\"timestamp\";i:1666767588;s:5:\"token\";s:32:\"e99bba2bfeb2d88ac4b04c07aa3821f2\";}','localhost'),('tlt6iejknq8u3gkfo821c52k7c',20,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767495,1666767513,0,'csrf|a:2:{s:9:\"timestamp\";i:1666767512;s:5:\"token\";s:32:\"f1e9a72fadc9772d25d1a00b72fc5382\";}username|s:12:\"cmontgomerie\";userId|i:20;','localhost'),('uno2m0i2a6j8e5q6b3gpoeu26l',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767438,1666767453,0,'csrf|a:2:{s:9:\"timestamp\";i:1666767453;s:5:\"token\";s:32:\"1f1714913740c1b1abeb06bf3abad83d\";}username|s:8:\"ckwantes\";','localhost'),('vl2ucut048er77edfdbv0o2rmn',1,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36',1666767157,1666767168,0,'userId|i:1;username|s:5:\"admin\";csrf|a:2:{s:9:\"timestamp\";i:1666767167;s:5:\"token\";s:32:\"3415a6632e970892685c00d5816509d8\";}','localhost');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site`
--

DROP TABLE IF EXISTS `site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site` (
  `redirect` bigint(20) NOT NULL DEFAULT '0' COMMENT 'If not 0, redirect to the specified journal/conference/... site.',
  `primary_locale` varchar(14) NOT NULL COMMENT 'Primary locale for the site.',
  `min_password_length` smallint(6) NOT NULL DEFAULT '6',
  `installed_locales` varchar(1024) NOT NULL DEFAULT 'en_US' COMMENT 'Locales for which support has been installed.',
  `supported_locales` varchar(1024) DEFAULT NULL COMMENT 'Locales supported by the site (for hosted journals/conferences/...).',
  `original_style_file_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site`
--

LOCK TABLES `site` WRITE;
/*!40000 ALTER TABLE `site` DISABLE KEYS */;
INSERT INTO `site` VALUES (0,'en_US',6,'[\"en_US\",\"fr_CA\"]','[\"en_US\",\"fr_CA\"]',NULL);
/*!40000 ALTER TABLE `site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_settings`
--

DROP TABLE IF EXISTS `site_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_settings` (
  `setting_name` varchar(255) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_value` mediumtext,
  UNIQUE KEY `site_settings_pkey` (`setting_name`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_settings`
--

LOCK TABLES `site_settings` WRITE;
/*!40000 ALTER TABLE `site_settings` DISABLE KEYS */;
INSERT INTO `site_settings` VALUES ('compressStatsLogs','','0'),('contactEmail','en_US','pkpadmin@mailinator.com'),('contactName','en_US','Open Journal Systems'),('contactName','fr_CA','Open Journal Systems'),('enableGeoUsageStats','','disabled'),('enableInstitutionUsageStats','','0'),('isSiteSushiPlatform','','0'),('isSushiApiPublic','','1'),('keepDailyUsageStats','','0'),('themePluginPath','','default');
/*!40000 ALTER TABLE `site_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stage_assignments`
--

DROP TABLE IF EXISTS `stage_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stage_assignments` (
  `stage_assignment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) NOT NULL,
  `user_group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `date_assigned` datetime NOT NULL,
  `recommend_only` smallint(6) NOT NULL DEFAULT '0',
  `can_change_metadata` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`stage_assignment_id`),
  UNIQUE KEY `stage_assignment` (`submission_id`,`user_group_id`,`user_id`),
  KEY `stage_assignments_user_group_id` (`user_group_id`),
  KEY `stage_assignments_user_id` (`user_id`),
  KEY `stage_assignments_submission_id` (`submission_id`),
  CONSTRAINT `stage_assignments_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`submission_id`) ON DELETE CASCADE,
  CONSTRAINT `stage_assignments_user_group_id` FOREIGN KEY (`user_group_id`) REFERENCES `user_groups` (`user_group_id`) ON DELETE CASCADE,
  CONSTRAINT `stage_assignments_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stage_assignments`
--

LOCK TABLES `stage_assignments` WRITE;
/*!40000 ALTER TABLE `stage_assignments` DISABLE KEYS */;
INSERT INTO `stage_assignments` VALUES (1,1,14,17,'2022-10-26 06:54:40',0,1),(2,1,3,3,'2022-10-26 06:53:04',0,1),(3,1,5,4,'2022-10-26 06:53:04',0,1),(4,1,5,5,'2022-10-26 06:56:11',1,0),(5,1,7,12,'2022-10-26 06:53:46',0,0),(6,1,11,14,'2022-10-26 06:53:59',0,0),(7,1,13,16,'2022-10-26 06:54:04',0,0),(8,2,14,18,'2022-10-26 06:56:25',0,0),(9,2,3,3,'2022-10-26 06:56:32',0,1),(10,2,5,4,'2022-10-26 06:56:32',0,1),(11,2,5,5,'2022-10-26 06:56:32',0,1),(12,2,5,6,'2022-10-26 06:56:49',1,0),(13,3,14,19,'2022-10-26 06:57:25',0,0),(14,3,3,3,'2022-10-26 06:57:32',0,1),(15,3,5,4,'2022-10-26 06:57:32',0,1),(16,3,5,5,'2022-10-26 06:57:32',0,1),(17,3,7,11,'2022-10-26 06:58:12',0,0),(18,4,14,20,'2022-10-26 06:58:22',0,0),(19,4,3,3,'2022-10-26 06:58:32',0,1),(20,4,5,4,'2022-10-26 06:58:32',0,1),(21,4,5,5,'2022-10-26 06:58:32',0,1),(22,5,14,21,'2022-10-26 06:58:42',0,0),(23,5,3,3,'2022-10-26 06:58:49',0,1),(24,5,5,4,'2022-10-26 06:58:49',0,1),(25,5,5,5,'2022-10-26 06:58:49',0,1),(26,5,7,11,'2022-10-26 06:59:28',0,0),(27,5,11,13,'2022-10-26 06:59:41',0,0),(28,5,13,15,'2022-10-26 06:59:47',0,0),(29,6,14,22,'2022-10-26 06:59:57',0,0),(30,6,3,3,'2022-10-26 07:00:04',0,1),(31,6,5,4,'2022-10-26 07:00:04',0,1),(32,6,5,5,'2022-10-26 07:00:04',0,1),(33,6,7,11,'2022-10-26 07:00:44',0,0),(34,6,11,13,'2022-10-26 07:00:57',0,0),(35,7,14,23,'2022-10-26 07:01:08',0,0),(36,7,3,3,'2022-10-26 07:01:15',0,1),(37,7,5,4,'2022-10-26 07:01:15',0,1),(38,7,5,5,'2022-10-26 07:01:15',0,1),(39,8,14,24,'2022-10-26 07:02:11',0,0),(40,8,3,3,'2022-10-26 07:02:21',0,1),(41,8,5,4,'2022-10-26 07:02:21',0,1),(42,8,5,5,'2022-10-26 07:02:21',0,1),(43,9,14,25,'2022-10-26 07:02:31',0,0),(44,9,3,3,'2022-10-26 07:02:37',0,1),(45,9,5,6,'2022-10-26 07:02:37',0,1),(46,9,7,12,'2022-10-26 07:03:18',0,0),(47,9,11,14,'2022-10-26 07:03:31',0,0),(48,9,13,16,'2022-10-26 07:03:36',0,0),(49,10,14,26,'2022-10-26 07:03:47',0,0),(50,10,3,3,'2022-10-26 07:03:54',0,1),(51,10,5,4,'2022-10-26 07:03:54',0,1),(52,10,5,5,'2022-10-26 07:03:54',0,1),(53,11,14,27,'2022-10-26 07:04:55',0,0),(54,11,3,3,'2022-10-26 07:05:05',0,1),(55,11,5,4,'2022-10-26 07:05:05',0,1),(56,11,5,5,'2022-10-26 07:05:05',0,1),(57,12,14,28,'2022-10-26 07:05:14',0,0),(58,12,3,3,'2022-10-26 07:05:22',0,1),(59,12,5,4,'2022-10-26 07:05:22',0,1),(60,12,5,5,'2022-10-26 07:05:22',0,1),(61,13,14,29,'2022-10-26 07:06:02',0,0),(62,13,3,3,'2022-10-26 07:06:10',0,1),(63,13,5,4,'2022-10-26 07:06:10',0,1),(64,13,5,5,'2022-10-26 07:06:10',0,1),(65,14,14,30,'2022-10-26 07:07:56',0,0),(66,14,3,3,'2022-10-26 07:08:03',0,1),(67,14,5,4,'2022-10-26 07:08:03',0,1),(68,14,5,5,'2022-10-26 07:08:03',0,1),(69,15,14,31,'2022-10-26 07:08:12',0,0),(70,15,3,3,'2022-10-26 07:08:19',0,1),(71,15,5,4,'2022-10-26 07:08:19',0,1),(72,15,5,5,'2022-10-26 07:08:19',0,1),(73,15,7,12,'2022-10-26 07:09:00',0,0),(74,15,11,14,'2022-10-26 07:09:14',0,0),(75,16,14,32,'2022-10-26 07:09:24',0,0),(76,16,3,3,'2022-10-26 07:09:31',0,1),(77,16,5,4,'2022-10-26 07:09:31',0,1),(78,16,5,5,'2022-10-26 07:09:31',0,1),(79,17,14,33,'2022-10-26 07:09:41',0,0),(80,17,3,3,'2022-10-26 07:09:49',0,1),(81,17,5,4,'2022-10-26 07:09:49',0,1),(82,17,5,5,'2022-10-26 07:09:49',0,1),(83,17,7,11,'2022-10-26 07:10:30',0,0),(84,17,11,13,'2022-10-26 07:10:44',0,0),(85,17,13,15,'2022-10-26 07:10:50',0,0),(86,18,14,34,'2022-10-26 07:12:37',0,0),(87,18,3,3,'2022-10-26 07:12:44',0,1),(88,18,5,4,'2022-10-26 07:12:44',0,1),(89,18,5,5,'2022-10-26 07:12:44',0,1),(90,19,14,35,'2022-10-26 07:13:10',0,0),(91,19,3,3,'2022-10-26 07:13:17',0,1),(92,19,5,6,'2022-10-26 07:13:17',0,1),(93,19,7,12,'2022-10-26 07:13:59',0,0);
/*!40000 ALTER TABLE `stage_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_page_settings`
--

DROP TABLE IF EXISTS `static_page_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_page_settings` (
  `static_page_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)',
  UNIQUE KEY `static_page_settings_pkey` (`static_page_id`,`locale`,`setting_name`),
  KEY `static_page_settings_static_page_id` (`static_page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_page_settings`
--

LOCK TABLES `static_page_settings` WRITE;
/*!40000 ALTER TABLE `static_page_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `static_page_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_pages`
--

DROP TABLE IF EXISTS `static_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_pages` (
  `static_page_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  PRIMARY KEY (`static_page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_pages`
--

LOCK TABLES `static_pages` WRITE;
/*!40000 ALTER TABLE `static_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `static_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subeditor_submission_group`
--

DROP TABLE IF EXISTS `subeditor_submission_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subeditor_submission_group` (
  `context_id` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  UNIQUE KEY `section_editors_pkey` (`context_id`,`assoc_id`,`assoc_type`,`user_id`),
  KEY `subeditor_submission_group_context_id` (`context_id`),
  KEY `subeditor_submission_group_user_id` (`user_id`),
  KEY `subeditor_submission_group_assoc_id` (`assoc_id`,`assoc_type`),
  CONSTRAINT `section_editors_context_id` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE,
  CONSTRAINT `subeditor_submission_group_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subeditor_submission_group`
--

LOCK TABLES `subeditor_submission_group` WRITE;
/*!40000 ALTER TABLE `subeditor_submission_group` DISABLE KEYS */;
INSERT INTO `subeditor_submission_group` VALUES (1,1,530,4),(1,1,530,5),(1,2,530,6);
/*!40000 ALTER TABLE `subeditor_submission_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_comments`
--

DROP TABLE IF EXISTS `submission_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_comments` (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment_type` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  `comment_title` text NOT NULL,
  `comments` text,
  `date_posted` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `viewable` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `submission_comments_submission_id` (`submission_id`),
  KEY `submission_comments_author_id` (`author_id`),
  CONSTRAINT `submission_comments_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `submission_comments_submission_id` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`submission_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_comments`
--

LOCK TABLES `submission_comments` WRITE;
/*!40000 ALTER TABLE `submission_comments` DISABLE KEYS */;
INSERT INTO `submission_comments` VALUES (1,1,4096,7,10,8,'','<p>Here are my review comments</p>','2022-10-26 07:02:00',NULL,1),(2,1,4096,10,15,9,'','<p>Here are my review comments</p>','2022-10-26 07:04:33',NULL,1),(3,1,4096,10,16,10,'','<p>Here are my review comments</p>','2022-10-26 07:04:45',NULL,1),(4,1,4096,13,19,7,'','<p>Here are my review comments</p>','2022-10-26 07:06:57',NULL,1),(5,1,4096,13,20,9,'','<p>Here are my review comments</p>','2022-10-26 07:07:08',NULL,1),(6,1,4096,13,21,10,'','<p>Here are my review comments</p>','2022-10-26 07:07:20',NULL,1);
/*!40000 ALTER TABLE `submission_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_file_revisions`
--

DROP TABLE IF EXISTS `submission_file_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_file_revisions` (
  `revision_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `submission_file_id` bigint(20) unsigned NOT NULL,
  `file_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`revision_id`),
  KEY `submission_file_revisions_submission_file_id` (`submission_file_id`),
  KEY `submission_file_revisions_file_id` (`file_id`),
  CONSTRAINT `submission_file_revisions_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`file_id`) ON DELETE CASCADE,
  CONSTRAINT `submission_file_revisions_submission_file_id_foreign` FOREIGN KEY (`submission_file_id`) REFERENCES `submission_files` (`submission_file_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_file_revisions`
--

LOCK TABLES `submission_file_revisions` WRITE;
/*!40000 ALTER TABLE `submission_file_revisions` DISABLE KEYS */;
INSERT INTO `submission_file_revisions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,3),(6,6,4),(7,7,4),(8,8,5),(9,9,6),(10,10,6),(11,11,7),(12,12,7),(13,13,8),(14,14,8),(15,15,9),(16,16,10),(17,17,10),(18,18,11),(19,19,11),(20,20,12),(21,21,13),(22,22,13),(23,23,14),(24,24,14),(25,25,15),(26,26,16),(27,27,16),(28,28,17),(29,29,18),(30,30,18),(31,31,19),(32,32,20),(33,33,21),(34,34,21);
/*!40000 ALTER TABLE `submission_file_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_file_settings`
--

DROP TABLE IF EXISTS `submission_file_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_file_settings` (
  `submission_file_id` bigint(20) unsigned NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  `setting_type` varchar(6) NOT NULL DEFAULT 'string' COMMENT '(bool|int|float|string|object|date)',
  UNIQUE KEY `submission_file_settings_pkey` (`submission_file_id`,`locale`,`setting_name`),
  KEY `submission_file_settings_submission_file_id` (`submission_file_id`),
  CONSTRAINT `submission_file_settings_submission_file_id_foreign` FOREIGN KEY (`submission_file_id`) REFERENCES `submission_files` (`submission_file_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_file_settings`
--

LOCK TABLES `submission_file_settings` WRITE;
/*!40000 ALTER TABLE `submission_file_settings` DISABLE KEYS */;
INSERT INTO `submission_file_settings` VALUES (1,'en_US','name','Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf','string'),(2,'en_US','name','Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf','string'),(3,'en_US','name','article.pdf','string'),(3,'fr_CA','name','','string'),(4,'en_US','name','The influence of lactation on the quantity and quality of cashmere production.pdf','string'),(5,'en_US','name','The influence of lactation on the quantity and quality of cashmere production.pdf','string'),(6,'en_US','name','The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf','string'),(7,'en_US','name','The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf','string'),(8,'en_US','name','Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice.pdf','string'),(9,'en_US','name','Genetic transformation of forest trees.pdf','string'),(10,'en_US','name','Genetic transformation of forest trees.pdf','string'),(11,'en_US','name','Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement.pdf','string'),(12,'en_US','name','Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement.pdf','string'),(13,'en_US','name','Developing efficacy beliefs in the classroom.pdf','string'),(14,'en_US','name','Developing efficacy beliefs in the classroom.pdf','string'),(15,'en_US','name','Traditions and Trends in the Study of the Commons.pdf','string'),(16,'en_US','name','Hansen & Pinto: Reason Reclaimed.pdf','string'),(17,'en_US','name','Hansen & Pinto: Reason Reclaimed.pdf','string'),(18,'en_US','name','Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf','string'),(19,'en_US','name','Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf','string'),(20,'en_US','name','Learning Sustainable Design through Service.pdf','string'),(21,'en_US','name','Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf','string'),(22,'en_US','name','Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf','string'),(23,'en_US','name','Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf','string'),(24,'en_US','name','Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf','string'),(25,'en_US','name','Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua.pdf','string'),(26,'en_US','name','Yam diseases and its management in Nigeria.pdf','string'),(27,'en_US','name','Yam diseases and its management in Nigeria.pdf','string'),(28,'en_US','name','Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat.pdf','string'),(29,'en_US','name','Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf','string'),(30,'en_US','name','Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf','string'),(31,'en_US','name','article.pdf','string'),(31,'fr_CA','name','','string'),(32,'en_US','name','Self-Organization in Multi-Level Institutions in Networked Environments.pdf','string'),(33,'en_US','name','Finocchiaro: Arguments About Arguments.pdf','string'),(34,'en_US','name','Finocchiaro: Arguments About Arguments.pdf','string');
/*!40000 ALTER TABLE `submission_file_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_files`
--

DROP TABLE IF EXISTS `submission_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_files` (
  `submission_file_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) NOT NULL,
  `file_id` bigint(20) unsigned NOT NULL,
  `source_submission_file_id` bigint(20) unsigned DEFAULT NULL,
  `genre_id` bigint(20) DEFAULT NULL,
  `file_stage` bigint(20) NOT NULL,
  `direct_sales_price` varchar(255) DEFAULT NULL,
  `sales_type` varchar(255) DEFAULT NULL,
  `viewable` smallint(6) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `uploader_user_id` bigint(20) DEFAULT NULL,
  `assoc_type` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`submission_file_id`),
  KEY `submission_files_submission_id` (`submission_id`),
  KEY `submission_files_file_id` (`file_id`),
  KEY `submission_files_genre_id` (`genre_id`),
  KEY `submission_files_uploader_user_id` (`uploader_user_id`),
  KEY `submission_files_stage_assoc` (`file_stage`,`assoc_type`,`assoc_id`),
  KEY `submission_files_source_submission_file_id` (`source_submission_file_id`),
  CONSTRAINT `submission_files_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`file_id`) ON DELETE CASCADE,
  CONSTRAINT `submission_files_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`) ON DELETE SET NULL,
  CONSTRAINT `submission_files_source_submission_file_id_foreign` FOREIGN KEY (`source_submission_file_id`) REFERENCES `submission_files` (`submission_file_id`) ON DELETE CASCADE,
  CONSTRAINT `submission_files_submission_id` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`submission_id`) ON DELETE CASCADE,
  CONSTRAINT `submission_files_uploader_user_id_foreign` FOREIGN KEY (`uploader_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_files`
--

LOCK TABLES `submission_files` WRITE;
/*!40000 ALTER TABLE `submission_files` DISABLE KEYS */;
INSERT INTO `submission_files` VALUES (1,1,1,NULL,1,2,NULL,NULL,NULL,'2022-10-26 06:52:59','2022-10-26 06:53:00',17,NULL,NULL),(2,1,1,1,1,4,NULL,NULL,NULL,'2022-10-26 06:53:14','2022-10-26 06:53:14',17,523,1),(3,1,2,NULL,1,10,NULL,NULL,NULL,'2022-10-26 06:54:28','2022-10-26 06:54:28',3,521,1),(4,2,3,NULL,1,2,NULL,NULL,NULL,'2022-10-26 06:56:27','2022-10-26 06:56:28',18,NULL,NULL),(5,2,3,4,1,4,NULL,NULL,NULL,'2022-10-26 06:56:43','2022-10-26 06:56:43',18,523,2),(6,3,4,NULL,1,2,NULL,NULL,NULL,'2022-10-26 06:57:27','2022-10-26 06:57:29',19,NULL,NULL),(7,3,4,6,1,4,NULL,NULL,NULL,'2022-10-26 06:57:43','2022-10-26 06:57:43',19,523,3),(8,4,5,NULL,1,2,NULL,NULL,NULL,'2022-10-26 06:58:24','2022-10-26 06:58:25',20,NULL,NULL),(9,5,6,NULL,1,2,NULL,NULL,NULL,'2022-10-26 06:58:44','2022-10-26 06:58:45',21,NULL,NULL),(10,5,6,9,1,4,NULL,NULL,NULL,'2022-10-26 06:59:00','2022-10-26 06:59:00',21,523,4),(11,6,7,NULL,1,2,NULL,NULL,NULL,'2022-10-26 06:59:59','2022-10-26 07:00:00',22,NULL,NULL),(12,6,7,11,1,4,NULL,NULL,NULL,'2022-10-26 07:00:16','2022-10-26 07:00:16',22,523,5),(13,7,8,NULL,1,2,NULL,NULL,NULL,'2022-10-26 07:01:10','2022-10-26 07:01:12',23,NULL,NULL),(14,7,8,13,1,4,NULL,NULL,NULL,'2022-10-26 07:01:26','2022-10-26 07:01:26',23,523,6),(15,8,9,NULL,1,2,NULL,NULL,NULL,'2022-10-26 07:02:13','2022-10-26 07:02:14',24,NULL,NULL),(16,9,10,NULL,1,2,NULL,NULL,NULL,'2022-10-26 07:02:33','2022-10-26 07:02:34',25,NULL,NULL),(17,9,10,16,1,4,NULL,NULL,NULL,'2022-10-26 07:02:49','2022-10-26 07:02:49',25,523,7),(18,10,11,NULL,1,2,NULL,NULL,NULL,'2022-10-26 07:03:49','2022-10-26 07:03:50',26,NULL,NULL),(19,10,11,18,1,4,NULL,NULL,NULL,'2022-10-26 07:04:06','2022-10-26 07:04:06',26,523,8),(20,11,12,NULL,1,2,NULL,NULL,NULL,'2022-10-26 07:04:57','2022-10-26 07:04:58',27,NULL,NULL),(21,12,13,NULL,1,2,NULL,NULL,NULL,'2022-10-26 07:05:16','2022-10-26 07:05:18',28,NULL,NULL),(22,12,13,21,1,4,NULL,NULL,NULL,'2022-10-26 07:05:35','2022-10-26 07:05:35',28,523,9),(23,13,14,NULL,1,2,NULL,NULL,NULL,'2022-10-26 07:06:05','2022-10-26 07:06:06',29,NULL,NULL),(24,13,14,23,1,4,NULL,NULL,NULL,'2022-10-26 07:06:24','2022-10-26 07:06:24',29,523,10),(25,14,15,NULL,1,2,NULL,NULL,NULL,'2022-10-26 07:07:58','2022-10-26 07:07:59',30,NULL,NULL),(26,15,16,NULL,1,2,NULL,NULL,NULL,'2022-10-26 07:08:14','2022-10-26 07:08:15',31,NULL,NULL),(27,15,16,26,1,4,NULL,NULL,NULL,'2022-10-26 07:08:33','2022-10-26 07:08:33',31,523,11),(28,16,17,NULL,1,2,NULL,NULL,NULL,'2022-10-26 07:09:26','2022-10-26 07:09:27',32,NULL,NULL),(29,17,18,NULL,1,2,NULL,NULL,NULL,'2022-10-26 07:09:43','2022-10-26 07:09:44',33,NULL,NULL),(30,17,18,29,1,4,NULL,NULL,NULL,'2022-10-26 07:10:03','2022-10-26 07:10:03',33,523,12),(31,17,19,NULL,1,10,NULL,NULL,NULL,'2022-10-26 07:10:57','2022-10-26 07:10:58',3,521,3),(32,18,20,NULL,1,2,NULL,NULL,NULL,'2022-10-26 07:12:39','2022-10-26 07:12:41',34,NULL,NULL),(33,19,21,NULL,1,2,NULL,NULL,NULL,'2022-10-26 07:13:12','2022-10-26 07:13:14',35,NULL,NULL),(34,19,21,33,1,4,NULL,NULL,NULL,'2022-10-26 07:13:31','2022-10-26 07:13:31',35,523,13);
/*!40000 ALTER TABLE `submission_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_search_keyword_list`
--

DROP TABLE IF EXISTS `submission_search_keyword_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_search_keyword_list` (
  `keyword_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `keyword_text` varchar(60) NOT NULL,
  PRIMARY KEY (`keyword_id`),
  UNIQUE KEY `submission_search_keyword_text` (`keyword_text`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_search_keyword_list`
--

LOCK TABLES `submission_search_keyword_list` WRITE;
/*!40000 ALTER TABLE `submission_search_keyword_list` DISABLE KEYS */;
INSERT INTO `submission_search_keyword_list` VALUES (1,'alan'),(89,'antibiotics'),(56,'antimicrobial'),(4,'cape'),(97,'cases'),(96,'clinical'),(80,'coli'),(62,'coliforms'),(75,'compared'),(93,'concentration'),(23,'conclusive'),(25,'conflicting'),(106,'conjugative'),(102,'consistent'),(43,'continuous'),(38,'corporate'),(42,'decisions'),(49,'development'),(90,'difference'),(41,'distribution'),(31,'dividend'),(10,'dividends'),(29,'economists'),(13,'empirical'),(107,'encoding'),(71,'enterobacteriacea'),(79,'escherichia'),(47,'evaluation'),(14,'evidence'),(34,'existing'),(74,'faeces'),(76,'fifteen'),(28,'financial'),(40,'financing'),(20,'firm'),(44,'function'),(18,'future'),(104,'group'),(32,'guidance'),(72,'healthy'),(57,'heavy'),(66,'hospital'),(73,'human'),(78,'identified'),(27,'implications'),(111,'infection'),(65,'infections'),(92,'inhibitory'),(46,'intuitive'),(39,'investment'),(36,'investors'),(7,'ipsum'),(68,'iran'),(67,'isfahan'),(63,'isolated'),(77,'isolates'),(24,'issue'),(54,'karbasizaed'),(82,'kelebsiella'),(12,'literature'),(6,'lorem'),(33,'management'),(58,'metal'),(98,'metals'),(94,'mic'),(91,'minimal'),(110,'multidrug-resistance'),(88,'multiple'),(2,'mwandenga'),(64,'nosocomial'),(22,'offer'),(105,'pattern'),(69,'patterns'),(85,'percent'),(101,'persons'),(60,'plasmid'),(83,'pneumoniae'),(26,'policy'),(87,'possess'),(35,'potential'),(30,'practical'),(48,'professional'),(61,'profile'),(70,'profiles'),(19,'prospects'),(21,'recent'),(108,'recovered'),(112,'region'),(103,'relationship'),(45,'rely'),(81,'remaining'),(59,'resistance'),(109,'results'),(11,'review'),(84,'seventy'),(37,'shareholding'),(17,'signal'),(15,'signaling'),(8,'signalling'),(99,'significant'),(50,'social'),(86,'strains'),(16,'suggests'),(55,'tehran'),(9,'theory'),(100,'tolerant'),(5,'town'),(51,'transformation'),(3,'university'),(53,'vajiheh'),(95,'values'),(52,'version');
/*!40000 ALTER TABLE `submission_search_keyword_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_search_object_keywords`
--

DROP TABLE IF EXISTS `submission_search_object_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_search_object_keywords` (
  `object_id` bigint(20) NOT NULL,
  `keyword_id` bigint(20) NOT NULL,
  `pos` int(11) NOT NULL COMMENT 'Word position of the keyword in the object.',
  UNIQUE KEY `submission_search_object_keywords_pkey` (`object_id`,`pos`),
  KEY `submission_search_object_keywords_object_id` (`object_id`),
  KEY `submission_search_object_keywords_keyword_id` (`keyword_id`),
  CONSTRAINT `submission_search_object_keywords_keyword_id` FOREIGN KEY (`keyword_id`) REFERENCES `submission_search_keyword_list` (`keyword_id`) ON DELETE CASCADE,
  CONSTRAINT `submission_search_object_keywords_object_id_foreign` FOREIGN KEY (`object_id`) REFERENCES `submission_search_objects` (`object_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_search_object_keywords`
--

LOCK TABLES `submission_search_object_keywords` WRITE;
/*!40000 ALTER TABLE `submission_search_object_keywords` DISABLE KEYS */;
INSERT INTO `submission_search_object_keywords` VALUES (9,1,0),(9,2,1),(9,3,2),(49,3,2),(9,4,3),(9,5,4),(9,6,5),(9,7,6),(10,8,0),(10,9,1),(11,9,1),(10,10,2),(11,10,3),(10,11,3),(10,12,4),(10,13,5),(11,13,9),(10,14,6),(11,14,10),(11,14,13),(11,15,0),(11,16,2),(11,17,4),(11,18,5),(11,19,6),(11,20,7),(11,21,8),(11,22,11),(11,23,12),(11,24,14),(11,25,15),(11,26,16),(11,26,22),(11,27,17),(11,28,18),(11,29,19),(11,30,20),(11,31,21),(11,31,37),(11,32,23),(11,33,24),(11,33,36),(11,34,25),(11,35,26),(51,35,85),(11,36,27),(11,37,28),(11,38,29),(11,39,30),(11,40,31),(11,41,32),(11,42,33),(11,42,38),(11,43,34),(11,44,35),(11,45,39),(11,46,40),(11,47,41),(13,48,0),(13,49,1),(13,50,2),(13,51,3),(49,53,0),(49,54,1),(49,55,3),(50,56,0),(51,56,0),(51,56,67),(50,57,1),(51,57,1),(51,57,51),(51,57,58),(51,57,74),(50,58,2),(51,58,2),(51,58,59),(50,59,3),(51,59,3),(51,59,34),(51,59,68),(51,59,73),(50,60,4),(51,60,5),(51,60,64),(51,60,71),(50,61,5),(51,61,65),(50,62,6),(51,62,7),(51,62,84),(50,63,7),(51,63,9),(51,63,29),(51,63,55),(51,63,79),(50,64,8),(51,64,10),(51,64,18),(51,64,30),(51,64,80),(51,64,86),(50,65,9),(51,65,11),(51,65,19),(51,65,31),(51,65,81),(50,66,10),(51,66,56),(50,67,11),(50,68,12),(51,69,4),(51,70,6),(51,71,8),(51,72,12),(51,72,38),(51,72,60),(51,73,13),(51,73,39),(51,74,14),(51,74,40),(51,74,50),(51,75,15),(51,75,36),(51,76,16),(51,77,17),(51,78,20),(51,79,21),(51,80,22),(51,81,23),(51,82,24),(51,83,25),(51,84,26),(51,85,27),(51,86,28),(51,86,37),(51,86,47),(51,86,54),(51,86,78),(51,87,32),(51,88,33),(51,89,35),(51,89,76),(51,90,41),(51,91,42),(51,92,43),(51,93,44),(51,94,45),(51,95,46),(51,96,48),(51,97,49),(51,98,52),(51,98,75),(51,99,53),(51,100,57),(51,101,61),(51,102,62),(51,103,63),(51,104,66),(51,105,69),(51,106,70),(51,107,72),(51,108,77),(51,109,82),(51,110,83),(51,111,87),(51,112,88);
/*!40000 ALTER TABLE `submission_search_object_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_search_objects`
--

DROP TABLE IF EXISTS `submission_search_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_search_objects` (
  `object_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) NOT NULL,
  `type` int(11) NOT NULL COMMENT 'Type of item. E.g., abstract, fulltext, etc.',
  `assoc_id` bigint(20) DEFAULT NULL COMMENT 'Optional ID of an associated record (e.g., a file_id)',
  PRIMARY KEY (`object_id`),
  KEY `submission_search_objects_submission_id` (`submission_id`),
  CONSTRAINT `submission_search_object_submission` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`submission_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_search_objects`
--

LOCK TABLES `submission_search_objects` WRITE;
/*!40000 ALTER TABLE `submission_search_objects` DISABLE KEYS */;
INSERT INTO `submission_search_objects` VALUES (9,1,1,0),(10,1,2,0),(11,1,4,0),(12,1,16,0),(13,1,17,0),(14,1,8,0),(15,1,32,0),(16,1,64,0),(49,17,1,0),(50,17,2,0),(51,17,4,0),(52,17,16,0),(53,17,17,0),(54,17,8,0),(55,17,32,0),(56,17,64,0);
/*!40000 ALTER TABLE `submission_search_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_settings`
--

DROP TABLE IF EXISTS `submission_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_settings` (
  `submission_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  UNIQUE KEY `submission_settings_pkey` (`submission_id`,`locale`,`setting_name`),
  KEY `submission_settings_submission_id` (`submission_id`),
  CONSTRAINT `submission_settings_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`submission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_settings`
--

LOCK TABLES `submission_settings` WRITE;
/*!40000 ALTER TABLE `submission_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `submission_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submissions`
--

DROP TABLE IF EXISTS `submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submissions` (
  `submission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `current_publication_id` bigint(20) DEFAULT NULL,
  `date_last_activity` datetime DEFAULT NULL,
  `date_submitted` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `stage_id` bigint(20) NOT NULL DEFAULT '1',
  `locale` varchar(14) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `submission_progress` smallint(6) NOT NULL DEFAULT '1',
  `work_type` smallint(6) DEFAULT '0',
  PRIMARY KEY (`submission_id`),
  KEY `submissions_context_id` (`context_id`),
  KEY `submissions_publication_id` (`current_publication_id`),
  CONSTRAINT `submissions_context_id` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE,
  CONSTRAINT `submissions_publication_id` FOREIGN KEY (`current_publication_id`) REFERENCES `publications` (`publication_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submissions`
--

LOCK TABLES `submissions` WRITE;
/*!40000 ALTER TABLE `submissions` DISABLE KEYS */;
INSERT INTO `submissions` VALUES (1,1,1,'2022-10-26 06:56:11','2022-10-26 06:53:04','2022-10-26 06:53:04',5,'en_US',3,0,0),(2,1,3,'2022-10-26 06:57:05','2022-10-26 06:56:32','2022-10-26 06:56:32',3,'en_US',1,0,0),(3,1,4,'2022-10-26 06:58:12','2022-10-26 06:57:32','2022-10-26 06:57:32',4,'en_US',1,0,0),(4,1,5,'2022-10-26 06:58:33','2022-10-26 06:58:32','2022-10-26 06:58:32',1,'en_US',1,0,0),(5,1,6,'2022-10-26 06:59:47','2022-10-26 06:58:49','2022-10-26 06:58:49',5,'en_US',1,0,0),(6,1,7,'2022-10-26 07:00:57','2022-10-26 07:00:04','2022-10-26 07:00:04',5,'en_US',1,0,0),(7,1,8,'2022-10-26 07:02:01','2022-10-26 07:01:15','2022-10-26 07:01:35',3,'en_US',1,0,0),(8,1,9,'2022-10-26 07:02:21','2022-10-26 07:02:21','2022-10-26 07:02:21',1,'en_US',1,0,0),(9,1,10,'2022-10-26 07:03:36','2022-10-26 07:02:37','2022-10-26 07:02:37',5,'en_US',1,0,0),(10,1,11,'2022-10-26 07:04:45','2022-10-26 07:03:54','2022-10-26 07:04:22',3,'en_US',1,0,0),(11,1,12,'2022-10-26 07:05:05','2022-10-26 07:05:05','2022-10-26 07:05:05',1,'en_US',1,0,0),(12,1,13,'2022-10-26 07:05:51','2022-10-26 07:05:22','2022-10-26 07:05:22',3,'en_US',1,0,0),(13,1,14,'2022-10-26 07:07:41','2022-10-26 07:06:10','2022-10-26 07:06:46',3,'en_US',1,0,0),(14,1,15,'2022-10-26 07:08:03','2022-10-26 07:08:03','2022-10-26 07:08:03',1,'en_US',1,0,0),(15,1,16,'2022-10-26 07:09:14','2022-10-26 07:08:19','2022-10-26 07:08:19',5,'en_US',1,0,0),(16,1,17,'2022-10-26 07:09:32','2022-10-26 07:09:31','2022-10-26 07:09:31',1,'en_US',1,0,0),(17,1,18,'2022-10-26 07:12:21','2022-10-26 07:09:48','2022-10-26 07:09:48',5,'en_US',3,0,0),(18,1,19,'2022-10-26 07:12:58','2022-10-26 07:12:44','2022-10-26 07:12:44',1,'en_US',4,0,0),(19,1,20,'2022-10-26 07:13:59','2022-10-26 07:13:17','2022-10-26 07:13:17',4,'en_US',1,0,0);
/*!40000 ALTER TABLE `submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_type_settings`
--

DROP TABLE IF EXISTS `subscription_type_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_type_settings` (
  `type_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `subscription_type_settings_pkey` (`type_id`,`locale`,`setting_name`),
  KEY `subscription_type_settings_type_id` (`type_id`),
  CONSTRAINT `subscription_type_settings_type_id` FOREIGN KEY (`type_id`) REFERENCES `subscription_types` (`type_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_type_settings`
--

LOCK TABLES `subscription_type_settings` WRITE;
/*!40000 ALTER TABLE `subscription_type_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription_type_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_types`
--

DROP TABLE IF EXISTS `subscription_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_types` (
  `type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `journal_id` bigint(20) NOT NULL,
  `cost` double(8,2) NOT NULL,
  `currency_code_alpha` varchar(3) NOT NULL,
  `duration` smallint(6) DEFAULT NULL,
  `format` smallint(6) NOT NULL,
  `institutional` smallint(6) NOT NULL DEFAULT '0',
  `membership` smallint(6) NOT NULL DEFAULT '0',
  `disable_public_display` smallint(6) NOT NULL,
  `seq` double(8,2) NOT NULL,
  PRIMARY KEY (`type_id`),
  KEY `subscription_types_journal_id` (`journal_id`),
  CONSTRAINT `subscription_types_journal_id` FOREIGN KEY (`journal_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_types`
--

LOCK TABLES `subscription_types` WRITE;
/*!40000 ALTER TABLE `subscription_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `subscription_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `journal_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `membership` varchar(40) DEFAULT NULL,
  `reference_number` varchar(40) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`subscription_id`),
  KEY `subscriptions_journal_id` (`journal_id`),
  KEY `subscriptions_user_id` (`user_id`),
  KEY `subscriptions_type_id` (`type_id`),
  CONSTRAINT `subscriptions_journal_id` FOREIGN KEY (`journal_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE,
  CONSTRAINT `subscriptions_type_id` FOREIGN KEY (`type_id`) REFERENCES `subscription_types` (`type_id`) ON DELETE CASCADE,
  CONSTRAINT `subscriptions_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporary_files`
--

DROP TABLE IF EXISTS `temporary_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temporary_files` (
  `file_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `file_name` varchar(90) NOT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `original_file_name` varchar(127) DEFAULT NULL,
  `date_uploaded` datetime NOT NULL,
  PRIMARY KEY (`file_id`),
  KEY `temporary_files_user_id` (`user_id`),
  CONSTRAINT `temporary_files_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporary_files`
--

LOCK TABLES `temporary_files` WRITE;
/*!40000 ALTER TABLE `temporary_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporary_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usage_stats_institution_temporary_records`
--

DROP TABLE IF EXISTS `usage_stats_institution_temporary_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usage_stats_institution_temporary_records` (
  `load_id` varchar(255) NOT NULL,
  `line_number` bigint(20) NOT NULL,
  `institution_id` bigint(20) NOT NULL,
  UNIQUE KEY `usitr_load_id_line_number_institution_id` (`load_id`,`line_number`,`institution_id`),
  KEY `usi_institution_id` (`institution_id`),
  CONSTRAINT `usi_institution_id_foreign` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`institution_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usage_stats_institution_temporary_records`
--

LOCK TABLES `usage_stats_institution_temporary_records` WRITE;
/*!40000 ALTER TABLE `usage_stats_institution_temporary_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `usage_stats_institution_temporary_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usage_stats_total_temporary_records`
--

DROP TABLE IF EXISTS `usage_stats_total_temporary_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usage_stats_total_temporary_records` (
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `line_number` bigint(20) NOT NULL,
  `canonical_url` varchar(255) NOT NULL,
  `issue_id` bigint(20) DEFAULT NULL,
  `issue_galley_id` bigint(20) DEFAULT NULL,
  `context_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) DEFAULT NULL,
  `representation_id` bigint(20) DEFAULT NULL,
  `submission_file_id` bigint(20) unsigned DEFAULT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `file_type` smallint(6) DEFAULT NULL,
  `country` varchar(2) NOT NULL DEFAULT '',
  `region` varchar(3) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `load_id` varchar(255) NOT NULL,
  KEY `usage_stats_total_temporary_records_issue_id` (`issue_id`),
  KEY `usage_stats_total_temporary_records_issue_galley_id` (`issue_galley_id`),
  KEY `usage_stats_total_temporary_records_context_id` (`context_id`),
  KEY `usage_stats_total_temporary_records_submission_id` (`submission_id`),
  KEY `usage_stats_total_temporary_records_representation_id` (`representation_id`),
  KEY `usage_stats_total_temporary_records_submission_file_id` (`submission_file_id`),
  CONSTRAINT `ust_context_id_foreign` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE,
  CONSTRAINT `ust_issue_galley_id_foreign` FOREIGN KEY (`issue_galley_id`) REFERENCES `issue_galleys` (`galley_id`) ON DELETE CASCADE,
  CONSTRAINT `ust_issue_id_foreign` FOREIGN KEY (`issue_id`) REFERENCES `issues` (`issue_id`) ON DELETE CASCADE,
  CONSTRAINT `ust_representation_id_foreign` FOREIGN KEY (`representation_id`) REFERENCES `publication_galleys` (`galley_id`) ON DELETE CASCADE,
  CONSTRAINT `ust_submission_file_id_foreign` FOREIGN KEY (`submission_file_id`) REFERENCES `submission_files` (`submission_file_id`) ON DELETE CASCADE,
  CONSTRAINT `ust_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`submission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usage_stats_total_temporary_records`
--

LOCK TABLES `usage_stats_total_temporary_records` WRITE;
/*!40000 ALTER TABLE `usage_stats_total_temporary_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `usage_stats_total_temporary_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usage_stats_unique_item_investigations_temporary_records`
--

DROP TABLE IF EXISTS `usage_stats_unique_item_investigations_temporary_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usage_stats_unique_item_investigations_temporary_records` (
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `line_number` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `representation_id` bigint(20) DEFAULT NULL,
  `submission_file_id` bigint(20) unsigned DEFAULT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `file_type` smallint(6) DEFAULT NULL,
  `country` varchar(2) NOT NULL DEFAULT '',
  `region` varchar(3) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `load_id` varchar(255) NOT NULL,
  KEY `usii_context_id` (`context_id`),
  KEY `usii_submission_id` (`submission_id`),
  KEY `usii_representation_id` (`representation_id`),
  KEY `usii_submission_file_id` (`submission_file_id`),
  CONSTRAINT `usii_context_id_foreign` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE,
  CONSTRAINT `usii_representation_id_foreign` FOREIGN KEY (`representation_id`) REFERENCES `publication_galleys` (`galley_id`) ON DELETE CASCADE,
  CONSTRAINT `usii_submission_file_id_foreign` FOREIGN KEY (`submission_file_id`) REFERENCES `submission_files` (`submission_file_id`) ON DELETE CASCADE,
  CONSTRAINT `usii_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`submission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usage_stats_unique_item_investigations_temporary_records`
--

LOCK TABLES `usage_stats_unique_item_investigations_temporary_records` WRITE;
/*!40000 ALTER TABLE `usage_stats_unique_item_investigations_temporary_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `usage_stats_unique_item_investigations_temporary_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usage_stats_unique_item_requests_temporary_records`
--

DROP TABLE IF EXISTS `usage_stats_unique_item_requests_temporary_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usage_stats_unique_item_requests_temporary_records` (
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `line_number` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `representation_id` bigint(20) DEFAULT NULL,
  `submission_file_id` bigint(20) unsigned DEFAULT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `file_type` smallint(6) DEFAULT NULL,
  `country` varchar(2) NOT NULL DEFAULT '',
  `region` varchar(3) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `load_id` varchar(255) NOT NULL,
  KEY `usir_context_id` (`context_id`),
  KEY `usir_submission_id` (`submission_id`),
  KEY `usir_representation_id` (`representation_id`),
  KEY `usir_submission_file_id` (`submission_file_id`),
  CONSTRAINT `usir_context_id_foreign` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE,
  CONSTRAINT `usir_representation_id_foreign` FOREIGN KEY (`representation_id`) REFERENCES `publication_galleys` (`galley_id`) ON DELETE CASCADE,
  CONSTRAINT `usir_submission_file_id_foreign` FOREIGN KEY (`submission_file_id`) REFERENCES `submission_files` (`submission_file_id`) ON DELETE CASCADE,
  CONSTRAINT `usir_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`submission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usage_stats_unique_item_requests_temporary_records`
--

LOCK TABLES `usage_stats_unique_item_requests_temporary_records` WRITE;
/*!40000 ALTER TABLE `usage_stats_unique_item_requests_temporary_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `usage_stats_unique_item_requests_temporary_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group_settings`
--

DROP TABLE IF EXISTS `user_group_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group_settings` (
  `user_group_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  UNIQUE KEY `user_group_settings_pkey` (`user_group_id`,`locale`,`setting_name`),
  KEY `user_group_settings_user_group_id` (`user_group_id`),
  CONSTRAINT `user_group_settings_user_group_id_foreign` FOREIGN KEY (`user_group_id`) REFERENCES `user_groups` (`user_group_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group_settings`
--

LOCK TABLES `user_group_settings` WRITE;
/*!40000 ALTER TABLE `user_group_settings` DISABLE KEYS */;
INSERT INTO `user_group_settings` VALUES (1,'en_US','name','Site Admin'),(1,'fr_CA','name','Administrateur-trice du site'),(2,'','abbrevLocaleKey','default.groups.abbrev.manager'),(2,'','nameLocaleKey','default.groups.name.manager'),(2,'en_US','abbrev','JM'),(2,'en_US','name','Journal manager'),(2,'fr_CA','abbrev','DIR'),(2,'fr_CA','name','Directeur-trice de la revue'),(3,'','abbrevLocaleKey','default.groups.abbrev.editor'),(3,'','nameLocaleKey','default.groups.name.editor'),(3,'en_US','abbrev','JE'),(3,'en_US','name','Journal editor'),(3,'fr_CA','abbrev','RÉD'),(3,'fr_CA','name','Rédacteur-trice'),(4,'','abbrevLocaleKey','default.groups.abbrev.productionEditor'),(4,'','nameLocaleKey','default.groups.name.productionEditor'),(4,'en_US','abbrev','ProdE'),(4,'en_US','name','Production editor'),(4,'fr_CA','abbrev','DirProd'),(4,'fr_CA','name','Directeur-trice de production'),(5,'','abbrevLocaleKey','default.groups.abbrev.sectionEditor'),(5,'','nameLocaleKey','default.groups.name.sectionEditor'),(5,'en_US','abbrev','SecE'),(5,'en_US','name','Section editor'),(5,'fr_CA','abbrev','RÉDRUB'),(5,'fr_CA','name','Rédacteur-trice de rubrique'),(6,'','abbrevLocaleKey','default.groups.abbrev.guestEditor'),(6,'','nameLocaleKey','default.groups.name.guestEditor'),(6,'en_US','abbrev','GE'),(6,'en_US','name','Guest editor'),(6,'fr_CA','abbrev','RÉDINV'),(6,'fr_CA','name','Rédacteur-trice invité-e'),(7,'','abbrevLocaleKey','default.groups.abbrev.copyeditor'),(7,'','nameLocaleKey','default.groups.name.copyeditor'),(7,'en_US','abbrev','CE'),(7,'en_US','name','Copyeditor'),(7,'fr_CA','abbrev','RÉV'),(7,'fr_CA','name','Réviseur-e'),(8,'','abbrevLocaleKey','default.groups.abbrev.designer'),(8,'','nameLocaleKey','default.groups.name.designer'),(8,'en_US','abbrev','Design'),(8,'en_US','name','Designer'),(8,'fr_CA','abbrev','Design'),(8,'fr_CA','name','Designer'),(9,'','abbrevLocaleKey','default.groups.abbrev.funding'),(9,'','nameLocaleKey','default.groups.name.funding'),(9,'en_US','abbrev','FC'),(9,'en_US','name','Funding coordinator'),(9,'fr_CA','abbrev','CF'),(9,'fr_CA','name','Coordonnateur-trice du financement'),(10,'','abbrevLocaleKey','default.groups.abbrev.indexer'),(10,'','nameLocaleKey','default.groups.name.indexer'),(10,'en_US','abbrev','IND'),(10,'en_US','name','Indexer'),(10,'fr_CA','abbrev','Indx'),(10,'fr_CA','name','Indexeur-e'),(11,'','abbrevLocaleKey','default.groups.abbrev.layoutEditor'),(11,'','nameLocaleKey','default.groups.name.layoutEditor'),(11,'en_US','abbrev','LE'),(11,'en_US','name','Layout Editor'),(11,'fr_CA','abbrev','RespMP'),(11,'fr_CA','name','Responsable de la mise en page'),(12,'','abbrevLocaleKey','default.groups.abbrev.marketing'),(12,'','nameLocaleKey','default.groups.name.marketing'),(12,'en_US','abbrev','MS'),(12,'en_US','name','Marketing and sales coordinator'),(12,'fr_CA','abbrev','CVM'),(12,'fr_CA','name','Coordonnateur-trice des ventes et du marketing'),(13,'','abbrevLocaleKey','default.groups.abbrev.proofreader'),(13,'','nameLocaleKey','default.groups.name.proofreader'),(13,'en_US','abbrev','PR'),(13,'en_US','name','Proofreader'),(13,'fr_CA','abbrev','CorEp'),(13,'fr_CA','name','Correcteur-trice d\'épreuves'),(14,'','abbrevLocaleKey','default.groups.abbrev.author'),(14,'','nameLocaleKey','default.groups.name.author'),(14,'en_US','abbrev','AU'),(14,'en_US','name','Author'),(14,'fr_CA','abbrev','AU'),(14,'fr_CA','name','Auteur-e'),(15,'','abbrevLocaleKey','default.groups.abbrev.translator'),(15,'','nameLocaleKey','default.groups.name.translator'),(15,'en_US','abbrev','Trans'),(15,'en_US','name','Translator'),(15,'fr_CA','abbrev','Trad'),(15,'fr_CA','name','Traducteur-trice'),(16,'','abbrevLocaleKey','default.groups.abbrev.externalReviewer'),(16,'','nameLocaleKey','default.groups.name.externalReviewer'),(16,'en_US','abbrev','R'),(16,'en_US','name','Reviewer'),(16,'fr_CA','abbrev','ÉVAL'),(16,'fr_CA','name','Évaluateur-trice'),(17,'','abbrevLocaleKey','default.groups.abbrev.reader'),(17,'','nameLocaleKey','default.groups.name.reader'),(17,'en_US','abbrev','Read'),(17,'en_US','name','Reader'),(17,'fr_CA','abbrev','Lect'),(17,'fr_CA','name','Lecteur-trice'),(18,'','abbrevLocaleKey','default.groups.abbrev.subscriptionManager'),(18,'','nameLocaleKey','default.groups.name.subscriptionManager'),(18,'en_US','abbrev','SubM'),(18,'en_US','name','Subscription Manager'),(18,'fr_CA','abbrev','RespAB'),(18,'fr_CA','name','Responsable des abonnements');
/*!40000 ALTER TABLE `user_group_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group_stage`
--

DROP TABLE IF EXISTS `user_group_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group_stage` (
  `context_id` bigint(20) NOT NULL,
  `user_group_id` bigint(20) NOT NULL,
  `stage_id` bigint(20) NOT NULL,
  UNIQUE KEY `user_group_stage_pkey` (`context_id`,`user_group_id`,`stage_id`),
  KEY `user_group_stage_context_id` (`context_id`),
  KEY `user_group_stage_user_group_id` (`user_group_id`),
  KEY `user_group_stage_stage_id` (`stage_id`),
  CONSTRAINT `user_group_stage_context_id` FOREIGN KEY (`context_id`) REFERENCES `journals` (`journal_id`) ON DELETE CASCADE,
  CONSTRAINT `user_group_stage_user_group_id` FOREIGN KEY (`user_group_id`) REFERENCES `user_groups` (`user_group_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group_stage`
--

LOCK TABLES `user_group_stage` WRITE;
/*!40000 ALTER TABLE `user_group_stage` DISABLE KEYS */;
INSERT INTO `user_group_stage` VALUES (1,3,1),(1,3,3),(1,3,4),(1,3,5),(1,4,4),(1,4,5),(1,5,1),(1,5,3),(1,5,4),(1,5,5),(1,6,1),(1,6,3),(1,6,4),(1,6,5),(1,7,4),(1,8,5),(1,9,1),(1,9,3),(1,10,5),(1,11,5),(1,12,4),(1,13,5),(1,14,1),(1,14,3),(1,14,4),(1,14,5),(1,15,1),(1,15,3),(1,15,4),(1,15,5),(1,16,3);
/*!40000 ALTER TABLE `user_group_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_groups` (
  `user_group_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `is_default` smallint(6) NOT NULL DEFAULT '0',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `permit_self_registration` smallint(6) NOT NULL DEFAULT '0',
  `permit_metadata_edit` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_group_id`),
  KEY `user_groups_user_group_id` (`user_group_id`),
  KEY `user_groups_context_id` (`context_id`),
  KEY `user_groups_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
INSERT INTO `user_groups` VALUES (1,0,1,1,1,0,0),(2,1,16,1,1,0,1),(3,1,16,1,1,0,1),(4,1,16,1,1,0,1),(5,1,17,1,1,0,1),(6,1,17,1,1,0,0),(7,1,4097,1,1,0,0),(8,1,4097,1,1,0,0),(9,1,4097,1,1,0,0),(10,1,4097,1,1,0,0),(11,1,4097,1,1,0,0),(12,1,4097,1,1,0,0),(13,1,4097,1,1,0,0),(14,1,65536,1,1,1,0),(15,1,65536,1,1,0,0),(16,1,4096,1,1,1,0),(17,1,1048576,1,1,1,0),(18,1,2097152,1,1,0,0);
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_interests`
--

DROP TABLE IF EXISTS `user_interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_interests` (
  `user_id` bigint(20) NOT NULL,
  `controlled_vocab_entry_id` bigint(20) NOT NULL,
  UNIQUE KEY `u_e_pkey` (`user_id`,`controlled_vocab_entry_id`),
  KEY `user_interests_user_id` (`user_id`),
  KEY `user_interests_controlled_vocab_entry_id` (`controlled_vocab_entry_id`),
  CONSTRAINT `user_interests_controlled_vocab_entry_id_foreign` FOREIGN KEY (`controlled_vocab_entry_id`) REFERENCES `controlled_vocab_entries` (`controlled_vocab_entry_id`) ON DELETE CASCADE,
  CONSTRAINT `user_interests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_interests`
--

LOCK TABLES `user_interests` WRITE;
/*!40000 ALTER TABLE `user_interests` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_settings` (
  `user_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  UNIQUE KEY `user_settings_pkey` (`user_id`,`locale`,`setting_name`),
  KEY `user_settings_user_id` (`user_id`),
  KEY `user_settings_locale_setting_name_index` (`setting_name`,`locale`),
  CONSTRAINT `user_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_settings`
--

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
INSERT INTO `user_settings` VALUES (1,'en_US','familyName','admin'),(1,'en_US','givenName','admin'),(2,'','orcid',''),(2,'en_US','affiliation','Universidad Nacional Autónoma de México'),(2,'en_US','biography',''),(2,'en_US','familyName','Vaca'),(2,'en_US','givenName','Ramiro'),(2,'en_US','preferredPublicName',''),(2,'en_US','signature',''),(2,'fr_CA','affiliation',''),(2,'fr_CA','biography',''),(2,'fr_CA','familyName',''),(2,'fr_CA','givenName',''),(2,'fr_CA','preferredPublicName',''),(2,'fr_CA','signature',''),(3,'','orcid',''),(3,'en_US','affiliation','University of Melbourne'),(3,'en_US','biography',''),(3,'en_US','familyName','Barnes'),(3,'en_US','givenName','Daniel'),(3,'en_US','preferredPublicName',''),(3,'en_US','signature',''),(3,'fr_CA','affiliation',''),(3,'fr_CA','biography',''),(3,'fr_CA','familyName',''),(3,'fr_CA','givenName',''),(3,'fr_CA','preferredPublicName',''),(3,'fr_CA','signature',''),(4,'','orcid',''),(4,'en_US','affiliation','University of Chicago'),(4,'en_US','biography',''),(4,'en_US','familyName','Buskins'),(4,'en_US','givenName','David'),(4,'en_US','preferredPublicName',''),(4,'en_US','signature',''),(4,'fr_CA','affiliation',''),(4,'fr_CA','biography',''),(4,'fr_CA','familyName',''),(4,'fr_CA','givenName',''),(4,'fr_CA','preferredPublicName',''),(4,'fr_CA','signature',''),(5,'','orcid',''),(5,'en_US','affiliation','University of Toronto'),(5,'en_US','biography',''),(5,'en_US','familyName','Berardo'),(5,'en_US','givenName','Stephanie'),(5,'en_US','preferredPublicName',''),(5,'en_US','signature',''),(5,'fr_CA','affiliation',''),(5,'fr_CA','biography',''),(5,'fr_CA','familyName',''),(5,'fr_CA','givenName',''),(5,'fr_CA','preferredPublicName',''),(5,'fr_CA','signature',''),(6,'','orcid',''),(6,'en_US','affiliation','Kyoto University'),(6,'en_US','biography',''),(6,'en_US','familyName','Inoue'),(6,'en_US','givenName','Minoti'),(6,'en_US','preferredPublicName',''),(6,'en_US','signature',''),(6,'fr_CA','affiliation',''),(6,'fr_CA','biography',''),(6,'fr_CA','familyName',''),(6,'fr_CA','givenName',''),(6,'fr_CA','preferredPublicName',''),(6,'fr_CA','signature',''),(7,'','orcid',''),(7,'en_US','affiliation','Utrecht University'),(7,'en_US','biography',''),(7,'en_US','familyName','Janssen'),(7,'en_US','givenName','Julie'),(7,'en_US','preferredPublicName',''),(7,'en_US','signature',''),(7,'fr_CA','affiliation',''),(7,'fr_CA','biography',''),(7,'fr_CA','familyName',''),(7,'fr_CA','givenName',''),(7,'fr_CA','preferredPublicName',''),(7,'fr_CA','signature',''),(8,'','orcid',''),(8,'en_US','affiliation','McGill University'),(8,'en_US','biography',''),(8,'en_US','familyName','Hudson'),(8,'en_US','givenName','Paul'),(8,'en_US','preferredPublicName',''),(8,'en_US','signature',''),(8,'fr_CA','affiliation',''),(8,'fr_CA','biography',''),(8,'fr_CA','familyName',''),(8,'fr_CA','givenName',''),(8,'fr_CA','preferredPublicName',''),(8,'fr_CA','signature',''),(9,'','orcid',''),(9,'en_US','affiliation','University of Manitoba'),(9,'en_US','biography',''),(9,'en_US','familyName','McCrae'),(9,'en_US','givenName','Aisla'),(9,'en_US','preferredPublicName',''),(9,'en_US','signature',''),(9,'fr_CA','affiliation',''),(9,'fr_CA','biography',''),(9,'fr_CA','familyName',''),(9,'fr_CA','givenName',''),(9,'fr_CA','preferredPublicName',''),(9,'fr_CA','signature',''),(10,'','orcid',''),(10,'en_US','affiliation','State University of New York'),(10,'en_US','biography',''),(10,'en_US','familyName','Gallego'),(10,'en_US','givenName','Adela'),(10,'en_US','preferredPublicName',''),(10,'en_US','signature',''),(10,'fr_CA','affiliation',''),(10,'fr_CA','biography',''),(10,'fr_CA','familyName',''),(10,'fr_CA','givenName',''),(10,'fr_CA','preferredPublicName',''),(10,'fr_CA','signature',''),(11,'','orcid',''),(11,'en_US','affiliation','Ghent University'),(11,'en_US','biography',''),(11,'en_US','familyName','Fritz'),(11,'en_US','givenName','Maria'),(11,'en_US','preferredPublicName',''),(11,'en_US','signature',''),(11,'fr_CA','affiliation',''),(11,'fr_CA','biography',''),(11,'fr_CA','familyName',''),(11,'fr_CA','givenName',''),(11,'fr_CA','preferredPublicName',''),(11,'fr_CA','signature',''),(12,'','orcid',''),(12,'en_US','affiliation','Universidad de Chile'),(12,'en_US','biography',''),(12,'en_US','familyName','Vogt'),(12,'en_US','givenName','Sarah'),(12,'en_US','preferredPublicName',''),(12,'en_US','signature',''),(12,'fr_CA','affiliation',''),(12,'fr_CA','biography',''),(12,'fr_CA','familyName',''),(12,'fr_CA','givenName',''),(12,'fr_CA','preferredPublicName',''),(12,'fr_CA','signature',''),(13,'','orcid',''),(13,'en_US','affiliation','Duke University'),(13,'en_US','biography',''),(13,'en_US','familyName','Cox'),(13,'en_US','givenName','Graham'),(13,'en_US','preferredPublicName',''),(13,'en_US','signature',''),(13,'fr_CA','affiliation',''),(13,'fr_CA','biography',''),(13,'fr_CA','familyName',''),(13,'fr_CA','givenName',''),(13,'fr_CA','preferredPublicName',''),(13,'fr_CA','signature',''),(14,'','orcid',''),(14,'en_US','affiliation','University of Cape Town'),(14,'en_US','biography',''),(14,'en_US','familyName','Hellier'),(14,'en_US','givenName','Stephen'),(14,'en_US','preferredPublicName',''),(14,'en_US','signature',''),(14,'fr_CA','affiliation',''),(14,'fr_CA','biography',''),(14,'fr_CA','familyName',''),(14,'fr_CA','givenName',''),(14,'fr_CA','preferredPublicName',''),(14,'fr_CA','signature',''),(15,'','orcid',''),(15,'en_US','affiliation','Imperial College London'),(15,'en_US','biography',''),(15,'en_US','familyName','Turner'),(15,'en_US','givenName','Catherine'),(15,'en_US','preferredPublicName',''),(15,'en_US','signature',''),(15,'fr_CA','affiliation',''),(15,'fr_CA','biography',''),(15,'fr_CA','familyName',''),(15,'fr_CA','givenName',''),(15,'fr_CA','preferredPublicName',''),(15,'fr_CA','signature',''),(16,'','orcid',''),(16,'en_US','affiliation','National University of Singapore'),(16,'en_US','biography',''),(16,'en_US','familyName','Kumar'),(16,'en_US','givenName','Sabine'),(16,'en_US','preferredPublicName',''),(16,'en_US','signature',''),(16,'fr_CA','affiliation',''),(16,'fr_CA','biography',''),(16,'fr_CA','familyName',''),(16,'fr_CA','givenName',''),(16,'fr_CA','preferredPublicName',''),(16,'fr_CA','signature',''),(17,'en_US','affiliation','University of Cape Town'),(17,'en_US','familyName','Mwandenga'),(17,'en_US','givenName','Alan'),(18,'en_US','affiliation','University of Bologna'),(18,'en_US','familyName','Corino'),(18,'en_US','givenName','Carlo'),(19,'en_US','affiliation','University of Windsor'),(19,'en_US','familyName','Kwantes'),(19,'en_US','givenName','Catherine'),(20,'en_US','affiliation','University of Alberta'),(20,'en_US','familyName','Montgomerie'),(20,'en_US','givenName','Craig'),(21,'en_US','affiliation','Alexandria University'),(21,'en_US','familyName','Diouf'),(21,'en_US','givenName','Diaga'),(22,'en_US','affiliation','University of Toronto'),(22,'en_US','familyName','Phillips'),(22,'en_US','givenName','Dana'),(23,'en_US','affiliation','University College Cork'),(23,'en_US','familyName','Sokoloff'),(23,'en_US','givenName','Domatilia'),(24,'en_US','affiliation','Indiana University'),(24,'en_US','familyName','Ostrom'),(24,'en_US','givenName','Elinor'),(25,'en_US','affiliation','University of Rome'),(25,'en_US','familyName','Paglieri'),(25,'en_US','givenName','Fabio'),(26,'en_US','affiliation','Aalborg University'),(26,'en_US','familyName','Novak'),(26,'en_US','givenName','John'),(27,'en_US','affiliation','Stanford University'),(27,'en_US','familyName','Al-Khafaji'),(27,'en_US','givenName','Karim'),(28,'en_US','affiliation','Australian National University'),(28,'en_US','familyName','Christopher'),(28,'en_US','givenName','Leo'),(29,'en_US','affiliation','University of Cape Town'),(29,'en_US','familyName','Kumiega'),(29,'en_US','givenName','Lise'),(30,'en_US','affiliation','University of Wolverhampton'),(30,'en_US','familyName','Daniel'),(30,'en_US','givenName','Patricia'),(31,'en_US','affiliation','University of Nairobi'),(31,'en_US','familyName','Baiyewu'),(31,'en_US','givenName','Rana'),(32,'en_US','affiliation','Barcelona University'),(32,'en_US','familyName','Rossi'),(32,'en_US','givenName','Rosanna'),(33,'en_US','affiliation','University of Tehran'),(33,'en_US','familyName','Karbasizaed'),(33,'en_US','givenName','Vajiheh'),(34,'en_US','affiliation','University of Windsor'),(34,'en_US','familyName','Williamson'),(34,'en_US','givenName','Valerie'),(35,'en_US','affiliation','CUNY'),(35,'en_US','familyName','Woods'),(35,'en_US','givenName','Zita');
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user_groups`
--

DROP TABLE IF EXISTS `user_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_user_groups` (
  `user_group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  UNIQUE KEY `user_user_groups_pkey` (`user_group_id`,`user_id`),
  KEY `user_user_groups_user_group_id` (`user_group_id`),
  KEY `user_user_groups_user_id` (`user_id`),
  CONSTRAINT `user_user_groups_user_group_id_foreign` FOREIGN KEY (`user_group_id`) REFERENCES `user_groups` (`user_group_id`) ON DELETE CASCADE,
  CONSTRAINT `user_user_groups_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user_groups`
--

LOCK TABLES `user_user_groups` WRITE;
/*!40000 ALTER TABLE `user_user_groups` DISABLE KEYS */;
INSERT INTO `user_user_groups` VALUES (1,1),(2,1),(2,2),(3,3),(5,4),(5,5),(5,6),(7,11),(7,12),(11,13),(11,14),(13,15),(13,16),(14,17),(14,18),(14,19),(14,20),(14,21),(14,22),(14,23),(14,24),(14,25),(14,26),(14,27),(14,28),(14,29),(14,30),(14,31),(14,32),(14,33),(14,34),(14,35),(16,7),(16,8),(16,9),(16,10),(17,17),(17,18),(17,19),(17,20),(17,21),(17,22),(17,23),(17,24),(17,25),(17,26),(17,27),(17,28),(17,29),(17,30),(17,31),(17,32),(17,33),(17,34),(17,35);
/*!40000 ALTER TABLE `user_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `url` varchar(2047) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `mailing_address` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `country` varchar(90) DEFAULT NULL,
  `locales` varchar(255) NOT NULL DEFAULT '[]',
  `gossip` text,
  `date_last_email` datetime DEFAULT NULL,
  `date_registered` datetime NOT NULL,
  `date_validated` datetime DEFAULT NULL,
  `date_last_login` datetime DEFAULT NULL,
  `must_change_password` smallint(6) DEFAULT NULL,
  `auth_id` bigint(20) DEFAULT NULL,
  `auth_str` varchar(255) DEFAULT NULL,
  `disabled` smallint(6) NOT NULL DEFAULT '0',
  `disabled_reason` text,
  `inline_help` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `users_username` (`username`),
  UNIQUE KEY `users_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2y$10$Sdg8MqRyLuGOhV6i2ZPNFua.db23PyBZn/8JzXgDf3JMnv/XZ/c5O','pkpadmin@mailinator.com',NULL,NULL,NULL,NULL,NULL,'[]',NULL,NULL,'2022-10-26 06:48:03',NULL,'2022-10-26 06:52:37',NULL,NULL,NULL,0,NULL,1),(2,'rvaca','$2y$10$fqB5zMUtOUXiYLVuY/5u/.rhrU/uxtDLCqRaCbCBRHAYZNNELsW.G','rvaca@mailinator.com','','','',NULL,'MX','[]',NULL,NULL,'2022-10-26 06:49:28',NULL,'2022-10-26 06:51:55',0,NULL,NULL,0,NULL,1),(3,'dbarnes','$2y$10$inJMdueJ4ptc0P2KrAwsD.6JF7PeA9Yu0puYl4cQOp3ji8LFnmlOC','dbarnes@mailinator.com','','','',NULL,'AU','[]',NULL,NULL,'2022-10-26 06:49:35',NULL,'2022-10-26 07:13:18',0,NULL,NULL,0,NULL,1),(4,'dbuskins','$2y$10$Gj856eQ0uNd3oBlL7nyrf.5v2eEOUHNxVzQ3OpM//tIfOQQW/YnWC','dbuskins@mailinator.com','','','',NULL,'US','[]',NULL,NULL,'2022-10-26 06:49:42',NULL,NULL,0,NULL,NULL,0,NULL,1),(5,'sberardo','$2y$10$067iQIgow8oCN/wzuzk9quSZcYZrUIYE.OGDp8UGCrjYe9j0HnJ8u','sberardo@mailinator.com','','','',NULL,'CA','[]',NULL,NULL,'2022-10-26 06:49:49',NULL,NULL,0,NULL,NULL,0,NULL,1),(6,'minoue','$2y$10$bdjtpQk/E7T0cMPlq5Xe.eGbnvJOcQ6.KCTcSayzNqoFcYew6yOzW','minoue@mailinator.com','','','',NULL,'JP','[]',NULL,NULL,'2022-10-26 06:49:57',NULL,'2022-10-26 06:56:55',0,NULL,NULL,0,NULL,1),(7,'jjanssen','$2y$10$y937E4mJNa5xy5JKi76AKO6C5tf3CD7Wev4e3X6WwGsa66oqVzs3i','jjanssen@mailinator.com','','','',NULL,'NL','[]',NULL,NULL,'2022-10-26 06:50:05',NULL,'2022-10-26 07:06:48',0,NULL,NULL,0,NULL,1),(8,'phudson','$2y$10$13hqildZRJHvNa8nL.KNiuvX7qlj.ygP96RwAhTy5weCRU6y2hlzK','phudson@mailinator.com','','','',NULL,'CA','[]',NULL,NULL,'2022-10-26 06:50:13',NULL,'2022-10-26 07:01:51',0,NULL,NULL,0,NULL,1),(9,'amccrae','$2y$10$bK7PEEMjep9HgaTOUgEDPeUnUcnBRMlgt/GQ45f9mBM7wrxJs9gH6','amccrae@mailinator.com','','','',NULL,'CA','[]',NULL,NULL,'2022-10-26 06:50:23',NULL,'2022-10-26 07:06:59',0,NULL,NULL,0,NULL,1),(10,'agallego','$2y$10$fJwYzVshY2iEM2rHpy8tnOdZLVxuQo2MwFQb7eZBAVBqxm5gWbFGy','agallego@mailinator.com','','','',NULL,'US','[]',NULL,NULL,'2022-10-26 06:50:32',NULL,'2022-10-26 07:07:10',0,NULL,NULL,0,NULL,1),(11,'mfritz','$2y$10$52HRuaOTvIRyR8KiINcQ3.aag/urEASRI4WNrThkPdi8.CNca6QSq','mfritz@mailinator.com','','','',NULL,'BE','[]',NULL,NULL,'2022-10-26 06:50:43',NULL,NULL,0,NULL,NULL,0,NULL,1),(12,'svogt','$2y$10$7743DjlCcqZ6zyeBhCHVyO62cjOlg.D3cAdP4b5Pc0MJxWXnfLLsi','svogt@mailinator.com','','','',NULL,'CL','[]',NULL,NULL,'2022-10-26 06:50:54',NULL,NULL,0,NULL,NULL,0,NULL,1),(13,'gcox','$2y$10$vWUq2W.dG3Q7bnfjILHt6OA/C0sl09IHMhK.X63cc3L9FVD6iudcO','gcox@mailinator.com','','','',NULL,'US','[]',NULL,NULL,'2022-10-26 06:51:05',NULL,NULL,0,NULL,NULL,0,NULL,1),(14,'shellier','$2y$10$bumSRXr4OU0cPOtZvyU34u2uCeBdY8cfHXQCkC7f0ftH10nUy8yau','shellier@mailinator.com','','','',NULL,'ZA','[]',NULL,NULL,'2022-10-26 06:51:17',NULL,NULL,0,NULL,NULL,0,NULL,1),(15,'cturner','$2y$10$975t6dAu0RB0BDeDzD3kr.uLiFDxnVJQW338ht7MaL/eAB7ssItCm','cturner@mailinator.com','','','',NULL,'GB','[]',NULL,NULL,'2022-10-26 06:51:31',NULL,NULL,0,NULL,NULL,0,NULL,1),(16,'skumar','$2y$10$w6Urd44ry1Blc5LHTBq.E.FAYCMZq/M1ZkRyDS28tR6MnEd7V015q','skumar@mailinator.com','','','',NULL,'SG','[]',NULL,NULL,'2022-10-26 06:51:44',NULL,NULL,0,NULL,NULL,0,NULL,1),(17,'amwandenga','$2y$10$dOCGnCxgZO6xN0cyn61qAOGSZ7JtRA.wzcEL2QB.dWIIChWXZ6dZW','amwandenga@mailinator.com',NULL,NULL,NULL,NULL,'ZA','[]',NULL,NULL,'2022-10-26 06:52:53',NULL,'2022-10-26 06:54:44',NULL,NULL,NULL,0,NULL,1),(18,'ccorino','$2y$10$9CUqjKHhbnYJtog5fTFe7uiolEoy9qepr/Gy5M5VTdQK0gvQn7eRO','ccorino@mailinator.com',NULL,NULL,NULL,NULL,'IT','[]',NULL,NULL,'2022-10-26 06:56:21',NULL,'2022-10-26 06:56:21',NULL,NULL,NULL,0,NULL,1),(19,'ckwantes','$2y$10$kWVzmNvCTD47l5egkBbkzOJgu9HA2pkhXJAfvdoEFh7A8JhikXRx6','ckwantes@mailinator.com',NULL,NULL,NULL,NULL,'CA','[]',NULL,NULL,'2022-10-26 06:57:21',NULL,'2022-10-26 06:57:22',NULL,NULL,NULL,0,NULL,1),(20,'cmontgomerie','$2y$10$x/NfkfpMKywsj73O9OXKB.r3DWzMrtahLBtouSftyZu1Uye0QiMt.','cmontgomerie@mailinator.com',NULL,NULL,NULL,NULL,'CA','[]',NULL,NULL,'2022-10-26 06:58:18',NULL,'2022-10-26 06:58:18',NULL,NULL,NULL,0,NULL,1),(21,'ddiouf','$2y$10$avag0oQ8bi6qPFbxhS52JOpLqgFXvWhFgYmJFfCvFOqKbsFuwn5w2','ddiouf@mailinator.com',NULL,NULL,NULL,NULL,'EG','[]',NULL,NULL,'2022-10-26 06:58:38',NULL,'2022-10-26 06:58:38',NULL,NULL,NULL,0,NULL,1),(22,'dphillips','$2y$10$lMDwy24ASK8PO3hiQg.tVu69J4aNJwAiMcBVginJVZZXrtmYm9aIO','dphillips@mailinator.com',NULL,NULL,NULL,NULL,'CA','[]',NULL,NULL,'2022-10-26 06:59:53',NULL,'2022-10-26 06:59:53',NULL,NULL,NULL,0,NULL,1),(23,'dsokoloff','$2y$10$9xP5cWvzpiXm/1d8oOMS9ejK3vDoc8WfGDUcgArOkam1JhB2DWhl.','dsokoloff@mailinator.com',NULL,NULL,NULL,NULL,'IE','[]',NULL,NULL,'2022-10-26 07:01:04',NULL,'2022-10-26 07:01:04',NULL,NULL,NULL,0,NULL,1),(24,'eostrom','$2y$10$6DAMa/La/Rkd57ZdFhJIg.QTEZLj4Rs5qGv07CSQaWxSsX/WyKn3y','eostrom@mailinator.com',NULL,NULL,NULL,NULL,'US','[]',NULL,NULL,'2022-10-26 07:02:07',NULL,'2022-10-26 07:02:07',NULL,NULL,NULL,0,NULL,1),(25,'fpaglieri','$2y$10$t0BTEKZoTrkc7wRbcRYTgeJtWORqGMkz3Xh0GNbeSGOG2boMEhWkO','fpaglieri@mailinator.com',NULL,NULL,NULL,NULL,'IT','[]',NULL,NULL,'2022-10-26 07:02:27',NULL,'2022-10-26 07:02:27',NULL,NULL,NULL,0,NULL,1),(26,'jnovak','$2y$10$Rz3BGw82drUekDNujvRbqOF7TUBFBBFuquadPdSbt85vf./1A5Pr2','jnovak@mailinator.com',NULL,NULL,NULL,NULL,'DK','[]',NULL,NULL,'2022-10-26 07:03:43',NULL,'2022-10-26 07:03:43',NULL,NULL,NULL,0,NULL,1),(27,'kalkhafaji','$2y$10$vQb7V3OiSdBagBbloLTGe.rWdN7KB3iwhJl7uzlxwYE/RHTxqZ2eS','kalkhafaji@mailinator.com',NULL,NULL,NULL,NULL,'US','[]',NULL,NULL,'2022-10-26 07:04:51',NULL,'2022-10-26 07:04:51',NULL,NULL,NULL,0,NULL,1),(28,'lchristopher','$2y$10$AAmow5GC2EUp4NfVnLRKgOvspcVx4CyOfTtjMP8VXhhktWlhG1oMq','lchristopher@mailinator.com',NULL,NULL,NULL,NULL,'AU','[]',NULL,NULL,'2022-10-26 07:05:11',NULL,'2022-10-26 07:05:11',NULL,NULL,NULL,0,NULL,1),(29,'lkumiega','$2y$10$4j5ND/XwbaalNS5ws8BMnuaAZkgsLj6dRmwkcGJ.PLJakH7IlGVxO','lkumiega@mailinator.com',NULL,NULL,NULL,NULL,'ZA','[]',NULL,NULL,'2022-10-26 07:05:59',NULL,'2022-10-26 07:05:59',NULL,NULL,NULL,0,NULL,1),(30,'pdaniel','$2y$10$ukrQ/Kqznkjz6LWOpezIv.eakro4uQ.1RHUbDnUbXf3aKET5cMeoC','pdaniel@mailinator.com',NULL,NULL,NULL,NULL,'GB','[]',NULL,NULL,'2022-10-26 07:07:52',NULL,'2022-10-26 07:07:52',NULL,NULL,NULL,0,NULL,1),(31,'rbaiyewu','$2y$10$MGt0F3dQop150Z1rs7bYtOn90sOdepHyeGlz3nnKNAwlFpvzmO26a','rbaiyewu@mailinator.com',NULL,NULL,NULL,NULL,'KE','[]',NULL,NULL,'2022-10-26 07:08:08',NULL,'2022-10-26 07:08:09',NULL,NULL,NULL,0,NULL,1),(32,'rrossi','$2y$10$.KEvvmBEBnm.P6ps6FPTCurg.rdfOmlTwacPOMois9QYM5C8LjigG','rrossi@mailinator.com',NULL,NULL,NULL,NULL,'ES','[]',NULL,NULL,'2022-10-26 07:09:20',NULL,'2022-10-26 07:09:20',NULL,NULL,NULL,0,NULL,1),(33,'vkarbasizaed','$2y$10$bYOv7cQyT4Sho2pDK3chs.yLA3D4XyuKlbtOQLIvPHroStYR64jFO','vkarbasizaed@mailinator.com',NULL,NULL,NULL,NULL,'IR','[]',NULL,NULL,'2022-10-26 07:09:37',NULL,'2022-10-26 07:09:37',NULL,NULL,NULL,0,NULL,1),(34,'vwilliamson','$2y$10$3Xlj24HrYznzk5xpjHap1e1j8vjVonE9DKkbDoT/8S8GO5QMOtMue','vwilliamson@mailinator.com',NULL,NULL,NULL,NULL,'CA','[]',NULL,NULL,'2022-10-26 07:12:33',NULL,'2022-10-26 07:12:33',NULL,NULL,NULL,0,NULL,1),(35,'zwoods','$2y$10$X/VJ7X77AcWpLK8f/3mdLuegJtXjlrtaSGrinXM9my74PP7ixPRTi','zwoods@mailinator.com',NULL,NULL,NULL,NULL,'US','[]',NULL,NULL,'2022-10-26 07:13:07',NULL,'2022-10-26 07:13:07',NULL,NULL,NULL,0,NULL,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `major` int(11) NOT NULL DEFAULT '0' COMMENT 'Major component of version number, e.g. the 2 in OJS 2.3.8-0',
  `minor` int(11) NOT NULL DEFAULT '0' COMMENT 'Minor component of version number, e.g. the 3 in OJS 2.3.8-0',
  `revision` int(11) NOT NULL DEFAULT '0' COMMENT 'Revision component of version number, e.g. the 8 in OJS 2.3.8-0',
  `build` int(11) NOT NULL DEFAULT '0' COMMENT 'Build component of version number, e.g. the 0 in OJS 2.3.8-0',
  `date_installed` datetime NOT NULL,
  `current` smallint(6) NOT NULL DEFAULT '0' COMMENT '1 iff the version entry being described is currently active. This permits the table to store past installation history for forensic purposes.',
  `product_type` varchar(30) DEFAULT NULL COMMENT 'Describes the type of product this row describes, e.g. "plugins.generic" (for a generic plugin) or "core" for the application itelf',
  `product` varchar(30) DEFAULT NULL COMMENT 'Uniquely identifies the product this version row describes, e.g. "ojs2" for OJS 2.x, "languageToggle" for the language toggle block plugin, etc.',
  `product_class_name` varchar(80) DEFAULT NULL COMMENT 'Specifies the class name associated with this product, for plugins, or the empty string where not applicable.',
  `lazy_load` smallint(6) NOT NULL DEFAULT '0' COMMENT '1 iff the row describes a lazy-load plugin; 0 otherwise',
  `sitewide` smallint(6) NOT NULL DEFAULT '0' COMMENT '1 iff the row describes a site-wide plugin; 0 otherwise',
  UNIQUE KEY `versions_pkey` (`product_type`,`product`,`major`,`minor`,`revision`,`build`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES (1,0,0,0,'2022-10-26 06:48:04',1,'plugins.metadata','dc11','',0,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.blocks','information','InformationBlockPlugin',1,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.blocks','developedBy','DevelopedByBlockPlugin',1,0),(1,0,1,0,'2022-10-26 06:48:04',1,'plugins.blocks','browse','BrowseBlockPlugin',1,0),(1,1,0,0,'2022-10-26 06:48:04',1,'plugins.blocks','subscription','SubscriptionBlockPlugin',1,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.blocks','makeSubmission','MakeSubmissionBlockPlugin',1,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.blocks','languageToggle','LanguageToggleBlockPlugin',1,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.gateways','resolver','',0,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.generic','recommendBySimilarity','RecommendBySimilarityPlugin',1,1),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.generic','dublinCoreMeta','DublinCoreMetaPlugin',1,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.generic','tinymce','TinyMCEPlugin',1,0),(1,0,1,0,'2022-10-26 06:48:04',1,'plugins.generic','pdfJsViewer','PdfJsViewerPlugin',1,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.generic','usageEvent','',0,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.generic','htmlArticleGalley','HtmlArticleGalleyPlugin',1,0),(1,0,1,0,'2022-10-26 06:48:04',1,'plugins.generic','lensGalley','LensGalleyPlugin',1,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.generic','webFeed','WebFeedPlugin',1,0),(0,1,0,0,'2022-10-26 06:48:04',1,'plugins.generic','citationStyleLanguage','CitationStyleLanguagePlugin',1,0),(1,2,0,0,'2022-10-26 06:48:04',1,'plugins.generic','customBlockManager','CustomBlockManagerPlugin',1,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.generic','announcementFeed','AnnouncementFeedPlugin',1,0),(3,0,0,0,'2022-10-26 06:48:04',1,'plugins.generic','crossref','',0,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.generic','googleAnalytics','GoogleAnalyticsPlugin',1,0),(1,3,0,0,'2022-10-26 06:48:04',1,'plugins.generic','acron','AcronPlugin',1,1),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.generic','driver','DRIVERPlugin',1,0),(1,2,0,0,'2022-10-26 06:48:04',1,'plugins.generic','orcidProfile','OrcidProfilePlugin',1,0),(1,2,0,0,'2022-10-26 06:48:04',1,'plugins.generic','staticPages','StaticPagesPlugin',1,0),(1,1,0,0,'2022-10-26 06:48:04',1,'plugins.generic','googleScholar','GoogleScholarPlugin',1,0),(2,0,0,0,'2022-10-26 06:48:04',1,'plugins.generic','datacite','',0,0),(1,0,0,1,'2022-10-26 06:48:04',1,'plugins.generic','recommendByAuthor','RecommendByAuthorPlugin',1,1),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.importexport','users','',0,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.importexport','pubmed','',0,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.importexport','native','',0,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.oaiMetadataFormats','dc','',0,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.oaiMetadataFormats','marcxml','',0,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.oaiMetadataFormats','marc','',0,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.oaiMetadataFormats','rfc1807','',0,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.paymethod','manual','',0,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.paymethod','paypal','',0,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.pubIds','urn','URNPubIdPlugin',1,0),(1,1,0,0,'2022-10-26 06:48:04',1,'plugins.reports','counterReport','',0,0),(2,0,0,0,'2022-10-26 06:48:04',1,'plugins.reports','reviewReport','',0,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.reports','articles','',0,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.reports','subscriptions','',0,0),(1,0,0,0,'2022-10-26 06:48:04',1,'plugins.themes','default','DefaultThemePlugin',1,0),(3,4,0,0,'2022-10-26 06:47:56',1,'core','ojs2','',0,1),(1,1,0,0,'2022-10-26 06:48:29',1,'plugins.importexport','doaj','',0,0);
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-26  7:14:02
