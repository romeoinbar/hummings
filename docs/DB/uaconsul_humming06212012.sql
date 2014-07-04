/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : uaconsul_humming

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2012-06-21 17:47:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl-category`
-- ----------------------------
DROP TABLE IF EXISTS `tbl-category`;
CREATE TABLE `tbl-category` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `type` tinyint(2) unsigned NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl-category
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_addon_image`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_addon_image`;
CREATE TABLE `tbl_addon_image` (
  `addon_image_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  PRIMARY KEY  (`addon_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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
  `state` varchar(50) NOT NULL,
  `country` varchar(40) NOT NULL,
  `telephone1` varchar(16) NOT NULL,
  `telephone2` varchar(16) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fax` varchar(16) NOT NULL,
  PRIMARY KEY  (`address_book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_address_book
-- ----------------------------
INSERT INTO `tbl_address_book` VALUES ('1', '0', 'Mr', 'Freind 1', 'Friend Company !', '10', '11', '', '249 simpang lima', '', '', '', '32010', 'Sitiawan', '', 'MY', '0124525749', '', '', '');
INSERT INTO `tbl_address_book` VALUES ('2', '2', 'Mr', 'Friend 1', 'Friend Company 1', '100', '110', 'Building 1 Malaysia', '249 simpang lima', '', '', '', '320100', 'Sitiawan', '', 'MY', '01245257490', '', 'brightleee@hotmail.com', '');
INSERT INTO `tbl_address_book` VALUES ('3', '6', 'Mr', 'Lee', '', '219', '#10-605', '', 'Jurong East St 21', '', '', '', '600219', '', '', 'SG', '96938443', '', 'lee@ua-consultants.com', '');
INSERT INTO `tbl_address_book` VALUES ('4', '6', 'Mr', 'test', 'test', '1', '1', '1', '1', '1', '1', '1', '1', 'HCM', '', 'SG', '123455666', '', 'abc@abc.com', '123456');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_banner
-- ----------------------------
INSERT INTO `tbl_banner` VALUES ('1', 'images/banner/1.jpg', '', '1', '1');
INSERT INTO `tbl_banner` VALUES ('2', 'images/banner/2.jpg', '', '1', '2');
INSERT INTO `tbl_banner` VALUES ('3', 'images/banner/3.jpg', '', '1', '50');
INSERT INTO `tbl_banner` VALUES ('4', 'images/banner/4.jpg', '', '1', '50');
INSERT INTO `tbl_banner` VALUES ('6', 'images/banner/6.jpg', '', '1', '50');

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_content
-- ----------------------------
INSERT INTO `tbl_content` VALUES ('1', '1', '\"Living with Flowers\" Facebook Contest', '', '<p>test</p>', '<p><img src=\\\"http://www.ua-mktg.com/humming/images/Terms-Conditions4.jpg\\\" alt=\\\"\\\" /></p>', 'Admin', '2012-06-04 09:42:08', 'Admin', '2012-06-07 17:10:47', '0', '0', '1');
INSERT INTO `tbl_content` VALUES ('2', '1', 'Reunion Meal Photo Facebook Contest', '', '<p>test</p>', '<p><img src=\\\"http://www.ua-mktg.com/humming/images/cny-TC1.jpg\\\" alt=\\\"\\\" /></p>', 'Admin', '2012-06-07 17:15:13', '', '0000-00-00 00:00:00', '0', '0', '1');
INSERT INTO `tbl_content` VALUES ('3', '2', 'Customized Wreaths', '', '<p>test</p>', '<p>test</p>', 'Admin', '2012-06-07 17:16:02', '', '0000-00-00 00:00:00', '0', '0', '1');
INSERT INTO `tbl_content` VALUES ('4', '2', 'Humming Happy Crates', '', '<p>test</p>', '<p>test</p>', 'Admin', '2012-06-07 17:16:22', '', '0000-00-00 00:00:00', '0', '0', '1');
INSERT INTO `tbl_content` VALUES ('5', '2', 'Customized Wreaths', '', '<p>test apple</p>', '<p>test</p>', 'Admin', '2012-06-07 17:16:40', 'Admin', '2012-06-08 12:06:05', '0', '0', '1');
INSERT INTO `tbl_content` VALUES ('6', '3', 'Privacy Policy', '', '<p>We respect your right to privacy. At Humming, we collect only the information necessary for us to complete your order and/or to contact you regarding the status of your order.  Our site uses an order form to collect the recipient details and your billing information (like credit card details) to fulfill your order/s. The sender\\\\\\\\\\\\\\\'s contact information is also used to get in touch with the visitor, when necessary.  You may opt-out of receiving future mailings; see the choice/opt-out instructions below.</p>', '<p>We respect your right to privacy. At Humming, we collect only the information necessary for us to complete your order and/or to contact you regarding the status of your order.  Our site uses an order form to collect the recipient details and your billing information (like credit card details) to fulfill your order/s. The sender\\\\\\\\\\\\\\\'s contact information is also used to get in touch with the visitor, when necessary.  You may opt-out of receiving future mailings; see the choice/opt-out instructions below.<br />\r\n<br />\r\nHumming will not rent, sell or share your name or personal information without your permission.<br />\r\n<br />\r\nOn occasion we may send you an email including special promotions or new releases. If you choose not to receive such communications, you may unsubscribe by emailing us at <a href=\\\"\\\\&quot;\\\\\\\\&quot;mailto:goto@humming.com.sg\\\\\\\\&quot;\\\\&quot;\\\">goto@humming.com.sg</a>.<br />\r\n<br />\r\nHumming reserves the right to update this privacy policy at anytime. Updates to our Privacy Notice will be posted on the Humming site. This policy is not intended to confer, and does not confer, any rights or remedies.</p>', 'Admin', '2012-06-19 10:07:53', 'Admin', '2012-06-20 15:23:23', '5', '0', '1');
INSERT INTO `tbl_content` VALUES ('7', '3', 'About us', '', '<p>Humming Flowers &amp; Gifts Pte Ltd (previously Humming House) was  incorporated in Jan 2007.  We are one of the leading gifting companies  in Singapore specialising in customisable flowers and gifts. Our suite  of over 900 flowers and gifts ideas all come with greeting cards for  that extra personal touch.</p>', '<p class=\\\"slogan\\\">&quot;At Humming Gifts, we do everything with you in mind.&quot;</p>\r\n<p>Humming Flowers &amp; Gifts Pte Ltd (previously Humming  House) was incorporated in Jan 2007.  We are one of the leading gifting  companies in Singapore specialising in customisable flowers and gifts.  Our suite of over 900 flowers and gifts ideas all come with greeting  cards for that extra personal touch.</p>\r\n<p>Humming\\\'s Flowers and Gifts Catalogue 2012 alone  features over 600 flowers and gifts ideas. An expert in local gifting  customs, Humming has built a loyal customer base of individuals and  corporations for over more than a decade.  We aim to further strengthen  our brand and remain committed to introducing new and unique gifting  experiences. Humming continues to pride itself with providing  unparalleled service, innovative and exciting ideas for customers &ndash;  \\\'With you in mind\\\'. Humming\\\'s invaluable knowledge in local gifting  customs, allows the company to create truly unique gifting experiences  for any occasion.Humming\\\'s Flowers and Gifts Catalogue 2012 alone  features over 600 flowers and gifts ideas. An expert in local gifting  customs, Humming has built a loyal customer base of individuals and  corporations for over more than a decade.  We aim to further strengthen  our brand and remain committed to introducing new and unique gifting  experiences. Humming continues to pride itself with providing  unparalleled service, innovative and exciting ideas for customers &ndash;  \\\'With you in mind\\\'. Humming\\\'s invaluable knowledge in local gifting  customs, allows the company to create truly unique gifting experiences  for any occasion.</p>\r\n<p class=\\\"small_header\\\">Mission</p>\r\n<p>Creating a unique gifting experience with you in mind,  we as an up-and-coming hampers, flowers and gifts company will propel  ahead by</p>\r\n<ol>\r\n    <li style=\\\"height:25px;\\\">Challenging the status quo and industry standards by coming up with eye-catching hampers, 			  flowers and gift creations</li>\r\n    <li style=\\\"height:25px;\\\">Staying personable and going out of the way to understand and meet customers\\\' needs</li>\r\n    <li style=\\\"height:25px;\\\">Staying nimble and flexible to meeting the requirements of our customers\\\' needs</li>\r\n    <li style=\\\"height:25px;\\\">Increasing productivity and delivering consistent customer service by leveraging on our 			    operating  systems and resources</li>\r\n</ol>\r\n<p class=\\\"small_header\\\">Brand Promise</p>\r\n<p>Led by a passion to create a unique gifting experience with you in mind, we will stay true to our promise by observing:</p>\r\n<p><strong>Quality:</strong> Product quality and freshness</p>\r\n<p><strong>Service:</strong> Personalised and prompt service</p>\r\n<p><strong>Creative:</strong> Attractive designs that leave a good impression</p>\r\n<p><strong>Value:</strong> High perceived value, affordable price propositions</p>\r\n<p class=\\\"small_header\\\">With You In Mind (Brand Story)</p>\r\n<p>Humming Gifts is like a close friend who never leaves your side.</p>\r\n<p>When you need gifting service, we will offer you ours.</p>\r\n<p>When you need our service, we will respond to you attentively.</p>\r\n<p>When you have a gifting need to fulfil, we will do our best to help you.</p>\r\n<p>Understanding your gifting needs and preferences,</p>\r\n<p>While honouring Asian gifting-giving cultures and customs,</p>\r\n<p>We can advise you on even small details,</p>\r\n<p>Some of which you may not have thought of.</p>\r\n<p>Trendy and creative, we also provide you with</p>\r\n<p>Fresh and exceptional ideas &ndash; and keep our gifts affordable.</p>\r\n<p>For whatever we do, it is always with you in mind.</p>\r\n<p class=\\\"small_header\\\">Service Values</p>\r\n<p><strong>Attentiveness</strong><br />\r\nPutting ourselves constantly in the position of our  customers, we pride ourselves on our ability to satisfy them with our  superior customer service and attention to details.</p>\r\n<p><strong>Personal touch</strong><br />\r\nWe an in-depth knowledge of our customers\\\' gifting needs and  preference, we are able to provide them with a highly personable  service that is close to their hearts.</p>\r\n<p><strong>Dependability</strong><br />\r\nBy leveraging on a potent combination of technology and  teamwork, we are able to ensure consistently high levels of quality  service and speed in our delivery.</p>\r\n<p><strong>Versatility</strong><br />\r\nKeeping our customers\\\' gifting requirements, we are able to  come up with creations that have the \\\'X\\\' factor &ndash; eXceptional and  eXciting</p>\r\n<p class=\\\"small_header\\\">Logo</p>\r\n<p>Our brand identity shows a ribbon morphing into a Chinese knot to reflect Humming\\\'s expertise in Chinese gifting customs.</p>\r\n<p align=\\\"center\\\"><img width=\\\"222\\\" height=\\\"184\\\" src=\\\"http://www.ua-mktg.com/humming/images/logo1.png\\\" alt=\\\"\\\" /></p>\r\n<p>&quot;H&quot; is embedded in the centre of it all, just like  Humming always immerses itself in your needs,  It is always thinking  ahead and going the extra mile to present thoughtfully put-together  gifts, With you in mind.</p>', 'Admin', '2012-06-20 15:25:34', '', '0000-00-00 00:00:00', '1', '0', '1');
INSERT INTO `tbl_content` VALUES ('8', '3', 'Press', '', '<p>Coming soon...</p>', '<p>Coming soon...</p>', 'Admin', '2012-06-20 15:26:58', '', '0000-00-00 00:00:00', '2', '0', '1');
INSERT INTO `tbl_content` VALUES ('9', '3', 'Sitemap', '', '<p>Comming soon...</p>', '<p>Comming soon...</p>', 'Admin', '2012-06-20 15:27:38', '', '0000-00-00 00:00:00', '3', '0', '1');
INSERT INTO `tbl_content` VALUES ('10', '3', 'Careers', '', '<p>Coming soon...</p>', '<p>Coming soon...</p>', 'Admin', '2012-06-20 15:28:02', '', '0000-00-00 00:00:00', '4', '0', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_content_category
-- ----------------------------
INSERT INTO `tbl_content_category` VALUES ('1', '0', 'Promotions', '1', '0', '0');
INSERT INTO `tbl_content_category` VALUES ('2', '0', 'Exclusively', '1', '0', '0');
INSERT INTO `tbl_content_category` VALUES ('3', '1', 'Humming flowers & Gifts', '1', '0', '1');
INSERT INTO `tbl_content_category` VALUES ('9', '1', 'Legal / privacy', '1', '0', '0');
INSERT INTO `tbl_content_category` VALUES ('8', '1', 'Customer service', '1', '0', '0');

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
INSERT INTO `tbl_coupon` VALUES ('14', 'ibrhcx8nu0', '10.00', '1', '0', '2012-06-06', '0000-00-00', '0', '0.00', '', '', '0000-00-00', '1', '0');
INSERT INTO `tbl_coupon` VALUES ('15', 'ar7oautsdg', '10.00', '1', '0', '2012-06-06', '0000-00-00', '0', '0.00', '', '', '0000-00-00', '1', '0');
INSERT INTO `tbl_coupon` VALUES ('16', 'zedem23zc4', '10.00', '1', '0', '2012-06-08', '0000-00-00', '0', '0.00', '', '', '0000-00-00', '1', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO `tbl_menu` VALUES ('3', '0', '201', 'product', 'Categories', '', '2', '1', '1');
INSERT INTO `tbl_menu` VALUES ('4', '3', '1', 'product', 'New Born Hampers', '', '1', '1', '0');
INSERT INTO `tbl_menu` VALUES ('5', '3', '30', 'product', 'Fruit & Flower Baskets', '', '1', '1', '0');
INSERT INTO `tbl_menu` VALUES ('6', '3', '22', 'product', 'New Born play', '', '1', '1', '0');
INSERT INTO `tbl_menu` VALUES ('7', '0', '2', 'content', 'Exclusively ', '', '1', '1', '2');
INSERT INTO `tbl_menu` VALUES ('8', '0', '1', 'content', 'Promotions', '', '1', '1', '3');
INSERT INTO `tbl_menu` VALUES ('9', '0', '202', 'product', 'Occasions', '', '1', '1', '0');
INSERT INTO `tbl_menu` VALUES ('10', '9', '208', 'product', 'Official Opening', '', '1', '1', '0');
INSERT INTO `tbl_menu` VALUES ('11', '9', '209', 'product', 'Romance', '', '1', '1', '0');
INSERT INTO `tbl_menu` VALUES ('12', '0', '207', 'product', 'Local Gifting Customs', '', '1', '1', '4');
INSERT INTO `tbl_menu` VALUES ('13', '3', '195', 'product', 'Hand Bouquets', '', '2', '1', '0');

-- ----------------------------
-- Table structure for `tbl_message`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_message`;
CREATE TABLE `tbl_message` (
  `message_id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `message` text NOT NULL,
  `sorting` int(11) NOT NULL default '50',
  PRIMARY KEY  (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_message
-- ----------------------------
INSERT INTO `tbl_message` VALUES ('1', '0', 'New Born', '50');
INSERT INTO `tbl_message` VALUES ('2', '1', 'Congratulations & Best Wishes On The Arrival Of Your Wonderful Newborn Twin Girl', '3');
INSERT INTO `tbl_message` VALUES ('3', '1', 'It&#39;s a boy! Wishing skies of blue for you...and your new little ray of sunshine. Congratulations! ', '50');
INSERT INTO `tbl_message` VALUES ('4', '1', 'A New Little Boy to Brighten Your World! He couldn&#39;t have happened to a nicer family! Congratulations to Everyone! ', '1');
INSERT INTO `tbl_message` VALUES ('5', '1', 'Congratulations on the arrival of your newborn baby boy', '2');

-- ----------------------------
-- Table structure for `tbl_newsletter_config`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_config`;
CREATE TABLE `tbl_newsletter_config` (
  `namekey` varchar(200) NOT NULL,
  `value` text,
  PRIMARY KEY  (`namekey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_config
-- ----------------------------
INSERT INTO `tbl_newsletter_config` VALUES ('level', 'Starter');
INSERT INTO `tbl_newsletter_config` VALUES ('version', '3.7.0');
INSERT INTO `tbl_newsletter_config` VALUES ('from_name', 'Joomla_1526');
INSERT INTO `tbl_newsletter_config` VALUES ('from_email', 'nam@nam.com');
INSERT INTO `tbl_newsletter_config` VALUES ('reply_name', 'Joomla_1526');
INSERT INTO `tbl_newsletter_config` VALUES ('reply_email', 'nam@nam.com');
INSERT INTO `tbl_newsletter_config` VALUES ('bounce_email', '');
INSERT INTO `tbl_newsletter_config` VALUES ('add_names', '1');
INSERT INTO `tbl_newsletter_config` VALUES ('mailer_method', 'mail');
INSERT INTO `tbl_newsletter_config` VALUES ('encoding_format', '8bit');
INSERT INTO `tbl_newsletter_config` VALUES ('charset', 'UTF-8');
INSERT INTO `tbl_newsletter_config` VALUES ('word_wrapping', '150');
INSERT INTO `tbl_newsletter_config` VALUES ('hostname', '');
INSERT INTO `tbl_newsletter_config` VALUES ('embed_images', '0');
INSERT INTO `tbl_newsletter_config` VALUES ('embed_files', '1');
INSERT INTO `tbl_newsletter_config` VALUES ('editor', '0');
INSERT INTO `tbl_newsletter_config` VALUES ('multiple_part', '1');
INSERT INTO `tbl_newsletter_config` VALUES ('sendmail_path', '/usr/sbin/sendmail');
INSERT INTO `tbl_newsletter_config` VALUES ('smtp_host', 'localhost');
INSERT INTO `tbl_newsletter_config` VALUES ('smtp_port', '');
INSERT INTO `tbl_newsletter_config` VALUES ('smtp_secured', '');
INSERT INTO `tbl_newsletter_config` VALUES ('smtp_auth', '0');
INSERT INTO `tbl_newsletter_config` VALUES ('smtp_username', '');
INSERT INTO `tbl_newsletter_config` VALUES ('smtp_password', '');
INSERT INTO `tbl_newsletter_config` VALUES ('queue_nbmail', '40');
INSERT INTO `tbl_newsletter_config` VALUES ('queue_nbmail_auto', '70');
INSERT INTO `tbl_newsletter_config` VALUES ('queue_type', 'auto');
INSERT INTO `tbl_newsletter_config` VALUES ('queue_try', '3');
INSERT INTO `tbl_newsletter_config` VALUES ('queue_pause', '120');
INSERT INTO `tbl_newsletter_config` VALUES ('allow_visitor', '1');
INSERT INTO `tbl_newsletter_config` VALUES ('require_confirmation', '0');
INSERT INTO `tbl_newsletter_config` VALUES ('priority_newsletter', '3');
INSERT INTO `tbl_newsletter_config` VALUES ('allowedfiles', 'zip,doc,docx,pdf,xls,txt,gzip,rar,jpg,gif,xlsx,pps,csv,bmp,ico,odg,odp,ods,odt,png,ppt,swf,xcf,mp3,wma');
INSERT INTO `tbl_newsletter_config` VALUES ('uploadfolder', 'media/com_acymailing/upload');
INSERT INTO `tbl_newsletter_config` VALUES ('confirm_redirect', '');
INSERT INTO `tbl_newsletter_config` VALUES ('subscription_message', '1');
INSERT INTO `tbl_newsletter_config` VALUES ('notification_unsuball', '');
INSERT INTO `tbl_newsletter_config` VALUES ('cron_next', '1251990901');
INSERT INTO `tbl_newsletter_config` VALUES ('confirmation_message', '1');
INSERT INTO `tbl_newsletter_config` VALUES ('welcome_message', '1');
INSERT INTO `tbl_newsletter_config` VALUES ('unsub_message', '1');
INSERT INTO `tbl_newsletter_config` VALUES ('cron_last', '0');
INSERT INTO `tbl_newsletter_config` VALUES ('cron_fromip', '');
INSERT INTO `tbl_newsletter_config` VALUES ('cron_report', '');
INSERT INTO `tbl_newsletter_config` VALUES ('cron_frequency', '900');
INSERT INTO `tbl_newsletter_config` VALUES ('cron_sendreport', '2');
INSERT INTO `tbl_newsletter_config` VALUES ('cron_sendto', 'nam@nam.com');
INSERT INTO `tbl_newsletter_config` VALUES ('cron_fullreport', '1');
INSERT INTO `tbl_newsletter_config` VALUES ('cron_savereport', '2');
INSERT INTO `tbl_newsletter_config` VALUES ('cron_savepath', 'media/com_acymailing/logs/report36804199.log');
INSERT INTO `tbl_newsletter_config` VALUES ('notification_created', '');
INSERT INTO `tbl_newsletter_config` VALUES ('notification_accept', '');
INSERT INTO `tbl_newsletter_config` VALUES ('notification_refuse', '');
INSERT INTO `tbl_newsletter_config` VALUES ('forward', '0');
INSERT INTO `tbl_newsletter_config` VALUES ('description_starter', 'Joomla!™ Mailing Extension');
INSERT INTO `tbl_newsletter_config` VALUES ('description_essential', 'Joomla!™ Newsletter Extension');
INSERT INTO `tbl_newsletter_config` VALUES ('description_business', 'Joomla!™ Mailing Extension');
INSERT INTO `tbl_newsletter_config` VALUES ('description_enterprise', 'Joomla!™ Newsletter System');
INSERT INTO `tbl_newsletter_config` VALUES ('priority_followup', '2');
INSERT INTO `tbl_newsletter_config` VALUES ('unsub_redirect', '');
INSERT INTO `tbl_newsletter_config` VALUES ('show_footer', '1');
INSERT INTO `tbl_newsletter_config` VALUES ('use_sef', '0');
INSERT INTO `tbl_newsletter_config` VALUES ('itemid', '0');
INSERT INTO `tbl_newsletter_config` VALUES ('css_module', 'default');
INSERT INTO `tbl_newsletter_config` VALUES ('css_frontend', 'default');
INSERT INTO `tbl_newsletter_config` VALUES ('css_backend', 'default');
INSERT INTO `tbl_newsletter_config` VALUES ('menu_position', 'under');
INSERT INTO `tbl_newsletter_config` VALUES ('installcomplete', '1');
INSERT INTO `tbl_newsletter_config` VALUES ('Starter', '0');
INSERT INTO `tbl_newsletter_config` VALUES ('Essential', '1');
INSERT INTO `tbl_newsletter_config` VALUES ('Business', '2');
INSERT INTO `tbl_newsletter_config` VALUES ('Enterprise', '3');

-- ----------------------------
-- Table structure for `tbl_newsletter_fields`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_fields`;
CREATE TABLE `tbl_newsletter_fields` (
  `fieldid` smallint(5) unsigned NOT NULL auto_increment,
  `fieldname` varchar(250) NOT NULL,
  `namekey` varchar(50) NOT NULL,
  `type` varchar(50) default NULL,
  `value` text NOT NULL,
  `published` tinyint(3) unsigned NOT NULL default '1',
  `ordering` smallint(5) unsigned default '99',
  `options` text,
  `core` tinyint(3) unsigned NOT NULL default '0',
  `required` tinyint(3) unsigned NOT NULL default '0',
  `backend` tinyint(3) unsigned NOT NULL default '1',
  `frontcomp` tinyint(3) unsigned NOT NULL default '0',
  `default` varchar(250) default NULL,
  `listing` tinyint(4) default NULL,
  PRIMARY KEY  (`fieldid`),
  UNIQUE KEY `namekey` (`namekey`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_fields
-- ----------------------------
INSERT INTO `tbl_newsletter_fields` VALUES ('1', 'NAMECAPTION', 'name', 'text', '', '1', '1', '', '1', '1', '1', '1', '', '1');
INSERT INTO `tbl_newsletter_fields` VALUES ('2', 'EMAILCAPTION', 'email', 'text', '', '1', '2', '', '1', '1', '1', '1', '', '1');
INSERT INTO `tbl_newsletter_fields` VALUES ('3', 'RECEIVE', 'html', 'radio', '0::JOOMEXT_TEXT\n1::HTML', '1', '3', '', '1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `tbl_newsletter_filter`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_filter`;
CREATE TABLE `tbl_newsletter_filter` (
  `filid` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(250) default NULL,
  `description` text,
  `published` tinyint(3) unsigned default NULL,
  `lasttime` int(10) unsigned default NULL,
  `trigger` text,
  `report` text,
  `action` text,
  `filter` text,
  PRIMARY KEY  (`filid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_filter
-- ----------------------------

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
-- Table structure for `tbl_newsletter_list`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_list`;
CREATE TABLE `tbl_newsletter_list` (
  `name` varchar(250) NOT NULL,
  `description` text,
  `ordering` smallint(10) unsigned default NULL,
  `listid` smallint(10) unsigned NOT NULL auto_increment,
  `published` tinyint(11) default NULL,
  `userid` int(10) unsigned default NULL,
  `alias` varchar(250) default NULL,
  `color` varchar(30) default NULL,
  `visible` tinyint(4) NOT NULL default '1',
  `welmailid` mediumint(11) default NULL,
  `unsubmailid` mediumint(11) default NULL,
  `type` enum('list','campaign') NOT NULL default 'list',
  `access_sub` varchar(250) default 'all',
  `access_manage` varchar(250) NOT NULL default 'none',
  `languages` varchar(250) NOT NULL default 'all',
  PRIMARY KEY  (`listid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_list
-- ----------------------------
INSERT INTO `tbl_newsletter_list` VALUES ('Newsletters', 'Receive our latest news', '1', '1', '1', '62', 'mailing_list', '#3366ff', '1', null, null, 'list', 'all', 'none', 'all');

-- ----------------------------
-- Table structure for `tbl_newsletter_listcampaign`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_listcampaign`;
CREATE TABLE `tbl_newsletter_listcampaign` (
  `campaignid` smallint(10) unsigned NOT NULL,
  `listid` smallint(10) unsigned NOT NULL,
  PRIMARY KEY  (`campaignid`,`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_listcampaign
-- ----------------------------

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
-- Table structure for `tbl_newsletter_listsub`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_listsub`;
CREATE TABLE `tbl_newsletter_listsub` (
  `listid` smallint(11) unsigned NOT NULL,
  `subid` int(11) unsigned NOT NULL,
  `subdate` int(11) unsigned default NULL,
  `unsubdate` int(11) unsigned default NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY  (`listid`,`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_listsub
-- ----------------------------
INSERT INTO `tbl_newsletter_listsub` VALUES ('1', '1', '1339127816', null, '1');
INSERT INTO `tbl_newsletter_listsub` VALUES ('1', '2', '1339127816', null, '1');
INSERT INTO `tbl_newsletter_listsub` VALUES ('1', '3', '1339127816', null, '1');
INSERT INTO `tbl_newsletter_listsub` VALUES ('1', '4', '1339127816', null, '1');
INSERT INTO `tbl_newsletter_listsub` VALUES ('1', '5', '1339127816', null, '1');

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
-- Table structure for `tbl_newsletter_queue`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_queue`;
CREATE TABLE `tbl_newsletter_queue` (
  `senddate` int(10) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `mailid` mediumint(10) unsigned NOT NULL,
  `priority` tinyint(3) unsigned default '3',
  `try` tinyint(3) unsigned NOT NULL default '0',
  `paramqueue` varchar(250) default NULL,
  PRIMARY KEY  (`subid`,`mailid`),
  KEY `senddate` (`senddate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_queue
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_newsletter_rules`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_rules`;
CREATE TABLE `tbl_newsletter_rules` (
  `ruleid` smallint(5) unsigned NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `ordering` smallint(6) default NULL,
  `regex` text NOT NULL,
  `executed_on` text NOT NULL,
  `action_message` text NOT NULL,
  `action_user` text NOT NULL,
  `published` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY  (`ruleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_rules
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_newsletter_stats`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_stats`;
CREATE TABLE `tbl_newsletter_stats` (
  `mailid` mediumint(10) unsigned NOT NULL,
  `senthtml` int(10) unsigned NOT NULL default '0',
  `senttext` int(10) unsigned NOT NULL default '0',
  `senddate` int(10) unsigned NOT NULL,
  `openunique` mediumint(10) unsigned NOT NULL default '0',
  `opentotal` int(10) unsigned NOT NULL default '0',
  `bounceunique` mediumint(10) unsigned NOT NULL default '0',
  `fail` mediumint(10) unsigned NOT NULL default '0',
  `clicktotal` int(10) unsigned NOT NULL default '0',
  `clickunique` mediumint(10) unsigned NOT NULL default '0',
  `unsub` mediumint(10) unsigned NOT NULL default '0',
  `forward` mediumint(10) unsigned NOT NULL default '0',
  `bouncedetails` text,
  PRIMARY KEY  (`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_stats
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_newsletter_subscriber`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_subscriber`;
CREATE TABLE `tbl_newsletter_subscriber` (
  `subid` int(10) unsigned NOT NULL auto_increment,
  `email` varchar(200) NOT NULL,
  `userid` int(10) unsigned NOT NULL default '0',
  `name` varchar(250) NOT NULL,
  `created` int(10) unsigned default NULL,
  `confirmed` tinyint(4) NOT NULL default '0',
  `enabled` tinyint(4) NOT NULL default '1',
  `accept` tinyint(4) NOT NULL default '1',
  `ip` varchar(100) default NULL,
  `html` tinyint(4) NOT NULL default '1',
  `key` varchar(250) default NULL,
  PRIMARY KEY  (`subid`),
  UNIQUE KEY `email` (`email`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_subscriber
-- ----------------------------
INSERT INTO `tbl_newsletter_subscriber` VALUES ('1', 'nam@nam.com', '62', 'Administrator', '1337165509', '1', '1', '1', null, '1', null);
INSERT INTO `tbl_newsletter_subscriber` VALUES ('2', 'nam1@nam1.com', '63', 'Vo Hoai Nam', '1337219123', '1', '1', '1', null, '1', null);
INSERT INTO `tbl_newsletter_subscriber` VALUES ('3', 'test2@test2c.om', '64', 'test2', '1337222215', '1', '1', '1', null, '1', null);
INSERT INTO `tbl_newsletter_subscriber` VALUES ('4', 'test03@test03.com', '65', 'test03', '1337302249', '1', '1', '1', null, '1', null);
INSERT INTO `tbl_newsletter_subscriber` VALUES ('5', 'test1@test1.com', '66', 'test1', '1338493629', '1', '1', '1', null, '1', null);

-- ----------------------------
-- Table structure for `tbl_newsletter_template`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_template`;
CREATE TABLE `tbl_newsletter_template` (
  `tempid` smallint(11) unsigned NOT NULL auto_increment,
  `name` varchar(250) default NULL,
  `description` text,
  `body` longtext,
  `altbody` longtext,
  `created` int(10) unsigned default NULL,
  `published` tinyint(4) NOT NULL default '1',
  `premium` tinyint(4) NOT NULL default '0',
  `ordering` smallint(10) unsigned NOT NULL default '99',
  `namekey` varchar(50) NOT NULL,
  `styles` text,
  `subject` varchar(250) default NULL,
  `stylesheet` text,
  `fromname` varchar(250) default NULL,
  `fromemail` varchar(250) default NULL,
  `replyname` varchar(250) default NULL,
  `replyemail` varchar(250) default NULL,
  PRIMARY KEY  (`tempid`),
  UNIQUE KEY `namekey` (`namekey`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_template
-- ----------------------------
INSERT INTO `tbl_newsletter_template` VALUES ('1', 'White Shadow Red', '<img src=\"media/com_acymailing/templates/newsletter-1/newsletter-1.png\" />', '<div style=\"background-color: #e2e8df; width: 100%; color: #8a8a8a; text-align: center;\">\r\n <table style=\"text-align: left; margin: auto;\" align=\"center\" width=\"560\" cellspacing=\"0\" cellpadding=\"0\">\r\n        <tr>\r\n            <td class=\"hideonline\" style=\"padding: 20px 0px; font-size: 10px; color: #000000; margin: auto; text-align: center;\" colspan=\"3\">This email contains graphics, so if you don\'t see them, {readonline}view it in your browser{/readonline}.</td>\r\n      </tr>\r\n       <tr>\r\n            <td width=\"37\"> </td>\r\n         <td style=\"background-color: #fbfbf7;\" valign=\"top\" width=\"496\">\r\n              <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n                  <tr>\r\n                        <td colspan=\"2\" height=\"20\"> </td>\r\n                  </tr>\r\n                   <tr>\r\n                        <td width=\"20\"> </td>\r\n                     <td style=\"background-color: #f9f7d3;\" width=\"456\" height=\"110\">\r\n                          <table width=\"456\" cellspacing=\"0\" cellpadding=\"0\">\r\n                               <tr>\r\n                                    <td colspan=\"3\" height=\"11\"> </td>\r\n                              </tr>\r\n                               <tr>\r\n                                    <td width=\"7\"> </td>\r\n                                  <td style=\"line-height: 0px;\"><img src=\"http://www.acyba.com/images/templates/newsletter-1/logo-icon.png\" border=\"0\" alt=\"\" /></td>\r\n                                 <td valign=\"top\">\r\n                                     <h1>AcyMailing is Out!</h1>\r\n                                 </td>\r\n                               </tr>\r\n                               <tr>\r\n                                    <td colspan=\"3\" height=\"3\"> </td>\r\n                               </tr>\r\n                           </table>\r\n                        </td>\r\n                       <td width=\"20\"> </td>\r\n                 </tr>\r\n                   <tr>\r\n                        <td colspan=\"5\">\r\n                          <table width=\"100%\">\r\n                              <tr>\r\n                                    <td width=\"40\"> </td>\r\n                                 <td>\r\n                                        <div class=\"acymailing_content\">\r\n                                          <h2>E-Mail</h2>\r\n                                         <p style=\"text-align: justify;\"><img src=\"http://www.acyba.com/images/templates/newsletter-1/acymailing.png\" border=\"0\" alt=\"\" style=\"margin: 10px; float: right;\" /> Electronic mail, often abbreviated as email or e-mail, is a method of exchanging digital messages, designed primarily for human use. E-mail systems are based on a store-and-forward model in which e-mail computer server systems accept, forward, deliver and store messages on behalf of users, who only need to connect to the e-mail infrastructure, typically an e-mail server, with a network-enabled device (e.g., a personal computer) for the duration of message submission or retrieval.<br /><a href=\"http://en.wikipedia.org/wiki/E-mail\">Wikipedia</a></p>\r\n                                     </div>\r\n                                      <div class=\"acymailing_content\">\r\n                                          <h2>Marketing Campaign</h2>\r\n                                         <p><img src=\"http://www.acyba.com/images/templates/newsletter-1/essential.png\" border=\"0\" alt=\"\" style=\"float: left; margin: 10px;\" />Marketing is an integrated communications-based process through which individuals and communities are informed or persuaded that existing and newly-identified needs and wants may be satisfied by the products and services of others.</p>\r\n                                           <p>Marketing is used to create the customer, to keep the customer and to satisfy the customer. <a href=\"http://en.wikipedia.org/wiki/Marketing_campaign\">Wikipedia</a></p>\r\n                                        </div>\r\n                                      <div class=\"acymailing_content\">\r\n                                          <h2>Joomla!</h2>\r\n                                            <p>Joomla! is a content management system platform for publishing content on the World Wide Web and intranets as well as a Model–view–controller (MVC) Web Application Development framework.</p>\r\n                                           <p>The system includes features such as page caching to improve performance, RSS feeds, printable versions of pages, news flashes, blogs, polls, website searching, and language internationalization.<br /><a href=\"http://en.wikipedia.org/wiki/Joomla\">Wikipedia</a></p>\r\n                                       </div>\r\n                                  </td>\r\n                                   <td width=\"40\"> </td>\r\n                             </tr>\r\n                           </table>\r\n                        </td>\r\n                   </tr>\r\n               </table>\r\n            </td>\r\n           <td width=\"27\"> </td>\r\n     </tr>\r\n       <tr style=\"line-height: 0px;\">\r\n            <td style=\"line-height: 0px;\" colspan=\"3\"><img src=\"media/com_acymailing/templates/newsletter-1/page-footer.png\" border=\"0\" alt=\"\" /></td>\r\n        </tr>\r\n       <tr>\r\n            <td style=\"padding: 20px 0px; font-size: 10px; color: #000000; margin: auto; text-align: center;\" colspan=\"3\">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</td>\r\n      </tr>\r\n   </table>\r\n</div>', '', null, '1', '0', '1', 'newsletter-1', 'a:9:{s:18:\"acymailing_content\";s:129:\"clear:both;text-align:justify;font-family: Verdana, Arial, Helvetica, sans-serif;font-size:12px;line-height:14px;margin-top:10px;\";s:16:\"acymailing_title\";s:89:\"color:#8a8a8a;font-weight:normal;font-size:14px;margin:0;border-bottom:5px solid #d39f9f;\";s:16:\"acymailing_unsub\";s:31:\"font-weight:bold;color:#000000;\";s:19:\"acymailing_readmore\";s:14:\"color:#d39f9f;\";s:17:\"acymailing_online\";s:31:\"font-weight:bold;color:#000000;\";s:6:\"tag_h1\";s:128:\"margin-bottom:0;margin-top:0;font-family: Verdana, Arial, Helvetica, sans-serif;font-size:26px;color:#d47e7e;vertical-align:top;\";s:6:\"tag_h2\";s:100:\"color:#8a8a8a !important;font-weight:normal;font-size:14px;margin:0;border-bottom:5px solid #d39f9f;\";s:6:\"tag_h3\";s:68:\"color:#8a8a8a !important;font-weight:normal;font-size:100%;margin:0;\";s:8:\"color_bg\";s:7:\"#e2e8df\";}', null, 'div,table{font-family: Verdana, Arial, Helvetica, sans-serif; font-size:12px;}', null, null, null, null);
INSERT INTO `tbl_newsletter_template` VALUES ('2', 'Clean White Pink', '<img src=\"media/com_acymailing/templates/newsletter-2/newsletter-2.png\" />', '<div style=\"background-color: #ffffff; width: 100%; color: #8a8a8a; text-align: center;\">\r\n<table style=\"text-align: left; margin: auto;\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"hideonline\" style=\"padding: 20px 0px; font-size: 10px; color: #000000; margin: auto; text-align: center;\" colspan=\"3\">This email contains graphics, so if you don\'t see them, {readonline}view it in your browser{/readonline}.</td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\" width=\"370\">\r\n<h1>AcyMailing is Out!</h1>\r\n<br />\r\n<div class=\"acymailing_content\">\r\n<h2>E-Mail</h2>\r\n<p style=\"font-size: 10px; margin-top: 0px;\"><img src=\"http://www.acyba.com/images/templates/newsletter-1/acymailing.png\" border=\"0\" alt=\"\" style=\"float: left;\" />Electronic mail, often abbreviated as email or e-mail, is a method of exchanging digital messages, designed primarily for human use.<br /><a href=\"http://en.wikipedia.org/wiki/E-mail\">Wikipedia</a></p>\r\n<a href=\"#\" style=\"font-size: 10px; color: #999999;\">Read More</a></div>\r\n<div class=\"acymailing_content\">\r\n<h2>Marketing Campaign</h2>\r\n<p style=\"font-size: 10px; margin-top: 0px;\"><img src=\"http://www.acyba.com/images/templates/newsletter-1/essential.png\" border=\"0\" alt=\"\" style=\"float: left;\" />Marketing is an integrated communications-based process through which individuals and communities are informed or persuaded that existing and newly-identified needs and wants may be satisfied by the products and services of others.</p>\r\n<p style=\"font-size: 10px; margin-top: 0px;\">Marketing is used to create the customer, to keep the customer and to satisfy the customer. <a href=\"http://en.wikipedia.org/wiki/Marketing_campaign\">Wikipedia</a></p>\r\n<a href=\"#\" style=\"font-size: 10px; color: #999999;\">Read More</a></div>\r\n</td>\r\n<td width=\"20\"> </td>\r\n<td valign=\"top\" width=\"210\"><img src=\"http://www.acyba.com/images/templates/newsletter-2/logo-icon.jpg\" border=\"0\" alt=\"\" width=\"207\" height=\"137\" />\r\n<div class=\"acymailing_content\">\r\n<h2>Joomla!</h2>\r\n<p style=\"font-size: 10px; margin-top: 0px;\">Joomla! is a content management system platform for publishing content on the World Wide Web and intranets as well as a Model–view–controller (MVC) Web Application Development framework.</p>\r\n<img src=\"media/com_acymailing/templates/newsletter-2/hori-separator.png\" border=\"0\" alt=\"\" />\r\n<p style=\"font-size: 10px; margin-top: 0px;\">The system includes features such as page caching to improve performance, RSS feeds, printable versions of pages, news flashes, blogs, polls, website searching, and language internationalization.<br /><a href=\"http://en.wikipedia.org/wiki/Joomla\">Wikipedia</a></p>\r\n<a href=\"#\" style=\"font-size: 10px; color: #999999;\">Read More</a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center; padding: 20px 0px; font-size: 10px; color: #000000;\" colspan=\"3\">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', '', null, '1', '0', '2', 'newsletter-2', 'a:8:{s:18:\"acymailing_content\";s:63:\"clear:both;text-align:justify;line-height:14px;margin-top:10px;\";s:16:\"acymailing_title\";s:94:\"color:#8a8a8a;text-align:right;border-bottom:6px solid #d39fc9;font-size:16px;margin-top:10px;\";s:19:\"acymailing_readmore\";s:32:\"font-size: 10px; color: #999999;\";s:6:\"tag_h1\";s:144:\"margin-bottom:0;margin-top:0;font-family:Verdana, Arial, Helvetica, sans-serif;font-size:26px;color:#d47e7e;vertical-align:top;text-align:center\";s:8:\"color_bg\";s:7:\"#ffffff\";s:6:\"tag_h2\";s:105:\"color:#8a8a8a !important;text-align:right;border-bottom:6px solid #d39fc9;font-size:16px;margin-top:10px;\";s:6:\"tag_h3\";s:85:\"color:#8a8a8a !important;text-align:right;font-weight:normal;font-size:100%;margin:0;\";s:5:\"tag_a\";s:39:\"color:#d39fc9;text-decoration:underline\";}', null, 'div,table{font-family: Verdana, Arial, Helvetica, sans-serif; font-size:12px;}', null, null, null, null);
INSERT INTO `tbl_newsletter_template` VALUES ('3', 'Rounders and corners', '<img src=\"media/com_acymailing/templates/newsletter-3/newsletter-3.png\" />', '<div style=\"background-color: #dfe6e8; width: 100%; font-family: Verdana, Arial, Helvetica, sans-serif; color: #8a8a8a; text-align: center;\">\r\n<table style=\"text-align: left; margin: auto;\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"hideonline\" style=\"font-size: 10px; color: #000000; margin: auto; text-align: center; padding: 20px 0px;\" colspan=\"3\">This email contains graphics, so if you don\'t see them, {readonline}view it in your browser{/readonline}.</td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\" width=\"216\">\r\n<table cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"line-height: 0px;\">\r\n<td style=\"text-align: center;\"><img src=\"http://www.acyba.com/images/templates/newsletter-3/logo-icon.jpg\" border=\"0\" alt=\"\" width=\"207\" height=\"137\" /></td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\"> </td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"line-height: 0;\">\r\n<td style=\"line-height: 0px;\" colspan=\"3\" width=\"216\" height=\"15\"><img src=\"media/com_acymailing/templates/newsletter-3/top23rds.png\" border=\"0\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"background-color: #ffffff;\" width=\"15\"> </td>\r\n<td style=\"background-color: #ffffff;\" width=\"186\">\r\n<div class=\"acymailing_content\">\r\n<h2>Joomla!</h2>\r\n<p style=\"font-size: 10px; margin-top: 0px;\">Joomla! is a content management system platform for publishing content on the World Wide Web and intranets as well as a Model–view–controller (MVC) Web Application Development framework.</p>\r\n<img src=\"media/com_acymailing/templates/newsletter-2/hori-separator.png\" border=\"0\" alt=\"\" />\r\n<p style=\"font-size: 10px;\">The system includes features such as page caching to improve performance, RSS feeds, printable versions of pages, news flashes, blogs, polls, website searching, and language internationalization.<br /><a href=\"http://en.wikipedia.org/wiki/Joomla\">Wikipedia</a></p>\r\n<a href=\"#\" style=\"font-size: 10px; color: #999999;\">Read More</a></div>\r\n</td>\r\n<td style=\"background-color: #ffffff;\" width=\"15\"> </td>\r\n</tr>\r\n<tr style=\"line-height: 0;\">\r\n<td style=\"line-height: 0px;\" colspan=\"3\" width=\"216\" height=\"15\"><img src=\"media/com_acymailing/templates/newsletter-3/bottom23rds.png\" border=\"0\" alt=\"\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n<td width=\"20\"> </td>\r\n<td valign=\"top\" width=\"364\">\r\n<table cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"background-color: #ffffff; color: #d47e7e; text-align: center;\" width=\"325\" height=\"48\">\r\n<h1>AcyMailing is Out!</h1>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\"> </td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"line-height: 0;\">\r\n<td style=\"line-height: 0px;\" colspan=\"3\" width=\"323\" height=\"15\"><img src=\"media/com_acymailing/templates/newsletter-3/top23rd.png\" border=\"0\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"background-color: #ffffff;\" width=\"15\"> </td>\r\n<td style=\"background-color: #ffffff;\" width=\"293\">\r\n<div class=\"acymailing_content\">\r\n<h2>E-Mail</h2>\r\n<p><img src=\"http://www.acyba.com/images/templates/newsletter-1/acymailing.png\" border=\"0\" alt=\"\" style=\"float: left;\" />Electronic mail, often abbreviated as email or e-mail, is a method of exchanging digital messages, designed primarily for human use.<br /><a href=\"http://en.wikipedia.org/wiki/E-mail\">Wikipedia</a></p>\r\n<a href=\"#\" style=\"font-size: 10px; color: #999999;\">Read More</a></div>\r\n</td>\r\n<td style=\"background-color: #ffffff;\" width=\"15\"> </td>\r\n</tr>\r\n<tr style=\"line-height: 0;\">\r\n<td style=\"line-height: 0px;\" colspan=\"3\" width=\"323\" height=\"15\"><img src=\"media/com_acymailing/templates/newsletter-3/bottom23rd.png\" border=\"0\" alt=\"\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\"> </td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"line-height: 0;\">\r\n<td style=\"line-height: 0px;\" colspan=\"3\" width=\"323\" height=\"15\"><img src=\"media/com_acymailing/templates/newsletter-3/top23rd.png\" border=\"0\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"background-color: #ffffff;\" width=\"15\"> </td>\r\n<td style=\"background-color: #ffffff;\" width=\"293\">\r\n<div class=\"acymailing_content\">\r\n<h2>Marketing Campaign</h2>\r\n<p style=\"font-size: 10px; margin-top: 0px;\"><img src=\"http://www.acyba.com/images/templates/newsletter-1/essential.png\" border=\"0\" alt=\"\" style=\"float: right;\" />Marketing is an integrated communications-based process through which individuals and communities are informed or persuaded that existing and newly-identified needs and wants may be satisfied by the products and services of others.</p>\r\n<img src=\"media/com_acymailing/templates/newsletter-2/hori-separator.png\" border=\"0\" alt=\"\" />\r\n<p style=\"font-size: 10px;\">Marketing is used to create the customer, to keep the customer and to satisfy the customer. <a href=\"http://en.wikipedia.org/wiki/Marketing_campaign\">Wikipedia</a></p>\r\n<a href=\"#\" style=\"font-size: 10px; color: #999999;\">Read More</a></div>\r\n</td>\r\n<td style=\"background-color: #ffffff;\" width=\"15\"> </td>\r\n</tr>\r\n<tr style=\"line-height: 0;\">\r\n<td style=\"line-height: 0px;\" colspan=\"3\" width=\"323\" height=\"15\"><img src=\"media/com_acymailing/templates/newsletter-3/bottom23rd.png\" border=\"0\" alt=\"\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 20px 0px; font-size: 10px; color: #000000; margin: auto; text-align: center;\" colspan=\"3\">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', '', null, '1', '0', '3', 'newsletter-3', 'a:7:{s:6:\"tag_h1\";s:127:\"margin-bottom:0;margin-top:0;font-family:Verdana, Arial, Helvetica, sans-serif;font-size:26px;color:#d47e7e;vertical-align:top;\";s:6:\"tag_h2\";s:72:\"color:#8a8a8a !important;border-bottom:6px solid #d3d09f;font-size:16px;\";s:16:\"acymailing_title\";s:72:\"color:#8a8a8a !important;border-bottom:6px solid #d3d09f;font-size:16px;\";s:6:\"tag_h3\";s:68:\"color:#8a8a8a !important;font-weight:normal;font-size:100%;margin:0;\";s:19:\"acymailing_readmore\";s:32:\"font-size: 10px; color: #999999;\";s:8:\"color_bg\";s:7:\"#dfe6e8\";s:18:\"acymailing_content\";s:19:\"text-align:justify;\";}', null, 'div,table{font-family: Verdana, Arial, Helvetica, sans-serif; font-size:12px;}', null, null, null, null);
INSERT INTO `tbl_newsletter_template` VALUES ('4', 'Notification template', '<img src=\"media/com_acymailing/templates/newsletter-4/newsletter-4.png\" />', '<div style=\"text-align:center; width:100%; background-color:#fff;\">\r\n  <div class=\"info\">{readonline}This email contains graphics, so if you don\'t see them,view it in your browser{/readonline}</div>\r\n  <table width=\"600\" bgcolor=\"#ebebeb\" cellpadding=\"0\" cellspacing=\"0\" style=\"text-align:justify; margin:auto; background-color:#ebebeb; border:1px solid #e7e7e7\" align=\"center\">\r\n        <tr>\r\n            <td height=\"38px\">\r\n                <img src=\"media/com_acymailing/templates/newsletter-4/top.png\" alt=\" - - - \"/>\r\n          </td>\r\n       </tr>\r\n       <tr>\r\n            <td width=\"600\" style=\"text-align:center\">\r\n              <table width=\"520\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"margin:auto;\">\r\n                   <tr>\r\n                        <td style=\"padding:20px 0px; text-align:left;\">\r\n                           <img src=\"media/com_acymailing/templates/newsletter-4/message_icon.png\" alt=\"\" style=\"float:left; margin:0px; margin-right:20px;\"/>\r\n                           <h3>Topic of your message</h3>\r\n                          <h4>Subtitle for your message</h4>\r\n                      </td>\r\n                   </tr>\r\n                   <tr>\r\n                        <td style=\"background-color:#fff; border:1px solid #dbdbdb; padding:20px; width:500px; margin:auto; margin-top:15px; margin-bottom:15px;text-align:left\">\r\n                         <h1>Dear {subtag:name},</h1>\r\n                            Your message here...\r\n                        </td>\r\n                   </tr>\r\n               </table>\r\n            </td>\r\n       </tr>\r\n       <tr>\r\n            <td height=\"40px\">\r\n                <img src=\"media/com_acymailing/templates/newsletter-4/bottom.png\" alt=\" - - - \" />\r\n          </td>\r\n       </tr>\r\n    </table>\r\n    <div class=\"info\">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</div>\r\n</div>', '', null, '1', '0', '4', 'newsletter-4', 'a:9:{s:6:\"tag_h1\";s:79:\"color:#393939 !important; font-size:14px; font-weight:normal; font-weight:bold;\";s:6:\"tag_h2\";s:106:\"color: #309fb3 !important; font-size: 14px; font-weight: normal; text-align:left; margin:0px; padding:0px;\";s:6:\"tag_h3\";s:144:\"color: #393939 !important; font-size: 18px; font-weight: bold; text-align:left; margin:0px; padding-bottom:5px; border-bottom:1px solid #bdbdbd;\";s:6:\"tag_h4\";s:104:\"color: #309fb3 !important; font-size: 14px; font-weight: bold; text-align:left; margin:0px; padding:0px;\";s:5:\"tag_a\";s:71:\"color:#4d4d4d; text-decoration:none; font-style:italic; cursor:pointer;\";s:19:\"acymailing_readmore\";s:32:\"font-size: 10px; color: #999999;\";s:17:\"acymailing_online\";s:52:\"color:#a3a3a3; text-decoration:none; font-size:11px;\";s:8:\"color_bg\";s:7:\"#ffffff\";s:18:\"acymailing_content\";s:19:\"text-align:justify;\";}', null, 'div,table{font-family: Verdana, Arial, Helvetica, sans-serif; font-size:12px;} div.info{text:align:center;padding:10px;}', null, null, null, null);

-- ----------------------------
-- Table structure for `tbl_newsletter_url`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_url`;
CREATE TABLE `tbl_newsletter_url` (
  `urlid` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY  (`urlid`),
  KEY `url` (`url`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_url
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_newsletter_urlclick`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_urlclick`;
CREATE TABLE `tbl_newsletter_urlclick` (
  `urlid` int(10) unsigned NOT NULL,
  `mailid` mediumint(10) unsigned NOT NULL,
  `click` smallint(10) unsigned NOT NULL default '0',
  `subid` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`urlid`,`mailid`,`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_urlclick
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_newsletter_userstats`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_userstats`;
CREATE TABLE `tbl_newsletter_userstats` (
  `mailid` mediumint(10) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `html` tinyint(3) unsigned NOT NULL default '1',
  `sent` tinyint(4) NOT NULL default '1',
  `senddate` int(11) NOT NULL,
  `open` tinyint(4) NOT NULL default '0',
  `opendate` int(11) NOT NULL,
  `bounce` tinyint(4) NOT NULL default '0',
  `fail` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`mailid`,`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_userstats
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_order
-- ----------------------------
INSERT INTO `tbl_order` VALUES ('47', '2012-06-04', 'Z101', '', '2000', '13', '01', 'Z002', '2', '0007000002', 'Mr', 'Lee Ming Liang', '219', '#10-605', 'Building ACE', 'Jurong East St 21', '', '', '', '600219', '', 'SG', '96938443', '', '1', '0', '1', '7000002', 'Lee Ming Liang', '0', '', '', 'lee@ua-consultants.com', 'I', '', '', '', '', '', '0', '0', '0', '', '0', '', '0', '', '0.00', '', '0.00', '', '0.00', '', '0.00', '0', '', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '34', '0', '0', '0');
INSERT INTO `tbl_order` VALUES ('57', '2012-06-08', 'Z102', '', '2000', '13', '02', 'Z002', '6', '0007000006', 'Mr', 'Ali', '12', '05-123', 'Far East Building', '123465, FEB', '', '', '', '123465', '', 'SG', '654321001', '654321001', '1', '0', '1', '7000006', 'Ali', '0', '', '', 'ali@ali.com', 'I', '', '', '', '', '', '0', '0', '0', '', '0', '', '0', '', '0.00', '', '0.00', '', '0.00', '', '0.00', '0', '', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '43', '0', '0', '0');
INSERT INTO `tbl_order` VALUES ('59', '2012-06-08', 'Z101', '', '2000', '13', '01', 'Z002', '6', '0007000006', 'Mr', 'Ali', '12', '05-123', 'Far East Building', '123465, FEB', '', '', '', '123465', '', 'SG', '654321001', '654321001', '2', '0', '1', '7000006', 'Ali', '0', '', '', 'ali@ali.com', 'I', '', '', '', '', '', '0', '0', '0', '', '0', '', '0', '', '0.00', '', '0.00', '', '0.00', '', '0.00', '0', '', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '45', '0', '0', '0');
INSERT INTO `tbl_order` VALUES ('62', '2012-06-08', 'Z101', '', '2000', '13', '01', 'Z002', '9', '0007000009', 'Mr', 'Bryan', '', '', '', '1212', '', '', '', '1212', '1212', 'SG', '12', '', '2', '0', '1', '7000009', 'Bryan', '0', '', '', 'lee@dweb.com.sg', 'I', '', '', '', '', '', '0', '0', '0', '', '0', '', '0', '', '0.00', '', '0.00', '', '0.00', '', '0.00', '0', '', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '48', '0', '0', '0');
INSERT INTO `tbl_order` VALUES ('63', '2012-06-08', 'Z102', '', '2000', '13', '02', 'Z002', '9', '0007000009', 'Mr', 'Bryan', '', '', '', '1212', '', '', '', '1212', '1212', 'SG', '12', '', '2', '0', '1', '7000009', 'Bryan', '0', '', '', 'lee@dweb.com.sg', 'I', '', '', '', '', '', '0', '0', '0', '', '0', '', '0', '', '0.00', '', '0.00', '', '0.00', '', '0.00', '0', '', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '48', '0', '0', '0');
INSERT INTO `tbl_order` VALUES ('64', '2012-06-08', 'Z102', '', '2000', '13', '02', 'Z002', '6', '0007000006', 'Mr', 'Ali', '12', '05-123', 'Far East Building', '123465, FEB', '', '', '', '123465', '', 'SG', '654321001', '654321001', '1', '0', '1', '7000006', 'Ali', '0', '', '', 'ali@ali.com', 'I', '', '', '', '', '', '0', '0', '0', '', '0', '', '0', '', '0.00', '', '0.00', '', '0.00', '', '0.00', '0', '', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '49', '0', '0', '0');
INSERT INTO `tbl_order` VALUES ('65', '2012-06-08', 'Z101', '', '2000', '13', '01', 'Z002', '6', '0007000006', 'Mr', 'Ali', '12', '05-123', 'Far East Building', '123465, FEB', '', '', '', '123465', '', 'SG', '654321001', '654321001', '1', '0', '1', '7000006', 'Ali', '0', '', '', 'ali@ali.com', 'I', '', '', '', '', '', '0', '0', '0', '', '0', '', '0', '', '0.00', '', '0.00', '', '0.00', '', '0.00', '0', '', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '50', '0', '0', '0');
INSERT INTO `tbl_order` VALUES ('66', '2012-06-08', 'Z102', '', '2000', '13', '02', 'Z002', '6', '0007000006', 'Mr', 'Ali', '12', '05-123', 'Far East Building', '123465, FEB', '', '', '', '123465', '', 'SG', '654321001', '654321001', '1', '0', '1', '7000006', 'Ali', '0', '', '', 'ali@ali.com', 'I', '', '', '', '', '', '0', '0', '0', '', '0', '', '0', '', '0.00', '', '0.00', '', '0.00', '', '0.00', '0', '', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '50', '0', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_order_delivery
-- ----------------------------
INSERT INTO `tbl_order_delivery` VALUES ('34', '2', '2012-06-04', '2012-06-04', '9 am - 2 pm', 'a', 'a', 'a', '1', '0', 'Call before delivery.&lt;br/&gt;', '6.00', '0', '0', '0', 'Mr', 'Lee Ming Liang', 'DWE', '219', '#10-605', 'Building ACE', 'Jurong East St 21', '', '', '600219', 'SG', '', '96938443', '', 'lee@ua-consultants.com', '0');
INSERT INTO `tbl_order_delivery` VALUES ('43', '6', '2012-06-08', '2012-06-08', '10 pm - 11 pm', 'Mr Lee', 'Mr Ali', 'A New Little Boy to Brighten Your World! He couldn&#92;&#39;t have happened to a nicer family! Congratulations to Everyone! ', '1', '0', 'Call before delivery.\n	', '25.00', '0', '0', '0', 'Mr', 'Lee', '', '219', '#10-605', '', 'Jurong East St 21', '', '', '600219', 'SG', '', '96938443', '', 'lee@ua-consultants.com', '0');
INSERT INTO `tbl_order_delivery` VALUES ('45', '6', '2012-06-08', '2012-06-08', '10 pm - 11 pm', 'Mr Ali', 'Mr Ali', 'A New Little Boy to Brighten Your World! He couldn&#92;&#39;t have happened to a nicer family! Congratulations to Everyone! ', '0', '1', 'Avoid lunch hour.\n	', '25.00', '0', '0', '0', 'Mr', 'Ali', 'Far East Florist', '12', '05-123', 'Far East Building', '123465, FEB', '', '', '123465', 'SG', '', '654321001', '654321001', 'ali@ali.com', '0');
INSERT INTO `tbl_order_delivery` VALUES ('48', '9', '2012-06-08', '2012-06-08', '9 am - 2 pm', 'Mr Bryan', 'Mr Bryan', 'A New Little Boy to Brighten Your World! He couldn&#92;&#39;t have happened to a nicer family! Congratulations to Everyone! ', '1', '0', 'Call before delivery.\n	', '6.00', '0', '0', '0', 'Mr', 'Bryan', '', '', '', '', '1212', '', '', '1212', 'SG', '1212', '12', '', 'lee@dweb.com.sg', '0');
INSERT INTO `tbl_order_delivery` VALUES ('49', '6', '2012-06-08', '2012-06-08', '10 pm - 11 pm', 'Mr Lee', 'Mr Ali', 'Congratulations & Best Wishes On The Arrival Of Your Wonderful Newborn Twin Girl', '1', '0', 'Call before delivery.\n	', '25.00', '0', '0', '0', 'Mr', 'Lee', '', '219', '#10-605', '', 'Jurong East St 21', '', '', '600219', 'SG', '', '96938443', '', 'lee@ua-consultants.com', '0');
INSERT INTO `tbl_order_delivery` VALUES ('50', '6', '2012-06-08', '2012-06-08', '9 am - 2 pm', 'Mr Lee', 'Mr Ali', 'A New Little Boy to Brighten Your World! He couldn&#92;&#39;t have happened to a nicer family! Congratulations to Everyone! ', '1', '0', 'Call before delivery.\n	', '6.00', '0', '0', '0', 'Mr', 'Lee', '', '219', '#10-605', '', 'Jurong East St 21', '', '', '600219', 'SG', '', '96938443', '', 'lee@ua-consultants.com', '0');
INSERT INTO `tbl_order_delivery` VALUES ('51', '6', '0000-00-00', '0000-00-00', '8 am - 8 am', '', '', '', '0', '0', '', '0.00', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0');
INSERT INTO `tbl_order_delivery` VALUES ('52', '6', '0000-00-00', '0000-00-00', '8 am - 8 am', '', '', '', '0', '0', '', '0.00', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0');

-- ----------------------------
-- Table structure for `tbl_order_item`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_item`;
CREATE TABLE `tbl_order_item` (
  `order_item_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `coupon_code` varchar(11) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_order_item
-- ----------------------------
INSERT INTO `tbl_order_item` VALUES ('30', '47', '11', '0', 'HHB116', '1', '19', '0', '', '60.00', '', '0.00', '', '0.00', '', '0.00', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('43', '57', '1', '', 'HNB113B', '1', '', '0', '', '50.00', '', '0.00', '', '0.00', '', '0.00', '0', '0', '0', '5', 'SPDCS000002', '1', '1');
INSERT INTO `tbl_order_item` VALUES ('45', '59', '12', '', 'HHB114', '1', 'RM', '0', '', '60.00', '', '0.00', '', '0.00', '', '0.00', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('48', '62', '12', '', 'HHB114', '1', 'RM', '0', '', '60.00', '', '0.00', '', '0.00', '', '0.00', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('49', '63', '9', '', 'HNB114B', '1', '', '0', '', '50.00', '', '0.00', '', '0.00', '', '0.00', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('50', '64', '3', '', 'HNB113A', '1', '', '0', '', '50.00', '', '0.00', '', '0.00', '', '0.00', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('51', '64', '1', '', 'HNB113B', '1', '', '0', '', '50.00', '', '0.00', '', '0.00', '', '0.00', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('52', '65', '12', '', 'HHB114', '12', 'RM', '0', '', '60.00', '', '0.00', '', '0.00', '', '0.00', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('53', '66', '1', '', 'HNB113B', '1', '', '0', '', '50.00', '', '0.00', '', '0.00', '', '0.00', '0', '0', '0', '4', 'SPDCS000001', '1', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product
-- ----------------------------
INSERT INTO `tbl_product` VALUES ('1', '-1', '2', 'HNB113B', 'Smiling Baby (Boy)', '50.00', '.Bird&#92;&#92;&#92;&#39;s Nest Wild Ginseng with White Fungus & Rock Sugar 3x70g\nÂ·4pc Shears Baby Wear Deluxe Gift Set', '.Bird&#92;&#92;&#92;&#39;s Nest Wild Ginseng with White Fungus & Rock Sugar 3x70g\nÂ·4pc Shears Baby Wear Deluxe Gift Set\nÂ·Jumbo Children Growth Chart\nÂ·1pkt Drypers\nÂ·Everlasting Sweet Roses', 'images/product/1.JPG', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', '', '', '', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('3', '-1', '2', 'HNB113A', 'Smiling Baby (Girl)', '50.00', '.Bird&#92;&#39;s Nest Wild Ginseng with White Fungus & Rock Sugar 3x70g\nÂ·4pc Shears Baby Wear Deluxe Gift Set', '.Bird&#92;&#39;s Nest Wild Ginseng with White Fungus & Rock Sugar 3x70g\nÂ·4pc Shears Baby Wear Deluxe Gift Set\nÂ·Jumbo Children Growth Chart\nÂ·1pkt Drypers\nÂ·Everlasting Sweet Roses\nÂ·PVC Storage Box', 'images/product/3.JPG', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', '', '', '', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('4', '-1', '3', 'SPDCS000001', 'Vase1', '23.00', '', '', 'images/product/4.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', '', '', '', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('5', '-1', '3', 'SPDCS000002', 'Vase 2', '12.00', '', '', 'images/product/5.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', '', '', '', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('7', '-1', '2', 'HPG110', 'Classic Gift Basket', '50.00', '', 'Â·Lindt Almond De Luxe Swiss Chocolate 75.5g\nÂ·Walkers Belgian Chocolate Chunk Biscuits 150g\nÂ·Fomec&#39;s California Prune Essence 2x42g\nÂ·Fox&#39;s Crystal Clear Fruits Candy 180g\nÂ·Beryl&#39;s Tiramisu Chocolate 65g\nÂ·ST Daifour Snak Pack Jam 3x28g\nÂ·Packaged in Paper Tray\n\n*Product substitution note:\n- Lindt Almond De Luxe Chocolate 75.5g sub to Lindt Lindor Milk Chocolate Gift Box 112g (as shown in HPG101)\n- Walkers Belgian Chocolate Chunk Biscuits 150g sub to Dean&#39;s Stem Ginger Oat Biscuits 150g\n- Berylâ€™s Tiramisu Chocolate 65g sub to 120G Millton Espresso White Chocolate as shown in HPG113', 'images/product/7.JPG', '0', '0', '0', '0', '1', '0', '2012-05-29', '0000-00-00', '1', '', '', '', '', '', '', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('8', '0', '2', 'HNB114A', 'Beautiful Baby (Girl)', '50.00', 'Â·Birdâ€™s Nest Wild Ginseng with White Fungus & Rock Sugar 6x70g\nÂ·4pc Shears Baby Wear Deluxe Gift Set\nÂ·Packaged with Cheerful Sunflowers', 'Â·Birdâ€™s Nest Wild Ginseng with White Fungus & Rock Sugar 6x70g\nÂ·4pc Shears Baby Wear Deluxe Gift Set\nÂ·Packaged with Cheerful Sunflowers', 'images/product/8.JPG', '0', '0', '0', '0', '1', '0', '2012-06-03', '0000-00-00', '1', '', '', '', '', '', '', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('9', '-1', '2', 'HNB114B', 'Beautiful Baby (Boy)', '50.00', 'Â·Birdâ€™s Nest Wild Ginseng with White Fungus & Rock Sugar 6x70g\nÂ·4pc Shears Baby Wear Deluxe Gift Set\nÂ·Packaged with Cheerful Sunflowers', 'Â·Birdâ€™s Nest Wild Ginseng with White Fungus & Rock Sugar 6x70g\nÂ·4pc Shears Baby Wear Deluxe Gift Set\nÂ·Packaged with Cheerful Sunflowers', 'images/product/9.JPG', '0', '0', '0', '0', '1', '0', '2012-06-03', '2012-06-03', '1', '', '', '', '', '', '', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('10', '-1', '1', 'HHB117', 'Regal Blooms', '50.00', 'Red Roses are the traditonal symbols for love and romance, so we dressed 12 Red Roses with sweet Pink Hydrangeas to help you convey your deep love and appreciation with a touch of sweetness!', 'Red Roses are the traditonal symbols for love and romance, so we dressed 12 Red Roses with sweet Pink Hydrangeas to help you convey your deep love and appreciation with a touch of sweetness!', 'images/product/10.JPG', '0', '0', '0', '0', '1', '0', '2012-06-03', '2012-06-03', '1', '', '', '', '', '', '', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('11', '-1', '1', 'HHB116', 'Sweet Love', '60.00', 'For expressing the sweetest form of love you are experiencing, we picked\nthe loveliest blooms of 6 champagne Roses, 6 Cream Roses and 6 Pink\nRoses in the sweetest pastels to whisper &#34;I love You&#34; gently in her ears.', 'For expressing the sweetest form of love you are experiencing, we picked\nthe loveliest blooms of 6 champagne Roses, 6 Cream Roses and 6 Pink\nRoses in the sweetest pastels to whisper &#34;I love You&#34; gently in her ears.', 'images/product/11.JPG', '0', '0', '0', '0', '1', '0', '2012-06-03', '2012-06-03', '1', '', '', '', '', '', '', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('12', '-1', '1', 'HHB114', 'Summertime', '60.00', 'Bask in the warmth of &#34;Summertime&#34; with 6 cheerful Sunflowers bundled with pretty Eustomas in a lively bouquet! We are sure it will bring a smile to any face.', 'Bask in the warmth of &#34;Summertime&#34; with 6 cheerful Sunflowers bundled with pretty Eustomas in a lively bouquet! We are sure it will bring a smile to any face.', 'images/product/12.JPG', '0', '0', '0', '0', '1', '0', '2012-06-03', '2012-06-03', '1', '', '', '', '', '', '', '0.00', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_addon_link
-- ----------------------------
INSERT INTO `tbl_product_addon_link` VALUES ('9', '1', '4', '50');
INSERT INTO `tbl_product_addon_link` VALUES ('10', '1', '5', '50');

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
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_category
-- ----------------------------
INSERT INTO `tbl_product_category` VALUES ('1', '1', '', '201', 'New Born Hampers', '1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatu', '1', '1', '1');
INSERT INTO `tbl_product_category` VALUES ('22', '1', '', '201', 'New Born play', '22.jpg', '', '1', '4', '1');
INSERT INTO `tbl_product_category` VALUES ('23', '1', '', '201', 'New Born Travel', '23.jpg', '', '1', '5', '1');
INSERT INTO `tbl_product_category` VALUES ('24', '1', '', '201', 'Birthday Cakes', '24.jpg', '', '1', '6', '1');
INSERT INTO `tbl_product_category` VALUES ('25', '1', '', '201', 'Opening Stands', '25.jpg', '', '1', '7', '1');
INSERT INTO `tbl_product_category` VALUES ('26', '1', '', '201', 'Sympathy', '26.jpg', '', '1', '8', '1');
INSERT INTO `tbl_product_category` VALUES ('27', '1', '', '201', 'Get Well Baskets', '27.jpg', '', '1', '9', '1');
INSERT INTO `tbl_product_category` VALUES ('30', '1', '', '201', 'Fruit & Flower Baskets', '30.png', '', '1', '1', '2');
INSERT INTO `tbl_product_category` VALUES ('31', '1', '', '201', 'Food Hampers', '31.jpg', '', '1', '50', '2');
INSERT INTO `tbl_product_category` VALUES ('195', '1', '', '201', 'Hand Bouquets', '195.jpg', '', '1', '50', '2');
INSERT INTO `tbl_product_category` VALUES ('199', '1', '', '201', 'Table Arrangement', '199.jpg', '', '1', '50', '2');
INSERT INTO `tbl_product_category` VALUES ('200', '1', '', '0', 'Add On Product', '', '', '0', '99', '0');
INSERT INTO `tbl_product_category` VALUES ('201', '1', '', '0', 'Categories', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('202', '2', '', '0', 'Occasions', '', '', '1', '500', '1');
INSERT INTO `tbl_product_category` VALUES ('203', '1', '', '0', 'Flowers', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('204', '1', '', '0', 'Symphaty', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('205', '1', '', '0', 'Specials', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('206', '1', '', '0', 'Personalize', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('207', '1', '', '0', 'Local Gifting Customs', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('208', '2', 'OO', '202', 'Official Opening', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('209', '2', 'RM', '202', 'Romance', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('210', '2', 'SR', '202', 'Speedy Recovery', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('211', '2', 'SW', '202', 'Secretary&#92;&#39;s Week', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('212', '2', 'TD', '202', 'Teacher&#92;&#92;&#92;&#39;s Day', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('213', '2', 'TY', '202', 'Thank you', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('215', '3', '', '0', 'Custom Categories', '', '', '0', '600', '1');
INSERT INTO `tbl_product_category` VALUES ('216', '3', '', '215', 'Designer&#92;&#39;s Pick', '', '', '0', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('217', '3', '', '215', 'Deal of The Week', '', '', '0', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('218', '3', '', '0', 'Best Seller', '', '', '0', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('219', '3', '', '215', 'Best Sellers', '', '', '1', '50', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_category_link
-- ----------------------------
INSERT INTO `tbl_product_category_link` VALUES ('103', '7', '30', '50');
INSERT INTO `tbl_product_category_link` VALUES ('145', '4', '200', '50');
INSERT INTO `tbl_product_category_link` VALUES ('146', '5', '200', '50');
INSERT INTO `tbl_product_category_link` VALUES ('154', '3', '1', '40');
INSERT INTO `tbl_product_category_link` VALUES ('155', '3', '216', '50');
INSERT INTO `tbl_product_category_link` VALUES ('156', '3', '217', '50');
INSERT INTO `tbl_product_category_link` VALUES ('157', '3', '219', '50');
INSERT INTO `tbl_product_category_link` VALUES ('160', '8', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('161', '8', '219', '50');
INSERT INTO `tbl_product_category_link` VALUES ('162', '9', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('163', '9', '219', '50');
INSERT INTO `tbl_product_category_link` VALUES ('166', '12', '195', '50');
INSERT INTO `tbl_product_category_link` VALUES ('167', '12', '209', '50');
INSERT INTO `tbl_product_category_link` VALUES ('173', '11', '195', '50');
INSERT INTO `tbl_product_category_link` VALUES ('182', '1', '1', '50');
INSERT INTO `tbl_product_category_link` VALUES ('183', '1', '219', '50');
INSERT INTO `tbl_product_category_link` VALUES ('184', '10', '195', '50');
INSERT INTO `tbl_product_category_link` VALUES ('185', '10', '219', '50');

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
  `telephone1` varchar(16) NOT NULL,
  `telephone2` varchar(16) NOT NULL,
  `fax` varchar(16) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `dob` date NOT NULL,
  `notify_update` int(11) NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('2', 'Mr', 'Lee Ming Liang', 'DWE', '219', '#10-605', 'Building ACE', 'Jurong East St 21', '', '', '', '600219', '', '', 'SG', 'lee@ua-consultants.com', '218ee2aa3a1bce98a6016d5aba186029', '96938443', '', '96938443', '1', '1981-07-17', '0');
INSERT INTO `tbl_user` VALUES ('3', 'Mr', 'Lee Ming Liang', 'DWE', '219', '#10-605', '', 'Jurong East St 21', '', '', '', '600219', '', '', 'SG', 'brightleee@hotmail.com', '1d02d56dd360b43dc9d8a801fbded37f', '', '', '', '0', '1981-07-17', '1');
INSERT INTO `tbl_user` VALUES ('6', 'Mr', 'Ali', 'Far East Florist', '12', '05-123', 'Far East Building', '123465, FEB', '', '', '', '123465', '', '', 'SG', 'ali@ali.com', 'e99a18c428cb38d5f260853678922e03', '654321001', '654321001', '654321001', '0', '1981-07-17', '0');
INSERT INTO `tbl_user` VALUES ('7', 'Mrs', 'dfsf', '', '', '', '', '', '', '', '', '334343', '', '', 'SG', 'Test@noel.com.sg', 'e99a18c428cb38d5f260853678922e03', '456453', '', '', '0', '0000-00-00', '0');
INSERT INTO `tbl_user` VALUES ('8', 'Mr', 'tester', 'tester', '123', '123', '123', '123', '123', '123', '123', '123456', 'singapore', '', 'SG', 'info@ua-solutions.com', 'e10adc3949ba59abbe56e057f20f883e', '123', '123', '123', 'Ma', '0000-00-00', '0');

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
INSERT INTO `tbl_videos` VALUES ('3', 'youtube', '<iframe width=\"325\" height=\"280\" src=\"http://www.youtube.com/embed/u5O5JKV7H5A\" frameborder=\"0\" allowfullscreen></iframe>', '', 'Beautiful flowers', '2012-06-12 10:02:30', '0', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

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
