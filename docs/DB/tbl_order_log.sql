/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : uaconsul_humming

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2014-07-17 01:34:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_order_log`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_log`;
CREATE TABLE `tbl_order_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `times` tinyint(1) NOT NULL DEFAULT '1',
  `error_content` varchar(255) NOT NULL DEFAULT '',
  `datetime_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_order_log
-- ----------------------------
INSERT INTO `tbl_order_log` VALUES ('1', '725', '1', '1', '', '2014-07-17 01:25:57');
INSERT INTO `tbl_order_log` VALUES ('2', '726', '1', '1', '', '2014-07-17 01:25:57');

-- ----------------------------
-- Table structure for `tbl_user_log`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_log`;
CREATE TABLE `tbl_user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `times` tinyint(1) NOT NULL DEFAULT '1',
  `update_indicator` tinyint(1) NOT NULL DEFAULT '0',
  `error_content` varchar(255) NOT NULL DEFAULT '',
  `datetime_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user_log
-- ----------------------------
INSERT INTO `tbl_user_log` VALUES ('1', '0', '0', '1', '0', '', '2014-07-15 00:24:35');
INSERT INTO `tbl_user_log` VALUES ('2', '0', '0', '1', '0', '', '2014-07-15 00:28:49');
INSERT INTO `tbl_user_log` VALUES ('3', '36', '0', '1', '0', '', '2014-07-15 00:29:10');
