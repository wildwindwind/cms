/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50539
Source Host           : localhost:3306
Source Database       : zjzcn

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2015-04-10 14:09:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_log`;
CREATE TABLE `tb_log` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `logType` int(11) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `create_time` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_log
-- ----------------------------
INSERT INTO `tb_log` VALUES ('6', 'admin', '0', '127.0.0.1', '2014-03-15 22:09:10', '用户登陆', 'username = admin\ncaptcha = 7975\n');
INSERT INTO `tb_log` VALUES ('7', 'admin', '0', '127.0.0.1', '2014-03-15 22:25:01', '用户登陆', 'username = admin\ncaptcha = 8144\n');
INSERT INTO `tb_log` VALUES ('15', null, '1', '127.0.0.1', '2014-03-16 18:04:13', '系统异常', '异常码:20140316180413351');
INSERT INTO `tb_log` VALUES ('16', null, '1', '127.0.0.1', '2014-03-16 18:04:24', '系统异常', '异常码:20140316180424159');
INSERT INTO `tb_log` VALUES ('17', 'admin', '0', '127.0.0.1', '2014-03-16 18:06:34', '用户登陆', 'username = admin\ncaptcha = 6116\n');
INSERT INTO `tb_log` VALUES ('18', null, '0', '127.0.0.1', '2014-03-16 18:08:52', '用户登陆', 'username = admin\ncaptcha = 6119\n');
INSERT INTO `tb_log` VALUES ('19', 'admin', '0', '127.0.0.1', '2014-03-16 18:08:56', '用户登陆', 'username = admin\ncaptcha = 7877\n');
INSERT INTO `tb_log` VALUES ('20', 'admin', '0', '127.0.0.1', '2014-03-16 18:26:50', '用户登陆', 'username = admin\ncaptcha = 8822\n');
INSERT INTO `tb_log` VALUES ('21', null, '0', '127.0.0.1', '2014-03-16 20:26:33', '用户登陆', 'username = admin\ncaptcha = 3216\n');
INSERT INTO `tb_log` VALUES ('22', 'admin', '0', '127.0.0.1', '2014-03-16 20:26:38', '用户登陆', 'username = admin\ncaptcha = 6676\n');
INSERT INTO `tb_log` VALUES ('23', 'admin', '0', '127.0.0.1', '2014-03-16 20:31:16', '用户登陆', 'username = admin\ncaptcha = 7455\n');
INSERT INTO `tb_log` VALUES ('24', 'admin', '1', '127.0.0.1', '2014-03-16 20:33:57', '系统异常', '异常码:20140316203357230');
INSERT INTO `tb_log` VALUES ('25', 'admin', '0', '127.0.0.1', '2014-03-16 20:35:22', '用户登陆', 'username = admin\ncaptcha = 3632\n');
INSERT INTO `tb_log` VALUES ('26', null, '0', '127.0.0.1', '2014-03-16 20:42:22', '用户登陆', 'username = admin\ncaptcha = 1694\n');
INSERT INTO `tb_log` VALUES ('27', 'admin', '0', '127.0.0.1', '2014-03-16 20:42:30', '用户登陆', 'username = admin\ncaptcha = 9272\n');
INSERT INTO `tb_log` VALUES ('28', 'admin', '0', '127.0.0.1', '2014-03-16 20:48:23', '用户登陆', 'username = admin\ncaptcha = 4763\n');
INSERT INTO `tb_log` VALUES ('29', 'admin', '1', '127.0.0.1', '2014-03-16 21:44:38', '系统异常', '异常码:20140316214438238');
INSERT INTO `tb_log` VALUES ('30', 'zjz', '0', '127.0.0.1', '2014-03-16 21:46:10', '用户登陆', 'username = zjz\ncaptcha = 1375\n');
INSERT INTO `tb_log` VALUES ('31', 'admin', '0', '127.0.0.1', '2014-03-16 21:47:57', '用户登陆', 'username = admin\ncaptcha = 3495\n');
INSERT INTO `tb_log` VALUES ('32', 'zjz', '0', '127.0.0.1', '2014-03-16 21:57:24', '用户登陆', 'username = zjz\ncaptcha = 5889\n');
INSERT INTO `tb_log` VALUES ('33', 'zjz', '0', '127.0.0.1', '2014-03-16 21:57:24', '用户登陆', 'username = zjz\ncaptcha = 5889\n');
INSERT INTO `tb_log` VALUES ('34', 'admin', '0', '127.0.0.1', '2014-03-16 21:57:34', '用户登陆', 'username = admin\ncaptcha = 3619\n');
INSERT INTO `tb_log` VALUES ('35', 'zjz', '0', '127.0.0.1', '2014-03-16 21:59:17', '用户登陆', 'username = zjz\ncaptcha = 6545\n');
INSERT INTO `tb_log` VALUES ('36', 'zjz', '0', '127.0.0.1', '2014-03-16 21:59:17', '用户登陆', 'username = zjz\ncaptcha = 6545\n');
INSERT INTO `tb_log` VALUES ('37', 'admin', '0', '127.0.0.1', '2014-03-17 11:00:44', '用户登陆', 'username = admin\ncaptcha = 7151\n');
INSERT INTO `tb_log` VALUES ('38', 'zjz', '0', '127.0.0.1', '2014-03-17 11:01:24', '用户登陆', 'username = zjz\ncaptcha = 1445\n');
INSERT INTO `tb_log` VALUES ('39', 'zjz', '0', '127.0.0.1', '2014-03-17 11:01:24', '用户登陆', 'username = zjz\ncaptcha = 1445\n');
INSERT INTO `tb_log` VALUES ('40', 'zjz', '0', '127.0.0.1', '2014-03-17 11:04:02', '用户登陆', 'username = zjz\ncaptcha = 4284\n');
INSERT INTO `tb_log` VALUES ('41', 'zjz', '0', '127.0.0.1', '2014-03-17 11:04:02', '用户登陆', 'username = zjz\ncaptcha = 4284\n');
INSERT INTO `tb_log` VALUES ('42', 'admin', '0', '127.0.0.1', '2014-03-17 12:20:02', '用户登陆', 'username = admin\ncaptcha = 3674\n');
INSERT INTO `tb_log` VALUES ('43', 'admin', '1', '127.0.0.1', '2014-03-17 12:20:02', '系统异常', '异常码:20140317122002339');
INSERT INTO `tb_log` VALUES ('44', 'admin', '0', '127.0.0.1', '2014-03-17 12:21:57', '用户登陆', 'username = admin\ncaptcha = 2236\n');
INSERT INTO `tb_log` VALUES ('45', 'admin', '0', '127.0.0.1', '2014-03-17 14:02:33', '用户登陆', 'username = admin\ncaptcha = 7495\n');
INSERT INTO `tb_log` VALUES ('46', 'admin', '0', '127.0.0.1', '2014-03-17 14:03:28', '角色-保存', 'ids = \nroleName = 1234\nisSuper = 0\nremark = \n');
INSERT INTO `tb_log` VALUES ('48', 'admin', '0', '127.0.0.1', '2014-03-17 16:17:15', '用户登陆', 'username = admin\ncaptcha = 4188\n');
INSERT INTO `tb_log` VALUES ('49', 'admin', '0', '127.0.0.1', '2014-03-17 16:20:18', '用户-保存', 'id = \nusername = 1234\nname = 1234\nemail = 1234@1221.com\ngender = 0\nisDisabled = 0\nremark = \n');
INSERT INTO `tb_log` VALUES ('50', 'admin', '0', '127.0.0.1', '2014-03-17 16:25:20', '用户-保存', 'id = \nusername = 123222\nname = 122222\nemail = 123@12.22\ngender = 0\nisDisabled = 0\nremark = \n');
INSERT INTO `tb_log` VALUES ('51', 'admin', '0', '127.0.0.1', '2014-03-17 16:25:57', '用户-保存', 'id = \nusername = 234q\nname = qwe\nemail = qwe@12.23\ngender = 0\nisDisabled = 0\nremark = \n');
INSERT INTO `tb_log` VALUES ('52', 'admin', '0', '127.0.0.1', '2014-03-17 16:27:46', '角色-保存', 'ids = \nroleName = qwe\nisSuper = 0\nremark = \n');
INSERT INTO `tb_log` VALUES ('53', 'admin', '0', '127.0.0.1', '2014-03-17 16:28:48', '用户-保存', 'id = \nusername = qwedf\nname = qwe\nemail = qwer@123.dd\ngender = \nisDisabled = 0\nremark = \n');
INSERT INTO `tb_log` VALUES ('54', 'admin', '0', '127.0.0.1', '2014-03-17 16:30:22', '用户-保存', 'id = \nusername = 123we\nname = 1234\nemail = wer@22.222\ngender = \nisDisabled = 0\nremark = \n');
INSERT INTO `tb_log` VALUES ('55', 'admin', '0', '127.0.0.1', '2014-03-17 16:30:46', '用户-保存', 'id = \nusername = 2345\nname = 234\nemail = 2345@123.345\ngender = 0\nisDisabled = 0\nremark = \n');
INSERT INTO `tb_log` VALUES ('56', 'admin', '0', '127.0.0.1', '2014-03-17 16:37:32', '用户登陆', 'username = admin\ncaptcha = 5214\n');
INSERT INTO `tb_log` VALUES ('57', 'admin', '0', '127.0.0.1', '2014-03-17 16:43:04', '用户-更新', 'id = 2\nname = zjz\nemail = 123@12.2\ngender = \nisDisabled = 0\nremark = \n');
INSERT INTO `tb_log` VALUES ('58', 'admin', '0', '127.0.0.1', '2014-03-17 16:43:15', '用户-更新', 'id = 5\nname = qwe\nemail = qwe@12.23\ngender = 0\nisDisabled = 0\nremark = \n');
INSERT INTO `tb_log` VALUES ('59', null, '0', '127.0.0.1', '2014-03-17 21:50:18', '用户登陆', 'username = admin\ncaptcha = 8636\n');
INSERT INTO `tb_log` VALUES ('60', 'admin', '0', '127.0.0.1', '2014-03-17 21:50:40', '用户登陆', 'username = admin\ncaptcha = 4387\n');
INSERT INTO `tb_log` VALUES ('61', 'admin', '0', '127.0.0.1', '2014-03-17 22:03:48', '用户-更新', 'id = 5\nname = qwe\nemail = qwe@12.23\ngender = 0\nisDisabled = 1\nremark = \n');
INSERT INTO `tb_log` VALUES ('62', 'admin', '0', '127.0.0.1', '2014-03-18 09:04:41', '用户登陆', 'username = admin\ncaptcha = 2628\n');
INSERT INTO `tb_log` VALUES ('63', 'admin', '0', '127.0.0.1', '2014-03-18 09:07:19', '角色-保存', 'ids = 9957D7CEAF4A4729AF53B32070142424,\nroleName = 123\nisSuper = 0\nremark = 234\n');
INSERT INTO `tb_log` VALUES ('64', 'admin', '0', '127.0.0.1', '2014-03-18 09:15:53', '用户登陆', 'username = admin\ncaptcha = 7915\n');
INSERT INTO `tb_log` VALUES ('65', 'admin', '0', '127.0.0.1', '2014-03-18 09:23:20', '角色-保存', 'urls = 3C6EAC53938D4BB4ADC4D3BA41222BC0,\nname = 1234\nisSuper = 0\nremark = 1234\n');
INSERT INTO `tb_log` VALUES ('66', 'admin', '0', '127.0.0.1', '2014-03-18 10:08:03', '用户登陆', 'username = admin\ncaptcha = 9263\n');
INSERT INTO `tb_log` VALUES ('67', 'admin', '0', '127.0.0.1', '2014-03-18 10:12:43', '用户-更新', 'id = 1\nname = admin\nemail = zjzcn@126.com\ngender = \nisDisabled = 0\nremark = 1234\n');
INSERT INTO `tb_log` VALUES ('69', 'admin', '0', '127.0.0.1', '2014-03-18 13:02:19', '用户登陆', 'username = admin\ncaptcha = 4263\n');
INSERT INTO `tb_log` VALUES ('71', 'admin', '0', '127.0.0.1', '2014-03-19 14:08:54', '用户登陆', 'username = admin\ncaptcha = 6857\n');
INSERT INTO `tb_log` VALUES ('74', null, '0', '127.0.0.1', '2014-03-19 18:53:37', '用户登陆', 'username = admin\ncaptcha = 6883\n');
INSERT INTO `tb_log` VALUES ('75', 'admin', '0', '127.0.0.1', '2014-03-19 18:53:42', '用户登陆', 'username = admin\ncaptcha = 3765\n');
INSERT INTO `tb_log` VALUES ('76', 'admin', '0', '127.0.0.1', '2014-03-20 15:02:13', '用户登陆', 'username = admin\ncaptcha = 3562\n');
INSERT INTO `tb_log` VALUES ('77', null, '0', '127.0.0.1', '2014-03-20 20:15:55', '用户登陆', 'username = admin\ncaptcha = 9944\n');
INSERT INTO `tb_log` VALUES ('78', 'admin', '0', '127.0.0.1', '2014-03-20 20:16:00', '用户登陆', 'username = admin\ncaptcha = 5141\n');
INSERT INTO `tb_log` VALUES ('79', 'admin', '0', '127.0.0.1', '2014-03-21 08:56:48', '用户登陆', 'username = admin\ncaptcha = 9891\n');
INSERT INTO `tb_log` VALUES ('80', 'admin', '0', '127.0.0.1', '2014-03-21 11:10:52', '用户登陆', 'username = admin\ncaptcha = 3668\n');
INSERT INTO `tb_log` VALUES ('82', 'admin', '0', '127.0.0.1', '2014-03-21 11:22:03', '用户登陆', 'username = admin\ncaptcha = 5995\n');
INSERT INTO `tb_log` VALUES ('83', 'admin', '0', '127.0.0.1', '2014-03-21 11:53:53', '用户登陆', 'username = admin\ncaptcha = 2895\n');
INSERT INTO `tb_log` VALUES ('84', 'admin', '0', '127.0.0.1', '2014-03-21 12:11:21', '用户-保存', 'id = \nusername = 12342\nname = 12342\nemail = 123@123.3\ngender = \nisDisabled = 0\nremark = \n');
INSERT INTO `tb_log` VALUES ('85', 'admin', '0', '127.0.0.1', '2014-03-21 12:40:00', '用户-更新', 'id = 1\nname = admin\nemail = zjzcn@126.com\ngender = 0\nisDisabled = 0\nremark = 1234\n');
INSERT INTO `tb_log` VALUES ('86', 'admin', '0', '127.0.0.1', '2014-03-21 12:49:31', '用户登陆', 'username = admin\ncaptcha = 5765\n');
INSERT INTO `tb_log` VALUES ('87', 'admin', '0', '127.0.0.1', '2014-03-21 13:39:37', '用户登陆', 'username = admin\ncaptcha = 5191\n');
INSERT INTO `tb_log` VALUES ('88', 'admin', '0', '127.0.0.1', '2014-03-21 13:40:49', '角色-保存', 'urls = \nname = 12345\nremark = 234\nisSuper = 0\n');
INSERT INTO `tb_log` VALUES ('89', 'admin', '0', '127.0.0.1', '2014-03-21 14:56:25', '用户登陆', 'username = admin\ncaptcha = 9282\n');
INSERT INTO `tb_log` VALUES ('90', 'admin', '0', '127.0.0.1', '2014-03-24 21:14:27', '用户登陆', 'username = admin\ncaptcha = 5243\n');
INSERT INTO `tb_log` VALUES ('91', 'admin', '0', '0:0:0:0:0:0:0:1', '2015-03-19 18:06:20', '用户登陆', 'username = admin\ncaptcha = 2559\n');
INSERT INTO `tb_log` VALUES ('92', 'admin', '0', '0:0:0:0:0:0:0:1', '2015-03-19 19:05:33', '用户登陆', 'username = admin\ncaptcha = 6124\n');
INSERT INTO `tb_log` VALUES ('93', 'admin', '0', '0:0:0:0:0:0:0:1', '2015-03-19 20:00:14', '用户登陆', 'username = admin\ncaptcha = 9224\n');
INSERT INTO `tb_log` VALUES ('94', 'admin', '0', '0:0:0:0:0:0:0:1', '2015-04-05 13:57:40', '用户登陆', 'username = admin\ncaptcha = 5273\n');
INSERT INTO `tb_log` VALUES ('95', 'admin', '0', '0:0:0:0:0:0:0:1', '2015-04-05 16:45:06', '用户登陆', 'username = admin\ncaptcha = 3857\n');

-- ----------------------------
-- Table structure for tb_org
-- ----------------------------
DROP TABLE IF EXISTS `tb_org`;
CREATE TABLE `tb_org` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(2048) DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_org
-- ----------------------------

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `is_super` int(11) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('1', '超级管理员', '1', '超级管理员111');
INSERT INTO `tb_role` VALUES ('2', '2345', '0', '');
INSERT INTO `tb_role` VALUES ('3', null, '0', null);
INSERT INTO `tb_role` VALUES ('4', null, '0', null);
INSERT INTO `tb_role` VALUES ('5', '12345', '0', '');

-- ----------------------------
-- Table structure for tb_role_perm
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_perm`;
CREATE TABLE `tb_role_perm` (
  `role_id` int(12) DEFAULT NULL,
  `perm_url` varchar(100) DEFAULT NULL,
  KEY `FK_e7a3x5a80gq7nt5vr7stnia82` (`role_id`),
  CONSTRAINT `FK_e7a3x5a80gq7nt5vr7stnia82` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role_perm
-- ----------------------------
INSERT INTO `tb_role_perm` VALUES ('1', 'role_list');
INSERT INTO `tb_role_perm` VALUES ('2', 'role_list');
INSERT INTO `tb_role_perm` VALUES ('2', 'user_list');
INSERT INTO `tb_role_perm` VALUES ('5', 'self_doChangePwd');
INSERT INTO `tb_role_perm` VALUES ('5', 'user_save');
INSERT INTO `tb_role_perm` VALUES ('5', 'user_add');
INSERT INTO `tb_role_perm` VALUES ('5', 'role_update');
INSERT INTO `tb_role_perm` VALUES ('5', 'user_doAllocRole');
INSERT INTO `tb_role_perm` VALUES ('5', 'role_save');
INSERT INTO `tb_role_perm` VALUES ('5', 'role_list');
INSERT INTO `tb_role_perm` VALUES ('5', 'user_allocRole');
INSERT INTO `tb_role_perm` VALUES ('5', 'self_doChangeInfo');
INSERT INTO `tb_role_perm` VALUES ('5', 'user_list');
INSERT INTO `tb_role_perm` VALUES ('5', 'user_exist');
INSERT INTO `tb_role_perm` VALUES ('5', 'role_edit');
INSERT INTO `tb_role_perm` VALUES ('5', 'role_add');
INSERT INTO `tb_role_perm` VALUES ('5', 'user_delete');
INSERT INTO `tb_role_perm` VALUES ('5', 'log_list');
INSERT INTO `tb_role_perm` VALUES ('5', 'user_update');
INSERT INTO `tb_role_perm` VALUES ('5', 'user_resetPwd');
INSERT INTO `tb_role_perm` VALUES ('5', 'log_delete');
INSERT INTO `tb_role_perm` VALUES ('5', 'user_edit');
INSERT INTO `tb_role_perm` VALUES ('5', 'self_changePwd');
INSERT INTO `tb_role_perm` VALUES ('5', 'role_delete');
INSERT INTO `tb_role_perm` VALUES ('5', 'self_changeInfo');
INSERT INTO `tb_role_perm` VALUES ('1', 'self_doChangePwd');
INSERT INTO `tb_role_perm` VALUES ('1', 'user_save');
INSERT INTO `tb_role_perm` VALUES ('1', 'user_add');
INSERT INTO `tb_role_perm` VALUES ('1', 'user_doAllocRole');
INSERT INTO `tb_role_perm` VALUES ('1', 'role_save');
INSERT INTO `tb_role_perm` VALUES ('1', 'user_allocRole');
INSERT INTO `tb_role_perm` VALUES ('1', 'self_doChangeInfo');
INSERT INTO `tb_role_perm` VALUES ('1', 'user_list');
INSERT INTO `tb_role_perm` VALUES ('1', 'user_exist');
INSERT INTO `tb_role_perm` VALUES ('1', 'role_add');
INSERT INTO `tb_role_perm` VALUES ('1', 'user_delete');
INSERT INTO `tb_role_perm` VALUES ('1', 'user_update');
INSERT INTO `tb_role_perm` VALUES ('1', 'user_resetPwd');
INSERT INTO `tb_role_perm` VALUES ('1', 'user_edit');
INSERT INTO `tb_role_perm` VALUES ('1', 'self_changePwd');
INSERT INTO `tb_role_perm` VALUES ('1', 'self_changeInfo');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `create_time` varchar(20) DEFAULT NULL,
  `is_disabled` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'admin', 'admin', '96E79218965EB72C92A549DD5A330112', '0', 'zjzcn@126.com', null, null, '0');
INSERT INTO `tb_user` VALUES ('2', 'zjz', 'zjz', '96E79218965EB72C92A549DD5A330112', null, '123@12.2', null, null, '0');
INSERT INTO `tb_user` VALUES ('3', '1234', '1234', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '1234@1221.com', null, null, '0');
INSERT INTO `tb_user` VALUES ('5', 'qwe', '234q', 'E10ADC3949BA59ABBE56E057F20F883E', '0', 'qwe@12.23', null, null, '0');
INSERT INTO `tb_user` VALUES ('6', '12342', '12342', 'E10ADC3949BA59ABBE56E057F20F883E', null, '123@123.3', null, '2014-03-21 12:11:20', '0');

-- ----------------------------
-- Table structure for tb_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_role`;
CREATE TABLE `tb_user_role` (
  `user_id` int(12) DEFAULT NULL,
  `role_id` int(12) DEFAULT NULL,
  KEY `FK_1txpcisco2l99tl5qqshr6ptp` (`role_id`),
  KEY `FK_qrc2efy4dx7j5okwcg0hit512` (`user_id`),
  CONSTRAINT `FK_1txpcisco2l99tl5qqshr6ptp` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`),
  CONSTRAINT `FK_qrc2efy4dx7j5okwcg0hit512` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user_role
-- ----------------------------
INSERT INTO `tb_user_role` VALUES ('1', '1');
INSERT INTO `tb_user_role` VALUES ('2', '2');

-- ----------------------------
-- Table structure for wf_cc_order
-- ----------------------------
DROP TABLE IF EXISTS `wf_cc_order`;
CREATE TABLE `wf_cc_order` (
  `order_Id` varchar(32) DEFAULT NULL COMMENT '流程实例ID',
  `actor_Id` varchar(100) DEFAULT NULL COMMENT '参与者ID',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `creator` varchar(50) DEFAULT NULL COMMENT '发起人',
  `create_Time` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `finish_Time` varchar(50) DEFAULT NULL COMMENT '完成时间',
  KEY `IDX_CCORDER_ORDER` (`order_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='抄送实例表';

-- ----------------------------
-- Records of wf_cc_order
-- ----------------------------

-- ----------------------------
-- Table structure for wf_hist_order
-- ----------------------------
DROP TABLE IF EXISTS `wf_hist_order`;
CREATE TABLE `wf_hist_order` (
  `id` varchar(32) NOT NULL COMMENT '主键ID',
  `process_Id` varchar(32) NOT NULL COMMENT '流程定义ID',
  `order_State` tinyint(1) NOT NULL COMMENT '状态',
  `creator` varchar(100) DEFAULT NULL COMMENT '发起人',
  `create_Time` varchar(50) NOT NULL COMMENT '发起时间',
  `end_Time` varchar(50) DEFAULT NULL COMMENT '完成时间',
  `expire_Time` varchar(50) DEFAULT NULL COMMENT '期望完成时间',
  `priority` tinyint(1) DEFAULT NULL COMMENT '优先级',
  `parent_Id` varchar(32) DEFAULT NULL COMMENT '父流程ID',
  `order_No` varchar(100) DEFAULT NULL COMMENT '流程实例编号',
  `variable` varchar(2000) DEFAULT NULL COMMENT '附属变量json存储',
  PRIMARY KEY (`id`),
  KEY `IDX_HIST_ORDER_PROCESSID` (`process_Id`),
  KEY `IDX_HIST_ORDER_NO` (`order_No`),
  KEY `FK_HIST_ORDER_PARENTID` (`parent_Id`),
  CONSTRAINT `wf_hist_order_ibfk_1` FOREIGN KEY (`process_Id`) REFERENCES `wf_process` (`id`),
  CONSTRAINT `wf_hist_order_ibfk_2` FOREIGN KEY (`parent_Id`) REFERENCES `wf_hist_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='历史流程实例表';

-- ----------------------------
-- Records of wf_hist_order
-- ----------------------------

-- ----------------------------
-- Table structure for wf_hist_task
-- ----------------------------
DROP TABLE IF EXISTS `wf_hist_task`;
CREATE TABLE `wf_hist_task` (
  `id` varchar(32) NOT NULL COMMENT '主键ID',
  `order_Id` varchar(32) NOT NULL COMMENT '流程实例ID',
  `task_Name` varchar(100) NOT NULL COMMENT '任务名称',
  `display_Name` varchar(200) NOT NULL COMMENT '任务显示名称',
  `task_Type` tinyint(1) NOT NULL COMMENT '任务类型',
  `perform_Type` tinyint(1) DEFAULT NULL COMMENT '参与类型',
  `task_State` tinyint(1) NOT NULL COMMENT '任务状态',
  `operator` varchar(100) DEFAULT NULL COMMENT '任务处理人',
  `create_Time` varchar(50) NOT NULL COMMENT '任务创建时间',
  `finish_Time` varchar(50) DEFAULT NULL COMMENT '任务完成时间',
  `expire_Time` varchar(50) DEFAULT NULL COMMENT '任务期望完成时间',
  `action_Url` varchar(200) DEFAULT NULL COMMENT '任务处理url',
  `parent_Task_Id` varchar(32) DEFAULT NULL COMMENT '父任务ID',
  `variable` varchar(2000) DEFAULT NULL COMMENT '附属变量json存储',
  PRIMARY KEY (`id`),
  KEY `IDX_HIST_TASK_ORDER` (`order_Id`),
  KEY `IDX_HIST_TASK_TASKNAME` (`task_Name`),
  KEY `IDX_HIST_TASK_PARENTTASK` (`parent_Task_Id`),
  CONSTRAINT `wf_hist_task_ibfk_1` FOREIGN KEY (`order_Id`) REFERENCES `wf_hist_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='历史任务表';

-- ----------------------------
-- Records of wf_hist_task
-- ----------------------------

-- ----------------------------
-- Table structure for wf_hist_task_actor
-- ----------------------------
DROP TABLE IF EXISTS `wf_hist_task_actor`;
CREATE TABLE `wf_hist_task_actor` (
  `task_Id` varchar(32) NOT NULL COMMENT '任务ID',
  `actor_Id` varchar(100) NOT NULL COMMENT '参与者ID',
  KEY `IDX_HIST_TASKACTOR_TASK` (`task_Id`),
  CONSTRAINT `wf_hist_task_actor_ibfk_1` FOREIGN KEY (`task_Id`) REFERENCES `wf_hist_task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='历史任务参与者表';

-- ----------------------------
-- Records of wf_hist_task_actor
-- ----------------------------

-- ----------------------------
-- Table structure for wf_order
-- ----------------------------
DROP TABLE IF EXISTS `wf_order`;
CREATE TABLE `wf_order` (
  `id` varchar(32) NOT NULL COMMENT '主键ID',
  `parent_Id` varchar(32) DEFAULT NULL COMMENT '父流程ID',
  `process_Id` varchar(32) NOT NULL COMMENT '流程定义ID',
  `creator` varchar(100) DEFAULT NULL COMMENT '发起人',
  `create_Time` varchar(50) NOT NULL COMMENT '发起时间',
  `expire_Time` varchar(50) DEFAULT NULL COMMENT '期望完成时间',
  `last_Update_Time` varchar(50) DEFAULT NULL COMMENT '上次更新时间',
  `last_Updator` varchar(100) DEFAULT NULL COMMENT '上次更新人',
  `priority` tinyint(1) DEFAULT NULL COMMENT '优先级',
  `parent_Node_Name` varchar(100) DEFAULT NULL COMMENT '父流程依赖的节点名称',
  `order_No` varchar(100) DEFAULT NULL COMMENT '流程实例编号',
  `variable` varchar(2000) DEFAULT NULL COMMENT '附属变量json存储',
  `version` int(3) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  KEY `IDX_ORDER_PROCESSID` (`process_Id`),
  KEY `IDX_ORDER_NO` (`order_No`),
  KEY `FK_ORDER_PARENTID` (`parent_Id`),
  CONSTRAINT `wf_order_ibfk_1` FOREIGN KEY (`process_Id`) REFERENCES `wf_process` (`id`),
  CONSTRAINT `wf_order_ibfk_2` FOREIGN KEY (`parent_Id`) REFERENCES `wf_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='流程实例表';

-- ----------------------------
-- Records of wf_order
-- ----------------------------

-- ----------------------------
-- Table structure for wf_process
-- ----------------------------
DROP TABLE IF EXISTS `wf_process`;
CREATE TABLE `wf_process` (
  `id` varchar(32) NOT NULL COMMENT '主键ID',
  `name` varchar(100) DEFAULT NULL COMMENT '流程名称',
  `display_Name` varchar(200) DEFAULT NULL COMMENT '流程显示名称',
  `type` varchar(100) DEFAULT NULL COMMENT '流程类型',
  `instance_Url` varchar(200) DEFAULT NULL COMMENT '实例url',
  `state` tinyint(1) DEFAULT NULL COMMENT '流程是否可用',
  `content` longblob COMMENT '流程模型定义',
  `version` int(2) DEFAULT NULL COMMENT '版本',
  `create_Time` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(50) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`),
  KEY `IDX_PROCESS_NAME` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='流程定义表';

-- ----------------------------
-- Records of wf_process
-- ----------------------------

-- ----------------------------
-- Table structure for wf_surrogate
-- ----------------------------
DROP TABLE IF EXISTS `wf_surrogate`;
CREATE TABLE `wf_surrogate` (
  `id` varchar(100) NOT NULL COMMENT '主键ID',
  `process_Name` varchar(100) DEFAULT NULL COMMENT '流程名称',
  `operator` varchar(100) DEFAULT NULL COMMENT '授权人',
  `surrogate` varchar(100) DEFAULT NULL COMMENT '代理人',
  `odate` varchar(64) DEFAULT NULL COMMENT '操作时间',
  `sdate` varchar(64) DEFAULT NULL COMMENT '开始时间',
  `edate` varchar(64) DEFAULT NULL COMMENT '结束时间',
  `state` tinyint(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `IDX_SURROGATE_OPERATOR` (`operator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='委托代理表';

-- ----------------------------
-- Records of wf_surrogate
-- ----------------------------

-- ----------------------------
-- Table structure for wf_task
-- ----------------------------
DROP TABLE IF EXISTS `wf_task`;
CREATE TABLE `wf_task` (
  `id` varchar(32) NOT NULL COMMENT '主键ID',
  `order_Id` varchar(32) NOT NULL COMMENT '流程实例ID',
  `task_Name` varchar(100) NOT NULL COMMENT '任务名称',
  `display_Name` varchar(200) NOT NULL COMMENT '任务显示名称',
  `task_Type` tinyint(1) NOT NULL COMMENT '任务类型',
  `perform_Type` tinyint(1) DEFAULT NULL COMMENT '参与类型',
  `operator` varchar(100) DEFAULT NULL COMMENT '任务处理人',
  `create_Time` varchar(50) DEFAULT NULL COMMENT '任务创建时间',
  `finish_Time` varchar(50) DEFAULT NULL COMMENT '任务完成时间',
  `expire_Time` varchar(50) DEFAULT NULL COMMENT '任务期望完成时间',
  `action_Url` varchar(200) DEFAULT NULL COMMENT '任务处理的url',
  `parent_Task_Id` varchar(100) DEFAULT NULL COMMENT '父任务ID',
  `variable` varchar(2000) DEFAULT NULL COMMENT '附属变量json存储',
  `version` tinyint(1) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  KEY `IDX_TASK_ORDER` (`order_Id`),
  KEY `IDX_TASK_TASKNAME` (`task_Name`),
  KEY `IDX_TASK_PARENTTASK` (`parent_Task_Id`),
  CONSTRAINT `wf_task_ibfk_1` FOREIGN KEY (`order_Id`) REFERENCES `wf_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务表';

-- ----------------------------
-- Records of wf_task
-- ----------------------------

-- ----------------------------
-- Table structure for wf_task_actor
-- ----------------------------
DROP TABLE IF EXISTS `wf_task_actor`;
CREATE TABLE `wf_task_actor` (
  `task_Id` varchar(32) NOT NULL COMMENT '任务ID',
  `actor_Id` varchar(100) NOT NULL COMMENT '参与者ID',
  KEY `IDX_TASKACTOR_TASK` (`task_Id`),
  CONSTRAINT `wf_task_actor_ibfk_1` FOREIGN KEY (`task_Id`) REFERENCES `wf_task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务参与者表';

-- ----------------------------
-- Records of wf_task_actor
-- ----------------------------
