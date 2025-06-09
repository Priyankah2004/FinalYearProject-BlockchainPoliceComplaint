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
  `priority` varchar(10) NOT NULL,
  PRIMARY KEY (`ac_code`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `m_acess_control` */

insert into `m_acess_control` (`ac_code`,`f_code`,`dept_code1`,`desig_code1`,`priority`) values (9,1005,'Development','Software Engineer','High'),(10,1006,'IT','Software Developer','0'),(11,1005,'All','All','0'),(12,1007,'IT','Software Developer','Low'),(13,1014,'All','All','Low');

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

insert into `m_admin` (`id`,`name`,`password`,`adminid`,`address`,`phone`,`email`) values (1,'priya','admin','admin','BTM','9916876545','priya@dhsinformatics.com');

/*Table structure for table `m_audit_request` */

DROP TABLE IF EXISTS `m_audit_request`;

CREATE TABLE `m_audit_request` (
  `Req_id` int(10) NOT NULL AUTO_INCREMENT,
  `File_id` varchar(100) DEFAULT NULL,
  `User_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Req_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `m_audit_request` */

insert into `m_audit_request` (`Req_id`,`File_id`,`User_id`) values (1,'1001','1'),(2,'1005','8');

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

insert into `m_cloud` (`c_id`,`c_url`,`c_username`,`c_password`,`c_status`,`c_remarks`) values (1,'ftp://drivehq.com/cloud1','BHOOMIKASURESH33','*India123','Active','First cloud space'),(2,'ftp://drivehq.com/cloud2','BHOOMIKASURESH33','*India123','Active','Second Cloud Space'),(3,'ftp://drivehq.com/cloud3','BHOOMIKASURESH33','*India123','Active','Third Cloud Space'),(4,'ftp://drivehq.com/cloud4','BHOOMIKASURESH33','*India123','Active','Fourth Cloud Space');

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

insert into `m_config` (`key_id`,`key_date`,`public_key`,`master_s_key`,`des_secrete_key`,`no_of_clouds`) values (2,'21-06-2023','¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0\0¢0Ÿ0\r	*†H†÷\r\0\00‰\0§Á9_÷f…æOÛ¦zÖ‘B¤ëèq”ÃEù¡n3‡:¨4Ù“NŒnî2‹(ûÛÄëïŒ8ğı»ärw¿Ãk«K‹’ó¼¡Š/±W9ûÂhe—…ÑeShñû.jŒ1-±¤–ÑZ\'AùÈñ³Ïs æ­Ø5-eëæäßó\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0z0‚v\00\r	*†H†÷\r\0‚`0‚\\\0\0§Á9_÷f…æOÛ¦zÖ‘B¤ëèq”ÃEù¡n3‡:¨4Ù“NŒnî2‹(ûÛÄëïŒ8ğı»ärw¿Ãk«K‹’ó¼¡Š/±W9ûÂhe—…ÑeShñû.jŒ1-±¤–ÑZ\'AùÈñ³Ïs æ­Ø5-eëæäßó\0€1û	âÜ*}ëKcù÷ºuUÁí¡•¥£\0ˆ=¦Çœ[°&é\Z÷úŒ– cü)çw9Çãq	Ä\"c·H¼?L•À	¼è]m¸:†°@,¬pÔ\r<Çñ‚Ú1–làºĞ~ÂGô/Ú\'„m7‚À3 Ü‹LtLH¦ô‚Ú1A\0ã!¯nğğ>84|ùq†1!I&`h6RAR˜é~±ğôàâWƒ¢ëö]ğCN?’¾\"Ó2E;Ü\\fİ¢û©qA\0½	\Z/Aï÷º[c1À6XÃÔµUöà‘ |,Äãëw´K\Z&2¤ÜZ,^¹°f«`ú² ëài¹xİ1Zİ@K_CÁY Zpj†•¯\'6˜ƒ·²]tf`ö…e™¿CØ.ÎN@L¬™§\n¸e¢Û¢ÆşÚD˜™:+‘?YYA\0“µ˜isùC+²}õrÒ¤ÒŒNÀWAfò ¯[\ZCkğR•sãVÆ€ÜÃ‰áÜj>;™÷Ó!Å1@I—ƒŒªP*I@Í÷}O)N´‡ÄLÀ°ÂIˆo–›ÁïsšŒNb-Î¸áQáSÊ|F)Xo)„1z;æ<\r¦p!yuƒƒ·Öø;3t\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE','¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0DESur\0[B¬óøTà\0\0xp\0\0\0µm8ŒÖgX*t\0RAW~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0SECRET',4);

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

insert into `m_configecc` (`key_id`,`key_date`,`public_key`,`master_s_key`,`des_secrete_key`,`no_of_clouds`) values (1,'02-02-2023','¬í\0sr\0<org.bouncycastle.jcajce.provider.asymmetric.ec.BCECPublicKey!ŸzŠ£êH$\0Z\0withCompressionL\0	algorithmt\0Ljava/lang/String;xp\0t\0ECur\0[B¬óøTà\0\0xp\0\0\0[0Y0*†HÎ=*†HÎ=B\0à|Û 7i¾8FF™‘Øy/šÜ4ÕS}ó‚€<i˜Û@«×ä…ì#mvÙMÈåÈüã0ô¨PŒ\"vÔ›ùËG}vŸªx','¬í\0sr\0=org.bouncycastle.jcajce.provider.asymmetric.ec.BCECPrivateKey\rÍ\\İ)	ÎÔ\0Z\0withCompressionL\0	algorithmt\0Ljava/lang/String;xp\0t\0ECur\0[B¬óøTà\0\0xp\0\0\0–0“\00*†HÎ=*†HÎ=y0w ¡ØFç˜R¾Æç–Ê(á4WŒµ¿„aA:\rªÈ{ƒ	 \n*†HÎ=¡DB\0à|Û 7i¾8FF™‘Øy/šÜ4ÕS}ó‚€<i˜Û@«×ä…ì#mvÙMÈåÈüã0ô¨PŒ\"vÔ›ùËG}vŸªx','¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0DESur\0[B¬óøTà\0\0xp\0\0\0æıñ—Ä¿t\0RAW~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0SECRET',4);

/*Table structure for table `m_department` */

DROP TABLE IF EXISTS `m_department`;

CREATE TABLE `m_department` (
  `dept_code` int(10) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(50) NOT NULL,
  PRIMARY KEY (`dept_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `m_department` */

insert into `m_department` (`dept_code`,`dept_name`) values (1,'All'),(2,'IT'),(3,'Development'),(4,'Management'),(5,'Sales'),(6,'Finance'),(7,'Maintainance'),(8,'Marketing');

/*Table structure for table `m_designation` */

DROP TABLE IF EXISTS `m_designation`;

CREATE TABLE `m_designation` (
  `desig_code` int(10) NOT NULL AUTO_INCREMENT,
  `desig_name` varchar(100) NOT NULL,
  PRIMARY KEY (`desig_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `m_designation` */

insert into `m_designation` (`desig_code`,`desig_name`) values (1,'All'),(2,'Software Developer'),(3,'Software Engineer'),(4,'HR Marketing'),(5,'HR Sales'),(6,'HR Finance'),(7,'Project Manager'),(8,'Project Leader');

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
) ENGINE=InnoDB AUTO_INCREMENT=1016 DEFAULT CHARSET=latin1;

/*Data for the table `m_file_upload` */

insert into `m_file_upload` (`f_code`,`f_name`,`f_type`,`f_upload_date`,`f_subject`,`cloud_id`,`owner_id`,`genesis_blk`,`hash_tag`,`blkid`,`random_no`,`f_priority`) values (1001,'priority2.txt','.txt','13-06-2023  11:15:25  11:15:25','good',4,4,'','3f927f0eaa5588501747a8e2f52f0803','B1001.zip','0307','Low'),(1002,'electronics_3.txt','.txt','13-06-2023  11:35:23  11:35:23','good',2,4,'3f927f0eaa5588501747a8e2f52f0803','c6dce4bbbecd5171ab2db8e441b11134','B1002.zip','0434','Low'),(1003,'priority2.txt','.txt','13-06-2023  11:47:49  11:47:49','good',1,4,'c6dce4bbbecd5171ab2db8e441b11134','3f927f0eaa5588501747a8e2f52f0803','B1003.zip','0351','Low'),(1004,'accident .txt','.txt','13-06-2023  12:00:39  12:00:39','good',3,4,'3f927f0eaa5588501747a8e2f52f0803','b7635bcb581d7249682fbb3575000ebd','B1004.zip','0407','Medium'),(1005,'priority2.txt','.txt','13-06-2023  17:49:26  17:49:26','ttt',3,4,'b7635bcb581d7249682fbb3575000ebd','3f927f0eaa5588501747a8e2f52f0803','B1005.zip','0790','Low'),(1006,'accident .txt','.txt','20-06-2023  15:42:26  15:42:26','c programming',2,4,'3f927f0eaa5588501747a8e2f52f0803','b7635bcb581d7249682fbb3575000ebd','B1006.zip','0433','Medium'),(1007,'accident .txt','.txt','21-06-2023  15:34:45  15:34:45','java',3,4,'b7635bcb581d7249682fbb3575000ebd','b7635bcb581d7249682fbb3575000ebd','B1007.zip','0775','Medium'),(1008,'priority2.txt','.txt','22-01-2024  13:08:09  13:08:09','java',1,4,'b7635bcb581d7249682fbb3575000ebd','d02c7034add130d1ef85bbc9f90594','B1008.zip','0332','Low'),(1010,'complaint.docx','.docx','22-01-2024  15:17:11  15:17:11','java',1,0,'cc3fd1950ce941a0170667bc4df6d3b0','1d9882d43cb2428c454571ca4794ea75','B1010.zip','0455','Low'),(1011,'t1.txt','.txt','22-01-2024  15:20:47  15:20:47','Java Basics',3,0,'1d9882d43cb2428c454571ca4794ea75','48ccfe1efb4a0b3ed526d94acfb8a433','B1011.zip','0268','Low'),(1012,'complaint1.docx','.docx','22-01-2024  15:21:57  15:21:57','c fundamental',2,0,'48ccfe1efb4a0b3ed526d94acfb8a433','40415998e4066390fc8bc6933a5932ea','B1012.zip','0743','Low'),(1013,'complaint1.docx','.docx','22-01-2024  15:26:50  15:26:50','22',2,4,'40415998e4066390fc8bc6933a5932ea','4d14a29ebb3df462da34a58e35f89605','B1013.zip','0634','Low'),(1014,'merged_file.docx','.docx','24-01-2024  11:30:29  11:30:29','jjj',2,4,'4d14a29ebb3df462da34a58e35f89605','d13b0640784fdbd30ac7d628f5a47d40','B1014.zip','0046','Low'),(1015,'merged_file.docx','.docx','24-01-2024  11:53:52  11:53:52','c programming',4,4,'d13b0640784fdbd30ac7d628f5a47d40','f028ad531b197cd6a761037326697365','B1015.zip','0228','Low');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `m_owner` */

insert into `m_owner` (`id`,`name`,`password`,`ownerid`,`address`,`phone`,`email`) values (1,'priya','priya','priya','btm','9876545654','mystoreindia123@gmail.com'),(2,'yokesh','Admin123','111','jayanagar','9775745325','mystoreindia123@gmail.com'),(3,'yokesh','Qazwsx123','qwesd','jayanagar','9775745325','mystoreindia123@gmail.com'),(4,'admin','1234','aaa','jayanagar','9775745325','mystoreindia123@gmail.com'),(5,'manu','Karthi123','asehe12','jayanagar','9876545678','mystoreindia123@gmail.com'),(6,'manu','Awnyv23','asehe12','jayanagar','9876545678','mystoreindia123@gmail.com');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `m_transaction` */

insert into `m_transaction` (`t_no`,`t_date`,`t_time`,`u_code`,`f_code`,`dept_code`,`design_code`,`t_status`) values (1,'13-06-2023','11:16:58',8,1,1,1,'yes'),(2,'13-06-2023','12:08:08',1,1004,1,1,'Allowed'),(3,'13-06-2023','17:52:58',1,1005,1,1,'Allowed'),(4,'20-06-2023','15:53:12',8,1005,1,1,'Denied'),(5,'21-06-2023','15:48:23',10,1007,2,2,'Denied'),(6,'21-06-2023','15:49:03',10,1007,2,2,'Denied'),(7,'21-06-2023','15:49:42',10,1007,2,2,'Denied'),(8,'21-06-2023','15:52:15',10,1007,2,2,'Denied'),(9,'24-01-2024','11:43:17',12,1014,1,1,'Denied'),(10,'24-01-2024','11:46:52',12,1014,1,1,'Denied'),(11,'24-01-2024','11:47:45',12,1005,1,1,'Denied'),(12,'24-01-2024','11:59:14',12,1014,1,1,'Denied'),(13,'24-01-2024','12:09:08',12,1005,1,1,'Denied'),(14,'24-01-2024','12:09:40',12,1014,1,1,'Denied'),(15,'24-01-2024','12:23:27',12,1014,1,1,'Denied'),(16,'24-01-2024','12:25:24',12,1014,1,1,'Denied'),(17,'24-01-2024','12:27:20',12,1014,1,1,'Denied'),(18,'24-01-2024','12:29:43',12,1014,1,1,'Denied'),(19,'24-01-2024','12:30:54',12,1014,1,1,'Denied');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `m_user` */

insert into `m_user` (`u_code`,`username`,`password`,`u_name`,`dept_code1`,`design_code1`,`u_address`,`u_city`,`u_cell`,`u_phone`,`u_email`) values (1,'priyanka','priyanka','priyanka',3,3,'btm','blr','9876543234',9876543234,'priya@dhsinformatics.com'),(2,'yokesh','Yokesh123','yokesh',2,2,'jayanagar','Bangalore','8765432345',9786645331,'mystoreindia123@gmail.com'),(3,'keerthi','Keerthi123','keerthi',2,2,'jayanagar','Bangalore','9876545678',9876543221,'mystoreindia123@gmail.com'),(4,'priya1','Priya123','manu',2,2,'jayanagar','Bangalore','8765432345',9886688999,'mystoreindia123@gmail.com'),(5,'guru123','123','guru123',1,1,'jpnagar','blr','9876543345',8765456788,'mystoreindia123@gmail.com'),(6,'111','111','admin',1,1,'jayanagar','Bangalore','8765432345',9876543221,'cloudcomputingservice123@gmail.com'),(7,'priya','Admin123','dhamu',1,1,'jayanagar','benaglore','9845522565',9886688999,'cloudcomputingservice123@gmail.com'),(8,'222','222','admin',1,1,'jpnagar','blr','9876543345',8765456788,'cloudcomputingservice123@gmail.com'),(9,'asdhqw','Aemdinh123','yokesh',1,1,'jayanagar','benaglore','8765432345',9786645553,'mystoreindia123@gmail.com'),(10,'vijay','Admin123','yokesh',2,2,'jayanagar','bangalore','9775745325',9786645553,'cloudcomputingservice123@gmail.com'),(11,'dhamu','Dhamu123','dhamu',1,1,'jayanagar','bengaluru','9845522565',9876543276,'mystoreindia123@gmail.com'),(12,'gowtham','Gowthm123','gowtham',1,1,'jayanagar','bangalore','9775745325',9786645553,'mystoreindia123@gmail.com'),(13,'dhamu1','Dhamu1444','dhamu1',2,2,'jayanagar','Bangalore','9775745325',9876543276,'mystoreindia123@gmail.com');

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
