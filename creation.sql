/*
 Navicat MySQL Data Transfer

 Source Server         : 120.77.179.66
 Source Server Type    : MySQL
 Source Server Version : 50639
 Source Host           : 120.77.179.66:33945
 Source Schema         : creation

 Target Server Type    : MySQL
 Target Server Version : 50639
 File Encoding         : 65001

 Date: 20/04/2018 11:40:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_map
-- ----------------------------
DROP TABLE IF EXISTS `t_map`;
CREATE TABLE `t_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) DEFAULT NULL,
  `route` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `get` varchar(50) DEFAULT NULL,
  `post` varchar(50) DEFAULT NULL,
  `put` varchar(50) DEFAULT NULL,
  `delete` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_map
-- ----------------------------
BEGIN;
INSERT INTO `t_map` VALUES (1, 't_table_demo', '1', '1', '/api/datatable/table_demo/get', '/api/datatable/table_demo/post', '/api/datatable/table_demo/put', '/api/datatable/table_demo/delete');
COMMIT;

-- ----------------------------
-- Table structure for t_table_demo
-- ----------------------------
DROP TABLE IF EXISTS `t_table_demo`;
CREATE TABLE `t_table_demo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `微服务名称` varchar(200) DEFAULT NULL,
  `业务名称` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_table_demo
-- ----------------------------
BEGIN;
INSERT INTO `t_table_demo` VALUES (1, 'risk-console', '安全风控');
INSERT INTO `t_table_demo` VALUES (2, 'api', '电商');
INSERT INTO `t_table_demo` VALUES (3, 'app-h5-web4app', '电商');
INSERT INTO `t_table_demo` VALUES (4, 'cards', '电商');
INSERT INTO `t_table_demo` VALUES (5, 'common', '电商');
INSERT INTO `t_table_demo` VALUES (6, 'erp-web-218', '电商');
INSERT INTO `t_table_demo` VALUES (7, 'erp-web-219', '电商');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
