/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t348`;
CREATE DATABASE IF NOT EXISTS `t348` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t348`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-10 08:39:20'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-10 08:39:20'),
	(3, 'gonggao_types', '平台资讯类型', 1, '平台资讯类型1', NULL, NULL, '2023-04-10 08:39:20'),
	(4, 'gonggao_types', '平台资讯类型', 2, '平台资讯类型2', NULL, NULL, '2023-04-10 08:39:20'),
	(5, 'forum_types', '帖子类型', 1, '租房', NULL, NULL, '2023-04-10 08:39:20'),
	(6, 'forum_types', '帖子类型', 2, '招聘', NULL, NULL, '2023-04-10 08:39:20'),
	(7, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-04-10 08:39:20'),
	(8, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-04-10 08:39:20'),
	(9, 'fangwu_types', '房屋类型', 1, '房屋类型1', NULL, NULL, '2023-04-10 08:39:20'),
	(10, 'fangwu_types', '房屋类型', 2, '房屋类型2', NULL, NULL, '2023-04-10 08:39:20'),
	(11, 'fangwu_types', '房屋类型', 3, '房屋类型3', NULL, NULL, '2023-04-10 08:39:20'),
	(12, 'fangwu_types', '房屋类型', 4, '房屋类型4', NULL, NULL, '2023-04-10 08:39:20'),
	(13, 'fangwu_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-10 08:39:20'),
	(14, 'fangwu_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-10 08:39:20'),
	(15, 'fangwu_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-10 08:39:20'),
	(16, 'fangwu_order_types', '订单类型', 101, '已支付', NULL, NULL, '2023-04-10 08:39:20'),
	(17, 'fangwu_order_types', '订单类型', 102, '已退款', NULL, NULL, '2023-04-10 08:39:20'),
	(18, 'fangwu_order_types', '订单类型', 103, '已同意', NULL, NULL, '2023-04-10 08:39:20'),
	(19, 'fangwu_order_types', '订单类型', 104, '已入住', NULL, NULL, '2023-04-10 08:39:20'),
	(20, 'fangwu_order_types', '订单类型', 105, '已评价', NULL, NULL, '2023-04-10 08:39:20'),
	(21, 'jianli_types', '求职意向', 1, '求职意向1', NULL, NULL, '2023-04-10 08:39:20'),
	(22, 'jianli_types', '求职意向', 2, '求职意向2', NULL, NULL, '2023-04-10 08:39:20'),
	(23, 'jianli_types', '求职意向', 3, '求职意向3', NULL, NULL, '2023-04-10 08:39:20'),
	(24, 'mianshi_yesno_types', '投递状态', 1, '未回复', NULL, NULL, '2023-04-10 08:39:20'),
	(25, 'mianshi_yesno_types', '投递状态', 2, '通过', NULL, NULL, '2023-04-10 08:39:20'),
	(26, 'mianshi_yesno_types', '投递状态', 3, '拒绝', NULL, NULL, '2023-04-10 08:39:20'),
	(27, 'gongsi_types', '企业类型', 1, '企业类型1', NULL, NULL, '2023-04-10 08:39:20'),
	(28, 'gongsi_types', '企业类型', 2, '企业类型2', NULL, NULL, '2023-04-10 08:39:20'),
	(29, 'gongsi_types', '企业类型', 3, '企业类型3', NULL, NULL, '2023-04-10 08:39:20'),
	(30, 'zhaopin_types', '招聘岗位', 1, '招聘岗位1', NULL, NULL, '2023-04-10 08:39:20'),
	(31, 'zhaopin_types', '招聘岗位', 2, '招聘岗位2', NULL, NULL, '2023-04-10 08:39:20'),
	(32, 'zhaopin_types', '招聘岗位', 3, '招聘岗位3', NULL, NULL, '2023-04-10 08:39:20'),
	(33, 'leixing_types', '招聘类型', 1, '招聘类型', NULL, NULL, '2023-04-10 08:39:20'),
	(34, 'leixing_types', '招聘类型', 2, '校园招聘', NULL, NULL, '2023-04-10 08:39:20'),
	(35, 'zhaopin_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-10 08:39:20'),
	(36, 'zhaopin_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-10 08:39:20'),
	(37, 'zhaopin_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-10 08:39:20');

DROP TABLE IF EXISTS `fangdong`;
CREATE TABLE IF NOT EXISTS `fangdong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `fangdong_name` varchar(200) DEFAULT NULL COMMENT '房东姓名 Search111 ',
  `fangdong_phone` varchar(200) DEFAULT NULL COMMENT '房东手机号',
  `fangdong_id_number` varchar(200) DEFAULT NULL COMMENT '房东身份证号',
  `fangdong_photo` varchar(200) DEFAULT NULL COMMENT '房东头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `fangdong_email` varchar(200) DEFAULT NULL COMMENT '房东邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='房东';

DELETE FROM `fangdong`;
INSERT INTO `fangdong` (`id`, `username`, `password`, `fangdong_name`, `fangdong_phone`, `fangdong_id_number`, `fangdong_photo`, `sex_types`, `fangdong_email`, `new_money`, `create_time`) VALUES
	(1, '房东1', '123456', '房东姓名1', '17703786901', '410224199010102001', 'upload/fangdong1.jpg', 1, '1@qq.com', 1122.43, '2023-04-10 08:41:37'),
	(2, '房东2', '123456', '房东姓名2', '17703786902', '410224199010102002', 'upload/fangdong2.jpg', 2, '2@qq.com', 1232.56, '2023-04-10 08:41:37'),
	(3, '房东3', '123456', '房东姓名3', '17703786903', '410224199010102003', 'upload/fangdong3.jpg', 2, '3@qq.com', 357.36, '2023-04-10 08:41:37');

DROP TABLE IF EXISTS `fangwu`;
CREATE TABLE IF NOT EXISTS `fangwu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fangdong_id` int DEFAULT NULL COMMENT '房东',
  `fangwu_name` varchar(200) DEFAULT NULL COMMENT '房屋名称  Search111 ',
  `fangwu_uuid_number` varchar(200) DEFAULT NULL COMMENT '房屋编号',
  `fangwu_photo` varchar(200) DEFAULT NULL COMMENT '房屋照片',
  `fangwu_address` varchar(200) DEFAULT NULL COMMENT '房屋地点',
  `fangwu_types` int DEFAULT NULL COMMENT '房屋类型 Search111',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `fangwu_new_money` decimal(10,2) DEFAULT NULL COMMENT '租金',
  `fangwu_content` longtext COMMENT '房屋介绍 ',
  `fangwu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='房屋';

DELETE FROM `fangwu`;
INSERT INTO `fangwu` (`id`, `fangdong_id`, `fangwu_name`, `fangwu_uuid_number`, `fangwu_photo`, `fangwu_address`, `fangwu_types`, `zan_number`, `cai_number`, `fangwu_new_money`, `fangwu_content`, `fangwu_delete`, `insert_time`, `create_time`) VALUES
	(1, 1, '房屋名称1', '1681116097171', 'upload/fangwu1.jpg', '房屋地点1', 4, 414, 448, 13.49, '房屋介绍1', 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(2, 2, '房屋名称2', '1681116097190', 'upload/fangwu2.jpg', '房屋地点2', 4, 332, 147, 486.61, '房屋介绍2', 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(3, 3, '房屋名称3', '1681116097128', 'upload/fangwu3.jpg', '房屋地点3', 3, 130, 312, 110.00, '房屋介绍3', 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(4, 2, '房屋名称4', '1681116097162', 'upload/fangwu4.jpg', '房屋地点4', 1, 470, 162, 68.62, '房屋介绍4', 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(5, 2, '房屋名称5', '1681116097159', 'upload/fangwu5.jpg', '房屋地点5', 2, 35, 376, 159.64, '房屋介绍5', 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(6, 2, '房屋名称6', '1681116097116', 'upload/fangwu6.jpg', '房屋地点6', 1, 423, 339, 23.87, '房屋介绍6', 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(7, 3, '房屋名称7', '1681116097207', 'upload/fangwu7.jpg', '房屋地点7', 1, 179, 379, 60.12, '房屋介绍7', 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(8, 1, '房屋名称8', '1681116097184', 'upload/fangwu8.jpg', '房屋地点8', 1, 154, 74, 428.27, '房屋介绍8', 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(9, 2, '房屋名称9', '1681116097115', 'upload/fangwu9.jpg', '房屋地点9', 2, 270, 182, 190.28, '房屋介绍9', 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(10, 3, '房屋名称10', '1681116097124', 'upload/fangwu10.jpg', '房屋地点10', 2, 38, 231, 303.63, '房屋介绍10', 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(11, 1, '房屋名称11', '1681116097204', 'upload/fangwu11.jpg', '房屋地点11', 3, 45, 190, 425.94, '房屋介绍11', 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(12, 2, '房屋名称12', '1681116097131', 'upload/fangwu12.jpg', '房屋地点12', 3, 492, 443, 158.02, '房屋介绍12', 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(13, 2, '房屋名称13', '1681116097111', 'upload/fangwu13.jpg', '房屋地点13', 3, 144, 224, 207.14, '房屋介绍13', 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(14, 2, '房屋名称14', '1681116097156', 'upload/fangwu14.jpg', '房屋地点14', 3, 393, 283, 290.83, '房屋介绍14', 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37');

DROP TABLE IF EXISTS `fangwu_collection`;
CREATE TABLE IF NOT EXISTS `fangwu_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_id` int DEFAULT NULL COMMENT '房屋',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `fangwu_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='房屋收藏';

DELETE FROM `fangwu_collection`;
INSERT INTO `fangwu_collection` (`id`, `fangwu_id`, `yonghu_id`, `fangwu_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(2, 2, 3, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(3, 3, 1, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(4, 4, 1, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(5, 5, 2, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(6, 6, 3, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(7, 7, 2, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(8, 8, 1, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(9, 9, 3, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(10, 10, 2, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(11, 11, 2, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(12, 12, 2, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(13, 13, 2, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(14, 14, 1, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37');

DROP TABLE IF EXISTS `fangwu_commentback`;
CREATE TABLE IF NOT EXISTS `fangwu_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_id` int DEFAULT NULL COMMENT '房屋',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `fangwu_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='房屋评价';

DELETE FROM `fangwu_commentback`;
INSERT INTO `fangwu_commentback` (`id`, `fangwu_id`, `yonghu_id`, `fangwu_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '评价内容1', '2023-04-10 08:41:37', '回复信息1', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(2, 2, 2, '评价内容2', '2023-04-10 08:41:37', '回复信息2', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(3, 3, 1, '评价内容3', '2023-04-10 08:41:37', '回复信息3', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(4, 4, 1, '评价内容4', '2023-04-10 08:41:37', '回复信息4', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(5, 5, 3, '评价内容5', '2023-04-10 08:41:37', '回复信息5', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(6, 6, 3, '评价内容6', '2023-04-10 08:41:37', '回复信息6', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(7, 7, 2, '评价内容7', '2023-04-10 08:41:37', '回复信息7', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(8, 8, 3, '评价内容8', '2023-04-10 08:41:37', '回复信息8', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(9, 9, 2, '评价内容9', '2023-04-10 08:41:37', '回复信息9', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(10, 10, 3, '评价内容10', '2023-04-10 08:41:37', '回复信息10', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(11, 11, 1, '评价内容11', '2023-04-10 08:41:37', '回复信息11', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(12, 12, 1, '评价内容12', '2023-04-10 08:41:37', '回复信息12', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(13, 13, 3, '评价内容13', '2023-04-10 08:41:37', '回复信息13', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(14, 14, 2, '评价内容14', '2023-04-10 08:41:37', '回复信息14', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(15, 11, 1, '不会', '2023-04-10 09:25:14', '手打阿萨德', '2023-04-10 09:26:39', '2023-04-10 09:25:14');

DROP TABLE IF EXISTS `fangwu_order`;
CREATE TABLE IF NOT EXISTS `fangwu_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `fangwu_id` int DEFAULT NULL COMMENT '房屋',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `fangwu_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `fangwu_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='房屋订单';

DELETE FROM `fangwu_order`;
INSERT INTO `fangwu_order` (`id`, `fangwu_order_uuid_number`, `fangwu_id`, `yonghu_id`, `fangwu_order_true_price`, `fangwu_order_types`, `insert_time`, `create_time`) VALUES
	(1, '1681117289484', 13, 1, NULL, 102, '2023-04-10 09:01:29', '2023-04-10 09:01:29'),
	(2, '1681117308144', 13, 1, NULL, 102, '2023-04-10 09:01:48', '2023-04-10 09:01:48'),
	(3, '1681117499107', 13, 1, 207.14, 102, '2023-04-10 09:04:59', '2023-04-10 09:04:59'),
	(4, '1681118509559', 13, 1, 207.14, 101, '2023-04-10 09:21:50', '2023-04-10 09:21:50'),
	(5, '1681118693699', 11, 1, 425.94, 105, '2023-04-10 09:24:54', '2023-04-10 09:24:54');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `fangdong_id` int DEFAULT NULL COMMENT '房东',
  `gongsi_id` int DEFAULT NULL COMMENT '公司',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_types` int DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `fangdong_id`, `gongsi_id`, `users_id`, `forum_content`, `super_ids`, `forum_types`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 2, NULL, NULL, NULL, '发布内容1', 390, 2, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(2, '帖子标题2', 2, NULL, NULL, NULL, '发布内容2', 1, 2, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(3, '帖子标题3', 2, NULL, NULL, NULL, '发布内容3', 9, 2, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(4, '帖子标题4', 2, NULL, NULL, NULL, '发布内容4', 454, 2, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(5, '帖子标题5', 2, NULL, NULL, NULL, '发布内容5', 375, 1, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(6, '帖子标题6', 1, NULL, NULL, NULL, '发布内容6', 290, 1, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(7, '帖子标题7', 1, NULL, NULL, NULL, '发布内容7', 364, 2, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(8, '帖子标题8', 2, NULL, NULL, NULL, '发布内容8', 452, 1, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(9, '帖子标题9', 2, NULL, NULL, NULL, '发布内容9', 127, 2, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(10, '帖子标题10', 1, NULL, NULL, NULL, '发布内容10', 18, 1, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(11, '帖子标题11', 2, NULL, NULL, NULL, '发布内容11', 420, 2, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(12, '帖子标题12', 3, NULL, NULL, NULL, '发布内容12', 104, 1, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(13, '帖子标题13', 3, NULL, NULL, NULL, '发布内容13', 165, 2, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(14, '帖子标题14', 1, NULL, NULL, NULL, '发布内容14', 134, 2, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(15, '帖子', 1, NULL, NULL, NULL, '<p>帖子123</p>', NULL, 2, 1, '2023-04-10 09:22:14', NULL, '2023-04-10 09:22:14'),
	(17, NULL, NULL, 1, NULL, NULL, '54654645', 15, NULL, 2, '2023-04-10 09:26:49', NULL, '2023-04-10 09:26:49'),
	(18, NULL, NULL, NULL, 1, NULL, '456456546', 15, NULL, 2, '2023-04-10 09:27:11', NULL, '2023-04-10 09:27:11'),
	(19, NULL, 1, NULL, NULL, NULL, '11', 14, NULL, 2, '2024-08-04 05:52:32', NULL, '2024-08-04 05:52:32');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '平台资讯名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '平台资讯图片 ',
  `gonggao_types` int NOT NULL COMMENT '平台资讯类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '平台资讯详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='平台资讯';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '平台资讯名称1', 'upload/gonggao1.jpg', 1, '2023-04-10 08:41:37', '平台资讯详情1', '2023-04-10 08:41:37'),
	(2, '平台资讯名称2', 'upload/gonggao2.jpg', 1, '2023-04-10 08:41:37', '平台资讯详情2', '2023-04-10 08:41:37'),
	(3, '平台资讯名称3', 'upload/gonggao3.jpg', 2, '2023-04-10 08:41:37', '平台资讯详情3', '2023-04-10 08:41:37'),
	(4, '平台资讯名称4', 'upload/gonggao4.jpg', 1, '2023-04-10 08:41:37', '平台资讯详情4', '2023-04-10 08:41:37'),
	(5, '平台资讯名称5', 'upload/gonggao5.jpg', 1, '2023-04-10 08:41:37', '平台资讯详情5', '2023-04-10 08:41:37'),
	(6, '平台资讯名称6', 'upload/gonggao6.jpg', 1, '2023-04-10 08:41:37', '平台资讯详情6', '2023-04-10 08:41:37'),
	(7, '平台资讯名称7', 'upload/gonggao7.jpg', 1, '2023-04-10 08:41:37', '平台资讯详情7', '2023-04-10 08:41:37'),
	(8, '平台资讯名称8', 'upload/gonggao8.jpg', 1, '2023-04-10 08:41:37', '平台资讯详情8', '2023-04-10 08:41:37'),
	(9, '平台资讯名称9', 'upload/gonggao9.jpg', 2, '2023-04-10 08:41:37', '平台资讯详情9', '2023-04-10 08:41:37'),
	(10, '平台资讯名称10', 'upload/gonggao10.jpg', 2, '2023-04-10 08:41:37', '平台资讯详情10', '2023-04-10 08:41:37'),
	(11, '平台资讯名称11', 'upload/gonggao11.jpg', 1, '2023-04-10 08:41:37', '平台资讯详情11', '2023-04-10 08:41:37'),
	(12, '平台资讯名称12', 'upload/gonggao12.jpg', 2, '2023-04-10 08:41:37', '平台资讯详情12', '2023-04-10 08:41:37'),
	(13, '平台资讯名称13', 'upload/gonggao13.jpg', 2, '2023-04-10 08:41:37', '平台资讯详情13', '2023-04-10 08:41:37'),
	(14, '平台资讯名称14', 'upload/gonggao14.jpg', 2, '2023-04-10 08:41:37', '平台资讯详情14', '2023-04-10 08:41:37');

DROP TABLE IF EXISTS `gongsi`;
CREATE TABLE IF NOT EXISTS `gongsi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `gongsi_name` varchar(200) DEFAULT NULL COMMENT '企业名称 Search111 ',
  `gongsi_types` int DEFAULT NULL COMMENT '企业类型',
  `gongsi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `gongsi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `gongsi_photo` varchar(200) DEFAULT NULL COMMENT '企业封面',
  `gongsi_content` text COMMENT '企业简介 ',
  `gongsi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='企业';

DELETE FROM `gongsi`;
INSERT INTO `gongsi` (`id`, `username`, `password`, `gongsi_name`, `gongsi_types`, `gongsi_phone`, `gongsi_email`, `gongsi_photo`, `gongsi_content`, `gongsi_delete`, `create_time`) VALUES
	(1, '公司1', '123456', '企业名称1', 2, '17703786901', '1@qq.com', 'upload/gongsi1.jpg', '企业简介1', 1, '2023-04-10 08:41:37'),
	(2, '公司2', '123456', '企业名称2', 3, '17703786902', '2@qq.com', 'upload/gongsi2.jpg', '企业简介2', 1, '2023-04-10 08:41:37'),
	(3, '公司3', '123456', '企业名称3', 2, '17703786903', '3@qq.com', 'upload/gongsi3.jpg', '企业简介3', 1, '2023-04-10 08:41:37');

DROP TABLE IF EXISTS `jianli`;
CREATE TABLE IF NOT EXISTS `jianli` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jianli_uuid_number` varchar(200) DEFAULT NULL COMMENT '简历唯一编号 ',
  `jianli_name` varchar(200) DEFAULT NULL COMMENT '简历标题',
  `jianli_xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jianli_types` int DEFAULT NULL COMMENT '求职意向 Search111',
  `jianli_xinzi` varchar(200) DEFAULT NULL COMMENT '期望工资 Search111',
  `jianli_xueli` varchar(200) DEFAULT NULL COMMENT '学历 Search111',
  `jianli_jingli` varchar(200) DEFAULT NULL COMMENT '工作经历 Search111',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `jianli_file` varchar(200) DEFAULT NULL COMMENT '简历文件',
  `jianli_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jianli_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `jianli_address` varchar(200) DEFAULT NULL COMMENT '位置',
  `jiaoyu_text` text COMMENT '教育经历',
  `shixi_text` text COMMENT '实习或工作经历',
  `geren_text` text COMMENT '个人介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='简历';

DELETE FROM `jianli`;
INSERT INTO `jianli` (`id`, `yonghu_id`, `jianli_uuid_number`, `jianli_name`, `jianli_xingming`, `jianli_types`, `jianli_xinzi`, `jianli_xueli`, `jianli_jingli`, `sex_types`, `jianli_file`, `jianli_phone`, `jianli_photo`, `jianli_address`, `jiaoyu_text`, `shixi_text`, `geren_text`, `create_time`) VALUES
	(1, 1, '1681116097139', '简历标题1', '姓名1', 3, '期望工资1', '学历1', '工作经历1', 1, 'upload/file.rar', '17703786901', 'upload/jianli1.jpg', '位置1', '教育经历1', '实习或工作经历1', '个人介绍1', '2023-04-10 08:41:37'),
	(2, 3, '1681116097130', '简历标题2', '姓名2', 1, '期望工资2', '学历2', '工作经历2', 1, 'upload/file.rar', '17703786902', 'upload/jianli2.jpg', '位置2', '教育经历2', '实习或工作经历2', '个人介绍2', '2023-04-10 08:41:37'),
	(3, 2, '1681116097159', '简历标题3', '姓名3', 1, '期望工资3', '学历3', '工作经历3', 1, 'upload/file.rar', '17703786903', 'upload/jianli3.jpg', '位置3', '教育经历3', '实习或工作经历3', '个人介绍3', '2023-04-10 08:41:37'),
	(4, 2, '1681116097144', '简历标题4', '姓名4', 2, '期望工资4', '学历4', '工作经历4', 1, 'upload/file.rar', '17703786904', 'upload/jianli4.jpg', '位置4', '教育经历4', '实习或工作经历4', '个人介绍4', '2023-04-10 08:41:37'),
	(5, 3, '1681116097130', '简历标题5', '姓名5', 2, '期望工资5', '学历5', '工作经历5', 1, 'upload/file.rar', '17703786905', 'upload/jianli5.jpg', '位置5', '教育经历5', '实习或工作经历5', '个人介绍5', '2023-04-10 08:41:37'),
	(6, 1, '1681116097156', '简历标题6', '姓名6', 3, '期望工资6', '学历6', '工作经历6', 2, 'upload/file.rar', '17703786906', 'upload/jianli6.jpg', '位置6', '教育经历6', '实习或工作经历6', '个人介绍6', '2023-04-10 08:41:37'),
	(7, 1, '1681116097138', '简历标题7', '姓名7', 2, '期望工资7', '学历7', '工作经历7', 1, 'upload/file.rar', '17703786907', 'upload/jianli7.jpg', '位置7', '教育经历7', '实习或工作经历7', '个人介绍7', '2023-04-10 08:41:37'),
	(8, 3, '1681116097172', '简历标题8', '姓名8', 3, '期望工资8', '学历8', '工作经历8', 1, 'upload/file.rar', '17703786908', 'upload/jianli8.jpg', '位置8', '教育经历8', '实习或工作经历8', '个人介绍8', '2023-04-10 08:41:37'),
	(9, 1, '1681116097162', '简历标题9', '姓名9', 2, '期望工资9', '学历9', '工作经历9', 2, 'upload/file.rar', '17703786909', 'upload/jianli9.jpg', '位置9', '教育经历9', '实习或工作经历9', '个人介绍9', '2023-04-10 08:41:37'),
	(10, 2, '1681116097174', '简历标题10', '姓名10', 3, '期望工资10', '学历10', '工作经历10', 2, 'upload/file.rar', '17703786910', 'upload/jianli10.jpg', '位置10', '教育经历10', '实习或工作经历10', '个人介绍10', '2023-04-10 08:41:37'),
	(11, 1, '1681116097211', '简历标题11', '姓名11', 3, '期望工资11', '学历11', '工作经历11', 2, 'upload/file.rar', '17703786911', 'upload/jianli11.jpg', '位置11', '教育经历11', '实习或工作经历11', '个人介绍11', '2023-04-10 08:41:37'),
	(12, 1, '1681116097205', '简历标题12', '姓名12', 3, '期望工资12', '学历12', '工作经历12', 1, 'upload/file.rar', '17703786912', 'upload/jianli12.jpg', '位置12', '教育经历12', '实习或工作经历12', '个人介绍12', '2023-04-10 08:41:37'),
	(13, 3, '1681116097164', '简历标题13', '姓名13', 1, '期望工资13', '学历13', '工作经历13', 2, 'upload/file.rar', '17703786913', 'upload/jianli13.jpg', '位置13', '教育经历13', '实习或工作经历13', '个人介绍13', '2023-04-10 08:41:37'),
	(14, 1, '1681116097134', '简历标题14', '姓名14', 1, '期望工资14', '学历14', '工作经历14', 2, 'upload/file.rar', '17703786914', 'upload/jianli14.jpg', '位置14', '教育经历14', '实习或工作经历14', '个人介绍14', '2023-04-10 08:41:37');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', '56w2qr1uhzsyekl7sm0l7bmktdvnk03n', '2023-04-10 08:44:42', '2024-08-04 06:52:14'),
	(2, 1, 'admin', 'users', '管理员', '46wkituzkxzwoe5bk22it8qdb6fyhgcj', '2023-04-10 08:55:19', '2024-08-04 06:50:22'),
	(3, 1, 'a1', 'fangdong', '房东', 'kd7975f2oyfoz1xp3p5qi8k6kd0foh4z', '2023-04-10 09:24:24', '2024-08-04 06:51:53'),
	(4, 1, 'a1', 'gongsi', '企业', 'b1j8jm5c9e38faatvy2gw5dxg4j0oeq9', '2023-04-10 09:26:58', '2024-08-04 06:52:04');

DROP TABLE IF EXISTS `toudi`;
CREATE TABLE IF NOT EXISTS `toudi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jianli_id` int DEFAULT NULL COMMENT '简历',
  `zhaopin_id` int DEFAULT NULL COMMENT '招聘',
  `mianshi_yesno_types` int DEFAULT NULL COMMENT '投递状态 Search111',
  `mianshi_yesno_text` text COMMENT '投递回复',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投递时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COMMENT='简历投递';

DELETE FROM `toudi`;
INSERT INTO `toudi` (`id`, `jianli_id`, `zhaopin_id`, `mianshi_yesno_types`, `mianshi_yesno_text`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 2, '投递回复1', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(2, 2, 2, 1, '投递回复2', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(3, 3, 3, 2, '投递回复3', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(4, 4, 4, 2, '投递回复4', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(5, 5, 5, 2, '投递回复5', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(6, 6, 6, 1, '投递回复6', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(7, 7, 7, 3, '投递回复7', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(8, 8, 8, 1, '投递回复8', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(9, 9, 9, 2, '投递回复9', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(10, 10, 10, 1, '投递回复10', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(11, 11, 11, 2, '投递回复11', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(12, 12, 12, 2, '投递回复12', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(13, 13, 13, 3, '投递回复13', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(14, 14, 14, 1, '投递回复14', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(29, 14, 14, 2, '好的来面试吧地址哪里南里哪里......    线上面试腾讯会呀好#5456456', '2023-04-10 09:23:22', '2023-04-10 09:23:22');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-10 08:39:20');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 1, '1@qq.com', 927.91, '2023-04-10 08:41:37'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 2, '2@qq.com', 95.11, '2023-04-10 08:41:37'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, '3@qq.com', 817.62, '2023-04-10 08:41:37');

DROP TABLE IF EXISTS `zhaopin`;
CREATE TABLE IF NOT EXISTS `zhaopin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongsi_id` int DEFAULT NULL COMMENT '企业',
  `zhaopin_name` varchar(200) DEFAULT NULL COMMENT '招聘信息名称  Search111 ',
  `zhaopin_photo` varchar(200) DEFAULT NULL COMMENT '招聘信息照片',
  `zhaopin_daiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhaopin_address` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人',
  `zhaopin_phone` varchar(200) DEFAULT NULL COMMENT '招聘电话',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `zhaopin_types` int DEFAULT NULL COMMENT '招聘岗位 Search111',
  `leixing_types` int DEFAULT NULL COMMENT '招聘类型 Search111',
  `zhaopin_renshu_number` int DEFAULT NULL COMMENT '招聘人数',
  `zhaopin_content` text COMMENT '招聘信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='职位招聘';

DELETE FROM `zhaopin`;
INSERT INTO `zhaopin` (`id`, `gongsi_id`, `zhaopin_name`, `zhaopin_photo`, `zhaopin_daiyu`, `zhaopin_address`, `lianxiren_name`, `zhaopin_phone`, `zan_number`, `cai_number`, `zhaopin_types`, `leixing_types`, `zhaopin_renshu_number`, `zhaopin_content`, `create_time`) VALUES
	(1, 1, '招聘信息名称1', 'upload/zhaopin1.jpg', '薪资待遇1', '上班地点1', '联系人1', '17703786901', 182, 334, 2, 1, 230, '招聘信息详情1', '2023-04-10 08:41:37'),
	(2, 3, '招聘信息名称2', 'upload/zhaopin2.jpg', '薪资待遇2', '上班地点2', '联系人2', '17703786902', 455, 470, 2, 1, 27, '招聘信息详情2', '2023-04-10 08:41:37'),
	(3, 3, '招聘信息名称3', 'upload/zhaopin3.jpg', '薪资待遇3', '上班地点3', '联系人3', '17703786903', 192, 426, 1, 1, 255, '招聘信息详情3', '2023-04-10 08:41:37'),
	(4, 2, '招聘信息名称4', 'upload/zhaopin4.jpg', '薪资待遇4', '上班地点4', '联系人4', '17703786904', 463, 369, 2, 2, 30, '招聘信息详情4', '2023-04-10 08:41:37'),
	(5, 2, '招聘信息名称5', 'upload/zhaopin5.jpg', '薪资待遇5', '上班地点5', '联系人5', '17703786905', 168, 202, 3, 2, 211, '招聘信息详情5', '2023-04-10 08:41:37'),
	(6, 3, '招聘信息名称6', 'upload/zhaopin6.jpg', '薪资待遇6', '上班地点6', '联系人6', '17703786906', 253, 212, 3, 1, 466, '招聘信息详情6', '2023-04-10 08:41:37'),
	(7, 3, '招聘信息名称7', 'upload/zhaopin7.jpg', '薪资待遇7', '上班地点7', '联系人7', '17703786907', 208, 419, 2, 1, 36, '招聘信息详情7', '2023-04-10 08:41:37'),
	(8, 3, '招聘信息名称8', 'upload/zhaopin8.jpg', '薪资待遇8', '上班地点8', '联系人8', '17703786908', 197, 42, 1, 2, 126, '招聘信息详情8', '2023-04-10 08:41:37'),
	(9, 1, '招聘信息名称9', 'upload/zhaopin9.jpg', '薪资待遇9', '上班地点9', '联系人9', '17703786909', 102, 259, 1, 1, 311, '招聘信息详情9', '2023-04-10 08:41:37'),
	(10, 1, '招聘信息名称10', 'upload/zhaopin10.jpg', '薪资待遇10', '上班地点10', '联系人10', '17703786910', 415, 429, 3, 1, 434, '招聘信息详情10', '2023-04-10 08:41:37'),
	(11, 1, '招聘信息名称11', 'upload/zhaopin11.jpg', '薪资待遇11', '上班地点11', '联系人11', '17703786911', 387, 2, 3, 1, 392, '招聘信息详情11', '2023-04-10 08:41:37'),
	(12, 3, '招聘信息名称12', 'upload/zhaopin12.jpg', '薪资待遇12', '上班地点12', '联系人12', '17703786912', 57, 138, 2, 1, 323, '招聘信息详情12', '2023-04-10 08:41:37'),
	(13, 3, '招聘信息名称13', 'upload/zhaopin13.jpg', '薪资待遇13', '上班地点13', '联系人13', '17703786913', 249, 332, 2, 2, 210, '招聘信息详情13', '2023-04-10 08:41:37'),
	(14, 1, '招聘信息名称14', 'upload/zhaopin14.jpg', '薪资待遇14', '上班地点14', '联系人14', '17703786914', 380, 488, 2, 1, 500, '招聘信息详情14', '2023-04-10 08:41:37');

DROP TABLE IF EXISTS `zhaopin_collection`;
CREATE TABLE IF NOT EXISTS `zhaopin_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int DEFAULT NULL COMMENT '职位',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zhaopin_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='职位收藏';

DELETE FROM `zhaopin_collection`;
INSERT INTO `zhaopin_collection` (`id`, `zhaopin_id`, `yonghu_id`, `zhaopin_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(2, 2, 3, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(3, 3, 3, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(4, 4, 3, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(5, 5, 3, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(6, 6, 2, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(7, 7, 1, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(8, 8, 2, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(9, 9, 1, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(10, 10, 3, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(11, 11, 3, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(12, 12, 2, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(13, 13, 3, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(14, 14, 3, 1, '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(15, 14, 1, 2, '2023-04-10 09:22:53', '2023-04-10 09:22:53'),
	(16, 14, 1, 1, '2023-04-10 09:22:55', '2023-04-10 09:22:55'),
	(17, 13, 1, 1, '2024-08-04 05:52:49', '2024-08-04 05:52:49');

DROP TABLE IF EXISTS `zhaopin_liuyan`;
CREATE TABLE IF NOT EXISTS `zhaopin_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int DEFAULT NULL COMMENT '职位',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zhaopin_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='职位留言';

DELETE FROM `zhaopin_liuyan`;
INSERT INTO `zhaopin_liuyan` (`id`, `zhaopin_id`, `yonghu_id`, `zhaopin_liuyan_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '留言内容1', '回复信息1', '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(2, 2, 1, '留言内容2', '回复信息2', '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(3, 3, 1, '留言内容3', '回复信息3', '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(4, 4, 1, '留言内容4', '回复信息4', '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(5, 5, 1, '留言内容5', '回复信息5', '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(6, 6, 2, '留言内容6', '回复信息6', '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(7, 7, 3, '留言内容7', '回复信息7', '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(8, 8, 1, '留言内容8', '回复信息8', '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(9, 9, 3, '留言内容9', '回复信息9', '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(10, 10, 1, '留言内容10', '回复信息10', '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(11, 11, 1, '留言内容11', '回复信息11', '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(12, 12, 3, '留言内容12', '回复信息12', '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(13, 13, 1, '留言内容13', '回复信息13', '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(14, 14, 2, '留言内容14', '回复信息14', '2023-04-10 08:41:37', '2023-04-10 08:41:37', '2023-04-10 08:41:37'),
	(15, 14, 1, '呀呀呀', '5666', '2023-04-10 09:23:02', '2023-04-10 09:28:13', '2023-04-10 09:23:02');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
