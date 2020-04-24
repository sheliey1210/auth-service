/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : eshop

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 24/04/2020 11:09:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_app
-- ----------------------------
DROP TABLE IF EXISTS `t_app`;
CREATE TABLE `t_app` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '应用名称',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `master_id` int(11) DEFAULT NULL COMMENT '负责人id',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='应用系统';

-- ----------------------------
-- Records of t_app
-- ----------------------------
BEGIN;
INSERT INTO `t_app` VALUES (1, '管理端', '管理端', 1, '2020-04-23 18:32:55', '2020-04-23 18:32:58');
COMMIT;

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `app_id` int(11) NOT NULL COMMENT 'app id',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单编码',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '菜单URI',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id，如果是根菜单为0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '当前菜单级别，根菜单默认0',
  `visible` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否可见,0:不可见，1：可见',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='菜单';

-- ----------------------------
-- Records of t_menu
-- ----------------------------
BEGIN;
INSERT INTO `t_menu` VALUES (1, 1, 'ACCESS_MANAGEMENT_MARKET', '市场', NULL, 0, 0, 1, NULL, '2020-04-23 18:47:44', '2020-04-23 18:47:47');
INSERT INTO `t_menu` VALUES (2, 1, 'ACCESS_MANAGEMENT_BUSINESS_MAN', '商家', NULL, 0, 0, 1, NULL, '2020-04-23 18:49:02', '2020-04-23 18:49:06');
COMMIT;

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `app_id` int(11) DEFAULT NULL COMMENT '所属app',
  `menu_id` int(11) NOT NULL COMMENT '所属菜单id',
  `code` varchar(50) COLLATE utf8mb4_general_ci NOT NULL COMMENT '权限编码',
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL COMMENT '权限名称',
  `uri` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '对应URI',
  `remark` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '对应时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='权限表';

-- ----------------------------
-- Records of t_permission
-- ----------------------------
BEGIN;
INSERT INTO `t_permission` VALUES (1, 1, 1, 'ALLOW_MARKET_LIST', '查看市场列表', NULL, '查看市场列表', '2020-04-23 18:50:39', '2020-04-23 18:50:44');
INSERT INTO `t_permission` VALUES (2, 1, 1, 'ALLOW_MARKET_ADD', '添加市场', NULL, '添加市场', '2020-04-23 18:51:27', '2020-04-23 18:51:32');
INSERT INTO `t_permission` VALUES (3, 1, 2, 'ALLOW_BM_LIST', '查看商户列表', NULL, '查看商户列表', '2020-04-23 18:50:39', '2020-04-23 18:50:44');
INSERT INTO `t_permission` VALUES (4, 1, 2, 'ALLOW_BM_ADD', '添加商户', NULL, '添加商户', '2020-04-23 19:00:03', '2020-04-23 19:00:07');
COMMIT;

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `app_id` int(11) NOT NULL COMMENT '所属应用',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色编码',
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `remark` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='角色表';

-- ----------------------------
-- Records of t_role
-- ----------------------------
BEGIN;
INSERT INTO `t_role` VALUES (1, 1, 'SUPER_ADMINISTRATOR', '超级管理员', '超级管理员', '2020-04-23 19:01:13', '2020-04-23 19:01:16');
COMMIT;

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `app_id` int(11) NOT NULL COMMENT '所属应用',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `menu_id` int(11) NOT NULL COMMENT '菜单id',
  `permission_id` int(11) DEFAULT NULL COMMENT '权限id',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='角色菜单关联表';

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
BEGIN;
INSERT INTO `t_role_permission` VALUES (1, 1, 1, 1, 1, '2020-04-23 19:02:06', '2020-04-23 19:02:10');
INSERT INTO `t_role_permission` VALUES (2, 1, 1, 1, 2, '2020-04-23 19:02:06', '2020-04-23 19:02:10');
INSERT INTO `t_role_permission` VALUES (3, 1, 1, 2, 3, '2020-04-23 19:02:06', '2020-04-23 19:02:10');
INSERT INTO `t_role_permission` VALUES (4, 1, 1, 2, 4, '2020-04-23 19:03:17', '2020-04-23 19:03:21');
COMMIT;

-- ----------------------------
-- Table structure for t_staff
-- ----------------------------
DROP TABLE IF EXISTS `t_staff`;
CREATE TABLE `t_staff` (
  `id` int(11) NOT NULL COMMENT '主键',
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL COMMENT '账号（手机号）',
  `password` varchar(100) COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '中文名',
  `english_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '英文名',
  `email` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邮箱',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '账号状态，0：不可用，1：正常',
  `token` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '身份id',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后一次登录时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '记录被更新版本，每更新一次加1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of t_staff
-- ----------------------------
BEGIN;
INSERT INTO `t_staff` VALUES (1, '13500001111', '123456', 'lei', 'lei', NULL, 1, NULL, NULL, '2020-04-22 18:33:23', 0);
COMMIT;

-- ----------------------------
-- Table structure for t_staff_role
-- ----------------------------
DROP TABLE IF EXISTS `t_staff_role`;
CREATE TABLE `t_staff_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `app_id` int(11) NOT NULL COMMENT 'appid',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='人员角色关联表';

-- ----------------------------
-- Records of t_staff_role
-- ----------------------------
BEGIN;
INSERT INTO `t_staff_role` VALUES (1, 1, 1, 1, '2020-04-23 19:03:39', '2020-04-23 19:03:41');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
