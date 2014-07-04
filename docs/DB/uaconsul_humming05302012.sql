/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : uaconsul_humming

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2012-05-30 17:58:32
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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
  UNIQUE KEY `i_cart_product_id` (`product_id`,`rating_id`)
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
  UNIQUE KEY `i_cart_product_id` (`product_id`,`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_cart_rating_reviews
-- ----------------------------
INSERT INTO `tbl_cart_rating_reviews` VALUES ('1', '1', ' hoa dep lem hoa dep lem hoa dep lem hoa dep lem hoa dep lem hoa dep lem hoa dep lem hoa dep lem hoa dep lem hoa dep lem', '0', '5', '1', '5.00', '0', '127.0.0.1', '1', '2012-05-17 08:58:07', '2', '2012-05-17 08:58:07', '63', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_cart_rating_reviews` VALUES ('2', '1', 'hoa dep lem hoa dep lem hoa dep lem hoa dep lem hoa dep lem hoa dep lem hoa dep lem hoa dep lem hoa dep lem hoa dep lem', '0', '3', '1', '3.00', '0', '127.0.0.1', '1', '2012-05-17 09:41:41', '64', '2012-05-17 09:41:41', '64', '0000-00-00 00:00:00', '0');

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
  UNIQUE KEY `i_cart_product_id` (`product_id`,`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';

-- ----------------------------
-- Records of tbl_cart_rating_votes
-- ----------------------------
INSERT INTO `tbl_cart_rating_votes` VALUES ('1', '1', '5', '127.0.0.1', '2012-05-17 08:58:07', '2', '2012-05-17 08:58:07', '63');
INSERT INTO `tbl_cart_rating_votes` VALUES ('2', '1', '3', '127.0.0.1', '2012-05-17 09:41:41', '64', '2012-05-17 09:41:41', '64');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_collections
-- ----------------------------
INSERT INTO `tbl_collections` VALUES ('1', '', '0', 'Father&#39;s Day', 'images/collections/1.jpg', '', '1', '50');
INSERT INTO `tbl_collections` VALUES ('2', '', '0', 'Designer&#39;s Pick', '', '', '1', '50');
INSERT INTO `tbl_collections` VALUES ('3', '', '0', 'Deal of the Weak', '', '', '1', '50');
INSERT INTO `tbl_collections` VALUES ('4', '', '0', 'Best Seller&#92;&#39;s', '', '', '1', '50');

-- ----------------------------
-- Table structure for `tbl_columns`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_columns`;
CREATE TABLE `tbl_columns` (
  `columns` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `coupon_code` varchar(10) NOT NULL,
  `type` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `values` text NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `redemption_date` date NOT NULL,
  `issued_by` int(11) NOT NULL,
  `redeem_by` int(11) NOT NULL,
  UNIQUE KEY `coupon_code` (`coupon_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_delivery_time`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_delivery_time`;
CREATE TABLE `tbl_delivery_time` (
  `delivery_time_id` int(11) NOT NULL auto_increment,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `surchage` decimal(10,2) NOT NULL,
  `lead_time` int(11) NOT NULL,
  PRIMARY KEY  (`delivery_time_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_delivery_time
-- ----------------------------
INSERT INTO `tbl_delivery_time` VALUES ('2', '14:00:00', '17:00:00', '6.00', '3');
INSERT INTO `tbl_delivery_time` VALUES ('3', '07:00:00', '08:00:00', '25.00', '24');
INSERT INTO `tbl_delivery_time` VALUES ('4', '08:01:00', '09:29:00', '13.00', '24');
INSERT INTO `tbl_delivery_time` VALUES ('5', '09:30:00', '14:00:00', '6.00', '3');
INSERT INTO `tbl_delivery_time` VALUES ('6', '19:00:00', '21:59:00', '6.00', '5');
INSERT INTO `tbl_delivery_time` VALUES ('7', '22:00:00', '23:59:00', '25.00', '24');
INSERT INTO `tbl_delivery_time` VALUES ('8', '00:00:00', '06:59:00', '50.00', '24');
INSERT INTO `tbl_delivery_time` VALUES ('9', '00:00:00', '00:00:00', '0.00', '0');

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
  UNIQUE KEY `discount_id` (`discount_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_discount
-- ----------------------------
INSERT INTO `tbl_discount` VALUES ('1', '68.60', '2012-05-19', '2012-06-20', '3');
INSERT INTO `tbl_discount` VALUES ('2', '48.00', '2012-05-21', '2012-12-21', '1');

-- ----------------------------
-- Table structure for `tbl_gender`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_gender`;
CREATE TABLE `tbl_gender` (
  `id` varchar(2) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_gender
-- ----------------------------
INSERT INTO `tbl_gender` VALUES ('1', 'MALE');
INSERT INTO `tbl_gender` VALUES ('2', 'FEMALE');
INSERT INTO `tbl_gender` VALUES (' ', 'UNKNOWN');

-- ----------------------------
-- Table structure for `tbl_menu`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu` (
  `menu_id` int(11) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `publish` int(11) NOT NULL,
  `sorting` int(11) NOT NULL,
  PRIMARY KEY  (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------

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
  PRIMARY KEY  (`occasions_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_occasions
-- ----------------------------
INSERT INTO `tbl_occasions` VALUES ('1', 'OO', '0', 'Official Opening', 'images/occasions/1.JPG', 'Official Opening', '1', '50');
INSERT INTO `tbl_occasions` VALUES ('2', 'RM', '0', 'Romance', '', '', '1', '50');
INSERT INTO `tbl_occasions` VALUES ('3', 'SR', '0', 'Speedy Recovery', '', '', '1', '50');
INSERT INTO `tbl_occasions` VALUES ('4', 'SW', '0', 'Secretary&#39;s Week', '', '', '1', '50');
INSERT INTO `tbl_occasions` VALUES ('6', 'TD', '0', 'Teacher&#39;s Day', '', '', '1', '50');
INSERT INTO `tbl_occasions` VALUES ('7', 'TY', '0', 'Thank you', '', '', '1', '50');
INSERT INTO `tbl_occasions` VALUES ('8', 'VD', '0', 'Valentine&#39;s Day', '', '', '1', '50');
INSERT INTO `tbl_occasions` VALUES ('9', 'WF', '0', 'Welcome/ Farewell', '', '', '1', '50');
INSERT INTO `tbl_occasions` VALUES ('10', 'WW', '0', 'Wedding Wishes', '', '', '1', '50');
INSERT INTO `tbl_occasions` VALUES ('11', 'XM', '0', 'Christmas', '', '', '1', '50');

-- ----------------------------
-- Table structure for `tbl_off_delivery`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_off_delivery`;
CREATE TABLE `tbl_off_delivery` (
  `date` date NOT NULL,
  `remarks` text NOT NULL,
  UNIQUE KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_off_delivery
-- ----------------------------
INSERT INTO `tbl_off_delivery` VALUES ('2012-05-08', 'holiday');
INSERT INTO `tbl_off_delivery` VALUES ('2012-05-14', 'remarks');
INSERT INTO `tbl_off_delivery` VALUES ('2012-05-22', 'off');

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
  PRIMARY KEY  (`product_id`),
  UNIQUE KEY `sku` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_product
-- ----------------------------
INSERT INTO `tbl_product` VALUES ('1', '-1', '1', '1', 'Remembered', '60.00', '', '', 'images/product/1.jpg', '0', '0', '0', '0', '1', '1');
INSERT INTO `tbl_product` VALUES ('3', '-1', '2', 'FG000121', 'Supreme 2 Tier Diaper Package', '98.00', '', '.4pcs Sesame Baby Wear Deluxe Gife Set\r\n.Brand&#39;s Essence of Chicken 6X42g\r\n·Baby Bear Photo Frame\r\n·Sweet Cheerful Gerberas\r\n·Baby Paper Carrier', 'images/product/3.jpg', '0', '0', '0', '0', '1', '2');
INSERT INTO `tbl_product` VALUES ('4', '-1', '3', 'SPDCS000001', 'Vase1', '23.00', '', '', 'images/product/4.jpg', '0', '0', '0', '0', '1', '0');
INSERT INTO `tbl_product` VALUES ('5', '-1', '3', 'SPDCS000002', 'Vase 2', '12.00', '', '', 'images/product/5.jpg', '0', '0', '0', '0', '1', '0');
INSERT INTO `tbl_product` VALUES ('6', '0', '1', 'FG123212', 'new', '100.00', '', 'asas', 'images/product/6.JPG', '0', '0', '0', '0', '1', '0');

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
  KEY `product_id` (`product_id`),
  KEY `product_addon_link` (`product_addon_link`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_product_addon_link
-- ----------------------------
INSERT INTO `tbl_product_addon_link` VALUES ('2', '1', '5', '50');

-- ----------------------------
-- Table structure for `tbl_product_category`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_category`;
CREATE TABLE `tbl_product_category` (
  `product_category_id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `publish` int(11) NOT NULL default '1',
  `sorting` int(11) NOT NULL default '50',
  `columns` int(11) NOT NULL default '1',
  PRIMARY KEY  (`product_category_id`),
  KEY `parent_category_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_product_category
-- ----------------------------
INSERT INTO `tbl_product_category` VALUES ('1', '0', 'New Born Hampers', 'images/category/1.jpg', '1', '1', '1', '1');
INSERT INTO `tbl_product_category` VALUES ('22', '0', 'New Born play', 'images/category/22.jpg', '', '1', '4', '1');
INSERT INTO `tbl_product_category` VALUES ('23', '0', 'New Born Travel', 'images/category/23.jpg', '', '1', '5', '1');
INSERT INTO `tbl_product_category` VALUES ('24', '0', 'Birthday Cakes', 'images/category/24.jpg', '', '1', '6', '1');
INSERT INTO `tbl_product_category` VALUES ('25', '0', 'Opening Stands', 'images/category/25.jpg', '', '1', '7', '1');
INSERT INTO `tbl_product_category` VALUES ('26', '0', 'Sympathy', 'images/category/26.jpg', '', '1', '8', '1');
INSERT INTO `tbl_product_category` VALUES ('27', '0', 'Get Well Baskets', 'images/category/27.jpg', '', '1', '9', '1');
INSERT INTO `tbl_product_category` VALUES ('28', '1', 'sub', 'images/category/28.jpg', '', '1', '2', '1');
INSERT INTO `tbl_product_category` VALUES ('29', '28', 'sub sub', 'images/category/29.jpg', '', '1', '3', '1');
INSERT INTO `tbl_product_category` VALUES ('30', '0', 'Fruit & Flower Baskets', '', '', '1', '1', '2');
INSERT INTO `tbl_product_category` VALUES ('31', '0', 'Food Hampers', 'images/category/31.jpg', '', '1', '50', '2');
INSERT INTO `tbl_product_category` VALUES ('195', '0', 'Hand Bouquets', 'images/category/195.jpg', '', '1', '50', '2');
INSERT INTO `tbl_product_category` VALUES ('199', '0', 'Table Arrangement', 'images/category/199.jpg', '', '1', '50', '2');
INSERT INTO `tbl_product_category` VALUES ('200', '0', 'Add On Product', '', '', '0', '99', '0');

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
  KEY `category_id` (`product_category_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_product_category_link
-- ----------------------------
INSERT INTO `tbl_product_category_link` VALUES ('96', '1', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('99', '4', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('100', '4', '200', '50');
INSERT INTO `tbl_product_category_link` VALUES ('101', '5', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('102', '5', '200', '50');
INSERT INTO `tbl_product_category_link` VALUES ('103', '3', '1', '50');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_product_collections_link
-- ----------------------------
INSERT INTO `tbl_product_collections_link` VALUES ('2', '1', '4', '50');
INSERT INTO `tbl_product_collections_link` VALUES ('3', '3', '1', '50');
INSERT INTO `tbl_product_collections_link` VALUES ('4', '3', '4', '50');

-- ----------------------------
-- Table structure for `tbl_product_image`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_image`;
CREATE TABLE `tbl_product_image` (
  `product_image_id` int(11) NOT NULL auto_increment,
  `image` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY  (`product_image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_product_type
-- ----------------------------
INSERT INTO `tbl_product_type` VALUES ('1', 'Flower & Gift', '', '50');
INSERT INTO `tbl_product_type` VALUES ('2', 'Hampers', '', '50');
INSERT INTO `tbl_product_type` VALUES ('3', 'Addon Products', '', '50');
INSERT INTO `tbl_product_type` VALUES ('4', 'Other\'s', '', '50');

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
  `address1` varchar(40) NOT NULL,
  `address2` varchar(40) NOT NULL,
  `address3` varchar(40) NOT NULL,
  `address4` varchar(40) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `city` varchar(40) NOT NULL,
  `country` varchar(3) NOT NULL,
  `email` varchar(241) NOT NULL,
  `password` varchar(15) NOT NULL,
  `telephone1` varchar(16) NOT NULL,
  `telephone2` varchar(16) NOT NULL,
  `fax` varchar(16) NOT NULL,
  `gender` int(11) NOT NULL,
  `dob` date NOT NULL,
  `notify_update` int(11) NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('2', 'Mr.', 'Lee Ming Liang', 'DWE', '219', '#10-605', 'Jurong East St 21', '', '', '', '600219', '', 'SG', 'lee@ua-consultants.com', '170781', '96938443', '', '96938443', '1', '1981-07-17', '1');

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
