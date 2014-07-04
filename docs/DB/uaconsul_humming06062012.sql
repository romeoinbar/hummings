/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : uaconsul_humming

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2012-06-06 17:54:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_addon_image`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_addon_image`;
CREATE TABLE `tbl_addon_image` (
  `addon_image_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  PRIMARY KEY  (`addon_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_addon_image
-- ----------------------------
INSERT INTO `tbl_addon_image` VALUES ('1', '1', 'images/addon/12.JPG');
INSERT INTO `tbl_addon_image` VALUES ('4', '1', 'images/addon/4.png');
INSERT INTO `tbl_addon_image` VALUES ('5', '1', 'images/addon/5.jpg');

-- ----------------------------
-- Table structure for `tbl_address_book`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_address_book`;
CREATE TABLE `tbl_address_book` (
  `address_book_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `title` varchar(4) NOT NULL,
  `name` varchar(40) NOT NULL,
  `company` varchar(40) NOT NULL,
  `block` varchar(10) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `building` varchar(40) NOT NULL,
  `address1` varchar(40) NOT NULL,
  `address2` varchar(40) NOT NULL,
  `address3` varchar(40) NOT NULL,
  `address4` varchar(40) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `city` varchar(40) NOT NULL,
  `country` varchar(40) NOT NULL,
  `telephone1` varchar(16) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fax` varchar(16) NOT NULL,
  PRIMARY KEY  (`address_book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_address_book
-- ----------------------------
INSERT INTO `tbl_address_book` VALUES ('1', '0', 'Mr', 'Freind 1', 'Friend Company !', '10', '11', '', '249 simpang lima', '', '', '', '32010', 'Sitiawan', 'MY', '0124525749', '', '');
INSERT INTO `tbl_address_book` VALUES ('2', '2', 'Mr', 'Friend 1', 'Friend Company 1', '100', '110', 'Building 1 Malaysia', '249 simpang lima', '', '', '', '320100', 'Sitiawan', 'MY', '01245257490', 'brightleee@hotmail.com', '');
INSERT INTO `tbl_address_book` VALUES ('3', '6', 'Mr', 'Lee', '', '219', '#10-605', '', 'Jurong East St 21', '', '', '', '600219', '', 'SG', '96938443', 'lee@ua-consultants.com', '');

-- ----------------------------
-- Table structure for `tbl_banner`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_banner`;
CREATE TABLE `tbl_banner` (
  `banner_id` int(11) NOT NULL auto_increment,
  `image` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `publish` int(2) NOT NULL default '1',
  `sorting` int(4) NOT NULL default '50',
  PRIMARY KEY  (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_banner
-- ----------------------------
INSERT INTO `tbl_banner` VALUES ('1', 'images/banner/1.png', '', '0', '1');
INSERT INTO `tbl_banner` VALUES ('2', 'images/banner/2.png', '', '1', '2');
INSERT INTO `tbl_banner` VALUES ('3', 'images/banner/3.png', '', '1', '50');

-- ----------------------------
-- Table structure for `tbl_cart_ratings`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cart_ratings`;
CREATE TABLE `tbl_cart_ratings` (
  `rating_id` int(11) unsigned NOT NULL auto_increment,
  `product_id` int(1) unsigned NOT NULL default '0',
  `rates` int(11) NOT NULL default '0',
  `ratingcount` int(1) unsigned NOT NULL default '0',
  `rating` decimal(10,1) NOT NULL default '0.0',
  `published` tinyint(1) NOT NULL default '1',
  `created_on` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL default '0',
  `modified_on` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL default '0',
  PRIMARY KEY  (`rating_id`),
  UNIQUE KEY `i_cart_product_id` USING BTREE (`product_id`,`rating_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';

-- ----------------------------
-- Records of tbl_cart_ratings
-- ----------------------------
INSERT INTO `tbl_cart_ratings` VALUES ('1', '1', '8', '2', '4.0', '0', '2012-05-17 08:58:07', '63', '2012-05-17 09:41:41', '64');

-- ----------------------------
-- Table structure for `tbl_cart_rating_reviews`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cart_rating_reviews`;
CREATE TABLE `tbl_cart_rating_reviews` (
  `rating_review_id` int(11) unsigned NOT NULL auto_increment,
  `product_id` int(1) unsigned NOT NULL default '0',
  `comment` text,
  `review_ok` tinyint(1) NOT NULL default '0',
  `review_rates` int(1) unsigned NOT NULL default '0',
  `review_ratingcount` int(1) unsigned NOT NULL default '0',
  `review_rating` decimal(10,2) NOT NULL default '0.00',
  `review_editable` tinyint(1) NOT NULL default '1',
  `lastip` char(50) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '1',
  `created_on` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL default '0',
  `modified_on` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL default '0',
  `locked_on` datetime NOT NULL default '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL default '0',
  PRIMARY KEY  (`rating_review_id`),
  UNIQUE KEY `i_cart_product_id` USING BTREE (`product_id`,`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_cart_rating_reviews
-- ----------------------------
INSERT INTO `tbl_cart_rating_reviews` VALUES ('1', '1', 'nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower', '0', '5', '1', '5.00', '0', '127.0.0.1', '1', '2012-05-17 08:58:07', '2', '2012-05-17 08:58:07', '63', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_cart_rating_reviews` VALUES ('2', '1', '  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower', '0', '3', '1', '3.00', '0', '127.0.0.1', '1', '2012-05-17 09:41:41', '6', '2012-05-17 09:41:41', '64', '0000-00-00 00:00:00', '0');

-- ----------------------------
-- Table structure for `tbl_cart_rating_votes`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cart_rating_votes`;
CREATE TABLE `tbl_cart_rating_votes` (
  `rating_vote_id` int(11) unsigned NOT NULL auto_increment,
  `product_id` int(1) unsigned NOT NULL default '0',
  `vote` int(11) NOT NULL default '0',
  `lastip` char(50) NOT NULL default '0',
  `created_on` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL default '0',
  `modified_on` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL default '0',
  PRIMARY KEY  (`rating_vote_id`),
  UNIQUE KEY `i_cart_product_id` USING BTREE (`product_id`,`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';

-- ----------------------------
-- Records of tbl_cart_rating_votes
-- ----------------------------
INSERT INTO `tbl_cart_rating_votes` VALUES ('1', '1', '5', '127.0.0.1', '2012-05-17 08:58:07', '2', '2012-05-17 08:58:07', '63');
INSERT INTO `tbl_cart_rating_votes` VALUES ('2', '1', '3', '127.0.0.1', '2012-05-17 09:41:41', '6', '2012-05-17 09:41:41', '64');

-- ----------------------------
-- Table structure for `tbl_category`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE `tbl_category` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `type` tinyint(2) unsigned NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_category
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_category_type`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_category_type`;
CREATE TABLE `tbl_category_type` (
  `type` varchar(20) NOT NULL,
  `category_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_category_type
-- ----------------------------
INSERT INTO `tbl_category_type` VALUES ('Product Category', '1');
INSERT INTO `tbl_category_type` VALUES ('Occasions', '2');
INSERT INTO `tbl_category_type` VALUES ('Custom Category', '3');

-- ----------------------------
-- Table structure for `tbl_collections`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_collections`;
CREATE TABLE `tbl_collections` (
  `collections_id` int(11) NOT NULL auto_increment,
  `collections_code` varchar(10) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `publish` int(11) NOT NULL default '1',
  `sorting` int(11) NOT NULL default '50',
  PRIMARY KEY  (`collections_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_collections
-- ----------------------------
INSERT INTO `tbl_collections` VALUES ('1', '', '0', 'Father&#39;s Day', 'images/collections/1.jpg', '', '1', '50');
INSERT INTO `tbl_collections` VALUES ('2', '', '0', 'Designer&#39;s Pick', '', '', '1', '50');
INSERT INTO `tbl_collections` VALUES ('3', '', '0', 'Deal of the Weak', '', '', '1', '50');
INSERT INTO `tbl_collections` VALUES ('4', '', '0', 'Best Seller&#39;s', '', '', '1', '50');

-- ----------------------------
-- Table structure for `tbl_columns`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_columns`;
CREATE TABLE `tbl_columns` (
  `columns` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_columns
-- ----------------------------
INSERT INTO `tbl_columns` VALUES ('1');
INSERT INTO `tbl_columns` VALUES ('2');
INSERT INTO `tbl_columns` VALUES ('3');
INSERT INTO `tbl_columns` VALUES ('0');

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
INSERT INTO `tbl_configuration` VALUES ('config_seo', '1');
INSERT INTO `tbl_configuration` VALUES ('config_meta_desc_default', '');
INSERT INTO `tbl_configuration` VALUES ('config_meta_keyword_default', '');
INSERT INTO `tbl_configuration` VALUES ('config_meta_desc_cart', '');
INSERT INTO `tbl_configuration` VALUES ('config_meta_keyword_cart', '');

-- ----------------------------
-- Table structure for `tbl_content`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_content`;
CREATE TABLE `tbl_content` (
  `content_id` int(11) NOT NULL auto_increment,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `introtext` text NOT NULL,
  `fulltext` text NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `modified_date` datetime NOT NULL,
  `sorting` int(11) NOT NULL,
  `hits` bigint(20) NOT NULL default '0',
  `publish` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_content
-- ----------------------------
INSERT INTO `tbl_content` VALUES ('1', '1', 'Test', '', '<p>test</p>', '<p>test</p>', 'Admin', '2012-06-04 09:42:08', '', '0000-00-00 00:00:00', '0', '0', '1');

-- ----------------------------
-- Table structure for `tbl_content_category`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_content_category`;
CREATE TABLE `tbl_content_category` (
  `content_category_id` int(11) NOT NULL auto_increment,
  `category_name` varchar(255) NOT NULL,
  `publish` int(11) NOT NULL default '1',
  `sorting` int(11) NOT NULL default '50',
  PRIMARY KEY  (`content_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_content_category
-- ----------------------------
INSERT INTO `tbl_content_category` VALUES ('1', 'Promotions', '1', '0');

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
-- Table structure for `tbl_country`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_country`;
CREATE TABLE `tbl_country` (
  `country_code` varchar(3) NOT NULL,
  `country` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_country
-- ----------------------------
INSERT INTO `tbl_country` VALUES ('AD', 'Andorra');
INSERT INTO `tbl_country` VALUES ('AE', 'Utd.Arab Emir.');
INSERT INTO `tbl_country` VALUES ('AF', 'Afghanistan');
INSERT INTO `tbl_country` VALUES ('AG', 'Antigua/Barbuda');
INSERT INTO `tbl_country` VALUES ('AI', 'Anguilla');
INSERT INTO `tbl_country` VALUES ('AL', 'Albania');
INSERT INTO `tbl_country` VALUES ('AM', 'Armenia');
INSERT INTO `tbl_country` VALUES ('AN', 'Dutch Antilles');
INSERT INTO `tbl_country` VALUES ('AO', 'Angola');
INSERT INTO `tbl_country` VALUES ('AQ', 'Antarctica');
INSERT INTO `tbl_country` VALUES ('AR', 'Argentina');
INSERT INTO `tbl_country` VALUES ('AS', 'Samoa, America');
INSERT INTO `tbl_country` VALUES ('AT', 'Austria');
INSERT INTO `tbl_country` VALUES ('AU', 'Australia');
INSERT INTO `tbl_country` VALUES ('AW', 'Aruba');
INSERT INTO `tbl_country` VALUES ('AZ', 'Azerbaijan');
INSERT INTO `tbl_country` VALUES ('BA', 'Bosnia-Herz.');
INSERT INTO `tbl_country` VALUES ('BB', 'Barbados');
INSERT INTO `tbl_country` VALUES ('BD', 'Bangladesh');
INSERT INTO `tbl_country` VALUES ('BE', 'Belgium');
INSERT INTO `tbl_country` VALUES ('BF', 'Burkina Faso');
INSERT INTO `tbl_country` VALUES ('BG', 'Bulgaria');
INSERT INTO `tbl_country` VALUES ('BH', 'Bahrain');
INSERT INTO `tbl_country` VALUES ('BI', 'Burundi');
INSERT INTO `tbl_country` VALUES ('BJ', 'Benin');
INSERT INTO `tbl_country` VALUES ('BL', 'Blue');
INSERT INTO `tbl_country` VALUES ('BM', 'Bermuda');
INSERT INTO `tbl_country` VALUES ('BN', 'Brunei Daruss.');
INSERT INTO `tbl_country` VALUES ('BO', 'Bolivia');
INSERT INTO `tbl_country` VALUES ('BR', 'Brazil');
INSERT INTO `tbl_country` VALUES ('BS', 'Bahamas');
INSERT INTO `tbl_country` VALUES ('BT', 'Bhutan');
INSERT INTO `tbl_country` VALUES ('BV', 'Bouvet Islands');
INSERT INTO `tbl_country` VALUES ('BW', 'Botswana');
INSERT INTO `tbl_country` VALUES ('BY', 'Belarus');
INSERT INTO `tbl_country` VALUES ('BZ', 'Belize');
INSERT INTO `tbl_country` VALUES ('CA', 'Canada');
INSERT INTO `tbl_country` VALUES ('CC', 'Coconut Islands');
INSERT INTO `tbl_country` VALUES ('CD', 'Dem. Rep. Congo');
INSERT INTO `tbl_country` VALUES ('CF', 'CAR');
INSERT INTO `tbl_country` VALUES ('CG', 'Rep.of Congo');
INSERT INTO `tbl_country` VALUES ('CH', 'Switzerland');
INSERT INTO `tbl_country` VALUES ('CI', 'Cote d\'Ivoire');
INSERT INTO `tbl_country` VALUES ('CK', 'Cook Islands');
INSERT INTO `tbl_country` VALUES ('CL', 'Chile');
INSERT INTO `tbl_country` VALUES ('CM', 'Cameroon');
INSERT INTO `tbl_country` VALUES ('CN', 'China');
INSERT INTO `tbl_country` VALUES ('CO', 'Colombia');
INSERT INTO `tbl_country` VALUES ('CR', 'Costa Rica');
INSERT INTO `tbl_country` VALUES ('CS', 'Serbia/Monten.');
INSERT INTO `tbl_country` VALUES ('CU', 'Cuba');
INSERT INTO `tbl_country` VALUES ('CV', 'Cape Verde');
INSERT INTO `tbl_country` VALUES ('CX', 'Christmas Islnd');
INSERT INTO `tbl_country` VALUES ('CY', 'Cyprus');
INSERT INTO `tbl_country` VALUES ('CZ', 'Czech Republic');
INSERT INTO `tbl_country` VALUES ('DE', 'Germany');
INSERT INTO `tbl_country` VALUES ('DJ', 'Djibouti');
INSERT INTO `tbl_country` VALUES ('DK', 'Denmark');
INSERT INTO `tbl_country` VALUES ('DM', 'Dominica');
INSERT INTO `tbl_country` VALUES ('DO', 'Dominican Rep.');
INSERT INTO `tbl_country` VALUES ('DZ', 'Algeria');
INSERT INTO `tbl_country` VALUES ('EC', 'Ecuador');
INSERT INTO `tbl_country` VALUES ('EE', 'Estonia');
INSERT INTO `tbl_country` VALUES ('EG', 'Egypt');
INSERT INTO `tbl_country` VALUES ('EH', 'West Sahara');
INSERT INTO `tbl_country` VALUES ('ER', 'Eritrea');
INSERT INTO `tbl_country` VALUES ('ES', 'Spain');
INSERT INTO `tbl_country` VALUES ('ET', 'Ethiopia');
INSERT INTO `tbl_country` VALUES ('EU', 'European Union');
INSERT INTO `tbl_country` VALUES ('FI', 'Finland');
INSERT INTO `tbl_country` VALUES ('FJ', 'Fiji');
INSERT INTO `tbl_country` VALUES ('FK', 'Falkland Islnds');
INSERT INTO `tbl_country` VALUES ('FM', 'Micronesia');
INSERT INTO `tbl_country` VALUES ('FO', 'Faroe Islands');
INSERT INTO `tbl_country` VALUES ('FR', 'France');
INSERT INTO `tbl_country` VALUES ('GA', 'Gabon');
INSERT INTO `tbl_country` VALUES ('GB', 'United Kingdom');
INSERT INTO `tbl_country` VALUES ('GD', 'Grenada');
INSERT INTO `tbl_country` VALUES ('GE', 'Georgia');
INSERT INTO `tbl_country` VALUES ('GF', 'French Guayana');
INSERT INTO `tbl_country` VALUES ('GH', 'Ghana');
INSERT INTO `tbl_country` VALUES ('GI', 'Gibraltar');
INSERT INTO `tbl_country` VALUES ('GL', 'Greenland');
INSERT INTO `tbl_country` VALUES ('GM', 'Gambia');
INSERT INTO `tbl_country` VALUES ('GN', 'Guinea');
INSERT INTO `tbl_country` VALUES ('GP', 'Guadeloupe');
INSERT INTO `tbl_country` VALUES ('GQ', 'Equatorial Guin');
INSERT INTO `tbl_country` VALUES ('GR', 'Greece');
INSERT INTO `tbl_country` VALUES ('GS', 'S. Sandwich Ins');
INSERT INTO `tbl_country` VALUES ('GT', 'Guatemala');
INSERT INTO `tbl_country` VALUES ('GU', 'Guam');
INSERT INTO `tbl_country` VALUES ('GW', 'Guinea-Bissau');
INSERT INTO `tbl_country` VALUES ('GY', 'Guyana');
INSERT INTO `tbl_country` VALUES ('HK', 'Hong Kong');
INSERT INTO `tbl_country` VALUES ('HM', 'Heard/McDon.Isl');
INSERT INTO `tbl_country` VALUES ('HN', 'Honduras');
INSERT INTO `tbl_country` VALUES ('HR', 'Croatia');
INSERT INTO `tbl_country` VALUES ('HT', 'Haiti');
INSERT INTO `tbl_country` VALUES ('HU', 'Hungary');
INSERT INTO `tbl_country` VALUES ('ID', 'Indonesia');
INSERT INTO `tbl_country` VALUES ('IE', 'Ireland');
INSERT INTO `tbl_country` VALUES ('IL', 'Israel');
INSERT INTO `tbl_country` VALUES ('IN', 'India');
INSERT INTO `tbl_country` VALUES ('IO', 'Brit.Ind.Oc.Ter');
INSERT INTO `tbl_country` VALUES ('IQ', 'Iraq');
INSERT INTO `tbl_country` VALUES ('IR', 'Iran');
INSERT INTO `tbl_country` VALUES ('IS', 'Iceland');
INSERT INTO `tbl_country` VALUES ('IT', 'Italy');
INSERT INTO `tbl_country` VALUES ('JM', 'Jamaica');
INSERT INTO `tbl_country` VALUES ('JO', 'Jordan');
INSERT INTO `tbl_country` VALUES ('JP', 'Japan');
INSERT INTO `tbl_country` VALUES ('KE', 'Kenya');
INSERT INTO `tbl_country` VALUES ('KG', 'Kyrgyzstan');
INSERT INTO `tbl_country` VALUES ('KH', 'Cambodia');
INSERT INTO `tbl_country` VALUES ('KI', 'Kiribati');
INSERT INTO `tbl_country` VALUES ('KM', 'Comoros');
INSERT INTO `tbl_country` VALUES ('KN', 'St Kitts&Nevis');
INSERT INTO `tbl_country` VALUES ('KP', 'North Korea');
INSERT INTO `tbl_country` VALUES ('KR', 'South Korea');
INSERT INTO `tbl_country` VALUES ('KW', 'Kuwait');
INSERT INTO `tbl_country` VALUES ('KY', 'Cayman Islands');
INSERT INTO `tbl_country` VALUES ('KZ', 'Kazakhstan');
INSERT INTO `tbl_country` VALUES ('LA', 'Laos');
INSERT INTO `tbl_country` VALUES ('LB', 'Lebanon');
INSERT INTO `tbl_country` VALUES ('LC', 'St. Lucia');
INSERT INTO `tbl_country` VALUES ('LI', 'Liechtenstein');
INSERT INTO `tbl_country` VALUES ('LK', 'Sri Lanka');
INSERT INTO `tbl_country` VALUES ('LR', 'Liberia');
INSERT INTO `tbl_country` VALUES ('LS', 'Lesotho');
INSERT INTO `tbl_country` VALUES ('LT', 'Lithuania');
INSERT INTO `tbl_country` VALUES ('LU', 'Luxembourg');
INSERT INTO `tbl_country` VALUES ('LV', 'Latvia');
INSERT INTO `tbl_country` VALUES ('LY', 'Libya');
INSERT INTO `tbl_country` VALUES ('MA', 'Morocco');
INSERT INTO `tbl_country` VALUES ('MC', 'Monaco');
INSERT INTO `tbl_country` VALUES ('MD', 'Moldova');
INSERT INTO `tbl_country` VALUES ('MG', 'Madagascar');
INSERT INTO `tbl_country` VALUES ('MH', 'Marshall Islnds');
INSERT INTO `tbl_country` VALUES ('MK', 'Macedonia');
INSERT INTO `tbl_country` VALUES ('ML', 'Mali');
INSERT INTO `tbl_country` VALUES ('MM', 'Burma');
INSERT INTO `tbl_country` VALUES ('MN', 'Mongolia');
INSERT INTO `tbl_country` VALUES ('MO', 'Macau');
INSERT INTO `tbl_country` VALUES ('MP', 'N.Mariana Islnd');
INSERT INTO `tbl_country` VALUES ('MQ', 'Martinique');
INSERT INTO `tbl_country` VALUES ('MR', 'Mauretania');
INSERT INTO `tbl_country` VALUES ('MS', 'Montserrat');
INSERT INTO `tbl_country` VALUES ('MT', 'Malta');
INSERT INTO `tbl_country` VALUES ('MU', 'Mauritius');
INSERT INTO `tbl_country` VALUES ('MV', 'Maldives');
INSERT INTO `tbl_country` VALUES ('MW', 'Malawi');
INSERT INTO `tbl_country` VALUES ('MX', 'Mexico');
INSERT INTO `tbl_country` VALUES ('MY', 'Malaysia');
INSERT INTO `tbl_country` VALUES ('MZ', 'Mozambique');
INSERT INTO `tbl_country` VALUES ('NA', 'Namibia');
INSERT INTO `tbl_country` VALUES ('NC', 'New Caledonia');
INSERT INTO `tbl_country` VALUES ('NE', 'Niger');
INSERT INTO `tbl_country` VALUES ('NF', 'Norfolk Islands');
INSERT INTO `tbl_country` VALUES ('NG', 'Nigeria');
INSERT INTO `tbl_country` VALUES ('NI', 'Nicaragua');
INSERT INTO `tbl_country` VALUES ('NL', 'Netherlands');
INSERT INTO `tbl_country` VALUES ('NO', 'Norway');
INSERT INTO `tbl_country` VALUES ('NP', 'Nepal');
INSERT INTO `tbl_country` VALUES ('NR', 'Nauru');
INSERT INTO `tbl_country` VALUES ('NT', 'NATO');
INSERT INTO `tbl_country` VALUES ('NU', 'Niue');
INSERT INTO `tbl_country` VALUES ('NZ', 'New Zealand');
INSERT INTO `tbl_country` VALUES ('OM', 'Oman');
INSERT INTO `tbl_country` VALUES ('OR', 'Orange');
INSERT INTO `tbl_country` VALUES ('PA', 'Panama');
INSERT INTO `tbl_country` VALUES ('PE', 'Peru');
INSERT INTO `tbl_country` VALUES ('PF', 'Frenc.Polynesia');
INSERT INTO `tbl_country` VALUES ('PG', 'Pap. New Guinea');
INSERT INTO `tbl_country` VALUES ('PH', 'Philippines');
INSERT INTO `tbl_country` VALUES ('PK', 'Pakistan');
INSERT INTO `tbl_country` VALUES ('PL', 'Poland');
INSERT INTO `tbl_country` VALUES ('PM', 'St.Pier,Miquel.');
INSERT INTO `tbl_country` VALUES ('PN', 'Pitcairn Islnds');
INSERT INTO `tbl_country` VALUES ('PR', 'Puerto Rico');
INSERT INTO `tbl_country` VALUES ('PS', 'Palestine');
INSERT INTO `tbl_country` VALUES ('PT', 'Portugal');
INSERT INTO `tbl_country` VALUES ('PW', 'Palau');
INSERT INTO `tbl_country` VALUES ('PY', 'Paraguay');
INSERT INTO `tbl_country` VALUES ('QA', 'Qatar');
INSERT INTO `tbl_country` VALUES ('RE', 'Reunion');
INSERT INTO `tbl_country` VALUES ('RO', 'Romania');
INSERT INTO `tbl_country` VALUES ('RU', 'Russian Fed.');
INSERT INTO `tbl_country` VALUES ('RW', 'Rwanda');
INSERT INTO `tbl_country` VALUES ('SA', 'Saudi Arabia');
INSERT INTO `tbl_country` VALUES ('SB', 'Solomon Islands');
INSERT INTO `tbl_country` VALUES ('SC', 'Seychelles');
INSERT INTO `tbl_country` VALUES ('SD', 'Sudan');
INSERT INTO `tbl_country` VALUES ('SE', 'Sweden');
INSERT INTO `tbl_country` VALUES ('SG', 'Singapore');
INSERT INTO `tbl_country` VALUES ('SH', 'Saint Helena');
INSERT INTO `tbl_country` VALUES ('SI', 'Slovenia');
INSERT INTO `tbl_country` VALUES ('SJ', 'Svalbard');
INSERT INTO `tbl_country` VALUES ('SK', 'Slovakia');
INSERT INTO `tbl_country` VALUES ('SL', 'Sierra Leone');
INSERT INTO `tbl_country` VALUES ('SM', 'San Marino');
INSERT INTO `tbl_country` VALUES ('SN', 'Senegal');
INSERT INTO `tbl_country` VALUES ('SO', 'Somalia');
INSERT INTO `tbl_country` VALUES ('SR', 'Suriname');
INSERT INTO `tbl_country` VALUES ('ST', 'S.Tome,Principe');
INSERT INTO `tbl_country` VALUES ('SV', 'El Salvador');
INSERT INTO `tbl_country` VALUES ('SY', 'Syria');
INSERT INTO `tbl_country` VALUES ('SZ', 'Swaziland');
INSERT INTO `tbl_country` VALUES ('TC', 'Turksh Caicosin');
INSERT INTO `tbl_country` VALUES ('TD', 'Chad');
INSERT INTO `tbl_country` VALUES ('TF', 'French S.Territ');
INSERT INTO `tbl_country` VALUES ('TG', 'Togo');
INSERT INTO `tbl_country` VALUES ('TH', 'Thailand');
INSERT INTO `tbl_country` VALUES ('TJ', 'Tajikistan');
INSERT INTO `tbl_country` VALUES ('TK', 'Tokelau Islands');
INSERT INTO `tbl_country` VALUES ('TL', 'East Timor');
INSERT INTO `tbl_country` VALUES ('TM', 'Turkmenistan');
INSERT INTO `tbl_country` VALUES ('TN', 'Tunisia');
INSERT INTO `tbl_country` VALUES ('TO', 'Tonga');
INSERT INTO `tbl_country` VALUES ('TP', 'East Timor');
INSERT INTO `tbl_country` VALUES ('TR', 'Turkey');
INSERT INTO `tbl_country` VALUES ('TT', 'Trinidad,Tobago');
INSERT INTO `tbl_country` VALUES ('TV', 'Tuvalu');
INSERT INTO `tbl_country` VALUES ('TW', 'Taiwan');
INSERT INTO `tbl_country` VALUES ('TZ', 'Tanzania');
INSERT INTO `tbl_country` VALUES ('UA', 'Ukraine');
INSERT INTO `tbl_country` VALUES ('UG', 'Uganda');
INSERT INTO `tbl_country` VALUES ('UM', 'Minor Outl.Isl.');
INSERT INTO `tbl_country` VALUES ('UN', 'United Nations');
INSERT INTO `tbl_country` VALUES ('US', 'USA');
INSERT INTO `tbl_country` VALUES ('UY', 'Uruguay');
INSERT INTO `tbl_country` VALUES ('UZ', 'Uzbekistan');
INSERT INTO `tbl_country` VALUES ('VA', 'Vatican City');
INSERT INTO `tbl_country` VALUES ('VC', 'St. Vincent');
INSERT INTO `tbl_country` VALUES ('VE', 'Venezuela');
INSERT INTO `tbl_country` VALUES ('VG', 'Brit.Virgin Is.');
INSERT INTO `tbl_country` VALUES ('VI', 'Amer.Virgin Is.');
INSERT INTO `tbl_country` VALUES ('VN', 'Vietnam');
INSERT INTO `tbl_country` VALUES ('VU', 'Vanuatu');
INSERT INTO `tbl_country` VALUES ('WF', 'Wallis,Futuna');
INSERT INTO `tbl_country` VALUES ('WS', 'Samoa');
INSERT INTO `tbl_country` VALUES ('YE', 'Yemen');
INSERT INTO `tbl_country` VALUES ('YT', 'Mayotte');
INSERT INTO `tbl_country` VALUES ('ZA', 'South Africa');
INSERT INTO `tbl_country` VALUES ('ZM', 'Zambia');
INSERT INTO `tbl_country` VALUES ('ZW', 'Zimbabwe');

-- ----------------------------
-- Table structure for `tbl_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_coupon`;
CREATE TABLE `tbl_coupon` (
  `coupon_id` int(11) NOT NULL auto_increment,
  `coupon_code` varchar(10) NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `discount_type` int(11) NOT NULL,
  `apply_type` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `discount_percent` int(11) NOT NULL,
  `discount_value` decimal(10,2) NOT NULL,
  `apply_to_category` text NOT NULL,
  `apply_to_product` text NOT NULL,
  `redemption_date` date NOT NULL,
  `issued_by` int(11) NOT NULL,
  `redeem_by` int(11) NOT NULL,
  PRIMARY KEY  (`coupon_id`),
  UNIQUE KEY `coupon_code` USING BTREE (`coupon_code`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_coupon
-- ----------------------------
INSERT INTO `tbl_coupon` VALUES ('14', 'ibrhcx8nu0', '10.00', '1', '0', '2012-06-06', '0000-00-00', '0', '0.00', '', '', '0000-00-00', '1', '0');

-- ----------------------------
-- Table structure for `tbl_delivery_status`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_delivery_status`;
CREATE TABLE `tbl_delivery_status` (
  `delivery_status_id` int(11) NOT NULL auto_increment,
  `caption` varchar(40) NOT NULL,
  PRIMARY KEY  (`delivery_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_delivery_status
-- ----------------------------
INSERT INTO `tbl_delivery_status` VALUES ('2', 'Shipped');
INSERT INTO `tbl_delivery_status` VALUES ('3', 'Pending');

-- ----------------------------
-- Table structure for `tbl_delivery_time`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_delivery_time`;
CREATE TABLE `tbl_delivery_time` (
  `delivery_time_id` int(11) NOT NULL auto_increment,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `surcharge` decimal(10,2) NOT NULL,
  `lead_time` int(11) NOT NULL,
  PRIMARY KEY  (`delivery_time_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_delivery_time
-- ----------------------------
INSERT INTO `tbl_delivery_time` VALUES ('2', '14:00:00', '17:00:00', '6.00', '3');
INSERT INTO `tbl_delivery_time` VALUES ('3', '07:00:00', '08:00:00', '25.00', '24');
INSERT INTO `tbl_delivery_time` VALUES ('4', '08:01:00', '09:29:00', '13.00', '5');
INSERT INTO `tbl_delivery_time` VALUES ('5', '09:30:00', '14:00:00', '6.00', '3');
INSERT INTO `tbl_delivery_time` VALUES ('6', '19:00:00', '21:59:00', '6.00', '5');
INSERT INTO `tbl_delivery_time` VALUES ('7', '22:00:00', '23:59:00', '25.00', '24');
INSERT INTO `tbl_delivery_time` VALUES ('8', '00:00:00', '06:59:00', '50.00', '24');

-- ----------------------------
-- Table structure for `tbl_discount`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_discount`;
CREATE TABLE `tbl_discount` (
  `discount_id` int(11) NOT NULL auto_increment,
  `discount_price` decimal(10,2) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY  (`discount_id`),
  UNIQUE KEY `discount_id` USING BTREE (`discount_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_discount
-- ----------------------------
INSERT INTO `tbl_discount` VALUES ('1', '45.00', '2012-05-19', '2012-06-20', '3');
INSERT INTO `tbl_discount` VALUES ('2', '48.00', '2012-05-21', '2012-05-21', '1');
INSERT INTO `tbl_discount` VALUES ('3', '0.00', '2012-06-02', '2012-06-02', '6');

-- ----------------------------
-- Table structure for `tbl_discount_type`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_discount_type`;
CREATE TABLE `tbl_discount_type` (
  `discount_type_id` int(11) NOT NULL auto_increment,
  `title` varchar(20) NOT NULL,
  PRIMARY KEY  (`discount_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_discount_type
-- ----------------------------
INSERT INTO `tbl_discount_type` VALUES ('1', 'percent (%)');
INSERT INTO `tbl_discount_type` VALUES ('2', 'value (dollar)');

-- ----------------------------
-- Table structure for `tbl_gender`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_gender`;
CREATE TABLE `tbl_gender` (
  `id` varchar(2) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_gender
-- ----------------------------
INSERT INTO `tbl_gender` VALUES ('1', 'Male');
INSERT INTO `tbl_gender` VALUES ('2', 'Female');
INSERT INTO `tbl_gender` VALUES (' ', 'Unkown');

-- ----------------------------
-- Table structure for `tbl_history_logs`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_history_logs`;
CREATE TABLE `tbl_history_logs` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `type` tinyint(1) NOT NULL COMMENT '1:admin;2:manager;3:dealer;',
  `who_id` bigint(20) NOT NULL,
  `action` text NOT NULL,
  `remote_ip` varchar(255) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_history_logs
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_menu`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu` (
  `menu_id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `itemid` int(11) NOT NULL,
  `type` varchar(100) NOT NULL default 'product',
  `title` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `columns` int(11) NOT NULL default '1',
  `publish` int(11) NOT NULL,
  `sorting` int(11) NOT NULL,
  PRIMARY KEY  (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO `tbl_menu` VALUES ('2', '0', '1', 'product', 'New Born Hampers', '', '1', '1', '0');

-- ----------------------------
-- Table structure for `tbl_occasions`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_occasions`;
CREATE TABLE `tbl_occasions` (
  `occasions_id` int(11) NOT NULL auto_increment,
  `occasions_code` varchar(10) NOT NULL,
  `parent_id` int(11) NOT NULL default '0',
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `publish` int(11) NOT NULL default '1',
  `sorting` int(11) NOT NULL default '50',
  `running_number` int(11) NOT NULL,
  `code_number` int(11) NOT NULL,
  `columns` int(11) NOT NULL default '1',
  PRIMARY KEY  (`occasions_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_occasions
-- ----------------------------
INSERT INTO `tbl_occasions` VALUES ('1', 'OO', '0', 'Official Opening', 'images/occasions/1.JPG', 'Official Opening', '1', '50', '0', '0', '1');
INSERT INTO `tbl_occasions` VALUES ('2', 'RM', '0', 'Romance', '', '', '1', '50', '0', '0', '1');
INSERT INTO `tbl_occasions` VALUES ('3', 'SR', '0', 'Speedy Recovery', '', '', '1', '50', '0', '0', '1');
INSERT INTO `tbl_occasions` VALUES ('4', 'SW', '0', 'Secretary&#39;s Week', '', '', '1', '50', '0', '0', '1');
INSERT INTO `tbl_occasions` VALUES ('6', 'TD', '0', 'Teacher&#39;s Day', '', '', '1', '50', '0', '0', '1');
INSERT INTO `tbl_occasions` VALUES ('7', 'TY', '0', 'Thank you', '', '', '1', '50', '0', '0', '1');
INSERT INTO `tbl_occasions` VALUES ('8', 'VD', '0', 'Valentine&#39;s Day', '', '', '1', '50', '0', '0', '1');
INSERT INTO `tbl_occasions` VALUES ('9', 'WF', '0', 'Welcome/ Farewell', '', '', '1', '50', '0', '0', '1');
INSERT INTO `tbl_occasions` VALUES ('10', 'WW', '0', 'Wedding Wishes', '', '', '1', '50', '0', '0', '1');
INSERT INTO `tbl_occasions` VALUES ('11', 'XM', '0', 'Christmas', '', '', '1', '50', '0', '0', '1');

-- ----------------------------
-- Table structure for `tbl_off_delivery`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_off_delivery`;
CREATE TABLE `tbl_off_delivery` (
  `date` date NOT NULL,
  `remarks` text NOT NULL,
  UNIQUE KEY `date` USING BTREE (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_off_delivery
-- ----------------------------
INSERT INTO `tbl_off_delivery` VALUES ('2012-05-14', 'remarks');
INSERT INTO `tbl_off_delivery` VALUES ('2012-05-22', 'off');
INSERT INTO `tbl_off_delivery` VALUES ('2012-05-28', '');
INSERT INTO `tbl_off_delivery` VALUES ('2012-05-29', '');

-- ----------------------------
-- Table structure for `tbl_order`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL auto_increment,
  `order_date` date NOT NULL,
  `sales_doc_type` varchar(4) NOT NULL,
  `sales_order_number` varchar(10) NOT NULL,
  `sales_organization` varchar(4) NOT NULL default '2000',
  `distribution_channel` varchar(2) NOT NULL default '13',
  `division` varchar(2) NOT NULL,
  `account_group` varchar(4) NOT NULL default 'Z002',
  `user_id` int(11) NOT NULL,
  `sold_to_party_no` varchar(10) NOT NULL,
  `title` varchar(4) NOT NULL,
  `name` varchar(40) NOT NULL,
  `block` varchar(10) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `building` varchar(40) NOT NULL,
  `address1` varchar(40) NOT NULL,
  `address2` varchar(40) NOT NULL,
  `address3` varchar(40) NOT NULL,
  `address4` varchar(40) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `city` varchar(40) NOT NULL,
  `country` varchar(3) NOT NULL,
  `telephone1` varchar(16) NOT NULL,
  `telephone2` varchar(16) NOT NULL,
  `customer_group` varchar(2) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `tax_code` int(11) NOT NULL default '1',
  `contact_person_code` int(11) NOT NULL,
  `contact_person_name` varchar(50) NOT NULL,
  `gender` int(11) NOT NULL,
  `contact_telephone1` varchar(16) NOT NULL,
  `contact_telephone2` varchar(16) NOT NULL,
  `email` varchar(50) NOT NULL,
  `order_source` varchar(2) NOT NULL default 'I',
  `spcode` varchar(15) NOT NULL,
  `ssid` varchar(3) NOT NULL default 'IM1',
  `project_id` varchar(4) NOT NULL,
  `created_by` varchar(4) NOT NULL,
  `approved_by` varchar(3) NOT NULL,
  `reference_no` int(11) NOT NULL,
  `update_addres_indicator` int(11) NOT NULL default '0',
  `product_id` int(11) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `occasion` varchar(2) NOT NULL,
  `free_of_charge_indicator` int(11) NOT NULL default '0',
  `condtype1` varchar(4) NOT NULL default '',
  `unit_price` decimal(10,2) NOT NULL,
  `condtype2` varchar(4) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `evoucher` varchar(4) NOT NULL,
  `evoucher_value` decimal(10,2) NOT NULL,
  `other_surcharge_type` varchar(4) NOT NULL,
  `other_surcharge_amount` decimal(10,2) NOT NULL,
  `sp_indicator` int(11) NOT NULL,
  `redemption_promo_id` varchar(15) NOT NULL,
  `loyalty_points` int(11) NOT NULL,
  `addon_product_id` int(11) NOT NULL,
  `addon_sku` varchar(20) NOT NULL,
  `addon_qty` int(11) NOT NULL,
  `addon_product` int(11) NOT NULL default '1',
  `shipto__party_no` int(11) NOT NULL,
  `shipto_title` varchar(4) NOT NULL,
  `shipto_name` varchar(50) NOT NULL,
  `shipto_company` varchar(40) NOT NULL,
  `shipto_block` varchar(10) NOT NULL,
  `shipto_unit` varchar(10) NOT NULL,
  `shipto_bulding` varchar(40) NOT NULL,
  `shipto_address1` varchar(40) NOT NULL,
  `shipto_address2` varchar(40) NOT NULL,
  `shipto_address3` varchar(40) NOT NULL,
  `shipto_postcode` varchar(10) NOT NULL,
  `shipto_country` varchar(3) NOT NULL,
  `shipto_telephone1` varchar(16) NOT NULL,
  `shipto_telephone2` varchar(16) NOT NULL,
  `shipto_email` varchar(50) NOT NULL,
  `shipto_gender` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `delivery_status` int(11) NOT NULL,
  `order_status` int(11) NOT NULL default '0',
  PRIMARY KEY  (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_order
-- ----------------------------
INSERT INTO `tbl_order` VALUES ('47', '2012-06-04', 'Z101', '', '2000', '13', '01', 'Z002', '2', '0007000002', 'Mr', 'Lee Ming Liang', '219', '#10-605', 'Building ACE', 'Jurong East St 21', '', '', '', '600219', '', 'SG', '96938443', '', '1', '0', '1', '7000002', 'Lee Ming Liang', '0', '', '', 'lee@ua-consultants.com', 'I', '', '', '', '', '', '0', '0', '0', '', '0', '', '0', '', '0.00', '', '0.00', '', '0.00', '', '0.00', '0', '', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '34', '0', '0', '0');

-- ----------------------------
-- Table structure for `tbl_order_delivery`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_delivery`;
CREATE TABLE `tbl_order_delivery` (
  `order_delivery_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `delivery_time` varchar(50) NOT NULL,
  `from_message` varchar(50) NOT NULL,
  `to_message` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `call_before_delivery` int(11) NOT NULL,
  `avoid_lunch` int(11) NOT NULL,
  `special_instruction` varchar(100) NOT NULL,
  `surcharge` decimal(10,2) NOT NULL,
  `delivery_status` int(11) NOT NULL default '0',
  `payment_status` int(11) NOT NULL default '0',
  `shipto_party_no` int(11) NOT NULL default '0',
  `shipto_title` varchar(4) NOT NULL,
  `shipto_name` varchar(50) NOT NULL,
  `shipto_company` varchar(40) NOT NULL,
  `shipto_block` varchar(10) NOT NULL,
  `shipto_unit` varchar(10) NOT NULL,
  `shipto_building` varchar(40) NOT NULL,
  `shipto_address1` varchar(40) NOT NULL,
  `shipto_address2` varchar(40) NOT NULL,
  `shipto_address3` varchar(40) NOT NULL,
  `shipto_postcode` varchar(10) NOT NULL,
  `shipto_country` varchar(3) NOT NULL,
  `shipto_city` varchar(40) NOT NULL,
  `shipto_telephone1` varchar(16) NOT NULL,
  `shipto_telephone2` varchar(16) NOT NULL,
  `shipto_email` varchar(50) NOT NULL,
  `shipto_gender` int(11) NOT NULL,
  PRIMARY KEY  (`order_delivery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_order_delivery
-- ----------------------------
INSERT INTO `tbl_order_delivery` VALUES ('34', '2', '2012-06-04', '2012-06-04', '9 am - 2 pm', 'a', 'a', 'a', '1', '0', 'Call before delivery.&lt;br/&gt;', '6.00', '0', '0', '0', 'Mr', 'Lee Ming Liang', 'DWE', '219', '#10-605', 'Building ACE', 'Jurong East St 21', '', '', '600219', 'SG', '', '96938443', '', 'lee@ua-consultants.com', '0');

-- ----------------------------
-- Table structure for `tbl_order_item`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_item`;
CREATE TABLE `tbl_order_item` (
  `order_item_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` varchar(40) NOT NULL,
  `qty` int(11) NOT NULL,
  `occasion` varchar(2) NOT NULL,
  `free_of_charge_indicator` int(11) NOT NULL default '0',
  `condtype1` varchar(4) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `condtype2` varchar(4) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `evoucher` varchar(4) NOT NULL,
  `evoucher_value` decimal(10,2) NOT NULL,
  `other_surcharge_type` varchar(4) NOT NULL,
  `other_surcharge_amount` decimal(10,2) NOT NULL,
  `sp_indicator` int(11) NOT NULL,
  `redemption_promo_id` varchar(15) NOT NULL,
  `loyalty_points` int(11) NOT NULL,
  `addon_product_id` int(11) NOT NULL,
  `addon_sku` varchar(20) NOT NULL,
  `addon_qty` int(11) NOT NULL,
  `addon_product` int(11) NOT NULL default '1',
  PRIMARY KEY  (`order_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_order_item
-- ----------------------------
INSERT INTO `tbl_order_item` VALUES ('30', '47', '11', 'HHB116', '1', '19', '0', '', '60.00', '', '0.00', '', '0.00', '', '0.00', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('34', '47', '12', 'HHB114', '2', '19', '0', '', '80.00', '', '0.00', '', '0.00', '', '0.00', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `tbl_order_payment`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_payment`;
CREATE TABLE `tbl_order_payment` (
  `order_payment_id` int(11) NOT NULL auto_increment,
  `payment_type` varchar(10) NOT NULL default 'enets',
  `payment_terms` varchar(4) NOT NULL,
  `credit_card_type` varchar(4) NOT NULL,
  `name_on_card` varchar(50) NOT NULL,
  `credit_card_no` varchar(25) NOT NULL,
  `expiry_date` varchar(8) NOT NULL,
  `cvv` varchar(10) NOT NULL,
  `approval_code` varchar(15) NOT NULL,
  `spcode` varchar(15) NOT NULL,
  `ssid` varchar(3) NOT NULL,
  PRIMARY KEY  (`order_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_order_payment
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_order_status`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_status`;
CREATE TABLE `tbl_order_status` (
  `order_status_id` int(11) NOT NULL auto_increment,
  `caption` varchar(40) NOT NULL,
  PRIMARY KEY  (`order_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_order_status
-- ----------------------------
INSERT INTO `tbl_order_status` VALUES ('2', 'Processing');
INSERT INTO `tbl_order_status` VALUES ('3', 'Cancelled');
INSERT INTO `tbl_order_status` VALUES ('4', 'Refunded');
INSERT INTO `tbl_order_status` VALUES ('5', 'Completed');
INSERT INTO `tbl_order_status` VALUES ('6', 'Pending');

-- ----------------------------
-- Table structure for `tbl_payment_status`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_payment_status`;
CREATE TABLE `tbl_payment_status` (
  `payment_status_id` int(11) NOT NULL auto_increment,
  `caption` varchar(20) NOT NULL,
  PRIMARY KEY  (`payment_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_payment_status
-- ----------------------------
INSERT INTO `tbl_payment_status` VALUES ('2', 'Paid');
INSERT INTO `tbl_payment_status` VALUES ('3', 'Pending');

-- ----------------------------
-- Table structure for `tbl_product`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL auto_increment,
  `stock` int(11) NOT NULL default '-1',
  `product_type` int(11) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `name` varchar(60) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description_short` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `height` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `publish` int(11) NOT NULL default '1',
  `lead_time` int(11) NOT NULL default '2',
  `date_added` date NOT NULL,
  `available_date` date NOT NULL,
  PRIMARY KEY  (`product_id`),
  UNIQUE KEY `sku` USING BTREE (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product
-- ----------------------------
INSERT INTO `tbl_product` VALUES ('1', '-1', '2', 'HNB113B', 'Smiling Baby (Boy)', '50.00', '.Bird&#39;s Nest Wild Ginseng with White Fungus & Rock Sugar 3x70g\nÂ·4pc Shears Baby Wear Deluxe Gift Set\nÂ·Jumbo Children Growth Chart\nÂ·1pkt Drypers\nÂ·Everlasting Sweet Roses', '.Bird&#39;s Nest Wild Ginseng with White Fungus & Rock Sugar 3x70g\nÂ·4pc Shears Baby Wear Deluxe Gift Set\nÂ·Jumbo Children Growth Chart\nÂ·1pkt Drypers\nÂ·Everlasting Sweet Roses', 'images/product/1.JPG', '0', '0', '0', '0', '1', '0', '0000-00-00', '2012-10-05');
INSERT INTO `tbl_product` VALUES ('3', '-1', '2', 'HNB113A', 'Smiling Baby (Girl)', '50.00', '', '.Bird&#39;s Nest Wild Ginseng with White Fungus & Rock Sugar 3x70g\nÂ·4pc Shears Baby Wear Deluxe Gift Set\nÂ·Jumbo Children Growth Chart\nÂ·1pkt Drypers\nÂ·Everlasting Sweet Roses\nÂ·PVC Storage Box', 'images/product/3.JPG', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00');
INSERT INTO `tbl_product` VALUES ('4', '-1', '3', 'SPDCS000001', 'Vase1', '23.00', '', '', 'images/product/4.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00');
INSERT INTO `tbl_product` VALUES ('5', '-1', '3', 'SPDCS000002', 'Vase 2', '12.00', '', '', 'images/product/5.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00');
INSERT INTO `tbl_product` VALUES ('7', '-1', '2', 'HPG110', 'Classic Gift Basket', '50.00', '', 'Â·Lindt Almond De Luxe Swiss Chocolate 75.5g\nÂ·Walkers Belgian Chocolate Chunk Biscuits 150g\nÂ·Fomec&#39;s California Prune Essence 2x42g\nÂ·Fox&#39;s Crystal Clear Fruits Candy 180g\nÂ·Beryl&#39;s Tiramisu Chocolate 65g\nÂ·ST Daifour Snak Pack Jam 3x28g\nÂ·Packaged in Paper Tray\n\n*Product substitution note:\n- Lindt Almond De Luxe Chocolate 75.5g sub to Lindt Lindor Milk Chocolate Gift Box 112g (as shown in HPG101)\n- Walkers Belgian Chocolate Chunk Biscuits 150g sub to Dean&#39;s Stem Ginger Oat Biscuits 150g\n- Berylâ€™s Tiramisu Chocolate 65g sub to 120G Millton Espresso White Chocolate as shown in HPG113', 'images/product/7.JPG', '0', '0', '0', '0', '1', '0', '2012-05-29', '0000-00-00');
INSERT INTO `tbl_product` VALUES ('8', '0', '2', 'HNB114A', 'Beautiful Baby (Girl)', '50.00', 'Â·Birdâ€™s Nest Wild Ginseng with White Fungus & Rock Sugar 6x70g\nÂ·4pc Shears Baby Wear Deluxe Gift Set\nÂ·Packaged with Cheerful Sunflowers', 'Â·Birdâ€™s Nest Wild Ginseng with White Fungus & Rock Sugar 6x70g\nÂ·4pc Shears Baby Wear Deluxe Gift Set\nÂ·Packaged with Cheerful Sunflowers', 'images/product/8.JPG', '0', '0', '0', '0', '1', '0', '2012-06-03', '2012-06-03');
INSERT INTO `tbl_product` VALUES ('9', '-1', '1', 'HNB114B', 'Beautiful Baby (Boy)', '50.00', 'Â·Birdâ€™s Nest Wild Ginseng with White Fungus & Rock Sugar 6x70g\nÂ·4pc Shears Baby Wear Deluxe Gift Set\nÂ·Packaged with Cheerful Sunflowers', 'Â·Birdâ€™s Nest Wild Ginseng with White Fungus & Rock Sugar 6x70g\nÂ·4pc Shears Baby Wear Deluxe Gift Set\nÂ·Packaged with Cheerful Sunflowers', 'images/product/9.JPG', '0', '0', '0', '0', '1', '0', '2012-06-03', '2012-06-03');
INSERT INTO `tbl_product` VALUES ('10', '-1', '1', 'HHB117', 'Regal Blooms', '50.00', 'Red Roses are the traditonal symbols for love and romance, so we dressed 12 Red Roses with sweet Pink Hydrangeas to help you convey your deep love and appreciation with a touch of sweetness!', 'Red Roses are the traditonal symbols for love and romance, so we dressed 12 Red Roses with sweet Pink Hydrangeas to help you convey your deep love and appreciation with a touch of sweetness!', 'images/product/10.JPG', '0', '0', '0', '0', '1', '0', '2012-06-03', '2012-06-03');
INSERT INTO `tbl_product` VALUES ('11', '-1', '1', 'HHB116', 'Sweet Love', '60.00', 'For expressing the sweetest form of love you are experiencing, we picked\nthe loveliest blooms of 6 champagne Roses, 6 Cream Roses and 6 Pink\nRoses in the sweetest pastels to whisper &#34;I love You&#34; gently in her ears.', 'For expressing the sweetest form of love you are experiencing, we picked\nthe loveliest blooms of 6 champagne Roses, 6 Cream Roses and 6 Pink\nRoses in the sweetest pastels to whisper &#34;I love You&#34; gently in her ears.', 'images/product/11.JPG', '0', '0', '0', '0', '1', '0', '2012-06-03', '2012-06-03');
INSERT INTO `tbl_product` VALUES ('12', '-1', '1', 'HHB114', 'Summertime', '60.00', 'Bask in the warmth of &#34;Summertime&#34; with 6 cheerful Sunflowers bundled with pretty Eustomas in a lively bouquet! We are sure it will bring a smile to any face.', 'Bask in the warmth of &#34;Summertime&#34; with 6 cheerful Sunflowers bundled with pretty Eustomas in a lively bouquet! We are sure it will bring a smile to any face.', 'images/product/12.JPG', '0', '0', '0', '0', '1', '0', '2012-06-03', '2012-06-03');

-- ----------------------------
-- Table structure for `tbl_product_addon_link`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_addon_link`;
CREATE TABLE `tbl_product_addon_link` (
  `product_addon_link` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `addon_id` int(11) NOT NULL,
  `sorting` int(11) NOT NULL default '50',
  PRIMARY KEY  (`product_addon_link`),
  KEY `product_id` USING BTREE (`product_id`),
  KEY `product_addon_link` USING BTREE (`product_addon_link`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_addon_link
-- ----------------------------
INSERT INTO `tbl_product_addon_link` VALUES ('8', '1', '4', '50');

-- ----------------------------
-- Table structure for `tbl_product_category`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_category`;
CREATE TABLE `tbl_product_category` (
  `product_category_id` int(11) NOT NULL auto_increment,
  `category_type` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `parent_id` int(11) NOT NULL default '0',
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `publish` int(11) NOT NULL default '1',
  `sorting` int(11) NOT NULL default '50',
  `columns` int(11) NOT NULL default '1',
  PRIMARY KEY  (`product_category_id`),
  KEY `parent_category_id` USING BTREE (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_category
-- ----------------------------
INSERT INTO `tbl_product_category` VALUES ('1', '0', '', '201', 'New Born Hampers', 'images/category/1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatu', '1', '1', '1');
INSERT INTO `tbl_product_category` VALUES ('22', '0', '', '201', 'New Born play', 'images/category/22.jpg', '', '1', '4', '1');
INSERT INTO `tbl_product_category` VALUES ('23', '0', '', '201', 'New Born Travel', 'images/category/23.jpg', '', '1', '5', '1');
INSERT INTO `tbl_product_category` VALUES ('24', '0', '', '201', 'Birthday Cakes', 'images/category/24.jpg', '', '1', '6', '1');
INSERT INTO `tbl_product_category` VALUES ('25', '0', '', '201', 'Opening Stands', 'images/category/25.jpg', '', '1', '7', '1');
INSERT INTO `tbl_product_category` VALUES ('26', '0', '', '201', 'Sympathy', 'images/category/26.jpg', '', '1', '8', '1');
INSERT INTO `tbl_product_category` VALUES ('27', '0', '', '201', 'Get Well Baskets', 'images/category/27.jpg', '', '1', '9', '1');
INSERT INTO `tbl_product_category` VALUES ('30', '0', '', '201', 'Fruit & Flower Baskets', 'images/category/30.png', '', '1', '1', '2');
INSERT INTO `tbl_product_category` VALUES ('31', '0', '', '201', 'Food Hampers', 'images/category/31.jpg', '', '1', '50', '2');
INSERT INTO `tbl_product_category` VALUES ('195', '0', '', '201', 'Hand Bouquets', 'images/category/195.jpg', '', '1', '50', '2');
INSERT INTO `tbl_product_category` VALUES ('199', '0', '', '201', 'Table Arrangement', 'images/category/199.jpg', '', '1', '50', '2');
INSERT INTO `tbl_product_category` VALUES ('200', '0', '', '0', 'Add On Product', '', '', '0', '99', '0');
INSERT INTO `tbl_product_category` VALUES ('201', '0', '', '0', 'Categories', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('202', '2', '', '0', 'Occasions', '', '', '1', '500', '1');
INSERT INTO `tbl_product_category` VALUES ('203', '0', '', '0', 'Flowers', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('204', '0', '', '0', 'Symphaty', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('205', '0', '', '0', 'Specials', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('206', '0', '', '0', 'Personalize', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('207', '0', '', '0', 'Local Gifting Customs', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('208', '2', 'OO', '202', 'Official Opening', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('209', '2', '', '202', 'Romance', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('210', '0', '', '202', 'Speedy Recovery', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('211', '2', '', '202', 'Secretary&#39;s Week', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('212', '0', '', '202', 'Teacher&#39;s Day', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('213', '2', '', '202', 'Thank you', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('215', '1', '', '0', 'Custom Categories', '', '', '0', '600', '1');
INSERT INTO `tbl_product_category` VALUES ('216', '1', '', '215', 'Designer&#39;s Pick', '', '', '0', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('217', '1', '', '215', 'Deal of The Week', '', '', '0', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('218', '3', '', '0', 'Best Seller', '', '', '0', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('219', '1', '', '215', 'Best Sellers', '', '', '1', '50', '1');

-- ----------------------------
-- Table structure for `tbl_product_category_link`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_category_link`;
CREATE TABLE `tbl_product_category_link` (
  `product_category_link_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `sorting` int(11) NOT NULL default '50',
  PRIMARY KEY  (`product_category_link_id`),
  KEY `category_id` USING BTREE (`product_category_id`),
  KEY `product_id` USING BTREE (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_category_link
-- ----------------------------
INSERT INTO `tbl_product_category_link` VALUES ('103', '7', '30', '50');
INSERT INTO `tbl_product_category_link` VALUES ('145', '4', '200', '50');
INSERT INTO `tbl_product_category_link` VALUES ('146', '5', '200', '50');
INSERT INTO `tbl_product_category_link` VALUES ('147', '1', '1', '40');
INSERT INTO `tbl_product_category_link` VALUES ('148', '1', '219', '50');
INSERT INTO `tbl_product_category_link` VALUES ('152', '11', '195', '50');
INSERT INTO `tbl_product_category_link` VALUES ('153', '12', '195', '50');
INSERT INTO `tbl_product_category_link` VALUES ('154', '3', '1', '40');
INSERT INTO `tbl_product_category_link` VALUES ('155', '3', '216', '50');
INSERT INTO `tbl_product_category_link` VALUES ('156', '3', '217', '50');
INSERT INTO `tbl_product_category_link` VALUES ('157', '3', '219', '50');
INSERT INTO `tbl_product_category_link` VALUES ('160', '8', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('161', '8', '219', '50');
INSERT INTO `tbl_product_category_link` VALUES ('162', '9', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('163', '9', '219', '50');
INSERT INTO `tbl_product_category_link` VALUES ('164', '10', '195', '50');
INSERT INTO `tbl_product_category_link` VALUES ('165', '10', '219', '50');

-- ----------------------------
-- Table structure for `tbl_product_collections_link`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_collections_link`;
CREATE TABLE `tbl_product_collections_link` (
  `product_collections_link_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `collections_id` int(11) NOT NULL,
  `sorting` int(11) NOT NULL,
  PRIMARY KEY  (`product_collections_link_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_collections_link
-- ----------------------------
INSERT INTO `tbl_product_collections_link` VALUES ('5', '3', '4', '50');
INSERT INTO `tbl_product_collections_link` VALUES ('6', '1', '1', '50');
INSERT INTO `tbl_product_collections_link` VALUES ('7', '1', '2', '50');
INSERT INTO `tbl_product_collections_link` VALUES ('8', '1', '3', '50');
INSERT INTO `tbl_product_collections_link` VALUES ('9', '1', '4', '50');

-- ----------------------------
-- Table structure for `tbl_product_image`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_image`;
CREATE TABLE `tbl_product_image` (
  `product_image_id` int(11) NOT NULL auto_increment,
  `image` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY  (`product_image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_image
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_product_occasions_link`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_occasions_link`;
CREATE TABLE `tbl_product_occasions_link` (
  `product_occasions_link_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `occasions_id` int(11) NOT NULL,
  `sorting` int(11) NOT NULL default '50',
  PRIMARY KEY  (`product_occasions_link_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_occasions_link
-- ----------------------------
INSERT INTO `tbl_product_occasions_link` VALUES ('2', '3', '1', '50');
INSERT INTO `tbl_product_occasions_link` VALUES ('3', '1', '1', '50');

-- ----------------------------
-- Table structure for `tbl_product_type`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_type`;
CREATE TABLE `tbl_product_type` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  `sorting` int(11) NOT NULL default '50',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_type
-- ----------------------------
INSERT INTO `tbl_product_type` VALUES ('1', 'Flower & Gift', ' ZI01', '50');
INSERT INTO `tbl_product_type` VALUES ('2', 'Hampers', 'ZI02', '50');
INSERT INTO `tbl_product_type` VALUES ('3', 'Addon Products', '', '50');
INSERT INTO `tbl_product_type` VALUES ('4', 'Free Gift', 'ZF01', '50');
INSERT INTO `tbl_product_type` VALUES ('5', 'Others', '', '50');

-- ----------------------------
-- Table structure for `tbl_rss`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rss`;
CREATE TABLE `tbl_rss` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `date` varchar(20) NOT NULL,
  `s_date` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_rss
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
-- Table structure for `tbl_title`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_title`;
CREATE TABLE `tbl_title` (
  `title` varchar(10) NOT NULL,
  `sorting` int(11) NOT NULL default '50'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_title
-- ----------------------------
INSERT INTO `tbl_title` VALUES ('Mr', '50');
INSERT INTO `tbl_title` VALUES ('Ms', '50');
INSERT INTO `tbl_title` VALUES ('Mrs', '50');
INSERT INTO `tbl_title` VALUES (' ', '1');

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL auto_increment,
  `title` varchar(4) NOT NULL,
  `name` varchar(40) NOT NULL,
  `company` varchar(40) NOT NULL,
  `block` varchar(10) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `building` varchar(40) NOT NULL,
  `address1` varchar(40) NOT NULL,
  `address2` varchar(40) NOT NULL,
  `address3` varchar(40) NOT NULL,
  `address4` varchar(40) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `city` varchar(40) NOT NULL,
  `country` varchar(3) NOT NULL,
  `email` varchar(241) NOT NULL,
  `password` varchar(100) NOT NULL,
  `telephone1` varchar(16) NOT NULL,
  `telephone2` varchar(16) NOT NULL,
  `fax` varchar(16) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `dob` date NOT NULL,
  `notify_update` int(11) NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('2', 'Mr', 'Lee Ming Liang', 'DWE', '219', '#10-605', 'Building ACE', 'Jurong East St 21', '', '', '', '600219', '', 'SG', 'lee@ua-consultants.com', '218ee2aa3a1bce98a6016d5aba186029', '96938443', '', '96938443', '1', '1981-07-17', '0');
INSERT INTO `tbl_user` VALUES ('3', 'Mr', 'Lee Ming Liang', 'DWE', '219', '#10-605', '', 'Jurong East St 21', '', '', '', '600219', '', 'SG', 'brightleee@hotmail.com', '1d02d56dd360b43dc9d8a801fbded37f', '', '', '', '0', '1981-07-17', '1');
INSERT INTO `tbl_user` VALUES ('6', 'Mr', 'Ali', 'Far East Florist', '12', '05-123', 'Far East Building', '123465, FEB', '', '', '', '123465', '', 'SG', 'ali@ali.com', 'e99a18c428cb38d5f260853678922e03', '654321001', '654321001', '654321001', '0', '1981-07-17', '0');
INSERT INTO `tbl_user` VALUES ('7', 'Mrs', 'dfsf', '', '', '', '', '', '', '', '', '334343', '', 'SG', 'Test@noel.com.sg', 'e99a18c428cb38d5f260853678922e03', '456453', '', '', '0', '0000-00-00', '0');

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
