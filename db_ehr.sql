/*
SQLyog - Free MySQL GUI v5.19
Host - 5.0.15-nt : Database - db_blockchain_ehr_test
*********************************************************************
Server version : 5.0.15-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `db_blockchain_ehr_test`;

USE `db_blockchain_ehr_test`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `m_acess_control` */

DROP TABLE IF EXISTS `m_acess_control`;

CREATE TABLE `m_acess_control` (
  `ac_code` int(5) NOT NULL auto_increment,
  `f_code` int(5) NOT NULL,
  `dept_code` int(5) NOT NULL,
  `desig_code` int(5) NOT NULL,
  PRIMARY KEY  (`ac_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_acess_control` */

insert into `m_acess_control` (`ac_code`,`f_code`,`dept_code`,`desig_code`) values (1,1001,2,2);
insert into `m_acess_control` (`ac_code`,`f_code`,`dept_code`,`desig_code`) values (2,1001,3,3);

/*Table structure for table `m_admin` */

DROP TABLE IF EXISTS `m_admin`;

CREATE TABLE `m_admin` (
  `id` int(5) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `adminid` varchar(20) NOT NULL,
  `address` varchar(50) default NULL,
  `phone` varchar(15) default NULL,
  `email` varchar(50) default NULL,
  PRIMARY KEY  (`id`,`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_admin` */

insert into `m_admin` (`id`,`name`,`password`,`adminid`,`address`,`phone`,`email`) values (1,'priya','admin','admin','BTM','9916876545','priya@dhsinformatics.com');

/*Table structure for table `m_audit_request` */

DROP TABLE IF EXISTS `m_audit_request`;

CREATE TABLE `m_audit_request` (
  `Req_id` int(10) NOT NULL auto_increment,
  `File_id` varchar(100) default NULL,
  `User_id` varchar(40) default NULL,
  PRIMARY KEY  (`Req_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_audit_request` */

insert into `m_audit_request` (`Req_id`,`File_id`,`User_id`) values (1,'1001','1');

/*Table structure for table `m_auditlogin` */

DROP TABLE IF EXISTS `m_auditlogin`;

CREATE TABLE `m_auditlogin` (
  `id` int(5) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `auditid` varchar(20) NOT NULL,
  `address` varchar(50) default NULL,
  `phone` varchar(15) default NULL,
  `email` varchar(50) default NULL,
  PRIMARY KEY  (`id`,`auditid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_auditlogin` */

insert into `m_auditlogin` (`id`,`name`,`password`,`auditid`,`address`,`phone`,`email`) values (1,'anu','anu','anu','btm','9876545432','anu@gmail.com');

/*Table structure for table `m_cloud` */

DROP TABLE IF EXISTS `m_cloud`;

CREATE TABLE `m_cloud` (
  `c_id` int(10) NOT NULL auto_increment,
  `c_url` varchar(200) NOT NULL,
  `c_username` varchar(200) NOT NULL,
  `c_password` varchar(200) NOT NULL,
  `c_status` varchar(50) default NULL,
  `c_remarks` varchar(200) default NULL,
  PRIMARY KEY  (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_cloud` */

insert into `m_cloud` (`c_id`,`c_url`,`c_username`,`c_password`,`c_status`,`c_remarks`) values (1,'ftp://drivehq.com/cloud1','priyalitty','priyalitty','Active','First cloud space');
insert into `m_cloud` (`c_id`,`c_url`,`c_username`,`c_password`,`c_status`,`c_remarks`) values (2,'ftp://drivehq.com/cloud2','priyalitty','priyalitty','Active','Second Cloud Space');
insert into `m_cloud` (`c_id`,`c_url`,`c_username`,`c_password`,`c_status`,`c_remarks`) values (3,'ftp://drivehq.com/cloud3','priyalitty','priyalitty','Active','Third Cloud Space');
insert into `m_cloud` (`c_id`,`c_url`,`c_username`,`c_password`,`c_status`,`c_remarks`) values (4,'ftp://drivehq.com/cloud4','priyalitty','priyalitty','Active','Fourth Cloud Space');

/*Table structure for table `m_config` */

DROP TABLE IF EXISTS `m_config`;

CREATE TABLE `m_config` (
  `key_id` int(10) NOT NULL auto_increment,
  `key_date` varchar(100) NOT NULL,
  `public_key` blob NOT NULL,
  `master_s_key` blob NOT NULL,
  `des_secrete_key` blob,
  `no_of_clouds` int(10) default NULL,
  PRIMARY KEY  (`key_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_config` */

insert into `m_config` (`key_id`,`key_date`,`public_key`,`master_s_key`,`des_secrete_key`,`no_of_clouds`) values (2,'09-11-2018','¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0\0¢0Ÿ0\r	*†H†÷\r\0\00‰\0àûğS–s¥Ïâı5¬)STì¿}dªj‚ÅîŠù^¬’ß·°¬,d6˜ê-’jÎ!\'ùø—½ewğåR?}~AÕÜ—|\0ºş¢•ß.úFÚ\"—%5;&4ÅÓÕ§Êø.G-î\r—‹6\ZC8ƒ“Ì¼‰7À€v?\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0|0‚x\00\r	*†H†÷\r\0‚b0‚^\0\0àûğS–s¥Ïâı5¬)STì¿}dªj‚ÅîŠù^¬’ß·°¬,d6˜ê-’jÎ!\'ùø—½ewğåR?}~AÕÜ—|\0ºş¢•ß.úFÚ\"—%5;&4ÅÓÕ§Êø.G-î\r—‹6\ZC8ƒ“Ì¼‰7À€v?\0\0£ıüö²3ùx±‚ciBMúmMhòHÖq2ës9ĞXj~yİá¡(«sTasİ]ÔÕc¢J\\Ó9…\\F3Ó— õïò~`¸§Ğr÷2 SÑ]ê’ïõ<¯Ho®™òí™³uˆíQ‹WKëMH´ifâef6K¡A\0û&õQ|zANß$³rU5ŒCû»§\Z\ZX®åÚT<¿™—ÚÂˆ~‚DßÓi†ß[p/5ï‰šD{V¯{4\rµÆyA\0är8²é<ßäJªà7ùšyí%­6ò\"ovd\'\Z¾z+\'g?4ÇœßQÁå%|À/[~oĞºÄ‡m¸ß:öwA\0Çœ&s$(Ã\"U•­ê?NZgs”2\'¬ûûlŸÂIœ.nK+b™é‡Uã\0QÑ´†QNLbîòÚ-DdAA\0Êsï‹ÍğDA™Ğ_bt\n€*F£Ä ñ¸RÏ¹2n¡ãÕ’v\r­Ø¸“/Ödß¹`˜;I}¢Gºï\Z\nÓA@IÙá¿±İ9G„`|VKÙCÈ8Ì›å•Ê0t¤!\0,\rî8kêR5äŞi}ŠÑú[?–W’G,ìª^Ø„ñt\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE','¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0DESur\0[B¬óøTà\0\0xp\0\0\0]ã%¿2sQ1t\0RAW~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0SECRET',4);

/*Table structure for table `m_department` */

DROP TABLE IF EXISTS `m_department`;

CREATE TABLE `m_department` (
  `dept_code` int(10) NOT NULL auto_increment,
  `dept_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`dept_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_department` */

insert into `m_department` (`dept_code`,`dept_name`) values (1,'All');
insert into `m_department` (`dept_code`,`dept_name`) values (2,'IT');
insert into `m_department` (`dept_code`,`dept_name`) values (3,'Development');
insert into `m_department` (`dept_code`,`dept_name`) values (4,'Management');
insert into `m_department` (`dept_code`,`dept_name`) values (5,'Sales');
insert into `m_department` (`dept_code`,`dept_name`) values (6,'Finance');
insert into `m_department` (`dept_code`,`dept_name`) values (7,'Maintainance');
insert into `m_department` (`dept_code`,`dept_name`) values (8,'Marketing');

/*Table structure for table `m_designation` */

DROP TABLE IF EXISTS `m_designation`;

CREATE TABLE `m_designation` (
  `desig_code` int(10) NOT NULL auto_increment,
  `desig_name` varchar(100) NOT NULL,
  PRIMARY KEY  (`desig_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_designation` */

insert into `m_designation` (`desig_code`,`desig_name`) values (1,'All');
insert into `m_designation` (`desig_code`,`desig_name`) values (2,'Software Developer');
insert into `m_designation` (`desig_code`,`desig_name`) values (3,'Software Engineer');
insert into `m_designation` (`desig_code`,`desig_name`) values (4,'HR Marketing');
insert into `m_designation` (`desig_code`,`desig_name`) values (5,'HR Sales');
insert into `m_designation` (`desig_code`,`desig_name`) values (6,'HR Finance');
insert into `m_designation` (`desig_code`,`desig_name`) values (7,'Project Manager');
insert into `m_designation` (`desig_code`,`desig_name`) values (8,'Project Leader');

/*Table structure for table `m_file_upload` */

DROP TABLE IF EXISTS `m_file_upload`;

CREATE TABLE `m_file_upload` (
  `f_code` int(50) NOT NULL auto_increment,
  `f_name` varchar(100) NOT NULL,
  `f_type` varchar(50) NOT NULL,
  `f_upload_date` varchar(50) NOT NULL,
  `f_subject` varchar(200) NOT NULL,
  `cloud_id` int(50) NOT NULL,
  `owner_id` int(10) NOT NULL,
  `genesis_blk` varchar(80) default '0',
  `hash_tag` varchar(80) default NULL,
  `blkid` varchar(80) default NULL,
  `random_no` varchar(80) default NULL,
  PRIMARY KEY  (`f_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_file_upload` */

insert into `m_file_upload` (`f_code`,`f_name`,`f_type`,`f_upload_date`,`f_subject`,`cloud_id`,`owner_id`,`genesis_blk`,`hash_tag`,`blkid`,`random_no`) values (1001,'priyatest.txt','.txt','09-11-2018  15:52:36  15:52:36','javatest',4,1,'','c675dd3ddc9157b62fc12ba9e08628da','B1001.zip','0173');

/*Table structure for table `m_owner` */

DROP TABLE IF EXISTS `m_owner`;

CREATE TABLE `m_owner` (
  `id` int(5) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `ownerid` varchar(20) NOT NULL,
  `address` varchar(50) default NULL,
  `phone` varchar(15) default NULL,
  `email` varchar(50) default NULL,
  PRIMARY KEY  (`id`,`ownerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_owner` */

insert into `m_owner` (`id`,`name`,`password`,`ownerid`,`address`,`phone`,`email`) values (1,'priya','priya','priya','btm','9876545654','priya@dhsinformatics.com');

/*Table structure for table `m_transaction` */

DROP TABLE IF EXISTS `m_transaction`;

CREATE TABLE `m_transaction` (
  `t_no` int(10) NOT NULL auto_increment,
  `t_date` varchar(100) NOT NULL,
  `t_time` varchar(100) NOT NULL,
  `u_code` int(10) NOT NULL,
  `f_code` int(10) NOT NULL,
  `dept_code` int(10) NOT NULL,
  `design_code` int(10) NOT NULL,
  `t_status` varchar(50) default NULL,
  PRIMARY KEY  (`t_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_transaction` */

insert into `m_transaction` (`t_no`,`t_date`,`t_time`,`u_code`,`f_code`,`dept_code`,`design_code`,`t_status`) values (1,'09-11-2018','16:44:24',1,1001,2,2,'yes');

/*Table structure for table `m_user` */

DROP TABLE IF EXISTS `m_user`;

CREATE TABLE `m_user` (
  `u_code` int(10) NOT NULL auto_increment,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `dept_code` int(10) NOT NULL,
  `dept_code1` int(10) NOT NULL,
  `design_code` int(10) NOT NULL,
  `design_code1` int(10) NOT NULL,
  `u_address` varchar(200) NOT NULL,
  `u_city` varchar(100) default NULL,
  `u_cell` varchar(100) default NULL,
  `u_phone` bigint(20) default NULL,
  `u_email` varchar(100) default NULL,
  PRIMARY KEY  (`u_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_user` */

insert into `m_user` (`u_code`,`username`,`password`,`u_name`,`dept_code`,`dept_code1`,`design_code`,`design_code1`,`u_address`,`u_city`,`u_cell`,`u_phone`,`u_email`) values (1,'priyanka','priyanka','priyanka',2,3,2,3,'btm','blr','9876543234',9876543234,'priya@dhsinformatics.com');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
