/*
SQLyog Community v11.52 (64 bit)
MySQL - 5.7.15-log : Database - call_center
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`call_center` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `call_center`;

/*Table structure for table `call_records` */

DROP TABLE IF EXISTS `call_records`;

CREATE TABLE `call_records` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` int(5) NOT NULL,
  `record` varbinary(1024) NOT NULL,
  `date_registered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `duration` time NOT NULL,
  `type` enum('input','output') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_call_records` (`user_id`),
  CONSTRAINT `user_call_records` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `call_records` */

/*Table structure for table `rate` */

DROP TABLE IF EXISTS `rate`;

CREATE TABLE `rate` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` int(5) NOT NULL,
  `call_duration` time NOT NULL,
  `call_type` enum('input','output') NOT NULL,
  `pre_minit` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_paymant` (`user_id`),
  CONSTRAINT `user_paymant` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rate` */

/*Table structure for table `telephone_numbers` */

DROP TABLE IF EXISTS `telephone_numbers`;

CREATE TABLE `telephone_numbers` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `user_id` int(5) NOT NULL,
  `numbers` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_tel_number` (`user_id`),
  CONSTRAINT `user_tel_number` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `telephone_numbers` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `age` smallint(3) DEFAULT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(18) NOT NULL,
  `logo` varbinary(2560) DEFAULT NULL,
  `role` enum('admin','agent','company','qa') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`last_name`,`gender`,`age`,`email`,`password`,`logo`,`role`) values (1,'aram',NULL,'male',12,'asd','12',NULL,'admin'),(2,'karen',NULL,NULL,NULL,'5415','564',NULL,'admin');

/*Table structure for table `user_query` */

DROP TABLE IF EXISTS `user_query`;

CREATE TABLE `user_query` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `call_records_id` int(5) NOT NULL,
  `issue` text NOT NULL,
  `customer_name` varchar(15) DEFAULT NULL,
  `company_name` varchar(30) DEFAULT NULL,
  `status` enum('in proces','solved','resolved') NOT NULL,
  `service_rating` int(1) DEFAULT NULL,
  `qa_rate` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_querys` (`call_records_id`),
  CONSTRAINT `call_record` FOREIGN KEY (`call_records_id`) REFERENCES `call_records` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_query` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
