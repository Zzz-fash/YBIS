/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.27-community-nt : Database - kgc-ybis
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kgc-ybis` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kgc-ybis`;

/*Table structure for table `class` */

DROP TABLE IF EXISTS `class`;

CREATE TABLE `class` (
  `c_id` int(11) NOT NULL auto_increment COMMENT '班级编号',
  `c_name` varchar(50) NOT NULL default '' COMMENT '班级名称',
  `tm_id` int(11) NOT NULL COMMENT '班主任编号',
  `s_id` int(11) NOT NULL COMMENT '学校编号',
  `status` int(11) NOT NULL default '1' COMMENT '状态',
  PRIMARY KEY  (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `class` */

insert  into `class`(`c_id`,`c_name`,`tm_id`,`s_id`,`status`) values (1,'一（1）班',1,1,1),(2,'一（2）班',2,1,1),(3,'一（3）班',3,1,1),(4,'一（4）班',4,1,1),(5,'二（1）班',5,1,1),(6,'二（2）班',6,1,1),(7,'二（3）班',7,1,1),(8,'二（4）班',8,1,1);

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `com_id` int(11) NOT NULL auto_increment COMMENT '评论编号',
  `com_content` varchar(1000) NOT NULL default '' COMMENT '评论内容',
  `d_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `status` int(11) NOT NULL default '1' COMMENT '状态',
  PRIMARY KEY  (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comment` */

/*Table structure for table `download` */

DROP TABLE IF EXISTS `download`;

CREATE TABLE `download` (
  `down_id` bigint(20) NOT NULL auto_increment COMMENT '成绩下载表编号',
  `t_title` varchar(255) NOT NULL default '' COMMENT '成绩标题',
  `down_path` varchar(255) NOT NULL default '' COMMENT '成绩表路径',
  PRIMARY KEY  (`down_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `download` */

/*Table structure for table `dynamic` */

DROP TABLE IF EXISTS `dynamic`;

CREATE TABLE `dynamic` (
  `d_id` int(11) NOT NULL auto_increment,
  `d_name` varchar(50) NOT NULL,
  `d_date` datetime NOT NULL,
  `d_content` varchar(1000) NOT NULL,
  `d_img` varchar(200) NOT NULL,
  `t_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `sm_id` int(11) NOT NULL,
  `com_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY  (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dynamic` */

/*Table structure for table `dynamic_chek` */

DROP TABLE IF EXISTS `dynamic_chek`;

CREATE TABLE `dynamic_chek` (
  `dc_id` int(11) NOT NULL auto_increment,
  `d_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `read` int(11) NOT NULL,
  `dianzan` int(11) NOT NULL,
  PRIMARY KEY  (`dc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dynamic_chek` */

/*Table structure for table `notice` */

DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
  `n_id` int(11) NOT NULL auto_increment,
  `n_name` varchar(50) NOT NULL,
  `n_date` datetime NOT NULL,
  `n_content` varchar(1000) NOT NULL,
  `t_id` int(11) NOT NULL,
  `sm_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY  (`n_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `notice` */

/*Table structure for table `report` */

DROP TABLE IF EXISTS `report`;

CREATE TABLE `report` (
  `r_id` bigint(20) NOT NULL auto_increment COMMENT '成绩编号',
  `t_type` bigint(20) NOT NULL COMMENT '成绩类型（语数外。。。）',
  `u_id` bigint(20) NOT NULL COMMENT '家长编号',
  `r_score` int(11) NOT NULL default '0' COMMENT '分数',
  `t_id` bigint(20) NOT NULL COMMENT '班主任编号（创建人）',
  `t_creation_time` date NOT NULL COMMENT '创建时间',
  `t_title` varchar(255) NOT NULL COMMENT '标题',
  `t_rank` int(11) default NULL COMMENT '班级成绩排名',
  PRIMARY KEY  (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `report` */

/*Table structure for table `school` */

DROP TABLE IF EXISTS `school`;

CREATE TABLE `school` (
  `s_id` int(10) NOT NULL auto_increment COMMENT '学校编号',
  `s_name` varchar(50) NOT NULL default '' COMMENT '学校名称',
  `s_address` varchar(50) NOT NULL default '' COMMENT '学校地址',
  `sm_id` int(50) NOT NULL COMMENT '学校管理员编号',
  `status` varchar(50) default '1' COMMENT '状态',
  PRIMARY KEY  (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `school` */

insert  into `school`(`s_id`,`s_name`,`s_address`,`sm_id`,`status`) values (1,'课工场幼儿园','北京大兴区',1,'1');

/*Table structure for table `school_manager` */

DROP TABLE IF EXISTS `school_manager`;

CREATE TABLE `school_manager` (
  `sm_id` int(11) NOT NULL auto_increment COMMENT '学校管理员编号',
  `sm_phone` varchar(50) NOT NULL default '' COMMENT '学校管理员联系方式（账号）',
  `sm_password` varchar(50) NOT NULL default '123456' COMMENT '学校管理员密码',
  `status` int(11) NOT NULL default '1' COMMENT '状态',
  `sm_email` varchar(50) NOT NULL COMMENT '学校管理员邮箱',
  `sm_path` varchar(50) NOT NULL COMMENT '学校管理员头像',
  PRIMARY KEY  (`sm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `school_manager` */

insert  into `school_manager`(`sm_id`,`sm_phone`,`sm_password`,`status`,`sm_email`,`sm_path`) values (1,'1@kgc.com','123456',1,'123456789','');

/*Table structure for table `super_admin` */

DROP TABLE IF EXISTS `super_admin`;

CREATE TABLE `super_admin` (
  `sa_id` int(11) NOT NULL auto_increment COMMENT '超级管理员',
  `sa_name` varchar(50) NOT NULL default '' COMMENT '超级管理员账号',
  `sa_password` varchar(50) NOT NULL default '' COMMENT '超级管理员密码',
  PRIMARY KEY  (`sa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `super_admin` */

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `t_id` int(10) NOT NULL auto_increment COMMENT '老师编号',
  `t_name` varchar(50) NOT NULL default '' COMMENT '老师名称',
  `t_password` varchar(50) NOT NULL default '123456' COMMENT '老师密码',
  `t_phone` varchar(50) NOT NULL COMMENT '老师账号（联系方式）',
  `t_desc` varchar(50) NOT NULL default '' COMMENT '描述',
  `status` varchar(50) NOT NULL default '1' COMMENT '状态',
  `t_email` varchar(50) default NULL COMMENT '老师邮箱',
  `t_path` varchar(255) NOT NULL COMMENT '老师头像',
  PRIMARY KEY  (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

insert  into `teacher`(`t_id`,`t_name`,`t_password`,`t_phone`,`t_desc`,`status`,`t_email`,`t_path`) values (1,'张三1','123456','123456789','描述1','1','t1@kgc.com',''),(2,'张三2','123456','123456789','描述2','1','t2@kgc.com',''),(3,'张三3','123456','123456789','描述3','1','t3@kgc.com',''),(4,'张三4','123456','123456789','描述4','1','t4@kgc.com',''),(5,'张三5','123456','123456789','描述5','1','t5@kgc.com',''),(6,'张三6','123456','123456789','描述6','1','t6@kgc.com',''),(7,'张三7','123456','123456789','描述7','1','t7@kgc.com',''),(8,'张三8','123456','123456789','描述8','1','t8@kgc.com',''),(9,'','123456','0','','1',NULL,'');

/*Table structure for table `teacher_class` */

DROP TABLE IF EXISTS `teacher_class`;

CREATE TABLE `teacher_class` (
  `tc_id` int(11) NOT NULL auto_increment COMMENT '老师班级连接表',
  `t_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  PRIMARY KEY  (`tc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacher_class` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `u_id` int(10) NOT NULL auto_increment COMMENT '学生编号',
  `u_name` varchar(50) NOT NULL default '' COMMENT '学生名称',
  `u_password` varchar(50) NOT NULL default '123456' COMMENT '学生密码',
  `u_phone` varchar(20) NOT NULL COMMENT '学生账号(家长联系电话)',
  `u_address` varchar(50) NOT NULL default '' COMMENT '学生地址',
  `c_id` int(10) NOT NULL COMMENT '班级编号',
  `status` varchar(50) NOT NULL default '1' COMMENT '状态',
  `u_date` date NOT NULL COMMENT '入学时间',
  `u_path` varchar(255) NOT NULL COMMENT '头像',
  PRIMARY KEY  (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`u_id`,`u_name`,`u_password`,`u_phone`,`u_address`,`c_id`,`status`,`u_date`,`u_path`) values (1,'郭鹏生','123456','admin1','江西',1,'1','2020-09-01','还没设置默认路径'),(2,'郭鹏生2','123456','admin2','江西',1,'1','2020-09-01','还没设置默认路径'),(3,'张通1','123456','admin3','江西',2,'1','2020-09-01','还没设置默认路径'),(4,'张通2','123456','admin4','江西',2,'1','2020-09-01','还没设置默认路径'),(5,'郑佳良1','123456','admin5','江西',3,'1','2020-09-01','还没设置默认路径'),(6,'郑佳良2','123456','admin6','江西',3,'1','2020-09-01','还没设置默认路径'),(7,'于泽鹏1','123456','admin7','江西',4,'1','2020-09-01','还没设置默认路径'),(8,'于泽鹏2','123456','admin8','江西',4,'1','2020-09-01','还没设置默认路径'),(9,'谢炳楠1','123456','admin9','江西',4,'1','2020-09-01','还没设置默认路径'),(10,'谢炳楠2','123456','admin10','江西',4,'1','2020-09-01','还没设置默认路径');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
