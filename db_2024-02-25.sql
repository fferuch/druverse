# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.4.27-MariaDB-1:10.4.27+maria~ubu2004-log)
# Database: db
# Generation Time: 2024-02-25 22:58:14 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table block_content_field_revision
# ------------------------------------------------------------

DROP TABLE IF EXISTS `block_content_field_revision`;

CREATE TABLE `block_content_field_revision` (
  `id` int(10) unsigned NOT NULL,
  `revision_id` int(10) unsigned NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  `revision_translation_affected` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision_id`,`langcode`),
  KEY `block_content__id__default_langcode__langcode` (`id`,`default_langcode`,`langcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='The revision data table for block_content entities.';

LOCK TABLES `block_content_field_revision` WRITE;
/*!40000 ALTER TABLE `block_content_field_revision` DISABLE KEYS */;

INSERT INTO `block_content_field_revision` (`id`, `revision_id`, `langcode`, `status`, `info`, `changed`, `default_langcode`, `revision_translation_affected`)
VALUES
	(1,1,'en',1,'Responsive left aligned',1708641412,1,1),
	(2,2,'en',1,'3 cols with icons',1708545729,1,1),
	(3,3,'en',1,'Features with title',1708547050,1,1),
	(4,4,'en',1,'Punny headline',1708547175,1,1),
	(3,5,'en',1,'Features with title',1708641353,1,1),
	(5,6,'en',1,'Contact Form Text',1708639119,1,1);

/*!40000 ALTER TABLE `block_content_field_revision` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
