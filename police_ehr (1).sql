/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 5.5.59 : Database - db_blockchain_ehr_test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_blockchain_ehr_test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_blockchain_ehr_test`;

/*Table structure for table `m_acess_control` */

DROP TABLE IF EXISTS `m_acess_control`;

CREATE TABLE `m_acess_control` (
  `ac_code` int(5) NOT NULL AUTO_INCREMENT,
  `f_code` int(5) NOT NULL,
  `dept_code` int(5) NOT NULL,
  `desig_code` int(5) NOT NULL,
  PRIMARY KEY (`ac_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `m_acess_control` */

insert  into `m_acess_control`(`ac_code`,`f_code`,`dept_code`,`desig_code`) values 
(1,1001,2,2),
(2,1001,3,3);

/*Table structure for table `m_admin` */

DROP TABLE IF EXISTS `m_admin`;

CREATE TABLE `m_admin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `adminid` varchar(20) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`,`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `m_admin` */

insert  into `m_admin`(`id`,`name`,`password`,`adminid`,`address`,`phone`,`email`) values 
(1,'priya','admin','admin','BTM','9916876545','priya@dhsinformatics.com');

/*Table structure for table `m_audit_request` */

DROP TABLE IF EXISTS `m_audit_request`;

CREATE TABLE `m_audit_request` (
  `Req_id` int(10) NOT NULL AUTO_INCREMENT,
  `File_id` varchar(100) DEFAULT NULL,
  `User_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Req_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `m_audit_request` */

insert  into `m_audit_request`(`Req_id`,`File_id`,`User_id`) values 
(1,'1001','1');

/*Table structure for table `m_auditlogin` */

DROP TABLE IF EXISTS `m_auditlogin`;

CREATE TABLE `m_auditlogin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `auditid` varchar(20) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`,`auditid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `m_auditlogin` */

insert  into `m_auditlogin`(`id`,`name`,`password`,`auditid`,`address`,`phone`,`email`) values 
(1,'anu','anu','anu','btm','9876545432','anu@gmail.com');

/*Table structure for table `m_cloud` */

DROP TABLE IF EXISTS `m_cloud`;

CREATE TABLE `m_cloud` (
  `c_id` int(10) NOT NULL AUTO_INCREMENT,
  `c_url` varchar(200) NOT NULL,
  `c_username` varchar(200) NOT NULL,
  `c_password` varchar(200) NOT NULL,
  `c_status` varchar(50) DEFAULT NULL,
  `c_remarks` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `m_cloud` */

insert  into `m_cloud`(`c_id`,`c_url`,`c_username`,`c_password`,`c_status`,`c_remarks`) values 
(1,'ftp://drivehq.com/cloud1','priyalitty','priyalitty','Active','First cloud space'),
(2,'ftp://drivehq.com/cloud2','priyalitty','priyalitty','Active','Second Cloud Space'),
(3,'ftp://drivehq.com/cloud3','priyalitty','priyalitty','Active','Third Cloud Space'),
(4,'ftp://drivehq.com/cloud4','priyalitty','priyalitty','Active','Fourth Cloud Space');

/*Table structure for table `m_config` */

DROP TABLE IF EXISTS `m_config`;

CREATE TABLE `m_config` (
  `key_id` int(10) NOT NULL AUTO_INCREMENT,
  `key_date` varchar(100) NOT NULL,
  `public_key` blob NOT NULL,
  `master_s_key` blob NOT NULL,
  `des_secrete_key` blob,
  `no_of_clouds` int(10) DEFAULT NULL,
  PRIMARY KEY (`key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `m_config` */

insert  into `m_config`(`key_id`,`key_date`,`public_key`,`master_s_key`,`des_secrete_key`,`no_of_clouds`) values 
(2,'09-11-2018','¨Ì\0sr\0java.security.KeyRepΩ˘O≥àö•C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¨Û¯T‡\0\0xp\0\0\0¢0Åü0\r	*ÜHÜ˜\r\0Åç\00ÅâÅÅ\0‡˚êSñs•èœ‚˝5¨ç)STÏø}êd™jÇ≈Óä˘^¨íﬂ∑∞¨,d6òÍ-íjŒ!\'˘¯óΩewÂR?}~A’‹ó|\0∫˛¢ïﬂ.˙F⁄\"ó%5;&4≈”’ß ¯.G-Ó\róã6\ZC8ÉìÃºâ7¿Äv?\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','¨Ì\0sr\0java.security.KeyRepΩ˘O≥àö•C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¨Û¯T‡\0\0xp\0\0|0Çx\00\r	*ÜHÜ˜\r\0Çb0Ç^\0ÅÅ\0‡˚êSñs•èœ‚˝5¨ç)STÏø}êd™jÇ≈Óä˘^¨íﬂ∑∞¨,d6òÍ-íjŒ!\'˘¯óΩewÂR?}~A’‹ó|\0∫˛¢ïﬂ.˙F⁄\"ó%5;&4≈”’ß ¯.G-Ó\róã6\ZC8ÉìÃºâ7¿Äv?\0ÅÅ\0£˝¸ùˆ≤3˘x±ÇciBM˙mMhÚH÷qç2Îs9–Xj~y›é·°(´sTas›]‘’c¢J\\”9Ö\\F3”óè†ıÔÚ~`∏ß–r˜2†S—]ÍíÔı<ØHoÆôÚÌô≥uàÌQãWKÎMHû¥if‚ef6K°A\0˚&ıQ|zANﬂ$≥rU5åC˚ªß\Z\ZXÆÂ⁄T<øôóê⁄¬à~ÇDﬂ”iÜﬂ[p/5ÔâöD{VØ{4\rµ∆yA\0‰r8≤È<ﬂ‰J™‡7˘öyÌ%≠6Ú\"ovd\'\Zæz+\'g?4«úﬂQ¡Â%|¿/[~o–∫ƒám∏ﬂ:ÅˆwA\0«ú&s$(√\"Uï≠Í?NZgsî2\'¨˚˚lü¬Iú.nK+bôÈáU„\0Q—¥ÜQNLbÓÚ⁄-DdAA\0 sÔãûÕDAô–_bt\nÄ*F£ƒ Ò∏Rœπ2n°„’ív\r≠ÿ∏ì/÷dﬂéπ`ò;I}¢G∫Ô\Z\n”A@IŸ·ø±›9GÑ`|VKŸC»8ÃõÂï 0t§!\0,\rÓ8kÍR5‰ﬁi}ä—˙[?ñWíG,Ï™^ÿÑÒt\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE','¨Ì\0sr\0java.security.KeyRepΩ˘O≥àö•C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0DESur\0[B¨Û¯T‡\0\0xp\0\0\0]„%ø2sQ1t\0RAW~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0SECRET',4);

/*Table structure for table `m_department` */

DROP TABLE IF EXISTS `m_department`;

CREATE TABLE `m_department` (
  `dept_code` int(10) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(50) NOT NULL,
  PRIMARY KEY (`dept_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `m_department` */

insert  into `m_department`(`dept_code`,`dept_name`) values 
(1,'All'),
(2,'IT'),
(3,'Development'),
(4,'Management'),
(5,'Sales'),
(6,'Finance'),
(7,'Maintainance'),
(8,'Marketing');

/*Table structure for table `m_designation` */

DROP TABLE IF EXISTS `m_designation`;

CREATE TABLE `m_designation` (
  `desig_code` int(10) NOT NULL AUTO_INCREMENT,
  `desig_name` varchar(100) NOT NULL,
  PRIMARY KEY (`desig_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `m_designation` */

insert  into `m_designation`(`desig_code`,`desig_name`) values 
(1,'All'),
(2,'Software Developer'),
(3,'Software Engineer'),
(4,'HR Marketing'),
(5,'HR Sales'),
(6,'HR Finance'),
(7,'Project Manager'),
(8,'Project Leader');

/*Table structure for table `m_file_upload` */

DROP TABLE IF EXISTS `m_file_upload`;

CREATE TABLE `m_file_upload` (
  `f_code` int(50) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(100) NOT NULL,
  `f_type` varchar(50) NOT NULL,
  `f_upload_date` varchar(50) NOT NULL,
  `f_subject` varchar(200) NOT NULL,
  `f_priority` varchar(10) NOT NULL,
  `cloud_id` int(50) NOT NULL,
  `owner_id` int(10) NOT NULL,
  `genesis_blk` varchar(80) DEFAULT '0',
  `hash_tag` varchar(80) DEFAULT NULL,
  `blkid` varchar(80) DEFAULT NULL,
  `random_no` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`f_code`)
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=latin1;

/*Data for the table `m_file_upload` */

insert  into `m_file_upload`(`f_code`,`f_name`,`f_type`,`f_upload_date`,`f_subject`,`f_priority`,`cloud_id`,`owner_id`,`genesis_blk`,`hash_tag`,`blkid`,`random_no`) values 
(1001,'accident .txt','.txt','01-05-2023  19:11:02  19:11:02','abc','High',3,1,'','e7b79e2a3858f89f2f5896ac7ed4abc0','B1001.zip','0809'),
(1002,'accident .txt','.txt','01-05-2023  19:12:45  19:12:45','ghnfg','High',1,1,'e7b79e2a3858f89f2f5896ac7ed4abc0','e7b79e2a3858f89f2f5896ac7ed4abc0','B1002.zip','0651'),
(1003,'accident .txt','.txt','01-05-2023  19:15:10  19:15:10','dfgdf','High',4,1,'e7b79e2a3858f89f2f5896ac7ed4abc0','e7b79e2a3858f89f2f5896ac7ed4abc0','B1003.zip','0578'),
(1004,'accident .txt','.txt','01-05-2023  19:16:49  19:16:49','ghnfg','Medium',3,1,'e7b79e2a3858f89f2f5896ac7ed4abc0','e7b79e2a3858f89f2f5896ac7ed4abc0','B1004.zip','0079');

/*Table structure for table `m_owner` */

DROP TABLE IF EXISTS `m_owner`;

CREATE TABLE `m_owner` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `ownerid` varchar(20) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`,`ownerid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `m_owner` */

insert  into `m_owner`(`id`,`name`,`password`,`ownerid`,`address`,`phone`,`email`) values 
(1,'priya','priya','priya','btm','9876545654','priya@dhsinformatics.com');

/*Table structure for table `m_priority` */

DROP TABLE IF EXISTS `m_priority`;

CREATE TABLE `m_priority` (
  `m_word` varchar(50) DEFAULT NULL,
  `m_priority` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_priority` */

insert  into `m_priority`(`m_word`,`m_priority`) values 
('Homicide',1),
('Murder',1),
('Manslaughter',1),
('Attempted murder',1),
('Assassination',1),
('Mass shooting',1),
('Bombing',1),
('Terrorism',1),
('Kidnapping',1),
('Hostage-taking',1),
('Hijacking',1),
('Extortion',1),
('Armed robbery',1),
('Carjacking',1),
('Arson',1),
('Sabotage',1),
('Espionage',1),
('Treason',1),
('Genocide',1),
('Ethnic cleansing',1),
('War crimes',1),
('Crimes against humanity',1),
('Human trafficking',1),
('Forced labor',1),
('Sexual slavery',1),
('Rape',1),
('Sexual assault',1),
('Child abuse',1),
('Child pornography',1),
('Child prostitution',1),
('Domestic violence',1),
('Honor killing',1),
('Acid attack',1),
('Female genital mutilation',1),
('Forced marriage',1),
('Forced abortion',1),
('Forced sterilization',1),
('Euthanasia',1),
('Assisted suicide',1),
('Organ trafficking',1),
('Bio-terrorism',1),
('Chemical warfare',1),
('Nuclear terrorism',1),
('Cyber terrorism',1),
('Money laundering',1),
('Drug trafficking',1),
('Arms trafficking',1),
('Money counterfeiting',1),
('Identity theft',1),
('Espionage',1),
('Assault causing grievous hurt',2),
('Attempt to murder',2),
('Rape',2),
('Molestation',2),
('Sexual harassment',2),
('Eve-teasing',2),
('Domestic violence',2),
('Stalking',2),
('Blackmail',2),
('Kidnapping',2),
('Abduction',2),
('Wrongful confinement',2),
('Criminal intimidation',2),
('Criminal breach of trust',2),
('Cheating',2),
('Forgery',2),
('Counterfeiting',2),
('Embezzlement',2),
('Theft',2),
('Burglary',2),
('Robbery',2),
('Dacoity',2),
('Cybercrime',2),
('Phishing',2),
('Identity theft',2),
('Credit card fraud',2),
('Bank fraud',2),
('Insurance fraud',2),
('Tax fraud',2),
('Money laundering',2),
('Possession of illegal weapons',2),
('Possession of stolen property',2),
('Possession of drugs',2),
('Drug trafficking',2),
('Prostitution',2),
('Solicitation',2),
('Obscenity',2),
('Gambling',2),
('Drunken driving',2),
('Traffic violations',2),
('Public nuisance',2),
('Defamation',2),
('Breach of copyright',2),
('Breach of privacy',2),
('Breach of confidentiality',2),
('Harassment',2),
('Trespassing',2),
('Vandalism',2),
('Environmental pollution',2),
('Animal cruelty',2),
('Verbal abuse',3),
('Threatening',3),
('Quarrel',3),
('Petty theft',3),
('Shoplifting',3),
('Pickpocketing',3),
('Panhandling',3),
('Loitering',3),
('Begging',3),
('Vagrancy',3),
('Disorderly conduct',3),
('Drunkenness',3),
('Public indecency',3),
('Nuisance',3),
('Noise pollution',3),
('Graffiti',3),
('Disturbance of peace',3),
('Trespassing',3),
('Unauthorized parking',3),
('Minor traffic violations',3),
('Jaywalking',3),
('Illegal parking',3),
('Disobedience of orders',3),
('Negligence',3),
('Misuse of property',3),
('Breach of contract',3),
('Rent default',3),
('Failure to pay debts',3),
('Failure to comply with regulations',3),
('Skipping bail',3),
('Public drunkenness',3),
('victim',2);

/*Table structure for table `m_transaction` */

DROP TABLE IF EXISTS `m_transaction`;

CREATE TABLE `m_transaction` (
  `t_no` int(10) NOT NULL AUTO_INCREMENT,
  `t_date` varchar(100) NOT NULL,
  `t_time` varchar(100) NOT NULL,
  `u_code` int(10) NOT NULL,
  `f_code` int(10) NOT NULL,
  `dept_code` int(10) NOT NULL,
  `design_code` int(10) NOT NULL,
  `t_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`t_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `m_transaction` */

insert  into `m_transaction`(`t_no`,`t_date`,`t_time`,`u_code`,`f_code`,`dept_code`,`design_code`,`t_status`) values 
(1,'09-11-2018','16:44:24',1,1001,2,2,'yes');

/*Table structure for table `m_user` */

DROP TABLE IF EXISTS `m_user`;

CREATE TABLE `m_user` (
  `u_code` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `dept_code` int(10) NOT NULL,
  `dept_code1` int(10) NOT NULL,
  `design_code` int(10) NOT NULL,
  `design_code1` int(10) NOT NULL,
  `u_address` varchar(200) NOT NULL,
  `u_city` varchar(100) DEFAULT NULL,
  `u_cell` varchar(100) DEFAULT NULL,
  `u_phone` bigint(20) DEFAULT NULL,
  `u_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`u_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `m_user` */

insert  into `m_user`(`u_code`,`username`,`password`,`u_name`,`dept_code`,`dept_code1`,`design_code`,`design_code1`,`u_address`,`u_city`,`u_cell`,`u_phone`,`u_email`) values 
(1,'priyanka','priyanka','priyanka',2,3,2,3,'btm','blr','9876543234',9876543234,'priya@dhsinformatics.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
