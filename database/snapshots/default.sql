
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

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hackathon` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hackathon`;
DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_09_07_091928_create_places_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES (1,'McDonalds','Stationsstraat 55','restaurant','\n                    <p>Op vertoon van je collegekaart 15% korting op de volgende producten:</p>\n                            \n                    <ul>\n                        <li>Lemonade</li>\n                        <li>Iced Fruit Smoothie</li>\n                        <li>Iced Frappé</li>\n                    </ul>\n                ','2017-09-07 07:24:37','2017-09-07 07:24:37'),(2,'Mockamore','De Diagonaal 3','coffee','\n                    <p>Op vertoon van je collegekaart 15% korting op de volgende producten:</p>\n                            \n                    <ul>\n                        <li>Koffie</li>\n                        <li>Thee</li>\n                        <li>Bagels</li>\n                    </ul>\n                ','2017-09-07 07:24:37','2017-09-07 07:24:37'),(3,'Pull & Bear','Citadel 27','clothing','\n                    <p>Op vertoon van je collegekaart 15% korting op de volgende producten:</p>\n                            \n                    <ul>\n                        <li>Casual wear</li>\n                        <li>Lounge wear</li>\n                        <li>Accesoires</li>\n                    </ul>\n                ','2017-09-07 07:24:37','2017-09-07 07:24:37'),(4,'Zara','Citadel 7','clothing','\n                    <p>Op vertoon van je collegekaart 15% korting op de volgende producten:</p>\n                            \n                    <ul>\n                        <li>Casual wear</li>\n                        <li>Lounge wear</li>\n                        <li>Accesoires</li>\n                    </ul>\n                ','2017-09-07 07:24:37','2017-09-07 07:24:37'),(5,'Coco Nails & Spa','Bankierbaan 48','beauty','\n                    <p>Op vertoon van je collegekaart &euro;5 korting op de volgende producten:</p>\n                            \n                    <ul>\n                        <li>Pedicure</li>\n                        <li>Nieuwe set acryl nagels</li>\n                      \n                    </ul>\n                ','2017-09-07 07:24:37','2017-09-07 07:24:37'),(6,'Anno','Grote Markt 121','restaurant','\n                    <p>Op vertoon van je collegekaart 10% korting op de volgende producten:</p>\n                            \n                    <ul>\n                        <li>Koffie</li>\n                        <li>Lunch</li>\n                        <li>Dessert</li>\n                    </ul>\n                ',NULL,NULL),(7,'Sport 2000','De Corridor 6','sport','\n                    <p>Op vertoon van je collegekaart 15% korting op de volgende producten:</p>\n                            \n                    <ul>\n                        <li>Hardloop gear</li>\n                        <li>Sneakers</li>\n                        <li>Voetbal accesoires</li>\n                    </ul>\n                ',NULL,NULL),(8,'Basic Fit','Donjon 9','sport','',NULL,NULL),(9,'Topstylist','Stadhuisstraat 11','beauty ','\n                    <p>Op vertoon van je collegekaart &euro;5 korting op de volgende producten:</p>\n                            \n                    <ul>\n                        <li>Knippen</li>\n                        <li>Haarverzorging</li>\n                        <li>Permanenten</li>\n                    </ul>\n                ',NULL,NULL);
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

