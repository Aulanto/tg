/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 8.0.18 : Database - tuiguang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tuiguang` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `tuiguang`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `trade_seq` varchar(255) DEFAULT NULL COMMENT '交易流水号',
  `trade_time` varchar(50) DEFAULT NULL COMMENT '交易时间',
  `trade_type` int(11) DEFAULT NULL COMMENT '1:充值；2：消耗',
  `value` varchar(20) DEFAULT NULL COMMENT '金额',
  `advertiser_id` bigint(20) DEFAULT NULL COMMENT '广告主ID',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `account` */

insert  into `account`(`id`,`trade_seq`,`trade_time`,`trade_type`,`value`,`advertiser_id`,`create_time`,`update_time`) values (2,'202004080001','2020-04-08',1,'100080',4,'2020-04-08 10:30:45','2020-04-13 15:56:55'),(3,'202004080002','2020-04-08',2,'50000',4,'2020-04-08 10:30:52','2020-04-08 10:30:52'),(4,'202004080003','2020-04-07',2,'32000',4,'2020-04-08 10:30:55','2020-04-08 10:30:55'),(5,'202004080004','2020-04-08',1,'880000',4,'2020-04-08 10:31:03','2020-04-08 10:31:03');

/*Table structure for table `advertiser` */

DROP TABLE IF EXISTS `advertiser`;

CREATE TABLE `advertiser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '广告主名称',
  `subject` varchar(255) DEFAULT NULL COMMENT '广告主主体资质',
  `website` varchar(255) DEFAULT NULL COMMENT '公司网址',
  `contact_name` varchar(255) DEFAULT NULL COMMENT '联系人',
  `contact_tel` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `contact_addr` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `approval_status` int(11) DEFAULT NULL COMMENT '审批状态，1：待审核；2：通过；3：拒绝',
  `valid` int(11) DEFAULT '1' COMMENT '1:有效；2：注销',
  `short_name` varchar(25) DEFAULT NULL COMMENT '简称',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `advertiser` */

insert  into `advertiser`(`id`,`name`,`subject`,`website`,`contact_name`,`contact_tel`,`contact_addr`,`approval_status`,`valid`,`short_name`,`create_time`,`update_time`) values (1,'深圳智房通科技有限公司','深圳智房通科技有限公司','www.zhifanghouse.com','老刘','15889781193','车公庙天安数码城',2,1,'智房通科技','2020-04-03 14:33:44','2020-04-10 16:27:59'),(4,'深圳精准营销科技有限公司','深圳精准营销科技有限公司','www.yingxiao.com','老伍','13522626985','深圳福田车公庙',2,1,'精准营销科技','2020-04-07 09:50:30','2020-04-17 16:47:03'),(5,'深圳微信传媒有限公司','深圳微信传媒有限公司','www.chuanmei.com','张三','15889782253','深圳福田车公庙',NULL,0,'微信传媒','2020-04-15 17:39:04','2020-06-04 09:52:17');

/*Table structure for table `basic_data` */

DROP TABLE IF EXISTS `basic_data`;

CREATE TABLE `basic_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `exposure` int(11) DEFAULT NULL COMMENT '曝光量',
  `clicks` int(11) DEFAULT NULL COMMENT '点击量',
  `advertiser_id` bigint(20) DEFAULT NULL COMMENT '广告主',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `basic_data` */

insert  into `basic_data`(`id`,`exposure`,`clicks`,`advertiser_id`,`create_time`,`update_time`) values (1,335,298,4,'2020-04-06 15:32:29','2020-04-08 15:32:29'),(2,468,422,4,'2020-04-07 15:32:56','2020-04-08 15:32:56'),(3,278,200,4,'2020-04-05 15:33:07','2020-04-08 15:33:07'),(4,566,530,4,'2020-04-13 18:10:11','2020-04-13 18:10:12'),(5,762,682,4,'2020-04-14 15:51:51','2020-04-15 15:51:51'),(6,665,460,4,'2020-04-15 15:52:07','2020-04-15 15:52:07'),(7,298,200,4,'2020-04-12 15:53:37','2020-04-15 15:53:37'),(8,800,600,4,'2020-04-11 15:53:47','2020-04-15 15:53:47'),(11,16013,163,1,'2020-06-03 20:07:52','2020-06-03 20:49:37'),(13,10005,106,4,'2020-06-04 10:19:42','2020-06-04 10:19:42'),(14,10005,108,5,'2020-06-04 10:40:14','2020-06-04 10:40:14');

/*Table structure for table `chinese_map_dict` */

DROP TABLE IF EXISTS `chinese_map_dict`;

CREATE TABLE `chinese_map_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `chinese_map_dict` */

insert  into `chinese_map_dict`(`id`,`code`,`value`) values (1,'CN-32','江苏'),(2,'CN-52','贵州'),(3,'CN-53','云南'),(4,'CN-50','重庆'),(5,'CN-51','四川'),(6,'CN-31','上海'),(7,'CN-54','西藏'),(8,'CN-33','浙江'),(9,'CN-15','内蒙'),(10,'CN-14','山西'),(11,'CN-47','福建'),(12,'CN-12','天津'),(13,'CN-13','河北'),(14,'CN-11','北京'),(15,'CN-34','安徽'),(16,'CN-36','江西'),(17,'CN-37','山东'),(18,'CN-41','河南'),(19,'CN-43','湖南'),(20,'CN-42','湖北'),(21,'CN-45','广西'),(22,'CN-44','广东'),(23,'CN-46','海南'),(24,'CN-65','新疆'),(25,'CN-64','宁夏'),(26,'CN-63','青海'),(27,'CN-62','甘肃'),(28,'CN-61','陕西'),(29,'CN-23','黑龙江'),(30,'CN-22','吉林'),(31,'CN-21','辽宁');

/*Table structure for table `clue_data` */

DROP TABLE IF EXISTS `clue_data`;

CREATE TABLE `clue_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(50) DEFAULT NULL COMMENT '城市',
  `project_name` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `user_name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `user_tel` varchar(255) DEFAULT NULL COMMENT '电话',
  `advertiser_id` bigint(20) DEFAULT NULL COMMENT '广告主',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `clue_data` */

insert  into `clue_data`(`id`,`city_name`,`project_name`,`user_name`,`user_tel`,`advertiser_id`,`create_time`,`update_time`) values (1,'深圳','松茂御龙湾','张三','15636326684',4,'2020-04-08 16:48:42','2020-04-08 16:48:42'),(2,'深圳','松茂御龙湾','李四','15636326685',4,'2020-04-08 16:48:45','2020-04-08 16:48:45'),(3,'深圳','松茂御龙湾','王五','15636326686',4,'2020-04-08 16:49:07','2020-04-08 16:49:07'),(5,'深圳','松茂御龙湾','张三','15889781195',1,'2020-06-03 20:06:16','2020-06-03 20:06:17'),(6,'深圳','松茂御龙湾','小五','15889781195',1,'2020-06-03 20:09:35','2020-06-03 20:09:35'),(7,'深圳','松茂御龙湾','小五','15889781195',1,'2020-06-03 20:11:34','2020-06-03 20:11:34'),(8,'深圳','松茂御龙湾','小芳','15889781196',1,'2020-06-03 20:26:53','2020-06-03 20:26:54'),(9,'深圳','松茂御龙湾','小冯','15889781197',1,'2020-06-03 20:49:36','2020-06-03 20:49:37'),(10,'深圳','藏珑府','冯老师','15889781197',4,'2020-06-04 10:19:42','2020-06-04 10:19:43'),(11,'深圳','浪琴屿花园','冯老师','15889781197',5,'2020-06-04 10:40:14','2020-06-04 10:40:15');

/*Table structure for table `effect_pic` */

DROP TABLE IF EXISTS `effect_pic`;

CREATE TABLE `effect_pic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) DEFAULT NULL COMMENT '楼盘名称',
  `big_pic_url` varchar(255) DEFAULT NULL COMMENT '大图URL',
  `small_pic_url` varchar(255) DEFAULT NULL COMMENT '小图URL',
  `advertiser_id` bigint(20) DEFAULT NULL COMMENT '广告主',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `effect_pic` */

insert  into `effect_pic`(`id`,`project_name`,`big_pic_url`,`small_pic_url`,`advertiser_id`,`create_time`,`update_time`) values (1,'松茂御龙湾','/upload/4/1.jpg','/upload/4/1.jpg',4,'2020-04-08 16:51:08','2020-04-08 16:51:08');

/*Table structure for table `gzh_operator` */

DROP TABLE IF EXISTS `gzh_operator`;

CREATE TABLE `gzh_operator` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `project_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '编码',
  `nick_name` varchar(50) DEFAULT NULL COMMENT '用户昵称',
  `gzh_openid` varchar(50) DEFAULT NULL COMMENT '用户公众号openid',
  `head_img_url` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `valid` int(11) DEFAULT '1' COMMENT '1:激活；2：注销；',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `gzh_operator` */

/*Table structure for table `gzh_project` */

DROP TABLE IF EXISTS `gzh_project`;

CREATE TABLE `gzh_project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` bigint(20) DEFAULT NULL,
  `company_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '广告主',
  `project_name` varchar(100) DEFAULT NULL COMMENT '项目名',
  `project_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '编码',
  `city_name` varchar(50) DEFAULT NULL COMMENT '城市',
  `exposure_rate` int(11) DEFAULT '10000' COMMENT '曝光系数',
  `click_rate` int(11) DEFAULT '100' COMMENT '点击系数',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `gzh_project` */

insert  into `gzh_project`(`id`,`company_id`,`company_name`,`project_name`,`project_code`,`city_name`,`exposure_rate`,`click_rate`,`create_time`,`update_time`) values (4,1,'深圳智房通科技有限公司','松茂御龙湾','gjxf6e5663d57c314272ac8681394eaa1a39','深圳',10000,100,'2020-06-03 19:15:25','2020-06-03 19:15:25'),(5,4,'深圳精准营销科技有限公司','藏珑府','gjxf3aed902034764527821f657959cd63be','深圳',10000,100,'2020-06-04 10:17:48','2020-06-04 10:17:48'),(6,5,'深圳微信传媒有限公司','浪琴屿花园','gjxfa72c261c297c42788c0718c65ce2477f','深圳',10000,100,'2020-06-04 10:37:09','2020-06-04 10:37:09');

/*Table structure for table `gzh_push_record` */

DROP TABLE IF EXISTS `gzh_push_record`;

CREATE TABLE `gzh_push_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `operator_id` bigint(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `project_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gzh_push_record` */

/*Table structure for table `jiwu_income_call_record` */

DROP TABLE IF EXISTS `jiwu_income_call_record`;

CREATE TABLE `jiwu_income_call_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `merchant_account` text COMMENT '项目Account',
  `call_time` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '	拨打时间，格式: yyyy-MM-dd HH:mm:ss',
  `caller` text COMMENT '主叫号码',
  `call_status` text COMMENT '拨打状态 CALLED：已拨打 CONNECTED：已接通',
  `record_file_duration` text COMMENT '通话时长(整数), 单位: 秒，callStatus为CONNECTED时必填',
  `file_url` text COMMENT '	录音文件URL，callStatus为CONNECTED时必填',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `jiwu_income_call_record` */

insert  into `jiwu_income_call_record`(`id`,`merchant_account`,`call_time`,`caller`,`call_status`,`record_file_duration`,`file_url`,`update_time`) values (2,NULL,'2020-04-28 00:00:00','15889781198','CONNECTED','120',NULL,'2020-04-28 16:07:42');

/*Table structure for table `jiwu_leave_capital` */

DROP TABLE IF EXISTS `jiwu_leave_capital`;

CREATE TABLE `jiwu_leave_capital` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` text COMMENT '姓名',
  `phone` text COMMENT '电话号码',
  `account` text COMMENT '项目Account',
  `create_time` text COMMENT '留资时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `jiwu_leave_capital` */

insert  into `jiwu_leave_capital`(`id`,`name`,`phone`,`account`,`create_time`,`update_time`) values (15,'冯老师','15889781197','gjxfa72c261c297c42788c0718c65ce2477f','2020-06-04 10:40:00','2020-06-04 10:40:14');

/*Table structure for table `label_district` */

DROP TABLE IF EXISTS `label_district`;

CREATE TABLE `label_district` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL COMMENT '地区',
  `value` int(11) DEFAULT NULL COMMENT '值',
  `advertiser_id` int(11) DEFAULT NULL COMMENT '广告主',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `label_district` */

insert  into `label_district`(`id`,`code`,`value`,`advertiser_id`,`create_time`,`update_time`) values (1,'CN-15',3,4,'2020-04-09 18:55:13','2020-04-09 18:55:13'),(2,'CN-14',8,4,'2020-04-09 18:55:59','2020-04-09 18:55:59'),(3,'CN-47',25,4,'2020-04-09 18:56:13','2020-04-09 18:56:13'),(4,'CN-22',16,4,'2020-04-09 18:56:18','2020-04-09 18:56:18'),(5,'CN-45',7,4,'2020-04-09 18:58:12','2020-04-09 18:58:12'),(6,'CN-41',6,4,'2020-04-10 14:44:47','2020-04-10 14:44:47'),(7,'CN-42',12,4,'2020-04-10 14:44:57','2020-04-10 14:44:57'),(8,'CN-43',1,4,'2020-04-10 14:45:11','2020-04-10 14:45:11'),(9,'CN-44',4,4,'2020-04-10 14:45:22','2020-04-10 14:45:22'),(10,'CN-61',2,4,'2020-04-10 14:46:07','2020-04-10 14:46:07'),(11,'CN-62',5,4,'2020-04-10 14:46:14','2020-04-10 14:46:14'),(12,'CN-63',6,4,'2020-04-10 14:46:18','2020-04-10 14:46:18'),(13,'CN-64',6,4,'2020-04-10 14:46:35','2020-04-10 14:46:35'),(14,'CN-65',3,4,'2020-04-10 14:46:51','2020-04-10 14:46:51');

/*Table structure for table `label_education` */

DROP TABLE IF EXISTS `label_education`;

CREATE TABLE `label_education` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `primary_school` int(11) DEFAULT NULL COMMENT '小学',
  `middle_school` int(11) DEFAULT NULL COMMENT '初中',
  `high_school` int(11) DEFAULT NULL COMMENT '高中',
  `specialty` int(11) DEFAULT NULL COMMENT '专科',
  `undergraduate` int(11) DEFAULT NULL COMMENT '本科',
  `master` int(11) DEFAULT NULL COMMENT '硕士',
  `doctor` int(11) DEFAULT NULL COMMENT '博士',
  `advertiser_id` bigint(11) DEFAULT NULL COMMENT '广告主',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `label_education` */

insert  into `label_education`(`id`,`primary_school`,`middle_school`,`high_school`,`specialty`,`undergraduate`,`master`,`doctor`,`advertiser_id`,`create_time`,`update_time`) values (1,15,25,35,5,10,3,7,4,'2020-04-09 17:49:43','2020-04-14 17:21:36');

/*Table structure for table `label_interest` */

DROP TABLE IF EXISTS `label_interest`;

CREATE TABLE `label_interest` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `news` int(11) DEFAULT NULL COMMENT '新闻资讯',
  `entertainment` int(11) DEFAULT NULL COMMENT '休闲娱乐',
  `food` int(11) DEFAULT NULL COMMENT '餐饮美食',
  `health` int(11) DEFAULT NULL COMMENT '医疗健康',
  `game` int(11) DEFAULT NULL COMMENT '游戏',
  `internet` int(11) DEFAULT NULL COMMENT '互联网/电子产品',
  `travel` int(11) DEFAULT NULL COMMENT '旅游',
  `life` int(11) DEFAULT NULL COMMENT '生活服务',
  `personal_care` int(11) DEFAULT NULL COMMENT '个人护理',
  `home` int(11) DEFAULT NULL COMMENT '家居',
  `traffic` int(11) DEFAULT NULL COMMENT '交通',
  `sports` int(11) DEFAULT NULL COMMENT '体育运动',
  `advertiser_id` int(11) DEFAULT NULL COMMENT '广告主',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `label_interest` */

insert  into `label_interest`(`id`,`news`,`entertainment`,`food`,`health`,`game`,`internet`,`travel`,`life`,`personal_care`,`home`,`traffic`,`sports`,`advertiser_id`,`create_time`,`update_time`) values (1,7,5,6,8,13,2,25,14,9,1,2,8,4,'2020-04-09 19:00:26','2020-04-09 19:00:26');

/*Table structure for table `label_sex` */

DROP TABLE IF EXISTS `label_sex`;

CREATE TABLE `label_sex` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `male` int(11) DEFAULT NULL COMMENT '男性',
  `female` int(11) DEFAULT NULL COMMENT '女性',
  `advertiser_id` bigint(20) DEFAULT NULL COMMENT '广告主',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `label_sex` */

insert  into `label_sex`(`id`,`male`,`female`,`advertiser_id`,`create_time`,`update_time`) values (1,88,12,4,'2020-04-09 17:47:59','2020-04-16 14:26:30');

/*Table structure for table `sys_resource` */

DROP TABLE IF EXISTS `sys_resource`;

CREATE TABLE `sys_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `source_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `source_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_hide` int(11) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `sys_resource` */

insert  into `sys_resource`(`id`,`name`,`source_key`,`type`,`source_url`,`level`,`sort`,`icon`,`is_hide`,`description`,`create_time`,`update_time`,`parent_id`) values (1,'用户管理','system:user:index',1,'/user/index',2,1,NULL,0,'用户管理','2019-11-10 13:56:51','2019-11-10 13:59:01',21),(6,'角色管理','system:role:index',1,'/role/index',2,2,NULL,0,'角色管理','2019-11-10 16:45:10','2019-11-10 16:46:52',21),(11,'资源管理','system:resource:index',1,'/resource/index',2,3,NULL,0,'资源管理','2019-11-10 11:21:12','2019-11-10 11:21:42',21),(21,'系统管理','system:Manage',0,'/system/Manage',1,6,'-',0,'系统管理','2020-04-02 16:12:13','2020-04-02 16:12:13',0),(22,'主页','home:index',1,'/home/index',2,1,'-',0,'主页','2020-04-02 17:00:31','2020-04-02 17:00:31',0),(23,'账户管理','account:manage',0,'/account/manage',1,2,'-',0,'账户管理','2020-04-02 17:02:13','2020-04-02 17:02:13',0),(24,'广告主信息','account:advertiser:index',1,'/advertiser/index',2,1,'-',0,'广告主信息','2020-04-02 17:04:49','2020-04-02 17:04:49',23),(25,'账户信息','account:account:index',1,'/account/index',2,2,'-',0,'账户信息','2020-04-02 17:06:50','2020-04-02 17:06:50',23),(26,'广告管理','putin:manage',0,'/putin/manage',1,3,'-',0,'广告管理','2020-04-02 17:08:42','2020-04-16 14:45:36',26),(27,'广告示例','putin:example:index',1,'/putin/example',2,1,'-',0,'广告示例','2020-04-02 17:10:58','2020-04-16 14:45:10',26),(28,'广告展示','putin:effect:Index',1,'/putin/effect',2,2,'-',0,'投放效果','2020-04-02 17:12:00','2020-04-16 14:46:15',26),(29,'数据管理','data:manage',0,'/data/manage',1,4,'-',0,'数据管理','2020-04-02 17:14:33','2020-04-02 17:14:33',0),(30,'基础数据','data:basic:index',1,'/dataShow/basic',2,1,'-',0,'基础数据','2020-04-02 17:20:15','2020-04-02 17:20:15',29),(31,'销售线索','data:clue:index',1,'/dataShow/clue',2,2,'-',0,'销售线索','2020-04-02 17:21:15','2020-04-02 17:21:15',29),(32,'人群标签','data:label:index',1,'/dataShow/label',2,3,'-',0,'人群标签','2020-04-02 17:25:17','2020-04-02 17:25:17',29),(33,'数据维护','data:maintain',0,'/data/maintain',1,5,'-',0,'数据维护','2020-04-02 18:24:02','2020-04-02 18:27:57',33),(34,'广告主信息维护','maintainAdvertiser:index',1,'/maintainAdvertiser/index',2,1,'-',0,'广告主信息维护','2020-04-02 18:31:12','2020-04-02 18:31:12',33),(35,'账户信息维护','maintainAccount:index',1,'/maintainAccount/index',2,2,'-',0,'账户信息维护','2020-04-02 18:32:02','2020-04-02 18:32:02',33),(36,'投放效果维护','maintainEffect:index',1,'/maintainEffect/index',2,3,'-',0,'投放效果维护','2020-04-02 18:33:32','2020-04-02 18:36:03',33),(37,'基础数据维护','maintainBasic:index',1,'/maintainBasic/index',2,4,'-',0,'基础数据维护','2020-04-02 18:34:34','2020-04-02 18:34:34',33),(38,'销售线索维护','maintainClue:index',1,'/maintainClue/index',2,5,'-',0,'销售线索维护','2020-04-02 18:38:30','2020-04-02 18:38:30',33),(39,'人群标签-性别维护','maintainLabel:sex:index',1,'/maintainLabel/sex/index',2,6,'-',0,'人群标签-性别维护','2020-04-02 18:40:05','2020-04-02 18:40:05',33),(40,'人群标签-学历维护','maintainLabel:education:index',1,'/maintainLabel/education/index',2,7,'-',0,'人群标签-学历维护','2020-04-02 18:41:08','2020-04-02 18:43:19',33),(41,'人群标签-地域维护','maintainLabel:district:index',1,'/maintainLabel/district/index',2,8,'-',0,'人群标签-地域维护','2020-04-02 18:43:03','2020-04-02 18:43:03',33),(42,'人群标签-兴趣维护','maintainLabel:interest:index',1,'/maintainLabel/interest/index',2,9,'-',0,'人群标签-兴趣维护','2020-04-02 18:44:53','2020-04-02 18:44:53',33),(43,'运营助手','operator:assistant',0,'/operator/assistant',1,7,'',0,'运营助手','2020-06-04 09:43:02','2020-06-04 09:43:02',0),(44,'项目管理','operator:project:index',0,'/project/index',2,1,'',0,'项目管理','2020-06-04 09:46:22','2020-06-04 09:46:22',43),(45,'运营人员','operator:operator:index',0,'/operator/index',2,2,'',0,'运营人员','2020-06-04 09:47:19','2020-06-04 09:47:19',43);

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `role_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`name`,`role_key`,`status`,`description`,`create_time`,`update_time`) values (1,'超级管理员','administrator',0,'超级管理员','2019-11-10 17:25:30','2020-04-14 14:48:15'),(5,'商户','merchant',0,'商户','2020-04-14 10:11:50','2020-04-14 10:11:50'),(6,'智房通运营人员','operator',0,'智房通运营人员','2020-04-14 18:28:21','2020-04-14 18:28:21');

/*Table structure for table `sys_role_resource` */

DROP TABLE IF EXISTS `sys_role_resource`;

CREATE TABLE `sys_role_resource` (
  `role_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`resource_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `sys_role_resource` */

insert  into `sys_role_resource`(`role_id`,`resource_id`) values (1,1),(1,6),(1,11),(1,21),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(4,1),(4,6),(4,11),(4,21),(5,22),(5,23),(5,24),(5,25),(5,26),(5,27),(5,28),(5,29),(5,30),(5,31),(5,32),(6,33),(6,34),(6,35),(6,36),(6,37),(6,38),(6,39),(6,40),(6,41),(6,42),(6,43),(6,44),(6,45);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `delete_status` int(11) DEFAULT NULL,
  `locked` int(11) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `advertiser_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`user_name`,`nick_name`,`password`,`sex`,`birthday`,`telephone`,`email`,`address`,`delete_status`,`locked`,`description`,`advertiser_id`,`create_time`,`update_time`) values (1,'admin','管理员','3931MUEQD1939MQMLM4AISPVNE',1,'2020-04-14 00:00:00','15889781190','qiuyan@outlook.com','深圳福田区',0,0,'超级管理员',1,'2019-11-10 17:26:41','2020-04-14 15:39:43'),(3,'demo','演示账号','3931MUEQD1939MQMLM4AISPVNE',1,'2020-04-14 00:00:00','15889780032','qiuyan@outlook.com','深圳福田车公庙',0,0,'演示账号',4,'2020-04-14 10:02:28','2020-04-14 10:05:24'),(4,'oper1','运营1','3931MUEQD1939MQMLM4AISPVNE',0,NULL,'','','',0,0,'',1,'2020-04-14 18:05:47','2020-04-22 15:29:39'),(5,'demo1','演示账号1','3931MUEQD1939MQMLM4AISPVNE',0,NULL,'','','',0,0,'',5,'2020-06-04 10:23:13','2020-06-04 10:23:13');

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values (1,1),(2,1),(3,5),(4,6),(5,5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
