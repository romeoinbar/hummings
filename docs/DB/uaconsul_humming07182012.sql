/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : uaconsul_humming

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2012-07-18 17:58:58
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
INSERT INTO `tbl_addon_image` VALUES ('6', '3', 'images/addon/6.jpg');

-- ----------------------------
-- Table structure for `tbl_address_book`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_address_book`;
CREATE TABLE `tbl_address_book` (
  `address_book_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `title` varchar(4) NOT NULL,
  `surname` varchar(40) NOT NULL,
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
  `state` varchar(50) NOT NULL,
  `country` varchar(40) NOT NULL,
  `telephone1` varchar(16) NOT NULL,
  `pre_telephone1` varchar(5) NOT NULL,
  `mid_fax` varchar(3) NOT NULL,
  `mid_telephone1` varchar(5) NOT NULL,
  `telephone2` varchar(16) NOT NULL,
  `pre_telephone2` varchar(5) NOT NULL,
  `mid_telephone2` varchar(5) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fax` varchar(16) NOT NULL,
  `pre_fax` varchar(3) NOT NULL,
  `gender` varchar(2) NOT NULL default ' ',
  `dob` date NOT NULL,
  PRIMARY KEY  (`address_book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_address_book
-- ----------------------------
INSERT INTO `tbl_address_book` VALUES ('1', '0', 'Mr', '', 'Freind 1', 'Friend Company !', '10', '11', '', '249 simpang lima', '', '', '', '32010', 'Sitiawan', '', 'MY', '0124525749', '', '', '', '', '', '', '', '', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('3', '6', 'Mr', '', 'Lee', '', '219', '#10-605', '', 'Jurong East St 21', '', '', '', '600219', '', '', 'SG', '96938443', '', '', '', '', '', '', 'lee@ua-consultants.com', '', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('4', '6', 'Mr', '', 'test', 'test', '1', '1', '1', '1', '1', '1', '1', '1', 'HCM', '', 'SG', '123455666', '', '', '', '', '', '', 'abc@abc.com', '123456', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('10', '6', 'Ms', 'a', 'Ke xin', 'aa', 'a', 'a', 'a', 'a', '', '', '', 'a', 'a', 'a', 'SL', '123445566', '', '', '', '', '', '', 'kexin@hotmail.com', '', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('11', '2', 'Mr', 'Toh', 'Charles', 'aaa', '167 ', '#06-12 ', '', 'Jalan Bukit Merah ', '', '', '', '100001', 'city', 'state', 'SG', '12345656', '65', '', '', '', '', '', 'charles@abc.com', '', '', '1', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('13', '0', 'Mr', '', 'Alex', '', '', '', '', '12344', '', '', '', '123456', '', '', 'SG', '123456', '', '', '', '', '', '', 'alex@aa.com', '', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('15', '9', 'Mrs', 'Nguyen', 'Anh', 'Ua-consultant', '', '', '', 'Nguyen Van Linh', '', '', '', '123456', 'HCM', '', 'VN', '', '', '', '', '', '', '', '', '', '', '2', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('16', '8', 'Mr', 'asfddas', '', '', '', '', 'fadsfads', 'sdf', 'fds', 'fds', 'sdfsd', '1234', 'wrwer', '', 'SG', '', '', '', '', '', '', '', '', '', '', ' ', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('17', '2', 'Mr', 'Vo', 'Nam', '', '167', '11#11', 'Far East Building ', '124, ace road', '', '', '', '100006', '', '', 'SG', '12345678', '', '', '', '', '', '', 'nam@abc.com', '', '', '', '0000-00-00');

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
INSERT INTO `tbl_banner` VALUES ('2', 'images/banner/2.jpg', '', '1', '2');
INSERT INTO `tbl_banner` VALUES ('3', 'images/banner/3.jpg', '', '1', '1');

-- ----------------------------
-- Table structure for `tbl_campaigns`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_campaigns`;
CREATE TABLE `tbl_campaigns` (
  `campaign_id` int(11) NOT NULL auto_increment,
  `campaign_name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `started_date` date NOT NULL,
  `finished_date` date NOT NULL,
  `posted_date` datetime NOT NULL,
  `publish` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`campaign_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_campaigns
-- ----------------------------
INSERT INTO `tbl_campaigns` VALUES ('1', 'Campaign 1', 'Lunar New Year Promotion Summary', '<p>With you in mind this Lunar New Year 2012</p>', '2012-07-01', '2012-07-19', '2012-07-03 18:34:20', '1');

-- ----------------------------
-- Table structure for `tbl_campaign_product`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_campaign_product`;
CREATE TABLE `tbl_campaign_product` (
  `id` bigint(20) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `discount` decimal(10,2) NOT NULL default '0.00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_campaign_product
-- ----------------------------
INSERT INTO `tbl_campaign_product` VALUES ('1', '183', '1', '0.00');
INSERT INTO `tbl_campaign_product` VALUES ('2', '14', '1', '0.00');
INSERT INTO `tbl_campaign_product` VALUES ('3', '143', '1', '0.00');
INSERT INTO `tbl_campaign_product` VALUES ('4', '499', '1', '0.00');
INSERT INTO `tbl_campaign_product` VALUES ('5', '117', '1', '0.00');

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';

-- ----------------------------
-- Records of tbl_cart_ratings
-- ----------------------------
INSERT INTO `tbl_cart_ratings` VALUES ('1', '1', '8', '3', '2.0', '0', '2012-06-13 15:51:05', '63', '2012-06-13 15:51:05', '64');
INSERT INTO `tbl_cart_ratings` VALUES ('6', '3', '2', '1', '2.0', '1', '2012-06-11 19:00:23', '0', '2012-06-11 19:00:23', '0');
INSERT INTO `tbl_cart_ratings` VALUES ('3', '9', '1', '1', '1.0', '1', '2012-06-11 15:42:55', '0', '2012-06-11 15:42:55', '0');
INSERT INTO `tbl_cart_ratings` VALUES ('7', '8', '3', '1', '3.0', '1', '2012-06-14 12:10:02', '0', '2012-06-14 12:10:02', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_cart_rating_reviews
-- ----------------------------
INSERT INTO `tbl_cart_rating_reviews` VALUES ('1', '1', 'nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower', '0', '5', '1', '5.00', '0', '127.0.0.1', '1', '2012-05-17 08:58:07', '2', '2012-05-17 08:58:07', '63', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_cart_rating_reviews` VALUES ('2', '1', '  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower', '0', '3', '1', '3.00', '0', '127.0.0.1', '1', '2012-05-17 09:41:41', '6', '2012-05-17 09:41:41', '64', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_cart_rating_reviews` VALUES ('8', '3', 'For questions about orders or general enquiries please contact : For questions about orders or general enquiries please contact : ', '0', '0', '0', '0.00', '1', '0', '1', '2012-06-11 19:00:23', '8', '2012-06-11 19:00:23', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_cart_rating_reviews` VALUES ('9', '1', 'ahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssss\r\n', '0', '0', '0', '0.00', '1', '0', '1', '2012-06-13 15:51:05', '8', '2012-06-13 15:51:05', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_cart_rating_reviews` VALUES ('5', '9', 'For questions about orders or general enquiries please contact :\r\nFor questions about orders or general enquiries please contact :\r\nFor questions about orders or general enquiries please contact :\r\nFor questions about orders or general enquiries please contact :\r\n', '0', '0', '0', '0.00', '1', '0', '1', '2012-06-11 15:42:55', '8', '2012-06-11 15:42:55', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_cart_rating_reviews` VALUES ('10', '8', 'beautiful gifts of flowers////beautiful gifts of flowers////beautiful gifts of flowers////beautiful gifts of flowers////beautiful gifts of flowers////beautiful gifts of flowers////beautiful gifts of flowers////beautiful gifts of flowers////beautiful gifts of flowers////beautiful gifts of flowers////beautiful gifts of flowers////', '0', '0', '0', '0.00', '1', '0', '1', '2012-06-14 12:10:02', '8', '2012-06-14 12:10:02', '0', '0000-00-00 00:00:00', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';

-- ----------------------------
-- Records of tbl_cart_rating_votes
-- ----------------------------
INSERT INTO `tbl_cart_rating_votes` VALUES ('1', '1', '5', '127.0.0.1', '2012-05-17 08:58:07', '2', '2012-05-17 08:58:07', '63');
INSERT INTO `tbl_cart_rating_votes` VALUES ('2', '1', '3', '127.0.0.1', '2012-05-17 09:41:41', '6', '2012-05-17 09:41:41', '64');
INSERT INTO `tbl_cart_rating_votes` VALUES ('8', '3', '2', '0', '2012-06-11 19:00:23', '8', '2012-06-11 19:00:23', '0');
INSERT INTO `tbl_cart_rating_votes` VALUES ('5', '9', '1', '0', '2012-06-11 15:42:55', '8', '2012-06-11 15:42:55', '0');
INSERT INTO `tbl_cart_rating_votes` VALUES ('9', '1', '0', '0', '2012-06-13 15:51:05', '8', '2012-06-13 15:51:05', '0');
INSERT INTO `tbl_cart_rating_votes` VALUES ('10', '8', '3', '0', '2012-06-14 12:10:02', '8', '2012-06-14 12:10:02', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_category
-- ----------------------------
INSERT INTO `tbl_category` VALUES ('2', 'test 1', '2', '1');
INSERT INTO `tbl_category` VALUES ('3', 'aaa', '2', '1');
INSERT INTO `tbl_category` VALUES ('4', 'test', '2', '1');

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
INSERT INTO `tbl_configuration` VALUES ('config_sitename', 'Humming');
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
INSERT INTO `tbl_configuration` VALUES ('config_sms', '0');
INSERT INTO `tbl_configuration` VALUES ('config_send_mail', '1');
INSERT INTO `tbl_configuration` VALUES ('config_point_to_SGD', '1');
INSERT INTO `tbl_configuration` VALUES ('config_admin_email', 'info@ua-solutions.com');
INSERT INTO `tbl_configuration` VALUES ('config_seo', '1');
INSERT INTO `tbl_configuration` VALUES ('config_meta_desc_default', '');
INSERT INTO `tbl_configuration` VALUES ('config_meta_keyword_default', '');
INSERT INTO `tbl_configuration` VALUES ('config_meta_desc_cart', '');
INSERT INTO `tbl_configuration` VALUES ('config_meta_keyword_cart', '');
INSERT INTO `tbl_configuration` VALUES ('config_contactus', '<p>For all questions about orders or general enquiries please contact:</p>\r\n            <p><strong style=\"color:#999;\">Email:</strong><br />\r\n            enquiries@hummings.com.sg</p>\r\n        <p><strong style=\"color:#999;\">Telephone:</strong> <br />\r\n          +65 6844 2222</p>\r\n          <p><strong style=\"color:#999;\">Fax:</strong><br />\r\n          +65 6844 2223</p>\r\n          <p><strong style=\"color:#999;\">Address:</strong><br />\r\n              Humming Flowers & Gifts Pte Ltd<br/>\r\n7 Tai Seng Drive #03-02 Singapore 535218. </p>\r\n			<p><strong style=\"color:#999;\">Business Hours:</strong><br />\r\n             9:00am to 5:30pm (Monday to Friday)<br />\r\n9:00am to 2:30pm (Saturday) </p>\r\n			<p><strong style=\"color:#999;\">Company Registration:</strong> 200723806K </p>');

-- ----------------------------
-- Table structure for `tbl_content`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_content`;
CREATE TABLE `tbl_content` (
  `content_id` int(11) NOT NULL auto_increment,
  `alias` varchar(255) NOT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_content
-- ----------------------------
INSERT INTO `tbl_content` VALUES ('28', 'personalize', '13', 'Personalize', '', '<p>Customised Floral Arch</p>\r\n<p>Commemorate the special event with Humming\\\'s show-stealing digitally customised banner floral stand. Corporate logos and pictures can be included too. Please provide us images (min 200 dpi) at least one working day in advance.</p>', '<p><img alt=\\\"\\\" width=\\\"650\\\" height=\\\"900\\\" src=\\\"http://www.ua-mktg.com/humming/images/HGO115.jpg\\\" /></p>\r\n<p>HGO115</p>\r\n<p><img alt=\\\"\\\" width=\\\"690\\\" height=\\\"900\\\" src=\\\"http://www.ua-mktg.com/humming/images/HGO116.jpg\\\" /></p>\r\n<p>HGO116</p>\r\n<p><img alt=\\\"\\\" width=\\\"680\\\" height=\\\"900\\\" src=\\\"http://www.ua-mktg.com/humming/images/HGO117.jpg\\\" /></p>\r\n<p>HGO117</p>\r\n<p><img alt=\\\"\\\" width=\\\"670\\\" height=\\\"900\\\" src=\\\"http://www.ua-mktg.com/humming/images/HGO118.jpg\\\" /></p>\r\n<p>HGO118</p>', 'Admin', '2012-07-06 16:58:56', 'Admin', '2012-07-06 17:09:08', '0', '0', '1');
INSERT INTO `tbl_content` VALUES ('6', 'privacy-notice', '3', 'Privacy Notice', '', '<p>We respect your right to privacy. At Humming, we collect only the information necessary for us to complete your order and/or to contact you regarding the status of your order. Our site uses an order form to collect the recipient details and your billing information (like credit card details) to fulfill your order/s. The sender\\\\\\\\\\\\\\\'s contact information is also used to get in touch with the visitor, when necessary. You may opt-out of receiving future mailings; see the choice/opt-out instructions below.</p>', '<p>We respect your right to privacy. At Humming, we collect only the information necessary for us to complete your order and/or to contact you regarding the status of your order. Our site uses an order form to collect the recipient details and your billing information (like credit card details) to fulfill your order/s. The sender\\\\\\\\\\\\\\\'s contact information is also used to get in touch with the visitor, when necessary. You may opt-out of receiving future mailings; see the choice/opt-out instructions below.<br />\r\n<br />\r\nHumming will not rent, sell or share your name or personal information without your permission.<br />\r\n<br />\r\nOn occasion we may send you an email including special promotions or new releases. If you choose not to receive such communications, you may unsubscribe by emailing us at <a href=\\\"\\\\&quot;\\\\\\\\&quot;mailto:goto@humming.com.sg\\\\\\\\&quot;\\\\&quot;\\\">goto@humming.com.sg</a>.<br />\r\n<br />\r\nHumming reserves the right to update this privacy policy at anytime. Updates to our Privacy Notice will be posted on the Humming site. This policy is not intended to confer, and does not confer, any rights or remedies.</p>', 'Admin', '2012-06-19 10:07:53', 'Admin', '2012-07-05 16:32:45', '7', '0', '1');
INSERT INTO `tbl_content` VALUES ('7', 'about-us', '3', 'About Us', '', '<p>Humming Flowers &amp; Gifts Pte Ltd (previously Humming House) was incorporated in Jan 2007. We are one of the leading gifting companies in Singapore specialising in customisable flowers and gifts. Our suite of over 900 flowers and gifts ideas all come with greeting cards for that extra personal touch.</p>', '<p style=\\\"text-align: center\\\"><strong><span style=\\\"color: rgb(126,50,96)\\\"><span style=\\\"font-size: medium\\\"><em>&quot;At Humming Gifts, we do everything with you in mind.&quot;</em></span></span></strong></p>\r\n<p>Humming Flowers &amp; Gifts Pte Ltd (previously Humming House) was incorporated in Jan 2007. We are one of the leading gifting companies in Singapore specialising in customisable flowers and gifts. Our suite of over 900 flowers and gifts ideas all come with greeting cards for that extra personal touch.</p>\r\n<p>Humming\\\'s Flowers and Gifts Catalogue 2012 alone features over 600 flowers and gifts ideas. An expert in local gifting customs, Humming has built a loyal customer base of individuals and corporations for over more than a decade. We aim to further strengthen our brand and remain committed to introducing new and unique gifting experiences. Humming continues to pride itself with providing unparalleled service, innovative and exciting ideas for customers &ndash; \\\'With you in mind\\\'. Humming\\\'s invaluable knowledge in local gifting customs, allows the company to create truly unique gifting experiences for any occasion.Humming\\\'s Flowers and Gifts Catalogue 2012 alone features over 600 flowers and gifts ideas. An expert in local gifting customs, Humming has built a loyal customer base of individuals and corporations for over more than a decade. We aim to further strengthen our brand and remain committed to introducing new and unique gifting experiences. Humming continues to pride itself with providing unparalleled service, innovative and exciting ideas for customers &ndash; \\\'With you in mind\\\'. Humming\\\'s invaluable knowledge in local gifting customs, allows the company to create truly unique gifting experiences for any occasion.</p>\r\n<p><span style=\\\"color: rgb(96,0,56)\\\"><span style=\\\"font-size: small\\\"><strong>Mission</strong></span></span></p>\r\n<p>Creating a unique gifting experience with you in mind, we as an up-and-coming hampers, flowers and gifts company will propel ahead by</p>\r\n<ol>\r\n    <li>Challenging the status quo and industry standards by coming up with eye-catching hampers, flowers and gift creations</li>\r\n    <li>Staying personable and going out of the way to understand and meet customers\\\' needs</li>\r\n    <li>Staying nimble and flexible to meeting the requirements of our customers\\\' needs</li>\r\n    <li>Increasing productivity and delivering consistent customer service by leveraging on our operating systems and resources</li>\r\n</ol>\r\n<p><span style=\\\"color: rgb(96,0,56)\\\"><span style=\\\"font-size: small\\\"><strong>Brand Promise</strong></span></span></p>\r\n<p>Led by a passion to create a unique gifting experience with you in mind, we will stay true to our promise by observing:</p>\r\n<p>Quality: Product quality and freshness</p>\r\n<p>Service: Personalised and prompt service</p>\r\n<p>Creative: Attractive designs that leave a good impression</p>\r\n<p>Value: High perceived value, affordable price propositions</p>\r\n<p><span style=\\\"color: rgb(96,0,56)\\\"><span style=\\\"font-size: small\\\"><strong>With You In Mind (Brand Story)</strong></span></span></p>\r\n<p>Humming Gifts is like a close friend who never leaves your side.</p>\r\n<p>When you need gifting service, we will offer you ours.</p>\r\n<p>When you need our service, we will respond to you attentively.</p>\r\n<p>When you have a gifting need to fulfil, we will do our best to help you.</p>\r\n<p>Understanding your gifting needs and preferences,</p>\r\n<p>While honouring Asian gifting-giving cultures and customs,</p>\r\n<p>We can advise you on even small details,</p>\r\n<p>Some of which you may not have thought of.</p>\r\n<p>Trendy and creative, we also provide you with</p>\r\n<p>Fresh and exceptional ideas &ndash; and keep our gifts affordable.</p>\r\n<p>For whatever we do, it is always with you in mind.</p>\r\n<p><span style=\\\"color: rgb(96,0,56)\\\"><span style=\\\"font-size: small\\\"><strong>Service Values</strong></span></span></p>\r\n<p>Attentiveness<br />\r\nPutting ourselves constantly in the position of our customers, we pride ourselves on our ability to satisfy them with our superior customer service and attention to details.</p>\r\n<p>Personal touch<br />\r\nWe an in-depth knowledge of our customers\\\' gifting needs and preference, we are able to provide them with a highly personable service that is close to their hearts.</p>\r\n<p>Dependability<br />\r\nBy leveraging on a potent combination of technology and teamwork, we are able to ensure consistently high levels of quality service and speed in our delivery.</p>\r\n<p>Versatility<br />\r\nKeeping our customers\\\' gifting requirements, we are able to come up with creations that have the \\\'X\\\' factor &ndash; eXceptional and eXciting</p>\r\n<p><span style=\\\"color: rgb(96,0,56)\\\"><span style=\\\"font-size: small\\\"><strong>Logo</strong></span></span></p>\r\n<p>Our brand identity shows a ribbon morphing into a Chinese knot to reflect Humming\\\'s expertise in Chinese gifting customs.</p>\r\n<p style=\\\"text-align: center\\\"><img alt=\\\"\\\" src=\\\"http://www.ua-mktg.com/humming/images/logo1.png\\\" /></p>\r\n<p>&quot;H&quot; is embedded in the centre of it all, just like Humming always immerses itself in your needs, It is always thinking ahead and going the extra mile to present thoughtfully put-together gifts, With you in mind.</p>', 'Admin', '2012-06-20 15:25:34', 'Admin', '2012-07-05 17:25:04', '1', '0', '1');
INSERT INTO `tbl_content` VALUES ('8', 'press', '3', 'Press', '', '<p>Press Release</p>', '<p><span style=\\\"color: #993366\\\"><b><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">Chinese New Year 2012</span></b></span></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">Teaching university student to make a Chinese New Year hamper, Omy.sg, January 10</span></u></b></p>\r\n<p><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\"><a href=\\\"http://yzone.omy.sg/index.php?articleID=20537&amp;option=com_article&amp;task=detail&amp;cid=203&amp;type\\\"><span style=\\\"color: windowtext; text-decoration: none; text-underline: none\\\">http://yzone.omy.sg/index.php?articleID=20537&amp;option=com_article&amp;task=detail&amp;cid=203&amp;type</span></a>=<o:p></o:p></span></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></u></b></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">Prosperity Treasure Chest, Herworldplus.com, January 11</span></u></b></p>\r\n<p><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\"><a href=\\\"http://www.herworldplus.com/shopping/updates/shopping-updates-what-buy-chinese-new-year\\\"><span style=\\\"color: windowtext; text-decoration: none; text-underline: none\\\">http://www.herworldplus.com/shopping/updates/shopping-updates-what-buy-chinese-new-year</span></a><o:p></o:p></span></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></u></b></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">Abundance Luck Hampers From Humming Flowers &amp; Gifts, 8 Days, January 19</span></u></b></p>\r\n<p><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\"><a href=\\\"http://lifestyle.xin.msn.com/en/magazine/8-days/feature.aspx?cp-documentid=5776697\\\"><span style=\\\"color: windowtext; text-decoration: none; text-underline: none\\\">http://lifestyle.xin.msn.com/en/magazine/8-days/feature.aspx?cp-documentid=5776697</span></a></span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\\\"color: #993366\\\"><b><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">Valentine\\\'s Day 2012</span></b></span></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">Best Valentine&rsquo;s Day Gifts, Timeoutsingapore.com, January 27</span></u></b></p>\r\n<p><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\"><a href=\\\"http://www.timeoutsingapore.com/shopping/feature/best-valentines-day-gifts-2012#picture5\\\"><span style=\\\"color: windowtext; text-decoration: none; text-underline: none\\\">http://www.timeoutsingapore.com/shopping/feature/best-valentines-day-gifts-2012#picture5</span></a><o:p></o:p></span></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></u></b></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">10 over-the-top Valentine\\\'s Day gift ideas - A S$2,500 bouquet of roses, Xin.msn.com, February 1</span></u></b></p>\r\n<p><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\"><a href=\\\"http://lifestyle.xin.msn.com/en/sex-relationships/article.aspx?cp-documentid=5829435&amp;page=8\\\"><span style=\\\"color: windowtext; text-decoration: none; text-underline: none\\\">http://lifestyle.xin.msn.com/en/sex-relationships/article.aspx?cp-documentid=5829435&amp;page=8</span></a><o:p></o:p></span></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></u></b></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></u></b></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">Humming Flowers &amp; Gifts Introduces First Drive-Thru Collection For Valentine&rsquo;s Day Bouquets, Whatshappening.sg, February</span></u></b></p>\r\n<p><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\"><a href=\\\"http://www.whatshappening.sg/events/index.php?com=detail&amp;eID=61219&amp;year=2012&amp;month=02\\\"><span style=\\\"color: windowtext; text-decoration: none; text-underline: none\\\">http://www.whatshappening.sg/events/index.php?com=detail&amp;eID=61219&amp;year=2012&amp;month=02</span></a><o:p></o:p></span></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></u></b></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">So You Want To Buy Her Roses&hellip;, Menshealth.com.sg, February 9</span></u></b></p>\r\n<p><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\"><a href=\\\"http://www.menshealth.com.sg/sex-relationships/so-you-want-buy-her-roses\\\"><span style=\\\"color: windowtext; text-decoration: none; text-underline: none\\\">http://www.menshealth.com.sg/sex-relationships/so-you-want-buy-her-roses</span></a><b><o:p></o:p></b></span></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></u></b></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">Let 91.3&rsquo;s Valentine&rsquo;s Day Romance Repair Crew service you!, Radio 91.3 Facebook, February 12</span></u></b></p>\r\n<p><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\"><a href=\\\"https://www.facebook.com/photo.php?fbid=10150624010615101&amp;set=a.10150624008640101.415632.28388245100&amp;type=3&amp;theater\\\"><span style=\\\"color: windowtext; text-decoration: none; text-underline: none\\\">https://www.facebook.com/photo.php?fbid=10150624010615101&amp;set=a.10150624008640101.415632.28388245100&amp;type=3&amp;theater</span></a><o:p></o:p></span><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\">&nbsp;<o:p></o:p></span></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">Humming Flowers &amp; Gifts Introduces First Drive-Thru Collection For Valentine&rsquo;s Day Bouquet. SgLinks.com, February 11</span></u></b></p>\r\n<p><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\"><a href=\\\"http://sglinks.com/pages/2721599-february-th-humming-flowers-gifts-introduces-first-drive\\\"><span style=\\\"color: windowtext; text-decoration: none; text-underline: none\\\">http://sglinks.com/pages/2721599-february-th-humming-flowers-gifts-introduces-first-drive</span></a><o:p></o:p></span>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\\\"color: #993366\\\"><b><span style=\\\"font-family: \\\'Arial\\\',\\\'sans-serif\\\'; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">Baby Diaper Cake Giveaway 2012</span></b></span></p>\r\n<p><b><u><span style=\\\"font-family: \\\'Arial\\\',\\\'sans-serif\\\'; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">WIN over $10,000 worth of goodies! &ndash; Humming Flowers &amp; Gifts Baby Diaper Cake, Youngparents.com.sg, February</span></u></b></p>\r\n<p><span style=\\\"font-family: \\\'Arial\\\',\\\'sans-serif\\\'; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\"><a href=\\\"http://www.youngparents.com.sg/promotions/%2410k-giveway\\\"><span style=\\\"color: windowtext; text-decoration: none; text-underline: none\\\">http://www.youngparents.com.sg/promotions/%2410k-giveway</span></a><o:p></o:p></span></p>', 'Admin', '2012-06-20 15:26:58', 'Admin', '2012-07-10 13:37:02', '3', '0', '0');
INSERT INTO `tbl_content` VALUES ('9', 'sitemap', '8', 'Sitemap', '', '<p>Coming soon...</p>', '<p>Coming soon...</p>', 'Admin', '2012-06-20 15:27:38', 'Admin', '2012-07-06 11:25:05', '0', '0', '0');
INSERT INTO `tbl_content` VALUES ('10', 'careers', '3', 'Careers', '', '<p>Jobs and Careers</p>', '<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><u><span lang=\\\"EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Jobs and Careers<o:p></o:p></font></font></span></u></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Careers<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">With our customers in mind,<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">With you in mind as an individual,<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Come join us now in this journey of unique gifting experience.<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNoSpacing\\\" style=\\\"margin: 0cm 0cm 0pt\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><o:p><font size=\\\"3\\\" face=\\\"Calibri\\\">&nbsp;</font></o:p></span></p>\r\n<p class=\\\"MsoNoSpacing\\\" style=\\\"margin: 0cm 0cm 0pt\\\"><b style=\\\"mso-bidi-font-weight: normal\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Position:<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span>Senior Graphic Designer<o:p></o:p></font></font></span></b></p>\r\n<p class=\\\"MsoNoSpacing\\\" style=\\\"margin: 0cm 0cm 0pt\\\"><strong><span style=\\\"font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; mso-ascii-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \\\'Times New Roman\\\'; mso-bidi-theme-font: minor-bidi\\\"><font size=\\\"3\\\">Application:<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span>Open</font></span></strong><b style=\\\"mso-bidi-font-weight: normal\\\"><br />\r\n<strong><span style=\\\"font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; mso-ascii-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \\\'Times New Roman\\\'; mso-bidi-theme-font: minor-bidi\\\"><font size=\\\"3\\\">Number of Vacancies: 1<o:p></o:p></font></span></strong></b></p>\r\n<p class=\\\"MsoNoSpacing\\\" style=\\\"margin: 0cm 0cm 0pt\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><o:p><font size=\\\"3\\\" face=\\\"Calibri\\\">&nbsp;</font></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Job scope:<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpFirst\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-list: l3 level1 lfo1\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Provide concept, layout and design for company and marketing collaterals <o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-list: l3 level1 lfo1\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Able to handle design projects from concept to final artwork<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpLast\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 10pt 36pt; mso-list: l3 level1 lfo1\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Assist various departments in designing support if necessary<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Requirements:<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpFirst\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-list: l1 level1 lfo2\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">At least 5 years of related work experience <o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-list: l1 level1 lfo2\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Committed to working in both a team and yet, proactive and able to work independently<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-list: l1 level1 lfo2\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Appreciates flowers and gifts<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-list: l1 level1 lfo2\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Fast learner, enthusiastic and determined personality<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-list: l1 level1 lfo2\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Good communication and graphic skills<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-list: l1 level1 lfo2\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Fluent in English and Mandarin to do designing with Chinese text<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpLast\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 10pt 36pt; mso-list: l1 level1 lfo2\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Only Singaporeans and Singapore PRs need to apply <o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNoSpacing\\\" style=\\\"margin: 0cm 0cm 0pt\\\"><b style=\\\"mso-bidi-font-weight: normal\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Position:<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span>Administrative Assistant <o:p></o:p></font></font></span></b></p>\r\n<p class=\\\"MsoNoSpacing\\\" style=\\\"margin: 0cm 0cm 0pt\\\"><strong><span style=\\\"font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; mso-ascii-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \\\'Times New Roman\\\'; mso-bidi-theme-font: minor-bidi\\\"><font size=\\\"3\\\">Application:<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span>Open</font></span></strong><b style=\\\"mso-bidi-font-weight: normal\\\"><br />\r\n<strong><span style=\\\"font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; mso-ascii-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \\\'Times New Roman\\\'; mso-bidi-theme-font: minor-bidi\\\"><font size=\\\"3\\\">Number of Vacancies: 2<o:p></o:p></font></span></strong></b></p>\r\n<p class=\\\"MsoNoSpacing\\\" style=\\\"margin: 0cm 0cm 0pt\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><o:p><font size=\\\"3\\\" face=\\\"Calibri\\\">&nbsp;</font></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Job scope:<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpFirst\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-list: l2 level1 lfo3\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">To attend to walk-in customers<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-list: l2 level1 lfo3\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Handling of gift rewards redemption<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpLast\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 10pt 36pt; mso-list: l2 level1 lfo3\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Filing, mailing, invoicing and other administrative tasks<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Requirements:<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpFirst\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-add-space: auto; mso-list: l0 level1 lfo4\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Minimum N or O levels<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-add-space: auto; mso-list: l0 level1 lfo4\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Pleasant personality<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-add-space: auto; mso-list: l0 level1 lfo4\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Able to liaise with both English and Chinese speaking customers<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-add-space: auto; mso-list: l0 level1 lfo4\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Knowledge in Hanyu Pinyin an added advantage<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpLast\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-add-space: auto; mso-list: l0 level1 lfo4\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\">Singaporeans /PRs only<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><o:p><font size=\\\"3\\\" face=\\\"Calibri\\\">&nbsp;</font></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\">Remuneration package will commensurate with experience and qualifications.<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\">Interested applicants, please send your detailed resume with recent photo, stating current salary and expected pay.<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font size=\\\"3\\\" face=\\\"Calibri\\\">Submit all job enquires and applications to </font><a href=\\\"mailto:careers@humming.com.sg\\\"><font color=\\\"#0000ff\\\" size=\\\"3\\\" face=\\\"Calibri\\\">careers@humming.com.sg</font></a><o:p></o:p></span></p>\r\n<p>&nbsp;</p>', 'Admin', '2012-06-20 15:28:02', 'Admin', '2012-07-06 11:10:19', '6', '0', '1');
INSERT INTO `tbl_content` VALUES ('18', 'service-policy', '3', 'Service Policy', '', '<div class=\\\"cmsheader\\\" style=\\\"margin-bottom: 15px\\\"><span style=\\\"font-weight: 600\\\">General Terms and Conditions</span></div>', '<div class=\\\"cmsheader\\\" style=\\\"margin-bottom: 15px\\\"><span style=\\\"font-weight: 600\\\">General Terms and Conditions</span></div>\r\n<p class=\\\"heady\\\">Delivery and Orders</p>\r\n<div class=\\\"bcj\\\">\r\n<ul style=\\\"margin-left: 20px\\\">\r\n    <li>All prices are in Singapore Currency.</li>\r\n    <li>Goods &amp; Services Tax (GST) of 7% is applicable on all products and services.</li>\r\n    <li>An automated reply will confirm your placed order.</li>\r\n    <li>For delivery of orders, there will be a charge of $ 6.42 (w/GST).</li>\r\n    <li>Deliveries to Sentosa / Cargo / Changi Airport / PSA / Marina Bay Sands will incur delivery charges of $ 13.91 (w/GST).</li>\r\n    <li>Orders placed on a Saturday after 2pm will be delivered on the next working day after 2pm (ie. Monday).</li>\r\n    <li><strong>Christmas</strong> &amp; <strong>Lunar New Year\\\'s</strong> hamper orders will have to be <strong>ordered in advance</strong>.</li>\r\n    <li>Humming reserves the right to not accept any order depending on circumstances</li>\r\n</ul>\r\n</div>\r\n<p class=\\\"heady\\\">How to Order</p>\r\n<div class=\\\"bcj\\\">\r\n<ul style=\\\"margin-left: 20px\\\">\r\n    <li>Call us : 6844-2222</li>\r\n    <li>Fax us : 6844-2223</li>\r\n    <li>Order online : www.hummings.com</li>\r\n</ul>\r\n</div>\r\n<p class=\\\"heady\\\">Normal Business Hours</p>\r\n<div class=\\\"bcj\\\">\r\n<ul style=\\\"margin-left: 20px\\\">\r\n    <li>9:00am to 6:15pm (Monday to Friday)</li>\r\n    <li>9:00am to 2:00pm (Saturday)</li>\r\n    <li>Closed (Sunday)</li>\r\n</ul>\r\n</div>\r\n<p class=\\\"heady\\\">Extended Business Hours</p>\r\n<div class=\\\"bcj\\\">\r\n<ul style=\\\"margin-left: 20px\\\">\r\n    <li>9 January 2012 to 20 January 2012 only<br />\r\n    <br />\r\n    <ul style=\\\"margin-left: 20px\\\">\r\n        <li>Monday to Friday : 9am-8pm</li>\r\n        <li>Saturday : 9am-5pm</li>\r\n        <li>Sunday : 10am-2pm</li>\r\n        <li>Lunar New Year Eve: 9am-11am</li>\r\n    </ul>\r\n    <br />\r\n    &nbsp;</li>\r\n    <li>Closed on 22, 23, 24 and 25 January 2012, Monday and Tuesday respectively</li>\r\n    <li>Normal business hours will resume on 26 January 2012, Thursday</li>\r\n</ul>\r\n</div>\r\n<p class=\\\"heady\\\">Order Delivery Schedule</p>\r\n<div class=\\\"bcj\\\">\r\n<table>\r\n    <tbody>\r\n        <tr>\r\n            <td class=\\\"dev\\\" style=\\\"font-size: 12px; font-weight: bold\\\">Order placed and confirmed</td>\r\n            <td class=\\\"dev\\\" style=\\\"font-size: 12px; font-weight: bold\\\">Delivery Schedules</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\\\"dev\\\">Before 12pm (Mon-Fri)</td>\r\n            <td class=\\\"dev\\\">same day after 2pm before 5pm</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\\\"dev\\\">Between 12pm-5pm (Mon-Fri)</td>\r\n            <td class=\\\"dev\\\">same day between 7.15pm-9.59pm</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\\\"dev\\\">Between 5pm-5.30pm (Mon-Fri)</td>\r\n            <td class=\\\"dev\\\">next day before 2pm</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\\\"dev\\\">Before 12pm (Sat)</td>\r\n            <td class=\\\"dev\\\">same day after 2pm before 5pm</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\\\"dev\\\">Between 12pm-2.00pm (Sat)</td>\r\n            <td class=\\\"dev\\\">same day before 7pm</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\\\"dev\\\">After 2.00pm (Sat)</td>\r\n            <td class=\\\"dev\\\">next working day after 2pm</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\\\"dev\\\">Sunday &amp; PH</td>\r\n            <td class=\\\"dev\\\">next working day after 2pm</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<div>&nbsp;</div>\r\n<div><b><u>Weekday</u></b></div>\r\n<div>. Between 7.00am and 8.00am (Surcharge of $25.00)<br />\r\n. Between 8.01am and 9.29am (Surcharge of $13.00)<br />\r\n. Between 9.30am and 2.00pm<br />\r\n. Between 2.00pm and 5.00pm<br />\r\n. Between 7.00pm and 9.59pm<br />\r\n. Between 10.00pm and 11.59pm (Surcharge of $25.00)<br />\r\n. Between 12.00am and 6.59pm (Surcharge of $50.00)</div>\r\n<div>&nbsp;</div>\r\n<div><b><u>Saturday</u></b></div>\r\n<div>. Between 7.00am and 8.00am (Surcharge of $25.00)<br />\r\n. Between 8.01am and 9.29am (Surcharge of $13.00)<br />\r\n. Between 9.30am and 2.00pm<br />\r\n. Between 2.00pm and 6.59pm<br />\r\n. Between 7.00pm and 10.59pm (Surcharge of $25.00)<br />\r\n. Between 11.00pm and 6.59am (Surcharge of $50.00)</div>\r\n<div>&nbsp;</div>\r\n<div>NO DELIVERY ON SUNDAYS AND PUBLIC HOLIDAYS.</div>\r\n<br />\r\n<span style=\\\"font-size: 14px; font-weight: bold\\\">Note:</span> Orders received via Internet or fax on Saturday after 2.00pm, Sunday &amp; Public Holiday can only be confirmed by the <b>NEXT</b> working day. As such, delivery can only be done after 2pm on that same day.<br />\r\n&nbsp;</div>\r\n<p class=\\\"heady\\\">Delivery Rates</p>\r\n<div class=\\\"bcj\\\">24 Hours Delivery and Express Delivery Service. Please Call Our Hotline (65) 6844 2222 for more details.</div>\r\n<p class=\\\"heady\\\">Surcharges</p>\r\n<div class=\\\"bcj\\\">\r\n<table cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" width=\\\"100%\\\">\r\n    <tbody>\r\n        <tr valign=\\\"top\\\">\r\n            <td>\r\n            <div style=\\\"font-size: 11px; font-weight: bold\\\">Monday - Friday (with GST)</div>\r\n            <br />\r\n            <table>\r\n                <tbody>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">7.00am - 8.00am</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 26.75</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">8.01am - 9.29am</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 13.91</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">9.30am - 9.59pm</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 6.42</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">10.00pm -11.59pm</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 26.75</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">12 midnight - 6.59am</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 53.50</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            &nbsp;</td>\r\n            <td>\r\n            <div style=\\\"font-size: 11px; font-weight: bold\\\">Saturday (with GST)</div>\r\n            <br />\r\n            <table>\r\n                <tbody>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">7.00am - 8.00am</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 26.75</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">8.01am - 9.29am</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 13.91</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">9.30am - 4.59pm</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 6.42</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">5.00pm - 9.59pm</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 26.75</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">10.00pm - 11.59pm</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 37.45</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">12 Midnight - 6.59am</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 53.50</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            &nbsp;</td>\r\n            <td>\r\n            <div style=\\\"font-size: 11px; font-weight: bold\\\">Sunday / Public Holiday (with GST)</div>\r\n            <br />\r\n            <table>\r\n                <tbody>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">7.00am - 8.00am</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 26.75</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">8.01am - 9.29am</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 13.91</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">9.30am - 11.59am</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 6.42</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">12 Noon - 4.59pm</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 26.75</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">5.00pm - 9.59pm</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 37.45</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">10.00pm - 11.59pm</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 48.70</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">12 Midnight - 6.59am</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 53.50</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            &nbsp;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\nDelivery is done according to our delivery schedule. Specific time delivery requests within the no charge timing will be taken into consideration based on the situation of our delivery schedule at the point of time.<br />\r\n<br />\r\n<div style=\\\"font-size: 11px; font-weight: bold\\\">Special Delivery - $21.40 (inclusive GST)</div>\r\n<br />\r\nCharges are for requested deliveries to be made at a particular time or within a tight specific time i.e. 2pm or between 2pm-2.30pm. Humming reserves the right not to accept this service if our resources are limited.</div>\r\n<p class=\\\"heady\\\"><strong>Valentine\\\'s Day</strong></p>\r\n<div class=\\\"bcj\\\">The prices of some flowers like roses are expected to increase during the period leading to Valentine\\\'s Day. New prices are effective regardless of when the order are placed. Arrangements and bouquets with roses shown online and in the catalogue will be subjected to price adjustments but can be substituted with other flowers with no price change.</div>\r\n<p class=\\\"heady\\\"><strong>Order Cancellation</strong></p>\r\n<div class=\\\"bcj\\\">\r\n<ul style=\\\"margin-left: 20px\\\">\r\n    <li>Cancellation of order must be made at least ONE day (24 hrs) in advance before the actual delivery date or a 50% of the selling price will be charged.</li>\r\n    <li>The FULL price of the order will be charged if a delivery was attempted but no recipient or that the address given was wrong. There will be a nominal delivery charge of S$13.91 (C.O.D.) if the order is redirected to another address as delivery contractors are paid based on per trip per address basis.</li>\r\n    <li>Please use our &quot;Contact Us&quot; or Tel: (65) 6844-2222 to inform us early.</li>\r\n</ul>\r\n</div>\r\n<p class=\\\"heady\\\"><strong>Substitution</strong></p>\r\n<div class=\\\"bcj\\\">Humming reserves the right to substitute any products that are out of stock with another with equivalent or higher in value.</div>\r\n<p class=\\\"heady\\\"><strong>Warranty of Goods / Services</strong></p>\r\n<div class=\\\"bcj\\\">Goods &amp; Services provided are assured of its intended purposes &amp; reliability.</div>\r\n<p class=\\\"heady\\\"><strong>Terms of Warranty</strong></p>\r\n<div class=\\\"bcj\\\">As provided by manufacturer or otherwise stated.</div>\r\n<p class=\\\"heady\\\"><strong>Exchange &amp; Refund</strong></p>\r\n<div class=\\\"bcj\\\">All goods sold are non-exchangeable and non-refundable.</div>\r\n<p><br />\r\n&nbsp;</p>', 'Admin', '2012-07-05 16:48:16', 'Admin', '2012-07-11 17:42:17', '2', '0', '1');
INSERT INTO `tbl_content` VALUES ('19', 'contact-us', '3', 'Contact Us', '', '<p>Contact Us</p>', '<p>For all questions about orders or general enquiries please contact:</p>\r\n<p><strong style=\\\"color: #999\\\">Email:</strong><br />\r\nenquiries@hummings.com.sg</p>\r\n<p><strong style=\\\"color: #999\\\">Telephone:</strong> <br />\r\n+65 6844 2222</p>\r\n<p><strong style=\\\"color: #999\\\">Fax:</strong><br />\r\n+65 6844 2223</p>\r\n<p><strong style=\\\"color: #999\\\">Address:</strong><br />\r\nHumming Flowers &amp; Gifts Pte Ltd<br />\r\n7 Tai Seng Drive #03-02 Singapore 535218.</p>\r\n<p><strong style=\\\"color: #999\\\">Business Hours:</strong><br />\r\n9:00am to 6:15pm (Monday to Friday)<br />\r\n9:00am to 2:00pm (Saturday)</p>', 'Admin', '2012-07-05 17:03:08', 'Admin', '2012-07-05 17:06:03', '8', '0', '1');
INSERT INTO `tbl_content` VALUES ('20', 'request-for-catalogue', '3', 'Request For Catalogue', '', '<p>Request For Catalogue</p>', '<p>Request for catalogue: enquiries@hummings.com.sg</p>', 'Admin', '2012-07-06 11:18:55', 'Admin', '2012-07-06 11:20:32', '5', '0', '1');
INSERT INTO `tbl_content` VALUES ('21', '', '8', 'Download Order Form', '', '<p>Download Order Form: PDF file</p>', '<p>Download Order Form: PDF file</p>', 'Admin', '2012-07-06 11:23:00', '', '0000-00-00 00:00:00', '4', '0', '0');
INSERT INTO `tbl_content` VALUES ('22', 'help-me-find-a-gift', '12', 'Help Me Find a Gift', '', '<p>Your personal gift guide: Starting with flowers.</p>', '<div style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"color: #993366\\\"><strong>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\">Your Personal Gift Guide: Starting with flowers</span></span></p>\r\n</strong></span><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\">Need help to find a gift for someone? But yet you don&rsquo;t know how and where to start from? There are many kinds of gifts for the many different special occasions. Before you embark on the search, you would need to think of what is the gift for, for whom is the gift for and when, where and how is the gift going to be presented to the recipient? There are so many challenges to find the perfect gift but fret not with Humming Flowers and Gifts here for you.</span></span></div>\r\n<div style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><strong><u>What is a gift?</u></strong></span></span></span></div>\r\n<div style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\">What is a gift? A gift is something from the bottom of your heart presented with the most sincere and thoughtful best wishes for the recipient. It speaks far more than what you want to convey to the recipient. Be it for love, friendship, gratitude or pure best wishes for the other party, a gift is something that is sacred and the meaning is wholesome. Recipients are able to receive warm best wishes from you just with a click of the mouse or a call away. The marvel of today&rsquo;s technology has enabled the gift to be presented and delivered to the recipient with such ease. Realise the joy of modern day gifting as you spread this happiness together with Humming.</span></span></div>\r\n<div style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\">However, even in the modern day gifting, it need not be an expensive gift. The most sincere and true gifts are not necessarily the most expensive and elaborate. Even a simple box of chocolates with a &lsquo;thank you&rsquo; card personally written speaks of your well wishes and thus true feelings can be felt. With over 800 flowers and gifts available, the art of gifting is taking the level of love and sincerity to greater heights. And at Humming, we always do things &hellip;With You In Mind. &nbsp;&nbsp;&nbsp;</span></span></div>\r\n<div style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><strong><u>When&nbsp;and why&nbsp;do&nbsp;we buy a gift?</u></strong></span></span></span></div>\r\n<div style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\">What do you buy for a girl on her birthday? What do you buy for a newly-wed couple on their wedding day? What do you buy for your father on his job promotion to celebrate? What do you buy for your sister to congratulate on her graduation day? What do you buy for your niece&rsquo;s first month birthday? There are many reasons to celebrate and there are many gifts to choose from. </span></span></div>\r\n<div style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\">Gifting in the olden days may speak of many traditions and traditional items. This culture is seen through and brought to new heights with Humming. And in helping you to find a gift, we strive to bring to you the most unique gifting experience ever.</span></span></div>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><font face=\\\"Calibri\\\"><span style=\\\"color: #993366\\\"><span style=\\\"font-family: Tahoma\\\"><strong><u><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\">Flower meaning</span></u></strong></span></span></font></span><font size=\\\"3\\\"><o:p></o:p></font></p>\r\n<u1:p></u1:p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Looking at the wide array of types of flowers available in the market, one can&rsquo;t help but feel overwhelmed. What type of flower do you choose for your partner and what type of flower do you buy for your parents? Surely they should be different types of flowers?<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span><span style=\\\"mso-spacerun: yes\\\">&nbsp;</span></span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></p>\r\n<u1:p></u1:p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">To add a level of depth to the meaning of your pretty flowers, send well wishes to someone with all your heartfelt feelings conveyed in the right type of flower gifts.<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span></span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Different flowers carry different meanings and this is a unique aspect of its symbolism. We bring to you now some of our common favourites in Singapore!</span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></p>\r\n<u1:p></u1:p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"color: #993366\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><u><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Carnation</span></u></span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></p>\r\n<u1:p></u1:p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Red carnation signifies the sender&rsquo;s admiration for the recipient. White carnation signifies good luck. On any occasion you want to lend your support for someone, carnation is the best choice.</span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></p>\r\n<u1:p></u1:p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"color: #993366\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><u><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Rose</span></u></span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Red roses are the flower of love for the colour red signifies strong romantic feelings. An all-time-favourite for Valentine&rsquo;s Day, this pretty flower speaks of intense and passionate feelings.</span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></p>\r\n<u1:p></u1:p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"color: #993366\\\"><span style=\\\"background-color: #ffffff\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><u>Tulips</u></span></span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\">Introducing a premium breed of flowers - tulip. Tulips signify perfect love and are valued for their brightly coloured, beautiful cup-shaped petals. Send the graceful and versatile tulips to someone for comfort or for romance.<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span></span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"color: #993366\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><u><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Sunflower</span></u></span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><u1:p></u1:p><o:p></o:p></span></font></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Sunflower signifies good luck, happiness and ambition. With its bright yellow petals and happy deposition, the sunflower makes an excellent housewarming gift! </span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></p>\r\n<u1:p></u1:p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"color: #993366\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><u><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Lily</span></u></span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\">White Easter Lily signifies purity, innocence and virtue. Generally, lilies make an impressive statement of pure elegance. Send a wonderful lily bouquet today to create a striking impression with that special someone. <br />\r\n<br />\r\n</span></span></span><span style=\\\"color: #993366\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><strong><u><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\">Best Florist</span></u></strong></span></span></span><font size=\\\"3\\\"><o:p></o:p></font></p>\r\n<u1:p></u1:p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">What are the reasons which constitute for a good florist for you?</span></span></span><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\"><u1:p></u1:p></span></span><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Having many varieties with a wide array of choices for every occasion provides customers the flexibility and convenience of a one-stop flowers and gifts destination. Many florists have also moved from the traditional brick-and-mortar stores to virtual online stores. Online stores provide convenience and shopping in the comfort of your own home with delivery services easily available at timing to your convenience. </span></span></span><o:p></o:p></p>\r\n<u1:p><u1:p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Established for over a decade ago, Humming Flowers and Gifts is a full-fledged flowers and gifts provider, reputable for being reliable, creative and innovative. We believe in creating quality gifts with our customers in mind. Humming Flowers and Gifts strives to bring to all customers our service values of attentiveness; lending a personal touch for personable service; dependability by leveraging on technology and teamwork and versatility by coming up with creations that are exceptional and exciting. Always &hellip;With You In Mind.&nbsp;<span style=\\\"mso-spacerun: yes\\\">&nbsp;</span></span></span></span></p>\r\n<p>&nbsp;</p>\r\n</u1:p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Visit our website at </span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-size: larger\\\"><span lang=\\\"EN-US\\\" style=\\\"line-height: 115%; mso-ansi-language: EN-US\\\"><a href=\\\"http://www.hummings.com/\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"line-height: 115%\\\">www.hummings.com</span></span></a></span><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\"> as we take you through a unique gifting experience.</span></span></span></font><o:p></o:p></u1:p><u1:p></u1:p>', 'Admin', '2012-07-06 16:04:46', 'Admin', '2012-07-16 17:10:41', '1', '0', '1');
INSERT INTO `tbl_content` VALUES ('23', 'help-me-find-a-rose', '12', 'Help Me Find a Rose', '', '<p>Your guide to roses.</p>', '<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><strong><span style=\\\"color: #993366\\\"><span style=\\\"background-color: #ffffff\\\">Your Guide to Roses</span></span></strong></span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Do you need help to find roses for a gift? There are many interesting fun facts surrounding this popular and beautiful flower. Check out the meanings of the different number and colours of roses to add a special meaning to your sweet lovely rose bouquet.</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\">What is a rose?</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">A rose is a rose is a rose. Do you know that roses can &lsquo;speak&rsquo; like humans too? There are occasions when you need to relay your different feelings to the same person but how do you do it? Do it now with roses! Look at the many interesting meanings the rose can hold for someone when you send it in different colours and numbers. Viola! What a good way to channel all your thoughts and feelings through this interesting form of communication. Inject the sparkle and see how the magic works on a love you have had yet to experience. </span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">According to a survey, close to 80% of the girls would love to receive flowers even for no particular reason! Make the magic work today and let these pretty roses &lsquo;speak&rsquo; on your behalf to do justice for your deep sincere love.</span></span></span></p>\r\n<p><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\">Roses meaning</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">&ldquo;Why did you buy me 3 stalks of roses and not two? And why red?&rdquo; Do you have the answers to these questions? Have you ever wonder what are the rose meanings for the different numbers and colours given? Avoid the potential pitfall of getting the wrong number and colour of roses for your love especially on big occasions like Valentine&rsquo;s Day! Be well-equipped with the knowledge of the meanings of the different numbers and colours of roses. Not only does it save your day (most likely), it is a source of good fun!<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span></span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Do not have the worry of being overwhelmed by what the many different numbers and different colours of roses represent. We can start off with the few common ones and then from there when the momentum picks up, you&rsquo;ll be more interested to know their unique symbolism!</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Impress your lover today with these wonderful knowledge! Even if she is not impressed, well it&rsquo;s the thoughts that count.</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\">Number of roses</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Red roses commonly given on Valentine&rsquo;s Day are considered the flower of love for the red colour stands for strong romantic feelings. Express the right feeling with these:</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><span style=\\\"background: yellow; mso-highlight: yellow\\\"><o:p></o:p></span></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\">\r\n<table class=\\\"MsoTableGrid\\\" border=\\\"1\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" style=\\\"border-bottom: medium none; border-left: medium none; border-collapse: collapse; border-top: medium none; border-right: medium none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt\\\">\r\n    <tbody>\r\n        <tr style=\\\"mso-yfti-irow: 0; mso-yfti-firstrow: yes\\\">\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">1 Rose</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Love at first sight, you are the one</span></span></span></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 1\\\">\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">3 Roses</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">I love you</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 2\\\">\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">12 Roses</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Be my love</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 3\\\">\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">36 Roses</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">I will remember our romantic moments</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 4\\\">\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">99 Roses</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">I will love you for as long as I live</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 5; mso-yfti-lastrow: yes\\\">\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">108 Roses</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Please marry me!</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>\r\n<p class=\\\"MsoListParagraph\\\" style=\\\"margin: 0cm 0cm 10pt 36pt\\\"><span style=\\\"font-family: Verdana\\\"><span lang=\\\"EN-US\\\"><o:p></o:p></span></span></p>\r\n<p><span style=\\\"font-family: Verdana\\\"><span lang=\\\"EN-US\\\" style=\\\"background: yellow; mso-highlight: yellow\\\"><o:p></o:p></span></span></p>\r\n<p>&nbsp;<span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong>Colour</strong></u></span></span></span><span style=\\\"color: #993366\\\"><u><strong><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\"> </span></span></span></strong></u></span><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\">of roses</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\">\r\n<table class=\\\"MsoTableGrid\\\" border=\\\"1\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" style=\\\"border-bottom: medium none; border-left: medium none; border-collapse: collapse; border-top: medium none; border-right: medium none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt\\\">\r\n    <tbody>\r\n        <tr style=\\\"mso-yfti-irow: 0; mso-yfti-firstrow: yes\\\">\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Red Rose</span></span></span></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Love, beauty, respect</span></span></span></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 1\\\">\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Pink Rose</span></span></span></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Appreciation, grace, admiration</span></span></span></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 2\\\">\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">White Rose</span></span></span></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Purity, innocence, youthfulness</span></span></span></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 3\\\">\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Yellow Rose</span></span></span></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Joy, friendship, new beginning</span></span></span></p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\\\"color: #993366\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><strong><u>&nbsp;99 roses bouquet</u></strong></span></span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\"><font color=\\\"#000000\\\">Revolve around the romantic language of love with the giving and receiving of flowers. Everything is romantic about the giving of a hand bouquet of flowers because every bouquet contains a secret message of love.<i style=\\\"mso-bidi-font-style: normal\\\"> </i>Convey your true feelings and intentions with passionate selections from Humming Flowers and Gifts Rose Bouquets. Introducing our top favourite; Humming&rsquo;s &rsquo;99 Kisses&rsquo; of 99 super red roses which means &ldquo;I will love you for as long as I live&rdquo;. A certain to delight and make her heart sing out!</font></span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font color=\\\"#000000\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></font></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><strong><u>Types of roses</u></strong></span></span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\"><font color=\\\"#000000\\\">There are more than 15,000 different types of rose species and cultivated varieties worldwide. The most common types of roses are Gallic Rose, Damask Rose, Provence Rose, China Rose, Musk Rose and Hybrid Tea Rose. The rose you get for Valentine&rsquo;s Day is the Hybrid Tea Rose with usually one rose per stem.</font></span></span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span lang=\\\"EN-US\\\"><span lang=\\\"EN-US\\\"><font face=\\\"Calibri\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><strong><u>Did you know?</u></strong></span></span></font></span></span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\"><span lang=\\\"EN-US\\\">Have you ever wondered what type of roses have you been receiving during Valentine&rsquo;s Day or Mother&rsquo;s day? The history of roses will make you go lo and behold with the rose being one of the oldest flowers in cultivation, dating back 35 million years! Do not belittle the youthful energy of this pretty little flower as it speaks of a sunny deposition with all roses, regardless of type, growing best when they\\\'re in full sun for most of the day. The rose family also includes pears, apples, cherries, plums, peaches, apricots, and almonds. Worldwide, over 50 million roses are given for Valentine\\\'s Day each year! An astonishing number yes we think so too. </span></span></span></span></p>\r\n<p><span lang=\\\"EN-US\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Come with us on this journey of the many rose endeavors as we embark on the modern times to reintroduce passion! Let us know what you would like to know more about!</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></span></p>', 'Admin', '2012-07-06 16:12:19', 'Admin', '2012-07-16 16:46:28', '2', '0', '1');
INSERT INTO `tbl_content` VALUES ('24', 'floral-delivery', '12', 'Floral Delivery', '', '<p>Flowers and delivery.</p>', '<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><strong><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #993366; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold; mso-ansi-language: EN-US\\\">Floral delivery (Flowers and delivery)</span></span></span></strong></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><strong><u><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Why do we have floral delivery? </span></u></strong></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">There are many good and excitable reasons to have floral and gift deliveries arranged for during special occasions. Think about Birthday, Valentine&rsquo;s Day, Mother&rsquo;s Day, Wedding, Newborn, Grand Openings and more!</span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Surprise someone on his or hers birthday, make her day sweeter on Valentine&rsquo;s Day, delight the most deserving Mother on Mother&rsquo;s Day, send your best wishes for the newly-wed, share the joy of a new birth and brighten up a patient&rsquo;s day at the hospital.</span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Flowers express the heart and soul of your mind; allowing your feelings to be conveyed. Not only does it give the recipients a pleasant surprise for the day, the gift is sent to their doorstep for the convenience of everyone else.</span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"> <span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Send flowers and gifts to your family and friends today, even for no particular reason to make their life even more beautiful. And see how the magic works! </span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Time-saving</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Apart from all these wonderful reasons, delivery saves time and makes sure that even bulky but practical items reached the recipient nicely packed.</span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Humming Flowers and Gifts delivery services reach out to customers island-wide with delivery available for both office and residential addresses and at flexible timings arranged to ensure optimal smooth delivery. Call now today to find out the most suitable delivery schedule for your gift recipient; an element of surprise awaits them.&nbsp;<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span></span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\">Beautiful flowers/ Tulips bouquet</span></strong></u></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Discover the beauty of freshly bloomed flowers and you&rsquo;ll find them remarkably beautiful and they always smell so good! As said, beauty is in the eyes of the beholder, each type of flowers have each of its own beautiful and unique characteristics to speak about. There are many types of beautiful flowers in this universe and one of them is the tulips.<span style=\\\"mso-spacerun: yes\\\">&nbsp;&nbsp;&nbsp; </span></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Tulips- Perfect love, comfort and romance.</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Introducing a premium breed of flowers - tulip. Tulips signify prefect love, comfort and romance and are valued for their brightly coloured, beautiful cup-shaped petals. Pretty tulips bouquets in pretty vases are available now with Humming Flowers and Gifts in the freshest blooms and gorgeous shades. An ideal gift to express comfort in all the right ways with surprise and grandeur!</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\">An all-time-favourite: Ferrero bouquet</span><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">&nbsp;</span></strong></u></span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Birthday, a yearly celebration, is the time of the year when everyone gets well wishes from people around them and making a wish they would like for themselves.<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span></span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Whether the celebration is a lavish or simple one, what is more important is that one get to spend quality time with your loved ones.<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span>Looking for some interesting fresh ideas for a birthday gift? The unique creation of Humming Flowers and Gifts Ferrero Rocher bouquet; &lsquo;Sweetest Gold&rsquo; is something different with this classy golden bouquet adorned with 32pcs of the classic favourite chocolates. The many other attractive choices of the Birthday range bring to you special gift ideas to make up for your sweetest best wishes. Let the birthday star bask in the birthday joy, have it sent to your loved ones!<span style=\\\"mso-spacerun: yes\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span>&nbsp;</p>\r\n<p><span style=\\\"font-family: Tahoma\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Ideas for Valentine&rsquo;s</span></strong></u></span></span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Did you know? Valentine&rsquo;s Day is one of the biggest holidays for giving flowers. Valentine\\\'s Day is held annually on February 14 celebrating love and affection. Amongst the earliest Valentine\\\'s Day gifts were candies. The most common were chocolates in heart shaped boxes.</span></span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Flowers and gifts for Valentine\\\'s Day</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Ideas for Valentine&rsquo;s Day are many and aplenty. Be it a Valentine&rsquo;s Day romantic candle-lit dinner at a restaurant or a Couple special ride at the Singapore Flyer, the modern aged consumers are increasingly aware of the many choices that are available in the market. And with the celebration comes along the flowers and gifts! Fresh flowers and gifts can be found almost everywhere from the florists in the shopping malls to temporary push cart retailers. The idea of Valentine&rsquo;s Day may seemed to be overly commercialized but why not think of it in a positive manner to celebrate this day of love and make someone&rsquo;s day memorable? </span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">To some, Valentine&rsquo;s Day may have the most significant meaning for the couple as the day celebrates the passionate joy of virtues of love they have for one another. And for some, it may be purely for the celebration of simple joy of care and concern we have for one another. Be it what the reason is, Valentine&rsquo;s Day is a day filled with sweet memories and happy moments&hellip; and when one would be able to reminisce the days of happiness back then&hellip;</span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><span style=\\\"mso-spacerun: yes\\\">Beat the crowd on&nbsp;Valentine\\\'s!</span></span></strong></u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><span style=\\\"mso-spacerun: yes\\\">&nbsp;</span></span></strong><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><span style=\\\"mso-spacerun: yes\\\"> </span></span></strong></u></span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Do you do a last minute mad storm to the florists for flowers on Valentine&rsquo;s Day? Beat the crowd with flower deliveries available island-wide with Humming Flowers and Gifts. Now this is a good reason for having deliveries!<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span></span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">We can now have a whole new level of fun and excitement to celebrate this special occasion of love and affection with new and creative ranges of Valentine&rsquo;s Day gifts designed. And keep a look out for our innovative ideas during Valentine&rsquo;s Day! </span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Love is in the air&hellip; Spread the joy of this yearly celebration of love.</span></strong></u></span></span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\">In Valentine&rsquo;s Day 2012, Humming Flowers &amp; Gifts introduces our First Drive-Thru Collection for Valentine&rsquo;s Day Bouquet&hellip;!&nbsp;Always &hellip;with you in mind at Humming Flowers and Gifts.</span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Gift for men (do not forget the man)</span></strong></u></span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">And not forgetting for the man of your life&hellip; Show your appreciation for all the love and concern he has showered on you. Gifts for men include classy choices of writing pen executive gift set, smooth red wine and delectable chocolates. With classy gifts that exude charm and masculinity, the gentleman deserves to be pampered too!</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Admin', '2012-07-06 16:17:26', 'Admin', '2012-07-16 16:46:43', '3', '0', '1');
INSERT INTO `tbl_content` VALUES ('25', 'flower-shops', '12', 'Flower Shops', '', '<p>Flower shops for all occasions.</p>', '<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"color: #993366\\\"><strong><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Flower shops</span></span></span></strong></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Flower shops for all occasions</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">The idea of having flower retail shops enables the easy transactions for cash and carry. One can easily find flower shops available in major shopping malls in the city or on the neighbourhood streets. Customers are able to see what&rsquo;s available in store and get to feel and smell the flowers. No doubt of what the benefits of a physical brick-and-mortar store can bring for, have you considered the option of online flower stores? </span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Online flower store</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Online flower stores bring to you endless possibilities of what products you can find in a flowers and gifts retailer, and in a much more convenient and time saving way for the contemporary modern-age consumers!</span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Humming Flowers and Gifts provides a wide range of flowers and gifts suitable for many occasions. Just a call away, you can reach us at 6844 2222 to speak to our friendly customer service officers or go to hummings.com today to see what are the ranges of products available for you. Check out the new additions of our Flowers and Gifts Catalogue 2012 with fresh ideas for special occasions like Baby One Month celebration, ROM, Baby&rsquo;s Diaper Cakes and more!</span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Humming Flowers and Gifts welcomes walk-in customers at 7 Tai Seng Drive. However you would have to wait because we make everything fresh! We encourage you to place your order online or over the phone beforehand to lessen your waiting time.</span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><strong><u><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Pretty blooms in store</span></u></strong></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Walk past any flower shops and you can see the myriad of colours surrounding in store. Step into one and be greeted by the wonderful smells of the prettiest blooms! How enchanting and what a great feeling! To bring to you, our valued customers the complete unique gifting experience, Humming Flowers and Gifts is open to the idea of having our first physical store rolled out in our future plans. What do you think? Feel free to give us your comments and thoughts</span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">.</span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\">Baby&rsquo;s one month</span></strong></u></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Send your warmest congratulations on the birth of a bundle of joy on the mark of the baby&rsquo;s one month! </span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Why do we celebrate a baby&rsquo;s one month old birthday?</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">According to the Chinese customs, when a baby turns one month old, the parents invite their families and friends for a party to celebrate the arrival of a blessing. Family and friends gather to give their blessings and gifts for the baby, celebrating for the baby&rsquo;s good health. Traditional foods present at the party include red eggs and &lsquo;ang ku kueh&rsquo;, in which the colour red symbolizes good luck. Red eggs also signify a new life. Celebrations are usually catered events with buffet spread prepared for guests. Money in red packets is also given out by the guests for the baby, wishing the baby good luck and good health. Just like a Western baby shower, modern day&rsquo;s gifts such as newborn hampers are also given to the baby for a baby&rsquo;s one month celebration.<span style=\\\"mso-spacerun: yes\\\">&nbsp;</span></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Humming&rsquo;s range of Newborn Hampers brings to you the most compact and delightful products for both Mother and Baby. Find ranges of tonics, baby wear, baby&rsquo;s feeding set and soft plush toys in our high quality Newborn Hampers. </span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\">Diaper Cake</span></strong></u></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white; tab-stops: 82.0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Introducing our all&nbsp;new Diaper Cakes range! This contemporary way of packing the much-requested diapers is bound to be a hit. Humming&rsquo;s Diaper Cakes selection includes beautiful arrangements of flowers, cute plush toys and we even have a Supreme 2-Tier design! These diaper cakes make an ideal choice for baby showers and baby&rsquo;s one month celebrations. </span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white; tab-stops: 82.0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\">ROM Bouquet</span></strong></u></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Looking for a one-stop solution for your ROM hand bouquet? Celebration Specials: Life&rsquo;s significant milestones are joyously celebrated with family and close friends. Humming brings together a few key elements for the celebration and will deliver it right to your doorstep. Adding the finishing touches to this once in a life time moment by presenting to both bride and groom, here we have for you on this day of joy and unforgettable memories, Humming&rsquo;s Rosy R.O.M Solemnization Ceremony celebration package!</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Our Rosy R.O.M Solemnization Ceremony celebration package brings to you the following items with each and every element designed &hellip;with you in mind.</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US\\\">1.</span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Bride&rsquo;s Bouquet</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US\\\">2.</span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Bridesmaid Bouquet X2</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US\\\">3.</span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Groom&rsquo;s Corsage</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US\\\">4.</span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Best Man&rsquo;s Corsage X2</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US\\\">5.</span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Rosy Floral Posy X2</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US\\\">6.</span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Rosy Centrepiece</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US\\\">7.</span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Eatzi Gourmet Mousse Cake (1kg)</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt 36pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><i style=\\\"mso-bidi-font-style: normal\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">(Choice of Shapes and Flavours: Mango, Strawberry Chocolate, Strawberry Delight or Chocolate Mint)</span></i></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 10pt 36pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US\\\">8.</span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Personalized Banner</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">A choice of colour theme is available in which you get to choose the rose colours of red, white, pink or champagne!</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Office opening/ Shop opening/ Housewarming</span></strong></u></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Whether it is a new office opening, shop opening or a housewarming, a new place marks new beginnings. It is definitely a cause for celebration! Present the most appropriate of choices of gifts for the happy owners with the following category selections from Humming Flowers and Gifts:<span style=\\\"mso-spacerun: yes\\\">&nbsp;&nbsp; </span></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Offer a special toast for the proud new owners with fine selections of fine wines and champagnes with Humming&rsquo;s Vine Wines. These very special Wine Gift baskets arrive in elegant, high quality, collectible baskets. To complement by sweet and savoury snacks, send your sweet thoughts with varying choices from Humming&rsquo;s Gourmet Food Hampers! Our gourmet hampers include choices of Lindt Hampers, Chocolate Hampers and more.<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Housewarming gifts celebrate the making of a Home Sweet Home. From a simple message like &ldquo;Congratulations&rdquo; to &ldquo;Welcome to the Neighbourhood&rdquo;, our thoughtfully selected gifts welcome them into their new home with style and taste. Open up your choices to a wide range of household items from Humming&rsquo;s Urban Lifestyle category, practical gifts; there&rsquo;s bound to be something for everyone. </span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">The makes of a joyous celebration are completed with traditional celebration stands! Be spoilt for choices with Humming&rsquo;s Grand Opening ranges of products available, which include Celebration Metal Stands, Congratulation Arch, Auspicious Pedestal Stand, Prosperity range, Celebration Box Stand and Congratulatory Banners. Now you&rsquo;ll be ready to grace the doors of any new establishment and usher in big fortunes!<span style=\\\"mso-spacerun: yes\\\">&nbsp;&nbsp; </span></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">If you would like to help to add a palette of colours and brilliance to the treasured living space, wait no more to consider beautiful selections from Humming&rsquo;s Table Arrangements.<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span>Add a dose of sunshine zest with &lsquo;Blooms of Sunshine Zest&rsquo;, a cheerful arrangement of gerberas and sunflowers in glass vase. With this simple sunflowers table arrangement to liven up the new office, shop or home, you will have them reflecting and meditating on your thoughtfulness.</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><strong><u><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Condolences products: Coffin Top</span></u></strong></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Humming flowers and gifts provide you with condolences products, seeking to fulfill your needs and preferences in any way to make the process of ordering condolences items easier. Let Humming lessen the haste and reduce the intensity of melancholy for you.<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Humming&rsquo;s Coffin Top Sprays are designed to dress up the coffin, the classy designs of our coffin tops also help to soften the atmosphere and lift the somber mood. Let Humming be here for you to convey your deepest condolences to the bereaved family; Humming is like a close friend who never leave your side.</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p>&nbsp;</p>', 'Admin', '2012-07-06 16:28:54', 'Admin', '2012-07-16 17:12:33', '4', '0', '1');
INSERT INTO `tbl_content` VALUES ('26', 'birthday-gift-ideas', '12', 'Birthday Gift Ideas', '', '<p>Everything you need to know about birthdays.</p>', '<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><strong><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Birthday gift ideas </span></strong></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><strong><u><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Everything you need to know about birthdays.</span></u></strong></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">The revolution of today&rsquo;s birthday gift ideas has come to incorporate many modern gifting elements. However to have some basic understanding of the cultures and traditions of what the various occasions call for is also vital. Buying a birthday gift is generally categorized into which gender you are getting the gift for and it can also be for a baby&rsquo;s one month celebration. </span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-ansi-language: EN-US\\\">The practice of cake-cutting on birthdays is a widely popular social practice. Candles are placed on birthday cakes and candles must be blown out in one breath so that the wish will come true and the person will enjoy good luck in the coming year. Some also believe that for good luck, the name of the person on the cake must be smeared out before slicing. </span></span></span><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Birthday cards, birthday bears and birthday cakes are easily available at many gift stores but how about exclusive birthday gift sets accompanied by pretty fresh flowers?<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span></span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Meet your gifting needs through gift specialist Humming Flowers and Gifts where we offer you a wide range of contemporary selections for birthdays. Humming&rsquo;s Birthday category speaks of styles varying from birthday for newborns, birthday for ladies and birthday for men. </span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Birthday banners</span></strong></u></span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">A baby&rsquo;s one month birthday celebration sees the gathering of proud family and friends to celebrate the arrival of a new blessing; the newest addition for the family. Make sure the party is appropriately adorned with the grandest key elements to grace the joy of the special day for both Mother and Baby. Now, inject something traditional with a touch of contemporary with birthday banners! </span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">For a baby&rsquo;s 1<sup>st</sup> Month Celebration, Humming is the perfect accompaniment to day by bringing a personalized keepsake banner, 3 sweet flora posy, a cake and wonderful heart-shaped helium balloons!</span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Give your child the party he&rsquo;ll never forget.</span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Birthday month flowers</span></strong></u></span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Take a look at your birthday month flowers!</span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p>\r\n<table class=\\\"MsoNormalTable\\\" border=\\\"1\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" style=\\\"border-bottom: medium none; border-left: medium none; border-collapse: collapse; border-top: medium none; border-right: medium none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt\\\">\r\n    <tbody>\r\n        <tr style=\\\"mso-yfti-irow: 0; mso-yfti-firstrow: yes\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><b style=\\\"mso-bidi-font-weight: normal\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Month</span></b></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><b style=\\\"mso-bidi-font-weight: normal\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Flower</span></b></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><b style=\\\"mso-bidi-font-weight: normal\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">General Meaning</span></b></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 1\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">January</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Carnation</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Love/ Beauty/ Fascination</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 2\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">February</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Violet</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Faith/ Wisdom/ Hope</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 3\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">March</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Daffodil</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Respect/ Unrequited Love</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 4\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">April</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Daisy</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Youth/ Innocence/ Modesty</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 5\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">May</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Lily of the Valley</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Humility/ Chastity/ Sweetness</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 6\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">June</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Rose</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Love/ Passion</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 7\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">July</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Water Lily</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Lightness/ Levity</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 8\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">August</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Poppy</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Remembrance</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 9\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">September</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Aster</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Love/ Faith/ Wisdom</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 10\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">October</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Marigold</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">&lsquo;Winning Grace&rsquo;</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 11\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">November</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Chrysanthemum</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Compassion/ Friendship/ Secret Love</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 12; mso-yfti-lastrow: yes\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">December</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Narcissus</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Sweetness/ Dynamic</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Happy Sunflowers&nbsp;&nbsp;</span></strong></u></span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Sunflowers, as the name suggests, are flowers which adore the sun (they like to face the sun) and represent the exuberant life of all flowers. Its radiant warmth, great vibrant and warming glow all make up for a happy deposition, the happiest flowers of all! </span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Did you know? Sunflowers are one of the fastest growing flowers in the world, growing up to 30.5 centimeters in a day!</span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Sunflowers known for its symbol of adoration and longevity, are most joyous to receive and give during special occasions. Look out for these bright and cheery gifts at Humming&hellip;</span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">At Humming, selections of fresh sunflowers are available in pretty hand bouquets and for birthday gift sets. Explore the idea of sending sunflowers to brighten up someone&rsquo;s day and also to bring good luck and happiness for the recipient! We have here for you, sunflower bouquets to add instant sunshine to anyone&rsquo;s day with spectacular beauty of these fresh flowers. And for birthday choices, we have our cuddly cute friends (soft toys) packed together with the sweetest thoughts (chocolates),&nbsp;altogether with&nbsp;the brightest happiest sunflowers!</span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Birthday Balloon</span></strong></u></span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">What is a birthday party without birthday balloons? Balloons come in all fun shapes and colours setting the right mood and lighten the atmosphere for the perfect celebration day! Set the right mood for the party today with these fun balloons today!</span><span lang=\\\"EN-US\\\" style=\\\"color: red; mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\"> </span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Would not it be nice to have a birthday gift sent accompanied by pretty birthday balloons?</span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Find these eye candies in Humming&rsquo;s Simply Love and Baby 1st Month celebration ranges. The helium balloons come in heart shaped and in pretty shades of purple, red and pink! Now won&rsquo;t these birthday balloons make the birthday girl feel more precious than ever on her special day?</span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-GB\\\" style=\\\"mso-ascii-font-family: Calibri; mso-fareast-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-GB\\\">Birthday Surprise</span></strong></u></span></span></span><span lang=\\\"EN-GB\\\" style=\\\"color: #666666; font-size: 12pt; mso-ascii-font-family: Calibri; mso-fareast-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-GB\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">Happening only once a year, birthdays are so precious and special!</span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">What&rsquo;s a birthday without a surprise? Shower the birthday star with all the love and attention they deserve on this special day of theirs. Deliver a gift of surprise and delight with the help of Humming Flowers.</span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">From lovely hand flower bouquets, cake gift sets, cuddly soft toys, fragrances, birthday balloons and even birthday for the gentlemen, these fresh selections for you to choose from will never let you run out of birthday gift ideas from now on!</span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-ascii-font-family: Calibri; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US\\\">With you in mind, Humming paid the extra attention to pick the most suitable gifts and the prettiest blooms to put together these exquisite birthday gift sets for him, her and the young at heart!</span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p>&nbsp;</p>', 'Admin', '2012-07-06 16:32:51', 'Admin', '2012-07-16 17:32:52', '5', '0', '1');
INSERT INTO `tbl_content` VALUES ('27', 'far-east', '12', 'Far East', '', '<p>Far east region &amp; major festive seasons!</p>', '<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Far East</span></strong></u></span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">With delivery available island-wide at Humming Flowers and Gifts, we make sure that fresh flowers and the pretty gifts reach to your recipients even in the far eastern part of Singapore.&nbsp;Even during festive season on Christmas, spread the joy of love to your loved ones no matter where they are.<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span></span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">All-thing Christmas!</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Jingle bells, jingle bells! Merry Christmas and a Happy New Year! The festive season of giving and sharing is here again. At the happiest time of the year, celebrations and parties are all over in town, it&rsquo;s the time for all your family and friends to come together with well wishes for each other and&hellip; the galore of Christmas gifts under the tree!</span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">With a wide array of gift choices to choose from for Christmas, you are definitely spoilt for choices for your Christmas gifting selections. </span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">With our exclusive designs created with you in mind, seek to differentiate from the rest! Now you can look for what you really want with Humming Flowers &amp; Gifts with our ranges of Christmas hampers, gift boxes, traditional gift baskets and other Christmas gourmet.</span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Lunar Chinese New Year</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Another major festive season to call for gifts and hampers delivery is the Lunar Chinese New Year. </span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">The Chinese celebrates the Lunar New Year (also known as the &lsquo;Spring Festival&rsquo;) every year according to the Lunar Chinese Calendar. The celebration lasts for 15 days and on Chinese New Year&rsquo;s Eve, family will gather for a reunion dinner, usually over a steamboat dinner. During Chinese New Year, the young pays respect to the elders, wishing them a prosperous New Year ahead. Families go house-visiting together and the married adults will give out red packets(Hongbao) to kids and single adults for good luck and blessings. Gong Xi Fa Cai!</span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Humming brings to you our yearly Lunar New Year Gifts Collection! In our collection, we have a wide selection of Evergreen Hampers, abalone gift baskets, oranges baskets, and auspicious plants and blooms. Our lucky creations will bring to you new heights of greater success and excellence!</span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Be sure to place your Chinese New Year orders in advanced. Humming Flowers and Gifts delivery team will reach to your recipients even if they are in the far eastern part of Singapore.</span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><strong><span style=\\\"color: #993366\\\"><u><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\">Christmas Present</span></u></span></strong></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">&nbsp;</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">The wonderful holiday season arrives at year-end and when family and friends get together for a nice meal and exchange Christmas presents! Tis&rsquo; the season to be jolly, join us in spreading the joy of gift giving with wonderful selections of Christmas hampers, brilliant gift boxes and traditional gift baskets which all come with decadent selection of fine wines, quality chocolates and more! And also, don&rsquo;t forgetting the gourmet selection of traditional Christmas delights including Christmas log cakes, Christmas Turkey and delightful Christmas Cupcakes! Humming has all the Christmas presents packaged together with the freshest and sweetest blooms for the most comprehensive gifts ever. </span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\">&nbsp;</span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">The idea of holiday merry making is now further enticed with Humming&rsquo;s Christmas Gifts Collection.</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt 36pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">&nbsp;</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Christmas Delivery</span></strong></u></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Are you having the dreadful thought of having to beat the crowd and join in the long line of queue at the cashier counter for your last minute Christmas shopping? Skip the trouble and opt for Christmas delivery with Humming Flowers and Gifts.</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">For the individual who has busy tight schedules, get your Christmas shopping done fuss free with Humming. Have the gifts delivered right to your recipient&rsquo;s doorstep with just a few clicks on the website through online purchase. Placing your orders online, now this speaks of holiday style indeed.</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Visit </span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><span style=\\\"font-size: larger\\\"><a href=\\\"http://www.hummings.com/\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #a52c6f; text-decoration: none; text-underline: none\\\">www.hummings.com</span></span></a><span style=\\\"font-family: Tahoma\\\"> today.</span></span><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\">Personalized Christmas Basket</span></strong></u></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Christmas presents convey the most sincere best wishes from the sender to the recipient. However if you feel that you want to lend a personal touch for the recipient of the present you give to, there&rsquo;s always the choice of personalized Christmas baskets and gift boxes!</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Nothing is more meaningful than the idea of adding a personal touch of your thoughtful wishes to the Christmas presents for your family and friends. Humming knows how to make every gift special just for you&hellip;</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Presenting our Personalized Gift Boxes in our Christmas Gifts Collection 2011, we have a revolutionary idea of having a personalized greeting card skillfully attached to the bow and box. Imagine the smile of surprise and delight when you receive these gift boxes addressed to your name! Now this will definitely accord your gift as one of the most memorable Christmas gift.</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\">Noel Gifts/ Noel Hampers</span></strong></u></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Christmas, also known as Noel, is a holiday celebrated by Christians on the 25<sup>th</sup> December every year. Christmas is also an event widely celebrated by non-Christians too.</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">During Christmas, family and friends get together to have a good meal, exchange Chirstmas presents, say their thanks and sing Christmas carols. It is the season of love, joy and many happy returns!</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Send Christmas gifts and hampers to your family, friends and business associates. What Noel gifts are you intending to give today? Count on Humming Flowers and Gifts for exquisite ideas for your Christmas gifts and hampers choice. In our Christmas Gifts Collection 2011, we came up with new and innovative gift ideas such as the Personalized Gift Boxes; in which every gift box has a personalized greeting card addressed to the recipient&rsquo;s name. Also, we have the all new Picnic Fruit and Nut; a refreshing healthy alternative of fresh fruits and quality nuts! On top of all these, Humming will not forget the all-time favourite Christmas Evergreen Hampers and Traditional Gift Baskets.</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p>&nbsp;</p>', 'Admin', '2012-07-06 16:39:40', 'Admin', '2012-07-16 16:45:00', '6', '0', '1');

-- ----------------------------
-- Table structure for `tbl_content_category`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_content_category`;
CREATE TABLE `tbl_content_category` (
  `content_category_id` int(11) NOT NULL auto_increment,
  `category_type` tinyint(4) NOT NULL default '0',
  `category_name` varchar(255) NOT NULL,
  `publish` int(11) NOT NULL default '1',
  `sorting` int(11) NOT NULL default '50',
  `show_bottom` tinyint(4) NOT NULL,
  PRIMARY KEY  (`content_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_content_category
-- ----------------------------
INSERT INTO `tbl_content_category` VALUES ('1', '1', 'Promotions', '1', '0', '0');
INSERT INTO `tbl_content_category` VALUES ('3', '1', 'Customer Service', '1', '0', '1');
INSERT INTO `tbl_content_category` VALUES ('8', '1', 'TBC', '1', '1', '0');
INSERT INTO `tbl_content_category` VALUES ('12', '1', 'Find me a gift', '1', '0', '0');
INSERT INTO `tbl_content_category` VALUES ('13', '1', 'Personalize', '1', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_coupon
-- ----------------------------
INSERT INTO `tbl_coupon` VALUES ('14', 'ibrhcx8nu0', '15.00', '2', '0', '2012-06-06', '0000-00-00', '0', '0.00', '201,220,251,252,253,254,221,222,256,257,255,223,224,225,226,227,228,231,258,259,260,261,262,263,265,232,233,234,235,236,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,237,281,282,202,208,238,239,240,241,242,243,244,245,246,247,207,215,283,219,248,250', '', '2012-07-16', '1', '2');
INSERT INTO `tbl_coupon` VALUES ('15', 'ar7oautsdg', '10.00', '1', '0', '2012-06-06', '0000-00-00', '0', '0.00', '', '', '0000-00-00', '1', '0');
INSERT INTO `tbl_coupon` VALUES ('16', 'zedem23zc4', '20.00', '1', '0', '2012-06-08', '0000-00-00', '0', '0.00', '201,220,251,252,253,254,221,222,256,257,255,223,224,225,226,227,228,231,258,259,260,261,262,263,265,232,233,234,235,236,284,285,286,287,288,289,290,291,237,281,282,202,208,243,238,244,239,245,240,246,241,247,242,207,215,283,219,248,250', '', '2012-07-16', '1', '2');

-- ----------------------------
-- Table structure for `tbl_delivery_postcode`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_delivery_postcode`;
CREATE TABLE `tbl_delivery_postcode` (
  `delivery_postcode_id` int(11) NOT NULL auto_increment,
  `range_from` int(11) NOT NULL,
  `range_to` int(11) NOT NULL,
  `country` varchar(2) NOT NULL,
  `surcharge` decimal(10,2) NOT NULL,
  PRIMARY KEY  (`delivery_postcode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_delivery_postcode
-- ----------------------------
INSERT INTO `tbl_delivery_postcode` VALUES ('1', '100000', '100005', 'SG', '10.00');
INSERT INTO `tbl_delivery_postcode` VALUES ('2', '100006', '100009', 'SG', '15.00');

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
  `caption` varchar(100) NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `surcharge` decimal(10,2) NOT NULL,
  `lead_time` int(11) NOT NULL,
  `SAP_code` int(11) NOT NULL,
  PRIMARY KEY  (`delivery_time_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_delivery_time
-- ----------------------------
INSERT INTO `tbl_delivery_time` VALUES ('3', '9am to 12noon', '09:00:00', '12:00:00', '6.00', '3', '1');
INSERT INTO `tbl_delivery_time` VALUES ('4', '2.30 - 5.30 pm', '14:30:00', '17:30:00', '6.00', '3', '3');
INSERT INTO `tbl_delivery_time` VALUES ('5', '7.30 - 10.00 pm', '19:30:00', '22:00:00', '6.00', '3', '7');
INSERT INTO `tbl_delivery_time` VALUES ('8', 'Anytime of the day', '00:00:00', '23:59:59', '6.00', '3', '8');

-- ----------------------------
-- Table structure for `tbl_delivery_time_sap`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_delivery_time_sap`;
CREATE TABLE `tbl_delivery_time_sap` (
  `id` int(11) NOT NULL,
  `code` varchar(3) NOT NULL,
  KEY `id` USING BTREE (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_delivery_time_sap
-- ----------------------------
INSERT INTO `tbl_delivery_time_sap` VALUES ('4', 'LPM');
INSERT INTO `tbl_delivery_time_sap` VALUES ('2', 'LAM');
INSERT INTO `tbl_delivery_time_sap` VALUES ('1', 'AM');
INSERT INTO `tbl_delivery_time_sap` VALUES ('3', 'PM');
INSERT INTO `tbl_delivery_time_sap` VALUES ('5', 'OH');
INSERT INTO `tbl_delivery_time_sap` VALUES ('6', 'HT');
INSERT INTO `tbl_delivery_time_sap` VALUES ('7', 'NT');
INSERT INTO `tbl_delivery_time_sap` VALUES ('8', 'AT');
INSERT INTO `tbl_delivery_time_sap` VALUES ('9', 'EXP');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_history_logs
-- ----------------------------
INSERT INTO `tbl_history_logs` VALUES ('1', '1', '1', 'DELETE \n FROM #__newsletter_mail \n WHERE mailid IN (14, 13, 12, 11, 9) AND type = \'news\'', '1.54.8.28', '1339612431');
INSERT INTO `tbl_history_logs` VALUES ('2', '1', '1', 'DELETE \n FROM #__newsletter_user_listmail \n WHERE mailid IN (14, 13, 12, 11, 9)', '1.54.8.28', '1339612431');
INSERT INTO `tbl_history_logs` VALUES ('3', '1', '1', 'DELETE \n FROM #__rss \n WHERE id IN (2) ', '1.54.9.252', '1340033182');

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
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO `tbl_menu` VALUES ('25', '0', '201', 'product', 'Categories', '', '2', '1', '5');
INSERT INTO `tbl_menu` VALUES ('26', '9', '238', 'product', 'Anniversary', '', '1', '1', '2');
INSERT INTO `tbl_menu` VALUES ('6', '3', '22', 'product', 'New Born play', '', '1', '1', '0');
INSERT INTO `tbl_menu` VALUES ('8', '0', '1', 'content', 'Promotions', '', '1', '1', '6');
INSERT INTO `tbl_menu` VALUES ('9', '0', '202', 'product', 'Occasions', '', '2', '1', '3');
INSERT INTO `tbl_menu` VALUES ('31', '25', '222', 'product', 'Birthday', '', '1', '1', '3');
INSERT INTO `tbl_menu` VALUES ('12', '0', '12', 'content', 'Help Me Find a Gift', '', '1', '1', '8');
INSERT INTO `tbl_menu` VALUES ('13', '3', '195', 'product', 'Hand Bouquets', '', '2', '1', '0');
INSERT INTO `tbl_menu` VALUES ('16', '15', '22', 'product', 'sub link', '', '1', '1', '0');
INSERT INTO `tbl_menu` VALUES ('21', '3', '222', 'product', 'Birthday', '', '1', '1', '0');
INSERT INTO `tbl_menu` VALUES ('22', '0', '221', 'product', 'Flowers', '', '1', '1', '4');
INSERT INTO `tbl_menu` VALUES ('23', '0', '13', 'content', 'Personalize', '', '1', '1', '7');
INSERT INTO `tbl_menu` VALUES ('24', '0', '236', 'product', 'Sympathy', '', '1', '1', '2');
INSERT INTO `tbl_menu` VALUES ('27', '25', '220', 'product', 'Newborn', '', '1', '1', '1');
INSERT INTO `tbl_menu` VALUES ('28', '25', '221', 'product', 'Hand Bouquet', '', '1', '1', '2');
INSERT INTO `tbl_menu` VALUES ('29', '0', '222', 'product', 'Birthday', '', '1', '1', '1');
INSERT INTO `tbl_menu` VALUES ('32', '25', '223', 'product', 'Simply Love', '', '1', '1', '4');
INSERT INTO `tbl_menu` VALUES ('33', '25', '224', 'product', 'Table Arrangements', '', '1', '1', '5');
INSERT INTO `tbl_menu` VALUES ('34', '25', '225', 'product', 'Vines Wines', '', '1', '1', '6');
INSERT INTO `tbl_menu` VALUES ('35', '25', '226', 'product', 'Urban Lifestyle', '', '1', '1', '7');
INSERT INTO `tbl_menu` VALUES ('36', '25', '227', 'product', 'Gourmet Food Hampers', '', '1', '1', '8');
INSERT INTO `tbl_menu` VALUES ('37', '25', '228', 'product', 'Everlasting Flowers', '', '1', '1', '9');
INSERT INTO `tbl_menu` VALUES ('38', '25', '231', 'product', 'Grand Opening', '', '1', '1', '10');
INSERT INTO `tbl_menu` VALUES ('39', '25', '232', 'product', 'Congratulatory Banner', '', '1', '1', '11');
INSERT INTO `tbl_menu` VALUES ('40', '25', '233', 'product', 'Vitality Delicacies', '', '1', '1', '12');
INSERT INTO `tbl_menu` VALUES ('41', '25', '234', 'product', 'Fruits & Flowers', '', '1', '1', '13');
INSERT INTO `tbl_menu` VALUES ('42', '25', '235', 'product', 'Get Well', '', '1', '1', '14');
INSERT INTO `tbl_menu` VALUES ('43', '25', '236', 'product', 'Sympathy', '', '1', '1', '15');
INSERT INTO `tbl_menu` VALUES ('44', '25', '237', 'product', 'Condolences Comforters', '', '1', '1', '16');
INSERT INTO `tbl_menu` VALUES ('45', '9', '208', 'product', 'Secretary\'s Week', '', '1', '1', '1');
INSERT INTO `tbl_menu` VALUES ('46', '9', '239', 'product', 'Cheer Up!', '', '1', '1', '3');
INSERT INTO `tbl_menu` VALUES ('47', '9', '240', 'product', 'I\'m Sorry', '', '1', '1', '4');
INSERT INTO `tbl_menu` VALUES ('48', '9', '241', 'product', 'House Warming', '', '1', '1', '5');
INSERT INTO `tbl_menu` VALUES ('49', '9', '242', 'product', 'Thank You!', '', '1', '1', '6');
INSERT INTO `tbl_menu` VALUES ('50', '9', '243', 'product', 'Wedding Gifts', '', '1', '1', '7');
INSERT INTO `tbl_menu` VALUES ('51', '9', '244', 'product', 'Valentine\'s Day', '', '1', '1', '8');
INSERT INTO `tbl_menu` VALUES ('52', '9', '245', 'product', 'Mother\'s Day', '', '1', '1', '9');
INSERT INTO `tbl_menu` VALUES ('53', '9', '246', 'product', 'Father\'s Day', '', '1', '1', '10');
INSERT INTO `tbl_menu` VALUES ('54', '9', '247', 'product', 'Teacher\'s Day', '', '1', '1', '11');

-- ----------------------------
-- Table structure for `tbl_message`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_message`;
CREATE TABLE `tbl_message` (
  `message_id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `message` text NOT NULL,
  `message2` varchar(40) NOT NULL,
  `message3` varchar(40) NOT NULL,
  `message4` varchar(40) NOT NULL,
  `message5` varchar(40) NOT NULL,
  `message6` varchar(40) NOT NULL,
  `sorting` int(11) NOT NULL default '50',
  PRIMARY KEY  (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_message
-- ----------------------------
INSERT INTO `tbl_message` VALUES ('1', '0', 'New Born', '', '', '', '', '', '50');
INSERT INTO `tbl_message` VALUES ('2', '1', 'Congratulations & Best Wishes On The', 'Arrival Of Your Wonderful Newborn Twin ', 'Girl', '', '', '', '3');
INSERT INTO `tbl_message` VALUES ('3', '1', 'It&#39;s a boy! Wishing skies of blue for ', 'you...and your new little ray of ', 'sunshine. Congratulations! ', '', '', '', '50');
INSERT INTO `tbl_message` VALUES ('4', '1', 'A New Little Boy to Brighten Your World!', 'He couldn&#39;t have happened to a nicer', 'family! ', 'Congratulations to Everyone! ', '', '', '1');
INSERT INTO `tbl_message` VALUES ('5', '1', 'Congratulations on the arrival of your', 'newborn baby boy', '', '', '', '', '2');

-- ----------------------------
-- Table structure for `tbl_newsletter_history`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_history`;
CREATE TABLE `tbl_newsletter_history` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `date` int(10) unsigned NOT NULL,
  `ip` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL COMMENT 'different actions: created,modified,confirmed',
  `data` text NOT NULL,
  `source` text NOT NULL,
  `mailid` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `subid` USING BTREE (`id`,`date`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_history
-- ----------------------------
INSERT INTO `tbl_newsletter_history` VALUES ('1', '1339475677', '127.0.0.1', 'Send email', '', 'test', '14');
INSERT INTO `tbl_newsletter_history` VALUES ('2', '1339613200', '1.54.8.28', 'Sample', '', 'sample sample sample sample sample sample sample', '15');
INSERT INTO `tbl_newsletter_history` VALUES ('3', '1339613204', '1.54.8.28', 'Sample', '', 'sample sample sample sample sample sample sample', '15');
INSERT INTO `tbl_newsletter_history` VALUES ('4', '1339613444', '1.54.8.28', 'Sample', '', 'sample sample sample sample sample sample sample', '15');
INSERT INTO `tbl_newsletter_history` VALUES ('5', '1339646588', '58.185.237.66', 'June newsletter', '', 'dsfdfwfda', '16');

-- ----------------------------
-- Table structure for `tbl_newsletter_listmail`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_listmail`;
CREATE TABLE `tbl_newsletter_listmail` (
  `listid` smallint(10) unsigned NOT NULL,
  `mailid` mediumint(10) unsigned NOT NULL,
  PRIMARY KEY  (`listid`,`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_listmail
-- ----------------------------
INSERT INTO `tbl_newsletter_listmail` VALUES ('1', '9');

-- ----------------------------
-- Table structure for `tbl_newsletter_mail`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_mail`;
CREATE TABLE `tbl_newsletter_mail` (
  `mailid` mediumint(10) unsigned NOT NULL auto_increment,
  `subject` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `altbody` longtext NOT NULL,
  `published` tinyint(4) default '1',
  `senddate` int(10) unsigned default NULL,
  `created` int(10) unsigned default NULL,
  `fromname` varchar(250) NOT NULL,
  `fromemail` varchar(250) NOT NULL,
  `replyname` varchar(250) NOT NULL,
  `replyemail` varchar(250) NOT NULL,
  `type` enum('news','autonews','followup','unsub','welcome','notification') NOT NULL default 'news',
  `visible` tinyint(4) NOT NULL default '1',
  `userid` int(10) unsigned default NULL,
  `alias` varchar(250) default NULL,
  `attach` text,
  `html` tinyint(4) NOT NULL default '1',
  `tempid` smallint(11) NOT NULL default '0',
  `key` varchar(200) default NULL,
  `frequency` varchar(50) default NULL,
  `params` text,
  `sentby` int(11) unsigned default NULL,
  `metakey` text,
  `metadesc` text,
  `filter` text,
  `list_group` text,
  PRIMARY KEY  (`mailid`),
  KEY `senddate` USING BTREE (`senddate`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_mail
-- ----------------------------
INSERT INTO `tbl_newsletter_mail` VALUES ('1', 'New Subscriber on your website : {user:email}', '<p>Hello {subtag:name},</p><p>A new user has been created in AcyMailing : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', '1', null, null, '', '', '', '', 'notification', '0', null, 'notification_created', null, '1', '0', null, null, null, null, null, null, null, null);
INSERT INTO `tbl_newsletter_mail` VALUES ('2', 'A User unsubscribed from all your lists : {user:email}', '<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from all your lists</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', '1', null, null, '', '', '', '', 'notification', '0', null, 'notification_unsuball', null, '1', '0', null, null, null, null, null, null, null, null);
INSERT INTO `tbl_newsletter_mail` VALUES ('3', 'A User unsubscribed : {user:email}', '<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from your list</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', '1', null, null, '', '', '', '', 'notification', '0', null, 'notification_unsub', null, '1', '0', null, null, null, null, null, null, null, null);
INSERT INTO `tbl_newsletter_mail` VALUES ('4', 'A User refuses to receive e-mails from your website : {user:email}', '<p>The User {user:name} : {user:email} refuses to receive any e-mail anymore from your website.</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', '1', null, null, '', '', '', '', 'notification', '0', null, 'notification_refuse', null, '1', '0', null, null, null, null, null, null, null, null);
INSERT INTO `tbl_newsletter_mail` VALUES ('5', '{subtag:name|ucfirst}, {trans:PLEASE_CONFIRM_SUB}', '<div style=\"text-align: center; width: 100%; background-color: #ffffff;\">\r\n            <table style=\"text-align:justify; margin:auto; background-color:#ebebeb; border:1px solid #e7e7e7\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\" bgcolor=\"#ebebeb\">\r\n           <tbody>\r\n         <tr style=\"line-height: 0px;\">\r\n            <td style=\"line-height: 0px;\" height=\"38px\"><img src=\"media/com_acymailing/templates/newsletter-4/top.png\" border=\"0\" alt=\" - - - \" /></td>\r\n           </tr>\r\n           <tr>\r\n            <td style=\"text-align:center\" width=\"600\">\r\n          <table style=\"margin:auto;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"520\">\r\n           <tbody>\r\n         <tr>\r\n            <td style=\"background-color: #ffffff; border: 1px solid #dbdbdb; padding: 20px; width: 500px; margin: 15px auto; text-align: left;\">\r\n          <h1>Hello {subtag:name|ucfirst},</h1>\r\n           <p>{trans:CONFIRM_MSG}<br /><br />{trans:CONFIRM_MSG_ACTIVATE}</p>\r\n          <br />\r\n          <p style=\"text-align:center;\"><strong>{confirm}{trans:CONFIRM_SUBSCRIPTION}{/confirm}</strong></p>\r\n            </td>\r\n           </tr>\r\n           </tbody>\r\n            </table>\r\n            </td>\r\n           </tr>\r\n           <tr style=\"line-height: 0px;\">\r\n            <td style=\"line-height: 0px;\" height=\"40px\"><img src=\"media/com_acymailing/templates/newsletter-4/bottom.png\" border=\"0\" alt=\" - - - \" /></td>\r\n            </tr>\r\n           </tbody>\r\n            </table>\r\n            </div>', '', '1', null, null, '', '', '', '', 'notification', '0', null, 'confirmation', null, '1', '4', null, null, null, null, null, null, null, null);
INSERT INTO `tbl_newsletter_mail` VALUES ('6', 'AcyMailing Cron Report {mainreport}', '<p>{report}</p><p>{detailreport}</p>', '', '1', null, null, '', '', '', '', 'notification', '0', null, 'report', null, '1', '0', null, null, null, null, null, null, null, null);
INSERT INTO `tbl_newsletter_mail` VALUES ('7', 'A Newsletter has been generated : \"{subject}\"', '<p>The Newsletter issue {issuenb} has been generated : </p><p>Subject : {subject}</p><p>{body}</p>', '', '1', null, null, '', '', '', '', 'notification', '0', null, 'notification_autonews', null, '1', '0', null, null, null, null, null, null, null, null);
INSERT INTO `tbl_newsletter_mail` VALUES ('8', 'Modify your subscription', '<p>Hello {subtag:name}, </p><p>You requested some changes on your subscription,</p><p>Please {modify}click here{/modify} to be identified as the owner of this account and then modify your subscription.</p>', '', '1', null, null, '', '', '', '', 'notification', '0', null, 'modif', null, '1', '0', null, null, null, null, null, null, null, null);
INSERT INTO `tbl_newsletter_mail` VALUES ('16', 'June newsletter', '<p>gsgasgasgsafgsagasfgasfgsfag</p>', 'dsfdfwfda', '1', null, '1339646419', 'Humming', 'info@ua-solutions.com', '', '', 'news', '1', null, 'June-newsletter', null, '1', '0', null, null, null, null, null, null, null, '4');
INSERT INTO `tbl_newsletter_mail` VALUES ('15', 'Sample', '', 'sample sample sample sample sample sample sample', '1', null, '1339612469', 'Humming', 'info@ua-solutions.com', '', '', 'news', '1', null, 'Sample', null, '0', '0', null, null, null, null, null, null, null, '3');

-- ----------------------------
-- Table structure for `tbl_newsletter_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_user`;
CREATE TABLE `tbl_newsletter_user` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` varchar(15) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_id` USING BTREE (`id`),
  UNIQUE KEY `idx_email` USING BTREE (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_user
-- ----------------------------
INSERT INTO `tbl_newsletter_user` VALUES ('3', 'test', 'nam@nam.com', '');

-- ----------------------------
-- Table structure for `tbl_newsletter_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_user_group`;
CREATE TABLE `tbl_newsletter_user_group` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `list_id` text NOT NULL,
  `list_email` text NOT NULL,
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_user_group
-- ----------------------------
INSERT INTO `tbl_newsletter_user_group` VALUES ('3', 'group 1', '2;3;6;7;8', 'lee@ua-consultants.com;brightleee@hotmail.com;ali@ali.com;Test@noel.com.sg;info@ua-solutions.com', '1');
INSERT INTO `tbl_newsletter_user_group` VALUES ('4', 'newsletter subscribers', '2;3;6;7;8', 'lee@ua-consultants.com;brightleee@hotmail.com;ali@ali.com;Test@noel.com.sg;info@ua-solutions.com', '1');

-- ----------------------------
-- Table structure for `tbl_newsletter_user_listmail`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_user_listmail`;
CREATE TABLE `tbl_newsletter_user_listmail` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `group_id` int(11) unsigned NOT NULL,
  `mailid` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`,`group_id`,`mailid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_user_listmail
-- ----------------------------
INSERT INTO `tbl_newsletter_user_listmail` VALUES ('7', '3', '15');
INSERT INTO `tbl_newsletter_user_listmail` VALUES ('8', '4', '16');

-- ----------------------------
-- Table structure for `tbl_number`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_number`;
CREATE TABLE `tbl_number` (
  `id` int(11) NOT NULL,
  `caption` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_number
-- ----------------------------
INSERT INTO `tbl_number` VALUES ('1', '1');
INSERT INTO `tbl_number` VALUES ('2', '2');
INSERT INTO `tbl_number` VALUES ('3', '3');
INSERT INTO `tbl_number` VALUES ('4', '4');
INSERT INTO `tbl_number` VALUES ('5', '5');
INSERT INTO `tbl_number` VALUES ('6', '6');
INSERT INTO `tbl_number` VALUES ('7', '7');
INSERT INTO `tbl_number` VALUES ('8', '8');
INSERT INTO `tbl_number` VALUES ('9', '9');
INSERT INTO `tbl_number` VALUES ('10', '10');
INSERT INTO `tbl_number` VALUES ('11', '11');
INSERT INTO `tbl_number` VALUES ('12', '12');
INSERT INTO `tbl_number` VALUES ('13', '13');
INSERT INTO `tbl_number` VALUES ('14', '14');
INSERT INTO `tbl_number` VALUES ('15', '15');
INSERT INTO `tbl_number` VALUES ('16', '16');
INSERT INTO `tbl_number` VALUES ('17', '17');
INSERT INTO `tbl_number` VALUES ('18', '18');
INSERT INTO `tbl_number` VALUES ('19', '19');
INSERT INTO `tbl_number` VALUES ('20', '20');

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
  `payment_terms` varchar(2) NOT NULL,
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
  `delivery_id` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `delivery_status` int(11) NOT NULL,
  `order_status` int(11) NOT NULL default '0',
  `evoucher` varchar(4) NOT NULL default 'ZEV',
  `evoucher_value` int(11) NOT NULL default '0',
  `customer_industry_type` varchar(20) NOT NULL default 'UNSP',
  `voucher_no` varchar(20) NOT NULL default '',
  `voucher_amount` int(11) NOT NULL default '0',
  PRIMARY KEY  (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_order
-- ----------------------------
INSERT INTO `tbl_order` VALUES ('156', '2012-07-16', 'ZI01', '4101000051', '2000', '13', '01', 'Z002', '2', '0007000002', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE', 'Jurong East St 21', '', '', '', '100001', 'city', 'SG', '65096938443', '', '01', 'CC', '0', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700156', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0');
INSERT INTO `tbl_order` VALUES ('157', '2012-07-16', 'ZI01', '4101000052', '2000', '13', '01', 'Z002', '2', '0007000002', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE', 'Jurong East St 21', '', '', '', '100001', 'city', 'SG', '65096938443', '', '01', 'CC', '0', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700157', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0');
INSERT INTO `tbl_order` VALUES ('158', '2012-07-16', 'ZI01', '4101000053', '2000', '13', '01', 'Z002', '2', '0007000002', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE', 'Jurong East St 21', '', '', '', '600219', 'city', 'SG', '65096938443', '', '01', 'CC', '0', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700158', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0');
INSERT INTO `tbl_order` VALUES ('162', '2012-07-18', 'ZI01', '4101000058', '2000', '13', '01', 'Z002', '2', '0007000002', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE', 'Jurong East St 21', '', '', '', '600219', 'citys', 'SG', '65096938443', '', '01', 'CC', '0', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700162', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0');

-- ----------------------------
-- Table structure for `tbl_order_delivery`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_delivery`;
CREATE TABLE `tbl_order_delivery` (
  `order_delivery_id` int(11) NOT NULL auto_increment,
  `delivery_line` varchar(3) NOT NULL,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `delivery_time` varchar(50) NOT NULL,
  `delivery_time_id` int(11) NOT NULL,
  `delivery_time_code` int(11) NOT NULL default '8',
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
  `shipto_state` varchar(50) NOT NULL,
  `shipto_telephone1` varchar(16) NOT NULL,
  `shipto_telephone2` varchar(16) NOT NULL,
  `shipto_fax` varchar(20) NOT NULL,
  `shipto_email` varchar(50) NOT NULL,
  `shipto_gender` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY  (`order_delivery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_order_delivery
-- ----------------------------
INSERT INTO `tbl_order_delivery` VALUES ('146', '001', '2', '2012-07-16', '2012-07-16', '3', '4', '3', 'Nam', 'Nam', 'A New Little Boy to Brighten Your World!\r\nHe couldn&#39;t have happened to a nicer\r\nfamily! \r\nCongratulations to Everyone! ', '1', '0', 'Call before delivery.\n	', '6.00', '0', '0', '0', 'Mr', 'Nam Vo', '', '167', '11#11', 'Far East Building ', '124, ace road', '', '', '100006', 'SG', '', '', '12345678', '', '', 'nam@abc.com', '0', '156');
INSERT INTO `tbl_order_delivery` VALUES ('147', '001', '2', '2012-07-16', '2012-07-16', '3', '4', '3', 'Nam', 'Nam', 'A New Little Boy to Brighten Your World!\r\nHe couldn&#39;t have happened to a nicer family! \r\nCongratulations to Everyone! ', '1', '0', 'Call before delivery.\n	', '6.00', '0', '0', '0', 'Mr', 'Ming Liang Lee ', 'DWEw', '2192', '#10-605', 'Building ACE', 'Jurong East St 21', '', '', '100006', 'SG', 'city', '', '96938443', '', '', 'mingliang@ua-consultants.com', '0', '157');
INSERT INTO `tbl_order_delivery` VALUES ('148', '001', '2', '2012-07-16', '2012-07-16', '7', '5', '7', 'bb', 'aa', '\r\nCongratulations on the arrival of your newborn baby boy', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Ming Liang Lee ', 'DWEw', '2192', '#10-605', 'Building ACE', 'Jurong East St 21', '', '', '600219', 'SG', 'city', '', '96938443', '', '', 'mingliang@ua-consultants.com', '0', '158');
INSERT INTO `tbl_order_delivery` VALUES ('152', '001', '2', '2012-07-18', '2012-07-18', '3', '4', '3', 'Aa', 'asas&#39;s', 'A New Little Boy to Brighten Your World!\n  \rHe couldn&#39;t have happened to a nicer\n							  \rfamily! \n							  \rCongratulations to Everyone! \n							  \r\n							  \r', '0', '1', 'Avoid lunch hour.\n	', '6.00', '0', '0', '0', 'Mr', 'Ming Liang Lee ', 'DW&#39;E&#39;s&#39;s', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '600219', 'SG', 'citys', '', '96938443', '', '', 'mingliang@ua-consultants.com', '0', '162');

-- ----------------------------
-- Table structure for `tbl_order_item`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_item`;
CREATE TABLE `tbl_order_item` (
  `order_item_id` int(11) NOT NULL auto_increment,
  `material` varchar(20) NOT NULL,
  `item_number` varchar(3) NOT NULL default '001',
  `order_id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `delivery_line` varchar(3) NOT NULL default '001',
  `product_id` int(11) NOT NULL,
  `coupon_code` varchar(11) NOT NULL,
  `sku` varchar(40) NOT NULL,
  `qty` int(11) NOT NULL,
  `occasion` varchar(2) NOT NULL,
  `free_of_charge_indicator` int(11) NOT NULL default '0',
  `condtype1` varchar(4) NOT NULL default 'PR00',
  `unit_price` decimal(10,2) NOT NULL,
  `condtype2` varchar(4) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `other_surcharge_type` varchar(4) NOT NULL,
  `other_surcharge_amount` decimal(10,2) NOT NULL,
  `sp_indicator` int(11) NOT NULL,
  `promotions_id` varchar(10) NOT NULL,
  `redemption_promo_id` varchar(15) NOT NULL,
  `loyalty_points` int(11) NOT NULL,
  `addon_item_number` int(11) NOT NULL,
  `addon_product_id` int(11) NOT NULL,
  `addon_sku` varchar(20) NOT NULL,
  `addon_qty` int(11) NOT NULL,
  `addon_product` int(11) NOT NULL default '1',
  PRIMARY KEY  (`order_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_order_item
-- ----------------------------
INSERT INTO `tbl_order_item` VALUES ('149', 'SPDC100004', '001', '156', '146', '001', '3', '', 'HNB113A', '1', 'WW', '0', 'PR00', '73.00', 'ZD02', '20.00', 'ZS03', '15.00', '1', 'zedem23zc4', '0', '0', '1', '4', 'AF530', '1', '1');
INSERT INTO `tbl_order_item` VALUES ('150', 'HNB113A', '001', '157', '147', '001', '3', '', 'HNB113A', '1', 'WW', '0', 'PR00', '50.00', 'ZD02', '20.00', 'ZS03', '15.00', '0', 'zedem23zc4', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('151', 'HGO101', '001', '158', '148', '001', '338', '', 'HGO101', '1', '', '0', 'PR00', '50.00', 'ZD03', '15.00', 'ZS03', '6.00', '0', 'ibrhcx8nu0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('155', 'HNB114A', '001', '162', '152', '001', '8', '', 'HNB114A', '1', '', '0', 'PR00', '50.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `tbl_order_payment`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_payment`;
CREATE TABLE `tbl_order_payment` (
  `order_payment_id` int(11) NOT NULL auto_increment,
  `amount` decimal(10,2) NOT NULL,
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
  `order_id` int(11) NOT NULL,
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
-- Table structure for `tbl_photos`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_photos`;
CREATE TABLE `tbl_photos` (
  `photos_id` int(11) NOT NULL auto_increment,
  `image` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `publish` int(2) NOT NULL default '1',
  `sorting` int(4) NOT NULL default '50',
  `date` varchar(15) NOT NULL,
  PRIMARY KEY  (`photos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_photos
-- ----------------------------
INSERT INTO `tbl_photos` VALUES ('13', 'images/photos/13.png', 'test', 'asasasasasasasa', '1', '1', '1342604509');

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
  `availability` int(11) NOT NULL default '1',
  `sef_title` varchar(100) NOT NULL,
  `sef_keyword` varchar(100) NOT NULL,
  `sef_description` text NOT NULL,
  `project_id` varchar(4) NOT NULL,
  `division` varchar(2) NOT NULL,
  `order_type` varchar(10) NOT NULL,
  `discount_value` decimal(10,2) NOT NULL,
  `discount_type` int(11) NOT NULL,
  PRIMARY KEY  (`product_id`),
  UNIQUE KEY `sku` USING BTREE (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=690 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product
-- ----------------------------
INSERT INTO `tbl_product` VALUES ('1', '-1', '1', 'HNB113B', 'Smiling Baby (Boy)', '50.00', '', '.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 3X70g\n.4pcs Shears Baby Wear Deluxe Gift Set\n.Jumbo Children Growth Chart\n.1pkt Drypers \nEverlasting Sweet Roses\n.PVC Storage Box', 'images/product/FY1112/HNB113A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('3', '-1', '1', 'HNB113A', 'Smiling Baby (Girl)', '50.00', '', '.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 3X70g\n.4pcs Shears Baby Wear Deluxe Gift Set\n.Jumbo Children Growth Chart\n.1pkt Drypers \nEverlasting Sweet Roses\n.PVC Storage Box', 'images/product/FY1112/HNB113A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('4', '-1', '3', 'AF530', 'Vase1', '23.00', '', '', 'images/product/4.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '2012-06-22', '1', '', '', '', '', '', '', '0.00', '1');
INSERT INTO `tbl_product` VALUES ('5', '-1', '3', 'AF-400', 'Vase 2', '12.00', '', '', 'images/product/5.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '2012-06-22', '1', '', '', '', '', '', '', '0.00', '1');
INSERT INTO `tbl_product` VALUES ('7', '-1', '1', 'HPG110', 'Classic Gift Basket', '50.00', '', 'Â·Lindt Almond De Luxe Swiss Chocolate 75.5g\nÂ·Walkers Belgian Chocolate Chunk Biscuits 150g\nÂ·Fomec\'s California Prune Essence 2x42g\nÂ·Fox\'s Crystal Clear Fruits Candy 180g\nÂ·Beryl\'s Tiramisu Chocolate 65g\nÂ·ST Daifour Snak Pack Jam 3x28g\nÂ·Packaged in Paper Tray', 'images/product/FY1112/HPG110.jpg', '0', '0', '0', '0', '1', '0', '2012-05-29', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('8', '0', '1', 'HNB114A', 'Beautiful Baby (Girl)', '50.00', '', '.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 6X70g\n.4pc Shears Baby Wear Deluxe Gift Set\n.Packaged with Cheerful Sunflowers', 'images/product/FY1112/HNB114A.jpg', '0', '0', '0', '0', '1', '0', '2012-06-03', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('9', '-1', '1', 'HNB114B', 'Beautiful Baby (Boy)', '50.00', '', '.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 6X70g\n.4pc Shears Baby Wear Deluxe Gift Set\n.Packaged with Cheerful Sunflowers', 'images/product/FY1112/HNB114A.jpg', '0', '0', '0', '0', '1', '0', '2012-06-03', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('11', '-1', '1', 'HHB116', 'Sweet Love', '60.00', '', 'For expressing the sweetest form of love you are experiencing, we picked the loveliest blooms of 6 Champagne Roses, 6 Cream Roses and 6 Pink Roses in the sweetest pastels to whisper \"I Love You\" gently in her ears.', 'images/product/FY1112/HHB116.jpg', '0', '0', '0', '0', '1', '0', '2012-06-03', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('12', '-1', '1', 'HHB114', 'Summertime', '60.00', '', 'Bask in the warmth of \"Summertime\" with 6 cheerful Sunflowers bundled with pretty Eustomas in a lively bouquet! We are sure it will bring a smile to any face.', 'images/product/FY1112/HHB114.jpg', '0', '0', '0', '0', '1', '0', '2012-06-03', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('13', '-1', '1', 'HHB105', 'My Fair Lady', '100.00', '', 'For many, the beautiful trumpet-shaped White Easter Lilies symbolize purity, virtue, innocence, hope and life- the spiritual essence of Easter. Paired with Million Stars, the big beautiful Easter Llilies we have picked will convey your deepest feelings for your fair lady', 'images/product/FY1112/HHB105.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('14', '-1', '1', 'HHB124', '99 Kisses', '200.00', '', 'Everyone else will be green with envy with her 99 Kisses of Super Red Roses.', 'images/product/FY1112/HHB124.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('15', '-1', '1', 'HGO124', 'Glorious Pedestal', '150.00', '', '', 'images/product/FY1112/HGO124.jpg', '188', '0', '145', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('16', '-1', '1', 'HGO129', 'Maximum Prosperity', '60.00', '', '', 'images/product/FY1112/HGO129.jpg', '180', '0', '96', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('17', '-1', '1', 'HGO141', 'Finest Success', '100.00', '', '', 'images/product/FY1112/HGO141.jpg', '190', '0', '78', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('18', '-1', '1', 'HGO114', 'Royal Arch', '200.00', '', '', 'images/product/FY1112/HGO114.jpg', '200', '0', '150', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('19', '-1', '1', 'HGO155', 'Regal Success', '120.00', '', '', 'images/product/FY1112/HGO155.jpg', '186', '0', '80', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('20', '-1', '1', 'HPG118', 'Delectable Gift Basket', '160.00', '', 'Â·Golden Bonbon Assorted Almond Nougat 250g\nÂ·UCC Special Colombia 100% Coffee 100g\nÂ·Lindt Swiss Thins Dark Milk Chocolate 125g\nÂ·Lindt Lindor Assortment Swiss Chocolate 200g\nÂ·Lindt Les Grandes 32% Almendras Negro Swiss Chocolate 150g\nÂ·Akbar 100% Pure Ceylon Tea 225g\nÂ·Famous Amos Chocolate Chip & Pecan Cookies 351g\nÂ·Natural Almonds Salt Roasted in Shell 120g\nÂ·Packaged in Leatherette Box', 'images/product/FY1112/HPG118.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('21', '-1', '1', 'HPG103', 'Lindt Classic', '80.00', '', 'Â·Lindt Lindor Assortment Swiss Chocolate 200g\nÂ·Lindt Lindor Milk Swiss Chocolate 200g\nÂ·Packaged with Elegant Cymbidiums Blooms and Mini Roses in Handcrafted Basket', 'images/product/FY1112/HPG103.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('22', '-1', '1', 'HPG136', 'Coffee Bliss', '120.00', '', '', 'images/product/FY1112/HPG136.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '2', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('23', '-1', '1', 'HPG122', 'Gourmet Gala', '100.00', '', 'Â·Chateau Margerots Bordeaux Superior Red Wine 75cl Â·Golden Bonbon Blueberry Nougat 200g\nÂ·Brown & Haley Macadamia Roca 113g\nÂ·Beryl\'s Tiramisu Chocolate 65g\nÂ·Beryl\'s Almond Milk Chocolate 70g\nÂ·Fox\'s Crinkles Classic Cookies 200g\nÂ·Packaged in Metal Tray', 'images/product/FY1112/HPG122.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('24', '-1', '1', 'HNB103', 'Floral Diaper Cake', '100.00', '', '.Sweet Carnations Floral in Glass Vase\n.Jumbo Children Growth Chart\n.14 pkts Drypers (56 Diapers)', 'images/product/FY1112/HNB103.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('25', '-1', '1', 'HNB107B', 'Zoo Baby Bag (Boy)', '60.00', '', '.Kodomo Toiletries Handy Pack\n.Bear Embrace Soft Blanket\n.Jumbo Children Growth Chart\n.Duckie New Born Head Pillow\n.Froggie Puppet Bath Gloves\n.Baby Bear Photo Frame\n.Everlasting Sweet Roses\n.Baby Paper Carrier', 'images/product/FY1112/HNB107A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('27', '-1', '1', 'HNB143', 'Ryan\'s Activities', '100.00', '', '.K\'s Kids Ryan Horse Activity Centre that help new born to children in improving their stimulation in mind, sight, sound and physical movement\n.With packaging', 'images/product/FY1112/HNB143.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('28', '-1', '1', 'HNB154', 'First Car', '60.00', '', '.Animal Infant Car with Toys\n.With packaging', 'images/product/FY1112/HNB154.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('29', '-1', '1', 'HEH102', 'Sona 10L Mini Electric Oven', '50.00', '', 'Sona 10L Mini Electric Oven', 'images/product/FY1112/HEH102.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('30', '-1', '1', 'HEH105', 'Sona Induction Cooker with Stainless Pots and Non Stick Pan', '135.00', '', 'Sona Induction Cooker with Stainless Pots and Non Stick Pan', 'images/product/FY1112/HEH105.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('31', '-1', '1', 'HEH107', 'Toyomi Multi Use Steam Boat', '65.00', '', 'Toyomi Multi Use Steam Boat', 'images/product/FY1112/HEH107.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('32', '-1', '1', 'HEH115', 'Sona 20L Microwave', '150.00', '', '', 'images/product/FY1112/HEH115.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '2', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('33', '-1', '1', 'HNB101A', 'Supreme 2-Tier Diaper Cake (Girl)', '200.00', '', '.4pcs Cater\'s Little Layette Wear Deluxe Gift Set\n.20cm Pull String Baby Safe Musical Elephant\n.Bear Embrace Soft Blanket\n.Kodomo Toiletries Handy Pack\n.Shears 100% Cotton Bib Set\n.Jumbo Children Growth Chart\n.23 pkts Drypers (92 Diapers)', 'images/product/FY1112/HNB101A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('34', '-1', '1', 'HNB101B', 'Supreme 2-Tier Diaper Cake (Boy)', '200.00', '', '.4pcs Cater\'s Little Layette Wear Deluxe Gift Set\n.20cm Pull String Baby Safe Musical Elephant\n.Bear Embrace Soft Blanket\n.Kodomo Toiletries Handy Pack\n.Shears 100% Cotton Bib Set\n.Jumbo Children Growth Chart\n.23 pkts Drypers (92 Diapers)', 'images/product/FY1112/HNB101A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('35', '-1', '1', 'HNB102A', 'Choice Diaper Cake (Girl)', '70.00', '', '.Baby Bear Photo Frame\n.Bear Embrace Soft Blanket\n.Kodomo Toiletries Handy Pack\n.7pkts Drypers (28 Diapers)', 'images/product/FY1112/HNB102A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('36', '-1', '1', 'HNB102B', 'Choice Diaper Cake (Boy)', '70.00', '', '.Baby Bear Photo Frame\n.Bear Embrace Soft Blanket\n.Kodomo Toiletries Handy Pack\n.7pkts Drypers (28 Diapers)', 'images/product/FY1112/HNB102A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('37', '-1', '1', 'HNB104A', 'Elmo Diaper Cake (Girl)', '110.00', '', '.Sesame Elmo Beginnings Bedtime Clothbook\n.4pcs Sesame Baby Wear Deluxe Gift Set\n.Bear Embrace Soft Blanket\n.7 pkts Drypers (28 Diapers)', 'images/product/FY1112/HNB104A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('38', '-1', '1', 'HNB104B', 'Elmo Diaper Cake (Boy)', '110.00', '', '.Sesame Elmo Beginnings Bedtime Clothbook\n.4pcs Sesame Baby Wear Deluxe Gift Set\n.Bear Embrace Soft Blanket\n.7 pkts Drypers (28 Diapers)', 'images/product/FY1112/HNB104A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('39', '-1', '1', 'HNB105A', 'Delux Diaper Cake (Girl)', '180.00', '', '.2pcs Osh Kosh B\'gosh Baby Wear Gift Set\n.20cm Baby Safe Little Me To You Tatty Teddy\n.Lucky Baby Mini Laser Safety Clip Fan\n.6pcs Shears Wash Cloths\n.Jumbo Children Growth Chart\n.Arran Aromatic Baby Feel Happy Mood Enhancing CD\n.11pkts Drypers (44 Diapers)', 'images/product/FY1112/HNB105A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('40', '-1', '1', 'HNB105B', 'Delux Diaper Cake (Boy)', '180.00', '', '.2pcs Osh Kosh B\'gosh Baby Wear Gift Set\n.20cm Baby Safe Little Me To You Tatty Teddy\n.Lucky Baby Mini Laser Safety Clip Fan\n.6pcs Shears Wash Cloths\n.Jumbo Children Growth Chart\n.Arran Aromatic Baby Feel Happy Mood Enhancing CD\n.11pkts Drypers (44 Diapers)', 'images/product/FY1112/HNB105A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('41', '-1', '1', 'HNB106A', 'Value Baby Bag (Girl)', '50.00', '', '.4pcs Shears Baby Wear Deluxe Gift Set\n.Bear Embrace Soft Blanket\n.Baby Bear Photo Frame\n.Everlasting Sweet Roses\n.Baby Paper Carrier', 'images/product/FY1112/HNB106A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('42', '-1', '1', 'HNB106B', 'Value Baby Bag (Boy)', '50.00', '', '.4pcs Shears Baby Wear Deluxe Gift Set\n.Bear Embrace Soft Blanket\n.Baby Bear Photo Frame\n.Everlasting Sweet Roses\n.Baby Paper Carrier', 'images/product/FY1112/HNB106A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('43', '-1', '1', 'HNB107A', 'Zoo Baby Bag (Girl)', '60.00', '', '.Kodomo Toiletries Handy Pack\n.Bear Embrace Soft Blanket\n.Jumbo Children Growth Chart\n.Duckie New Born Head Pillow\n.Froggie Puppet Bath Gloves\n.Baby Bear Photo Frame\n.Everlasting Sweet Roses\n.Baby Paper Carrier', 'images/product/FY1112/HNB107A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('44', '-1', '1', 'HNB108A', 'Total Baby Bag (Girl)', '80.00', '', '.4pcs Sesame Baby Wear Deluxe Gift Set\n.Brand\'s Essence of Chicken 6X42g\n.Baby Bear Photo Frame\n.Sweet Cheerful Gerberas\n.Baby Paper Carrier', 'images/product/FY1112/HNB108A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('45', '-1', '1', 'HNB108B', 'Total Baby Bag (Boy)', '80.00', '', '.4pcs Sesame Baby Wear Deluxe Gift Set\n.Brand\'s Essence of Chicken 6X42g\n.Baby Bear Photo Frame\n.Sweet Cheerful Gerberas\n.Baby Paper Carrier', 'images/product/FY1112/HNB108A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('46', '-1', '1', 'HNB109A', 'Brimming Baby Bag (Girl)', '135.00', '', '.D.O.M Benedictine 375ml\n.Brand\'s Essence of Chicken 6X42g\n.4pcs My Cutie Baby Wear Deluxe Gift Set\n.Gerberas and Carnations Bouquet\n.Baby Paper Carrier', 'images/product/FY1112/HNB109A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('47', '-1', '1', 'HNB109B', 'Brimming Baby Bag (Boy)', '135.00', '', '.D.O.M Benedictine 375ml\n.Brand\'s Essence of Chicken 6X42g\n.4pcs My Cutie Baby Wear Deluxe Gift Set\n.Gerberas and Carnations Bouquet\n.Baby Paper Carrier', 'images/product/FY1112/HNB109A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('48', '-1', '1', 'HNB110A', 'Dress-Up Baby Bag (Girl)', '100.00', '', '.3pcs Carter\'s Toddlers (1yr-2yrs) Wear Deluxe Gift Set\n.Froggie Puppet Bath Gloves \n.Bear Embrace Soft Blanket\n.Lucky Baby Mini Laser Safety Clip Fan\n.Everlasting Sweet Roses\n.Baby Paper Carrier', 'images/product/FY1112/HNB110A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('49', '-1', '1', 'HNB110B', 'Dress-Up Baby Bag (Boy)', '100.00', '', '.3pcs Carter\'s Toddlers (1yr-2yrs) Wear Deluxe Gift Set\n.Froggie Puppet Bath Gloves \n.Bear Embrace Soft Blanket\n.Lucky Baby Mini Laser Safety Clip Fan\n.Everlasting Sweet Roses\n.Baby Paper Carrier', 'images/product/FY1112/HNB110A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('50', '-1', '1', 'HNB111A', 'B\' Gosh Baby (Girl)', '100.00', '', '.2pcs Osh Kosh B\'gosh Baby Wear Deluxe Gift Set\n.28cm Pull String Baby Safe Musical Dinosaur\n.Lucky Baby Mini Laser Safety Clip Fan\n.Sweet Gerberas with Carnations Sprays and Baby Breath in footed Metal Tray', 'images/product/FY1112/HNB111A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('51', '-1', '1', 'HNB111B', 'B\' Gosh Baby (Boy)', '100.00', '', '.2pcs Osh Kosh B\'gosh Baby Wear Deluxe Gift Set\n.28cm Pull String Baby Safe Musical Dinosaur\n.Lucky Baby Mini Laser Safety Clip Fan\n.Sweet Gerberas with Carnations Sprays and Baby Breath in footed Metal Tray', 'images/product/FY1112/HNB111A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('52', '-1', '1', 'HNB112A', 'Mum & Baby (Girl)', '100.00', '', '.D.O.M Benedictine 375ml\n.Bird&#39;s Nest Wild Ginseng with White Fungus & Rock Sugar 2X70g\n.4pcs Shears Baby Wear Deluxe Gift Set\n.Beautiful Carnations Bouquet', 'images/product/FY1112/HNB112A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('53', '-1', '1', 'HNB112B', 'Mum & Baby (Boy)', '100.00', '', '.D.O.M Benedictine 375ml\n.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 2X70g\n.4pcs Shears Baby Wear Deluxe Gift Set\n.Beautiful Carnations Bouquet', 'images/product/FY1112/HNB112A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('54', '-1', '1', 'HNB115A', 'Beary Baby (Girl)', '60.00', '', '.5pcs Children Melamine Feeding Set\n.Bear Embrace Soft Blanket\n.1pc Shears 100% Cotton Bib\n.Baby Bear Photo Frame\n.1pkt Lucky Baby Natural Aloe Moisturizing Wipes\n.Packaging', 'images/product/FY1112/HNB115A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('55', '-1', '1', 'HNB115B', 'Beary Baby (Boy)', '60.00', '', '.5pcs Children Melamine Feeding Set\n.Bear Embrace Soft Blanket\n.1pc Shears 100% Cotton Bib\n.Baby Bear Photo Frame\n.1pkt Lucky Baby Natural Aloe Moisturizing Wipes\n.Packaging', 'images/product/FY1112/HNB115A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('56', '-1', '1', 'HNB116A', 'Bunny Baby (Girl)', '60.00', '', '.4pcs Shears Baby Wear Deluxe Gift Set\n.Brand\'s Essence of Chicken 3X42g\n.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 3X70g\n.15cm Baby Safe Rattle Rabbit\n.Packaging', 'images/product/FY1112/HNB116A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('57', '-1', '1', 'HNB116B', 'Bunny Baby (Boy)', '60.00', '', '.4pcs Shears Baby Wear Deluxe Gift Set\n.Brand\'s Essence of Chicken 3X42g\n.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 3X70g\n.15cm Baby Safe Rattle Rabbit\n.Packaging', 'images/product/FY1112/HNB116A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('58', '-1', '1', 'HNB117A', 'New Baby (Girl)', '65.00', '', '.4pcs Shears Baby Wear Deluxe Gift Set\n.Brand\'s Essence of Chicken 6X42g\n.Packaged with Sweet Gerberas', 'images/product/FY1112/HNB117A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('59', '-1', '1', 'HNB117B', 'New Baby (Boy)', '65.00', '', '.4pcs Shears Baby Wear Deluxe Gift Set\n.Brand\'s Essence of Chicken 6X42g\n.Packaged with Sweet Gerberas', 'images/product/FY1112/HNB117A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('60', '-1', '1', 'HNB118A', 'Angel Baby (Girl)', '70.00', '', '.4pcs Sesame Beginnings Baby Wear Deluxe Gift Set\n.Brand\'s Essence of Chicken 6X42g\n.Packaged with Sweet Gerberas', 'images/product/FY1112/HNB118A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('61', '-1', '1', 'HNB118B', 'Angel Baby (Boy)', '70.00', '', '.4pcs Sesame Beginnings Baby Wear Deluxe Gift Set\n.Brand\'s Essence of Chicken 6X42g\n.Packaged with Sweet Gerberas', 'images/product/FY1112/HNB118A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('62', '-1', '1', 'HNB119A', 'Lovely Baby (Girl)', '80.00', '', '.4pcs My Cutie Baby Wear Deluxe Gift Set\n.Brand\'s Essence of Chicken 6X42g\n.Prince of Peace American Wisconsin Ginseng Root Tea (10 teabags)\n.15cm Baby Safe Bebeb Rattle Rabbit\n.1pkt Drypers\n.Packaged with Cheerful Gerberas', 'images/product/FY1112/HNB119A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('63', '-1', '1', 'HNB119B', 'Lovely Baby (Boy)', '80.00', '', '.4pcs My Cutie Baby Wear Deluxe Gift Set\n.Brand\'s Essence of Chicken 6X42g\n.Prince of Peace American Wisconsin Ginseng Root Tea (10 teabags)\n.15cm Baby Safe Bebeb Rattle Rabbit\n.1pkt Drypers\n.Packaged with Cheerful Gerberas', 'images/product/FY1112/HNB119A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('64', '-1', '1', 'HNB120', 'Travel Baby', '80.00', '', '.4pcs Children Melamine Feeding Set\n.0.5L Stainless Steel Vacuum Flask\n.Lucky Baby Easy-Grip Grinder Bowl with Lid\n.Lucky Baby Mini Laser Safety Clip Fan\n.Lucky Baby Bib with Baby Safe Fork & Spoon\n.1pkt Lucky Baby Natural Aloe Moisturizing Wipes\n.Froggie Puppet Bath Gloves\n.Packaged Everlasting Sweet Roses', 'images/product/FY1112/HNB120.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('65', '-1', '1', 'HNB121A', 'Darling Baby (Girl)', '90.00', '', '.2pcs Osh Kosh B\'gosh Baby Wear Deluxe Gift Set\n.Brand\'s Essence of Chicken 6X42g\n.Packaged with Elegant Lilies', 'images/product/FY1112/HNB121A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('66', '-1', '1', 'HNB121B', 'Darling Baby (Boy)', '90.00', '', '.2pcs Osh Kosh B\'gosh Baby Wear Deluxe Gift Set\n.Brand\'s Essence of Chicken 6X42g\n.Packaged with Elegant Lilies', 'images/product/FY1112/HNB121A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('67', '-1', '1', 'HNB122A', 'Baby\'s Comforter (Girl)', '110.00', '', '.4pcs Shears Baby Wear Deluxe Gift Set\n.My Cutie Baby Pillow & Bolster Set\n.Cosy Family Bear Quilted Comforter 122cmX62cm\n.Lucky Baby Mini Laser Safety Clip Fan\n.Packaged in Beautiful Laundry Willow Basket', 'images/product/FY1112/HNB122A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('68', '-1', '1', 'HNB122B', 'Baby\'s Comforter (Boy)', '110.00', '', '.4pcs Shears Baby Wear Deluxe Gift Set\n.My Cutie Baby Pillow & Bolster Set\n.Cosy Family Bear Quilted Comforter 122cmX62cm\n.Lucky Baby Mini Laser Safety Clip Fan\n.Packaged in Beautiful Laundry Willow Basket', 'images/product/FY1112/HNB122A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('69', '-1', '1', 'HNB123', 'Baby Dreams', '100.00', '', '.8pcs Pur Deluxe New Born Gift Set (2pcs 150ml Bottles, 2pcs 250ml Bottles, Brush for straight sided bottles and teat brush with drainer, new born soother and tongs for sterilising teats)\n.Lovely Friends Quilted Comforter 98cm X 77cm\n.Jumbo Children Growth Chart\n.3pkts Drypers\n.Packaged with Sweet Gerberas in Beautiful Laundry Basket', 'images/product/FY1112/HNB123.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('70', '-1', '1', 'HNB124A', 'Precious Baby (Girl)', '100.00', '', '.10pcs Shears Baby Wear Deluxe Gift Set\n.5pcs Children Melamine Feeding Set\n.Anakku Toiletries Gift Set\n.Lucky Baby Mini Laser Safety Clip Fan\n.Jumbo Children Growth Chart\n.Packaged with Sweet Gerberas and Matthiolas in Wooden Trolley Tray', 'images/product/FY1112/HNB124A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('71', '-1', '1', 'HNB124B', 'Precious Baby (Boy)', '100.00', '', '.10pcs Shears Baby Wear Deluxe Gift Set\n.5pcs Children Melamine Feeding Set\n.Anakku Toiletries Gift Set\n.Lucky Baby Mini Laser Safety Clip Fan\n.Jumbo Children Growth Chart\n.Packaged with Sweet Gerberas and Matthiolas in Wooden Trolley Tray', 'images/product/FY1112/HNB124A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('72', '-1', '1', 'HNB125A', 'Growing Baby (Girl)', '120.00', '', '.K\'s Kids Flexi-Arch Multi Function Play Gym\n.4pcs Sesame Beginnings Baby Wear Deluxe Gift Set\n.Brand\'s Essence of Chicken 6X42g\n.5pcs Melamine Feeding Set\n.Baby Bear Photo Frame\n.Packaged with Everlasting Roses', 'images/product/FY1112/HNB125A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('73', '-1', '1', 'HNB125B', 'Growing Baby (Boy)', '120.00', '', '.K\'s Kids Flexi-Arch Multi Function Play Gym\n.4pcs Sesame Beginnings Baby Wear Deluxe Gift Set\n.Brand\'s Essence of Chicken 6X42g\n.5pcs Melamine Feeding Set\n.Baby Bear Photo Frame\n.Packaged with Everlasting Roses', 'images/product/FY1112/HNB125A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('74', '-1', '1', 'HNB126A', 'Avent Baby (Girl)', '125.00', '', '.2pcs Osh Kosh B\'gosh Baby Wear Deluxe Gift Set\n.250ml Avent Feeding Bottle\n.125ml Avent Feeding Bottle\n.Bear Embraces Soft Blanket\n.Packaged with Elegant Lilies, Mini Carnations and Baby Breath', 'images/product/FY1112/HNB126A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('75', '-1', '1', 'HNB126B', 'Avent Baby (Boy)', '125.00', '', '.2pcs Osh Kosh B\'gosh Baby Wear Deluxe Gift Set\n.250ml Avent Feeding Bottle\n.125ml Avent Feeding Bottle\n.Bear Embraces Soft Blanket\n.Packaged with Elegant Lilies, Mini Carnations and Baby Breath', 'images/product/FY1112/HNB126A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('76', '-1', '1', 'HNB127A', 'Baby\'s Buddies (Girl)', '120.00', '', '.4pcs Sesame Beginnings Baby Wear Deluxe Gift Set\n.1pc Sesame Beginnings Bedtime Clothbook\n.Sesame Beginnings Baby Botties Set\n.Quilted Mattress with Pillow and Mosquito Net 96cmX50cm\n.Kodomo Toiletries Handy Pack\n.Bear Embraces Soft Blanket', 'images/product/FY1112/HNB127A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('77', '-1', '1', 'HNB127B', 'Baby\'s Buddies (Boy)', '120.00', '', '.4pcs Sesame Beginnings Baby Wear Deluxe Gift Set\n.1pc Sesame Beginnings Bedtime Clothbook\n.Sesame Beginnings Baby Botties Set\n.Quilted Mattress with Pillow and Mosquito Net 96cmX50cm\n.Kodomo Toiletries Handy Pack\n.Bear Embraces Soft Blanket', 'images/product/FY1112/HNB127A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('78', '-1', '1', 'HNB128B', 'Baby Deal (Boy)', '120.00', '', '.D.O.M Benedictine 375ml\n.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 2X70g\n.Quilted Mattress with Pillow and Mosquito Net 96cmX50cm\n.Packaged with Gerberas and Mini Carnations', 'images/product/FY1112/HNB128A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('79', '-1', '1', 'HNB129', 'Glowing Baby', '120.00', '', '.10pcs Shears Baby Wear Deluxe Gift Set\n.4pcs Shears 100% Cotton Washcloth\n.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 6X70g\n.3pcs Lucky Baby Skoop First Spoon\n.Lucky Baby Easy-Grip Grinder Bowl Lid\n.Sassy Soft Ducky with Heat Indicator\n.Ducky New Born Head Pillow\n.Packaged with Sunflowers and Cheerful Gerberas', 'images/product/FY1112/HNB129.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('80', '-1', '1', 'HNB130A', 'Nourishing Baby (Girl)', '138.00', '', '.D.O.M Benedictine 375ml\n.Brand\'s Essence of Chicken 6X42g\n.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 3X70g\n.10pcs Shears Baby Wear Deluxe Gift Set\n.Packaged with Gerberas', 'images/product/FY1112/HNB130A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('81', '-1', '1', 'HNB130B', 'Nourishing Baby (Boy)', '138.00', '', '.D.O.M Benedictine 375ml\n.Brand\'s Essence of Chicken 6X42g\n.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 3X70g\n.10pcs Shears Baby Wear Deluxe Gift Set\n.Packaged with Gerberas', 'images/product/FY1112/HNB130A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('82', '-1', '1', 'HNB131A', 'Osh Kosh Baby (Girl)', '150.00', '', '.2pcs Osh Kosh B\'gosh Baby Wear Deluxe Gift Set\n.D.O.M Benedictine 375ml\n.Brand\'s Essence of Chicken 6X42g\n.Prince of Peace American Wisconsin Ginseng Root Tea (10 Teabags)\n.Packaged with Elegant Lilies and Gerberas', 'images/product/FY1112/HNB131A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('83', '-1', '1', 'HNB131B', 'Osh Kosh Baby (Boy)', '150.00', '', '.2pcs Osh Kosh B\'gosh Baby Wear Deluxe Gift Set\n.D.O.M Benedictine 375ml\n.Brand\'s Essence of Chicken 6X42g\n.Prince of Peace American Wisconsin Ginseng Root Tea (10 Teabags)\n.Packaged with Elegant Lilies and Gerberas', 'images/product/FY1112/HNB131A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('84', '-1', '1', 'HNB132A', 'Baby Time (Girl)', '150.00', '', '.Brand\'s Essence of Chicken 6X42g\n.4pcs Shears Baby Wear Deluxe Gift Set\n.K\'s Kids Flexi-Arch Multi Function Play Gym\n.Lucky Baby Mini Laser Safety Clip Fan\n.Baby Bear Photo Frame\n.Shears Bottle & Babyfood Warmer\n.Packaged with Sweet Gerberas and Baby Breath', 'images/product/FY1112/HNB132A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('85', '-1', '1', 'HNB132B', 'Baby Time (Boy)', '150.00', '', '.Brand&#39;s Essence of Chicken 6X42g\n.4pcs Shears Baby Wear Deluxe Gift Set\n.K&#39;s Kids Flexi-Arch Multi Function Play Gym\n.Lucky Baby Mini Laser Safety Clip Fan\n.Baby Bear Photo Frame\n.Shears Bottle & Babyfood Warmer\n.Packaged with Sweet Gerberas and Baby Breath', 'images/product/FY1112/HNB132A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('86', '-1', '1', 'HNB133A', 'Favourite Baby (Girl)', '160.00', '', '.D.O.M Benedictine 375ml\n.Brand\'s Essence of Chicken 6X42g\n.10pcs Shears Baby Wear Deluxe Gift Set\n.Jumbo Children Growth Chart\n.Packaged with Sunflower, Mini Carnations and Matthiolas in Wooden Trollley Tray', 'images/product/FY1112/HNB133A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('87', '-1', '1', 'HNB133B', 'Favourite Baby (Boy)', '160.00', '', '.D.O.M Benedictine 375ml\n.Brand\'s Essence of Chicken 6X42g\n.10pcs Shears Baby Wear Deluxe Gift Set\n.Jumbo Children Growth Chart\n.Packaged with Sunflower, Mini Carnations and Matthiolas in Wooden Trollley Tray', 'images/product/FY1112/HNB133A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('88', '-1', '1', 'HNB134A', 'Special Baby (Girl)', '180.00', '', '.D.O.M Benedictine 375ml.\n.Brand\'s Essence of Chicken 6X42g\n.10pcs Sesame Beginnings Baby Wear Deluxe Gift Set\n.20cm Pull String Baby Safe Musical Elephant\n.Packaged with Cheerful Gerberas', 'images/product/FY1112/HNB134A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('89', '-1', '1', 'HNB134B', 'Special Baby (Boy)', '180.00', '', '.D.O.M Benedictine 375ml.\n.Brand\'s Essence of Chicken 6X42g\n.10pcs Sesame Beginnings Baby Wear Deluxe Gift Set\n.20cm Pull String Baby Safe Musical Elephant\n.Packaged with Cheerful Gerberas', 'images/product/FY1112/HNB134A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('90', '-1', '1', 'HNB135A', 'Snuggle Baby (Girl)', '200.00', '', '.10pcs Shears Baby Wear Deluxe Gift Set\n.Quilted Mattress with Pillow and Mosquito Net 96cmX50cm\n.20cm Little Me To You Baby Safe Tatty Teddy\n.250ml Avent Feeding Bottle\n.Baby Photo Album\n.0.5Litres Stainless Steel Vacuum Flask\n.5pcs Children Melamine Feeding Set\n.Jumbo Children Growth Chart\n.Arran Aromatic Baby Feel Happy Mood Enhancing CD\n.Packaged with Cheerful Sunflowers', 'images/product/FY1112/HNB135A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('91', '-1', '1', 'HNB135B', 'Snuggle Baby (Boy)', '200.00', '', '.10pcs Shears Baby Wear Deluxe Gift Set\n.Quilted Mattress with Pillow and Mosquito Net 96cmX50cm\n.20cm Little Me To You Baby Safe Tatty Teddy\n.250ml Avent Feeding Bottle\n.Baby Photo Album\n.0.5Litres Stainless Steel Vacuum Flask\n.5pcs Children Melamine Feeding Set\n.Jumbo Children Growth Chart\n.Arran Aromatic Baby Feel Happy Mood Enhancing CD\n.Packaged with Cheerful Sunflowers', 'images/product/FY1112/HNB135A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('92', '-1', '1', 'HNB136A', 'Complete Baby (Girl)', '200.00', '', '.Chateau Allegret Bordeaux Red Wine 75cl\n.Bird&#39;s Nest Wild Ginseng with White Fungus & Rock Sugar 6X70g\n.Brand&#39;s Essence of Chicken 6X42g\n.2pcs Osh Kosh B&#39;gosh Baby Wear Deluxe Gift Set\n.Baby Love Deluxe Nursing Pillow\n.5pcs Children Melamine Feeding Set\n.Bear Embrace Soft Blanket\n.Arran Aromatic Baby Feel Happy Mood Enhancing CD\n.Packaged in Beautiful Laundry Basket with Cheerful Gerberas', 'images/product/FY1112/HNB136A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('93', '-1', '1', 'HNB136B', 'Complete Baby (Boy)', '200.00', '', '.Chateau Allegret Bordeaux Red Wine 75cl\n.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 6X70g\n.Brand\'s Essence of Chicken 6X42g\n.2pcs Osh Kosh B\'gosh Baby Wear Deluxe Gift Set\n.Baby Love Deluxe Nursing Pillow\n.5pcs Children Melamine Feeding Set\n.Bear Embrace Soft Blanket\n.Arran Aromatic Baby Feel Happy Mood Enhancing CD\n.Packaged in Beautiful Laundry Basket with Cheerful Gerberas', 'images/product/FY1112/HNB136A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('94', '-1', '1', 'HNB137A', 'Complete Baby (Girl)', '250.00', '', '.D.O.M Benedictine 375ml\n.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 6X70g\n.Brand\'s Essence of Chicken 6X42g\n.2pcs Osh Kosh B\'gosh Baby Wear Deluxe Gift Set\n.Baby Love Deluxe Nursing Pillow\n.5pcs Children Melamine Feeding Set\n.Bear Embrace Soft Blanket\n.Arran Aromatic Baby Feel Happy Mood Enhancing CD\n.Packaged in Beautiful Laundry Basket with Cheerful Gerberas', 'images/product/FY1112/HNB136A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('95', '-1', '1', 'HNB137B', 'Complete Baby (Boy)', '250.00', '', '.D.O.M Benedictine 375ml\n.Bird&#39;s Nest Wild Ginseng with White Fungus & Rock Sugar 6X70g\n.Brand&#39;s Essence of Chicken 6X42g\n.2pcs Osh Kosh B&#39;gosh Baby Wear Deluxe Gift Set\n.Baby Love Deluxe Nursing Pillow\n.5pcs Children Melamine Feeding Set\n.Bear Embrace Soft Blanket\n.Arran Aromatic Baby Feel Happy Mood Enhancing CD\n.Packaged in Beautiful Laundry Basket with Cheerful Gerberas', 'images/product/FY1112/HNB136A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('96', '-1', '1', 'HNB138A', 'Leading Baby (Girl)', '300.00', '', '.Brand&#39;s Bird&#39;s Nest with Rock Sugar 6X42g\n.Brand&#39;s Essence of Chicken 6X42g\n.2pcs Osh Kosh B&#39;gosh Baby Wear Deluxe Gift Set\n.Baby Love Deluxe Nursing Pillow\n.125ml Avent Feeding Bottle\n.250ml Avent Feeding Bottle\n.12 Months Baby&#39;s Photo Album\n.0.5Litres Stainless Steel Vacuum Flask\n.4pcs Children Melamine Feeding Set\n.15cm Baby Safe Bebe Rattle Rabbit\n.Arran Aromatic Baby Feel Happy Mood Enhancing CD\n.Packaged in Beautiful Laundry Basket with Everlasting Rose Bouquet', 'images/product/FY1112/HNB138A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('97', '-1', '1', 'HNB138B', 'Leading Baby (Boy)', '300.00', '', '.Brand\'s Bird\'s Nest with Rock Sugar 6X42g\n.Brand\'s Essence of Chicken 6X42g\n.2pcs Osh Kosh B\'gosh Baby Wear Deluxe Gift Set\n.Baby Love Deluxe Nursing Pillow\n.125ml Avent Feeding Bottle\n.250ml Avent Feeding Bottle\n.12 Months Baby\'s Photo Album\n.0.5Litres Stainless Steel Vacuum Flask\n.4pcs Children Melamine Feeding Set\n.15cm Baby Safe Bebe Rattle Rabbit\n.Arran Aromatic Baby Feel Happy Mood Enhancing CD\n.Packaged in Beautiful Laundry Basket with Everlasting Rose Bouquet', 'images/product/FY1112/HNB138A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('98', '-1', '1', 'HNB139A', 'Luxe Baby (Girl)', '500.00', '', '.Yomeishu 70cl\n.Dragon Brand Bird\'s Nest with Rock Sugar 6X75g\n.Prince of Peace American Winconsin Ginseng Root Tea (30 Teabags)\n.Combi Baby Feeding Set\n.2pcs Osh Kosh B\'gosh Baby Wear Deluxe Gift Set\n.My Cutie Baby Pillow & Bolster Set\n.K\'s Kids Flexi-Arch Multi Function Play Gym\n.12 Month Baby\'s Photo Album\n.20cm Little Me To You Baby Safe Tatty Teddy\n.125ml Avent Feeding Bottle\n.250ml Avent Feeding Bottle\n.Packaged with Everlasting Sweet Rose Bouquet', 'images/product/FY1112/HNB139A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('99', '-1', '1', 'HNB139B', 'Luxe Baby (Boy)', '500.00', '', '.Yomeishu 70cl\n.Dragon Brand Bird\'s Nest with Rock Sugar 6X75g\n.Prince of Peace American Winconsin Ginseng Root Tea (30 Teabags)\n.Combi Baby Feeding Set\n.2pcs Osh Kosh B\'gosh Baby Wear Deluxe Gift Set\n.My Cutie Baby Pillow & Bolster Set\n.K\'s Kids Flexi-Arch Multi Function Play Gym\n.12 Month Baby\'s Photo Album\n.20cm Little Me To You Baby Safe Tatty Teddy\n.125ml Avent Feeding Bottle\n.250ml Avent Feeding Bottle\n.Packaged with Everlasting Sweet Rose Bouquet', 'images/product/FY1112/HNB139A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('100', '-1', '1', 'HNB140', 'Play With Me', '80.00', '', '.Sesame Elmo Beginnings Bedtime Clothbook\n.Sassy Inspire The Senses Baby Safe Bucket of Beads\n.Baby Bear Photo Frame\n.Froggie Puppet Bath Gloves\n.Packaged in PVC Storage Box', 'images/product/FY1112/HNB140.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('101', '-1', '1', 'HNB141', 'Build With Me', '90.00', '', '.Soft Play Preschool Baby Safe Learning & Play Soft Blocks and Books Set\n.Baby Bear Photo Frame\n.Froggie Puppet Bath Gloves\n.Packaged with a Helium Foil Balloon', 'images/product/FY1112/HNB141.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('102', '-1', '1', 'HNB142', 'Funny Dinosaur', '90.00', '', '.K\'s Kids Boss, the colourful 100cm dinosaur activities bag with 60 balls in its tummy where the baby can have fun in this colourful ball pool\n.When zipped up, there are other activities for the kid to discover with lots of play value suitable for babies from 6 months to 3 years plus\n.With packaging', 'images/product/FY1112/HNB142.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('103', '-1', '1', 'HNB144', 'Cushion Playmat', '110.00', '', '.K\'s Kids Big & Big Play Mat 120cmX120cm is a giant play mat surrounded by 6 soft cushions and an inchworm pillow\n.Connect all cushions to build a soft chair for the child when they no longer need a playmat\n.With packaging', 'images/product/FY1112/HNB144.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '2', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('104', '-1', '1', 'HNB145', 'Cozy Carrier', '85.00', '', '.The perfect first bed that proportioned for newborn babies 63cmX35cmX20xm\n.Cozy & snug with washable pillow and blanket baby will feel completely comfortable and secure\n.Basket can be unfolded to a sleeping mat with a toys arch\n.With packaging', 'images/product/FY1112/HNB145.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('105', '-1', '1', 'HNB146', 'Elephant Playmat', '65.00', '', '.Elephant and Friends Activity Playmat 96cmX96cm stimulate visual learning and encourages babies to reach and play\n.With packaging', 'images/product/FY1112/HNB146.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('106', '-1', '1', 'HNB147', 'Play Time', '100.00', '', '.Infant Animal Mbile Friends Activity Gym 92cmX92cm with thick surrounding cushion\n.With packaging', 'images/product/FY1112/HNB147.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('107', '-1', '1', 'HNB148', 'Jungle Activities', '90.00', '', '.Scenique Multi Activity Gym 43cmX88cm that allow baby to learn and play\n.With packaging', 'images/product/FY1112/HNB148.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('108', '-1', '1', 'HNB149', 'Spinning Fun', '70.00', '', '.Lamaze Spin & Explore Garden Gym 70cmX70cm invite babies to play and learn.\n.Rotating spinner allows baby to build upper body and lower leg strength while exploring the Garden Activities Playmat\n.With packaging', 'images/product/FY1112/HNB149.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '2', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('109', '-1', '1', 'HNB150', 'Space Symphony', '100.00', '', '.Lamaze Space Symphony Motion Gym 70cmX70cm with 15 minutes of music & motion to engage baby longer\n.Arches will sway while music plays include 10 developmental features\n.With packaging', 'images/product/FY1112/HNB150.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '2', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('110', '-1', '1', 'HNB151A', 'Baby Bouncer (Girl)', '70.00', '', '.Best Friends Baby Bouncer with Vibration Activity\n.With packaging', 'images/product/FY1112/HNB151A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('111', '-1', '1', 'HNB151B', 'Baby Bouncer (Boy)', '70.00', '', '.Best Friends Baby Bouncer with Vibration Activity\n.With packaging', 'images/product/FY1112/HNB151A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('112', '-1', '1', 'HNB152A', 'Rocking Chair (Girl)', '85.00', '', '.Scenique Rocking Chair with Rattle Toys\n.With packaging', 'images/product/FY1112/HNB152A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('113', '-1', '1', 'HNB152B', 'Rocking Chair (Boy)', '85.00', '', '.Scenique Rocking Chair with Rattle Toys\n.With packaging', 'images/product/FY1112/HNB152A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('114', '-1', '1', 'HNB153', 'Baby Walker', '80.00', '', '.Lucky Baby Walker with Stopper\n.Net Weight 2KG\n.With packaging', 'images/product/FY1112/HNB153.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('115', '-1', '1', 'HNB155', 'Lucky Stroller', '100.00', '', '.Lucky Baby 2 Way Stroller with 3 adjustable reclining positions, sleeper canopy, adjustable handle removal front bar and shopping basket\n.Suitable for 6mths up to 3yrs old\n.Net weight 5KG\n.With packaging', 'images/product/FY1112/HNB155.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('116', '-1', '1', 'HNB156', 'Good Baby Stroller', '150.00', '', '.Good Baby 2 Way Stroller with 3 adjustable reclining positions, sleeper canopy, adjustable handle removal front bar and shopping basket\n.Suitable for new born up to 4yrs old\n.Net weight 7.5KG\n.With packaging', 'images/product/FY1112/HNB156.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('117', '-1', '1', 'HNB157', 'Ace Stroller', '200.00', '', '.Ace Baby 2 Way Stroller with 3 adjustable reclining positions, sleeper canopy, adjustable handle removal front bar and shopping basket\n.Suitable for new born up to 4yrs old\n.Net weight 6.7KG\n.With packaging', 'images/product/FY1112/HNB157.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '2', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('118', '-1', '1', 'HNB158', 'Baby Rocker', '50.00', '', '.Latido Carry Rocking Chair with storage box, adjustable for rocking, feeding and carrying\n.Net weight 2KG\n.With packaging', 'images/product/FY1112/HNB158.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('119', '-1', '1', 'HNB159', 'Deluxe Car Seat', '180.00', '', '.Ranger Deluxe Car Seat with protection against side impact, 5 points safety bait adjustment, 3 adjustable positions, Easy One Hand adjustment\n.Suitable for sleeping position with newborn head cushion\n.For new born to 5 years of age\n.Net weight 6.3KG\n.With packaging', 'images/product/FY1112/HNB159.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('120', '-1', '1', 'HNB160', 'Latido Car Seat', '120.00', '', '.Latido Infant Car Seat with adjustable seat belt & 4 positions carrying handle for carry, rock, sit and sleep\n.For new born to 9mths\n.Net weight 3.2KG\n.With packaging', 'images/product/FY1112/HNB160.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('121', '-1', '1', 'HNB161', 'Lucky Carrier', '80.00', '', '.Lucky Baby Carrier with swing base, micro cool fabric, removable carrier, 3 levels adjustable\n.Net weight 3.2KG\n.With packaging', 'images/product/FY1112/HNB161.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('122', '-1', '1', 'HNB162', 'Lucky Chair', '80.00', '', 'Â·Lucky Baby Deluxe High Chair with 3 points adjustable feeding tray with 2 level adjustable leg resist \nÂ·Suitable for new born to 5 year of age \nÂ·Net weight 6KG \nÂ·With packaging', 'images/product/FY1112/HNB162.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('123', '-1', '1', 'HNB163', 'Multiday Chair', '200.00', '', 'Â·Lucky Baby Moover Multiday High Chair with adjustable & removable tray, 5 points safety harness, comfortable leg rest, multi adjustable recline positions \nÂ·Double tray, easily assemble and be converted into chair & table set for 2 years of age and above \nÂ·With packaging', 'images/product/FY1112/HNB163.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('124', '-1', '1', 'HNB164', 'Latido Playpen', '150.00', '', '.Latido Playpen 104cmX69cm with Bassinet, side bag for storing and changing, mosquito net included\n.Net weight 11KG\n.With packaging', 'images/product/FY1112/HNB164.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('125', '-1', '1', 'HHB101', 'Lady Charm', '85.00', '', 'Charm the lady of your dream with \"Lady Charm\", specially created with 10 beautiful Red Roses and 6 Cymbidiums blooms that enchants and captivates!', 'images/product/FY1112/HHB101.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1,', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('126', '-1', '1', 'HHB102', 'French Kiss', '100.00', '', 'For the diehard romantic, enchant your dream girl with \"French Kiss\" where 12 Maria Roses are flanked by sweet Blue Hydrangeas, Dark Purple Eustomas and Dark Purple Statice. We are sure this charming bouquet will set her heart racing all over again!', 'images/product/FY1112/HHB102.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('127', '-1', '1', 'HHB103', 'Queen of Grace', '250.00', '', 'Specially created for the beauty queen who is a picture grace, \"Queen of Grace\" that features beautiful Maroon Cymbidiums, exotic Proteas and Mini Roses complements, yet shy away from stealing the limelight of the queen herself.', 'images/product/FY1112/HHB103.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('128', '-1', '1', 'HHB104', 'Queen of Angels', '220.00', '', 'Specially created for the most elegant beauty queen, \"Queen of Angels\" borrows the elegance of 24 White Easter Lilies to complement the grace of the sophisticated queen while adding a touch of purity.', 'images/product/FY1112/HHB104.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('129', '-1', '1', 'HHB106', 'Pure Easter', '150.00', '', 'Like how Easter Lilies symbolize joy, hope and inspiration for many during Easter and well beyond, \"Pure Easter\" uses 20 elegant Easter Lilies to help you tell her how much joy she brings you, how much she inspires you and how much you hope for the future together!', 'images/product/FY1112/HHB106.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('130', '-1', '1', 'HHB107', 'Graceful Lilies', '100.00', '', 'Oriental Lilies represent an universal symbol for beauty and they make the best bouquet to tell her she is simply beautiful! For \"Graceful Lilies\", we dressed 6 stalks beautiful Yellow Oriental Lilies with Million Stars and Statice to make sure they shine!', 'images/product/FY1112/HHB107.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('131', '-1', '1', 'HHB108', 'Garden of Grandeur', '120.00', '', '5 White Tulips, 5 Yellow Tulips, Red Mini Roses and Statice come together to form an exotic \"Garden of Grandeur\" that is sure to deliver an element of surprise with a touch of grandeur for any heart!', 'images/product/FY1112/HHB108.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('132', '-1', '1', 'HHB109', 'Floral Embrace', '100.00', '', 'Before you lock the special someone in a loving embrace, set the stage right with \"Floral Embrace\", an enchanting array of 6 Champagne Roses, Dark Purple Eustomas, Pink Eustomas and White Eustomas dressed with Million Stars!', 'images/product/FY1112/HHB109.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('133', '-1', '1', 'HHB110', 'Sweet Princess', '100.00', '', 'For the sweet princess of your heart, send her a bouquet of \"Sweet Princess\" and let the 6 Bandung Roses, 3 Maria Roses, Pink Eustomas and Blue Hydrandeas tug at her heartstrings before you say \"I Love You\"!', 'images/product/FY1112/HHB110.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('134', '-1', '1', 'HHB111', 'Lavender Charm', '135.00', '', 'Conjuring romantic dreams becomes easy with \"Lavender Dream\" where soothing 10 Purple Tulips and delicate 2 tone Pink Eustomas exude romantic charms.', 'images/product/FY1112/HHB111.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('135', '-1', '1', 'HHB112', 'Sunshine', '120.00', '', 'Like a favourite pair of jeans or your mum\'s cooking, tulips express comfort in all of the right ways. So we added 6 bright Yellow Tulips to the 6 lovely 2 Tone Pink Tulips and 6 pure White Tulips to deliver a comfortable dose of \"Sunshine\"!', 'images/product/FY1112/HHB112.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('136', '-1', '1', 'HHB113', 'Angelic', '120.00', '', 'Like an imagery of innocent angels gathering to deliver sacred messages, our choice of 10 Purple Tulips, 5 White Freesia and Pink Eustomas in \"Angelic\" will melt any heart!', 'images/product/FY1112/HHB113.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('137', '-1', '1', 'HHB115', 'Summer Dunes', '80.00', '', 'Dunes occur in different forms and sizes and are ever-changing and we think that should exactly be the feelings of an energetic summer! Send her a piece of the perfect summer with \"Summer Dunes\" today and enjoy the sunshine together!', 'images/product/FY1112/HHB115.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('138', '-1', '1', 'HHB118', 'Sapphire Dream', '80.00', '', 'Being in itself, the Blue Rose is something very extraordinary. So we think there is no better way to tell her that \"You are extraordinarily wonderful in my heart\" than \"Sapphire Dream\" where Million Stars and Blue Hydrangeas embrace the uniquely beautiful 12 Blue Roses.', 'images/product/FY1112/HHB118.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('139', '-1', '1', 'HHB119', 'Pastel Fleur', '60.00', '', 'Pastels always conjure images of sweet romance and if that is exactly what you see when you think of her, hesitate no more to send her a bouquet of Pastel Fleur where we paired 12 Champagne Roses and delicate Pink Eustomas and Statice to set her heart fluttering!', 'images/product/FY1112/HHB119.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('140', '-1', '1', 'HHB120', 'Rouge Crush', '80.00', '', 'The red rose has long symbolized beauty and perfection and a bouquet of red roses is the perfect way to express your deep feelings for someone special. With \"Rouge Crush\", where 20 Red Roses are locked in the embrace of delicate White Eustomas, saying \"I Love You\" just become a whole lot easier.', 'images/product/FY1112/HHB120.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('141', '-1', '1', 'HHB121', 'Rosy Passion', '80.00', '', 'Nothing shouts passion like Red Roses. With a charming bouquet of \"Rosy Passion\" where 12 Red Roses dazzle amongst the bed of Red Mini Roses and Hypericums, you are sure to reintroduce passion.', 'images/product/FY1112/HHB121.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('142', '-1', '1', 'HHB122', 'Only Love', '100.00', '', 'Nothing else can make two hearts beat as one, except love. Hence, we created \"Only Love\" using 1 Red Rose as adorned with some of the most beautiful 19 Cream Roses and Million Stars to tell her how much she mean to you. So, sit back, relax and let the flowers do the talking!', 'images/product/FY1112/HHB122.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('143', '-1', '1', 'HHB123', '99 Promises', '200.00', '', 'Sweet Promises- the Ladies love them. Our elegant bouquet of 99 delicate Champagne Roses is a sure way of delivering \"99 Promises\" cherished.', 'images/product/FY1112/HHB123.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('144', '-1', '1', 'HBH101A', 'Sweet Birthday Wishes (Mango Cheese 0.5KG)', '85.00', '', 'Champagne Roses whisper \"you are tender\" so they are the best choices for your whispering of tender sweet nothings to her ear. On this special day, present her this sweet bouquet of 6 Champagne Roses with Eustomas and sweeten the deal with a delectable cake of your choice from Eatzi Gourmet!\n1/2kg Eatzi Gourmet Cake (Mango Cheese) with Sweet Roses Bouquet.', 'images/product/FY1112/HBH101A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('145', '-1', '1', 'HBH101B', 'Sweet Birthday Wishes (American Cheese 0.5KG)', '85.00', '', 'Champagne Roses whisper \"you are tender\" so they are the best choices for your whispering of tender sweet nothings to her ear. On this special day, present her this sweet bouquet of 6 Champagne Roses with Eustomas and sweeten the deal with a delectable cake of your choice from Eatzi Gourmet!\n1/2kg Eatzi Gourmet Cake (American Cheese) with Sweet Roses Bouquet.', 'images/product/FY1112/HBH101A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('146', '-1', '1', 'HBH101C', 'Sweet Birthday Wishes (Chocolate Mint 0.5KG)', '85.00', '', 'Champagne Roses whisper \"you are tender\" so they are the best choices for your whispering of tender sweet nothings to her ear. On this special day, present her this sweet bouquet of 6 Champagne Roses with Eustomas and sweeten the deal with a delectable cake of your choice from Eatzi Gourmet!\n1/2kg Eatzi Gourmet Cake (Chocolate Mint) with Sweet Roses Bouquet.', 'images/product/FY1112/HBH101A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('147', '-1', '1', 'HBH101D', 'Sweet Birthday Wishes (Strawberry Delight 0.5KG)', '85.00', '', 'Champagne Roses whisper \"you are tender\" so they are the best choices for your whispering of tender sweet nothings to her ear. On this special day, present her this sweet bouquet of 6 Champagne Roses with Eustomas and sweeten the deal with a delectable cake of your choice from Eatzi Gourmet!\n1/2kg Eatzi Gourmet Cake (Strawberry Delight) with Sweet Roses Bouquet.', 'images/product/FY1112/HBH101A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('148', '-1', '1', 'HBH102A', 'Sweet Birthday Wishes (Mango Cheese 1KG)', '105.00', '', 'Champagne Roses whisper \"you are tender\" so they are the best choices for your whispering of tender sweet nothings to her ear. On this special day, present her this sweet bouquet of 6 Champagne Roses with Eustomas and sweeten the deal with a delectable cake of your choice from Eatzi Gourmet!\n1kg Eatzi Gourmet Cake (Mango Cheese) with Sweet Roses Bouquet.', 'images/product/FY1112/HBH102A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('149', '-1', '1', 'HBH102B', 'Sweet Birthday Wishes (American Cheese 1KG)', '105.00', '', 'Champagne Roses whisper \"you are tender\" so they are the best choices for your whispering of tender sweet nothings to her ear. On this special day, present her this sweet bouquet of 6 Champagne Roses with Eustomas and sweeten the deal with a delectable cake of your choice from Eatzi Gourmet!\n1kg Eatzi Gourmet Cake (American Cheese) with Sweet Roses Bouquet.', 'images/product/FY1112/HBH102A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('150', '-1', '1', 'HBH102C', 'Sweet Birthday Wishes (Chocolate Mint 1KG)', '105.00', '', 'Champagne Roses whisper \"you are tender\" so they are the best choices for your whispering of tender sweet nothings to her ear. On this special day, present her this sweet bouquet of 6 Champagne Roses with Eustomas and sweeten the deal with a delectable cake of your choice from Eatzi Gourmet!\n1kg Eatzi Gourmet Cake (Chocolate Mint) with Sweet Roses Bouquet.', 'images/product/FY1112/HBH102A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('151', '-1', '1', 'HBH102D', 'Sweet Birthday Wishes (Strawberry Delight 1KG)', '105.00', '', 'Champagne Roses whisper \"you are tender\" so they are the best choices for your whispering of tender sweet nothings to her ear. On this special day, present her this sweet bouquet of 6 Champagne Roses with Eustomas and sweeten the deal with a delectable cake of your choice from Eatzi Gourmet!\n1kg Eatzi Gourmet Cake (Strawberry Delight) with Sweet Roses Bouquet.', 'images/product/FY1112/HBH102A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('152', '-1', '1', 'HBH103A', 'Romantic Birthday Wishes (Mango Cheese 0.5KG)', '105.00', '', 'The use of Sweet Tulips adds a touch of royalty to the romantic bouquet that is sure to delight the love of your life! On this special day, present her this sweet bouquet of 6 Sweet Tulips with Eustomas and sweeten the deal with a delectable cake of your choice from Eatzi Gourmet!\n1/2kg Eatzi Gourmet Cake (Mango Cheese) with Sweet Tulips Bouquet.', 'images/product/FY1112/HBH103A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('153', '-1', '1', 'HBH103B', 'Romantic Birthday Wishes (American Cheese 0.5KG)', '105.00', '', 'The use of Sweet Tulips adds a touch of royalty to the romantic bouquet that is sure to delight the love of your life! On this special day, present her this sweet bouquet of 6 Sweet Tulips with Eustomas and sweeten the deal with a delectable cake of your choice from Eatzi Gourmet!\n1/2kg Eatzi Gourmet Cake (American Cheese) with Sweet Tulips Bouquet.', 'images/product/FY1112/HBH103A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('154', '-1', '1', 'HBH103C', 'Romantic Birthday Wishes (Chocolate Mint 0.5KG)', '105.00', '', 'The use of Sweet Tulips adds a touch of royalty to the romantic bouquet that is sure to delight the love of your life! On this special day, present her this sweet bouquet of 6 Sweet Tulips with Eustomas and sweeten the deal with a delectable cake of your choice from Eatzi Gourmet!\n1/2kg Eatzi Gourmet Cake (Chocolate Mint) with Sweet Tulips Bouquet.', 'images/product/FY1112/HBH103A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('155', '-1', '1', 'HBH103D', 'Romantic Birthday Wishes (Strawberry Delight 0.5KG)', '105.00', '', 'The use of Sweet Tulips adds a touch of royalty to the romantic bouquet that is sure to delight the love of your life! On this special day, present her this sweet bouquet of 6 Sweet Tulips with Eustomas and sweeten the deal with a delectable cake of your choice from Eatzi Gourmet!\n1/2kg Eatzi Gourmet Cake (Strawberry Delight) with Sweet Tulips Bouquet.', 'images/product/FY1112/HBH103A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('156', '-1', '1', 'HBH104A', 'Romantic Birthday Wishes (Mango Cheese 1KG)', '125.00', '', 'The use of Sweet Tulips adds a touch of royalty to the romantic bouquet that is sure to delight the love of your life! On this special day, present her this sweet bouquet of 6 Sweet Tulips with Eustomas and sweeten the deal with a delectable cake of your choice from Eatzi Gourmet!\n1kg Eatzi Gourmet Cake (Mango Cheese) with Sweet Tulips Bouquet.', 'images/product/FY1112/HBH104A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('157', '-1', '1', 'HBH104B', 'Romantic Birthday Wishes (American Cheese 1KG)', '125.00', '', 'The use of Sweet Tulips adds a touch of royalty to the romantic bouquet that is sure to delight the love of your life! On this special day, present her this sweet bouquet of 6 Sweet Tulips with Eustomas and sweeten the deal with a delectable cake of your choice from Eatzi Gourmet!\n1kg Eatzi Gourmet Cake (American Cheese) with Sweet Tulips Bouquet.', 'images/product/FY1112/HBH104A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('158', '-1', '1', 'HBH104C', 'Romantic Birthday Wishes (Chocolate Mint 1KG)', '125.00', '', 'The use of Sweet Tulips adds a touch of royalty to the romantic bouquet that is sure to delight the love of your life! On this special day, present her this sweet bouquet of 6 Sweet Tulips with Eustomas and sweeten the deal with a delectable cake of your choice from Eatzi Gourmet!\n1kg Eatzi Gourmet Cake (Chocolate Mint) with Sweet Tulips Bouquet.', 'images/product/FY1112/HBH104A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('159', '-1', '1', 'HBH104D', 'Romantic Birthday Wishes (Strawberry Delight 1KG)', '125.00', '', 'The use of Sweet Tulips adds a touch of royalty to the romantic bouquet that is sure to delight the love of your life! On this special day, present her this sweet bouquet of 6 Sweet Tulips with Eustomas and sweeten the deal with a delectable cake of your choice from Eatzi Gourmet!\n1kg Eatzi Gourmet Cake (Strawberry Delight) with Sweet Tulips Bouquet.', 'images/product/FY1112/HBH104A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('160', '-1', '1', 'HBH105', 'Sweetest Gold', '80.00', '', 'At a loss because the lady of your dreams has always proclaimed to like the idea of \"something different\"? Our unique creation of a classy golden bouquet adorned with 32pcs of the classic favourite Ferrero Rocher Chocolates will make her blush on her special day!', 'images/product/FY1112/HBH105.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('161', '-1', '1', 'HBH106', 'Sunshine Kitty', '65.00', '', 'For the cat-lover in her, let the feline do the talking! 6 Sunny Gerberas and delicious Ferror Rocher Chocolate 300g delivered by adorable 30cm Orange Tabby Cat will drive the happy birthday girl to purr with joy!', 'images/product/FY1112/HBH106.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('162', '-1', '1', 'HBH107', 'Beary Cute', '50.00', '', 'Saying happy birthday becomes easy with \"Beary Cute\" because 20cm Ken \"I Love You\" Bear flanked with 3 Champagne Roses conveys your sweet nothings while Berly\'s Assortio Chocolate 46g on a Modern Urban Designer\'s Gourment Porcelain Cup and Saucer with Spoon delights!', 'images/product/FY1112/HBH107.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('163', '-1', '1', 'HBH108', 'Beary Cheery', '50.00', '', 'Let 25cm Loving Bear convey your birthday cheers for that special someone today! To sweeten the deal, we have the prettiest 6 Champagne Roses, brightest Sunflowers and Millton Almonds Milk Chocolate 150g accompanying your thoughtful wishes!', 'images/product/FY1112/HBH108.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('164', '-1', '1', 'HBH109', 'Beary Classy', '60.00', '', 'Warm her heart with this basket of love on her special day! If 25cm Lovely Bear peeking out of the 8 pretty Cream Roses, Daisy Poms and 6 Ferrero Rocher Chocolate doesn\'t melt her heart still, nothing else will!', 'images/product/FY1112/HBH109.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('165', '-1', '1', 'HBH110', 'Little Boofle', '100.00', '', '', 'images/product/FY1112/HBH110.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '2', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('166', '-1', '1', 'HBH111', 'Scented Desires', '70.00', '', '', 'images/product/FY1112/HBH111.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '2', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('167', '-1', '1', 'HBH112', 'Scented Love', '120.00', '', 'Surprise her with the sweet bouquet of 16 Maria Roses and the classic scent of Versace Bright Crystal Eau De Toilette 30ml. She will tell you that birthdays never look and smell this good!', 'images/product/FY1112/HBH112.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('168', '-1', '1', 'HBH113', 'Scented Enchantment', '120.00', '', 'Delight her visually with our choice of Mini Roses, Matthiolas and Statices in a classy beauty case, and the classic scent of Versace Bright Crystal Eau De Toilette 30ml. She will tell you that birthdays never look and smell this good!', 'images/product/FY1112/HBH113.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('169', '-1', '1', 'HBH114', 'Scented Charms', '110.00', '', 'Delight her visually with our choice of Mini Roses, Matthiolas and Statices in a classy beauty case, and the classic scent of Escada Ocean Lounge Eau De Toilette 30ml. She will tell you that birthdays never look and smell this good!', 'images/product/FY1112/HBH114.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('170', '-1', '1', 'HBH115', 'Scented Imaginations', '120.00', '', 'Sweep off her feet with this fanciful beauty case packed with a whole lot of surprises! We have an array of Mini Roses, Statices and Million Stars arranged to complement the lovely scent of Anna Sui Flight of Fancy Eau De Toilette 30ml that is sure to make her birthday a very special one!', 'images/product/FY1112/HBH115.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('171', '-1', '1', 'HBH116', 'Happy Days', '90.00', '', 'Send a healthy dose of sunshine with happy Sunflowers and Orchids! As if sunshine isn\'t adequate, we jam-packed the gift pack with 100% Natural Millenia Herbs calming Tea 25 Teabags, Tea Mug, The Body Shop\'s Sandalwood & Ginger Home Fragrance Oil 10ml and a Modern Urban Aroma Procelain Burner that is sure to deliver a smile to the recipient!', 'images/product/FY1112/HBH116.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('172', '-1', '1', 'HBH117', 'Scented Indulgence', '135.00', '', 'For the gentleman who looks good, smelling good completed the package. Dressed with an elegant pot of Phalaenopsis Plant, the classic scent of Calvin Klein MAN Eau De Toilette 50ml is sure to delight him on his special day!', 'images/product/FY1112/HBH117.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('173', '-1', '1', 'HBH118', 'Scented Pleasure', '125.00', '', 'For the gentleman who looks good, smelling good completed the package. Paired with an elegant pot of Phalaenopsis Plant, the refreshing scent of Giorgio Armani\'s Acqua Di Gio Eau De Toilette 30ml is sure to delight him on his special day!', 'images/product/FY1112/HBH118.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('174', '-1', '1', 'HBH119', 'Write In Style', '100.00', '', '', 'images/product/FY1112/HBH119.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '2', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('175', '-1', '1', 'HBH120', 'Pamper In Style', '160.00', '', 'Like us, every gentleman deserves to be pampered! So we packed a stylish ALAIN DELON\'s Roller Pen and Ball Point Pen Executive Gift Set. smooth Chateau Saint Floran Bordeaux Red Wine 75cl and a box of delectable Guylian Opus Chocolate 200g in an exquisite handcrafted basket that is sure to thrill him!', 'images/product/FY1112/HBH120.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('176', '-1', '1', 'HSM101', 'Garden In A Bag', '50.00', '', 'The love of your life deserves the best, so express your language of love with our creation of â€œGarden In a Bagâ€, specially packed with 10 beautiful Champagne Roses, Mini Roses and Statices in Sweet Love Messages Box Carrier.', 'images/product/FY1112/HSM101.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('177', '-1', '1', 'HSM102', 'Bag of Romance', '60.00', '', 'The love of your lifedeserves the best, so express your language of love with our creation of \"Bag Of Romance\", specially packed with 10 beautiful Bandung Roses, Pink Eustomas and Million Stars in Sweet Love Messages Box Carrier.', 'images/product/FY1112/HSM102.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('178', '-1', '1', 'HSM103', 'Bag of Sweet Love', '65.00', '', 'The love of your life deserves the best, so express your language of love with our creation of â€œBag of Sweet Loveâ€, specially packed with 10 beautiful Maria Roses, Purple Eustomas and Extoic Wax Flowers in Sweet Love Messages Box Carrier.', 'images/product/FY1112/HSM103.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('179', '-1', '1', 'HSM104', 'Sweet Heart For You', '70.00', '', 'For your sweetheart who is so dear to you, let \"Sweet Heart For You\" tell her of your love so true. 18 luscious Red Roses paired with Dansonâ€™s \"Love Is Beautiful\" Chocolate with Almond 150g will leave her with the sweet aftertaste!', 'images/product/FY1112/HSM104.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('180', '-1', '1', 'HSM105', 'Beary Basket', '60.00', '', 'Tea calms while roses charm. Enchant your darling with \"A Beary Flavourful Tea Basket\" because she deserves the best! The elegant gift basket is filled with 18 beautiful Red Roses and 8pcs 8cm Mini Handphone Bears!', 'images/product/FY1112/HSM105.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('181', '-1', '1', 'HSM106', 'Puppy Love', '70.00', '', 'Like \"Puppy Love\" that is sweet and memorable, our lovely creation of an cuddly 30cm Lovely Dog tucked in a luscious bed of 15 Red Roses, Mini Roses and Million Stars will melt her heart!', 'images/product/FY1112/HSM106.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('182', '-1', '1', 'HSM107', 'Surprises In A Box', '60.00', '', 'Everyone loves to recieve \"Surprises In A Box\" because you never know what you are going to get! With an adorable 20cm Schnauzer Handphone Stand Plush, 6 delicious Ferrero Rochers Chocolate, 6 luscious Red Roses and Heart-shaped Helium Floating Balloon, we are certain this will be one of the best gifts she get!', 'images/product/FY1112/HSM107.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('183', '-1', '1', 'HSM108', '\"One In A Million!\"', '70.00', '', 'Proclaim how lucky you are because she is so special; she is \"One In A Million\"! Cuddly 18cm Boofle with \"One in a million\" T-shirt paired with 6 elegant Red Roses, Alstromerias and 2 Heart-shaped Helium Floating Ballons simply says it all!', 'images/product/FY1112/HSM108.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('184', '-1', '1', 'HSM109', 'Sweetness In A Box', '50.00', '', 'Sweet nothings cannot get better than giving her all the \"Sweetness In A Box\"! We let an 30cm Adorable Pink Hippo lend a soft touch to 6 Pink Roses Roses and Millions Stars with 2 Heart- shaped Helium Floating Balloons in saying \"I Love You\"!', 'images/product/FY1112/HSM109.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('185', '-1', '1', 'HSM110', 'Precious Box Of Love', '100.00', '', 'Tease her with this luxurious\" Precious Box Of Love\" filled with 8 Bandung Roses, Statices, Million Stars, Heart-shaped Helium Floating Balloon and classy Pink Leatherette 3 Tiers Jewellery Box. She is sure to feel very precious!', 'images/product/FY1112/HSM110.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('186', '-1', '1', 'HSM111', 'Lovely Miss Bunny', '100.00', '', 'For the sweet and coy girl of your dream, \"Lovely Miss Bunny\" consisting of the 100cm Beauty Rabbit and a sweet bouquet of 3 Maria Roses, 6 Bandung Roses and Eustomas will melt her heart instantly!', 'images/product/FY1112/HSM111.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('187', '-1', '1', 'HSM112', 'Beary Romantic', '60.00', '', 'Recreate the very first feelings of falling in love with \"Beary Romantic\" as 38cm Jeff Lavender Soft Bear adds a soft touch to the accompanying Bouquet of 6 Maria Roses, Eustomas, Statices and Nosa!', 'images/product/FY1112/HSM112.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('188', '-1', '1', 'HSM113', 'Beary Much In Love', '100.00', '', 'For the very much in love, our creation of \"Beary Much In Love\" where 70cm Light Brown Fat Face Bear paired with beautiful bouquet of 8 Champagne Roses, Million Stars and Statices simply tells of the love you have for each other.', 'images/product/FY1112/HSM113.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('189', '-1', '1', 'HSM114', 'Beary Special', '120.00', '', 'Delight your beloved with this \"Beary Special\" bag of love where sweet-faced 100cm Cream Fat Faced Bear delivers a dose of sunshine with 5 Easter Lilies, 3 Sunflowers and Million Stars.', 'images/product/FY1112/HSM114.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('190', '-1', '1', 'HSM115', 'Beary Dreamy', '100.00', '', '\"Beary Dreamy\" make the best expression of love for the girl of your dreams! 60cm Ice-Cream Sit Bear paired with 6 Tulips and Statices delivering a touch of romantism!', 'images/product/FY1112/HSM115.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('191', '-1', '1', 'HSM116', 'Beary Sunny', '100.00', '', 'The feeling of love can be expressed in many ways so why restrict to words? Let \"Beary Sunny\" consisting 75cm Big Loving Bear and cheery Sunflowers do the job!', 'images/product/FY1112/HSM116.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('192', '-1', '1', 'HSM117', 'Say I Love You', '120.00', '', 'Make her fall in love all over again with \"Just Want To Say I Love You\"! She will feel so in love to receive beautiful bouquet of 6 Bandung Pink Roses, Mini Roses, Eustomas and Million Stars topped with a Me to You 8cm Love Cushion Tatty Teddy Key Chain.', 'images/product/FY1112/HSM117.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('193', '-1', '1', 'HSM118', 'Be With You', '120.00', '', 'Romance her all over with \"Just Want To be With You! She will simply love this 12cm Me to You \"Love\" Cushion Tatty Teddy and Lindt Milk Chocolate Gift Box 112g paired with a lovely bouquet of Mini Roses, Million Stars and Statices on a Metal Mini Swing.', 'images/product/FY1112/HSM118.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('194', '-1', '1', 'HSM119', 'In Love With You', '120.00', '', 'Let her bask in your love with \"Just In Love With You\"! She will simply adore this 23cm Me To You \"Love\" Cushion Tatty Teddy in a bed of beautiful 16 Maria Roses and Statices.', 'images/product/FY1112/HSM119.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('195', '-1', '1', 'HSM120', 'Eyes For You', '100.00', '', 'Watch her blush when you present \"Just Have Eyes For You\"! She will not be able to resist this love box consisting this 12cm Me To You \"Love\" Cushion Tatty Teddy in a bed of beautiful Tulips, Mini Roses, Million Stars and Statices.', 'images/product/FY1112/HSM120.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('196', '-1', '1', 'HSM121', 'Just The Two Of Us', '150.00', '', 'Wish the happy couple \"Just The Two Of You, Always\"like the pair of bashful 12cm Me to You WeddingTatty Teddies! Sweet Pink Alstromerias, Mini Roses and Million Stars add to the atmosphere of love while Danson\'s \"Love Is Beautiful\" Chocolate with Almond 150g sweetens the union!', 'images/product/FY1112/HSM121.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('197', '-1', '1', 'HSM122', 'Bask In Love', '75.00', '', 'Send the blissful couple a dose of your warmest blessings with this beautiful heart-shaped box filled with an adorable 8cm Me to You Hand Painted Wedding Tatty Teddies figurine Water Globe. With 5 Pink Roses, Matthiolas and Statices.', 'images/product/FY1112/HSM122.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('198', '-1', '1', 'HSM123', 'Marital Bliss', '60.00', '', 'Like the 15cm Happy Wedding Couple Figurine basking in the love of each other amdist the scarlet bed of Red Alstromerias, Mini Roses and Million Star, wish the happy couple marital bliss eternally!', 'images/product/FY1112/HSM123.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('199', '-1', '1', 'HSM124', 'Blissful Garden', '130.00', '', 'Like an imagery of the happy couple basking in bliss and happiness, our creation of a pair of 13cm Wedding Bears surrounded by beautiful 12 Champagne Roses, Cymbidiums, Tulips, Alstromerias and Matthiolas in a \"Blissful Garden\" will deliver a lovely surprise to both the bride and groom!', 'images/product/FY1112/HSM124.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('200', '-1', '1', 'HTA101', 'Blooms of Sweet Pastels', '50.00', '', 'Fill the air of your home with the floral scents of White Cymbidiums, Champagne Roses, Alstromerias, Baby Breath and Celosia served on a Plate!', 'images/product/FY1112/HTA101.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('201', '-1', '1', 'HTA102', 'Blooms of Magical Fantasy', '85.00', '', 'Brighten up your treasured living space and add a dose of magical fantasy with this whimsical arrangement of 6 Purple Tulips, Poms, and Statices creatively arranged in a Metal Cage.', 'images/product/FY1112/HTA102.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('202', '-1', '1', 'HTA103', 'Blooms in Soft Magenta', '100.00', '', 'A dose of magenta blooms add a touch of softness to any treasured living space, so let 15 Purple Roses, exotic Wax Flowers and Statices arranged in Giant Wine Glass jazz up your home today!', 'images/product/FY1112/HTA103.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('203', '-1', '1', 'HTA104', 'Blooms of Exotic Delight', '80.00', '', 'Delight everyone at home with the exotic arrangement of Bird of Paradise, Peach Gerberas and Statices on a Metal Tray.', 'images/product/FY1112/HTA104.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('204', '-1', '1', 'HTA105', 'Blooms of Beautiful Pink', '50.00', '', 'Introduce sweet feeling of love to your treasured living space with the pink-hued arrangement of Tulips, Gerbera and Matthiolas in Glass Bowl!', 'images/product/FY1112/HTA105.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('205', '-1', '1', 'HTA106', 'Blooms of Enchantment', '80.00', '', 'Add a palette of colours without the hassel of repainting with the enchanting arrangement of Lilies, Matthiolas, Eustomas and Gerberas in a Bowl Vase.', 'images/product/FY1112/HTA106.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('206', '-1', '1', 'HTA107', 'Blooms of Brilliance', '60.00', '', 'Add a touch of brilliance in colours to your treasured living space with Bird of Paradise, Gerberas, exotic Kangaroopu and Phoenix arranged in a Basket.', 'images/product/FY1112/HTA107.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('207', '-1', '1', 'HTA108', 'Blooms of Sunshine Zest', '60.00', '', 'Add a dose of sunshine zest to your treasured living space with cheerful arrangement of Gerberas and Sunflowers in Glass Vase.', 'images/product/FY1112/HTA108.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('208', '-1', '1', 'HTA109', 'Blooms of Finery', '70.00', '', 'Your treasured living space deserves only the finest blooms and Orange Roses, Statices, Poms and Alstromerias arranged on a Metal Tray fits to a T!', 'images/product/FY1112/HTA109.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('209', '-1', '1', 'HTA110', 'Blooms of Glory', '80.00', '', 'Jazz up your treasured living space with the glorious blooms of 8 Tulips, Alstromerias, Margerat Poms and Statices arranged on a Metal Tray.', 'images/product/FY1112/HTA110.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('210', '-1', '1', 'HTA111', 'Blooms of Splendor', '135.00', '', 'Let the splendor of 4 White Tulips, 4 Pink Tulips, 4 Light Pink Tulips and Pink Eustomas arranged in a Glass Vase with Stand add a touch of colour to your beautiful home.', 'images/product/FY1112/HTA111.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('211', '-1', '1', 'HTA112', 'Blooms of Crimson Delight', '100.00', '', 'Balance up the coolness of any contemporary home with the crimson-hued arrangement of 10 stalks 2-Toned Red Tulips, Baby Breath, Matthiolas on a quaint 8-Wheels Wooden Tray.', 'images/product/FY1112/HTA112.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('212', '-1', '1', 'HTA113', 'Blooms of Whimsical Dreams', '150.00', '', 'The arrangement of Cymbidiums, Pink Tulips, Pink Hydrangeas, Pink Mattiolas and Oriental Lilies is almost like a whimsical dream, so let the beautiful arrangement sweeten the air of your treasured living space today!', 'images/product/FY1112/HTA113.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('213', '-1', '1', 'HTA114', 'Blooms of Sweet Cherries', '80.00', '', 'Together, pretty 8 Maria Roses and Mini Roses in 40cm Designer Sandblasted Glass instantly sweetens the air of any living space and add a touch of glamour!', 'images/product/FY1112/HTA114.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('214', '-1', '1', 'HTA115', 'Blooms of Grandeur', '150.00', '', 'Add a touch of grandeur with this beautiful arrangement of Pink Oriental Lilies and a dozen of Purple Roses in Glass Vase with Stand.', 'images/product/FY1112/HTA115.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('215', '-1', '1', 'HTA116', 'Blooms of Happiness in A Cup', '100.00', '', 'Like a splendid cup of tea that relaxes the soul, add a touch of happiness with Cymbidiums, Pink Alstromerias, Baby Breath, Purple Mattiolas and Pink Mattiolas served in a cup on a saucer. *Big Cup and Plate is made of Cold Cast Porcelain and not meant to serve food and beverages.', 'images/product/FY1112/HTA116.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('216', '-1', '1', 'HTA117', 'Blooms of Good Hope', '120.00', '', 'Like good hope, beautifully arranged 7 Champagne Roses, 8 Maria Roses, 11 Pink Roses, Baby Breath and Statices is a must-have because they lend positivism to any home.', 'images/product/FY1112/HTA117.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('217', '-1', '1', 'HTA118', 'Blooms of Wonderland', '120.00', '', 'You can bring a piece of wonderland home today with Baby Breath, Pink Eustomas, Pink Mini Roses, Hypericum and Purple Phoenix.', 'images/product/FY1112/HTA118.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('218', '-1', '1', 'HTA119', 'Blooms of Chic', '120.00', '', 'Match up to the designer feel of your treasured living space with Maroon Cymbidiums, Red Alstromerias, Anne Black Orchids, Mini Roses and Baby Breath stylishly put together in a 70cm Tall Glass.', 'images/product/FY1112/HTA119.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('219', '-1', '1', 'HTA120', 'Blooms of Magnificence', '100.00', '', 'Magnificence grand and outstanding, Brassica, Alstromerias, Easter Lilies, Mattiolas and Statices arranged in 40cm Black Cylinder Glass Vase serve to jazz up any treasured living space instantly!', 'images/product/FY1112/HTA120.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('220', '-1', '1', 'HTA121', 'Blooms of Beautiful Paradise', '100.00', '', 'You can bring a piece of paradise home with Bird of Paradise and Peach Gerberas arranged in a Glass Vase with Stand.', 'images/product/FY1112/HTA121.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('221', '-1', '1', 'HTA122', 'Blooms of Majestic Grandeur', '150.00', '', 'Wow your guest with the grand display of Heliconias, Orchids and Anthuriums arranged in Glass Vase with Stand that speak of majestic grandeur.', 'images/product/FY1112/HTA122.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('222', '-1', '1', 'HTA123', 'Blooms of Tropical Fancy', '100.00', '', 'Bring a dose of the exotic tropics home with Antirrhinums, Statices, Bird of Paradise and Sunflowers arranged in an outstanding 60cm Balck Cylinder Glass Vase.', 'images/product/FY1112/HTA123.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('223', '-1', '1', 'HTA124', 'Blooms of Many Smiles', '120.00', '', 'Warm up any home instantly with the sunny arrangement of 8 Sunflowers in a Round Vase with Gold Leaves.', 'images/product/FY1112/HTA124.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('224', '-1', '1', 'HTA125', 'Blooms of My Summer Dreams', '200.00', '', 'Turn your house into a home with the warm and cheerful bed of Yellow Cymbidiums and Sunflowers in a Porcelain Large Quad Bowl.', 'images/product/FY1112/HTA125.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('225', '-1', '1', 'HTA126', 'Blooms of Fantasy', '100.00', '', 'Lend a touch of fantasy to your treasured living space with beautiful Oriental Lilies arranged in a Glass Bowl.', 'images/product/FY1112/HTA126.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('226', '-1', '1', 'HTA127', 'Blooms of Elegance', '120.00', '', 'Add a touch of elegance to your treasure living space with beautiful Oriental Lilies, Easter Lilies and White Orchids arranged in a Giant Wine Glass.', 'images/product/FY1112/HTA127.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('227', '-1', '1', 'HTA128', 'Blooms of My Favourite Garden', '150.00', '', 'You can\'t bring your home into the garden but you can now bring a garden into your home! White Cymbidiums, Champagne Roses, Easter Lilies and Statices arranged in a Green Glass Vase is almost a garden on its own!', 'images/product/FY1112/HTA128.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('228', '-1', '1', 'HTA129', 'Blooms of Luxury', '150.00', '', 'When it comes to lending a touch of luxury to your treasured living space. an elegant arrangement of Easter Lilies, Antirrhinums, Champagne Roses and Statices gives that piece of designer furniture a run for its money anytime!', 'images/product/FY1112/HTA129.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('229', '-1', '1', 'HTA130', 'Blooms of Sophistication', '150.00', '', 'Add a touch of sophistication to your treasured living space with elegant Easter Lilies arranged in clear Mushroom Glass.', 'images/product/FY1112/HTA130.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('230', '-1', '1', 'HTA131', 'Blooms of Graceful Purity', '128.00', '', 'Lend a dose of classy sophistication to any designer home with Phalaenopsis Plant, Crassula Plant, Peperomia and Fittonia arranged in a Glass Vase.', 'images/product/FY1112/HTA131.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('231', '-1', '1', 'HTA132', 'Blooms of Oriental Charms', '200.00', '', 'Add a touch of oriental charms to your treasured living space with Cymbidiums, Eustomas, Statices and Baby Breath beautifully put together in a Metallic Purple Vase.', 'images/product/FY1112/HTA132.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('232', '-1', '1', 'HTA133', 'Blooms of Oriental Fancy', '200.00', '', 'Introduce oriental notes to your treasured living space with Phalaenopsis Plants arranged in a classy Round Vase with Gold Leaves.', 'images/product/FY1112/HTA133.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('233', '-1', '1', 'HVW101', 'Vine Joy', '65.00', '', 'Cheers to the joyous mood with a good bottle of Chateau Allegret Bordeaux Red Wine 75cl dressed with sunny Sunflowers.', 'images/product/FY1112/HVW101.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('234', '-1', '1', 'HVW102', 'Vine Rouge', '80.00', '', 'Toast to the happiness with a good bottle of Chateau Saint Floran Bordeaux Red Wine 75cl and Millton Raisins Milk Chocolate 150g jazzed up with Red Roses and Matthiolas.', 'images/product/FY1112/HVW102.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('235', '-1', '1', 'HVW103', 'Vine Paradise', '100.00', '', 'Cheers to the joyous celebration with a good bottle of wine! Gerberas, Bird of Paradise lend a touch of luxury to Chateau Du Barail Reserve Bordeaux Red Wine 75cl.', 'images/product/FY1112/HVW103.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('236', '-1', '1', 'HVW104', 'Vine Celebration', '100.00', '', 'Complete the celebration with fine wine and chocolate! Maroon Cymbidiums and Mini Roses jazz up the gifts of Chateau Du Barail Reserve Bordeaux Red Wine 75cl and Ferrero Rocher Chocolate 300g.', 'images/product/FY1112/HVW104.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('237', '-1', '1', 'HVW105', 'Vine Grace', '135.00', '', 'Toast to the happiness with fine wine! Champagne Roses and Oriental Lilies jazz up the gifts of Chateau Du Barail Bordeaux Red Wine 2x75cl.', 'images/product/FY1112/HVW105.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('238', '-1', '1', 'HVW106', 'Vine Dual', '100.00', '', 'Toast to the happy ocassion with the finest wines of Chateau Margerots Bordeaux Superior Red Wine 2x75cl.', 'images/product/FY1112/HVW106.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('239', '-1', '1', 'HVW107', 'Vine Splendor', '150.00', '', 'Have a splendid celebration with finest wines! Maroon Cymbidiums and Pink Wax Flowers dress the fine wines of Chateau Allegret Bordeaux Red Wine 2x75cl.', 'images/product/FY1112/HVW107.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('240', '-1', '1', 'HVW108', 'Vine Poise', '135.00', '', 'Tease the palette of any connoisseur with Chateaux Allegret Bordeaux Red Wine 2x75cl and Lindt Lindor Swiss Milk Chocolate 200g.', 'images/product/FY1112/HVW108.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('241', '-1', '1', 'HVW109', 'Vine Premium', '150.00', '', 'Delight any connoisseur with fine wine and chocolate! Cymbidiums and Hypericum brighten the gifts of Chateau Du Barail Reserve Bordeaux Red Wine 2x75cl and Lindt Lindor Swiss Extra Dark Chocolate 200g.', 'images/product/FY1112/HVW109.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('242', '-1', '1', 'HVW110', 'Vine Finest', '150.00', '', 'Lend a touch of luxury to any happy ocassion with finest wines and Chocolate. Peperomia Plant dresses the gifts of Chateau Allegret Bordeaux Red Wine 75cl, Chateau Saint Floran Bordeaux Red Wine 75cl and Ferrero Rocher Chocolate 300g.', 'images/product/FY1112/HVW110.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('243', '-1', '1', 'HVW111', 'Vine Garden', '150.00', '', 'Add a touch of majestic grandeur to any celebration with the fine wines of Chateau Allegret Brordeaux Red Wine 2x75cl dressed in luscious bed of Cymbidiums, Pink Matthiolas, Pink Oriental Lilies and Pink Hydrangeas.', 'images/product/FY1112/HVW111.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('244', '-1', '1', 'HVW112', 'Vine Grandiose', '200.00', '', 'No celebration is complete without fine wines and chocolates! Pretty Roses and Mini Roses jazz upthe gifts of Chateau Du Barail Reserve Bordeaux Red Wine 75cl, Chateau Allegret Bordeaux Red Wine 75cl, Chateau Margerots Bordeaux Superior Red Wine 75cl, Brown & Haley Almond Roca 140g and a pair of Crystal Wine Glasses.', 'images/product/FY1112/HVW112.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('245', '-1', '1', 'HVW113', 'Vine Excellence', '280.00', '', 'Surprise the true blue wine connoisseur with a classy wine basket dressed with Beautiful Roses, Lilies and Alstromerias. Consist of Chateau Allegret Bordeaux Red Wine 2x75cl and Chateau Margerots Bordeaux Superior Red Wine 2x75cl.', 'images/product/FY1112/HVW113.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('246', '-1', '1', 'HVW114', 'Vine Cheers', '180.00', '', 'Send some cheers along with a toast! Sunny Orange Roses and Sunflowers jazz up the gifts of Chateaux Du Barail Reserve Bordeaux Red Wine 2x75cl, Lindt Swiss Thin Milk Chocolate 125g, Lindt Swiss Thin Orange Chocolate 125g, Lindt Swiss Thin Mocha Chocolate 125g and Lindt Swiss Thin Dark Milk Chocolate 125g.', 'images/product/FY1112/HVW114.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('247', '-1', '1', 'HVW115', 'Vine Toast', '250.00', '', 'Toast to any celebration in the most lavish fashion with Chateaux Du Barail Reserve Bordeaux Red Wine 75cl, Chateau Saint Floran Bordeaux Red Wine 75cl, Chateau Allegret Bordeaux Red Wine 75cl, Chateau Margerots Bordeaux Superior Red Wine 75cl, Lindt Excellence Dark 85% Coco Thin Chocolate 125g, Lindt Excellence Dark 70% Coco Thin Chocolate 125g and Ferrero Rocher Chocolate 300g delivered in a luxurious Leatherette Box.', 'images/product/FY1112/HVW115.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('248', '-1', '1', 'HVW116', 'Vine Choice', '180.00', '', 'The choice of good wines and chocolates to complement any celebration is clearly not a difficult one! Cymbidiums, Mini Roses, Statices and Baby Breath lend a soft touch to the gifts of Chateaux Allegret Bordeaux Red Wine 75cl, Chateaux Margerots Bordeaux Superior Red Wine 75cl, Lindt Lindor Swiss Milk Chocolate 200g and Lindt Lindor Extra Dark Swiss Chocolate 200g.', 'images/product/FY1112/HVW116.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('249', '-1', '1', 'HVW117', 'Vine Harvest', '180.00', '', 'Like a good harvest worth celebrating, complement the joyful mood with fine wines and chocolates! Cheerful Orange Roses, Hypericum, and Alstromerias lend a happy touch to Chateau Du Barail Reserve Bordeaux Red Wine 2x75cl, Lindt Lindor Assortment Swiss Chocolate 200g, Lindt Les Grandes 32% Almendras Leche Chocolate 150g, Lindt Les Grandes 32% Almendras Negro Chocolate 150g, Foxâ€™s Crinkles Chocolate Cookies 200g and Almonds Salt Roasted in Shell 120g.', 'images/product/FY1112/HVW117.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('250', '-1', '1', 'HVW118', 'Vine Best', '300.00', '', 'The true blue wine connoisseur will agree that nothing can add a touch of class and luxury to any celebration like the finest wines. Elegant blooms of Cymbidiums dress the Leatherette Box consisting Ventisquero Gran Reserve Chardonnay White Wine 75cl, Chateaux Allegret Bordeaux Red Wine 75cl, Chateaux Margerots Bordeaux Superior Red Wine 75cl, Chateau Du Barail Reserve Bordeaux Red Wine 75cl, Chateau Saint Floran Bordeaux Red Wine 75cl.', 'images/product/FY1112/HVW118.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('251', '-1', '1', 'HVW119', 'Vine Sparkles', '210.00', '', 'Enjoy a splendid celebration and toast to happiness! Beautiful Oriental Lilies, Matthiolas and Roses brighten the gifts of Moet & Chandon Brut Imperial Champagne 75cl, Ferrero Rocher 200g and a pair of Crystal Champagne Glass.', 'images/product/FY1112/HVW119.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('252', '-1', '1', 'HVW120', 'Vine Bubbly', '398.00', '', 'A lavish wine basket delivers the touch of luxury that is sure to bring a smile to any wine connoisseur. Exotic Green Cymbidiums and Hypericums jazz up the gifts of Moet & Chandon Curvee DOM Perignon Champagne 75cl, Lindt Lindor Extra Dark Swiss Chocolate 200g, Lindt Lindor Swiss Milk Chocolate Gift Box 112g.', 'images/product/FY1112/HVW120.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('253', '-1', '1', 'HEH101', 'Stylux 3 pcs Breakfast Set', '130.00', '', '', 'images/product/FY1112/HEH101.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '2', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('254', '-1', '1', 'HEH103', 'Morries 3-in-1 Breakfast Maker', '80.00', '', 'Morries 3-in-1 Breakfast Maker', 'images/product/FY1112/HEH103.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('255', '-1', '1', 'HEH104', 'Toyomi 2 Slots Toaster', '60.00', '', 'Toyomi 2 Slots Toaster', 'images/product/FY1112/HEH104.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('256', '-1', '1', 'HEH106', 'Sona 19L Electrical Oven', '100.00', '', 'Sona 19L Electrical Oven', 'images/product/FY1112/HEH106.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('257', '-1', '1', 'HEH108', 'Toyomi 1.5L Rice Cooker with Stainless Steel Pot', '80.00', '', '', 'images/product/FY1112/HEH108.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '2', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('258', '-1', '1', 'HEH109', 'Toyomi 3 Tiers Stainless Steel Steamer', '135.00', '', '', 'images/product/FY1112/HEH109.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '2', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('259', '-1', '1', 'HEH110', 'Stylux 2 Cups Coffee Maker', '50.00', '', 'Stylux 2 Cups Coffee Maker', 'images/product/FY1112/HEH110.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('260', '-1', '1', 'HEH111', 'Toyomi Blender & Miller', '80.00', '', 'Toyomi Blender & Miller', 'images/product/FY1112/HEH111.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('261', '-1', '1', 'HEH112', 'Stylux 12L Convention Oven', '120.00', '', 'Stylux 12L Convention Oven', 'images/product/FY1112/HEH112.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('262', '-1', '1', 'HEH113', 'Sona 6L 3 Ways Electrical Airport', '100.00', '', 'Sona 6L Ways Electrical Airport', 'images/product/FY1112/HEH113.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('263', '-1', '1', 'HEH114', 'Iona 1.2L Cordless Kettle & Noodle Cooker', '60.00', '', '', 'images/product/FY1112/HEH114.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '2', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('264', '-1', '1', 'HEH116', 'Toyomi Grill Pan', '120.00', '', 'Toyomi Grill Pan', 'images/product/FY1112/HEH116.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('265', '-1', '1', 'HEH117', 'Toyomi Vacuum Cleaner 1600W', '120.00', '', 'Toyomi Vacuum Cleaner 1600W', 'images/product/FY1112/HEH117.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('266', '-1', '1', 'HEH118', 'Morries Garment Steamer', '150.00', '', 'Morries Garment Steamer', 'images/product/FY1112/HEH118.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('267', '-1', '1', 'HPG101', 'Lindt\'s Primest', '100.00', '', '.Lindt Hazelnut De Luxe Chocolate 151g\nÂ·Lindt Lindor Assortment Chocolate 200g\nÂ·Lindt Lindor Extra Dark Chocolate 200g\nÂ·Lindt Lindor Milk Chocolate Gift Box 112g\nÂ·Packaged with Elegant Lilies in Designer Leatherette Tray', 'images/product/FY1112/HPG101.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('268', '-1', '1', 'HPG102', 'Joyous Lindt', '50.00', '', 'Â·Lindt Hazelnut De Luxe Swiss Chocolate 75.5g\n.Lindt Almond De Luxe Swiss Chocolate 75.5gÂ·Packaged with Cheerful Gerberas in Specially Designer Laser Crafted Wooden Box', 'images/product/FY1112/HPG102.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('269', '-1', '1', 'HPG104', 'Best of Lindt', '100.00', '', 'Â·Lindt Lindor Assortment Swiss Chocolate 200g\nÂ·Lindt Swiss Thins Orange Milk Chocolate 125g\nÂ·Lindt Almond De Luxe Swiss Chocolate 151g\nÂ·Packaged with Mini Roses and Alstromerias in Designer Basket', 'images/product/FY1112/HPG104.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('270', '-1', '1', 'HPG105', 'Simply Lindt', '100.00', '', 'Â·Lindt Lindor Assortment Swiss Chocolate 200g\nÂ·Lindt Swiss Thins Mocha Milk Chocolate 125g\nÂ·Lindt Excellence Orange Intense Dark Thins Swiss Chocolate 125g\nÂ·Lindt Les Grandes 32% Almendras Leche Swiss Chocolate 150g\nÂ·Lindt Les Grandes 32% Almendras Negro Swiss Chocolate 150g Â·Packaged with Champagne Roses and Alstromerias in Metal Tray', 'images/product/FY1112/HPG105.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('271', '-1', '1', 'HPG106', 'Stately Gourmet Basket', '120.00', '', 'Â·Lindt Hazelnut De Luxe Swiss Chocolate 151g\nÂ·Lindt Lindor Assortment Swiss Chocolate 200g\nÂ·Lindt Lindor Extra Dark Swiss Chocolate 200g\nÂ·Danson Tiramisu Dark Chocolate 70g\nÂ·Haco Suiss Arabica Mild Roast Soluble Coffee 100g Â·Akbar 100% Pure Ceylon Gold Tea 225g\nÂ·Fox\'s Crinkles Chocolate Cookies 200g\nÂ·Fox\'s Chunkie Dark Chocolate Cookies 200g\nÂ·Packaged in Javanese Basket', 'images/product/FY1112/HPG106.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('272', '-1', '1', 'HPG107', 'Deluxe Choice Cabinet', '180.00', '', 'Â·Lindt Lindor Milk Swiss Chocolate 200g\nÂ·Lindt Almond De Luxe Swiss Chocolate 151g\nÂ·Lindt Swiss Milk Chocolate Wafer and Hazelnut Cream 100g Â·Lindt Swiss Milk Chocolate In Almond Filling 2x100g Â·Lindt Excellence Mini Chocolate 3x35g\nÂ·Fox\'s Chunkie Fruit & Nut Chunk Cookies 200g\nÂ·Fox\'s Crinkles Chocolate Cookies 200g\nÂ·Fox\'s Chunkie Dark Chocolate Cookies 200g\nÂ·Fox\'s Chunkie Milk Chocolate Cookies 200g\nÂ·Packaged in 100cmx30cm Black Cabinet', 'images/product/FY1112/HPG107.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('273', '-1', '1', 'HPG108', 'Indulgence Gift Basket', '100.00', '', 'Â·Golden Bonbon Assorted Almond Nougat 250g\nÂ·Haco Suiss Arabica Mild Roast Soluble Coffee 100g\nÂ·Lindt Hazelnut De Luxe Chocolate 75.5g\nÂ·Fox\'s Crinkles Chocolate Cookies 200g\nÂ·Sweet Toffee Choice 150g\nÂ·Beryl\'s Assortito Milk, White & Dark Chocolate 46g\nÂ·Packaged in Wooden Tray', 'images/product/FY1112/HPG108.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('274', '-1', '1', 'HPG109', 'Bountiful Gift Basket', '150.00', '', 'Â·Lindt Almond De Luxe Swiss Chocolate 151g\nÂ·Lindt Lindor Milk Swiss Chocolate 200g\nÂ·Lindt Lindor Assortment Swiss Chocolate 200g\nÂ·Guylian Opus Chocolate 200g\nÂ·Golden Bonbon Assorted Almond Nougat 250g\nÂ·Ferrero Rocher Chocolate 200g\nÂ·Kambly Mont Choco Biscuits 100g\nÂ·Brown & Haley Almond Roca 140g\nÂ·Fox\'s Chunkie Dark Chocolate Cookies 200g\nÂ·Packaged in Handcrafted Basket Tray', 'images/product/FY1112/HPG109.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('275', '-1', '1', 'HPG111', 'Extravagant Gift Basket', '60.00', '', 'Â·Golden Bonbon Blueberry Nougat 200g\nÂ·Kellogg\'s LCMS Split Stix Yoghurty Bars 138g\nÂ·Fox\'s Crystal Clear Mints Candy 180g\nÂ·Elledi Poker Cocoa Cream Wafers 150g\nÂ·Beryl\'s Raisin Coated with Yoghurt White Chocolate 70g\nÂ·Packaged in Leatherette Box', 'images/product/FY1112/HPG111.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('276', '-1', '1', 'HPG112', 'Pink Perfection Basket', '80.00', '', 'Â·Golden Bonbon Cranberry Nougat 200g\nÂ·Lindt Lindor Swiss Milk Chocolate Gift Box 112g\nÂ·Akbar 100% Pure Ceylon Tea 225g\nÂ·Brown & Haley Almond Roca 140g\nÂ·Walkers Belgian Chocolate Chunk Biscuits 150g\nÂ·Millton Almonds Milk Chocolate 150g\nÂ·Packaged in Paper Tray', 'images/product/FY1112/HPG112.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('277', '-1', '1', 'HPG113', 'Succulent Gift Basket', '80.00', '', 'Â·Lindt Lindor Assortment Swiss Chocolate 200g\nÂ·Famous Amos Chocolate Chip & Pecan Cookies 351g\nÂ·Danson Mango Milk Chocolate 70g\nÂ·Millton Espresso White Chocolate 120g\nÂ·Fox\'s Crinkles Chocolate Cookies 200g\nÂ·Natural Almonds Salt Roasted in Shell 120g\nÂ·Packaged in Basket', 'images/product/FY1112/HPG113.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('278', '-1', '1', 'HPG114', 'Premium Select Basket', '85.00', '', 'Â·Golden Bonbon Blueberry Nougat 200g\nÂ·Danson Dark & White Chocolate 100g\nÂ·Millton Tiramisu Almond Milk Chocolate 180g\nÂ·Lindt Swiss Classic Milk Chocolate with Whole Hazelnuts 2x100g Â·Fox\'s Chunkie Milk Chocolate Cookies 200g\nÂ·Elledi Poker Cocoa Cream Wafers 150g\nÂ·Beryl\'s Raisin Coated with Yoghurt White Chocolate 70g Â·Packaged in Metal Tray', 'images/product/FY1112/HPG114.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('279', '-1', '1', 'HPG115', 'Grandeur Gift Basket', '80.00', '', 'Â·Danson Tiramisu Dark Chocolate 150g\nÂ·Lindt Lindor Milk Chocolate Gift Box 112g\nÂ·Brown & Haley Almond Roca 140g\nÂ·Millton Almonds Milk Chocolate 150g\nÂ·Fox\'s Chunkie Dark Chocolate Cookies 200g\nÂ·Delfi Dark Flavour Chocolate Sticks 75g\nÂ·Beryl\'s Almond Coated with Milk Chocolate 70g\nÂ·Packaged in Metal Tray', 'images/product/FY1112/HPG115.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('280', '-1', '1', 'HPG116', 'Snack-a-lot Basket', '100.00', '', 'Â·Lindt Almond De Luxe Chocolate 151g\nÂ·Ferrero Rocher Chocolate 200g\nÂ·Famous Amos Chocolate Chip & Pecan Cookies 351g\nÂ·Kellogg\'s LCMS Split Stix Yoghurty Bars 138g\nÂ·Brown & Haley Macadamia Roca 113g\nÂ·Millton Assortment Milk Chocolate 150g\nÂ·Fox\'s Crystal Clear Mints Candy 180g\nÂ·ST Daifour Snak Pack Jam 3x28g\nÂ·Packaged in Metal Basket', 'images/product/FY1112/HPG116.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('281', '-1', '1', 'HPG117', 'Supreme Gift Basket', '150.00', '', 'Â·Danson Dark & White Chocolate 100g\nÂ·Millton Tiramisu Almond Milk Chocolate 180g\nÂ·Lindt Swiss Classic Milk Chocolate with Whole Hazelnuts 100g\nÂ·Fox\'s Chunkie Milk Chocolate Cookies 200g\nÂ·Fox\'s Crystal Clear Mints Candy 180g\nÂ·Elledi Poker Cocoa Cream Wafers 150g\nÂ·Packaged in Leatherette Suitcase', 'images/product/FY1112/HPG117.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('282', '-1', '1', 'HPG119', 'Majestic Gift Basket', '200.00', '', 'Â·Royalty White Grape Sparkling Juice 75cl\nÂ·Lindt Almond De Luxe Swiss Chocolate 151g\nÂ·Lindt Lindor Swiss Milk Chocolate 200g\nÂ·UCC Blue Mountain Instant Coffee 50g\nÂ·Ferrero Rocher Chocolate 300g\nÂ·Golden Bonbon Nougat 200g\nÂ·Akbar 100% Pure Ceylon Tea 225g\nÂ·Famous Amos Chocolate Chip & Pecan Cookies 351g\nÂ·Beryl\'s Assorted Chocolate 200g\nÂ·Beryl\'s Tiramisu Assorted Chocolate 130g Â·Ragolds Natural Fruitmix Candy 150g\nÂ·Brown & Haley Macadamia Roca 113g\nÂ·Brown & Haley Almond Roca 140g\nÂ·Walkers Belgian Chocolate Chunk Biscuits 150g\nÂ·Camel Natural Pistachios 120g\nÂ·Natural Almonds Salt Roasted in Shell 120g\nÂ·Packaged in Giant Basket', 'images/product/FY1112/HPG119.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('283', '-1', '1', 'HPG120', 'Gourmet Treats', '85.00', '', 'Â·Chateau Saint Floran Bordeaux Red Wine 75cl\nÂ·Lindt Almond De Luxe Swiss Chocolate 75.5g\nÂ·Brown & Haley Almond Roca 140g\nÂ·Beryl\'s Tiramisu Chocolate 65g\nÂ·Fox\'s Crinkles Chocolate Cookies 200g\nÂ·Camel Natural Pistachios 120g\nÂ·Packaged in Handwoven Basket', 'images/product/FY1112/HPG120.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('284', '-1', '1', 'HPG121', 'Gourmet Classic', '100.00', '', 'Â·Chateau Saint Floran Bordeaux Red Wine 75cl\nÂ·Lindt Lindor Swiss Milk Chocolate Gift Box 112g\nÂ·Ragolds Natural Fruitmix Candy 150g\nÂ·Walkers Belgian Chocolate Chunk Biscuits 150g\nÂ·Pik Nik Ketchup & Fries Flavor 255g\nÂ·Camel Natural Pistachios 120g\nÂ·Packaged in Basket', 'images/product/FY1112/HPG121.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('285', '-1', '1', 'HPG123', 'Simply Gourmet', '150.00', '', 'Â·Chateau Du Barail Reserve Bordeaux Red Wine 75cl Â·Lindt Lindor Assortment Swiss Chocolate 200g\nÂ·Ferrero Rocher Chocolate 300g\nÂ·Golden Bonbon Assorted Almond Nougat 250g\nÂ·UCC Special Colombia 100% Coffee 100g Â·Akbar 100% Pure Ceylon Tea 225g\nÂ·Packaged in Leatherette Tray', 'images/product/FY1112/HPG123.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('286', '-1', '1', 'HPG124', 'Traditional Gourmet', '120.00', '', 'Â·Walkers Belgian Chocolate Chunk Biscuits 150g\nÂ·Pik Nik Ketchup & Fries Flavor 113g\nÂ·Foxâ€™s Crystal Clear Fruits Candy 180g\nÂ·SW 100% Pure Pineapple Juice 2x240ml\nÂ·Camel Premium Cashew Nuts 120g\nÂ·Packaged in Wooden Crate', 'images/product/FY1112/HPG124.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('287', '-1', '1', 'HPG125', 'Gourmet Passsion', '160.00', '', 'Â·Chateau Allegret Bordeaux Red Wine 75cl\nÂ·Haco Suiss Espresso Dark Roast Soluble Coffee 100g\nÂ·Golden Bonbon Cranberry Nougat 200g\nÂ·Brown & Haley Almond Roca 140g\nÂ·Lindt Lindor Milk Chocolate Gift Box 112g\nÂ·Danson Tiramisu Dark Chocolate 150g\nÂ·Walkers Strawberries & Cream Biscuits 150g\nÂ·Delfi Dark Flavour Chocolate Sticks 75g\nÂ·Pik Nik Ketchup & Fries Flavor Real Potato Crisps 113g\nÂ·Packaged in Leatherette Box', 'images/product/FY1112/HPG125.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('288', '-1', '1', 'HPG126', 'Gourmet Flare', '180.00', '', 'Â·Otard XO Gold De Cognac 35cl\nÂ·Lindt Lindor Swiss Milk Chocolate Gift Box 112g\nÂ·Beryl\'s Assorted Chocolate 200g\nÂ·Famous Amos Chocolate Chips Cookies 168g\nÂ·Kambly Mont Choco Biscuits 100g\nÂ·Delfi Dark Mint Flavour Chocolate Sticks 75g\nÂ·Packaged in Leatherette Suitcase', 'images/product/FY1112/HPG126.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('289', '-1', '1', 'HPG127', 'Gourmet Splendor', '200.00', '', 'Â·Otard XO Gold De Cognac 35cl\nÂ·Chateau Du Barail Reserve Bordeaux Red Wine 75cl\nÂ·Lindt Hazelnut De Luxe Swiss Chocolate 151g\nÂ·Lindt Lindor Swiss Milk Chocolate Gift Box 112g\nÂ·Haco Suiss Espresso Dark Roast Soluble Coffee 100g\nÂ·Walkers Belgian Chocolate Chunk Biscuits 150g\nÂ·Fox\'s Crinkles Chocolate Cookies 200g\nÂ·Camel Natural Pistachios 120g\nÂ·Packaged in Leatherette Tray', 'images/product/FY1112/HPG127.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('290', '-1', '1', 'HPG128', 'Gourmet Ultimate', '250.00', '', 'Â·Chivas Regal 12Years Whisky 75cl\nÂ·Chateau Du Barail Reserve Bordeaux Red Wine 75cl\nÂ·Lindt Almond De Luxe Swiss Chocolate 151g\nÂ·Lindt Lindor Extra Dark Swiss Chocolate 200g\nÂ·Famous Amos Chocolate Chip & Pecan Cookies 351g\nÂ·ST Daifour High Fruit Content Spread 170g\nÂ·Packaged in Leatherette Box', 'images/product/FY1112/HPG128.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('291', '-1', '1', 'HPG129', 'Gourmet Deluxe', '300.00', '', 'Â·Moet & Chandon Brut Imperial Champagne 75cl\nÂ·Chateau Allegret Bordeaux Red Wine 75cl\nÂ·Lindt Lindor Assortment Swiss Chocolate 200g\nÂ·Lindt Lindor Swiss Milk Chocolate Gift Box 112g\nÂ·Ferrero Rocher Chocolate 300g\nÂ·Guylian Opus Chocolate 200g\nÂ·Akbar 100% Pure Ceylon Tea 225g\nÂ·Fox\'s Crinkles Chocolate Cookies 200g\nÂ·Packaged in Leatherette Box', 'images/product/FY1112/HPG129.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('292', '-1', '1', 'HPG130', 'Finest Gourmet', '500.00', '', 'Â·Martell Cordon Bleu 70cl\nÂ·Lindt Lindor Assortment Chocolate 200g\nÂ·Ferrero Rocher Chocolate 300g\nÂ·Brown & Haley Almond Roca 340g\nÂ·Haco Suiss Espresso Dark Roast Soluble Coffee 100g\nÂ·Walkers Belgian Chocolate Chunk Biscuits 150g\nÂ·Fox\'s Crinkles Classic Cookies 200g\nÂ·Packaged in Leatherette Suitcase', 'images/product/FY1112/HPG130.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('293', '-1', '1', 'HPG131', 'The Tea Club', '100.00', '', '', 'images/product/FY1112/HPG131.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '2', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('294', '-1', '1', 'HPG132', 'Let\'s Party', '100.00', '', 'Â·Urban Designer\'s Gourmet Porcelain Tea Set... Tea Pot with Burner, 2pcs Cups and Saucers\nÂ·Akbar 100% Pure Ceylon Tea 225g\nÂ·Kambly Mont Choco Biscuits 100g\nÂ·Walkers Chocolate Chunk & Hazelnut Biscuits 150g\nÂ·Foxâ€™s Chunkie Dark Chocolate Cookies 200g\nÂ·Herbage Camomile Tea 30g\nÂ·Packaged in Metal Bird Cage', 'images/product/FY1112/HPG132.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('295', '-1', '1', 'HPG133', 'Natural Choice', '105.00', '', 'Â·Urban Designer\'s Gourmet Porcelain Tea Set... Tea Pot with Burner, 2pcs Spoons, Cups and Saucers\nÂ·100% Natural Milllenia Herbs De-Stress Tea (25 Teabags)\nÂ·100% Natural Milllenia Herbs Calming Tea (25 Teabags)\nÂ·Packaged in Metal Tray', 'images/product/FY1112/HPG133.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('296', '-1', '1', 'HPG134', 'Cup of Joy', '165.00', '', 'Â·Urban Designer\'s Gourmet Porcelain Tea and Coffee Setâ€¦Tea Pot with Burner, Coffee Pot, Creamer Jug, Sugar Canister, 2pcs Coffee Cups, Saucers and Spoons, 2pcs Tea Cups, Saucers and Spoons Â·Packaged with 18 Sweet Everlasting Roses in Porcelain Gourmet Soup Plate in a 100cmx30cm Wooden Cabinet', 'images/product/FY1112/HPG134.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('297', '-1', '1', 'HPG135', 'Reunion Delights', '120.00', '', 'Â·High Quality 2Litres Ceramic Claypot\nÂ·New Moon New Zealand Abalone 425g\nÂ·New Moon Chicken Curry Paste 120g\nÂ·New Moon Fish Curry Paste 120g\nÂ·New Moon Sambal Tumis Paste 120g\nÂ·New Moon Green Curry Paste 120g\nÂ·Packaged with Popular Sunflowers in Basket', 'images/product/FY1112/HPG135.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('298', '-1', '1', 'HPG137', 'Imperial Treasures', '200.00', '', '.High Quality 5Litres Ceramic Claypot and 2Litres Ceramic Claypot\n.Skylight New Zealand Superior Abalone 425g\n.Skylight Jin Wang Bao 425g\n.Skylight Pacific Clams 425g\n.Everlasting Floral in Ceramic Vase\n.Packaged in Wooden Tray', 'images/product/FY1112/HPG137.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('299', '-1', '1', 'HPG138', 'New Moon Delights', '228.00', '', '', 'images/product/FY1112/HPG138.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('300', '-1', '1', 'HAF101', 'Saigon Sunrise', '50.00', '', '', 'images/product/FY1112/HAF101.jpg', '65', '65', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('301', '-1', '1', 'HAF102', 'Norway Glory', '80.00', '', '', 'images/product/FY1112/HAF102.jpg', '88', '68', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('302', '-1', '1', 'HAF103', 'Birmingham Spring', '85.00', '', '', 'images/product/FY1112/HAF103.jpg', '95', '68', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('303', '-1', '1', 'HAF104', 'Honolulu Dance', '100.00', '', '', 'images/product/FY1112/HAF104.jpg', '88', '72', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('304', '-1', '1', 'HAF105', 'Zurich Melodies', '80.00', '', '', 'images/product/FY1112/HAF105.jpg', '64', '30', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('305', '-1', '1', 'HAF106', 'Colombia Flora', '150.00', '', '', 'images/product/FY1112/HAF106.jpg', '100', '50', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('306', '-1', '1', 'HAF107', 'Seoul Attraction', '150.00', '', '', 'images/product/FY1112/HAF107.jpg', '121', '52', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('307', '-1', '1', 'HAF108', 'Brazilian Samba', '200.00', '', '', 'images/product/FY1112/HAF108.jpg', '105', '62', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('308', '-1', '1', 'HAF109', 'Texas Sunshine', '250.00', '', '', 'images/product/FY1112/HAF109.jpg', '107', '83', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('309', '-1', '1', 'HAF110', 'Hokkaido Moment', '50.00', '', '', 'images/product/FY1112/HAF110.jpg', '60', '56', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('310', '-1', '1', 'HAF111', 'Berlin Spring', '60.00', '', '', 'images/product/FY1112/HAF111.jpg', '42', '46', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('311', '-1', '1', 'HAF112', 'Paris Centerpiece', '120.00', '', '', 'images/product/FY1112/HAF112.jpg', '48', '38', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('312', '-1', '1', 'HAF113', 'Cherry Otawa', '120.00', '', '', 'images/product/FY1112/HAF113.jpg', '93', '75', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('313', '-1', '1', 'HAF114', 'Sydney Artpiece', '120.00', '', '', 'images/product/FY1112/HAF114.jpg', '112', '58', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('314', '-1', '1', 'HAF115', 'Chiangmai Charms', '100.00', '', '', 'images/product/FY1112/HAF115.jpg', '80', '75', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('315', '-1', '1', 'HAF116', 'Bunbury Bloom', '120.00', '', '', 'images/product/FY1112/HAF116.jpg', '53', '26', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('316', '-1', '1', 'HAF117', 'Peking Pride', '120.00', '', '', 'images/product/FY1112/HAF117.jpg', '75', '62', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('317', '-1', '1', 'HAF118', 'Kolkata Mystic', '100.00', '', '', 'images/product/FY1112/HAF118.jpg', '98', '68', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('318', '-1', '1', 'HAF119', 'Capetown Nectar', '100.00', '', '', 'images/product/FY1112/HAF119.jpg', '78', '63', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('319', '-1', '1', 'HAF120', 'Bhutan Wonders', '300.00', '', '', 'images/product/FY1112/HAF120.jpg', '121', '80', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('320', '-1', '1', 'HAF121', 'Shantou Jewels', '150.00', '', '', 'images/product/FY1112/HAF121.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '2', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('321', '-1', '1', 'HAF122', 'Shandong Peonies', '150.00', '', '', 'images/product/FY1112/HAF122.jpg', '63', '46', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('322', '-1', '1', 'HAF123', 'Glasgow Warmth', '120.00', '', '', 'images/product/FY1112/HAF123.jpg', '89', '40', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('323', '-1', '1', 'HAF124', 'Fujian Gold', '180.00', '', '', 'images/product/FY1112/HAF124.jpg', '83', '66', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('324', '-1', '1', 'HAF125', 'Paisley Purple Perfect', '300.00', '', '', 'images/product/FY1112/HAF125.jpg', '124', '72', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('325', '-1', '1', 'HAF126', 'Tianjin Rouge', '100.00', '', '', 'images/product/FY1112/HAF126.jpg', '65', '83', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('326', '-1', '1', 'HAF127', 'Shanghai Special', '80.00', '', '', 'images/product/FY1112/HAF127.jpg', '112', '45', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('327', '-1', '1', 'HAF128', 'Surabaya Garden', '150.00', '', '', 'images/product/FY1112/HAF128.jpg', '96', '78', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('328', '-1', '1', 'HAF129', 'Osaka Spring', '250.00', '', '', 'images/product/FY1112/HAF129.jpg', '98', '66', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('329', '-1', '1', 'HAF130', 'Singapore Star', '500.00', '', '', 'images/product/FY1112/HAF130.jpg', '170', '93', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('330', '-1', '1', 'HAF131', 'Bangkok Allure', '120.00', '', '', 'images/product/FY1112/HAF131.jpg', '119', '43', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('331', '-1', '1', 'HAF132', 'Kyoto Attraction', '120.00', '', '', 'images/product/FY1112/HAF132.jpg', '119', '43', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('332', '-1', '1', 'HAF133', 'Tianjin Sun', '80.00', '', '', 'images/product/FY1112/HAF133.jpg', '73', '84', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('333', '-1', '1', 'HAF134', 'Beijing Love', '150.00', '', '', 'images/product/FY1112/HAF134.jpg', '85', '70', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('334', '-1', '1', 'HAF135', 'Hanoi Joy', '60.00', '', '', 'images/product/FY1112/HAF135.jpg', '38', '58', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('335', '-1', '1', 'HAF136', 'Xiamen Beauty', '200.00', '', '', 'images/product/FY1112/HAF136.jpg', '101', '108', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('336', '-1', '1', 'HAF137', 'Florence Spring', '120.00', '', '', 'images/product/FY1112/HAF137.jpg', '48', '30', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('337', '-1', '1', 'HAF138', 'New Mexico Sunrise', '100.00', '', '', 'images/product/FY1112/HAF138.jpg', '70', '65', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('338', '-1', '1', 'HGO101', 'Applause', '50.00', '', '', 'images/product/FY1112/HGO101.jpg', '188', '0', '83', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('339', '-1', '1', 'HGO102', 'Wealth', '60.00', '', '', 'images/product/FY1112/HGO102.jpg', '198', '0', '68', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('340', '-1', '1', 'HGO103', 'Jubilee', '60.00', '', '', 'images/product/FY1112/HGO103.jpg', '178', '0', '75', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('341', '-1', '1', 'HGO104', 'Success', '60.00', '', '', 'images/product/FY1112/HGO104.jpg', '188', '0', '96', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('342', '-1', '1', 'HGO105', 'Victory', '60.00', '', '', 'images/product/FY1112/HGO105.jpg', '180', '0', '94', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('343', '-1', '1', 'HGO106', 'Slpendid', '80.00', '', '', 'images/product/FY1112/HGO106.jpg', '183', '0', '104', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('344', '-1', '1', 'HGO107', 'Rejoice', '80.00', '', '', 'images/product/FY1112/HGO107.jpg', '193', '0', '80', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('345', '-1', '1', 'HGO108', 'Triumph', '100.00', '', '', 'images/product/FY1112/HGO108.jpg', '178', '0', '90', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('346', '-1', '1', 'HGO109', 'Rosy', '250.00', '', '', 'images/product/FY1112/HGO109.jpg', '183', '0', '110', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('347', '-1', '1', 'HGO110', 'Promising', '150.00', '', '', 'images/product/FY1112/HGO110.jpg', '203', '0', '97', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('348', '-1', '1', 'HGO111', 'Prosperous', '150.00', '', '', 'images/product/FY1112/HGO111.jpg', '200', '0', '138', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('349', '-1', '1', 'HGO112', 'Stardust', '120.00', '', '', 'images/product/FY1112/HGO112.jpg', '193', '0', '128', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('350', '-1', '1', 'HGO113', 'Ruby Arch', '180.00', '', '', 'images/product/FY1112/HGO113.jpg', '200', '0', '150', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('351', '-1', '1', 'HGO115', 'Blooming Arch', '200.00', '', '', 'images/product/FY1112/HGO115.jpg', '180', '0', '130', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('352', '-1', '1', 'HGO116', 'Rosy Arch', '250.00', '', '', 'images/product/FY1112/HGO116.jpg', '180', '0', '130', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('353', '-1', '1', 'HGO117', 'Spring Arch', '200.00', '', '', 'images/product/FY1112/HGO117.jpg', '180', '0', '130', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('354', '-1', '1', 'HGO118', 'Flourishing Arch', '250.00', '', '', 'images/product/FY1112/HGO118.jpg', '180', '0', '130', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('355', '-1', '1', 'HGO119', 'Amber Pedestal', '138.00', '', '', 'images/product/FY1112/HGO119.jpg', '220', '0', '65', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('356', '-1', '1', 'HGO120', 'Cheerful Pedestal', '80.00', '', '', 'images/product/FY1112/HGO120.jpg', '165', '0', '80', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('357', '-1', '1', 'HGO121', 'Sunny Pedestal', '150.00', '', '', 'images/product/FY1112/HGO121.jpg', '185', '0', '125', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('358', '-1', '1', 'HGO122', 'Coral Pedestal', '150.00', '', '', 'images/product/FY1112/HGO122.jpg', '165', '0', '95', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('359', '-1', '1', 'HGO123', 'Russet Pedestal', '150.00', '', '', 'images/product/FY1112/HGO123.jpg', '215', '0', '84', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('360', '-1', '1', 'HGO125', 'Garden Pedestal', '280.00', '', '', 'images/product/FY1112/HGO125.jpg', '180', '0', '140', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('361', '-1', '1', 'HGO126', 'Multifold Prosperity', '198.00', '', '', 'images/product/FY1112/HGO126.jpg', '75', '0', '56', '0', '1', '0', '0000-00-00', '0000-00-00', '2', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('362', '-1', '1', 'HGO127', 'Lavish Prosperity', '128.00', '', '', 'images/product/FY1112/HGO127.jpg', '200', '0', '90', '0', '1', '0', '0000-00-00', '0000-00-00', '2', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('363', '-1', '1', 'HGO128', 'Bountiful Prosperity', '150.00', '', '', 'images/product/FY1112/HGO128.jpg', '178', '0', '106', '0', '1', '0', '0000-00-00', '0000-00-00', '2', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('364', '-1', '1', 'HGO130', 'Double Prosperity', '80.00', '', '', 'images/product/FY1112/HGO130.jpg', '180', '0', '96', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('365', '-1', '1', 'HGO131', 'Greater Prosperity', '120.00', '', '', 'images/product/FY1112/HGO131.jpg', '198', '0', '80', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('366', '-1', '1', 'HGO132', 'Reaching Prosperity', '150.00', '', '', 'images/product/FY1112/HGO132.jpg', '192', '0', '90', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('367', '-1', '1', 'HGO133', 'Super Prosperity', '150.00', '', '', 'images/product/FY1112/HGO133.jpg', '198', '0', '108', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('368', '-1', '1', 'HGO134', 'Golden Luck', '50.00', '', '', 'images/product/FY1112/HGO134.jpg', '171', '0', '100', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('369', '-1', '1', 'HGO135', 'Golden Wealth', '60.00', '', '', 'images/product/FY1112/HGO135.jpg', '168', '0', '105', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('370', '-1', '1', 'HGO136', 'Golden Triumph', '60.00', '', '', 'images/product/FY1112/HGO136.jpg', '173', '0', '99', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('371', '-1', '1', 'HGO137', 'Golden Success', '100.00', '', '', 'images/product/FY1112/HGO137.jpg', '210', '0', '80', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('372', '-1', '1', 'HGO138', 'Golden Grandeur', '120.00', '', '', 'images/product/FY1112/HGO138.jpg', '180', '0', '80', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('373', '-1', '1', 'HGO139', 'Finest Fortune', '80.00', '', '', 'images/product/FY1112/HGO139.jpg', '203', '0', '105', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('374', '-1', '1', 'HGO140', 'Finest Glory', '100.00', '', '', 'images/product/FY1112/HGO140.jpg', '190', '0', '85', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('375', '-1', '1', 'HGO142', 'Golden Noble', '120.00', '', '', 'images/product/FY1112/HGO142.jpg', '210', '0', '118', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('376', '-1', '1', 'HGO143', 'Finest Celebration', '200.00', '', '', 'images/product/FY1112/HGO143.jpg', '200', '0', '130', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('377', '-1', '1', 'HGO144', 'Flourishing Business', '80.00', '', '', 'images/product/FY1112/HGO144.jpg', '205', '0', '140', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('378', '-1', '1', 'HGO145', 'Flourishing Beauty', '100.00', '', '', 'images/product/FY1112/HGO145.jpg', '188', '0', '100', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('379', '-1', '1', 'HGO146', 'Flourishing Treasure', '100.00', '', '', 'images/product/FY1112/HGO146.jpg', '170', '0', '120', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('380', '-1', '1', 'HGO147', 'Flourishing Blooms', '150.00', '', '', 'images/product/FY1112/HGO147.jpg', '206', '0', '86', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('381', '-1', '1', 'HGO148', 'Flourishing Maneuver', '150.00', '', '', 'images/product/FY1112/HGO148.jpg', '205', '0', '60', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('382', '-1', '1', 'HGO149', 'Flourishing Harvest', '150.00', '', '', 'images/product/FY1112/HGO149.jpg', '210', '0', '108', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('383', '-1', '1', 'HGO150', 'Flourishing Wishes', '180.00', '', '', 'images/product/FY1112/HGO150.jpg', '163', '0', '102', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('384', '-1', '1', 'HGO151', 'Flourishing Opening', '150.00', '', '', 'images/product/FY1112/HGO151.jpg', '235', '0', '98', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('385', '-1', '1', 'HGO152', 'Absolute Success', '150.00', '', '', 'images/product/FY1112/HGO152.jpg', '207', '0', '100', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('386', '-1', '1', 'HGO153', 'Sweet Success', '150.00', '', '', 'images/product/FY1112/HGO153.jpg', '200', '0', '90', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('387', '-1', '1', 'HGO154', 'Flourishing Cheers', '200.00', '', '', 'images/product/FY1112/HGO154.jpg', '198', '0', '100', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('388', '-1', '1', 'HGO156', 'Royal Success', '200.00', '', '', 'images/product/FY1112/HGO156.jpg', '173', '0', '118', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('389', '-1', '1', 'HGO157', 'Imperial Success', '250.00', '', '', 'images/product/FY1112/HGO157.jpg', '187', '0', '98', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('390', '-1', '1', 'HGO158', 'Abundance Cheers', '135.00', '', '', 'images/product/FY1112/HGO158.jpg', '220', '0', '65', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('391', '-1', '1', 'HGO159', 'Thriving Cheers', '150.00', '', '', 'images/product/FY1112/HGO159.jpg', '188', '0', '175', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('392', '-1', '1', 'HGO160', 'Victory Cheers', '180.00', '', '', 'images/product/FY1112/HGO160.jpg', '180', '0', '80', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('393', '-1', '1', 'HGO161', 'Sunny Cheers', '200.00', '', '', 'images/product/FY1112/HGO161.jpg', '175', '0', '125', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('394', '-1', '1', 'HGO162', 'Prestige Cheers', '180.00', '', '', 'images/product/FY1112/HGO162.jpg', '216', '0', '73', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('395', '-1', '1', 'HGO163', 'Prestige Cheers', '210.00', '', '', 'images/product/FY1112/HGO163.jpg', '216', '0', '73', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('396', '-1', '1', 'HGO164', 'Prestige Cheers', '330.00', '', '', 'images/product/FY1112/HGO164.jpg', '216', '0', '73', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('397', '-1', '1', 'HGO165', 'Prestige Cheers', '500.00', '', '', 'images/product/FY1112/HGO165.jpg', '216', '0', '73', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('398', '-1', '1', 'HGO166', 'Double Cheers', '260.00', '', '', 'images/product/FY1112/HGO166.jpg', '198', '0', '119', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('399', '-1', '1', 'HGO167', 'Celebrating Success', '300.00', '', '', 'images/product/FY1112/HGO167.jpg', '188', '0', '188', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('400', '-1', '1', 'HGO167-376', 'Celebrating Success', '580.00', '', '', 'images/product/FY1112/HGO167-376.jpg', '188', '0', '376', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('401', '-1', '1', 'HGO167-564', 'Celebrating Success', '860.00', '', '', 'images/product/FY1112/HGO167-564.jpg', '188', '0', '564', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('402', '-1', '1', 'HGO167-752', 'Celebrating Success', '1140.00', '', '', 'images/product/FY1112/HGO167-752.jpg', '188', '0', '752', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('403', '-1', '1', 'HGO167-940', 'Celebrating Success', '1420.00', '', '', 'images/product/FY1112/HGO167-940.jpg', '188', '0', '940', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('404', '-1', '1', 'HGO167-1128', 'Celebrating Success', '1700.00', '', '', 'images/product/FY1112/HGO167-1128.jpg', '188', '0', '1128', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('405', '-1', '1', 'HGO168', 'Rising Success', '500.00', '', '', 'images/product/FY1112/HGO168.jpg', '198', '0', '240', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('406', '-1', '1', 'HGO168-340', 'Rising Success', '630.00', '', '', 'images/product/FY1112/HGO168-340.jpg', '198', '0', '340', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('407', '-1', '1', 'HGO168-440', 'Rising Success', '810.00', '', '', 'images/product/FY1112/HGO168-440.jpg', '198', '0', '440', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('408', '-1', '1', 'HGO168-540', 'Rising Success', '990.00', '', '', 'images/product/FY1112/HGO168-540.jpg', '198', '0', '540', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('409', '-1', '1', 'HGO168-640', 'Rising Success', '1170.00', '', '', 'images/product/FY1112/HGO168-640.jpg', '198', '0', '640', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('410', '-1', '1', 'HGO168-740', 'Rising Success', '1350.00', '', '', 'images/product/FY1112/HGO168-740.jpg', '198', '0', '740', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('411', '-1', '1', 'HGO169', 'Fatt Fatt', '300.00', '', '', 'images/product/FY1112/HGO169.jpg', '186', '0', '138', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('412', '-1', '1', 'HGO169-276', 'Fatt Fatt', '580.00', '', '', 'images/product/FY1112/HGO169-276.jpg', '186', '0', '276', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('413', '-1', '1', 'HGO169-414', 'Fatt Fatt', '860.00', '', '', 'images/product/FY1112/HGO169-414.jpg', '186', '0', '414', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('414', '-1', '1', 'HGO169-552', 'Fatt Fatt', '1140.00', '', '', 'images/product/FY1112/HGO169-552.jpg', '186', '0', '552', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('415', '-1', '1', 'HGO169-690', 'Fatt Fatt', '1420.00', '', '', 'images/product/FY1112/HGO169-690.jpg', '186', '0', '690', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('416', '-1', '1', 'HGO169-828', 'Fatt Fatt', '1700.00', '', '', 'images/product/FY1112/HGO169-828.jpg', '186', '0', '828', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('417', '-1', '1', 'HGO170', 'Fatt', '100.00', '', '', 'images/product/FY1112/HGO170.jpg', '190', '0', '92', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('418', '-1', '1', 'HGO171', 'Fatt Fatt Fatt', '500.00', '', '', 'images/product/FY1112/HGO171.jpg', '190', '0', '168', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('419', '-1', '1', 'HPB101', 'Congratulatory Banner (PVC)', '60.00', '', '', 'images/product/FY1112/HPB101.jpg', '61', '0', '173', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('420', '-1', '1', 'HPB102', 'Congratulatory Banner (PVC)', '80.00', '', '', 'images/product/FY1112/HPB102.jpg', '91', '0', '233', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('421', '-1', '1', 'HPB103', 'Congratulatory Banner (PVC)', '40.00', '', '', 'images/product/FY1112/HPB103.jpg', '106', '0', '71', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('422', '-1', '1', 'HPB104', 'Congratulatory Banner (PVC)', '40.00', '', '', 'images/product/FY1112/HPB104.jpg', '106', '0', '71', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('423', '-1', '1', 'HPB105', 'Congratulatory Banner (PVC)', '180.00', '', '', 'images/product/FY1112/HPB105.jpg', '91', '0', '426', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('424', '-1', '1', 'HPB106', 'Congratulatory Banner (PVC)', '60.00', '', '', 'images/product/FY1112/HPB106.jpg', '152', '0', '66', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('425', '-1', '1', 'HPB107', 'Congratulatory Banner (PVC)', '60.00', '', '', 'images/product/FY1112/HPB107.jpg', '152', '0', '66', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('426', '-1', '1', 'HPB108', 'Congratulatory Banner (PVC)', '50.00', '', '', 'images/product/FY1112/HPB108.jpg', '127', '0', '66', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('427', '-1', '1', 'HPB109', 'Congratulatory Banner (PVC)', '50.00', '', '', 'images/product/FY1112/HPB109.jpg', '127', '0', '66', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('428', '-1', '1', 'HPB110', 'Congratulatory Banner (PVC)', '40.00', '', '', 'images/product/FY1112/HPB110.jpg', '104', '0', '66', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('429', '-1', '1', 'HPB111', 'Congratulatory Banner (PVC)', '80.00', '', '', 'images/product/FY1112/HPB111.jpg', '127', '0', '45', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('430', '-1', '1', 'HCB101', 'Congratulatory Banner', '30.00', '', '', 'images/product/FY1112/HCB101.jpg', '119', '0', '84', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('431', '-1', '1', 'HCB102', 'Congratulatory Banner', '50.00', '', '', 'images/product/FY1112/HCB102.jpg', '61', '0', '183', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('432', '-1', '1', 'HCB103', 'Congratulatory Banner', '60.00', '', '', 'images/product/FY1112/HCB103.jpg', '8', '0', '25', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('433', '-1', '1', 'HCB104', 'Congratulatory Banner', '120.00', '', '', 'images/product/FY1112/HCB104.jpg', '8', '0', '50', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('434', '-1', '1', 'HCB105', 'Congratulatory Banner', '180.00', '', '', 'images/product/FY1112/HCB105.jpg', '8', '0', '76', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('435', '-1', '1', 'HCB106', 'Congratulatory Banner', '80.00', '', '', 'images/product/FY1112/HCB106.jpg', '8', '0', '25', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('436', '-1', '1', 'HCB107', 'Congratulatory Banner', '160.00', '', '', 'images/product/FY1112/HCB107.jpg', '8', '0', '50', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('437', '-1', '1', 'HCB108', 'Congratulatory Banner', '240.00', '', '', 'images/product/FY1112/HCB108.jpg', '8', '0', '76', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('438', '-1', '1', 'HVD101', 'Refined Vitality', '85.00', '', '.Brand\'s Bird\'s Nest with Rock Sugar 6X42g\n.Packaged with Sweet Garden of Mini Carnations and Pink Alstromerias in Leatherette Tissue Box', 'images/product/FY1112/HVD101.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('439', '-1', '1', 'HVD102', 'Dazzling Vitality', '138.00', '', '.D.O.M Benedictine 375ml\n.New Moon Essence of Chicken with Cordyceps 6X70g\n.Prince Of Peace American Wisconsin Ginseng Root Tea 10 Teabags\n.Prince Of Peace American Ginseng Root Candy 2X138g\n.Packaged with Rubies Gerberas in Handcrafted Basket', 'images/product/FY1112/HVD102.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('440', '-1', '1', 'HVD103', 'Flowing Vitality', '150.00', '', '.D.O.M Benedictine 375ml.\n.Brand\'s Bird\'s Nest with Rock Sugar 6X42g\n.Packaged with Elegant Blooms of Mini Roses and Red Alstromerias in Designer Basket', 'images/product/FY1112/HVD103.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('441', '-1', '1', 'HVD104', 'Oriental Vitality', '160.00', '', '.Dragon Brand Ginseng Bird Nest with Rock Sugar 6X75g\n.Selected Premium Wild Mountain Whole Ginseng 1pc\n.Prince of Peace American Wisconsin Ginseng Root Tea 10 Teabags\n.Prince of Peace American Ginseng Root Candy 138g\n.Packaged with Popular Sunflowers and Red Alstromerias nicely arranged in Silk Box', 'images/product/FY1112/HVD104.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('442', '-1', '1', 'HVD105', 'Blooming Vitality', '200.00', '', '.Yomeishu 70cl\n.Brand\'s Bird\'s Nest with Rock Sugar 6X42g\n.Selected Premium Wild Mountain Whole Ginseng 1pc\n.Prince of Peace American Wisconsin Ginseng Root Tea 10 Teabags\n.Prince of Peace American Ginseng Root Candy 138g\n.Packaged in Basket Box', 'images/product/FY1112/HVD105.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('443', '-1', '1', 'HVD106', 'Blushing Vitality', '238.00', '', '.Dragon Brand Concentrated Bird\'s Nest with Rock Sugar 150g\n. D.O.M Benedictine 375ml\n.New Moon Essence of Chicken with Cordyceps 6X70g\n.Packaged with Pretty Garden Blooms of Elegant Cymbidiums and Mini Carnations in Silk box', 'images/product/FY1112/HVD106.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('444', '-1', '1', 'HVD107', 'Ruby Vitality', '145.00', '', '.Skylight New Zealand Superior Abalone 425g\n.Skylight Jin Wang Bao 425g\n.Skylight Pacific Clams 425g\n.Packaged with Elegant Cymbidiums Blooms and Alstromerias in Silk Box', 'images/product/FY1112/HVD107.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('445', '-1', '1', 'HVD108', 'Skylight Vitality', '150.00', '', '.Skylight Australian Superior Abalone 425g\n.Skylight Pacific Clams 425g\n.Skylight Jin Wang Bao 425g\n.Packaged with Sweet Garden Floras in Gourmet Cusine Porcelain Canoe Dish', 'images/product/FY1112/HVD108.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('446', '-1', '1', 'HVD109', 'Cheery Goodness', '55.00', '', '.Brand\'s Essence of Chicken 6X42g\n.Fresh Fruits\n.Packaged with Sunflower and Gerberas in Willow Basket', 'images/product/FY1112/HVD109.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('447', '-1', '1', 'HVD110', 'Cheery Goodness', '85.00', '', '.Brand\'s Bird Nest with Rock Sugar 6X42g\n.Fresh Fruits\n.Packaged with Sunflower and Gerberas in Willow Basket', 'images/product/FY1112/HVD110.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('448', '-1', '1', 'HVD111', 'Cheery Goodness', '60.00', '', '.Brand\'s Innershine Berry Essence 6X42g\n.Fresh Fruits\n.Packaged with Sunflower and Gerberas in Willow Basket', 'images/product/FY1112/HVD111.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('449', '-1', '1', 'HVD112', 'Cheery Goodness', '60.00', '', '.Brand\'s Innershine Prune Essence 6X42g\n.Fresh Fruits\n.Packaged with Sunflower and Gerberas in Willow Basket', 'images/product/FY1112/HVD112.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('450', '-1', '1', 'HVD113', 'Care and Concern', '60.00', '', '.New Moon Superior Bird\'s Nest with Rock Sugar 2X75g\n.New Moon Essence of Chicken with Cordyceps 2X70g\n.New Moon Essence of Fish with American Ginseng 2X70g\n.Packaged with Sweet Alstromerias, Mini Carnations, Mini Roses and Statics in Paper Tray', 'images/product/FY1112/HVD113.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('451', '-1', '1', 'HVD114', 'Berry Goodness', '80.00', '', '.Brand\'s Innershine Berry Essence 6X42g\n.Brand\'s Innershine Prune Essence 6X42g\n.Succulent Grapes and Kiwis\n.Packaged with Sweet Carnations Blooms in Paper Tray', 'images/product/FY1112/HVD114.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('452', '-1', '1', 'HVD115', 'Excellent Health', '85.00', '', '.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 6X70g\n.Su Fei Chooi Brand Essence of Cordyceps with Ginseng 6X70g\n.Buyi Shuen Brand Essence of Fish with Ginseng and Cordyceps 6X70g\n.Packaged with Cheerful Gerberas, Mini Carnations and Aster Phoenix in Handcrafted Basket', 'images/product/FY1112/HVD115.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('453', '-1', '1', 'HVD116', 'Essence Energy', '100.00', '', '.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 6X70g\n.Brand\'s Essence of Chicken 6X42g\n.Fomec\'s California Prune Essence 6X42g\n.Delicious Seasonal Fruits\n.Packaged with Cheerful Gerberas in Handcrafted Willow', 'images/product/FY1112/HVD116.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('454', '-1', '1', 'HVD117', 'Orange Glory', '100.00', '', '.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 6X70g\n.New Moon Brand Essence of Chicken 6X70g\n.Buyi Shuen Brand Essence of Fish with Ginseng and Cordyceps 6X70g\n.Packaged with Cheerful Gerberas in Handcrafted Willow Basket', 'images/product/FY1112/HVD117.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('455', '-1', '1', 'HVD118', 'Vibrant Display', '135.00', '', '.Brand\'s Bird\'s Nest with Rock Sugar 6X42g\n.Brand\'s Essence of Chicken 6X42g\n.Brand\'s Innershine Berry Essence 6X42g\n.Packaged with Sweet Cheerful Gerberas in footed Metal Tray', 'images/product/FY1112/HVD118.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('456', '-1', '1', 'HVD119', 'Strength Basket', '150.00', '', '.New Moon Superior Bird\'s Nest with Rock Sugar 6X75g\n.New Moon Essence of Chicken with Cordyceps 6X70g\n.New Moon Essence of Fish with American Ginseng 6X70g\n.Packaged with imported Tulips and Cheerful Sunflowers in Handcrafted Basket', 'images/product/FY1112/HVD119.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('457', '-1', '1', 'HFF101', 'Wonderful Bundle', '60.00', '', 'Fresh and Delicious Fruits packaged in Handcrafted Metal Trolley.', 'images/product/FY1112/HFF101.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('458', '-1', '1', 'HFF102', 'Tropical Delight', '50.00', '', 'Assorted Seasonal Fruits packaged in Glass Bowl.', 'images/product/FY1112/HFF102.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('459', '-1', '1', 'HFF103', 'Tropical Bliss', '100.00', '', 'Fresh and Delicious Fruits packaged in Cold Cast Porcelain Display Vase with Cast Iron Stand.', 'images/product/FY1112/HFF103.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('460', '-1', '1', 'HFF104', 'All The Sweetness', '80.00', '', 'Assorted Seasonal Fruits with Fomec\'s California Prune Essence 6X42g packaged in Metal Cage.', 'images/product/FY1112/HFF104.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('461', '-1', '1', 'HFF105', 'Packed Sweetness', '120.00', '', 'Fine Selection of Fresh and Delicious Fruits packaged in Leatherette Suitcase Box.', 'images/product/FY1112/HFF105.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('462', '-1', '1', 'HFF106', 'Triple Sweetness', '100.00', '', 'Delectable Seasonal Fruits packaged in 3-Tiered Metal Basket.', 'images/product/FY1112/HFF106.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('463', '-1', '1', 'HFF107', 'Sunshine Fruit Basket', '50.00', '', 'Delicious Seasonal Fruits packaged with Cheerful Sunflowers and Gerberas in Handwoven Basket.', 'images/product/FY1112/HFF107.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('464', '-1', '1', 'HFF108', 'Sunny Island', '60.00', '', 'Seasonal Fruits packaged with Sunflowers and Bird of Paradise in Handwoven Basket.', 'images/product/FY1112/HFF108.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('465', '-1', '1', 'HFF109', 'Double Sweetness', '100.00', '', 'A basket of Fresh and Succulent Fruits with Garden Fresh Blooms of Mini Roses, Orchids.', 'images/product/FY1112/HFF109.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('466', '-1', '1', 'HFF110', 'Cheerful Fruit Basket', '80.00', '', 'Basket of Fresh and Delicious Seasonal Fruits with Cheerful Sunflowers.', 'images/product/FY1112/HFF110.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('467', '-1', '1', 'HFF111', 'Tropical Splendor', '120.00', '', 'Fresh Seasonal Fruits packaged with Pretty Sweet Blooms of Cymbidiums, Mini Roses, Orchids and Baby Breath in 3-Tiered Metal Basket.', 'images/product/FY1112/HFF111.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('468', '-1', '1', 'HFF112', 'Glowing Bliss', '120.00', '', 'Assorted Seasonal Fruits packaged with Sweet Garden Blooms of Matthiolas, Roses, Hydrandeas and Eustomas in Footed Metal Tray', 'images/product/FY1112/HFF112.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('469', '-1', '1', 'HFF113', 'Breezy Tropical', '120.00', '', 'Succulent Strawberries, 5 Kiwis and 6pcs Ferrero Rocher Chocolate packaged with Sweet Blooms of Mini Roses, Aster Phoenix, Eustomas Hypericums and Baby Breath in 3-Tiered Basket.', 'images/product/FY1112/HFF113.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('470', '-1', '1', 'HFF114', 'Smile For Me', '100.00', '', 'Assorted Seasonal Fruits packaged with Sweet Gerberas and a pair Love Birds in 2-Tiered Basket.', 'images/product/FY1112/HFF114.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('471', '-1', '1', 'HFF115', 'Double Sunshine', '120.00', '', 'Delectable Seasonal Fruits packaged with Sunflowers, Orchids and Statics in 2-Tiered Metal Basket.', 'images/product/FY1112/HFF115.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('472', '-1', '1', 'HFF116', 'Cartful Of Sweetness', '100.00', '', 'Fine Selection of Seasonal Fruits packaged in Handcrafted Wooden Trolley Tray.', 'images/product/FY1112/HFF116.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('473', '-1', '1', 'HFF117', 'Summer Is Here!', '100.00', '', 'Fresh Delicious Seasonal Fruits packaged with a pair of Cheerful Gerberas Topiary in Handcrafted Willow Basket.', 'images/product/FY1112/HFF117.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('474', '-1', '1', 'HFF118', 'So Sweet', '150.00', '', 'Delicious Seasonal Fruits packaged with Sweet Garden Floral Blooms of Tulips, Matthiolas, Hydrangeas and Gerberas in Leatherette Box.', 'images/product/FY1112/HFF118.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('475', '-1', '1', 'HFF119', 'A Basket of Elegance', '150.00', '', 'Assorted Seasonal Fruits packaged with 2 Elegant Phalaenopsis Plant packaged in Handwoven Basket.', 'images/product/FY1112/HFF119.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('476', '-1', '1', 'HFF120', 'Sunny Tropics', '150.00', '', 'Fresh Seasonal Fruits packaged with Cheerful Sunflowers in Handwoven Willow Basket.', 'images/product/FY1112/HFF120.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('477', '-1', '1', 'HFF121', 'Fruity Goodness', '200.00', '', 'Delicious Seasonal Fruits packaged with Sweet Garden Blooms of Matthiolas, Gerberas, Lilies, Roses and Orchids in Handwoven Willow Basket.', 'images/product/FY1112/HFF121.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('478', '-1', '1', 'HFF122', 'Tropical You', '300.00', '', 'A Bountiful Harvest of Seasonal Fruits and Exuberent Garden Sweet Blooms of Bassicas, Matthiolas, Gerberas and Tulips in 1 meter Long Handwoven Willow Basket.', 'images/product/FY1112/HFF122.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('479', '-1', '1', 'HSR101', 'Cheerful Recovery', '60.00', '', 'Â·Brand\'s Essence of Chicken 6x42g\nÂ·Nestle Nesvita 3 in 1 Cereal Drink 20x26g\nÂ·Ligo Red Grape Juice 1lt \nÂ·Munchy\'s Oat Krunch Crackers 180g\nÂ·Packaged with Cheerful Sunflowers in Handcrafted Basket', 'images/product/FY1112/HSR101.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('480', '-1', '1', 'HSR102', 'Sunny Healing', '50.00', '', 'Â·Birdâ€™s Nest Wild Ginseng with White Fungus & Rock Sugar 4x70g\nÂ·Brand\'s Essence of Chicken 3x42g\nÂ·Ligo Orange Juice 1lt\nÂ·Munchy\'s Oat Krunch Crackers 180g\nÂ·Packaged with Apples, Cheerful Sunflower and Gerberas in PVC Storage Box', 'images/product/FY1112/HSR102.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('481', '-1', '1', 'HSR103', 'Delightful Recovery', '50.00', '', 'Â·Birdâ€™s Nest Wild Ginseng with White Fungus & Rock Sugar 3x70g\nÂ·Brand\'s Essence of Chicken 6x42g\nÂ·Nestle Milo 200g\nÂ·Munchy\'s Oat Krunch Crackers 180g\nÂ·Nestle Koko Krunch Breakfast Cereal 25g\nÂ·Packaged in PVC Basket Tray', 'images/product/FY1112/HSR103.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('482', '-1', '1', 'HSR104', 'Tender Blessings', '65.00', '', 'Â·Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 6x70g Â·Brand\'s Innershine Berry Essence 6x42g\nÂ·Packaged with Beautiful Oriental Lilies in Handcrafted Basket', 'images/product/FY1112/HSR104.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('483', '-1', '1', 'HSR105', 'Blossoming Vigor', '60.00', '', 'Â·Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 6x70g Â·Fomec\'s California Prune Essence 2x42g\nÂ·Nestle Milo 200g\nÂ·Ligo Pure Orange Juice 1lt\nÂ·Munchy\'s Oat Krunch Crackers 180g\nÂ·Nestle Koko Krunch Breakfast Cereal 25g\nÂ·Packaged in Handcrafted Basket', 'images/product/FY1112/HSR105.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('484', '-1', '1', 'HSR106', 'Sunshine Basket', '70.00', '', 'Â·Nestle Fitnesse & Fruit Cereal 400g\nÂ·Nestle Milo Energy Snack Bars 126g\nÂ·Nestle Nesvita 3 in 1 Cereal Drink 20x26g\nÂ·Nestle Koko Krunch Breakfast Cereal 2x25g\nÂ·Succulent Grapes and Kiwis\nÂ·Packaged with Sweet Gerberas in Metal Tray', 'images/product/FY1112/HSR106.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('485', '-1', '1', 'HSR107', 'Robust Glow', '80.00', '', 'Â·Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 3x70g\nÂ·Fomec\'s California Prune Essence 2x42g\nÂ·Nestle Milo 200g\nÂ·Julie\'s Oligo Oat Cookies 200g\nÂ·Delicious Mixed Fruits\nÂ·Packaged with Sweet Gerberas Blooms in 2 Tiers Metal Basket', 'images/product/FY1112/HSR107.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('486', '-1', '1', 'HSR108', 'Vibrant Renewal', '80.00', '', 'Â·Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 6x70g\nÂ·Brand\'s Essence of Chicken 6x42g\nÂ·Quaker Instant Oatmeal 400g\nÂ·100% Natural Millenia Herbs Stimulating Tea 25Teabags\nÂ·Munchy\'s Oat Krunch Crackers 180g\nÂ·Packaged with Cheerful Gerberas Blooms in Wooden Tray', 'images/product/FY1112/HSR108.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('487', '-1', '1', 'HSR109', 'Jolly Health', '80.00', '', 'Â·Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 6x70g\nÂ·Brand\'s Essence of Chicken 6x42g\nÂ·Succulent Grapes\nÂ·Packaged with Sweet Floras in Handcafted Basket', 'images/product/FY1112/HSR109.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('488', '-1', '1', 'HSR110', 'Healthy Treasures', '85.00', '', 'Â·Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 6x70g Â·Brand\'s Essence of Chicken 6x42g\nÂ·Fomec\'s California Prune Essence 2x42g\nÂ·Golden Bee Brand Longan Honey 300g\nÂ·Quaker Instant Oatmeal 400g\nÂ·Julie\'s Oligo Oat Cookies 200g\nÂ·Ligo Pure Orange Juice 1lt\nÂ·Packaged in Metal Basket', 'images/product/FY1112/HSR110.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('489', '-1', '1', 'HSR111', 'Bright and Joyful', '80.00', '', '.Fomec\'s California Prune Essence 6x42g\n.Yogi Granola Crisps Mountain Blueberry Flax 295g\nÂ·Keebler Wheatables Nutcrisps Toasted Pecan Crackers 240g\nÂ·Yogood Wildberry Yoghurt Coated Muesli Bars 138g\nÂ·Ribena Blackcurrant Fruit Drink 2x200ml\nÂ·Packaged with Pretty Garden Blooms in Paper Tray', 'images/product/FY1112/HSR111.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('490', '-1', '1', 'HSR112', 'Wholesome Rescue', '100.00', '', 'Â·Yogi Granola Crisps Mountain Blueberry Flax 295g\nÂ·100% Natural Millenia Herbs Stimulating Tea 25Teabags\nÂ·100% Natural Millenia Herbs De Stress Tea 25Teabags\nÂ·Kellogg\'s LCMS Split Stix Rice Bubbles Yoghurty Bars 138g\nÂ·Keebler Wheatables Nutcrisps Toasted Pecan Crackers 240g\nÂ·Golden Bee Brand Longan Honey 300g\nÂ·Packaged with Peperomia Plant in Metal Tray', 'images/product/FY1112/HSR112.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('491', '-1', '1', 'HSR113', 'Wellness Treasures', '100.00', '', 'Â·Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 6x70g\nÂ·Post Selects Cranberry Almond Crunch 368g\nÂ·Ovaltine Malted Milk 400g\nÂ·Ligo Pure Apple Juice 946ml\nÂ·100% Natural Millenia Herbs Stimulating Tea 25Teabags Â·Munchy\'s Oat Krunch Crackers 180g\nÂ·Succulent Grapes\nÂ·Packaged with Elegant Blooms of Sweet Gerberas in Javanese Handcrafted Basket Tray', 'images/product/FY1112/HSR113.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('492', '-1', '1', 'HSR114', 'Sunshine Wishes', '100.00', '', 'Â·Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 6x70g\nÂ·Brand\'s Essence of Chicken 6x42g\nÂ·Golden Bee Brand Longan Honey 300g\nÂ·Quaker Instant Oatmeal 400g\nÂ·Ligo Pure Orange Juice 1lt\nÂ·IKO 3 Fruits Oat Cracker 220g\nÂ·Delicious Seasonal Fruits\nÂ·Packaged with Sweet Gerberas and Cheerful Sunflowers in Handcrafted Basket', 'images/product/FY1112/HSR114.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('493', '-1', '1', 'HSR115', 'Health Glow', '100.00', '', 'Â·Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 6x70g Â·New Moon Essence of Chicken with Cordyceps 6x70g Â·Prince of Peace American Wisconsin Ginseng Root Tea 10Teabags Â·Nestle Milo Energy Snack Bars 126g Â·Nestle Milo 400g\nÂ·Ligo Pure Orange Juice 1lt\nÂ·Munchy\'s Oat Krunch Crackers 180g Â·Packaged in Metal Basket', 'images/product/FY1112/HSR115.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('494', '-1', '1', 'HSR116', 'Berry Health', '100.00', '', 'Â·Brand\'s Innershine Berry Essence 6x42g\nÂ·Beehive Fruity & Floral Honey 250g\nÂ·Post Selects Cranberry Almond Crunch 368g\nÂ·Munchy\'s Oat Krunch Crackers 180g\nÂ·Delectable Strawberries and Grapes\nÂ·Packaged with Sweet Floral Blooms in Handcrafted Basket', 'images/product/FY1112/HSR116.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('495', '-1', '1', 'HSR117', 'Good Essence', '120.00', '', '.Brand\'s Bird Nest with Rock Sugar 6X42g\nÂ·Brand\'s Essence of Chicken 6x42g\nÂ·Nestle Nesvita 3 in 1 Cereal Drink 20x26g\nÂ·100% Natural Millenia Herbs Stimulating Tea 25 Teabags\nÂ·Nestle Corn Flakes Breakfast Cereal 150gÂ·Ligo Grapefruit Juice 1lt\nÂ·Munchy\'s Oat Krunch Crackers 180g\nÂ·Packaged with Garden Blooms of Gerberas and Bird of Paradise in Basket', 'images/product/FY1112/HSR117.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('496', '-1', '1', 'HSR118', 'Tower of Zest', '150.00', '', '.Brand\'s Bird\'s Nest with Rock Sugar 6X42g\nÂ·Brand\'s Essence of Chicken 6x42g\nÂ·Nestle Nesvita 3 in 1 Cereal Drink 20x26g\nÂ·Julie\'s Oligo Oat Cookies 200g\nÂ·Ligo Pure Orange Juice 1lt\nÂ·Fresh Assorted Fruits\nÂ·Packaged with Elegant Blooms of Sweet Gerberas in 3 Tiers Basket', 'images/product/FY1112/HSR118.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('497', '-1', '1', 'HSR119', 'Great Health', '300.00', '', 'Â·D.O.M Benedictine 375ml\nÂ·Tawau Raw Bird\'s Nest 10g\nÂ·New Moon Superior Bird\'s Nest with Rock Sugar 6x75g\nÂ·New Moon Essence of Chicken with Cordyceps 6x70g\nÂ·Nestle Fitnesse & Fruit Cereal 400g\nÂ·Prince of Peace American Wisconsin Ginseng Root Tea 30Teabags Â·Keebler Wheatables Toasted Honey Wheat Crackers 255g\nÂ·Prince Of Peace American Ginseng Root Candy 138g\nÂ·Ovaltine Malted Milk 400g\nÂ·Ligo Cranberry Cocktail 946ml\nÂ·Packaged with Sweet Garden in Handcrafted Basket', 'images/product/FY1112/HSR119.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('498', '-1', '1', 'HSR120', 'Rosy Wellness', '150.00', '', 'Â·D.O.M Benedictine 375ml\nÂ·Brand\'s Essence of Chicken 6x42g\nÂ·Nestle Nesvita 3 in 1 Cereal Drink 20x26g\nÂ·Nestle Milo 200g\nÂ·Julie\'s Oligo Oat Cookies 200g\nÂ·Packaged with Sweet Orange Roses and Yellow Alstromerias in 2 Tiers Metal Basket', 'images/product/FY1112/HSR120.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('499', '-1', '1', 'HSR121', 'Abundant Health', '200.00', '', 'Â·D.O.M Benedictine 375ml\n.Brand\'s Bird\'s Nest with Rock Sugar 6X42g\nÂ·Brand\'s Essence of Chicken 6x42g\nÂ·Nestle Fitnesse & Fruit Cereal 400g\nÂ·Prince of Peace American Wisconsin Ginseng Root Tea 10Teabags Â·Ovaltine Malted Milk 400g\nÂ·Julie\'s Oligo Oat Cookies 200g\nÂ·Packaged with Cheerful Garden Blooms of Sunflowers and Gerberas in Handcrafted Willow Basket', 'images/product/FY1112/HSR121.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('500', '-1', '1', 'HSR122', 'Brimming Health', '500.00', '', 'Â·Yomeishu 70cl\nÂ·Tawau Raw Bird\'s Nest 10g Dragon Brand Concentrated Bird\'s Nest with Rock Sugar 150g\nÂ·Dragon Brand Ginseng Bird Nest with Rock Sugar 6x75g\n.New Moon Essence Of Chicken With Cordyceps 6x70g\nÂ·Prince of Peace American Wisconsin Ginseng Root Tea 30Teabags Â·Prince Of Peace American Ginseng Root Candy 138g\nÂ·Post Selects Cranberry Almond Crunch 368g\nÂ·Yogood Wildberry Yoghurt Muesli Bars 138g\nÂ·Yogood Blueberry Cranberry Yoghurt Muesli Bars 138g\nÂ·Beehive Fruity & Floral Honey 250g\nÂ·Keebler Wheatables Toasted Honey Wheat Crackers 255g\nÂ·Ovaltine Malted Milk 400g\nÂ·Famous Amos Chocolate Chips Cookies 168g\nÂ·Ligo Pure Apple Juice 946ml\nÂ·Munchy\'s Oat Krunch Crackers 180g\nÂ·Packaged with Sweet Garden Blooms in Long Handcrafted Basket', 'images/product/FY1112/HSR122.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('501', '-1', '1', 'HWS101', 'Regardful', '80.00', '', '', 'images/product/FY1112/HWS101.jpg', '90', '0', '60', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('502', '-1', '1', 'HWS102', 'Peaceful', '80.00', '', '', 'images/product/FY1112/HWS102.jpg', '106', '0', '80', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('503', '-1', '1', 'HWS103', 'Respectful', '60.00', '', '', 'images/product/FY1112/HWS103.jpg', '66', '0', '38', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('504', '-1', '1', 'HWS104', 'Graceful', '100.00', '', '', 'images/product/FY1112/HWS104.jpg', '73', '0', '83', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('505', '-1', '1', 'HWS105', 'Thoughtful', '120.00', '', '', 'images/product/FY1112/HWS105.jpg', '67', '0', '90', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('506', '-1', '1', 'HWS106', 'In Loving Memory', '100.00', '', '', 'images/product/FY1112/HWS106.jpg', '28', '0', '80', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('507', '-1', '1', 'HWS107', 'In Loving Tribute', '150.00', '', '', 'images/product/FY1112/HWS107.jpg', '29', '0', '90', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('508', '-1', '1', 'HWS108', 'Tranquil Moment', '80.00', '', '', 'images/product/FY1112/HWS108.jpg', '83', '0', '28', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('509', '-1', '1', 'HWS109', 'Tranquility', '200.00', '', '', 'images/product/FY1112/HWS109.jpg', '83', '0', '60', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('510', '-1', '1', 'HWS110', 'Reflective Tribute', '150.00', '', '', 'images/product/FY1112/HWS110.jpg', '183', '0', '129', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('511', '-1', '1', 'HWS111', 'Solemn Tribute', '200.00', '', '', 'images/product/FY1112/HWS111.jpg', '183', '0', '129', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('512', '-1', '1', 'HWS112', 'Touching Tribute', '180.00', '', '', 'images/product/FY1112/HWS112.jpg', '183', '0', '129', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('513', '-1', '1', 'HWS113', 'Timeless Tribute', '250.00', '', '', 'images/product/FY1112/HWS113.jpg', '183', '0', '129', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('514', '-1', '1', 'HWS114', 'Comforting Words', '150.00', '', '', 'images/product/FY1112/HWS114.jpg', '188', '0', '98', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('515', '-1', '1', 'HWS115', 'Comforting Thoughts', '150.00', '', '', 'images/product/FY1112/HWS115.jpg', '178', '0', '100', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('516', '-1', '1', 'HWS116', 'Comforting Lines', '170.00', '', '', 'images/product/FY1112/HWS116.jpg', '190', '0', '100', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('517', '-1', '1', 'HWS117', 'Comforting Talk', '200.00', '', '', 'images/product/FY1112/HWS117.jpg', '190', '0', '93', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('518', '-1', '1', 'HWS118', 'Comforting Memo', '100.00', '', '', 'images/product/FY1112/HWS118.jpg', '190', '0', '100', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('519', '-1', '1', 'HWS119', 'Regal Condolences', '150.00', '', '', 'images/product/FY1112/HWS119.jpg', '216', '0', '70', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('520', '-1', '1', 'HWS120', 'Regal Serenity', '200.00', '', '', 'images/product/FY1112/HWS120.jpg', '200', '0', '100', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('521', '-1', '1', 'HWS121', 'Regal Respect', '50.00', '', '', 'images/product/FY1112/HWS121.jpg', '180', '0', '99', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('522', '-1', '1', 'HWS122', 'Cherished Harmony', '50.00', '', '', 'images/product/FY1112/HWS122.jpg', '174', '0', '68', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('523', '-1', '1', 'HWS123', 'Dearly Missed', '60.00', '', '', 'images/product/FY1112/HWS123.jpg', '180', '0', '95', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('524', '-1', '1', 'HWS124', 'Cherished Eternity', '60.00', '', '', 'images/product/FY1112/HWS124.jpg', '196', '0', '106', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('525', '-1', '1', 'HWS125', 'Cherished Sentiments', '80.00', '', '', 'images/product/FY1112/HWS125.jpg', '183', '0', '106', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('526', '-1', '1', 'HWS126', 'Dearly Remembered', '80.00', '', '', 'images/product/FY1112/HWS126.jpg', '190', '0', '90', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('527', '-1', '1', 'HWS127', 'Dearly Felt', '85.00', '', '', 'images/product/FY1112/HWS127.jpg', '190', '0', '80', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('528', '-1', '1', 'HWS128', 'Dearly Loved', '100.00', '', '', 'images/product/FY1112/HWS128.jpg', '198', '0', '110', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('529', '-1', '1', 'HWS129', 'Dearly Beloved', '100.00', '', '', 'images/product/FY1112/HWS129.jpg', '173', '0', '88', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('530', '-1', '1', 'HWS130', 'Cherished Garden', '120.00', '', '', 'images/product/FY1112/HWS130.jpg', '180', '0', '100', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('531', '-1', '1', 'HWS131', 'Dearly Touched', '120.00', '', '', 'images/product/FY1112/HWS131.jpg', '200', '0', '98', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('532', '-1', '1', 'HWS132', 'Comforting Sign', '200.00', '', '', 'images/product/FY1112/HWS132.jpg', '198', '0', '120', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('533', '-1', '1', 'HWS133', 'Regal Touch', '150.00', '', '', 'images/product/FY1112/HWS133.jpg', '200', '0', '120', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('534', '-1', '1', 'HWS134', 'Comforting Messenger', '300.00', '', '', 'images/product/FY1112/HWS134.jpg', '220', '0', '132', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('535', '-1', '1', 'HWS135', 'Dearly Cherished', '200.00', '', '', 'images/product/FY1112/HWS135.jpg', '240', '0', '126', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('536', '-1', '1', 'HWS136', 'Dearly Heartfelt', '200.00', '', '', 'images/product/FY1112/HWS136.jpg', '200', '0', '112', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('537', '-1', '1', 'HWS137', 'Dearly Comforted', '250.00', '', '', 'images/product/FY1112/HWS137.jpg', '198', '0', '158', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('538', '-1', '1', 'HWS138', 'Everlasting Peace', '80.00', '', '', 'images/product/FY1112/HWS138.jpg', '166', '0', '57', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('539', '-1', '1', 'HWS139', 'Christ\'s Embrace', '120.00', '', '', 'images/product/FY1112/HWS139.jpg', '172', '0', '85', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('540', '-1', '1', 'HWS140', 'In Loving Arms', '100.00', '', '', 'images/product/FY1112/HWS140.jpg', '168', '0', '58', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('541', '-1', '1', 'HWS141', 'In His Love', '120.00', '', '', 'images/product/FY1112/HWS141.jpg', '173', '0', '58', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('542', '-1', '1', 'HWS142', 'In God\'s Arms', '150.00', '', '', 'images/product/FY1112/HWS142.jpg', '172', '0', '82', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('543', '-1', '1', 'HWS143', 'Eternal Love', '100.00', '', '', 'images/product/FY1112/HWS143.jpg', '183', '0', '93', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('544', '-1', '1', 'HWS144', 'Amazing Grace', '150.00', '', '', 'images/product/FY1112/HWS144.jpg', '183', '0', '78', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('545', '-1', '1', 'HWS145', 'With The Lord', '200.00', '', '', 'images/product/FY1112/HWS145.jpg', '213', '0', '130', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('546', '-1', '1', 'HWS146', 'Eternal Poise', '100.00', '', '', 'images/product/FY1112/HWS146.jpg', '170', '0', '75', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('547', '-1', '1', 'HWS147', 'Eternal Serenity', '150.00', '', '', 'images/product/FY1112/HWS147.jpg', '180', '0', '80', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('548', '-1', '1', 'HWS148', 'Eternal Calm', '180.00', '', '', 'images/product/FY1112/HWS148.jpg', '170', '0', '75', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('549', '-1', '1', 'HWS149', 'Eternal Grace', '120.00', '', '', 'images/product/FY1112/HWS149.jpg', '168', '0', '105', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('550', '-1', '1', 'HWS150', 'Eternal Touch', '120.00', '', '', 'images/product/FY1112/HWS150.jpg', '180', '0', '115', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('551', '-1', '1', 'HWS151', 'Eternal Peace', '150.00', '', '', 'images/product/FY1112/HWS151.jpg', '196', '0', '100', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('552', '-1', '1', 'HWS152', 'Eternal Glory', '150.00', '', '', 'images/product/FY1112/HWS152.jpg', '200', '0', '110', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('553', '-1', '1', 'HWS153', 'Eternal Magnificence', '300.00', '', '', 'images/product/FY1112/HWS153.jpg', '160', '0', '150', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('554', '-1', '1', 'HWS154', 'Dedication', '50.00', '', '', 'images/product/FY1112/HWS154.jpg', '175', '0', '87', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('555', '-1', '1', 'HWS155', 'Memories', '50.00', '', '', 'images/product/FY1112/HWS155.jpg', '170', '0', '66', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('556', '-1', '1', 'HWS156', 'Respect', '60.00', '', '', 'images/product/FY1112/HWS156.jpg', '179', '0', '75', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('557', '-1', '1', 'HWS157', 'Sympathy', '60.00', '', '', 'images/product/FY1112/HWS157.jpg', '180', '0', '92', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('558', '-1', '1', 'HWS158', 'Remembrance', '60.00', '', '', 'images/product/FY1112/HWS158.jpg', '173', '0', '74', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('559', '-1', '1', 'HWS159', 'Poise', '60.00', '', '', 'images/product/FY1112/HWS159.jpg', '174', '0', '86', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('560', '-1', '1', 'HWS160', 'Condolence', '80.00', '', '', 'images/product/FY1112/HWS160.jpg', '170', '0', '66', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('561', '-1', '1', 'HWS161', 'Remembered', '80.00', '', '', 'images/product/FY1112/HWS161.jpg', '186', '0', '78', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('562', '-1', '1', 'HWS162', 'Warmest Embrace', '80.00', '', '', 'images/product/FY1112/HWS162.jpg', '185', '0', '70', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('563', '-1', '1', 'HWS163', 'Soft Whisper', '100.00', '', '', 'images/product/FY1112/HWS163.jpg', '180', '0', '80', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('564', '-1', '1', 'HWS164', 'Deepest Sympathy', '100.00', '', '', 'images/product/FY1112/HWS164.jpg', '177', '0', '77', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('565', '-1', '1', 'HWS165', 'Serenity', '100.00', '', '', 'images/product/FY1112/HWS165.jpg', '180', '0', '79', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('566', '-1', '1', 'HWS166', 'Silent Moment', '100.00', '', '', 'images/product/FY1112/HWS166.jpg', '188', '0', '80', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('567', '-1', '1', 'HWS167', 'Fond Memories', '100.00', '', '', 'images/product/FY1112/HWS167.jpg', '186', '0', '88', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('568', '-1', '1', 'HWS168', 'Dearly Departed', '120.00', '', '', 'images/product/FY1112/HWS168.jpg', '188', '0', '78', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('569', '-1', '1', 'HWS169', 'Tranquil Repose', '150.00', '', '', 'images/product/FY1112/HWS169.jpg', '195', '0', '108', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('570', '-1', '1', 'HWS170', 'Touching', '150.00', '', '', 'images/product/FY1112/HWS170.jpg', '200', '0', '108', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('571', '-1', '1', 'HWS171', 'Solemn Salute', '150.00', '', '', 'images/product/FY1112/HWS171.jpg', '198', '0', '90', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('572', '-1', '1', 'HWS172', 'Touching Expressions', '150.00', '', '', 'images/product/FY1112/HWS172.jpg', '107', '0', '110', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('573', '-1', '1', 'HWS173', 'Repose', '150.00', '', '', 'images/product/FY1112/HWS173.jpg', '190', '0', '100', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('574', '-1', '1', 'HWS174', 'Graceful Respect', '200.00', '', '', 'images/product/FY1112/HWS174.jpg', '200', '0', '100', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('575', '-1', '1', 'HWS175', 'Always Cherish', '200.00', '', '', 'images/product/FY1112/HWS175.jpg', '185', '0', '130', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('576', '-1', '1', 'HWS176', 'Heartfelt Condolences', '150.00', '', '', 'images/product/FY1112/HWS176.jpg', '198', '0', '98', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('577', '-1', '1', 'HWS177', 'Cherished Moment', '200.00', '', '', 'images/product/FY1112/HWS177.jpg', '200', '0', '136', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('578', '-1', '1', 'HWS178', 'Timeless Embrace', '200.00', '', '', 'images/product/FY1112/HWS178.jpg', '183', '0', '120', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('579', '-1', '1', 'HWS179', 'Eternal Paradise', '200.00', '', '', 'images/product/FY1112/HWS179.jpg', '186', '0', '120', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('580', '-1', '1', 'HWS180', 'Sincere Respect', '250.00', '', '', 'images/product/FY1112/HWS180.jpg', '198', '0', '120', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('581', '-1', '1', 'HWS181', 'Beautiful Tribute', '250.00', '', '', 'images/product/FY1112/HWS181.jpg', '200', '0', '100', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('582', '-1', '1', 'HWS182', 'Always Remembered', '160.00', '', '', 'images/product/FY1112/HWS182.jpg', '205', '0', '87', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('583', '-1', '1', 'HWS183', 'Always Loved', '150.00', '', '', 'images/product/FY1112/HWS183.jpg', '205', '0', '87', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('584', '-1', '1', 'HWS184', 'Peaceful Divinity', '200.00', '', '', 'images/product/FY1112/HWS184.jpg', '195', '0', '172', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('585', '-1', '1', 'HWS185', 'Eternal Light', '250.00', '', '', 'images/product/FY1112/HWS185.jpg', '195', '0', '172', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('586', '-1', '1', 'HWS186', 'Sincere Respect', '250.00', '', '', 'images/product/FY1112/HWS186.jpg', '195', '0', '172', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('587', '-1', '1', 'HWS187', 'Great Loss', '500.00', '', '', 'images/product/FY1112/HWS187.jpg', '195', '0', '172', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('588', '-1', '1', 'HWS188', 'Respectful Salute', '70.00', '', '', 'images/product/FY1112/HWS188.jpg', '174', '0', '75', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('589', '-1', '1', 'HWS189', 'Heartfelt Salute', '85.00', '', '', 'images/product/FY1112/HWS189.jpg', '186', '0', '86', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('590', '-1', '1', 'HWS190', 'Final Salute', '120.00', '', '', 'images/product/FY1112/HWS190.jpg', '180', '0', '85', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('591', '-1', '1', 'HWS191', 'Calming Salute', '150.00', '', '', 'images/product/FY1112/HWS191.jpg', '185', '0', '85', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('592', '-1', '1', 'HWS192', 'Majestic Salute', '160.00', '', '', 'images/product/FY1112/HWS192.jpg', '168', '0', '123', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('593', '-1', '1', 'HWS193', 'Graceful Salute', '150.00', '', '', 'images/product/FY1112/HWS193.jpg', '196', '0', '72', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('594', '-1', '1', 'HWS194', 'Classic Salute', '150.00', '', '', 'images/product/FY1112/HWS194.jpg', '206', '0', '92', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('595', '-1', '1', 'HWS195', 'Grand Salute', '200.00', '', '', 'images/product/FY1112/HWS195.jpg', '190', '0', '138', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('596', '-1', '1', 'HWS196', 'Fine Paradise', '100.00', '', '', 'images/product/FY1112/HWS196.jpg', '174', '0', '89', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('597', '-1', '1', 'HWS197', 'Serene Paradise', '120.00', '', '', 'images/product/FY1112/HWS197.jpg', '200', '0', '75', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('598', '-1', '1', 'HWS198', 'Graceful Paradise', '120.00', '', '', 'images/product/FY1112/HWS198.jpg', '177', '0', '72', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('599', '-1', '1', 'HWS199', 'White Paradise', '150.00', '', '', 'images/product/FY1112/HWS199.jpg', '177', '0', '90', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('600', '-1', '1', 'HWS200', 'Gentle Paradise', '150.00', '', '', 'images/product/FY1112/HWS200.jpg', '210', '0', '120', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('601', '-1', '1', 'HWS201', 'Nobel Paradise', '130.00', '', '', 'images/product/FY1112/HWS201.jpg', '160', '0', '99', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('602', '-1', '1', 'HWS202', 'Violet Paradise', '150.00', '', '', 'images/product/FY1112/HWS202.jpg', '180', '0', '108', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('603', '-1', '1', 'HWS203', 'Luxurious Paradise', '200.00', '', '', 'images/product/FY1112/HWS203.jpg', '180', '0', '100', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('604', '-1', '1', 'HWS204', 'Glowing Paradise', '80.00', '', '', 'images/product/FY1112/HWS204.jpg', '168', '0', '90', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('605', '-1', '1', 'HWS205', 'Purple Paradise', '80.00', '', '', 'images/product/FY1112/HWS205.jpg', '184', '0', '56', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('606', '-1', '1', 'HWS206', 'Eternal Paradise', '100.00', '', '', 'images/product/FY1112/HWS206.jpg', '170', '0', '100', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('607', '-1', '1', 'HWS207', 'Blue Paradise', '120.00', '', '', 'images/product/FY1112/HWS207.jpg', '203', '0', '122', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('608', '-1', '1', 'HWS208', 'Timeless Paradise', '120.00', '', '', 'images/product/FY1112/HWS208.jpg', '213', '0', '97', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('609', '-1', '1', 'HWS209', 'Warm Paradise', '150.00', '', '', 'images/product/FY1112/HWS209.jpg', '190', '0', '100', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('610', '-1', '1', 'HWS210', 'Sunset Paradise', '180.00', '', '', 'images/product/FY1112/HWS210.jpg', '198', '0', '112', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('611', '-1', '1', 'HWS211', 'Splendid Paradise', '180.00', '', '', 'images/product/FY1112/HWS211.jpg', '198', '0', '96', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('612', '-1', '1', 'HWS212', 'Glorious Paradise', '300.00', '', '', 'images/product/FY1112/HWS212.jpg', '198', '0', '96', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('613', '-1', '1', 'HWS213', 'Everlasting Paradise', '200.00', '', '', 'images/product/FY1112/HWS213.jpg', '210', '0', '124', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('614', '-1', '1', 'HWS214', 'Lofty Paradise', '250.00', '', '', 'images/product/FY1112/HWS214.jpg', '204', '0', '123', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('615', '-1', '1', 'HWS215', 'Grand Paradise', '300.00', '', '', 'images/product/FY1112/HWS215.jpg', '218', '0', '122', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('616', '-1', '1', 'HWS216', 'Finest Respect', '60.00', '', '', 'images/product/FY1112/HWS216.jpg', '173', '0', '80', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('617', '-1', '1', 'HWS217', 'Finest Salute', '80.00', '', '', 'images/product/FY1112/HWS217.jpg', '210', '0', '80', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('618', '-1', '1', 'HWS218', 'Finest Farewell', '60.00', '', '', 'images/product/FY1112/HWS218.jpg', '178', '0', '80', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('619', '-1', '1', 'HWS219', 'Finest Charm', '100.00', '', '', 'images/product/FY1112/HWS219.jpg', '218', '0', '108', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('620', '-1', '1', 'HWS220', 'Finest Grace', '100.00', '', '', 'images/product/FY1112/HWS220.jpg', '185', '0', '86', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('621', '-1', '1', 'HWS221', 'Finest Solace', '150.00', '', '', 'images/product/FY1112/HWS221.jpg', '217', '0', '83', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('622', '-1', '1', 'HWS222', 'Finest Sentiments', '300.00', '', '', 'images/product/FY1112/HWS222.jpg', '190', '0', '180', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('623', '-1', '1', 'HWS223', 'Finest Repose', '200.00', '', '', 'images/product/FY1112/HWS223.jpg', '215', '0', '90', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('624', '-1', '1', 'HWS223-6', 'Finest Repose', '380.00', '', '', 'images/product/FY1112/HWS223-6.jpg', '215', '0', '180', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('625', '-1', '1', 'HWS223-9', 'Finest Repose', '560.00', '', '', 'images/product/FY1112/HWS223-9.jpg', '215', '0', '270', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('626', '-1', '1', 'HWS223-12', 'Finest Repose', '740.00', '', '', 'images/product/FY1112/HWS223-12.jpg', '215', '0', '360', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('627', '-1', '1', 'HWS223-15', 'Finest Repose', '920.00', '', '', 'images/product/FY1112/HWS223-15.jpg', '215', '0', '450', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('628', '-1', '1', 'HWS223-18', 'Finest Repose', '1100.00', '', '', 'images/product/FY1112/HWS223-18.jpg', '215', '0', '540', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('629', '-1', '1', 'HWS223-21', 'Finest Repose', '1280.00', '', '', 'images/product/FY1112/HWS223-21.jpg', '215', '0', '630', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('630', '-1', '1', 'HWS223-24', 'Finest Repose', '1460.00', '', '', 'images/product/FY1112/HWS223-24.jpg', '215', '0', '720', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('631', '-1', '1', 'HWS223-27', 'Finest Repose', '1640.00', '', '', 'images/product/FY1112/HWS223-27.jpg', '215', '0', '810', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('632', '-1', '1', 'HWS223-30', 'Finest Repose', '1820.00', '', '', 'images/product/FY1112/HWS223-30.jpg', '215', '0', '900', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('633', '-1', '1', 'HST101', 'Towel Scroll (Extra Thick) 15Ft', '40.00', '', '', 'images/product/FY1112/HST101-15.jpg', '0', '0', '450', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('634', '-1', '1', 'HST101-30', 'Towel Scroll (Extra Thick) 30Ft', '80.00', '', '', 'images/product/FY1112/HST101-30.jpg', '0', '0', '900', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('635', '-1', '1', 'HST101-45', 'Towel Scroll (Extra Thick) 45Ft', '120.00', '', '', 'images/product/FY1112/HST101-45.jpg', '0', '0', '1350', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('636', '-1', '1', 'HST101-60', 'Towel Scroll (Extra Thick) 60Ft', '160.00', '', '', 'images/product/FY1112/HST101-60.jpg', '0', '0', '1800', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('637', '-1', '1', 'HST101-75', 'Towel Scroll (Extra Thick) 75Ft', '200.00', '', '', 'images/product/FY1112/HST101-75.jpg', '0', '0', '2250', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('638', '-1', '1', 'HST101-90', 'Towel Scroll (Extra Thick) 90Ft', '240.00', '', '', 'images/product/FY1112/HST101-90.jpg', '0', '0', '2700', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('639', '-1', '1', 'HST101-105', 'Towel Scroll (Extra Thick) 105Ft', '280.00', '', '', 'images/product/FY1112/HST101-105.jpg', '0', '0', '3150', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('640', '-1', '1', 'HST101-120', 'Towel Scroll (Extra Thick) 120Ft', '320.00', '', '', 'images/product/FY1112/HST101-120.jpg', '0', '0', '3600', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('641', '-1', '1', 'HST101-135', 'Towel Scroll (Extra Thick) 135Ft', '360.00', '', '', 'images/product/FY1112/HST101-135.jpg', '0', '0', '4050', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('642', '-1', '1', 'HST101-150', 'Towel Scroll (Extra Thick) 150Ft', '400.00', '', '', 'images/product/FY1112/HST101-150.jpg', '0', '0', '4500', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('643', '-1', '1', 'HST102', 'Cloth Scroll 15Ft', '30.00', '', '', 'images/product/FY1112/HST102-15.jpg', '0', '0', '450', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('644', '-1', '1', 'HST102-30', 'Cloth Scroll 30Ft', '60.00', '', '', 'images/product/FY1112/HST102-30.jpg', '0', '0', '900', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('645', '-1', '1', 'HST102-45', 'Cloth Scroll 45Ft', '90.00', '', '', 'images/product/FY1112/HST102-45.jpg', '0', '0', '1350', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('646', '-1', '1', 'HST102-60', 'Cloth Scroll 60Ft', '120.00', '', '', 'images/product/FY1112/HST102-60.jpg', '0', '0', '1800', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('647', '-1', '1', 'HST102-75', 'Cloth Scroll 75Ft', '150.00', '', '', 'images/product/FY1112/HST102-75.jpg', '0', '0', '2250', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('648', '-1', '1', 'HST102-90', 'Cloth Scroll 90Ft', '180.00', '', '', 'images/product/FY1112/HST102-90.jpg', '0', '0', '2700', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('649', '-1', '1', 'HST102-105', 'Cloth Scroll 105Ft', '210.00', '', '', 'images/product/FY1112/HST102-105.jpg', '0', '0', '3150', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('650', '-1', '1', 'HST102-120', 'Cloth Scroll 120Ft', '240.00', '', '', 'images/product/FY1112/HST102-120.jpg', '0', '0', '3600', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('651', '-1', '1', 'HST102-150', 'Cloth Scroll 150Ft', '300.00', '', '', 'images/product/FY1112/HST102-150.jpg', '0', '0', '4500', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('652', '-1', '1', 'HST102-180', 'Cloth Scroll 180Ft', '360.00', '', '', 'images/product/FY1112/HST102-180.jpg', '0', '0', '5400', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('653', '-1', '1', 'HST102-195', 'Cloth Scroll 195Ft', '390.00', '', '', 'images/product/FY1112/HST102-195.jpg', '0', '0', '5850', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('654', '-1', '1', 'HST102-210', 'Cloth Scroll 210Ft', '420.00', '', '', 'images/product/FY1112/HST102-210.jpg', '0', '0', '6300', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('655', '-1', '1', 'HST102-240', 'Cloth Scroll 240Ft', '480.00', '', '', 'images/product/FY1112/HST102-240.jpg', '0', '0', '7200', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('656', '-1', '1', 'HST102-300', 'Cloth Scroll 300Ft', '600.00', '', '', 'images/product/FY1112/HST102-300.jpg', '0', '0', '9000', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('657', '-1', '1', 'HST103', 'Towel Scroll 15Ft', '30.00', '', '', 'images/product/FY1112/HST103-15.jpg', '0', '0', '450', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('658', '-1', '1', 'HST103-30', 'Towel Scroll 30Ft', '50.00', '', '', 'images/product/FY1112/HST103-30.jpg', '0', '0', '900', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('659', '-1', '1', 'HST103-45', 'Towel Scroll 45Ft', '75.00', '', '', 'images/product/FY1112/HST103-45.jpg', '0', '0', '1350', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('660', '-1', '1', 'HST103-60', 'Towel Scroll 60Ft', '100.00', '', '', 'images/product/FY1112/HST103-60.jpg', '0', '0', '1800', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('661', '-1', '1', 'HST103-75', 'Towel Scroll 75Ft', '125.00', '', '', 'images/product/FY1112/HST103-75.jpg', '0', '0', '2250', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('662', '-1', '1', 'HST103-90', 'Towel Scroll 90Ft', '150.00', '', '', 'images/product/FY1112/HST103-90.jpg', '0', '0', '2700', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('663', '-1', '1', 'HST103-105', 'Towel Scroll 105Ft', '175.00', '', '', 'images/product/FY1112/HST103-105.jpg', '0', '0', '3150', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('664', '-1', '1', 'HST103-120', 'Towel Scroll 120Ft', '200.00', '', '', 'images/product/FY1112/HST103-120.jpg', '0', '0', '3600', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('665', '-1', '1', 'HST103-135', 'Towel Scroll 135Ft', '225.00', '', '', 'images/product/FY1112/HST103-135.jpg', '0', '0', '4050', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('666', '-1', '1', 'HST103-150', 'Towel Scroll 150Ft', '250.00', '', '', 'images/product/FY1112/HST103-150.jpg', '0', '0', '4500', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('667', '-1', '1', 'HST103-165', 'Towel Scroll 165Ft', '275.00', '', '', 'images/product/FY1112/HST103-165.jpg', '0', '0', '4950', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('668', '-1', '1', 'HST103-180', 'Towel Scroll 180Ft', '300.00', '', '', 'images/product/FY1112/HST103-180.jpg', '0', '0', '5400', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('669', '-1', '1', 'HST103-195', 'Towel Scroll 195Ft', '325.00', '', '', 'images/product/FY1112/HST103-195.jpg', '0', '0', '5850', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('670', '-1', '1', 'HST103-210', 'Towel Scroll 210Ft', '350.00', '', '', 'images/product/FY1112/HST103-210.jpg', '0', '0', '6300', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('671', '-1', '1', 'HST103-225', 'Towel Scroll 225Ft', '375.00', '', '', 'images/product/FY1112/HST103-225.jpg', '0', '0', '6750', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('672', '-1', '1', 'HST103-240', 'Towel Scroll 240Ft', '400.00', '', '', 'images/product/FY1112/HST103-240.jpg', '0', '0', '7200', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('673', '-1', '1', 'HST103-255', 'Towel Scroll 255Ft', '425.00', '', '', 'images/product/FY1112/HST103-255.jpg', '0', '0', '7650', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('674', '-1', '1', 'HST103-270', 'Towel Scroll 270Ft', '450.00', '', '', 'images/product/FY1112/HST103-270.jpg', '0', '0', '8100', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('675', '-1', '1', 'HST103-285', 'Towel Scroll 285Ft', '475.00', '', '', 'images/product/FY1112/HST103-285.jpg', '0', '0', '8550', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('676', '-1', '1', 'HST103-300', 'Towel Scroll 300Ft', '500.00', '', '', 'images/product/FY1112/HST103-300.jpg', '0', '0', '9000', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('677', '-1', '1', 'HST104', 'High Quality Comforter', '100.00', '', '', 'images/product/FY1112/HST104.jpg', '254', '0', '204', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('678', '-1', '1', 'HST105', 'High Quality Comforter', '40.00', '', '', 'images/product/FY1112/HST105.jpg', '190', '0', '140', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('679', '-1', '1', 'HST106', 'High Quality Comforter', '50.00', '', '', 'images/product/FY1112/HST106.jpg', '204', '0', '153', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('680', '-1', '1', 'HST107', 'High Quality Comforter', '60.00', '', '', 'images/product/FY1112/HST107.jpg', '229', '0', '178', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('681', '-1', '1', 'HST108', 'High Quality Comforter', '80.00', '', '', 'images/product/FY1112/HST108.jpg', '214', '0', '214', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('682', '-1', '1', 'HST109', 'Towel Blanket (Ultra Thick)', '40.00', '', '', 'images/product/FY1112/HST109.jpg', '203', '0', '152', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('683', '-1', '1', 'HST110', 'Towel Blanket (Ultra Thick)', '50.00', '', '', 'images/product/FY1112/HST110.jpg', '228', '0', '177', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('684', '-1', '1', 'HST111', 'High Quality Towel Blanket (Ultra Thick)', '60.00', '', '', 'images/product/FY1112/HST111.jpg', '228', '0', '177', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('685', '-1', '1', 'HST112', 'High Quality Towel Blanket (Ultra Thick)', '80.00', '', '', 'images/product/FY1112/HST112.jpg', '228', '0', '177', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('686', '-1', '1', 'HST113', 'High Quality Floral Blanket (Ultra Thick)', '80.00', '', '', 'images/product/FY1112/HST113.jpg', '228', '0', '177', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('687', '-1', '1', 'HST114', 'High Quality Flannelette Blanket', '100.00', '', '', 'images/product/FY1112/HST114.jpg', '228', '0', '177', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('688', '-1', '1', 'HST115', 'High Quality Double Layer Flannelette Blanket', '150.00', '', '', 'images/product/FY1112/HST115.jpg', '228', '0', '177', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('689', '-1', '1', 'HST116', 'Exceptional High Quality Double Layer Flannelette Blanket', '200.00', '', '', 'images/product/FY1112/HST116.jpg', '253', '0', '203', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_addon_link
-- ----------------------------
INSERT INTO `tbl_product_addon_link` VALUES ('11', '1', '4', '50');
INSERT INTO `tbl_product_addon_link` VALUES ('12', '1', '5', '50');
INSERT INTO `tbl_product_addon_link` VALUES ('13', '3', '4', '50');
INSERT INTO `tbl_product_addon_link` VALUES ('14', '3', '5', '50');

-- ----------------------------
-- Table structure for `tbl_product_category`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_category`;
CREATE TABLE `tbl_product_category` (
  `product_category_id` int(11) NOT NULL auto_increment,
  `category_type` int(11) NOT NULL default '1',
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
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_category
-- ----------------------------
INSERT INTO `tbl_product_category` VALUES ('201', '1', '', '0', 'Categories', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('202', '2', '', '0', 'Occasions', '', '', '1', '500', '1');
INSERT INTO `tbl_product_category` VALUES ('207', '1', '', '0', 'Help Me Find A Gift', '', '', '1', '501', '1');
INSERT INTO `tbl_product_category` VALUES ('208', '2', '', '202', 'Admin Professional Week', '', '', '1', '1', '1');
INSERT INTO `tbl_product_category` VALUES ('215', '1', '', '0', 'Custom Categories', '', '', '1', '700', '1');
INSERT INTO `tbl_product_category` VALUES ('216', '3', '', '215', 'Designer\'s Pick', '', '', '0', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('217', '3', '', '215', 'Deal of The Week', '', '', '0', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('219', '3', '', '215', 'Best Sellers', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('220', '1', '', '201', 'Newborn', 'images/category/220.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('221', '1', '', '201', 'Hand Bouquets', 'images/category/221.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('222', '1', '', '201', 'Birthday', 'images/category/222.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('223', '1', '', '201', 'Simply Love', 'images/category/223.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('224', '1', '', '201', 'Table Arrangements', 'images/category/224.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('225', '1', '', '201', 'Vines Wines', 'images/category/225.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('226', '1', '', '201', 'Urban Lifestyle', 'images/category/226.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('227', '1', '', '201', 'Gourmet Food Hampers', 'images/category/227.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('228', '1', '', '201', 'Everlasting Flowers', 'images/category/228.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('231', '1', '', '201', 'Grand Opening', 'images/category/231.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('232', '1', '', '201', 'Congratulatory Banner', '', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('233', '1', '', '201', 'Vitality Delicacies', 'images/category/233.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('234', '1', '', '201', 'Fruits & Flowers', 'images/category/234.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('235', '1', '', '201', 'Get Well', 'images/category/235.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('236', '1', '', '201', 'Sympathy', 'images/category/236.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('237', '1', '', '201', 'Condolences Comforters', 'images/category/237.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('238', '2', 'AN', '202', 'Anniversary', 'images/category/238.jpg', '', '1', '3', '0');
INSERT INTO `tbl_product_category` VALUES ('239', '2', '', '202', 'Cheer Up!', 'images/category/239.jpg', '', '1', '5', '0');
INSERT INTO `tbl_product_category` VALUES ('240', '2', '', '202', 'I&#39;m Sorry', 'images/category/240.jpg', '', '1', '7', '0');
INSERT INTO `tbl_product_category` VALUES ('241', '2', 'HW', '202', 'House Warming', 'images/category/241.jpg', '', '1', '9', '0');
INSERT INTO `tbl_product_category` VALUES ('242', '2', 'TY', '202', 'Thank You!', 'images/category/242.jpg', '', '1', '11', '0');
INSERT INTO `tbl_product_category` VALUES ('243', '2', 'WW', '202', 'Wedding Gifts', 'images/category/243.jpg', '', '1', '2', '0');
INSERT INTO `tbl_product_category` VALUES ('244', '2', 'VD', '202', 'Valentine&#39;s Day', 'images/category/244.jpg', '', '1', '4', '0');
INSERT INTO `tbl_product_category` VALUES ('245', '2', 'MD', '202', 'Mother&#39;s Day', 'images/category/245.jpg', '', '1', '6', '0');
INSERT INTO `tbl_product_category` VALUES ('246', '2', 'FD', '202', 'Father&#39;s Day', '', '', '1', '8', '0');
INSERT INTO `tbl_product_category` VALUES ('247', '2', '', '202', 'Teacher&#39;s Day', '', '', '1', '10', '0');
INSERT INTO `tbl_product_category` VALUES ('248', '1', '', '219', 'Opening', '', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('250', '1', '', '219', 'Newborns', '', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('251', '1', '', '220', 'Baby Diaper Cakes', '', 'Introducing our Diaper Cakes selection! This contemporary way of packing the much requested diapers is bound to be a hit.', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('252', '1', '', '220', 'Baby Bags', '', 'Preferred goodies for Mom and Baby packed in a befitting ready-to-go carrier.', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('253', '1', '', '220', 'Newborn Hampers', '', 'Sending your warmest congratulations on the birth of a bundle of joy!', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('254', '1', '', '220', 'Toddlers Favourites', '', 'Babies grow up so quickly and we have just the gift for them as they start to develop their motor skills.', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('255', '1', '', '222', 'Birthday Cakes', '', 'Delectable cake choices from Eatzi Gourmet!', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('256', '1', '', '222', 'Birthday For Ladies', '', 'Impress her with these pretty gifts. Humming makes it easy for you to pamper and indulge her on this special day.', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('257', '1', '', '222', 'Birthday For Men', '', 'Classy gifts that exude charm and masculinity. Surprise your man with a Humming gift today!', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('258', '1', '', '231', 'Metal Stands', '', 'Throughout the decades metal stands have been one of the most traditional forms of congratulatory floral stands. While embracing this traditional favourite, Humming always injects surprises through our creative use of flowers and decorations!', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('259', '1', '', '231', 'Congratulation Arch', '', 'Congratulation Arches are so lively and attractive they take centre stage at every grand opening.', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('260', '1', '', '231', 'Customised Floral Arch', '', 'Commemorate the special event with Humming&#39;s show-stealing digitally customised banner floral stand. Corporate logos and pictures can be included too. Please provide us images (min 200 dpi) at least one working day in advance.', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('261', '1', '', '231', 'Pedestal Stand', '', 'Eye-catching floral pedestals that exude congratulations with elegant simplicity.', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('262', '1', '', '231', 'Prosperity Range', '', 'In the Wang! Wang! Proseprity Range, we are ready to grace the doors of any new establishment and usher in big fortunes.', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('263', '1', '', '231', 'Box Stand (Fabric Designs)', '', 'Dressed with a soft flowy fabric that complements the choice of flowers used and adds a classy touch to your congratulatory message. You will definitely be spolit for choice!', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('265', '1', '', '231', 'Fatt! Fatt! Fatt! Range', '', 'Fatt! Fatt! Fatt! range is designed to impress and start businesses on the right note.', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('281', '1', '', '237', 'Condolences Scrolls', '', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('282', '1', '', '237', 'Condolences Comforter/ Blankets', '', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('283', '3', '', '215', 'Addon', '', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('284', '1', '', '236', 'Plants', '', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('285', '1', '', '236', 'Personalized', '', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('286', '1', '', '236', 'Box Stands', '', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('287', '1', '', '236', 'Crosses', '', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('288', '1', '', '236', 'Wreath Ring', '', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('289', '1', '', '236', 'Multi-Tier Metal Stands', '', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('290', '1', '', '236', 'Blanket Floral Stands', '', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('291', '1', '', '236', 'Others', '', '', '1', '50', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=1842 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_category_link
-- ----------------------------
INSERT INTO `tbl_product_category_link` VALUES ('103', '7', '30', '50');
INSERT INTO `tbl_product_category_link` VALUES ('146', '5', '200', '50');
INSERT INTO `tbl_product_category_link` VALUES ('160', '8', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('161', '8', '219', '50');
INSERT INTO `tbl_product_category_link` VALUES ('162', '9', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('163', '9', '219', '50');
INSERT INTO `tbl_product_category_link` VALUES ('166', '12', '195', '50');
INSERT INTO `tbl_product_category_link` VALUES ('167', '12', '209', '50');
INSERT INTO `tbl_product_category_link` VALUES ('173', '11', '195', '50');
INSERT INTO `tbl_product_category_link` VALUES ('182', '1', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('183', '1', '219', '50');
INSERT INTO `tbl_product_category_link` VALUES ('186', '13', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('187', '14', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('188', '15', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('189', '16', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('190', '17', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('191', '18', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('192', '19', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('193', '20', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('194', '21', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('195', '22', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('196', '23', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('197', '24', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('198', '25', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('200', '27', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('201', '28', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('202', '29', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('203', '30', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('204', '31', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('205', '32', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('206', '33', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('207', '34', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('208', '35', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('209', '36', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('210', '24', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('211', '37', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('212', '38', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('213', '39', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('214', '40', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('215', '41', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('216', '42', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('217', '43', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('218', '25', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('219', '44', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('220', '45', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('221', '46', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('222', '47', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('223', '48', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('224', '49', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('225', '50', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('226', '51', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('227', '52', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('228', '53', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('230', '1', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('231', '8', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('232', '9', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('233', '54', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('234', '55', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('235', '56', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('236', '57', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('237', '58', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('238', '59', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('239', '60', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('240', '61', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('241', '62', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('242', '63', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('243', '64', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('244', '65', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('245', '66', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('246', '67', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('247', '68', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('248', '69', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('249', '70', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('250', '71', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('251', '72', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('252', '73', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('253', '74', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('254', '75', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('255', '76', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('256', '77', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('259', '79', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('260', '80', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('261', '81', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('262', '82', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('263', '83', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('264', '84', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('265', '85', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('266', '86', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('267', '87', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('268', '88', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('269', '89', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('270', '90', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('271', '91', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('272', '92', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('273', '93', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('274', '94', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('275', '95', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('276', '96', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('277', '97', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('278', '98', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('279', '99', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('280', '100', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('281', '101', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('282', '102', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('283', '27', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('284', '103', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('285', '104', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('286', '105', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('287', '106', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('288', '107', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('289', '108', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('290', '109', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('291', '110', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('292', '111', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('293', '112', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('294', '113', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('295', '114', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('296', '28', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('297', '115', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('298', '116', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('299', '117', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('300', '118', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('301', '119', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('302', '120', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('303', '121', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('304', '122', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('305', '123', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('306', '124', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('307', '125', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('308', '126', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('309', '127', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('310', '128', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('311', '13', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('312', '129', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('313', '130', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('314', '131', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('315', '132', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('316', '133', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('317', '134', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('318', '135', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('319', '136', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('320', '12', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('321', '137', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('322', '11', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('324', '138', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('325', '139', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('326', '140', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('327', '141', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('328', '142', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('329', '143', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('330', '14', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('331', '144', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('332', '145', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('333', '146', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('334', '147', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('335', '148', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('336', '149', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('337', '150', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('338', '151', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('339', '152', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('340', '153', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('341', '154', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('342', '155', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('343', '156', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('344', '157', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('345', '158', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('346', '159', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('347', '160', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('348', '161', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('349', '162', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('350', '163', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('351', '164', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('352', '165', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('353', '166', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('354', '167', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('355', '168', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('356', '169', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('357', '170', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('358', '171', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('359', '172', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('360', '173', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('361', '174', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('362', '175', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('363', '176', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('364', '177', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('365', '178', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('366', '179', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('367', '180', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('368', '181', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('369', '182', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('370', '183', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('371', '184', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('372', '185', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('374', '187', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('375', '188', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('376', '189', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('377', '190', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('378', '191', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('379', '192', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('380', '193', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('381', '194', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('382', '195', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('383', '196', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('384', '197', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('385', '198', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('386', '199', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('387', '200', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('388', '201', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('389', '202', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('390', '203', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('391', '204', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('392', '205', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('393', '206', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('394', '207', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('395', '208', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('396', '209', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('397', '210', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('398', '211', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('399', '212', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('400', '213', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('401', '214', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('402', '215', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('403', '216', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('404', '217', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('405', '218', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('406', '219', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('407', '220', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('408', '221', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('409', '222', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('410', '223', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('411', '224', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('412', '225', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('413', '226', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('414', '227', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('415', '228', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('416', '229', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('417', '230', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('418', '231', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('419', '232', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('420', '233', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('421', '234', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('422', '235', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('423', '236', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('424', '237', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('425', '238', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('426', '239', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('427', '240', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('428', '241', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('429', '242', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('430', '243', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('431', '244', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('432', '245', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('433', '246', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('434', '247', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('435', '248', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('436', '249', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('437', '250', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('438', '251', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('439', '252', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('440', '253', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('441', '29', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('442', '254', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('443', '255', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('444', '30', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('445', '256', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('446', '31', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('447', '257', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('448', '258', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('449', '259', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('450', '260', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('451', '261', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('452', '262', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('453', '263', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('454', '32', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('455', '264', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('456', '265', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('457', '266', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('458', '267', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('459', '268', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('460', '21', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('461', '269', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('462', '270', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('463', '271', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('464', '272', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('465', '273', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('466', '274', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('467', '7', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('468', '275', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('469', '276', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('470', '277', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('471', '278', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('472', '279', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('473', '280', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('474', '281', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('475', '20', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('476', '282', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('477', '283', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('478', '284', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('479', '23', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('480', '285', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('481', '286', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('482', '287', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('483', '288', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('484', '289', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('485', '290', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('486', '291', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('487', '292', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('488', '293', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('489', '294', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('490', '295', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('491', '296', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('492', '297', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('493', '22', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('494', '298', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('495', '299', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('496', '300', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('497', '301', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('498', '302', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('499', '303', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('500', '304', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('501', '305', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('502', '306', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('503', '307', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('504', '308', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('505', '309', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('506', '310', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('507', '311', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('508', '312', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('509', '313', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('510', '314', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('511', '315', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('512', '316', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('513', '317', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('514', '318', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('515', '319', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('516', '320', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('517', '321', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('518', '322', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('519', '323', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('520', '324', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('521', '325', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('522', '326', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('523', '327', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('524', '328', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('525', '329', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('526', '330', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('527', '331', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('528', '332', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('529', '333', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('530', '334', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('531', '335', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('532', '336', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('533', '337', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('534', '338', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('535', '339', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('536', '340', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('537', '341', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('538', '342', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('539', '343', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('540', '344', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('541', '345', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('542', '346', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('543', '347', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('544', '348', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('545', '349', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('546', '350', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('547', '18', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('548', '351', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('549', '352', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('550', '353', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('551', '354', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('552', '355', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('553', '356', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('554', '357', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('555', '358', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('556', '359', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('557', '15', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('558', '360', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('559', '361', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('560', '362', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('561', '363', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('562', '16', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('563', '364', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('564', '365', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('565', '366', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('566', '367', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('567', '368', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('568', '369', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('569', '370', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('570', '371', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('571', '372', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('572', '373', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('573', '374', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('574', '17', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('575', '375', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('576', '376', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('577', '377', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('578', '378', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('579', '379', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('580', '380', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('581', '381', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('582', '382', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('583', '383', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('584', '384', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('585', '385', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('586', '386', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('587', '387', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('588', '19', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('589', '388', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('590', '389', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('591', '390', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('592', '391', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('593', '392', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('594', '393', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('595', '394', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('596', '395', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('597', '396', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('598', '397', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('599', '398', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('600', '399', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('601', '400', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('602', '401', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('603', '402', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('604', '403', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('605', '404', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('606', '405', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('607', '406', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('608', '407', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('609', '408', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('610', '409', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('611', '410', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('612', '411', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('613', '412', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('614', '413', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('615', '414', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('616', '415', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('617', '416', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('618', '417', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('619', '418', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('620', '419', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('621', '420', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('622', '421', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('623', '422', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('624', '423', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('625', '424', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('626', '425', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('627', '426', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('628', '427', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('629', '428', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('630', '429', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('631', '430', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('632', '431', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('633', '432', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('634', '433', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('635', '434', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('636', '435', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('637', '436', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('638', '437', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('639', '438', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('640', '439', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('641', '440', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('642', '441', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('643', '442', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('644', '443', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('645', '444', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('646', '445', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('647', '446', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('648', '447', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('649', '448', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('650', '449', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('651', '450', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('652', '451', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('653', '452', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('654', '453', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('655', '454', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('656', '455', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('657', '456', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('658', '457', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('659', '458', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('660', '459', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('661', '460', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('662', '461', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('663', '462', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('664', '463', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('665', '464', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('666', '465', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('667', '466', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('668', '467', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('669', '468', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('670', '469', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('671', '470', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('672', '471', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('673', '472', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('674', '473', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('675', '474', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('676', '475', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('677', '476', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('678', '477', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('679', '478', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('680', '479', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('681', '480', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('682', '481', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('683', '482', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('684', '483', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('685', '484', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('686', '485', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('687', '486', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('688', '487', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('689', '488', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('690', '489', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('691', '490', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('692', '491', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('693', '492', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('694', '493', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('695', '494', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('696', '495', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('697', '496', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('698', '497', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('699', '498', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('700', '499', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('701', '500', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('702', '501', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('703', '502', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('704', '503', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('705', '504', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('706', '505', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('707', '506', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('708', '507', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('709', '508', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('710', '509', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('711', '510', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('712', '511', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('713', '512', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('714', '513', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('715', '514', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('716', '515', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('717', '516', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('718', '517', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('719', '518', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('720', '519', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('721', '520', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('722', '521', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('723', '522', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('724', '523', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('725', '524', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('726', '525', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('727', '526', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('728', '527', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('729', '528', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('730', '529', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('731', '530', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('732', '531', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('733', '532', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('734', '533', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('735', '534', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('736', '535', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('737', '536', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('738', '537', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('739', '538', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('740', '539', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('741', '540', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('742', '541', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('743', '542', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('744', '543', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('745', '544', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('746', '545', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('747', '546', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('748', '547', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('749', '548', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('750', '549', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('751', '550', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('752', '551', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('753', '552', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('754', '553', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('755', '554', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('756', '555', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('757', '556', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('758', '557', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('759', '558', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('760', '559', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('761', '560', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('762', '561', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('763', '562', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('764', '563', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('765', '564', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('766', '565', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('767', '566', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('768', '567', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('769', '568', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('770', '569', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('771', '570', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('772', '571', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('773', '572', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('774', '573', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('775', '574', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('776', '575', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('777', '576', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('778', '577', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('779', '578', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('780', '579', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('781', '580', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('782', '581', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('783', '582', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('784', '583', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('785', '584', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('786', '585', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('787', '586', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('788', '587', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('789', '588', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('790', '589', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('791', '590', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('792', '591', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('793', '592', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('794', '593', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('795', '594', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('796', '595', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('797', '596', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('798', '597', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('799', '598', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('800', '599', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('801', '600', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('802', '601', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('803', '602', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('804', '603', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('805', '604', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('806', '605', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('807', '606', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('808', '607', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('809', '608', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('810', '609', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('811', '610', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('812', '611', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('813', '612', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('814', '613', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('815', '614', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('816', '615', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('817', '616', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('818', '617', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('819', '618', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('820', '619', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('821', '620', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('822', '621', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('823', '622', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('824', '623', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('825', '624', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('826', '625', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('827', '626', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('828', '627', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('829', '628', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('830', '629', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('831', '630', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('832', '631', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('833', '632', '236', '50');
INSERT INTO `tbl_product_category_link` VALUES ('834', '633', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('835', '634', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('836', '635', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('837', '636', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('838', '637', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('839', '638', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('840', '639', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('841', '640', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('842', '641', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('843', '642', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('844', '643', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('845', '644', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('846', '645', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('847', '646', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('848', '647', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('849', '648', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('850', '649', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('851', '650', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('852', '651', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('853', '652', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('854', '653', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('855', '654', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('856', '655', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('857', '656', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('858', '657', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('859', '658', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('860', '659', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('861', '660', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('862', '661', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('863', '662', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('864', '663', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('865', '664', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('866', '665', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('867', '666', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('868', '667', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('869', '668', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('870', '669', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('871', '670', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('872', '671', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('873', '672', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('874', '673', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('875', '674', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('876', '675', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('877', '676', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('878', '677', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('879', '678', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('880', '679', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('881', '680', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('882', '681', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('883', '682', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('884', '683', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('885', '684', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('886', '685', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('887', '686', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('888', '687', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('889', '688', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('890', '689', '237', '50');
INSERT INTO `tbl_product_category_link` VALUES ('894', '33', '251', '50');
INSERT INTO `tbl_product_category_link` VALUES ('895', '34', '251', '50');
INSERT INTO `tbl_product_category_link` VALUES ('896', '144', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('897', '145', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('898', '146', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('899', '147', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('900', '148', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('901', '149', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('902', '150', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('903', '151', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('904', '152', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('905', '153', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('906', '154', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('907', '155', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('908', '156', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('909', '157', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('910', '158', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('911', '159', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('912', '166', '256', '50');
INSERT INTO `tbl_product_category_link` VALUES ('913', '167', '256', '50');
INSERT INTO `tbl_product_category_link` VALUES ('914', '168', '256', '50');
INSERT INTO `tbl_product_category_link` VALUES ('915', '169', '256', '50');
INSERT INTO `tbl_product_category_link` VALUES ('916', '170', '256', '50');
INSERT INTO `tbl_product_category_link` VALUES ('917', '171', '257', '50');
INSERT INTO `tbl_product_category_link` VALUES ('918', '172', '257', '50');
INSERT INTO `tbl_product_category_link` VALUES ('919', '173', '257', '50');
INSERT INTO `tbl_product_category_link` VALUES ('920', '174', '257', '50');
INSERT INTO `tbl_product_category_link` VALUES ('921', '175', '257', '50');
INSERT INTO `tbl_product_category_link` VALUES ('922', '338', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('923', '339', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('924', '340', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('925', '341', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('926', '342', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('927', '343', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('928', '344', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('929', '345', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('930', '346', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('931', '347', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('932', '348', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('933', '349', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('934', '350', '259', '50');
INSERT INTO `tbl_product_category_link` VALUES ('935', '18', '259', '50');
INSERT INTO `tbl_product_category_link` VALUES ('936', '351', '260', '50');
INSERT INTO `tbl_product_category_link` VALUES ('937', '352', '260', '50');
INSERT INTO `tbl_product_category_link` VALUES ('938', '353', '260', '50');
INSERT INTO `tbl_product_category_link` VALUES ('939', '354', '260', '50');
INSERT INTO `tbl_product_category_link` VALUES ('940', '355', '261', '50');
INSERT INTO `tbl_product_category_link` VALUES ('941', '356', '261', '50');
INSERT INTO `tbl_product_category_link` VALUES ('942', '357', '261', '50');
INSERT INTO `tbl_product_category_link` VALUES ('943', '358', '261', '50');
INSERT INTO `tbl_product_category_link` VALUES ('944', '359', '261', '50');
INSERT INTO `tbl_product_category_link` VALUES ('945', '15', '261', '50');
INSERT INTO `tbl_product_category_link` VALUES ('946', '360', '261', '50');
INSERT INTO `tbl_product_category_link` VALUES ('947', '361', '262', '50');
INSERT INTO `tbl_product_category_link` VALUES ('948', '362', '262', '50');
INSERT INTO `tbl_product_category_link` VALUES ('949', '363', '262', '50');
INSERT INTO `tbl_product_category_link` VALUES ('950', '16', '262', '50');
INSERT INTO `tbl_product_category_link` VALUES ('951', '364', '262', '50');
INSERT INTO `tbl_product_category_link` VALUES ('952', '365', '262', '50');
INSERT INTO `tbl_product_category_link` VALUES ('953', '366', '262', '50');
INSERT INTO `tbl_product_category_link` VALUES ('954', '367', '262', '50');
INSERT INTO `tbl_product_category_link` VALUES ('955', '377', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('956', '378', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('957', '379', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('958', '380', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('959', '381', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('960', '382', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('961', '383', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('962', '384', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('963', '385', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('964', '386', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('965', '387', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('966', '19', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('967', '388', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('968', '389', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('969', '391', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('970', '392', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('971', '394', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('972', '395', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('973', '396', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('974', '397', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('975', '398', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('976', '399', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('977', '404', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('978', '400', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('979', '401', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('980', '402', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('981', '403', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('982', '405', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('983', '406', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('984', '407', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('985', '408', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('986', '409', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('987', '410', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('988', '411', '265', '50');
INSERT INTO `tbl_product_category_link` VALUES ('989', '412', '265', '50');
INSERT INTO `tbl_product_category_link` VALUES ('990', '413', '265', '50');
INSERT INTO `tbl_product_category_link` VALUES ('991', '414', '265', '50');
INSERT INTO `tbl_product_category_link` VALUES ('992', '415', '265', '50');
INSERT INTO `tbl_product_category_link` VALUES ('993', '416', '265', '50');
INSERT INTO `tbl_product_category_link` VALUES ('994', '417', '265', '50');
INSERT INTO `tbl_product_category_link` VALUES ('995', '418', '265', '50');
INSERT INTO `tbl_product_category_link` VALUES ('996', '35', '251', '50');
INSERT INTO `tbl_product_category_link` VALUES ('997', '36', '251', '50');
INSERT INTO `tbl_product_category_link` VALUES ('998', '24', '251', '50');
INSERT INTO `tbl_product_category_link` VALUES ('999', '37', '251', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1000', '38', '251', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1001', '39', '251', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1002', '40', '251', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1003', '41', '252', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1004', '42', '252', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1005', '43', '252', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1006', '25', '252', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1007', '44', '252', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1008', '45', '252', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1009', '46', '252', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1010', '47', '252', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1011', '48', '252', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1012', '49', '252', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1013', '50', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1014', '51', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1015', '52', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1016', '53', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1018', '1', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1019', '8', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1020', '9', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1021', '54', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1022', '55', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1023', '56', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1024', '57', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1025', '58', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1026', '59', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1027', '60', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1028', '61', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1029', '62', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1030', '63', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1031', '64', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1032', '65', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1033', '66', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1034', '67', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1035', '68', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1036', '69', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1037', '70', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1038', '71', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1039', '72', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1040', '73', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1041', '74', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1042', '75', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1043', '76', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1044', '77', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1047', '79', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1048', '80', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1049', '81', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1050', '82', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1051', '83', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1052', '84', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1053', '85', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1054', '86', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1055', '87', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1056', '88', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1057', '89', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1058', '90', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1059', '91', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1060', '92', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1061', '93', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1062', '94', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1063', '95', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1064', '96', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1065', '97', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1066', '98', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1067', '99', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1068', '100', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1069', '101', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1070', '102', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1071', '27', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1072', '103', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1073', '104', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1074', '105', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1075', '106', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1076', '107', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1077', '108', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1078', '109', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1079', '110', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1080', '111', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1081', '112', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1082', '113', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1083', '114', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1084', '28', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1085', '115', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1086', '116', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1087', '117', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1088', '118', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1089', '119', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1090', '120', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1091', '121', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1092', '122', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1093', '123', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1094', '124', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1095', '633', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1096', '634', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1097', '635', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1098', '636', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1099', '637', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1100', '638', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1101', '639', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1102', '640', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1103', '641', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1104', '642', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1105', '643', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1106', '644', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1107', '645', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1108', '646', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1109', '647', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1110', '648', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1111', '649', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1112', '650', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1113', '651', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1114', '652', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1115', '653', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1116', '654', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1117', '655', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1118', '656', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1119', '657', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1120', '658', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1121', '659', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1122', '660', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1123', '661', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1124', '662', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1125', '663', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1126', '664', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1127', '665', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1128', '666', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1129', '667', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1130', '668', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1131', '669', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1132', '670', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1133', '671', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1134', '672', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1135', '673', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1136', '674', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1137', '675', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1138', '676', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1139', '677', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1140', '678', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1141', '679', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1142', '680', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1143', '681', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1144', '682', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1145', '683', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1146', '684', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1147', '685', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1148', '686', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1149', '687', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1150', '688', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1151', '689', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1152', '501', '266', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1153', '502', '266', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1154', '503', '266', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1155', '504', '266', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1156', '505', '266', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1157', '506', '267', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1158', '507', '267', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1159', '508', '268', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1160', '509', '268', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1161', '510', '269', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1162', '511', '269', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1163', '512', '269', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1164', '513', '269', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1165', '514', '270', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1166', '515', '270', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1167', '516', '270', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1168', '517', '270', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1169', '518', '271', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1170', '519', '271', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1171', '520', '271', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1172', '521', '271', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1173', '522', '271', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1174', '523', '271', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1175', '524', '271', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1176', '525', '271', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1177', '526', '271', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1178', '527', '271', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1179', '528', '271', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1180', '529', '271', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1181', '530', '271', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1182', '531', '271', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1183', '532', '271', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1184', '533', '271', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1185', '534', '271', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1186', '535', '271', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1187', '536', '271', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1188', '537', '271', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1189', '538', '272', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1190', '539', '272', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1191', '540', '272', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1192', '541', '272', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1193', '542', '272', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1194', '543', '272', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1195', '544', '272', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1196', '545', '272', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1197', '546', '273', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1198', '547', '273', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1199', '548', '273', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1200', '549', '273', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1201', '550', '273', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1202', '551', '273', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1203', '552', '273', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1204', '553', '273', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1205', '554', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1206', '555', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1207', '556', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1208', '557', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1209', '558', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1210', '559', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1211', '560', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1212', '561', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1213', '562', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1214', '563', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1215', '564', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1216', '565', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1217', '566', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1218', '567', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1219', '568', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1220', '569', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1221', '570', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1222', '571', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1223', '572', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1224', '573', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1225', '574', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1226', '575', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1227', '576', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1228', '577', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1229', '578', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1230', '579', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1231', '580', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1232', '581', '274', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1233', '582', '275', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1234', '583', '275', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1235', '584', '276', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1236', '585', '276', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1237', '586', '276', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1238', '587', '276', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1239', '588', '277', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1240', '589', '277', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1241', '590', '277', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1242', '591', '277', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1243', '592', '277', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1244', '593', '277', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1245', '594', '277', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1246', '595', '277', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1247', '596', '278', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1248', '597', '278', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1249', '598', '278', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1250', '599', '278', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1251', '600', '278', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1252', '601', '278', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1253', '602', '278', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1254', '603', '278', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1255', '604', '278', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1256', '605', '278', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1257', '606', '278', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1258', '607', '278', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1259', '608', '278', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1260', '609', '278', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1261', '610', '278', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1262', '611', '278', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1263', '612', '278', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1264', '613', '278', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1265', '614', '278', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1266', '615', '278', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1267', '616', '279', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1268', '617', '279', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1269', '618', '279', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1270', '619', '279', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1271', '620', '279', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1272', '621', '279', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1273', '622', '279', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1274', '623', '280', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1275', '626', '280', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1276', '627', '280', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1277', '628', '280', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1278', '629', '280', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1279', '630', '280', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1280', '631', '280', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1281', '632', '280', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1282', '624', '280', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1283', '625', '280', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1284', '146', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1285', '155', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1286', '167', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1287', '4', '283', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1288', '125', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1289', '126', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1290', '13', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1291', '131', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1292', '133', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1293', '12', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1294', '137', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1295', '138', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1296', '139', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1297', '140', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1298', '141', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1299', '14', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1300', '177', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1301', '179', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1302', '184', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1303', '190', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1304', '192', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1305', '194', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1306', '233', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1307', '238', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1308', '242', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1309', '248', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1310', '252', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1311', '160', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1312', '162', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1313', '163', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1314', '166', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1315', '168', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1316', '169', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1317', '170', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1318', '463', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1319', '465', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1320', '469', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1321', '125', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1322', '126', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1323', '127', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1324', '128', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1325', '13', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1326', '129', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1327', '130', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1328', '131', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1329', '132', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1330', '133', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1331', '134', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1332', '135', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1333', '136', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1334', '12', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1335', '137', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1336', '11', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1338', '138', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1339', '139', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1340', '140', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1341', '141', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1342', '142', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1343', '143', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1344', '14', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1345', '21', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1346', '294', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1347', '295', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1348', '22', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1349', '230', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1350', '438', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1351', '450', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1352', '451', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1353', '455', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1354', '234', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1355', '161', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1356', '163', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1357', '463', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1358', '464', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1359', '466', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1360', '471', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1361', '12', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1362', '137', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1363', '268', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1364', '191', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1365', '204', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1366', '207', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1367', '223', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1368', '224', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1369', '233', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1370', '246', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1371', '162', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1372', '163', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1373', '164', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1374', '131', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1375', '136', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1376', '137', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1377', '138', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1378', '267', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1379', '268', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1380', '21', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1381', '271', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1382', '276', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1383', '277', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1384', '279', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1385', '23', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1386', '288', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1387', '289', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1388', '291', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1389', '180', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1390', '234', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1391', '236', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1392', '238', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1393', '243', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1394', '246', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1395', '250', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1396', '253', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1397', '29', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1398', '254', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1399', '255', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1400', '30', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1401', '256', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1402', '31', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1403', '257', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1404', '258', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1405', '259', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1406', '260', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1407', '261', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1408', '262', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1409', '263', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1410', '32', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1411', '264', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1412', '265', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1413', '266', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1414', '293', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1415', '294', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1416', '295', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1417', '296', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1418', '297', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1419', '22', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1420', '298', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1421', '299', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1422', '154', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1423', '160', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1424', '161', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1425', '164', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1426', '167', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1427', '125', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1428', '13', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1429', '130', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1430', '132', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1431', '133', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1432', '137', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1433', '11', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1435', '139', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1436', '21', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1437', '269', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1438', '274', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1439', '7', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1440', '279', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1441', '281', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1442', '282', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1443', '283', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1444', '284', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1445', '286', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1446', '288', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1447', '292', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1448', '180', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1450', '187', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1451', '190', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1452', '233', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1453', '235', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1454', '238', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1455', '241', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1456', '242', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1457', '245', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1458', '248', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1459', '249', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1460', '251', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1461', '252', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1462', '193', '243', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1463', '194', '243', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1464', '195', '243', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1465', '196', '243', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1466', '197', '243', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1467', '198', '243', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1468', '199', '243', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1469', '144', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1470', '145', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1471', '146', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1472', '147', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1473', '148', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1474', '149', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1475', '150', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1476', '151', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1477', '152', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1478', '153', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1479', '154', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1480', '155', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1481', '156', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1482', '157', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1483', '158', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1484', '159', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1485', '160', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1486', '161', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1487', '162', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1488', '163', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1489', '164', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1490', '165', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1491', '166', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1492', '167', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1493', '168', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1494', '169', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1495', '170', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1496', '171', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1497', '172', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1498', '173', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1499', '174', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1500', '175', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1501', '125', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1502', '126', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1503', '127', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1504', '128', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1505', '13', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1506', '129', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1507', '130', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1508', '131', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1509', '132', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1510', '133', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1511', '134', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1512', '135', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1513', '136', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1514', '12', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1515', '137', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1516', '11', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1518', '138', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1519', '139', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1520', '140', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1521', '141', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1522', '142', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1523', '143', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1524', '14', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1525', '176', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1526', '177', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1527', '178', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1528', '179', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1529', '180', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1530', '181', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1531', '182', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1532', '183', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1533', '184', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1534', '185', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1536', '187', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1537', '188', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1538', '189', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1539', '190', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1540', '191', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1541', '192', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1542', '193', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1543', '194', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1544', '195', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1545', '144', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1546', '145', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1547', '146', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1548', '147', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1549', '148', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1550', '149', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1551', '150', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1552', '151', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1553', '152', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1554', '153', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1555', '154', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1556', '155', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1557', '156', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1558', '157', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1559', '158', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1560', '159', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1561', '160', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1562', '161', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1563', '162', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1564', '163', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1565', '164', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1566', '165', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1567', '166', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1568', '167', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1569', '168', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1570', '169', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1571', '170', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1572', '125', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1573', '126', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1574', '127', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1575', '128', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1576', '13', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1577', '129', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1578', '130', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1579', '131', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1580', '132', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1581', '133', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1582', '134', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1583', '135', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1584', '136', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1585', '12', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1586', '137', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1587', '11', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1589', '138', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1590', '139', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1591', '140', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1592', '141', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1593', '142', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1594', '143', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1595', '14', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1596', '269', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1597', '270', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1598', '274', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1599', '7', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1600', '276', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1601', '279', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1602', '283', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1603', '284', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1604', '286', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1605', '287', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1606', '289', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1607', '290', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1608', '295', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1609', '297', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1610', '298', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1611', '176', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1612', '177', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1613', '178', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1614', '179', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1615', '180', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1616', '181', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1617', '182', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1618', '183', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1619', '184', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1620', '185', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1622', '187', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1623', '188', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1624', '189', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1625', '190', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1626', '191', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1627', '192', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1628', '193', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1629', '194', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1630', '195', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1631', '209', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1632', '210', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1633', '214', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1634', '227', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1635', '229', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1636', '231', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1637', '232', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1638', '438', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1639', '439', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1640', '440', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1641', '442', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1642', '444', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1643', '451', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1644', '452', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1645', '454', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1646', '455', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1647', '239', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1648', '243', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1649', '245', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1650', '250', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1651', '171', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1652', '172', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1653', '173', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1654', '174', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1655', '175', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1656', '234', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1657', '235', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1658', '238', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1659', '241', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1660', '244', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1661', '247', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1662', '250', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1663', '251', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1664', '147', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1665', '153', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1666', '160', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1667', '131', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1668', '134', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1669', '12', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1670', '137', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1671', '11', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1672', '139', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1673', '268', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1674', '21', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1675', '7', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1676', '275', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1677', '176', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1678', '177', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1679', '178', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1681', '189', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1686', '186', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1687', '186', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1688', '186', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1689', '186', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1690', '186', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1692', '78', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1693', '78', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1694', '501', '284', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1695', '502', '284', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1696', '503', '284', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1697', '504', '284', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1698', '505', '284', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1699', '506', '284', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1700', '507', '284', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1701', '508', '284', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1702', '509', '284', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1703', '510', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1704', '511', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1705', '512', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1706', '513', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1707', '514', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1708', '515', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1709', '516', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1710', '517', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1711', '518', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1712', '519', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1713', '520', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1714', '521', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1715', '522', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1716', '523', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1717', '524', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1718', '525', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1719', '526', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1720', '527', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1721', '528', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1722', '529', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1723', '530', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1724', '531', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1725', '532', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1726', '533', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1727', '534', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1728', '535', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1729', '536', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1730', '537', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1731', '538', '287', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1732', '539', '287', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1733', '540', '287', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1734', '541', '287', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1735', '542', '287', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1736', '543', '287', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1737', '544', '287', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1738', '545', '287', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1739', '546', '288', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1740', '547', '288', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1741', '548', '288', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1742', '549', '288', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1743', '550', '288', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1744', '551', '288', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1745', '552', '288', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1746', '553', '288', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1747', '554', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1748', '555', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1749', '556', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1750', '557', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1751', '558', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1752', '559', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1753', '560', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1754', '561', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1755', '562', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1756', '563', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1757', '564', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1758', '565', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1759', '566', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1760', '567', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1761', '568', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1762', '569', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1763', '570', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1764', '571', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1765', '572', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1766', '573', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1767', '574', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1768', '575', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1769', '576', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1770', '577', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1771', '578', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1772', '579', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1773', '580', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1774', '581', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1775', '582', '291', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1776', '583', '291', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1777', '584', '290', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1778', '585', '290', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1779', '586', '290', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1780', '587', '290', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1781', '588', '291', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1782', '589', '291', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1783', '590', '291', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1784', '591', '291', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1785', '592', '291', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1786', '593', '291', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1787', '594', '291', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1788', '595', '291', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1789', '596', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1790', '597', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1791', '598', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1792', '599', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1793', '600', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1794', '601', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1795', '602', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1796', '603', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1797', '604', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1798', '605', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1799', '606', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1800', '607', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1801', '608', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1802', '609', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1803', '610', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1804', '611', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1805', '612', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1806', '613', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1807', '614', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1808', '615', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1809', '616', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1810', '617', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1811', '618', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1812', '619', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1813', '620', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1814', '621', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1815', '622', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1816', '623', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1817', '626', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1818', '627', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1819', '628', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1820', '629', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1821', '630', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1822', '631', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1823', '632', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1824', '624', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1825', '625', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1826', '338', '248', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1827', '343', '248', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1828', '345', '248', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1829', '369', '248', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1830', '373', '248', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1831', '52', '250', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1832', '85', '250', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1833', '92', '250', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1834', '95', '250', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1835', '96', '250', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1836', '3', '220', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1837', '3', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1838', '3', '243', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1839', '3', '216', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1840', '3', '217', '50');
INSERT INTO `tbl_product_category_link` VALUES ('1841', '3', '219', '50');

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
-- Table structure for `tbl_product_related_link`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_related_link`;
CREATE TABLE `tbl_product_related_link` (
  `product_related_link` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sorting` int(11) NOT NULL default '50',
  PRIMARY KEY  (`product_related_link`),
  KEY `product_id` USING BTREE (`product_id`),
  KEY `product_related_link` USING BTREE (`product_related_link`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_related_link
-- ----------------------------
INSERT INTO `tbl_product_related_link` VALUES ('12', '1', '3', '50');
INSERT INTO `tbl_product_related_link` VALUES ('18', '3', '1', '50');
INSERT INTO `tbl_product_related_link` VALUES ('19', '3', '7', '50');
INSERT INTO `tbl_product_related_link` VALUES ('20', '3', '16', '50');

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
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL default '0',
  `description` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `date` varchar(20) NOT NULL,
  `s_date` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_rss
-- ----------------------------
INSERT INTO `tbl_rss` VALUES ('1', 'Beautiful Baby (Boy)', '2', 'Packaged with Cheerful Sunflowers ', 'www.ua-mktg.com/humming/cart/eshop/product_detail/show/9/', '18/06/2012', '', '1');
INSERT INTO `tbl_rss` VALUES ('3', 'wow', '4', 'asfsdfa', 'www.ua-mktg.com/humming/cart/eshop/by_category/show/1/', '19/06/2012', '', '1');
INSERT INTO `tbl_rss` VALUES ('4', 'xfgsdfgg', '4', 'sgd agagafg', 'http://www.ua-mktg.com/humming/cart/eshop/by_category/show/1/', '19/06/2012', '', '1');

-- ----------------------------
-- Table structure for `tbl_running_number`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_running_number`;
CREATE TABLE `tbl_running_number` (
  `id` int(11) NOT NULL,
  `f_g` int(11) NOT NULL,
  `dv` int(11) NOT NULL,
  `hr` int(11) NOT NULL,
  `xm` int(11) NOT NULL,
  `cn` int(11) NOT NULL,
  `o` int(11) NOT NULL,
  `sp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_running_number
-- ----------------------------
INSERT INTO `tbl_running_number` VALUES ('1', '58', '0', '0', '0', '0', '0', '4');

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
-- Table structure for `tbl_stock`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stock`;
CREATE TABLE `tbl_stock` (
  `id` int(11) NOT NULL auto_increment,
  `caption` varchar(20) NOT NULL,
  `sorting` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_stock
-- ----------------------------
INSERT INTO `tbl_stock` VALUES ('1', 'available', '1');
INSERT INTO `tbl_stock` VALUES ('2', 'out of stock', '2');
INSERT INTO `tbl_stock` VALUES ('3', 'coming soon', '3');

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
  `surname` varchar(30) NOT NULL,
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
  `state` varchar(50) NOT NULL,
  `country` varchar(3) NOT NULL,
  `email` varchar(241) NOT NULL,
  `password` varchar(100) NOT NULL,
  `pre_telephone1` varchar(3) NOT NULL,
  `mid_telephone1` varchar(3) NOT NULL,
  `telephone1` varchar(16) NOT NULL,
  `pre_telephone2` varchar(3) NOT NULL,
  `mid_telephone2` varchar(3) NOT NULL,
  `telephone2` varchar(16) NOT NULL,
  `pre_fax` varchar(3) NOT NULL,
  `mid_fax` varchar(3) NOT NULL,
  `fax` varchar(16) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `dob` date NOT NULL,
  `notify_update` int(11) NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('2', 'Mr', 'Ming Liang', 'Lee ', 'DW&#39;E&#39;s&#39;s', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '600219', 'citys', 'states', 'SG', 'mingliang@ua-consultants.com', '218ee2aa3a1bce98a6016d5aba186029', '65', '0', '96938443', '', '', '', '', '', '96938443', '1', '1981-07-17', '0');
INSERT INTO `tbl_user` VALUES ('3', 'Mr', 'Lee Ming Liang', '', 'DWE', '219', '#10-605', '', 'Jurong East St 21', '', '', '', '600219', '', '', 'SG', 'brightleee@hotmail.com', '1d02d56dd360b43dc9d8a801fbded37f', '', '', '', '', '', '', '', '', '', '0', '1981-07-17', '1');
INSERT INTO `tbl_user` VALUES ('6', 'Mr', 'Ali', '', 'Far East Florist', '12', '05-123', 'Far East Building', '123465, FEB', '', '', '', '123465', '', '', 'SG', 'ali@ali.com', 'e99a18c428cb38d5f260853678922e03', '', '', '654321001', '', '', '654321001', '', '', '654321001', '2', '1981-07-17', '0');
INSERT INTO `tbl_user` VALUES ('7', 'Mrs', 'dfsf', '', '', '', '', '', '', '', '', '', '334343', '', '', 'SG', 'Test@noel.com.sg', 'e99a18c428cb38d5f260853678922e03', '', '', '456453', '', '', '', '', '', '', '0', '0000-00-00', '0');
INSERT INTO `tbl_user` VALUES ('8', 'Mr', 'tester', '', 'tester', '123', '123', '123', '123', '123', '123', '123', '123456', 'singapore', '', 'SG', 'info@ua-solutions.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '123', '', '', '123', '', '', '123', 'Ma', '0000-00-00', '0');
INSERT INTO `tbl_user` VALUES ('9', 'Mrs', 'Anh Nguyen', '', 'Ua-consultant', '1', '1', '1', 'Nguyen Van Linh', '', '', '', '123456', 'HCM', '', 'VN', 'abc@abc.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '0917103290', '', '', '', '', '', '', 'Fe', '1982-03-04', '0');
INSERT INTO `tbl_user` VALUES ('28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'lee@dweb.com.sg', 'e99a18c428cb38d5f260853678922e03', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0');

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

-- ----------------------------
-- Table structure for `tbl_videos`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_videos`;
CREATE TABLE `tbl_videos` (
  `video_id` int(11) NOT NULL auto_increment,
  `type` varchar(100) NOT NULL,
  `embed` text,
  `video_path` varchar(255) default NULL,
  `desc` text,
  `created_date` datetime default NULL,
  `sorting` int(11) NOT NULL default '0',
  `publish` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`video_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_videos
-- ----------------------------
INSERT INTO `tbl_videos` VALUES ('3', 'youtube', '<iframe width=\"280\" height=\"253\" src=\"http://www.youtube.com/embed/u5O5JKV7H5A\" frameborder=\"0\" allowfullscreen></iframe>', '', 'Beautiful flowers', '2012-06-12 10:02:30', '0', '1');

-- ----------------------------
-- Table structure for `tbl_visitors`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_visitors`;
CREATE TABLE `tbl_visitors` (
  `id` bigint(20) NOT NULL auto_increment,
  `ip` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `is_member` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=845 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_visitors
-- ----------------------------
INSERT INTO `tbl_visitors` VALUES ('3', '27.104.158.168', '1339603200', '0');
INSERT INTO `tbl_visitors` VALUES ('2', '180.93.170.86', '1339603200', '0');
INSERT INTO `tbl_visitors` VALUES ('4', '66.249.69.235', '1339603200', '0');
INSERT INTO `tbl_visitors` VALUES ('5', '180.76.5.61', '1339603200', '0');
INSERT INTO `tbl_visitors` VALUES ('6', '180.76.6.36', '1339603200', '0');
INSERT INTO `tbl_visitors` VALUES ('7', '180.76.5.111', '1339603200', '0');
INSERT INTO `tbl_visitors` VALUES ('8', '180.76.5.138', '1339603200', '0');
INSERT INTO `tbl_visitors` VALUES ('9', '180.93.170.86', '1339689600', '0');
INSERT INTO `tbl_visitors` VALUES ('10', '27.104.224.34', '1339689600', '0');
INSERT INTO `tbl_visitors` VALUES ('11', '180.76.5.197', '1339689600', '0');
INSERT INTO `tbl_visitors` VALUES ('12', '180.76.5.52', '1339689600', '0');
INSERT INTO `tbl_visitors` VALUES ('13', '222.255.200.106', '1339689600', '0');
INSERT INTO `tbl_visitors` VALUES ('14', '180.93.166.152', '1339689600', '0');
INSERT INTO `tbl_visitors` VALUES ('15', '180.93.189.108', '1340640000', '2');
INSERT INTO `tbl_visitors` VALUES ('16', '58.185.237.66', '1340640000', '0');
INSERT INTO `tbl_visitors` VALUES ('17', '27.104.211.79', '1340640000', '6');
INSERT INTO `tbl_visitors` VALUES ('18', '115.42.201.18', '1340640000', '0');
INSERT INTO `tbl_visitors` VALUES ('19', '27.104.130.128', '1340640000', '6');
INSERT INTO `tbl_visitors` VALUES ('20', '203.175.163.222', '1340640000', '0');
INSERT INTO `tbl_visitors` VALUES ('21', '180.76.5.186', '1340640000', '0');
INSERT INTO `tbl_visitors` VALUES ('22', '119.56.116.38', '1340640000', '0');
INSERT INTO `tbl_visitors` VALUES ('23', '180.76.5.169', '1340726400', '0');
INSERT INTO `tbl_visitors` VALUES ('24', '27.104.235.50', '1340726400', '0');
INSERT INTO `tbl_visitors` VALUES ('25', '27.104.235.50', '1340726400', '6');
INSERT INTO `tbl_visitors` VALUES ('26', '124.197.68.189', '1340726400', '6');
INSERT INTO `tbl_visitors` VALUES ('27', '115.42.201.18', '1340726400', '0');
INSERT INTO `tbl_visitors` VALUES ('28', '124.197.68.189', '1340726400', '0');
INSERT INTO `tbl_visitors` VALUES ('29', '180.93.189.108', '1340726400', '0');
INSERT INTO `tbl_visitors` VALUES ('30', '180.76.5.189', '1340726400', '0');
INSERT INTO `tbl_visitors` VALUES ('31', '66.249.67.2', '1340726400', '0');
INSERT INTO `tbl_visitors` VALUES ('32', '66.249.69.235', '1340726400', '0');
INSERT INTO `tbl_visitors` VALUES ('33', '58.185.237.66', '1340726400', '0');
INSERT INTO `tbl_visitors` VALUES ('34', '58.185.237.66', '1340726400', '8');
INSERT INTO `tbl_visitors` VALUES ('35', '124.197.68.189', '1340726400', '2');
INSERT INTO `tbl_visitors` VALUES ('36', '180.93.180.107', '1340726400', '0');
INSERT INTO `tbl_visitors` VALUES ('37', '180.76.5.96', '1340726400', '0');
INSERT INTO `tbl_visitors` VALUES ('38', '180.76.5.98', '1340726400', '0');
INSERT INTO `tbl_visitors` VALUES ('39', '27.104.238.159', '1340726400', '2');
INSERT INTO `tbl_visitors` VALUES ('40', '180.76.6.29', '1340726400', '0');
INSERT INTO `tbl_visitors` VALUES ('41', '27.104.238.159', '1340726400', '0');
INSERT INTO `tbl_visitors` VALUES ('42', '180.76.5.50', '1340726400', '0');
INSERT INTO `tbl_visitors` VALUES ('43', '27.104.238.159', '1340812800', '2');
INSERT INTO `tbl_visitors` VALUES ('44', '27.104.238.159', '1340812800', '0');
INSERT INTO `tbl_visitors` VALUES ('45', '66.249.69.235', '1340812800', '0');
INSERT INTO `tbl_visitors` VALUES ('46', '180.76.5.144', '1340812800', '0');
INSERT INTO `tbl_visitors` VALUES ('47', '180.76.5.190', '1340812800', '0');
INSERT INTO `tbl_visitors` VALUES ('48', '180.76.5.55', '1340812800', '0');
INSERT INTO `tbl_visitors` VALUES ('49', '66.249.67.2', '1340812800', '0');
INSERT INTO `tbl_visitors` VALUES ('50', '180.129.96.204', '1340812800', '0');
INSERT INTO `tbl_visitors` VALUES ('51', '180.129.96.204', '1340812800', '2');
INSERT INTO `tbl_visitors` VALUES ('52', '180.76.6.37', '1340812800', '0');
INSERT INTO `tbl_visitors` VALUES ('53', '58.185.237.66', '1340812800', '0');
INSERT INTO `tbl_visitors` VALUES ('54', '180.76.5.110', '1340812800', '0');
INSERT INTO `tbl_visitors` VALUES ('55', '222.255.200.106', '1340812800', '0');
INSERT INTO `tbl_visitors` VALUES ('56', '58.185.237.66', '1340812800', '8');
INSERT INTO `tbl_visitors` VALUES ('57', '180.93.167.87', '1340812800', '0');
INSERT INTO `tbl_visitors` VALUES ('58', '180.76.5.151', '1340812800', '0');
INSERT INTO `tbl_visitors` VALUES ('59', '180.76.5.107', '1340812800', '0');
INSERT INTO `tbl_visitors` VALUES ('60', '115.42.201.18', '1340812800', '0');
INSERT INTO `tbl_visitors` VALUES ('61', '180.76.5.94', '1340812800', '0');
INSERT INTO `tbl_visitors` VALUES ('62', '115.42.201.18', '1340812800', '8');
INSERT INTO `tbl_visitors` VALUES ('63', '180.129.96.204', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('64', '66.249.69.235', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('65', '180.76.5.57', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('66', '27.104.105.126', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('67', '180.76.5.100', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('68', '1.54.8.139', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('69', '27.104.110.138', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('70', '27.104.110.138', '1340899200', '2');
INSERT INTO `tbl_visitors` VALUES ('71', '119.56.127.43', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('72', '119.56.123.198', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('73', '119.56.120.19', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('74', '27.104.217.11', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('75', '27.104.217.11', '1340899200', '2');
INSERT INTO `tbl_visitors` VALUES ('76', '115.42.201.18', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('77', '124.197.101.111', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('78', '180.93.167.87', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('79', '180.93.167.87', '1340899200', '9');
INSERT INTO `tbl_visitors` VALUES ('80', '66.249.67.2', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('81', '180.76.5.158', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('82', '27.104.110.44', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('83', '180.93.187.68', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('84', '124.197.77.35', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('85', '222.255.200.106', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('86', '180.93.187.68', '1340899200', '9');
INSERT INTO `tbl_visitors` VALUES ('87', '58.185.237.66', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('88', '180.76.6.231', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('89', '91.205.96.13', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('90', '27.104.223.73', '1340899200', '0');
INSERT INTO `tbl_visitors` VALUES ('91', '66.249.69.235', '1340985600', '0');
INSERT INTO `tbl_visitors` VALUES ('92', '180.76.5.55', '1340985600', '0');
INSERT INTO `tbl_visitors` VALUES ('93', '180.76.5.191', '1340985600', '0');
INSERT INTO `tbl_visitors` VALUES ('94', '180.76.5.61', '1340985600', '0');
INSERT INTO `tbl_visitors` VALUES ('95', '66.249.72.198', '1340985600', '0');
INSERT INTO `tbl_visitors` VALUES ('96', '27.104.150.157', '1340985600', '0');
INSERT INTO `tbl_visitors` VALUES ('97', '173.225.17.50', '1340985600', '0');
INSERT INTO `tbl_visitors` VALUES ('98', '66.249.67.2', '1340985600', '0');
INSERT INTO `tbl_visitors` VALUES ('99', '180.76.5.167', '1340985600', '0');
INSERT INTO `tbl_visitors` VALUES ('100', '180.76.5.164', '1340985600', '0');
INSERT INTO `tbl_visitors` VALUES ('101', '180.76.5.177', '1340985600', '0');
INSERT INTO `tbl_visitors` VALUES ('102', '180.76.5.51', '1340985600', '0');
INSERT INTO `tbl_visitors` VALUES ('103', '180.76.5.143', '1340985600', '0');
INSERT INTO `tbl_visitors` VALUES ('104', '203.175.163.222', '1340985600', '0');
INSERT INTO `tbl_visitors` VALUES ('105', '180.76.5.50', '1340985600', '0');
INSERT INTO `tbl_visitors` VALUES ('106', '180.76.6.28', '1340985600', '0');
INSERT INTO `tbl_visitors` VALUES ('107', '180.76.5.178', '1340985600', '0');
INSERT INTO `tbl_visitors` VALUES ('108', '180.76.5.97', '1340985600', '0');
INSERT INTO `tbl_visitors` VALUES ('109', '27.104.214.74', '1340985600', '0');
INSERT INTO `tbl_visitors` VALUES ('110', '180.76.5.110', '1340985600', '0');
INSERT INTO `tbl_visitors` VALUES ('111', '66.249.69.235', '1341072000', '0');
INSERT INTO `tbl_visitors` VALUES ('112', '66.249.67.2', '1341072000', '0');
INSERT INTO `tbl_visitors` VALUES ('113', '180.76.5.52', '1341072000', '0');
INSERT INTO `tbl_visitors` VALUES ('114', '180.76.5.158', '1341072000', '0');
INSERT INTO `tbl_visitors` VALUES ('115', '180.76.5.183', '1341072000', '0');
INSERT INTO `tbl_visitors` VALUES ('116', '27.104.212.83', '1341072000', '0');
INSERT INTO `tbl_visitors` VALUES ('117', '180.76.5.96', '1341072000', '0');
INSERT INTO `tbl_visitors` VALUES ('118', '180.76.5.65', '1341072000', '0');
INSERT INTO `tbl_visitors` VALUES ('119', '180.76.5.141', '1341072000', '0');
INSERT INTO `tbl_visitors` VALUES ('120', '222.255.200.106', '1341072000', '0');
INSERT INTO `tbl_visitors` VALUES ('121', '180.76.6.222', '1341072000', '0');
INSERT INTO `tbl_visitors` VALUES ('122', '180.76.5.144', '1341072000', '0');
INSERT INTO `tbl_visitors` VALUES ('123', '123.125.71.88', '1341072000', '0');
INSERT INTO `tbl_visitors` VALUES ('124', '180.76.5.150', '1341072000', '0');
INSERT INTO `tbl_visitors` VALUES ('125', '180.76.5.62', '1341072000', '0');
INSERT INTO `tbl_visitors` VALUES ('126', '180.76.5.167', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('127', '180.76.5.165', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('128', '180.76.5.179', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('129', '1.54.85.178', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('130', '66.249.67.2', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('131', '180.76.5.53', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('132', '66.249.69.235', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('133', '180.76.5.192', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('134', '219.92.143.111', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('135', '180.76.5.58', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('136', '58.185.237.66', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('137', '180.93.187.68', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('138', '180.93.187.68', '1341158400', '9');
INSERT INTO `tbl_visitors` VALUES ('139', '219.92.143.111', '1341158400', '2');
INSERT INTO `tbl_visitors` VALUES ('140', '222.255.200.106', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('141', '180.76.5.145', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('142', '180.76.5.155', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('143', '180.76.5.148', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('144', '180.76.6.233', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('145', '180.93.163.244', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('146', '180.76.5.184', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('147', '180.93.163.244', '1341158400', '9');
INSERT INTO `tbl_visitors` VALUES ('148', '180.76.6.21', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('149', '115.42.201.18', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('150', '180.76.6.211', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('151', '180.76.6.20', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('152', '180.76.5.90', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('153', '123.125.71.89', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('154', '180.76.5.94', '1341158400', '0');
INSERT INTO `tbl_visitors` VALUES ('155', '58.185.237.66', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('156', '1.54.160.250', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('157', '180.76.5.92', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('158', '66.249.69.235', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('159', '66.249.67.2', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('160', '180.76.5.157', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('161', '219.92.143.111', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('162', '219.92.143.111', '1341244800', '2');
INSERT INTO `tbl_visitors` VALUES ('163', '180.76.5.170', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('164', '180.76.5.65', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('165', '115.42.201.18', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('166', '180.93.163.244', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('167', '180.93.163.244', '1341244800', '9');
INSERT INTO `tbl_visitors` VALUES ('168', '222.255.200.106', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('169', '180.76.6.29', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('170', '180.76.5.163', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('171', '180.76.5.188', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('172', '180.76.6.28', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('173', '180.76.5.62', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('174', '180.76.5.165', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('175', '180.76.5.153', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('176', '180.76.5.94', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('177', '27.104.8.123', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('178', '180.76.5.90', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('179', '1.54.86.16', '1341244800', '0');
INSERT INTO `tbl_visitors` VALUES ('180', '58.185.237.66', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('181', '27.104.8.123', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('182', '1.54.86.16', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('183', '180.76.5.182', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('184', '180.93.163.244', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('185', '66.249.69.235', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('186', '180.76.5.136', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('187', '27.104.8.123', '1341331200', '2');
INSERT INTO `tbl_visitors` VALUES ('188', '180.76.5.113', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('189', '180.76.5.185', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('190', '27.104.155.252', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('191', '27.104.29.169', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('192', '27.104.29.169', '1341331200', '2');
INSERT INTO `tbl_visitors` VALUES ('193', '180.76.5.175', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('194', '27.104.29.169', '1341331200', '25');
INSERT INTO `tbl_visitors` VALUES ('195', '27.104.29.169', '1341331200', '28');
INSERT INTO `tbl_visitors` VALUES ('196', '115.42.201.18', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('197', '180.76.5.189', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('198', '180.76.5.194', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('199', '66.249.67.2', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('200', '27.104.248.2', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('201', '180.76.5.93', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('202', '180.76.5.99', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('203', '180.76.6.29', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('204', '58.185.237.66', '1341331200', '8');
INSERT INTO `tbl_visitors` VALUES ('205', '58.185.237.66', '1341331200', '2');
INSERT INTO `tbl_visitors` VALUES ('206', '222.255.200.106', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('207', '124.197.113.155', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('208', '27.104.55.166', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('209', '180.76.5.179', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('210', '180.76.5.103', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('211', '180.76.5.176', '1341331200', '0');
INSERT INTO `tbl_visitors` VALUES ('212', '58.185.237.66', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('213', '66.249.69.235', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('214', '180.76.5.50', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('215', '66.249.67.2', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('216', '27.104.201.66', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('217', '180.76.5.103', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('218', '180.76.5.144', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('219', '180.76.5.194', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('220', '27.104.201.66', '1341417600', '2');
INSERT INTO `tbl_visitors` VALUES ('221', '180.76.5.87', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('222', '27.104.146.42', '1341417600', '2');
INSERT INTO `tbl_visitors` VALUES ('223', '115.42.201.18', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('224', '27.104.146.42', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('225', '27.104.248.250', '1341417600', '2');
INSERT INTO `tbl_visitors` VALUES ('226', '180.93.175.55', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('227', '180.76.5.154', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('228', '180.76.5.161', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('229', '180.76.6.20', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('230', '180.76.5.140', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('231', '180.76.5.170', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('232', '180.76.6.211', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('233', '180.76.6.37', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('234', '180.76.5.63', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('235', '180.76.5.139', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('236', '180.76.5.164', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('237', '180.76.5.90', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('238', '180.76.6.36', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('239', '222.255.200.106', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('240', '180.76.5.169', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('241', '180.76.5.185', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('242', '180.76.5.153', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('243', '58.185.237.66', '1341417600', '2');
INSERT INTO `tbl_visitors` VALUES ('244', '180.76.5.67', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('245', '180.76.6.223', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('246', '180.76.5.195', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('247', '180.76.5.56', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('248', '180.76.5.158', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('249', '203.175.163.222', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('250', '180.76.5.191', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('251', '180.76.5.188', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('252', '180.76.6.29', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('253', '180.76.5.93', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('254', '27.104.231.224', '1341417600', '0');
INSERT INTO `tbl_visitors` VALUES ('255', '66.249.69.235', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('256', '58.185.237.66', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('257', '27.104.231.224', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('258', '180.76.5.157', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('259', '180.76.5.67', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('260', '180.76.5.90', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('261', '66.249.67.2', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('262', '180.76.5.190', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('263', '180.76.5.185', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('264', '180.76.5.94', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('265', '180.76.6.225', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('266', '180.76.5.87', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('267', '180.76.5.175', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('268', '180.76.5.89', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('269', '180.76.5.113', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('270', '180.76.5.156', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('271', '180.76.5.141', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('272', '180.76.5.171', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('273', '27.104.253.18', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('274', '27.104.253.18', '1341504000', '2');
INSERT INTO `tbl_visitors` VALUES ('275', '180.76.5.66', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('276', '180.76.5.88', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('277', '115.42.201.18', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('278', '180.76.5.163', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('279', '180.76.5.100', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('280', '180.93.175.55', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('281', '119.56.114.137', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('282', '119.56.119.56', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('283', '58.185.237.66', '1341504000', '2');
INSERT INTO `tbl_visitors` VALUES ('284', '180.76.5.93', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('285', '180.76.5.139', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('286', '180.76.6.28', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('287', '180.76.6.233', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('288', '180.93.163.146', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('289', '180.76.5.107', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('290', '180.76.6.35', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('291', '180.76.5.194', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('292', '180.76.5.111', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('293', '180.76.5.153', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('294', '180.76.5.96', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('295', '180.76.5.154', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('296', '180.76.5.196', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('297', '180.76.5.187', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('298', '180.76.6.21', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('299', '69.58.178.58', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('300', '180.76.5.162', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('301', '180.76.5.103', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('302', '180.76.5.56', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('303', '27.104.176.150', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('304', '180.76.5.136', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('305', '180.76.5.54', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('306', '180.76.5.170', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('307', '180.76.6.37', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('308', '180.76.5.48', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('309', '180.76.5.145', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('310', '180.76.5.138', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('311', '180.76.6.227', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('312', '180.76.6.231', '1341504000', '0');
INSERT INTO `tbl_visitors` VALUES ('313', '27.104.176.150', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('314', '180.76.5.55', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('315', '180.76.5.59', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('316', '180.76.5.146', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('317', '66.249.69.235', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('318', '180.76.5.99', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('319', '180.76.5.153', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('320', '180.76.5.166', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('321', '180.76.5.62', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('322', '180.76.6.21', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('323', '180.76.5.142', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('324', '180.76.6.231', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('325', '180.76.5.48', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('326', '180.76.6.35', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('327', '180.76.6.28', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('328', '180.93.163.146', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('329', '180.76.5.188', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('330', '180.76.5.49', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('331', '180.76.6.222', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('332', '180.76.5.60', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('333', '180.76.5.158', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('334', '180.76.5.171', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('335', '66.249.67.2', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('336', '180.76.5.50', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('337', '180.76.5.58', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('338', '180.76.6.223', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('339', '180.76.5.159', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('340', '180.76.5.179', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('341', '180.76.5.90', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('342', '119.63.196.124', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('343', '27.104.245.62', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('344', '180.76.6.37', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('345', '180.76.5.97', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('346', '180.76.5.182', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('347', '180.76.5.100', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('348', '180.76.5.197', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('349', '180.76.5.193', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('350', '180.76.5.184', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('351', '180.76.6.29', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('352', '180.76.5.167', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('353', '180.76.6.232', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('354', '180.76.6.230', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('355', '180.76.5.65', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('356', '119.56.120.177', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('357', '119.56.127.58', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('358', '180.76.5.163', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('359', '180.76.5.56', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('360', '180.76.5.180', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('361', '124.197.97.249', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('362', '124.197.97.249', '1341590400', '2');
INSERT INTO `tbl_visitors` VALUES ('363', '180.76.5.52', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('364', '180.76.5.143', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('365', '180.76.6.26', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('366', '180.76.5.103', '1341590400', '0');
INSERT INTO `tbl_visitors` VALUES ('367', '180.76.5.51', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('368', '124.197.97.249', '1341676800', '2');
INSERT INTO `tbl_visitors` VALUES ('369', '66.249.69.235', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('370', '180.76.5.95', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('371', '180.76.5.63', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('372', '180.76.5.168', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('373', '66.249.67.2', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('374', '180.76.5.96', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('375', '180.76.5.89', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('376', '180.76.5.194', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('377', '180.76.5.197', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('378', '180.76.5.58', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('379', '119.63.196.28', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('380', '180.76.5.159', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('381', '180.76.5.62', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('382', '180.76.5.113', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('383', '180.76.5.185', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('384', '180.76.5.148', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('385', '180.76.6.20', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('386', '180.76.5.163', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('387', '180.76.6.225', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('388', '180.76.5.192', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('389', '180.76.5.196', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('390', '180.76.5.92', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('391', '27.104.190.132', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('392', '180.76.5.179', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('393', '180.76.5.54', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('394', '180.76.5.151', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('395', '180.76.5.173', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('396', '180.76.5.176', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('397', '180.76.5.154', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('398', '180.76.5.97', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('399', '180.76.5.172', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('400', '180.76.5.48', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('401', '180.76.5.189', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('402', '180.76.5.107', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('403', '180.76.5.161', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('404', '1.54.86.154', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('405', '180.129.55.25', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('406', '180.76.5.144', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('407', '180.76.5.99', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('408', '180.76.5.188', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('409', '180.76.5.162', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('410', '124.197.99.92', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('411', '180.76.5.180', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('412', '180.76.5.88', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('413', '180.76.6.35', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('414', '180.76.5.100', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('415', '180.76.6.212', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('416', '180.76.5.141', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('417', '27.104.150.187', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('418', '219.74.111.133', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('419', '180.76.5.65', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('420', '180.76.5.137', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('421', '180.76.5.181', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('422', '27.104.150.187', '1341676800', '2');
INSERT INTO `tbl_visitors` VALUES ('423', '180.76.6.231', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('424', '180.76.5.111', '1341676800', '0');
INSERT INTO `tbl_visitors` VALUES ('425', '180.76.5.165', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('426', '27.104.150.187', '1341763200', '2');
INSERT INTO `tbl_visitors` VALUES ('427', '180.76.5.99', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('428', '180.76.5.171', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('429', '66.249.69.235', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('430', '180.76.6.212', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('431', '180.76.6.35', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('432', '180.76.6.213', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('433', '180.76.5.52', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('434', '180.76.5.157', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('435', '180.76.5.65', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('436', '180.76.5.146', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('437', '66.249.67.2', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('438', '27.104.2.152', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('439', '27.104.2.152', '1341763200', '2');
INSERT INTO `tbl_visitors` VALUES ('440', '115.42.201.18', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('441', '58.185.237.66', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('442', '180.76.5.57', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('443', '180.76.5.107', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('444', '207.46.55.31', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('445', '222.255.200.190', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('446', '180.76.5.91', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('447', '180.76.5.96', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('448', '180.76.5.177', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('449', '180.76.5.59', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('450', '180.76.5.110', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('451', '180.76.5.166', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('452', '180.76.6.211', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('453', '180.129.60.6', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('454', '180.76.5.87', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('455', '180.76.5.168', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('456', '180.76.5.64', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('457', '180.76.5.147', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('458', '180.76.6.28', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('459', '180.76.5.175', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('460', '1.54.85.56', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('461', '180.76.5.67', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('462', '180.76.6.21', '1341763200', '0');
INSERT INTO `tbl_visitors` VALUES ('463', '180.76.5.113', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('464', '66.249.69.235', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('465', '58.185.237.66', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('466', '124.197.66.227', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('467', '180.76.5.158', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('468', '180.76.6.37', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('469', '180.76.5.54', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('470', '66.249.67.2', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('471', '180.76.5.139', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('472', '180.76.5.179', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('473', '180.76.5.163', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('474', '180.76.6.29', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('475', '180.76.5.93', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('476', '180.76.5.88', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('477', '180.76.6.231', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('478', '180.76.5.176', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('479', '180.76.5.173', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('480', '180.76.5.180', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('481', '180.76.5.146', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('482', '180.76.6.233', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('483', '116.14.136.106', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('484', '180.76.5.48', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('485', '180.76.5.191', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('486', '180.76.5.53', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('487', '180.76.5.89', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('488', '66.249.69.113', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('489', '180.76.5.96', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('490', '180.76.6.26', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('491', '27.104.155.230', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('492', '180.76.5.60', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('493', '27.104.155.230', '1341849600', '2');
INSERT INTO `tbl_visitors` VALUES ('494', '66.249.69.119', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('495', '66.249.69.155', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('496', '180.76.5.90', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('497', '115.42.201.18', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('498', '180.76.5.99', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('499', '222.255.200.106', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('500', '180.76.5.57', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('501', '180.76.5.178', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('502', '66.249.67.5', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('503', '180.76.6.213', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('504', '180.76.6.20', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('505', '180.76.5.66', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('506', '180.76.5.138', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('507', '193.47.80.42', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('508', '180.76.5.161', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('509', '180.76.5.192', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('510', '180.76.5.64', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('511', '180.76.6.36', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('512', '180.76.5.98', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('513', '180.76.5.168', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('514', '180.76.5.186', '1341849600', '0');
INSERT INTO `tbl_visitors` VALUES ('515', '66.249.69.155', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('516', '58.185.237.66', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('517', '180.76.5.49', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('518', '180.76.5.194', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('519', '180.76.5.148', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('520', '66.249.67.5', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('521', '27.104.211.2', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('522', '180.76.5.51', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('523', '180.76.5.67', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('524', '180.76.5.87', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('525', '66.249.67.17', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('526', '180.76.5.94', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('527', '180.76.5.147', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('528', '180.76.5.55', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('529', '180.76.5.165', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('530', '180.76.5.99', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('531', '180.76.5.97', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('532', '180.76.6.233', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('533', '180.76.5.193', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('534', '180.76.5.187', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('535', '180.129.87.254', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('536', '180.76.5.188', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('537', '27.104.123.7', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('538', '180.76.5.59', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('539', '180.76.6.232', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('540', '180.76.5.149', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('541', '180.76.5.168', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('542', '180.76.5.162', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('543', '27.104.76.179', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('544', '180.76.5.138', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('545', '180.76.5.57', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('546', '180.76.5.173', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('547', '27.104.76.179', '1341936000', '2');
INSERT INTO `tbl_visitors` VALUES ('548', '180.76.5.91', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('549', '180.76.5.61', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('550', '180.76.5.146', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('551', '180.76.5.160', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('552', '180.76.5.142', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('553', '180.76.6.223', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('554', '180.76.5.197', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('555', '115.42.201.18', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('556', '180.76.5.150', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('557', '180.76.6.21', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('558', '180.76.5.179', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('559', '180.76.5.53', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('560', '180.76.5.145', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('561', '180.76.5.101', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('562', '180.76.5.180', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('563', '180.76.5.171', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('564', '180.76.6.28', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('565', '180.76.5.98', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('566', '180.76.5.65', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('567', '180.76.5.52', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('568', '180.76.5.93', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('569', '180.76.5.50', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('570', '180.76.5.141', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('571', '180.76.5.110', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('572', '180.76.5.172', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('573', '180.76.5.58', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('574', '180.76.5.103', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('575', '180.76.5.64', '1341936000', '0');
INSERT INTO `tbl_visitors` VALUES ('576', '180.76.5.90', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('577', '66.249.69.155', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('578', '180.76.5.170', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('579', '180.76.6.28', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('580', '180.76.6.20', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('581', '180.76.5.157', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('582', '180.76.5.175', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('583', '180.76.5.143', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('584', '180.76.5.99', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('585', '180.76.5.88', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('586', '180.76.6.233', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('587', '180.76.5.91', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('588', '180.76.5.65', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('589', '180.76.5.149', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('590', '180.76.5.113', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('591', '180.76.5.60', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('592', '66.249.67.17', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('593', '180.76.5.190', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('594', '180.76.5.49', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('595', '180.76.5.59', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('596', '180.76.5.158', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('597', '180.76.5.94', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('598', '115.42.201.18', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('599', '180.76.6.29', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('600', '180.76.5.181', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('601', '27.104.78.208', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('602', '180.76.6.36', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('603', '180.76.6.232', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('604', '203.175.163.222', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('605', '27.104.102.9', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('606', '180.76.5.55', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('607', '180.76.5.189', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('608', '218.186.10.232', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('609', '203.117.37.216', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('610', '119.56.115.111', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('611', '119.56.115.143', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('612', '180.76.5.100', '1342022400', '0');
INSERT INTO `tbl_visitors` VALUES ('613', '66.249.69.155', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('614', '180.76.5.113', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('615', '119.56.116.70', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('616', '119.56.118.222', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('617', '1.54.9.90', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('618', '180.76.5.99', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('619', '119.56.118.99', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('620', '119.56.114.12', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('621', '119.56.115.143', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('622', '119.56.117.241', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('623', '119.56.114.42', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('624', '218.186.10.232', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('625', '203.175.163.222', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('626', '203.175.163.222', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('627', '180.76.6.233', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('628', '180.76.5.179', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('629', '115.42.201.18', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('630', '222.255.200.106', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('631', '180.76.6.37', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('632', '27.104.225.241', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('633', '180.76.5.140', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('634', '180.76.5.149', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('635', '180.76.5.67', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('636', '180.76.5.95', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('637', '27.104.9.16', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('638', '180.76.5.144', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('639', '180.76.5.151', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('640', '66.249.67.17', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('641', '180.76.5.146', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('642', '180.76.5.59', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('643', '180.76.5.145', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('644', '180.76.5.62', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('645', '180.76.5.160', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('646', '180.76.5.148', '1342108800', '0');
INSERT INTO `tbl_visitors` VALUES ('647', '180.76.5.113', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('648', '180.76.5.136', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('649', '180.76.5.93', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('650', '66.249.69.231', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('651', '180.76.5.63', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('652', '180.76.5.150', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('653', '180.76.5.170', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('654', '180.76.5.149', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('655', '180.76.5.91', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('656', '180.76.5.179', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('657', '180.76.5.191', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('658', '180.76.6.232', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('659', '180.76.5.87', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('660', '218.186.10.254', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('661', '180.76.5.159', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('662', '180.76.5.193', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('663', '175.136.37.131', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('664', '180.76.5.161', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('665', '180.76.5.58', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('666', '180.76.6.29', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('667', '180.76.5.59', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('668', '180.76.5.89', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('669', '180.76.5.195', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('670', '180.76.5.97', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('671', '180.76.5.56', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('672', '180.76.5.153', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('673', '180.76.5.90', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('674', '180.76.5.177', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('675', '180.76.5.52', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('676', '180.76.5.101', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('677', '180.76.5.169', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('678', '180.76.5.50', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('679', '180.76.5.173', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('680', '180.76.5.141', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('681', '180.76.5.65', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('682', '180.76.5.165', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('683', '180.76.6.227', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('684', '180.76.5.103', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('685', '180.76.5.156', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('686', '180.76.6.37', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('687', '180.76.5.92', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('688', '180.76.6.20', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('689', '180.76.5.66', '1342195200', '0');
INSERT INTO `tbl_visitors` VALUES ('690', '180.76.5.167', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('691', '180.76.5.50', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('692', '180.76.5.171', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('693', '180.76.5.91', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('694', '180.76.5.175', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('695', '180.76.6.211', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('696', '180.76.5.158', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('697', '180.76.5.99', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('698', '180.76.5.56', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('699', '180.76.5.180', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('700', '180.76.5.190', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('701', '180.76.5.98', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('702', '180.76.5.166', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('703', '180.76.5.107', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('704', '180.76.5.187', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('705', '180.76.6.224', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('706', '180.76.5.96', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('707', '180.76.5.55', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('708', '180.76.5.154', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('709', '180.76.6.231', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('710', '180.76.5.94', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('711', '180.76.5.145', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('712', '66.249.69.231', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('713', '180.76.5.97', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('714', '180.76.5.113', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('715', '180.76.5.193', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('716', '180.76.5.58', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('717', '180.76.5.164', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('718', '180.76.5.155', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('719', '180.76.5.196', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('720', '180.76.6.213', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('721', '180.76.5.177', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('722', '175.136.37.131', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('723', '180.76.5.54', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('724', '180.76.6.26', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('725', '180.76.5.149', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('726', '180.76.5.62', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('727', '180.76.5.63', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('728', '180.76.5.52', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('729', '46.4.100.231', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('730', '180.76.5.53', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('731', '180.76.5.169', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('732', '180.76.6.29', '1342281600', '0');
INSERT INTO `tbl_visitors` VALUES ('733', '180.76.5.138', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('734', '180.76.5.61', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('735', '180.76.5.64', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('736', '180.76.6.232', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('737', '180.76.5.193', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('738', '180.76.5.140', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('739', '180.76.5.141', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('740', '66.249.69.231', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('741', '180.76.5.56', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('742', '180.76.5.66', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('743', '180.76.6.21', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('744', '180.76.5.50', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('745', '175.136.37.131', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('746', '180.76.5.55', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('747', '180.76.5.139', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('748', '180.76.5.54', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('749', '180.76.5.60', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('750', '180.76.5.197', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('751', '180.76.5.168', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('752', '115.42.201.18', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('753', '180.76.5.110', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('754', '180.76.5.185', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('755', '180.76.5.166', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('756', '180.76.5.167', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('757', '222.255.200.106', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('758', '175.136.37.131', '1342368000', '2');
INSERT INTO `tbl_visitors` VALUES ('759', '180.76.5.170', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('760', '180.76.6.29', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('761', '180.76.5.90', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('762', '180.76.5.142', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('763', '180.76.5.62', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('764', '180.76.5.65', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('765', '180.76.5.186', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('766', '180.76.5.176', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('767', '180.76.6.230', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('768', '180.76.6.28', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('769', '180.76.5.101', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('770', '180.76.5.103', '1342368000', '0');
INSERT INTO `tbl_visitors` VALUES ('771', '180.76.6.20', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('772', '180.76.5.183', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('773', '175.136.37.131', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('774', '180.76.5.51', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('775', '180.76.5.92', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('776', '180.76.5.176', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('777', '180.76.5.188', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('778', '180.76.6.230', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('779', '180.76.5.65', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('780', '180.76.5.184', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('781', '180.76.5.182', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('782', '180.76.5.186', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('783', '180.76.5.113', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('784', '173.225.17.50', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('785', '180.76.5.61', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('786', '180.76.5.89', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('787', '175.136.37.131', '1342454400', '2');
INSERT INTO `tbl_visitors` VALUES ('788', '180.76.5.101', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('789', '180.76.6.37', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('790', '180.76.5.151', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('791', '180.76.5.63', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('792', '115.42.201.18', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('793', '180.76.6.211', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('794', '180.76.5.53', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('795', '180.76.5.150', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('796', '180.76.5.56', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('797', '180.76.5.162', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('798', '180.76.5.197', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('799', '180.76.5.177', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('800', '180.76.5.139', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('801', '180.76.5.145', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('802', '180.76.5.196', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('803', '180.76.5.146', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('804', '180.76.5.66', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('805', '180.76.5.165', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('806', '180.76.5.95', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('807', '180.76.6.28', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('808', '180.76.5.99', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('809', '180.76.5.103', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('810', '180.76.5.167', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('811', '180.76.5.195', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('812', '66.249.69.231', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('813', '180.76.5.52', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('814', '180.76.5.154', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('815', '180.76.5.181', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('816', '180.76.5.97', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('817', '180.76.5.193', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('818', '180.76.5.67', '1342454400', '0');
INSERT INTO `tbl_visitors` VALUES ('819', '180.76.5.53', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('820', '180.76.5.153', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('821', '180.76.5.98', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('822', '180.76.5.55', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('823', '180.76.5.144', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('824', '180.76.5.51', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('825', '180.76.6.224', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('826', '180.76.5.97', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('827', '180.76.6.231', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('828', '66.249.69.103', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('829', '180.76.5.196', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('830', '180.76.5.178', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('831', '180.76.5.158', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('832', '180.76.5.147', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('833', '27.104.37.119', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('834', '27.104.37.119', '1342540800', '2');
INSERT INTO `tbl_visitors` VALUES ('835', '180.76.6.36', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('836', '180.76.5.87', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('837', '27.104.195.104', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('838', '115.42.201.18', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('839', '180.76.5.172', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('840', '180.76.5.142', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('841', '180.76.6.227', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('842', '180.76.6.28', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('843', '180.76.5.113', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('844', '127.0.0.1', '1342540800', '0');

-- ----------------------------
-- Table structure for `tbl_yesno`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_yesno`;
CREATE TABLE `tbl_yesno` (
  `id` int(11) NOT NULL auto_increment,
  `caption` varchar(20) NOT NULL,
  `sorting` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_yesno
-- ----------------------------
INSERT INTO `tbl_yesno` VALUES ('1', 'yes', '1');
INSERT INTO `tbl_yesno` VALUES ('2', 'no', '2');
