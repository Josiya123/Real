/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.9 : Database - realtime_face
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`realtime_face` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `realtime_face`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add family_friends',7,'add_family_friends'),
(26,'Can change family_friends',7,'change_family_friends'),
(27,'Can delete family_friends',7,'delete_family_friends'),
(28,'Can view family_friends',7,'view_family_friends'),
(29,'Can add login',8,'add_login'),
(30,'Can change login',8,'change_login'),
(31,'Can delete login',8,'delete_login'),
(32,'Can view login',8,'view_login'),
(33,'Can add set_message',9,'add_set_message'),
(34,'Can change set_message',9,'change_set_message'),
(35,'Can delete set_message',9,'delete_set_message'),
(36,'Can view set_message',9,'view_set_message'),
(37,'Can add visitors',10,'add_visitors'),
(38,'Can change visitors',10,'change_visitors'),
(39,'Can delete visitors',10,'delete_visitors'),
(40,'Can view visitors',10,'view_visitors'),
(41,'Can add user',11,'add_user'),
(42,'Can change user',11,'change_user'),
(43,'Can delete user',11,'delete_user'),
(44,'Can view user',11,'view_user'),
(45,'Can add complaints',12,'add_complaints'),
(46,'Can change complaints',12,'change_complaints'),
(47,'Can delete complaints',12,'delete_complaints'),
(48,'Can view complaints',12,'view_complaints');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `auth_user` */

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(2,'auth','permission'),
(3,'auth','group'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(6,'sessions','session'),
(7,'realtimeface_app','family_friends'),
(8,'realtimeface_app','login'),
(9,'realtimeface_app','set_message'),
(10,'realtimeface_app','visitors'),
(11,'realtimeface_app','user'),
(12,'realtimeface_app','complaints');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'contenttypes','0001_initial','2024-02-28 07:58:28.955872'),
(2,'auth','0001_initial','2024-02-28 07:58:29.364660'),
(3,'admin','0001_initial','2024-02-28 07:58:29.478612'),
(4,'admin','0002_logentry_remove_auto_add','2024-02-28 07:58:29.496257'),
(5,'admin','0003_logentry_add_action_flag_choices','2024-02-28 07:58:29.520174'),
(6,'contenttypes','0002_remove_content_type_name','2024-02-28 07:58:29.596386'),
(7,'auth','0002_alter_permission_name_max_length','2024-02-28 07:58:29.633554'),
(8,'auth','0003_alter_user_email_max_length','2024-02-28 07:58:29.678560'),
(9,'auth','0004_alter_user_username_opts','2024-02-28 07:58:29.696163'),
(10,'auth','0005_alter_user_last_login_null','2024-02-28 07:58:29.737513'),
(11,'auth','0006_require_contenttypes_0002','2024-02-28 07:58:29.747509'),
(12,'auth','0007_alter_validators_add_error_messages','2024-02-28 07:58:29.769241'),
(13,'auth','0008_alter_user_username_max_length','2024-02-28 07:58:29.811579'),
(14,'auth','0009_alter_user_last_name_max_length','2024-02-28 07:58:29.848121'),
(15,'auth','0010_alter_group_name_max_length','2024-02-28 07:58:29.883833'),
(16,'auth','0011_update_proxy_permissions','2024-02-28 07:58:29.906766'),
(17,'auth','0012_alter_user_first_name_max_length','2024-02-28 07:58:29.951410'),
(18,'realtimeface_app','0001_initial','2024-02-28 07:58:30.233211'),
(19,'sessions','0001_initial','2024-02-28 07:58:30.278749'),
(20,'realtimeface_app','0002_set_message_login','2024-04-02 06:11:08.574696');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `django_session` */

/*Table structure for table `realtimeface_app_complaints` */

DROP TABLE IF EXISTS `realtimeface_app_complaints`;

CREATE TABLE `realtimeface_app_complaints` (
  `complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `reply` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`complaint_id`),
  KEY `realtimeface_app_complaints_user_id_516578ba` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `realtimeface_app_complaints` */

insert  into `realtimeface_app_complaints`(`complaint_id`,`title`,`description`,`reply`,`date`,`user_id`) values 
(1,'camera','not recognize','ssss','11-2-2024',1),
(2,'camera','not recognize','pending','3-3-2024',2),
(3,'camera','not reg','pending','2024-03-26',1),
(4,'aaaa','sdddd','pending','2024-03-26',1);

/*Table structure for table `realtimeface_app_family_friends` */

DROP TABLE IF EXISTS `realtimeface_app_family_friends`;

CREATE TABLE `realtimeface_app_family_friends` (
  `family_friends_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(200) NOT NULL,
  `relation` varchar(200) NOT NULL,
  `image1` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`family_friends_id`),
  KEY `realtimeface_app_family_friends_user_id_92e1f797` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `realtimeface_app_family_friends` */

/*Table structure for table `realtimeface_app_login` */

DROP TABLE IF EXISTS `realtimeface_app_login`;

CREATE TABLE `realtimeface_app_login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `usertype` varchar(200) NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `realtimeface_app_login` */

insert  into `realtimeface_app_login`(`login_id`,`username`,`password`,`usertype`) values 
(1,'admin','admin','admin'),
(3,'user','user','user'),
(4,'merin2','merin@123','user'),
(9,'jositj','jo@123','user');

/*Table structure for table `realtimeface_app_set_message` */

DROP TABLE IF EXISTS `realtimeface_app_set_message`;

CREATE TABLE `realtimeface_app_set_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_type` varchar(200) NOT NULL,
  `message` varchar(200) NOT NULL,
  `login_id` int(11) NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `realtimeface_app_set_message_login_id_981720de` (`login_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `realtimeface_app_set_message` */

insert  into `realtimeface_app_set_message`(`message_id`,`message_type`,`message`,`login_id`) values 
(1,'nii','hji',1),
(2,'hhh','hgh',3),
(4,'dfd','fdf',3);

/*Table structure for table `realtimeface_app_user` */

DROP TABLE IF EXISTS `realtimeface_app_user`;

CREATE TABLE `realtimeface_app_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `place` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `home_status` varchar(200) NOT NULL,
  `login_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `realtimeface_app_user_login_id_bbce02b8` (`login_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `realtimeface_app_user` */

insert  into `realtimeface_app_user`(`user_id`,`fname`,`lname`,`place`,`phone`,`email`,`home_status`,`login_id`) values 
(1,'Fumiya','TH','Japan','9080789656','fumiya@2001','nill',3),
(2,'Chotta','Beam','Dolapoor','8907654321','chottabeam@342','no',2),
(3,'josiya','tj','gevi','7485963210','josiya4030@gmail.com','pending',9);

/*Table structure for table `realtimeface_app_visitors` */

DROP TABLE IF EXISTS `realtimeface_app_visitors`;

CREATE TABLE `realtimeface_app_visitors` (
  `visitors_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `date` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `family_friends_id` int(11) NOT NULL,
  PRIMARY KEY (`visitors_id`),
  KEY `realtimeface_app_visitors_family_friends_id_c12151ec` (`family_friends_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `realtimeface_app_visitors` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
