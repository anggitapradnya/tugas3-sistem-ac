/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.11-MariaDB-log : Database - db_kontrol_ac
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_kontrol_ac` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_kontrol_ac`;

/*Table structure for table `kontrol_ac` */

DROP TABLE IF EXISTS `kontrol_ac`;

CREATE TABLE `kontrol_ac` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suhu` float NOT NULL,
  `kelembaban` float NOT NULL,
  `hasil_status` varchar(50) DEFAULT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;

/*Data for the table `kontrol_ac` */

insert  into `kontrol_ac`(`id`,`suhu`,`kelembaban`,`hasil_status`,`waktu`) values 
(1,21,40,'AC Menyala Ringan','2024-09-30 07:21:33'),
(2,24,60,'AC Menyala Sedang','2024-09-30 18:44:48'),
(3,24,60,'AC Menyala Sedang','2024-09-30 18:52:37'),
(4,23,54,'AC Menyala Sedang','2024-09-30 18:53:06'),
(5,34,24,'AC Menyala Berat','2024-09-30 18:54:20'),
(6,34,22,'AC Menyala Berat','2024-09-30 18:59:10'),
(7,28,55,'AC Menyala Berat','2024-09-30 19:24:42'),
(8,25,55,'AC Menyala Sedang','2024-10-01 16:23:58'),
(9,20,45,'AC Menyala Rendah','2024-10-01 16:34:24'),
(10,20,45,'AC Menyala Rendah','2024-10-01 16:34:59'),
(11,23,43,'AC Menyala Sedang','2024-10-01 16:35:19'),
(12,20,40,'AC Menyala Rendah','2024-10-01 17:12:22'),
(13,23,44,'AC Menyala Sedang','2024-10-01 17:27:42'),
(14,20,40,'AC Menyala Rendah','2024-10-01 17:31:49'),
(15,20,40,'AC Menyala Rendah','2024-10-01 17:32:00'),
(16,20,40,'AC Menyala Rendah','2024-10-01 17:33:30'),
(17,20,45,'AC Menyala Rendah','2024-10-01 17:39:07'),
(18,40,32,'AC Menyala Sangat Berat','2024-10-01 17:48:26'),
(19,40,32,'AC Menyala Sangat Berat','2024-10-01 17:49:08'),
(20,40,32,'AC Menyala Sangat Berat','2024-10-01 17:53:49'),
(21,40,32,'AC Menyala Sangat Berat','2024-10-01 17:54:06'),
(22,40,32,'AC Menyala Sangat Berat','2024-10-01 17:55:01'),
(23,40,32,'AC Menyala Sangat Berat','2024-10-01 17:58:48'),
(24,27,55,'AC Menyala Sedang','2024-10-01 18:06:41'),
(25,40,50,'AC Menyala Sangat Berat','2024-10-01 18:50:01'),
(26,40,50,'AC Menyala Sangat Berat','2024-10-01 18:54:48'),
(27,100,100,'AC Menyala Sangat Berat','2024-10-01 19:42:43'),
(28,100,100,'AC Menyala Sangat Berat','2024-10-01 19:48:25'),
(29,100,100,'AC Menyala Sangat Berat','2024-10-01 19:55:45'),
(30,10,30,'AC Mati','2024-10-01 20:00:33'),
(31,22,150,'AC Menyala Berat','2024-10-01 20:02:36'),
(32,22,150,'AC Menyala Berat','2024-10-01 20:05:44'),
(33,22,150,'AC Menyala Berat','2024-10-01 20:17:45'),
(34,0,100,'AC Mati','2024-10-01 20:21:52'),
(35,22,34,'AC Menyala Sedang','2024-10-01 20:35:08'),
(36,21,35,'AC Menyala Rendah','2024-10-01 20:35:52'),
(37,31,22,'AC Menyala Sangat Tinggi','2024-10-01 20:36:13'),
(38,23,32,'AC Menyala Sedang','2024-10-01 20:36:28');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
