/*
SQLyog - Free MySQL GUI v5.19
Host - 5.5.29 : Database - db_police_ehr_test
*********************************************************************
Server version : 5.5.29
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `db_police_ehr_test`;

USE `db_police_ehr_test`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `m_acess_control` */

DROP TABLE IF EXISTS `m_acess_control`;

CREATE TABLE `m_acess_control` (
  `ac_code` int(5) NOT NULL AUTO_INCREMENT,
  `f_code` int(5) NOT NULL,
  `dept_code1` varchar(20) NOT NULL,
  `desig_code1` varchar(20) NOT NULL,
  PRIMARY KEY (`ac_code`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

/*Data for the table `m_acess_control` */

insert into `m_acess_control` (`ac_code`,`f_code`,`dept_code1`,`desig_code1`) values (45,1019,'5','7'),(46,1019,'2','3'),(47,1020,'2','3'),(48,1021,'4','4'),(49,1022,'2','3'),(50,1022,'5','7'),(51,1022,'2','2'),(52,1023,'2','2');

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

insert into `m_admin` (`id`,`name`,`password`,`adminid`,`address`,`phone`,`email`) values (1,'admin','admin','admin','BTM','9916876545','priya@dhsinformatics.com');

/*Table structure for table `m_audit_request` */

DROP TABLE IF EXISTS `m_audit_request`;

CREATE TABLE `m_audit_request` (
  `Req_id` int(10) NOT NULL AUTO_INCREMENT,
  `File_id` varchar(100) DEFAULT NULL,
  `User_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Req_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `m_audit_request` */

insert into `m_audit_request` (`Req_id`,`File_id`,`User_id`) values (1,'1001','1'),(2,'1005','8'),(3,'','19'),(4,'1023','24'),(5,'1023','24');

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

insert into `m_auditlogin` (`id`,`name`,`password`,`auditid`,`address`,`phone`,`email`) values (1,'anu','anu','anu','btm','9876545432','anu@gmail.com');

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

insert into `m_cloud` (`c_id`,`c_url`,`c_username`,`c_password`,`c_status`,`c_remarks`) values (1,'ftp://drivehq.com/cloud1','pradeepshiriyannavar','*India123','Active','First cloud space'),(2,'ftp://drivehq.com/cloud2','pradeepshiriyannavar','*India123','Active','Second Cloud Space'),(3,'ftp://drivehq.com/cloud3','pradeepshiriyannavar','*India123','Active','Third Cloud Space'),(4,'ftp://drivehq.com/cloud4','pradeepshiriyannavar','*India123','Active','Fourth Cloud Space');

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

insert into `m_config` (`key_id`,`key_date`,`public_key`,`master_s_key`,`des_secrete_key`,`no_of_clouds`) values (2,'22-11-2024','¨Ì\0sr\0java.security.KeyRepΩ˘O≥àö•C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¨Û¯T‡\0\0xp\0\0\0¢0Åü0\r	*ÜHÜ˜\r\0Åç\00ÅâÅÅ\0øõj\nSÿ≈H`Ã<ÌïÎH˘ehjáˆ/{^˜ ƒÂZ@ï\n˜!ÿxØö≠6\'•`)i‘G§º\0€ﬂE ë∫Ñ˘^©Ò¶VònÅ¨ÿ4o±Ãó=≈+‰p≤Ÿ|-4j$†\Z~]«_ú‹2ÁÚ(ò0˜Ãe&/·(œ›b˛˛ëÎ\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','¨Ì\0sr\0java.security.KeyRepΩ˘O≥àö•C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¨Û¯T‡\0\0xp\0\0z0Çv\00\r	*ÜHÜ˜\r\0Ç`0Ç\\\0ÅÅ\0øõj\nSÿ≈H`Ã<ÌïÎH˘ehjáˆ/{^˜ ƒÂZ@ï\n˜!ÿxØö≠6\'•`)i‘G§º\0€ﬂE ë∫Ñ˘^©Ò¶VònÅ¨ÿ4o±Ãó=≈+‰p≤Ÿ|-4j$†\Z~]«_ú‹2ÁÚ(ò0˜Ãe&/·(œ›b˛˛ëÎ\0ÅÅ\0≤∑U˚ëäÜ;è¢«´Í™—·Ìl]S˛ÕÏKôﬂPö&º„Ü	ï°Æoøì4‡ö_‡ì 5UÖP\Z¸Qº≤/)wÒöÓs‰ÕC¡oadÌ$Ku˘√æƒ~kâ⁄‡ì—∑Mñ`6ù\ruó“∏o2ï©K\\¡˘ÙÌπjÑB}Í±)°A\0ﬂ8¡R?õ–Ì¯∂J¡GS∫É‡‘D4âî≥JTÜõ@ÜÜ\nÉv”çµ∫b¶h±BÅñü∞Y˚vpà\0¥zºÜ≠ÖÓnâA\0€)Yc¬{€~√ÇaxLÅøvf+æ-¬-ﬁû7‹\"æ y\rîß∑πlïÛD+§≥\rdì+8	;óS\0ßˇ”@^ì∫˜l<ÁNFÒ!èﬂëˆ∏⁄?òEä^IçˆgjÉT‹≥Í‚v∆°9p6VV{cmUŸ{´í¶¢L˛\r1@G^ôÀê‰\0¿±.^K[L4••úÇı˜Äª7Ôä<zÕ∫^â4–ÔÎ,\n˙â)h\rÜ_®ﬁFà@ÃÏƒ…,∞Ñ@Yk_Õ}õYe7Óè‚\rF˛B°€‚∫˚·ˆ©’¨\0ÿJ#≥F¬Ú^ô—√á/t¿]ùM4°öôa‘Åt\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE','¨Ì\0sr\0java.security.KeyRepΩ˘O≥àö•C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0DESur\0[B¨Û¯T‡\0\0xp\0\0\0˝T2 t\0RAW~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0SECRET',4);

/*Table structure for table `m_configecc` */

DROP TABLE IF EXISTS `m_configecc`;

CREATE TABLE `m_configecc` (
  `key_id` int(10) NOT NULL AUTO_INCREMENT,
  `key_date` varchar(100) NOT NULL,
  `public_key` blob NOT NULL,
  `master_s_key` blob NOT NULL,
  `des_secrete_key` blob,
  `no_of_clouds` int(10) DEFAULT NULL,
  PRIMARY KEY (`key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `m_configecc` */

insert into `m_configecc` (`key_id`,`key_date`,`public_key`,`master_s_key`,`des_secrete_key`,`no_of_clouds`) values (1,'02-02-2023','¨Ì\0sr\0<org.bouncycastle.jcajce.provider.asymmetric.ec.BCECPublicKey!üzä£ÍH$\0Z\0withCompressionL\0	algorithmt\0Ljava/lang/String;xp\0t\0ECur\0[B¨Û¯T‡\0\0xp\0\0\0[0Y0*ÜHŒ=*ÜHŒ=B\0‡|€†7iæ8FFôëÿy/ö‹4’Sè}ÛÇÄ<iò€@´◊‰ÖÏ#mvŸM»Â»¸„0Ù®På\"v‘õ˘ÀG}vü™x','¨Ì\0sr\0=org.bouncycastle.jcajce.provider.asymmetric.ec.BCECPrivateKey\rÕ\\›)	Œ‘\0Z\0withCompressionL\0	algorithmt\0Ljava/lang/String;xp\0t\0ECur\0[B¨Û¯T‡\0\0xp\0\0\0ñ0Åì\00*ÜHŒ=*ÜHŒ=y0w °ÿFÁòRæ∆Áñ (·4WåµøÑaA:\r™»{É	†\n*ÜHŒ=°DB\0‡|€†7iæ8FFôëÿy/ö‹4’Sè}ÛÇÄ<iò€@´◊‰ÖÏ#mvŸM»Â»¸„0Ù®På\"v‘õ˘ÀG}vü™x','¨Ì\0sr\0java.security.KeyRepΩ˘O≥àö•C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0DESur\0[B¨Û¯T‡\0\0xp\0\0\0Ê˝Òóƒøt\0RAW~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0SECRET',4);

/*Table structure for table `m_department` */

DROP TABLE IF EXISTS `m_department`;

CREATE TABLE `m_department` (
  `dept_code` int(10) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(50) NOT NULL,
  PRIMARY KEY (`dept_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `m_department` */

insert into `m_department` (`dept_code`,`dept_name`) values (1,'All'),(2,'DG&IGP'),(3,'Inspector General Police '),(4,'Deputy Inspector'),(5,'Constable (PC)'),(6,'Police Sub-Inspector '),(7,'Assistant Sub-Inspector '),(8,'Head Constable');

/*Table structure for table `m_designation` */

DROP TABLE IF EXISTS `m_designation`;

CREATE TABLE `m_designation` (
  `desig_code` int(10) NOT NULL AUTO_INCREMENT,
  `desig_name` varchar(100) NOT NULL,
  PRIMARY KEY (`desig_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `m_designation` */

insert into `m_designation` (`desig_code`,`desig_name`) values (1,'All'),(2,'Cyber Department'),(3,'Crime Investigation'),(4,'Forensic Department'),(5,'Women and Child Protection'),(6,'Anti-Narcotics Cell'),(7,'Dog Squad'),(8,'Traffic Police');

/*Table structure for table `m_file_upload` */

DROP TABLE IF EXISTS `m_file_upload`;

CREATE TABLE `m_file_upload` (
  `f_code` int(50) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(100) NOT NULL,
  `f_type` varchar(50) NOT NULL,
  `f_upload_date` varchar(50) NOT NULL,
  `f_subject` varchar(200) NOT NULL,
  `cloud_id` int(50) NOT NULL,
  `owner_id` int(10) NOT NULL,
  `genesis_blk` varchar(80) DEFAULT '0',
  `hash_tag` varchar(80) DEFAULT NULL,
  `blkid` varchar(80) DEFAULT NULL,
  `random_no` varchar(80) DEFAULT NULL,
  `f_priority` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`f_code`)
) ENGINE=InnoDB AUTO_INCREMENT=1024 DEFAULT CHARSET=latin1;

/*Data for the table `m_file_upload` */

insert into `m_file_upload` (`f_code`,`f_name`,`f_type`,`f_upload_date`,`f_subject`,`cloud_id`,`owner_id`,`genesis_blk`,`hash_tag`,`blkid`,`random_no`,`f_priority`) values (1001,'priority2.txt','.txt','13-06-2023  11:15:25  11:15:25','good',4,4,'','3f927f0eaa5588501747a8e2f52f0803','B1001.zip','0307','Low'),(1002,'electronics_3.txt','.txt','13-06-2023  11:35:23  11:35:23','good',2,4,'3f927f0eaa5588501747a8e2f52f0803','c6dce4bbbecd5171ab2db8e441b11134','B1002.zip','0434','Low'),(1003,'priority2.txt','.txt','13-06-2023  11:47:49  11:47:49','good',1,4,'c6dce4bbbecd5171ab2db8e441b11134','3f927f0eaa5588501747a8e2f52f0803','B1003.zip','0351','Low'),(1004,'accident .txt','.txt','13-06-2023  12:00:39  12:00:39','good',3,4,'3f927f0eaa5588501747a8e2f52f0803','b7635bcb581d7249682fbb3575000ebd','B1004.zip','0407','Medium'),(1005,'priority2.txt','.txt','13-06-2023  17:49:26  17:49:26','ttt',3,4,'b7635bcb581d7249682fbb3575000ebd','3f927f0eaa5588501747a8e2f52f0803','B1005.zip','0790','Low'),(1006,'accident .txt','.txt','20-06-2023  15:42:26  15:42:26','c programming',2,4,'3f927f0eaa5588501747a8e2f52f0803','b7635bcb581d7249682fbb3575000ebd','B1006.zip','0433','Medium'),(1007,'accident .txt','.txt','21-06-2023  15:34:45  15:34:45','java',3,4,'b7635bcb581d7249682fbb3575000ebd','b7635bcb581d7249682fbb3575000ebd','B1007.zip','0775','Medium'),(1008,'priority2.txt','.txt','22-01-2024  13:08:09  13:08:09','java',1,4,'b7635bcb581d7249682fbb3575000ebd','d02c7034add130d1ef85bbc9f90594','B1008.zip','0332','Low'),(1010,'complaint.docx','.docx','22-01-2024  15:17:11  15:17:11','java',1,0,'cc3fd1950ce941a0170667bc4df6d3b0','1d9882d43cb2428c454571ca4794ea75','B1010.zip','0455','Low'),(1011,'t1.txt','.txt','22-01-2024  15:20:47  15:20:47','Java Basics',3,0,'1d9882d43cb2428c454571ca4794ea75','48ccfe1efb4a0b3ed526d94acfb8a433','B1011.zip','0268','Low'),(1012,'complaint1.docx','.docx','22-01-2024  15:21:57  15:21:57','c fundamental',2,0,'48ccfe1efb4a0b3ed526d94acfb8a433','40415998e4066390fc8bc6933a5932ea','B1012.zip','0743','Low'),(1013,'complaint1.docx','.docx','22-01-2024  15:26:50  15:26:50','22',2,4,'40415998e4066390fc8bc6933a5932ea','4d14a29ebb3df462da34a58e35f89605','B1013.zip','0634','Low'),(1014,'merged_file.docx','.docx','24-01-2024  11:30:29  11:30:29','jjj',2,4,'4d14a29ebb3df462da34a58e35f89605','d13b0640784fdbd30ac7d628f5a47d40','B1014.zip','0046','Low'),(1015,'merged_file.docx','.docx','24-01-2024  11:53:52  11:53:52','c programming',4,4,'d13b0640784fdbd30ac7d628f5a47d40','f028ad531b197cd6a761037326697365','B1015.zip','0228','Low'),(1016,'dhs.txt','.txt','20-03-2024  18:30:47  18:30:47','c programming',3,1,'f028ad531b197cd6a761037326697365','98475dc28edaa759769e36b367cd6e0f','B1016.zip','0345','Low'),(1017,'hi.txt','.txt','20-03-2024  19:03:34  19:03:34','c programming',3,1,'98475dc28edaa759769e36b367cd6e0f','1b7a133b5de402fc188d17a8a480b47b','B1017.zip','0689','Low'),(1018,'ouput_Iot_file (6).txt','.txt','20-03-2024  19:07:12  19:07:12','c pjj',4,1,'1b7a133b5de402fc188d17a8a480b47b','981d1811894e84721943aefbb0e34ee3','B1018.zip','0707','Low'),(1019,'NewComplent.txt','.txt','21-11-2024  18:10:06  18:10:06','sss',1,18,'981d1811894e84721943aefbb0e34ee3','7cc92d96712516530dbae1812d88481f','B1019.zip','0301','Low'),(1020,'cccc.txt','.txt','21-11-2024  18:52:48  18:52:48','sss',3,18,'7cc92d96712516530dbae1812d88481f','82f594328de1c86839b5b41fe276e589','B1020.zip','0435','Low'),(1021,'comp22.txt','.txt','22-11-2024  10:18:31  10:18:31','ncvx',2,18,'82f594328de1c86839b5b41fe276e589','952419115f740120fd172619d737c165','B1021.zip','0275','Low'),(1022,'comp22.txt','.txt','22-11-2024  11:45:14  11:45:14','sss',3,20,'952419115f740120fd172619d737c165','952419115f740120fd172619d737c165','B1022.zip','0678','Low'),(1023,'comp22n.txt','.txt','22-11-2024  17:07:14  17:07:14','sss',1,21,'952419115f740120fd172619d737c165','5bf5ad47b010b2c8e37dd3d09e918b2c','B1023.zip','0385','Low');

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `m_owner` */

insert into `m_owner` (`id`,`name`,`password`,`ownerid`,`address`,`phone`,`email`) values (1,'priya','priya','priya','btm','9876545654','mystoreindia123@gmail.com'),(2,'yokesh','Admin123','111','jayanagar','9775745325','mystoreindia123@gmail.com'),(3,'yokesh','Qazwsx123','qwesd','jayanagar','9775745325','mystoreindia123@gmail.com'),(4,'admin','1234','aaa','jayanagar','9775745325','mystoreindia123@gmail.com'),(5,'manu','Karthi123','asehe12','jayanagar','9876545678','mystoreindia123@gmail.com'),(6,'manu','Awnyv23','asehe12','jayanagar','9876545678','mystoreindia123@gmail.com'),(20,'uuuu','User@123','user123','Jayanagar','7257646451','channu@gmail.com'),(21,'newone','New@12345','newuserr','Jayanagar','7257646451','channu@gmail.com');

/*Table structure for table `m_priority` */

DROP TABLE IF EXISTS `m_priority`;

CREATE TABLE `m_priority` (
  `m_word` varchar(50) DEFAULT NULL,
  `m_priority` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_priority` */

insert into `m_priority` (`m_word`,`m_priority`) values ('Homicide',1),('Murder',1),('Manslaughter',1),('Attempted murder',1),('Assassination',1),('Mass shooting',1),('Bombing',1),('Terrorism',1),('Kidnapping',1),('Hostage-taking',1),('Hijacking',1),('Extortion',1),('Armed robbery',1),('Carjacking',1),('Arson',1),('Sabotage',1),('Espionage',1),('Treason',1),('Genocide',1),('Ethnic cleansing',1),('War crimes',1),('Crimes against humanity',1),('Human trafficking',1),('Forced labor',1),('Sexual slavery',1),('Rape',1),('Sexual assault',1),('Child abuse',1),('Child pornography',1),('Child prostitution',1),('Domestic violence',1),('Honor killing',1),('Acid attack',1),('Female genital mutilation',1),('Forced marriage',1),('Forced abortion',1),('Forced sterilization',1),('Euthanasia',1),('Assisted suicide',1),('Organ trafficking',1),('Bio-terrorism',1),('Chemical warfare',1),('Nuclear terrorism',1),('Cyber terrorism',1),('Money laundering',1),('Drug trafficking',1),('Arms trafficking',1),('Money counterfeiting',1),('Identity theft',1),('Espionage',1),('Assault causing grievous hurt',2),('Attempt to murder',2),('Rape',2),('Molestation',2),('Sexual harassment',2),('Eve-teasing',2),('Domestic violence',2),('Stalking',2),('Blackmail',2),('Kidnapping',2),('Abduction',2),('Wrongful confinement',2),('Criminal intimidation',2),('Criminal breach of trust',2),('Cheating',2),('Forgery',2),('Counterfeiting',2),('Embezzlement',2),('Theft',2),('Burglary',2),('Robbery',2),('Dacoity',2),('Cybercrime',2),('Phishing',2),('Identity theft',2),('Credit card fraud',2),('Bank fraud',2),('Insurance fraud',2),('Tax fraud',2),('Money laundering',2),('Possession of illegal weapons',2),('Possession of stolen property',2),('Possession of drugs',2),('Drug trafficking',2),('Prostitution',2),('Solicitation',2),('Obscenity',2),('Gambling',2),('Drunken driving',2),('Traffic violations',2),('Public nuisance',2),('Defamation',2),('Breach of copyright',2),('Breach of privacy',2),('Breach of confidentiality',2),('Harassment',2),('Trespassing',2),('Vandalism',2),('Environmental pollution',2),('Animal cruelty',2),('Verbal abuse',3),('Threatening',3),('Quarrel',3),('Petty theft',3),('Shoplifting',3),('Pickpocketing',3),('Panhandling',3),('Loitering',3),('Begging',3),('Vagrancy',3),('Disorderly conduct',3),('Drunkenness',3),('Public indecency',3),('Nuisance',3),('Noise pollution',3),('Graffiti',3),('Disturbance of peace',3),('Trespassing',3),('Unauthorized parking',3),('Minor traffic violations',3),('Jaywalking',3),('Illegal parking',3),('Disobedience of orders',3),('Negligence',3),('Misuse of property',3),('Breach of contract',3),('Rent default',3),('Failure to pay debts',3),('Failure to comply with regulations',3),('Skipping bail',3),('Public drunkenness',3),('victim',2);

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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;

/*Data for the table `m_transaction` */

insert into `m_transaction` (`t_no`,`t_date`,`t_time`,`u_code`,`f_code`,`dept_code`,`design_code`,`t_status`) values (1,'13-06-2023','11:16:58',8,1,1,1,'yes'),(2,'13-06-2023','12:08:08',1,1004,1,1,'Allowed'),(3,'13-06-2023','17:52:58',1,1005,1,1,'Allowed'),(4,'20-06-2023','15:53:12',8,1005,1,1,'Denied'),(5,'21-06-2023','15:48:23',10,1007,2,2,'Denied'),(6,'21-06-2023','15:49:03',10,1007,2,2,'Denied'),(7,'21-06-2023','15:49:42',10,1007,2,2,'Denied'),(8,'21-06-2023','15:52:15',10,1007,2,2,'Denied'),(9,'24-01-2024','11:43:17',12,1014,1,1,'Denied'),(101,'21-11-2024','18:10:40',39,1019,5,7,'Denied'),(102,'21-11-2024','18:12:01',39,1019,5,7,'Allowed'),(103,'21-11-2024','18:13:46',40,1019,2,2,'Allowed'),(104,'21-11-2024','18:25:37',40,1019,2,2,'Allowed'),(105,'21-11-2024','18:27:17',40,1019,2,2,'Allowed'),(106,'21-11-2024','18:28:21',40,1019,2,2,'Allowed'),(107,'21-11-2024','18:31:16',40,1019,2,2,'Allowed'),(108,'21-11-2024','18:33:03',40,1019,2,2,'Allowed'),(109,'21-11-2024','18:34:15',40,1019,2,2,'Allowed'),(110,'21-11-2024','18:41:15',41,1019,5,7,'Allowed'),(111,'21-11-2024','18:42:23',42,1019,2,3,'Allowed'),(112,'21-11-2024','18:46:41',42,1019,2,3,'Allowed'),(113,'21-11-2024','18:48:26',42,1019,2,3,'Denied'),(114,'21-11-2024','18:51:20',42,1019,2,3,'Allowed'),(115,'21-11-2024','18:53:20',42,1020,2,3,'Denied'),(116,'21-11-2024','18:55:30',42,1020,2,3,'Allowed'),(117,'21-11-2024','18:55:44',42,1020,2,3,'Allowed'),(118,'21-11-2024','18:57:24',42,1020,2,3,'Allowed'),(119,'22-11-2024','10:21:50',42,1021,4,4,'Denied'),(120,'22-11-2024','10:23:21',42,1021,4,4,'Denied'),(121,'22-11-2024','10:24:58',42,1021,4,4,'Denied'),(122,'22-11-2024','10:33:30',1,1021,4,4,'Allowed'),(123,'22-11-2024','10:35:18',2,1021,2,2,'Allowed'),(124,'22-11-2024','10:36:46',2,1021,2,2,'Allowed'),(125,'22-11-2024','10:43:27',2,1021,2,2,'Allowed'),(126,'22-11-2024','11:23:35',2,1021,2,2,'Denied'),(127,'22-11-2024','11:46:38',3,1022,2,3,'Denied'),(128,'22-11-2024','11:48:10',3,1022,2,3,'Allowed'),(129,'22-11-2024','11:50:00',4,1022,5,7,'Allowed'),(130,'22-11-2024','12:03:05',4,1022,5,7,'Allowed'),(131,'22-11-2024','12:06:05',4,1022,5,7,'Denied'),(132,'22-11-2024','12:07:42',4,1022,5,7,'Denied'),(133,'22-11-2024','12:09:57',4,1022,5,7,'Denied'),(134,'22-11-2024','12:11:28',4,1022,5,7,'Denied'),(135,'22-11-2024','12:12:24',4,1022,5,7,'Denied'),(136,'22-11-2024','12:13:21',4,1022,5,7,'Allowed'),(137,'22-11-2024','12:25:09',4,1022,5,7,'Denied'),(138,'22-11-2024','12:27:09',4,1022,5,7,'Denied'),(139,'22-11-2024','12:29:48',4,1022,5,7,'Allowed'),(140,'22-11-2024','12:32:22',5,1022,2,2,'Denied'),(141,'22-11-2024','12:33:22',5,1022,2,2,'Allowed'),(142,'22-11-2024','17:08:12',6,1023,2,2,'Denied'),(143,'22-11-2024','17:10:14',6,1023,2,2,'Allowed'),(144,'22-11-2024','17:13:24',7,1023,5,7,'Allowed'),(145,'22-11-2024','17:14:40',7,1023,5,7,'Allowed');

/*Table structure for table `m_user` */

DROP TABLE IF EXISTS `m_user`;

CREATE TABLE `m_user` (
  `u_code` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `dept_code1` int(10) NOT NULL,
  `design_code1` int(10) NOT NULL,
  `u_address` varchar(200) NOT NULL,
  `u_city` varchar(100) DEFAULT NULL,
  `u_cell` varchar(100) DEFAULT NULL,
  `u_phone` bigint(20) DEFAULT NULL,
  `u_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`u_code`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `m_user` */

insert into `m_user` (`u_code`,`username`,`password`,`u_name`,`dept_code1`,`design_code1`,`u_address`,`u_city`,`u_cell`,`u_phone`,`u_email`) values (1,'police111','Police@123','akshay',4,4,'Jayanagarr','Bengaluru','7257646452',7777777777,'pradeepshiriyannavar@gmail.com'),(2,'newpolice2','Test@123','newone',2,2,'Jayanagarr','Bengaluru','7257646452',7777777777,'phdindia36@gmail.com'),(3,'newpolicez','Test@123','akshay',2,3,'Jayanagarr','Bengaluru','7777777777',7777777777,'pradeepshiriyannavar@gmail.com'),(4,'police112','Police@123','Pradeep',5,7,'Jayanagarr','Bengaluru','7257646452',7257646452,'phdindia36@gmail.com'),(5,'testp','Testp@123','TestPolice',2,2,'Jayanagarr','Bengaluru','7257646452',7257646451,'pradeepshiriyannavar@gmail.com'),(6,'police11','Police@123','newone',2,2,'Jayanagar','Bengaluru','7257646451',7257646451,'pradeepshiriyannavar@gmail.com'),(7,'newpolice','Test@123','akshay',5,7,'Jayanagar','Bengaluru','7777777777',7777777777,'phdindia36@gmail.com');

/*Table structure for table `priority_type` */

DROP TABLE IF EXISTS `priority_type`;

CREATE TABLE `priority_type` (
  `p_no` int(5) NOT NULL AUTO_INCREMENT,
  `priority_type` varchar(20) NOT NULL,
  PRIMARY KEY (`p_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `priority_type` */

insert into `priority_type` (`p_no`,`priority_type`) values (1,'High'),(2,'Medium'),(3,'Low');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
