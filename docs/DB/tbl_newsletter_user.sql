/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : uaconsul_humming

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2012-07-02 03:47:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_newsletter_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_user`;
CREATE TABLE `tbl_newsletter_user` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_id` (`id`),
  UNIQUE KEY `idx_email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_user
-- ----------------------------
INSERT INTO `tbl_newsletter_user` VALUES ('3', 'test', 'nam@nam.com');
