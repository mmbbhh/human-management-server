/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : management

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 06/06/2020 22:32:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for manage_department
-- ----------------------------
DROP TABLE IF EXISTS `manage_department`;
CREATE TABLE `manage_department`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nameZh` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manage_department
-- ----------------------------
INSERT INTO `manage_department` VALUES (1, 'produce', '生产部');
INSERT INTO `manage_department` VALUES (2, 'sale', '销售部');
INSERT INTO `manage_department` VALUES (3, 'scheme', '策划部');
INSERT INTO `manage_department` VALUES (4, 'operation', '运营部');
INSERT INTO `manage_department` VALUES (5, 'financial', '财务部');

-- ----------------------------
-- Table structure for manage_message
-- ----------------------------
DROP TABLE IF EXISTS `manage_message`;
CREATE TABLE `manage_message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `check` int(2) NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manage_message
-- ----------------------------
INSERT INTO `manage_message` VALUES (17, '<p><strong><em>哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈</em></strong></p>', 3, 1, '666', '2020-04-22 10:16:47', '请假申请');
INSERT INTO `manage_message` VALUES (18, '<p>突突突突突突拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖特所拖突突突突突突拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖特所拖突突突突突突拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖特所拖突突突突突突拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖特所拖突突突突突突拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖特所拖突突突突突突拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖特所拖突突突突突突拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖特所拖突突突突突突拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖特所拖</p>', 3, 1, '可以', '2020-04-22 10:32:46', 'test ');
INSERT INTO `manage_message` VALUES (19, '<h2>啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</h2>', 3, -1, '无', '2020-04-22 11:05:38', '哈哈');
INSERT INTO `manage_message` VALUES (20, '<p>？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？</p>', 6, 1, '无', '2020-04-22 11:22:42', 'tttest');
INSERT INTO `manage_message` VALUES (21, '<p>啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</p>', 3, 1, '无', '2020-04-22 14:34:14', '啊啊啊啊啊啊');
INSERT INTO `manage_message` VALUES (22, '<p>啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</p>', 3, -1, '不行', '2020-04-30 14:34:14', '啊啊啊啊啊啊');
INSERT INTO `manage_message` VALUES (23, '<p>51要请假</p>', 3, 1, '可以', '2020-05-01 16:43:04', '51请假');

-- ----------------------------
-- Table structure for manage_notice
-- ----------------------------
DROP TABLE IF EXISTS `manage_notice`;
CREATE TABLE `manage_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `did` int(11) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upload_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manage_notice
-- ----------------------------
INSERT INTO `manage_notice` VALUES (1, 'test', 3, 1, 'mmbbhh', '2020-04-23 00:00:00');
INSERT INTO `manage_notice` VALUES (2, '<p>哒哒哒哒哒哒多多多</p>', 1, 2, 'hello', '2020-04-23 17:39:57');
INSERT INTO `manage_notice` VALUES (3, '<p>奥术大师多</p>', 1, 2, 'hello', '2020-04-23 17:41:47');
INSERT INTO `manage_notice` VALUES (6, '<h1>test阿斯蒂芬</h1>', 1, 2, 'hello', '2020-04-24 11:56:02');
INSERT INTO `manage_notice` VALUES (7, '<p>你好，我是测试</p>', 1, 2, 'hello', '2020-05-01 16:27:20');
INSERT INTO `manage_notice` VALUES (8, '<h1>测试</h1><h2>这是一条测试</h2><p><span style=\"color: rgb(230, 0, 0);\">内容内容内容内容内容内容内容内容内容内容内容内容</span></p>', 1, 2, 'hello', '2020-05-20 17:31:26');
INSERT INTO `manage_notice` VALUES (9, '<h1><span style=\"color: rgb(0, 71, 178);\">测试</span></h1><p><br></p><p><span style=\"color: rgb(230, 0, 0); font-size: 20px;\" class=\"ql-font-FangSong\">今天加班无补贴，早退计入缺勤</span></p>', 1, 2, 'hello', '2020-06-02 21:21:52');

-- ----------------------------
-- Table structure for manage_role
-- ----------------------------
DROP TABLE IF EXISTS `manage_role`;
CREATE TABLE `manage_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nameZh` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manage_role
-- ----------------------------
INSERT INTO `manage_role` VALUES (1, 'ROLE_human_manage', '人事总管');
INSERT INTO `manage_role` VALUES (2, 'ROLE_department_manage', '部门总管');
INSERT INTO `manage_role` VALUES (3, 'ROLE_user', '普通员工');
INSERT INTO `manage_role` VALUES (4, 'ROLE_financial', '财务总监');

-- ----------------------------
-- Table structure for manage_sign
-- ----------------------------
DROP TABLE IF EXISTS `manage_sign`;
CREATE TABLE `manage_sign`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(3) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `check` tinyint(2) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `date`(`date`, `uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manage_sign
-- ----------------------------
INSERT INTO `manage_sign` VALUES (1, '2020-04-14 01:00:00.000', 1, 1);
INSERT INTO `manage_sign` VALUES (5, '2020-03-14 00:00:00.000', 1, 1);
INSERT INTO `manage_sign` VALUES (6, '2020-04-01 11:37:44.000', 1, 1);
INSERT INTO `manage_sign` VALUES (19, '2020-04-15 00:00:00.000', 1, 1);
INSERT INTO `manage_sign` VALUES (20, '2020-04-15 00:00:00.000', 3, 1);
INSERT INTO `manage_sign` VALUES (21, '2020-04-16 00:00:00.000', 3, 1);
INSERT INTO `manage_sign` VALUES (22, '2020-04-17 00:00:00.000', 3, -1);
INSERT INTO `manage_sign` VALUES (32, '2020-04-17 00:00:00.000', 2, 1);
INSERT INTO `manage_sign` VALUES (34, '2020-04-17 13:50:32.000', 5, 1);
INSERT INTO `manage_sign` VALUES (35, '2020-04-18 00:00:00.000', 3, 1);
INSERT INTO `manage_sign` VALUES (36, '2020-04-18 00:00:00.000', 2, 1);
INSERT INTO `manage_sign` VALUES (37, '2020-04-23 00:00:00.000', 3, -1);
INSERT INTO `manage_sign` VALUES (40, '2020-04-23 00:00:00.000', 2, 1);
INSERT INTO `manage_sign` VALUES (41, '2020-05-01 00:00:00.000', 3, 1);
INSERT INTO `manage_sign` VALUES (43, '2020-05-01 00:00:00.000', 2, 1);
INSERT INTO `manage_sign` VALUES (49, '2020-05-01 00:00:00.000', 1, 1);
INSERT INTO `manage_sign` VALUES (50, '2020-05-19 00:00:00.000', 1, 1);
INSERT INTO `manage_sign` VALUES (51, '2020-05-19 00:00:00.000', 3, 1);
INSERT INTO `manage_sign` VALUES (52, '2020-05-21 00:00:00.000', 4, 1);
INSERT INTO `manage_sign` VALUES (53, '2020-05-24 00:00:00.000', 7, 1);
INSERT INTO `manage_sign` VALUES (54, '2020-05-24 00:00:00.000', 8, 1);
INSERT INTO `manage_sign` VALUES (55, '2020-05-24 00:00:00.000', 9, 1);
INSERT INTO `manage_sign` VALUES (56, '2020-05-23 00:00:00.000', 7, -1);
INSERT INTO `manage_sign` VALUES (57, '2020-06-01 00:00:00.000', 1, 1);
INSERT INTO `manage_sign` VALUES (58, '2020-06-01 00:00:00.000', 2, 1);
INSERT INTO `manage_sign` VALUES (59, '2020-06-01 00:00:00.000', 3, 1);
INSERT INTO `manage_sign` VALUES (60, '2020-06-01 00:00:00.000', 4, 1);
INSERT INTO `manage_sign` VALUES (61, '2020-06-01 00:00:00.000', 5, 1);
INSERT INTO `manage_sign` VALUES (62, '2020-06-02 00:00:00.000', 3, 1);
INSERT INTO `manage_sign` VALUES (63, '2020-06-02 00:00:00.000', 4, 1);
INSERT INTO `manage_sign` VALUES (64, '2020-06-02 00:00:00.000', 5, 1);
INSERT INTO `manage_sign` VALUES (65, '2020-06-02 00:00:00.000', 6, 1);
INSERT INTO `manage_sign` VALUES (66, '2020-06-02 00:00:00.000', 7, 1);
INSERT INTO `manage_sign` VALUES (68, '2020-06-05 00:00:00.000', 3, -1);

-- ----------------------------
-- Table structure for manage_user
-- ----------------------------
DROP TABLE IF EXISTS `manage_user`;
CREATE TABLE `manage_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_age` int(20) NULL DEFAULT NULL,
  `user_sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_pay` double(20, 0) NULL DEFAULT NULL,
  `user_addr` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enabled` tinyint(1) NULL DEFAULT NULL,
  `locked` tinyint(1) NULL DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_name`(`user_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manage_user
-- ----------------------------
INSERT INTO `manage_user` VALUES (1, '203001', '耿敏智', 'mmbbhh', '$2a$10$RMuFXGQ5AtH4wOvkUqyvuecpqUSeoxZYqilXzbz50dceRsga.WYiq', '13012345678', 41, '男', 8000, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (2, '201002', '党高澹', 'hello', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13745698521', 38, '男', 7000, '上海市普陀区金沙江路 1517 弄', 1, 0, 'http://123.57.217.239:8889/images/2020/04/23/31a1d87fdc59634e551cd5e23f8ac0b4.jpg');
INSERT INTO `manage_user` VALUES (3, '201001', '富同方', 'normal', '$2a$10$KueCPNpSxgKM0ahkH4JOxeZtiT/QpNXmJHre2nd7xpkLcZWHRwJ8S', '13577884123', 27, '男', 3000, '上海市普陀区金沙江路 1517 弄', 1, 0, 'http://123.57.217.239:8889/images/2020/04/17/747e3727832c4f2e84cabab489ce9086.jpg');
INSERT INTO `manage_user` VALUES (4, '200001', '古兴生', 'financial', '$2a$10$RMuFXGQ5AtH4wOvkUqyvuecpqUSeoxZYqilXzbz50dceRsga.WYiq', '14785469875', 31, '男', 7000, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (5, '202001', '金安宁', 'test', '$10$RMuFXGQ5AtH4wOvkUqyvuecpqUSeoxZYqilXzbz50dceRsga.WYiq', '13555555555', 25, '男', 3500, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (6, '201003', '甄温瑜', 'normal2', '$2a$10$KueCPNpSxgKM0ahkH4JOxeZtiT/QpNXmJHre2nd7xpkLcZWHRwJ8S', '13745698521', 31, '男', 5000, '上海市普陀区金沙江路 1517 弄', 1, 0, '');
INSERT INTO `manage_user` VALUES (7, '201004', '桓博远', 'a1', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 29, '男', 4800, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (8, '201005', '庾清雅', 'a2', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 41, '女', 3400, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (9, '201006', '张明珠', 'a3', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 21, '女', 5100, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (10, '201007', '龚从云', 'a4', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 28, '女', 6500, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (11, '201008', '傅永昌', 'a5', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 26, '男', 4200, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (12, '201009', '张迎波', 'a6', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 27, '女', 5200, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (13, '201010', '关晗日', 'a7', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 35, '男', 5100, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (14, '201011', '桓冰双', 'a8', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 38, '女', 3600, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (15, '201012', '萧致远', 'a9', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 45, '男', 4400, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (16, '202002', '许雅致', 'b1', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 41, '女', 6500, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (17, '202003', '罗鸿羽', 'b2', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 51, '男', 3900, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (18, '202004', '乔南蓉', 'b3', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 52, '女', 4700, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (19, '202005', '金鹏翼', 'b4', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 55, '男', 4800, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (20, '202006', '伊琼诗', 'b5', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 37, '女', 5500, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (21, '202007', '相雨泽', 'b6', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 35, '男', 6100, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (22, '202008', '江抒怀', 'b7', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 36, '女', 3100, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (23, '202009', '堵高达', 'b8', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 32, '男', 5200, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (24, '202010', '景瑜蓓', 'b9', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 24, '女', 5400, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (25, '203002', '伊兴生', 'c1', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 28, '男', 4300, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (26, '203003', '王欣笑', 'c2', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 21, '女', 5200, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (27, '203004', '甄志强', 'c3', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 26, '男', 6100, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (28, '203005', '高芬菲', 'c4', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 19, '女', 4000, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (29, '203006', '秦天空', 'c5', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 20, '男', 3000, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (30, '203007', '钭娅楠', 'c6', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 22, '女', 3200, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (31, '203008', '司建木', 'c7', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 37, '男', 6300, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (32, '203009', '瞿香柳', 'c8', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 38, '女', 3600, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (33, '203010', '鄂鸿畅', 'c9', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 24, '男', 5600, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (34, '204001', '容欣玉', 'd1', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 46, '女', 5000, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (35, '204002', '朱高峯', 'd2', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 44, '男', 4100, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (36, '204003', '关奇思', 'd3', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 35, '女', 3800, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (37, '204004', '弓正初', 'd4', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 33, '男', 3600, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (38, '204005', '吴飞语', 'd5', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 29, '女', 5900, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (39, '204006', '闻文赋', 'd6', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 26, '男', 3700, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (40, '204007', '甘意致', 'd7', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 28, '女', 4000, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (41, '204008', '魏思博', 'd8', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 22, '男', 4900, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (42, '204009', '任恺乐', 'd9', '$2a$10$UEKnJM//sxPngxGS7piMSeFJrID3oGiaaOvNZ644Jzjd6e6Z8sdrW', '13555555555', 31, '女', 3800, '上海市普陀区金沙江路 1517 弄', 1, 0, NULL);
INSERT INTO `manage_user` VALUES (47, '203011', '王小虎', 'wwxxhh', '$2a$10$QpsVSZD8kxU08FjwG01vSOE66U00fd/HiHfJRXN9YzhYag3RThZr6', '13546985412', 27, '男', 5600, '好山好水好风光', 1, 0, NULL);

-- ----------------------------
-- Table structure for manage_user_department
-- ----------------------------
DROP TABLE IF EXISTS `manage_user_department`;
CREATE TABLE `manage_user_department`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `did` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manage_user_department
-- ----------------------------
INSERT INTO `manage_user_department` VALUES (1, 2, 1);
INSERT INTO `manage_user_department` VALUES (2, 3, 1);
INSERT INTO `manage_user_department` VALUES (3, 1, 3);
INSERT INTO `manage_user_department` VALUES (4, 5, 1);
INSERT INTO `manage_user_department` VALUES (5, 6, 2);
INSERT INTO `manage_user_department` VALUES (6, 7, 1);
INSERT INTO `manage_user_department` VALUES (7, 8, 1);
INSERT INTO `manage_user_department` VALUES (8, 9, 1);
INSERT INTO `manage_user_department` VALUES (9, 10, 1);
INSERT INTO `manage_user_department` VALUES (10, 11, 1);
INSERT INTO `manage_user_department` VALUES (11, 12, 1);
INSERT INTO `manage_user_department` VALUES (12, 13, 1);
INSERT INTO `manage_user_department` VALUES (13, 14, 1);
INSERT INTO `manage_user_department` VALUES (14, 15, 1);
INSERT INTO `manage_user_department` VALUES (15, 16, 2);
INSERT INTO `manage_user_department` VALUES (16, 17, 2);
INSERT INTO `manage_user_department` VALUES (17, 18, 2);
INSERT INTO `manage_user_department` VALUES (18, 19, 2);
INSERT INTO `manage_user_department` VALUES (19, 20, 2);
INSERT INTO `manage_user_department` VALUES (20, 21, 2);
INSERT INTO `manage_user_department` VALUES (21, 22, 2);
INSERT INTO `manage_user_department` VALUES (22, 23, 2);
INSERT INTO `manage_user_department` VALUES (23, 24, 2);
INSERT INTO `manage_user_department` VALUES (24, 25, 3);
INSERT INTO `manage_user_department` VALUES (25, 26, 3);
INSERT INTO `manage_user_department` VALUES (26, 27, 3);
INSERT INTO `manage_user_department` VALUES (27, 28, 3);
INSERT INTO `manage_user_department` VALUES (28, 29, 3);
INSERT INTO `manage_user_department` VALUES (29, 30, 3);
INSERT INTO `manage_user_department` VALUES (30, 31, 3);
INSERT INTO `manage_user_department` VALUES (31, 32, 3);
INSERT INTO `manage_user_department` VALUES (32, 33, 3);
INSERT INTO `manage_user_department` VALUES (33, 34, 4);
INSERT INTO `manage_user_department` VALUES (34, 35, 4);
INSERT INTO `manage_user_department` VALUES (35, 36, 4);
INSERT INTO `manage_user_department` VALUES (36, 37, 4);
INSERT INTO `manage_user_department` VALUES (37, 38, 4);
INSERT INTO `manage_user_department` VALUES (38, 39, 4);
INSERT INTO `manage_user_department` VALUES (39, 40, 4);
INSERT INTO `manage_user_department` VALUES (40, 41, 4);
INSERT INTO `manage_user_department` VALUES (41, 42, 4);
INSERT INTO `manage_user_department` VALUES (42, 4, 5);
INSERT INTO `manage_user_department` VALUES (44, 47, 3);

-- ----------------------------
-- Table structure for manage_user_role
-- ----------------------------
DROP TABLE IF EXISTS `manage_user_role`;
CREATE TABLE `manage_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `rid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manage_user_role
-- ----------------------------
INSERT INTO `manage_user_role` VALUES (1, 1, 1);
INSERT INTO `manage_user_role` VALUES (2, 2, 2);
INSERT INTO `manage_user_role` VALUES (3, 3, 3);
INSERT INTO `manage_user_role` VALUES (4, 4, 4);
INSERT INTO `manage_user_role` VALUES (5, 5, 3);
INSERT INTO `manage_user_role` VALUES (6, 6, 3);
INSERT INTO `manage_user_role` VALUES (7, 7, 3);
INSERT INTO `manage_user_role` VALUES (8, 8, 3);
INSERT INTO `manage_user_role` VALUES (9, 9, 3);
INSERT INTO `manage_user_role` VALUES (10, 10, 3);
INSERT INTO `manage_user_role` VALUES (11, 11, 3);
INSERT INTO `manage_user_role` VALUES (12, 12, 3);
INSERT INTO `manage_user_role` VALUES (13, 13, 3);
INSERT INTO `manage_user_role` VALUES (14, 14, 3);
INSERT INTO `manage_user_role` VALUES (15, 15, 3);
INSERT INTO `manage_user_role` VALUES (16, 16, 3);
INSERT INTO `manage_user_role` VALUES (17, 17, 3);
INSERT INTO `manage_user_role` VALUES (18, 18, 3);
INSERT INTO `manage_user_role` VALUES (19, 19, 3);
INSERT INTO `manage_user_role` VALUES (20, 20, 3);
INSERT INTO `manage_user_role` VALUES (21, 21, 3);
INSERT INTO `manage_user_role` VALUES (22, 22, 3);
INSERT INTO `manage_user_role` VALUES (23, 23, 3);
INSERT INTO `manage_user_role` VALUES (24, 24, 3);
INSERT INTO `manage_user_role` VALUES (25, 25, 3);
INSERT INTO `manage_user_role` VALUES (26, 26, 3);
INSERT INTO `manage_user_role` VALUES (27, 27, 3);
INSERT INTO `manage_user_role` VALUES (28, 28, 3);
INSERT INTO `manage_user_role` VALUES (29, 29, 3);
INSERT INTO `manage_user_role` VALUES (30, 30, 3);
INSERT INTO `manage_user_role` VALUES (31, 31, 3);
INSERT INTO `manage_user_role` VALUES (32, 32, 3);
INSERT INTO `manage_user_role` VALUES (33, 33, 3);
INSERT INTO `manage_user_role` VALUES (34, 34, 3);
INSERT INTO `manage_user_role` VALUES (35, 35, 3);
INSERT INTO `manage_user_role` VALUES (36, 36, 3);
INSERT INTO `manage_user_role` VALUES (37, 37, 3);
INSERT INTO `manage_user_role` VALUES (38, 38, 3);
INSERT INTO `manage_user_role` VALUES (39, 39, 3);
INSERT INTO `manage_user_role` VALUES (40, 40, 3);
INSERT INTO `manage_user_role` VALUES (41, 41, 3);
INSERT INTO `manage_user_role` VALUES (42, 42, 3);
INSERT INTO `manage_user_role` VALUES (44, 47, 3);

SET FOREIGN_KEY_CHECKS = 1;
