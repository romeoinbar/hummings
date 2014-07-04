/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : uaconsul_humming

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2012-05-10 23:57:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_configuration`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_configuration`;
CREATE TABLE `tbl_configuration` (
  `key_name` varchar(50) collate utf8_unicode_ci NOT NULL default '',
  `value_name` text collate utf8_unicode_ci,
  PRIMARY KEY  (`key_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_configuration
-- ----------------------------
INSERT INTO `tbl_configuration` VALUES ('config_language', 'lang_en');
INSERT INTO `tbl_configuration` VALUES ('config_template', 'default');
INSERT INTO `tbl_configuration` VALUES ('config_siteoffline', '0');
INSERT INTO `tbl_configuration` VALUES ('config_sitename', 'Motul');
INSERT INTO `tbl_configuration` VALUES ('config_slogan', '');
INSERT INTO `tbl_configuration` VALUES ('config_metakeywords', '');
INSERT INTO `tbl_configuration` VALUES ('config_description', '');
INSERT INTO `tbl_configuration` VALUES ('config_offline_message', 'Offline message');
INSERT INTO `tbl_configuration` VALUES ('config_offset_user', '7');
INSERT INTO `tbl_configuration` VALUES ('config_date_format', 'm/d/Y');
INSERT INTO `tbl_configuration` VALUES ('config_time_out', '5000');
INSERT INTO `tbl_configuration` VALUES ('config_error_message', 'Error message');
INSERT INTO `tbl_configuration` VALUES ('config_metatitle', '1');
INSERT INTO `tbl_configuration` VALUES ('config_metaauthor', '1');
INSERT INTO `tbl_configuration` VALUES ('config_editor', 'php5_editor');
INSERT INTO `tbl_configuration` VALUES ('config_email', 'info@ua-solutions.com');
INSERT INTO `tbl_configuration` VALUES ('config_sef', '');
INSERT INTO `tbl_configuration` VALUES ('config_blocked_ip', '');
INSERT INTO `tbl_configuration` VALUES ('config_sms', '1');
INSERT INTO `tbl_configuration` VALUES ('config_send_mail', '1');
INSERT INTO `tbl_configuration` VALUES ('config_point_to_SGD', '1');
INSERT INTO `tbl_configuration` VALUES ('config_admin_email', 'info@ua-solutions.com');

-- ----------------------------
-- Table structure for `tbl_counter`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_counter`;
CREATE TABLE `tbl_counter` (
  `sdate` varchar(50) default NULL,
  `svalue` int(11) default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_counter
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_statistics`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_statistics`;
CREATE TABLE `tbl_statistics` (
  `id` varchar(25) collate utf8_unicode_ci NOT NULL default '',
  `skey` int(11) NOT NULL default '0',
  `svalue` int(11) NOT NULL default '0',
  `is_member` tinyint(1) default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores information about statistics';

-- ----------------------------
-- Records of tbl_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_users`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE `tbl_users` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `username` varchar(50) NOT NULL default '',
  `name` varchar(255) default NULL,
  `country_id` int(11) NOT NULL,
  `phone` varchar(20) default NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `show_pass` varchar(100) NOT NULL default '',
  `image` varchar(255) NOT NULL,
  `remarks` text,
  `type_id` tinyint(1) unsigned default '3' COMMENT '1-Administrator;2-Managers;3-Workshops',
  `status` tinyint(1) unsigned default '0',
  `is_image` tinyint(1) unsigned default '0',
  `is_new` tinyint(1) unsigned NOT NULL default '1',
  `is_login` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_users
-- ----------------------------
INSERT INTO `tbl_users` VALUES ('1', '', 'Admin', '196', '', 'admin@admin.com', 'e10adc3949ba59abbe56e057f20f883e', '', 'avatar/86f90a78ce4ad205b65a4e00e8d2341d.jpg', '', '1', '1', '0', '0', '0');

-- ----------------------------
-- Table structure for `tbl_usersession`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_usersession`;
CREATE TABLE `tbl_usersession` (
  `id` bigint(20) NOT NULL auto_increment,
  `dealer_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `logineddate` varchar(50) NOT NULL,
  `company_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_usersession
-- ----------------------------
